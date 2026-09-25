
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d03e0010 <applet_entry>:
d03e0010:	b570      	push	{r4, r5, r6, lr}
d03e0012:	4e09      	ldr	r6, [pc, #36]	; (d03e0038 <applet_entry+0x28>)
d03e0014:	460d      	mov	r5, r1
d03e0016:	4604      	mov	r4, r0
d03e0018:	2100      	movs	r1, #0
d03e001a:	6833      	ldr	r3, [r6, #0]
d03e001c:	6898      	ldr	r0, [r3, #8]
d03e001e:	f007 fa8f 	bl	d03e7540 <setbuf>
d03e0022:	6833      	ldr	r3, [r6, #0]
d03e0024:	2100      	movs	r1, #0
d03e0026:	68d8      	ldr	r0, [r3, #12]
d03e0028:	f007 fa8a 	bl	d03e7540 <setbuf>
d03e002c:	4629      	mov	r1, r5
d03e002e:	4620      	mov	r0, r4
d03e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03e0034:	f004 bf26 	b.w	d03e4e84 <main>
d03e0038:	d03ea07c 	.word	0xd03ea07c

d03e003c <initMalloc>:
d03e003c:	4902      	ldr	r1, [pc, #8]	; (d03e0048 <initMalloc+0xc>)
d03e003e:	4b03      	ldr	r3, [pc, #12]	; (d03e004c <initMalloc+0x10>)
d03e0040:	4a03      	ldr	r2, [pc, #12]	; (d03e0050 <initMalloc+0x14>)
d03e0042:	1a5b      	subs	r3, r3, r1
d03e0044:	6013      	str	r3, [r2, #0]
d03e0046:	4770      	bx	lr
d03e0048:	d03ee610 	.word	0xd03ee610
d03e004c:	d0600000 	.word	0xd0600000
d03e0050:	d03ec474 	.word	0xd03ec474

d03e0054 <_write_r>:
d03e0054:	3901      	subs	r1, #1
d03e0056:	2901      	cmp	r1, #1
d03e0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e005a:	d81f      	bhi.n	d03e009c <_write_r+0x48>
d03e005c:	b1e2      	cbz	r2, d03e0098 <_write_r+0x44>
d03e005e:	461c      	mov	r4, r3
d03e0060:	b1d3      	cbz	r3, d03e0098 <_write_r+0x44>
d03e0062:	4d12      	ldr	r5, [pc, #72]	; (d03e00ac <_write_r+0x58>)
d03e0064:	682e      	ldr	r6, [r5, #0]
d03e0066:	b9ae      	cbnz	r6, d03e0094 <_write_r+0x40>
d03e0068:	4f11      	ldr	r7, [pc, #68]	; (d03e00b0 <_write_r+0x5c>)
d03e006a:	2301      	movs	r3, #1
d03e006c:	4611      	mov	r1, r2
d03e006e:	4630      	mov	r0, r6
d03e0070:	602b      	str	r3, [r5, #0]
d03e0072:	4622      	mov	r2, r4
d03e0074:	7a3b      	ldrb	r3, [r7, #8]
d03e0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d03e007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03e0082:	7aff      	ldrb	r7, [r7, #11]
d03e0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e008c:	681b      	ldr	r3, [r3, #0]
d03e008e:	685b      	ldr	r3, [r3, #4]
d03e0090:	4798      	blx	r3
d03e0092:	602e      	str	r6, [r5, #0]
d03e0094:	4620      	mov	r0, r4
d03e0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0098:	2000      	movs	r0, #0
d03e009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e009c:	f007 f974 	bl	d03e7388 <__errno>
d03e00a0:	2209      	movs	r2, #9
d03e00a2:	4603      	mov	r3, r0
d03e00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00a8:	601a      	str	r2, [r3, #0]
d03e00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e00ac:	d03ea0e4 	.word	0xd03ea0e4
d03e00b0:	2001f000 	.word	0x2001f000

d03e00b4 <_read>:
d03e00b4:	b508      	push	{r3, lr}
d03e00b6:	f007 f967 	bl	d03e7388 <__errno>
d03e00ba:	2258      	movs	r2, #88	; 0x58
d03e00bc:	4603      	mov	r3, r0
d03e00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00c2:	601a      	str	r2, [r3, #0]
d03e00c4:	bd08      	pop	{r3, pc}
d03e00c6:	bf00      	nop

d03e00c8 <_close>:
d03e00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00cc:	4770      	bx	lr
d03e00ce:	bf00      	nop

d03e00d0 <_fstat>:
d03e00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03e00d4:	2000      	movs	r0, #0
d03e00d6:	604b      	str	r3, [r1, #4]
d03e00d8:	4770      	bx	lr
d03e00da:	bf00      	nop

d03e00dc <_lseek>:
d03e00dc:	2000      	movs	r0, #0
d03e00de:	4770      	bx	lr

d03e00e0 <_sbrk_r>:
d03e00e0:	4b0c      	ldr	r3, [pc, #48]	; (d03e0114 <_sbrk_r+0x34>)
d03e00e2:	4a0d      	ldr	r2, [pc, #52]	; (d03e0118 <_sbrk_r+0x38>)
d03e00e4:	6818      	ldr	r0, [r3, #0]
d03e00e6:	b510      	push	{r4, lr}
d03e00e8:	b918      	cbnz	r0, d03e00f2 <_sbrk_r+0x12>
d03e00ea:	1dd0      	adds	r0, r2, #7
d03e00ec:	f020 0007 	bic.w	r0, r0, #7
d03e00f0:	6018      	str	r0, [r3, #0]
d03e00f2:	4401      	add	r1, r0
d03e00f4:	4c09      	ldr	r4, [pc, #36]	; (d03e011c <_sbrk_r+0x3c>)
d03e00f6:	42a1      	cmp	r1, r4
d03e00f8:	d803      	bhi.n	d03e0102 <_sbrk_r+0x22>
d03e00fa:	4291      	cmp	r1, r2
d03e00fc:	d301      	bcc.n	d03e0102 <_sbrk_r+0x22>
d03e00fe:	6019      	str	r1, [r3, #0]
d03e0100:	bd10      	pop	{r4, pc}
d03e0102:	f007 f941 	bl	d03e7388 <__errno>
d03e0106:	220c      	movs	r2, #12
d03e0108:	4603      	mov	r3, r0
d03e010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e010e:	601a      	str	r2, [r3, #0]
d03e0110:	bd10      	pop	{r4, pc}
d03e0112:	bf00      	nop
d03e0114:	d03ea0e0 	.word	0xd03ea0e0
d03e0118:	d03ee610 	.word	0xd03ee610
d03e011c:	d0600000 	.word	0xd0600000

d03e0120 <sid_midi_trigger_percussion>:
d03e0120:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03e0124:	4606      	mov	r6, r0
d03e0126:	460c      	mov	r4, r1
d03e0128:	4615      	mov	r5, r2
d03e012a:	2a00      	cmp	r2, #0
d03e012c:	d05f      	beq.n	d03e01ee <sid_midi_trigger_percussion+0xce>
d03e012e:	f10d 0207 	add.w	r2, sp, #7
d03e0132:	f10d 0106 	add.w	r1, sp, #6
d03e0136:	f000 f92f 	bl	d03e0398 <get_voice_target>
d03e013a:	f1a4 0123 	sub.w	r1, r4, #35	; 0x23
d03e013e:	4c2d      	ldr	r4, [pc, #180]	; (d03e01f4 <sid_midi_trigger_percussion+0xd4>)
d03e0140:	b2c9      	uxtb	r1, r1
d03e0142:	4a2d      	ldr	r2, [pc, #180]	; (d03e01f8 <sid_midi_trigger_percussion+0xd8>)
d03e0144:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03e0148:	290f      	cmp	r1, #15
d03e014a:	f8b2 801c 	ldrh.w	r8, [r2, #28]
d03e014e:	7f12      	ldrb	r2, [r2, #28]
d03e0150:	bf96      	itet	ls
d03e0152:	4b2a      	ldrls	r3, [pc, #168]	; (d03e01fc <sid_midi_trigger_percussion+0xdc>)
d03e0154:	4f2a      	ldrhi	r7, [pc, #168]	; (d03e0200 <sid_midi_trigger_percussion+0xe0>)
d03e0156:	f853 7021 	ldrls.w	r7, [r3, r1, lsl #2]
d03e015a:	7d23      	ldrb	r3, [r4, #20]
d03e015c:	7d61      	ldrb	r1, [r4, #21]
d03e015e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e0162:	7da1      	ldrb	r1, [r4, #22]
d03e0164:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0168:	7de1      	ldrb	r1, [r4, #23]
d03e016a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e016e:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03e0172:	681b      	ldr	r3, [r3, #0]
d03e0174:	69db      	ldr	r3, [r3, #28]
d03e0176:	4798      	blx	r3
d03e0178:	7d23      	ldrb	r3, [r4, #20]
d03e017a:	7d62      	ldrb	r2, [r4, #21]
d03e017c:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03e0180:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0184:	7da2      	ldrb	r2, [r4, #22]
d03e0186:	3101      	adds	r1, #1
d03e0188:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03e018c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0190:	7de2      	ldrb	r2, [r4, #23]
d03e0192:	b2c9      	uxtb	r1, r1
d03e0194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0198:	ea4f 2218 	mov.w	r2, r8, lsr #8
d03e019c:	681b      	ldr	r3, [r3, #0]
d03e019e:	69db      	ldr	r3, [r3, #28]
d03e01a0:	4798      	blx	r3
d03e01a2:	2338      	movs	r3, #56	; 0x38
d03e01a4:	4a17      	ldr	r2, [pc, #92]	; (d03e0204 <sid_midi_trigger_percussion+0xe4>)
d03e01a6:	fb03 f006 	mul.w	r0, r3, r6
d03e01aa:	2300      	movs	r3, #0
d03e01ac:	f102 0408 	add.w	r4, r2, #8
d03e01b0:	f04f 7680 	mov.w	r6, #16777216	; 0x1000000
d03e01b4:	1811      	adds	r1, r2, r0
d03e01b6:	5017      	str	r7, [r2, r0]
d03e01b8:	730d      	strb	r5, [r1, #12]
d03e01ba:	1905      	adds	r5, r0, r4
d03e01bc:	734b      	strb	r3, [r1, #13]
d03e01be:	604f      	str	r7, [r1, #4]
d03e01c0:	80eb      	strh	r3, [r5, #6]
d03e01c2:	2501      	movs	r5, #1
d03e01c4:	740b      	strb	r3, [r1, #16]
d03e01c6:	824d      	strh	r5, [r1, #18]
d03e01c8:	f102 0520 	add.w	r5, r2, #32
d03e01cc:	85cb      	strh	r3, [r1, #46]	; 0x2e
d03e01ce:	5143      	str	r3, [r0, r5]
d03e01d0:	848b      	strh	r3, [r1, #36]	; 0x24
d03e01d2:	f881 3028 	strb.w	r3, [r1, #40]	; 0x28
d03e01d6:	750b      	strb	r3, [r1, #20]
d03e01d8:	82cb      	strh	r3, [r1, #22]
d03e01da:	830b      	strh	r3, [r1, #24]
d03e01dc:	834b      	strh	r3, [r1, #26]
d03e01de:	838b      	strh	r3, [r1, #28]
d03e01e0:	f100 0130 	add.w	r1, r0, #48	; 0x30
d03e01e4:	188d      	adds	r5, r1, r2
d03e01e6:	508e      	str	r6, [r1, r2]
d03e01e8:	606b      	str	r3, [r5, #4]
d03e01ea:	4b07      	ldr	r3, [pc, #28]	; (d03e0208 <sid_midi_trigger_percussion+0xe8>)
d03e01ec:	5103      	str	r3, [r0, r4]
d03e01ee:	b002      	add	sp, #8
d03e01f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e01f4:	2001f000 	.word	0x2001f000
d03e01f8:	d03e893c 	.word	0xd03e893c
d03e01fc:	d03e83b4 	.word	0xd03e83b4
d03e0200:	d03e83f4 	.word	0xd03e83f4
d03e0204:	d03ec478 	.word	0xd03ec478
d03e0208:	0e010000 	.word	0x0e010000

d03e020c <sid_write>:
d03e020c:	2801      	cmp	r0, #1
d03e020e:	b430      	push	{r4, r5}
d03e0210:	d805      	bhi.n	d03e021e <sid_write+0x12>
d03e0212:	291f      	cmp	r1, #31
d03e0214:	bf9e      	ittt	ls
d03e0216:	4b09      	ldrls	r3, [pc, #36]	; (d03e023c <sid_write+0x30>)
d03e0218:	eb03 1340 	addls.w	r3, r3, r0, lsl #5
d03e021c:	545a      	strbls	r2, [r3, r1]
d03e021e:	4c08      	ldr	r4, [pc, #32]	; (d03e0240 <sid_write+0x34>)
d03e0220:	7d23      	ldrb	r3, [r4, #20]
d03e0222:	7d65      	ldrb	r5, [r4, #21]
d03e0224:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e0228:	7da5      	ldrb	r5, [r4, #22]
d03e022a:	7de4      	ldrb	r4, [r4, #23]
d03e022c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e0230:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0234:	681b      	ldr	r3, [r3, #0]
d03e0236:	bc30      	pop	{r4, r5}
d03e0238:	69db      	ldr	r3, [r3, #28]
d03e023a:	4718      	bx	r3
d03e023c:	d03ea0e8 	.word	0xd03ea0e8
d03e0240:	2001f000 	.word	0x2001f000

d03e0244 <sid_voice_write_scaled_sr>:
d03e0244:	b470      	push	{r4, r5, r6}
d03e0246:	4605      	mov	r5, r0
d03e0248:	4608      	mov	r0, r1
d03e024a:	7b6c      	ldrb	r4, [r5, #13]
d03e024c:	7b2e      	ldrb	r6, [r5, #12]
d03e024e:	f004 010f 	and.w	r1, r4, #15
d03e0252:	0924      	lsrs	r4, r4, #4
d03e0254:	fb14 f406 	smulbb	r4, r4, r6
d03e0258:	343f      	adds	r4, #63	; 0x3f
d03e025a:	f5b4 6ffe 	cmp.w	r4, #2032	; 0x7f0
d03e025e:	d21d      	bcs.n	d03e029c <sid_voice_write_scaled_sr+0x58>
d03e0260:	237f      	movs	r3, #127	; 0x7f
d03e0262:	2c7e      	cmp	r4, #126	; 0x7e
d03e0264:	fbb4 f3f3 	udiv	r3, r4, r3
d03e0268:	b2db      	uxtb	r3, r3
d03e026a:	d802      	bhi.n	d03e0272 <sid_voice_write_scaled_sr+0x2e>
d03e026c:	1e33      	subs	r3, r6, #0
d03e026e:	bf18      	it	ne
d03e0270:	2301      	movne	r3, #1
d03e0272:	f895 4034 	ldrb.w	r4, [r5, #52]	; 0x34
d03e0276:	f003 030f 	and.w	r3, r3, #15
d03e027a:	f895 5037 	ldrb.w	r5, [r5, #55]	; 0x37
d03e027e:	b12d      	cbz	r5, d03e028c <sid_voice_write_scaled_sr+0x48>
d03e0280:	b124      	cbz	r4, d03e028c <sid_voice_write_scaled_sr+0x48>
d03e0282:	429c      	cmp	r4, r3
d03e0284:	bf36      	itet	cc
d03e0286:	1b1b      	subcc	r3, r3, r4
d03e0288:	2300      	movcs	r3, #0
d03e028a:	b2db      	uxtbcc	r3, r3
d03e028c:	ea41 1303 	orr.w	r3, r1, r3, lsl #4
d03e0290:	1d91      	adds	r1, r2, #6
d03e0292:	bc70      	pop	{r4, r5, r6}
d03e0294:	b2da      	uxtb	r2, r3
d03e0296:	b2c9      	uxtb	r1, r1
d03e0298:	f7ff bfb8 	b.w	d03e020c <sid_write>
d03e029c:	230f      	movs	r3, #15
d03e029e:	e7e8      	b.n	d03e0272 <sid_voice_write_scaled_sr+0x2e>

d03e02a0 <sid_voice_apply_note_offset>:
d03e02a0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03e02a2:	4606      	mov	r6, r0
d03e02a4:	4608      	mov	r0, r1
d03e02a6:	4615      	mov	r5, r2
d03e02a8:	f9b6 4020 	ldrsh.w	r4, [r6, #32]
d03e02ac:	7af2      	ldrb	r2, [r6, #11]
d03e02ae:	2c00      	cmp	r4, #0
d03e02b0:	f886 3022 	strb.w	r3, [r6, #34]	; 0x22
d03e02b4:	4413      	add	r3, r2
d03e02b6:	bfa9      	itett	ge
d03e02b8:	f44f 31c0 	movge.w	r1, #98304	; 0x18000
d03e02bc:	eb04 0444 	addlt.w	r4, r4, r4, lsl #1
d03e02c0:	4361      	mulge	r1, r4
d03e02c2:	f641 74ff 	movwge	r4, #8191	; 0x1fff
d03e02c6:	bfb4      	ite	lt
d03e02c8:	00a4      	lsllt	r4, r4, #2
d03e02ca:	fbb1 f4f4 	udivge	r4, r1, r4
d03e02ce:	2c00      	cmp	r4, #0
d03e02d0:	4621      	mov	r1, r4
d03e02d2:	bfbc      	itt	lt
d03e02d4:	f504 51ff 	addlt.w	r1, r4, #8160	; 0x1fe0
d03e02d8:	311f      	addlt	r1, #31
d03e02da:	4267      	negs	r7, r4
d03e02dc:	f3c4 040c 	ubfx	r4, r4, #0, #13
d03e02e0:	f3c7 070c 	ubfx	r7, r7, #0, #13
d03e02e4:	ea4f 3161 	mov.w	r1, r1, asr #13
d03e02e8:	bf58      	it	pl
d03e02ea:	427c      	negpl	r4, r7
d03e02ec:	2c00      	cmp	r4, #0
d03e02ee:	bfbc      	itt	lt
d03e02f0:	f101 31ff 	addlt.w	r1, r1, #4294967295	; 0xffffffff
d03e02f4:	f504 5400 	addlt.w	r4, r4, #8192	; 0x2000
d03e02f8:	185b      	adds	r3, r3, r1
d03e02fa:	d423      	bmi.n	d03e0344 <sid_voice_apply_note_offset+0xa4>
d03e02fc:	2b7e      	cmp	r3, #126	; 0x7e
d03e02fe:	dd01      	ble.n	d03e0304 <sid_voice_apply_note_offset+0x64>
d03e0300:	237f      	movs	r3, #127	; 0x7f
d03e0302:	2400      	movs	r4, #0
d03e0304:	4911      	ldr	r1, [pc, #68]	; (d03e034c <sid_voice_apply_note_offset+0xac>)
d03e0306:	2b7f      	cmp	r3, #127	; 0x7f
d03e0308:	9001      	str	r0, [sp, #4]
d03e030a:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
d03e030e:	bf18      	it	ne
d03e0310:	3301      	addne	r3, #1
d03e0312:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
d03e0316:	4629      	mov	r1, r5
d03e0318:	1a9b      	subs	r3, r3, r2
d03e031a:	435c      	muls	r4, r3
d03e031c:	bf44      	itt	mi
d03e031e:	f504 54ff 	addmi.w	r4, r4, #8160	; 0x1fe0
d03e0322:	341f      	addmi	r4, #31
d03e0324:	eb02 3464 	add.w	r4, r2, r4, asr #13
d03e0328:	b2a4      	uxth	r4, r4
d03e032a:	b2e2      	uxtb	r2, r4
d03e032c:	83f4      	strh	r4, [r6, #30]
d03e032e:	f7ff ff6d 	bl	d03e020c <sid_write>
d03e0332:	1c69      	adds	r1, r5, #1
d03e0334:	0a22      	lsrs	r2, r4, #8
d03e0336:	9801      	ldr	r0, [sp, #4]
d03e0338:	b2c9      	uxtb	r1, r1
d03e033a:	b003      	add	sp, #12
d03e033c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03e0340:	f7ff bf64 	b.w	d03e020c <sid_write>
d03e0344:	2400      	movs	r4, #0
d03e0346:	4623      	mov	r3, r4
d03e0348:	e7dc      	b.n	d03e0304 <sid_voice_apply_note_offset+0x64>
d03e034a:	bf00      	nop
d03e034c:	d03e893c 	.word	0xd03e893c

d03e0350 <sid_voice_clear_gate>:
d03e0350:	4b05      	ldr	r3, [pc, #20]	; (d03e0368 <sid_voice_clear_gate+0x18>)
d03e0352:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d03e0356:	440b      	add	r3, r1
d03e0358:	3104      	adds	r1, #4
d03e035a:	791a      	ldrb	r2, [r3, #4]
d03e035c:	b2c9      	uxtb	r1, r1
d03e035e:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03e0362:	f7ff bf53 	b.w	d03e020c <sid_write>
d03e0366:	bf00      	nop
d03e0368:	d03ea0e8 	.word	0xd03ea0e8

d03e036c <sid_voice_hard_silence>:
d03e036c:	b538      	push	{r3, r4, r5, lr}
d03e036e:	460c      	mov	r4, r1
d03e0370:	3104      	adds	r1, #4
d03e0372:	2208      	movs	r2, #8
d03e0374:	4605      	mov	r5, r0
d03e0376:	b2c9      	uxtb	r1, r1
d03e0378:	f7ff ff48 	bl	d03e020c <sid_write>
d03e037c:	1d61      	adds	r1, r4, #5
d03e037e:	4628      	mov	r0, r5
d03e0380:	2200      	movs	r2, #0
d03e0382:	b2c9      	uxtb	r1, r1
d03e0384:	f7ff ff42 	bl	d03e020c <sid_write>
d03e0388:	1da1      	adds	r1, r4, #6
d03e038a:	4628      	mov	r0, r5
d03e038c:	2200      	movs	r2, #0
d03e038e:	b2c9      	uxtb	r1, r1
d03e0390:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03e0394:	f7ff bf3a 	b.w	d03e020c <sid_write>

d03e0398 <get_voice_target>:
d03e0398:	2303      	movs	r3, #3
d03e039a:	fbb0 f3f3 	udiv	r3, r0, r3
d03e039e:	700b      	strb	r3, [r1, #0]
d03e03a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e03a4:	1ac0      	subs	r0, r0, r3
d03e03a6:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03e03aa:	7010      	strb	r0, [r2, #0]
d03e03ac:	4770      	bx	lr
	...

d03e03b0 <sid_voice_set_program>:
d03e03b0:	2805      	cmp	r0, #5
d03e03b2:	4603      	mov	r3, r0
d03e03b4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03e03b6:	d856      	bhi.n	d03e0466 <sid_voice_set_program+0xb6>
d03e03b8:	0608      	lsls	r0, r1, #24
d03e03ba:	d454      	bmi.n	d03e0466 <sid_voice_set_program+0xb6>
d03e03bc:	482c      	ldr	r0, [pc, #176]	; (d03e0470 <sid_voice_set_program+0xc0>)
d03e03be:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
d03e03c2:	2800      	cmp	r0, #0
d03e03c4:	d04f      	beq.n	d03e0466 <sid_voice_set_program+0xb6>
d03e03c6:	2138      	movs	r1, #56	; 0x38
d03e03c8:	4c2a      	ldr	r4, [pc, #168]	; (d03e0474 <sid_voice_set_program+0xc4>)
d03e03ca:	4359      	muls	r1, r3
d03e03cc:	1865      	adds	r5, r4, r1
d03e03ce:	5060      	str	r0, [r4, r1]
d03e03d0:	2100      	movs	r1, #0
d03e03d2:	6068      	str	r0, [r5, #4]
d03e03d4:	72ea      	strb	r2, [r5, #11]
d03e03d6:	7369      	strb	r1, [r5, #13]
d03e03d8:	73a9      	strb	r1, [r5, #14]
d03e03da:	f810 6021 	ldrb.w	r6, [r0, r1, lsl #2]
d03e03de:	2e0f      	cmp	r6, #15
d03e03e0:	d043      	beq.n	d03e046a <sid_voice_set_program+0xba>
d03e03e2:	2e13      	cmp	r6, #19
d03e03e4:	d041      	beq.n	d03e046a <sid_voice_set_program+0xba>
d03e03e6:	b11e      	cbz	r6, d03e03f0 <sid_voice_set_program+0x40>
d03e03e8:	3101      	adds	r1, #1
d03e03ea:	2960      	cmp	r1, #96	; 0x60
d03e03ec:	d1f5      	bne.n	d03e03da <sid_voice_set_program+0x2a>
d03e03ee:	2600      	movs	r6, #0
d03e03f0:	2038      	movs	r0, #56	; 0x38
d03e03f2:	2100      	movs	r1, #0
d03e03f4:	f44f 3780 	mov.w	r7, #65536	; 0x10000
d03e03f8:	f012 0f80 	tst.w	r2, #128	; 0x80
d03e03fc:	fb00 f003 	mul.w	r0, r0, r3
d03e0400:	bf18      	it	ne
d03e0402:	227f      	movne	r2, #127	; 0x7f
d03e0404:	1825      	adds	r5, r4, r0
d03e0406:	73ee      	strb	r6, [r5, #15]
d03e0408:	4e1b      	ldr	r6, [pc, #108]	; (d03e0478 <sid_voice_set_program+0xc8>)
d03e040a:	8129      	strh	r1, [r5, #8]
d03e040c:	5187      	str	r7, [r0, r6]
d03e040e:	3610      	adds	r6, #16
d03e0410:	7529      	strb	r1, [r5, #20]
d03e0412:	f04f 7780 	mov.w	r7, #16777216	; 0x1000000
d03e0416:	82e9      	strh	r1, [r5, #22]
d03e0418:	8329      	strh	r1, [r5, #24]
d03e041a:	8369      	strh	r1, [r5, #26]
d03e041c:	83a9      	strh	r1, [r5, #28]
d03e041e:	5181      	str	r1, [r0, r6]
d03e0420:	3030      	adds	r0, #48	; 0x30
d03e0422:	84a9      	strh	r1, [r5, #36]	; 0x24
d03e0424:	1826      	adds	r6, r4, r0
d03e0426:	85e9      	strh	r1, [r5, #46]	; 0x2e
d03e0428:	f885 1028 	strb.w	r1, [r5, #40]	; 0x28
d03e042c:	5027      	str	r7, [r4, r0]
d03e042e:	2403      	movs	r4, #3
d03e0430:	6071      	str	r1, [r6, #4]
d03e0432:	fbb3 f4f4 	udiv	r4, r3, r4
d03e0436:	b2e0      	uxtb	r0, r4
d03e0438:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d03e043c:	9001      	str	r0, [sp, #4]
d03e043e:	1b1b      	subs	r3, r3, r4
d03e0440:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d03e0444:	b2dc      	uxtb	r4, r3
d03e0446:	4b0d      	ldr	r3, [pc, #52]	; (d03e047c <sid_voice_set_program+0xcc>)
d03e0448:	f833 6012 	ldrh.w	r6, [r3, r2, lsl #1]
d03e044c:	4621      	mov	r1, r4
d03e044e:	b2f2      	uxtb	r2, r6
d03e0450:	83ee      	strh	r6, [r5, #30]
d03e0452:	f7ff fedb 	bl	d03e020c <sid_write>
d03e0456:	1c61      	adds	r1, r4, #1
d03e0458:	0a32      	lsrs	r2, r6, #8
d03e045a:	9801      	ldr	r0, [sp, #4]
d03e045c:	b2c9      	uxtb	r1, r1
d03e045e:	f7ff fed5 	bl	d03e020c <sid_write>
d03e0462:	2301      	movs	r3, #1
d03e0464:	72ab      	strb	r3, [r5, #10]
d03e0466:	b003      	add	sp, #12
d03e0468:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03e046a:	2601      	movs	r6, #1
d03e046c:	e7c0      	b.n	d03e03f0 <sid_voice_set_program+0x40>
d03e046e:	bf00      	nop
d03e0470:	d03e9a7c 	.word	0xd03e9a7c
d03e0474:	d03ec478 	.word	0xd03ec478
d03e0478:	d03ec488 	.word	0xd03ec488
d03e047c:	d03e893c 	.word	0xd03e893c

d03e0480 <sid_voice_note_off>:
d03e0480:	2805      	cmp	r0, #5
d03e0482:	4601      	mov	r1, r0
d03e0484:	b570      	push	{r4, r5, r6, lr}
d03e0486:	d81f      	bhi.n	d03e04c8 <sid_voice_note_off+0x48>
d03e0488:	4b17      	ldr	r3, [pc, #92]	; (d03e04e8 <sid_voice_note_off+0x68>)
d03e048a:	2438      	movs	r4, #56	; 0x38
d03e048c:	fb04 3400 	mla	r4, r4, r0, r3
d03e0490:	7aa3      	ldrb	r3, [r4, #10]
d03e0492:	b1cb      	cbz	r3, d03e04c8 <sid_voice_note_off+0x48>
d03e0494:	2303      	movs	r3, #3
d03e0496:	7be5      	ldrb	r5, [r4, #15]
d03e0498:	2601      	movs	r6, #1
d03e049a:	fbb0 f3f3 	udiv	r3, r0, r3
d03e049e:	b2d8      	uxtb	r0, r3
d03e04a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e04a4:	1ac9      	subs	r1, r1, r3
d03e04a6:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03e04aa:	b2c9      	uxtb	r1, r1
d03e04ac:	b16d      	cbz	r5, d03e04ca <sid_voice_note_off+0x4a>
d03e04ae:	f7ff ff4f 	bl	d03e0350 <sid_voice_clear_gate>
d03e04b2:	2300      	movs	r3, #0
d03e04b4:	73a6      	strb	r6, [r4, #14]
d03e04b6:	8123      	strh	r3, [r4, #8]
d03e04b8:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e04ba:	84a3      	strh	r3, [r4, #36]	; 0x24
d03e04bc:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e04c0:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e04c4:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e04c8:	bd70      	pop	{r4, r5, r6, pc}
d03e04ca:	f7ff ff41 	bl	d03e0350 <sid_voice_clear_gate>
d03e04ce:	8a63      	ldrh	r3, [r4, #18]
d03e04d0:	73a6      	strb	r6, [r4, #14]
d03e04d2:	7426      	strb	r6, [r4, #16]
d03e04d4:	8123      	strh	r3, [r4, #8]
d03e04d6:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03e04d8:	84a5      	strh	r5, [r4, #36]	; 0x24
d03e04da:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03e04de:	f884 5030 	strb.w	r5, [r4, #48]	; 0x30
d03e04e2:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
d03e04e6:	e7ef      	b.n	d03e04c8 <sid_voice_note_off+0x48>
d03e04e8:	d03ec478 	.word	0xd03ec478

d03e04ec <sid_voice_note_on>:
d03e04ec:	2805      	cmp	r0, #5
d03e04ee:	b4f0      	push	{r4, r5, r6, r7}
d03e04f0:	4604      	mov	r4, r0
d03e04f2:	4616      	mov	r6, r2
d03e04f4:	d804      	bhi.n	d03e0500 <sid_voice_note_on+0x14>
d03e04f6:	b93b      	cbnz	r3, d03e0508 <sid_voice_note_on+0x1c>
d03e04f8:	4620      	mov	r0, r4
d03e04fa:	bcf0      	pop	{r4, r5, r6, r7}
d03e04fc:	f7ff bfc0 	b.w	d03e0480 <sid_voice_note_off>
d03e0500:	2b00      	cmp	r3, #0
d03e0502:	d0f9      	beq.n	d03e04f8 <sid_voice_note_on+0xc>
d03e0504:	bcf0      	pop	{r4, r5, r6, r7}
d03e0506:	4770      	bx	lr
d03e0508:	f8df c024 	ldr.w	ip, [pc, #36]	; d03e0530 <sid_voice_note_on+0x44>
d03e050c:	2738      	movs	r7, #56	; 0x38
d03e050e:	2980      	cmp	r1, #128	; 0x80
d03e0510:	fb07 c700 	mla	r7, r7, r0, ip
d03e0514:	733b      	strb	r3, [r7, #12]
d03e0516:	d001      	beq.n	d03e051c <sid_voice_note_on+0x30>
d03e0518:	2909      	cmp	r1, #9
d03e051a:	d105      	bne.n	d03e0528 <sid_voice_note_on+0x3c>
d03e051c:	4631      	mov	r1, r6
d03e051e:	4620      	mov	r0, r4
d03e0520:	461a      	mov	r2, r3
d03e0522:	bcf0      	pop	{r4, r5, r6, r7}
d03e0524:	f7ff bdfc 	b.w	d03e0120 <sid_midi_trigger_percussion>
d03e0528:	bcf0      	pop	{r4, r5, r6, r7}
d03e052a:	f7ff bf41 	b.w	d03e03b0 <sid_voice_set_program>
d03e052e:	bf00      	nop
d03e0530:	d03ec478 	.word	0xd03ec478

d03e0534 <sid_voice_note_kill>:
d03e0534:	2805      	cmp	r0, #5
d03e0536:	b510      	push	{r4, lr}
d03e0538:	4604      	mov	r4, r0
d03e053a:	d81c      	bhi.n	d03e0576 <sid_voice_note_kill+0x42>
d03e053c:	2003      	movs	r0, #3
d03e053e:	fbb4 f0f0 	udiv	r0, r4, r0
d03e0542:	eb00 0140 	add.w	r1, r0, r0, lsl #1
d03e0546:	1a61      	subs	r1, r4, r1
d03e0548:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03e054c:	b2c9      	uxtb	r1, r1
d03e054e:	f7ff ff0d 	bl	d03e036c <sid_voice_hard_silence>
d03e0552:	2338      	movs	r3, #56	; 0x38
d03e0554:	4808      	ldr	r0, [pc, #32]	; (d03e0578 <sid_voice_note_kill+0x44>)
d03e0556:	2201      	movs	r2, #1
d03e0558:	fb03 0004 	mla	r0, r3, r4, r0
d03e055c:	2300      	movs	r3, #0
d03e055e:	7382      	strb	r2, [r0, #14]
d03e0560:	7283      	strb	r3, [r0, #10]
d03e0562:	7403      	strb	r3, [r0, #16]
d03e0564:	8103      	strh	r3, [r0, #8]
d03e0566:	85c3      	strh	r3, [r0, #46]	; 0x2e
d03e0568:	8483      	strh	r3, [r0, #36]	; 0x24
d03e056a:	f880 3028 	strb.w	r3, [r0, #40]	; 0x28
d03e056e:	f880 3030 	strb.w	r3, [r0, #48]	; 0x30
d03e0572:	f880 3034 	strb.w	r3, [r0, #52]	; 0x34
d03e0576:	bd10      	pop	{r4, pc}
d03e0578:	d03ec478 	.word	0xd03ec478

d03e057c <sid_voice_pitch_bend>:
d03e057c:	2805      	cmp	r0, #5
d03e057e:	b410      	push	{r4}
d03e0580:	d819      	bhi.n	d03e05b6 <sid_voice_pitch_bend+0x3a>
d03e0582:	4c0e      	ldr	r4, [pc, #56]	; (d03e05bc <sid_voice_pitch_bend+0x40>)
d03e0584:	2338      	movs	r3, #56	; 0x38
d03e0586:	fb03 4300 	mla	r3, r3, r0, r4
d03e058a:	7a9a      	ldrb	r2, [r3, #10]
d03e058c:	b19a      	cbz	r2, d03e05b6 <sid_voice_pitch_bend+0x3a>
d03e058e:	8419      	strh	r1, [r3, #32]
d03e0590:	2103      	movs	r1, #3
d03e0592:	f993 3022 	ldrsb.w	r3, [r3, #34]	; 0x22
d03e0596:	fbb0 f1f1 	udiv	r1, r0, r1
d03e059a:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03e059e:	1a82      	subs	r2, r0, r2
d03e05a0:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03e05a4:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03e05a8:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03e05ac:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e05b0:	b2d2      	uxtb	r2, r2
d03e05b2:	f7ff be75 	b.w	d03e02a0 <sid_voice_apply_note_offset>
d03e05b6:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e05ba:	4770      	bx	lr
d03e05bc:	d03ec478 	.word	0xd03ec478

d03e05c0 <sid_voice_set_velocity>:
d03e05c0:	2805      	cmp	r0, #5
d03e05c2:	b410      	push	{r4}
d03e05c4:	d819      	bhi.n	d03e05fa <sid_voice_set_velocity+0x3a>
d03e05c6:	4c0e      	ldr	r4, [pc, #56]	; (d03e0600 <sid_voice_set_velocity+0x40>)
d03e05c8:	2338      	movs	r3, #56	; 0x38
d03e05ca:	fb03 4300 	mla	r3, r3, r0, r4
d03e05ce:	7a9a      	ldrb	r2, [r3, #10]
d03e05d0:	b19a      	cbz	r2, d03e05fa <sid_voice_set_velocity+0x3a>
d03e05d2:	7b5a      	ldrb	r2, [r3, #13]
d03e05d4:	b18a      	cbz	r2, d03e05fa <sid_voice_set_velocity+0x3a>
d03e05d6:	7319      	strb	r1, [r3, #12]
d03e05d8:	2103      	movs	r1, #3
d03e05da:	fbb0 f1f1 	udiv	r1, r0, r1
d03e05de:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03e05e2:	1a82      	subs	r2, r0, r2
d03e05e4:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03e05e8:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03e05ec:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03e05f0:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e05f4:	b2d2      	uxtb	r2, r2
d03e05f6:	f7ff be25 	b.w	d03e0244 <sid_voice_write_scaled_sr>
d03e05fa:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e05fe:	4770      	bx	lr
d03e0600:	d03ec478 	.word	0xd03ec478

d03e0604 <sid_voice_get_vm_debug>:
d03e0604:	2805      	cmp	r0, #5
d03e0606:	b510      	push	{r4, lr}
d03e0608:	d81b      	bhi.n	d03e0642 <sid_voice_get_vm_debug+0x3e>
d03e060a:	4c0f      	ldr	r4, [pc, #60]	; (d03e0648 <sid_voice_get_vm_debug+0x44>)
d03e060c:	b121      	cbz	r1, d03e0618 <sid_voice_get_vm_debug+0x14>
d03e060e:	2338      	movs	r3, #56	; 0x38
d03e0610:	fb03 4300 	mla	r3, r3, r0, r4
d03e0614:	7c5b      	ldrb	r3, [r3, #17]
d03e0616:	700b      	strb	r3, [r1, #0]
d03e0618:	b14a      	cbz	r2, d03e062e <sid_voice_get_vm_debug+0x2a>
d03e061a:	2338      	movs	r3, #56	; 0x38
d03e061c:	fb03 4300 	mla	r3, r3, r0, r4
d03e0620:	7a99      	ldrb	r1, [r3, #10]
d03e0622:	b961      	cbnz	r1, d03e063e <sid_voice_get_vm_debug+0x3a>
d03e0624:	7c1b      	ldrb	r3, [r3, #16]
d03e0626:	3b00      	subs	r3, #0
d03e0628:	bf18      	it	ne
d03e062a:	2301      	movne	r3, #1
d03e062c:	7013      	strb	r3, [r2, #0]
d03e062e:	2338      	movs	r3, #56	; 0x38
d03e0630:	fb03 4000 	mla	r0, r3, r0, r4
d03e0634:	6840      	ldr	r0, [r0, #4]
d03e0636:	3800      	subs	r0, #0
d03e0638:	bf18      	it	ne
d03e063a:	2001      	movne	r0, #1
d03e063c:	bd10      	pop	{r4, pc}
d03e063e:	2301      	movs	r3, #1
d03e0640:	e7f4      	b.n	d03e062c <sid_voice_get_vm_debug+0x28>
d03e0642:	2000      	movs	r0, #0
d03e0644:	e7fa      	b.n	d03e063c <sid_voice_get_vm_debug+0x38>
d03e0646:	bf00      	nop
d03e0648:	d03ec478 	.word	0xd03ec478

d03e064c <sid_soundfont_init>:
d03e064c:	b508      	push	{r3, lr}
d03e064e:	220f      	movs	r2, #15
d03e0650:	2118      	movs	r1, #24
d03e0652:	2000      	movs	r0, #0
d03e0654:	f7ff fdda 	bl	d03e020c <sid_write>
d03e0658:	220f      	movs	r2, #15
d03e065a:	2118      	movs	r1, #24
d03e065c:	2001      	movs	r0, #1
d03e065e:	f7ff fdd5 	bl	d03e020c <sid_write>
d03e0662:	4b03      	ldr	r3, [pc, #12]	; (d03e0670 <sid_soundfont_init+0x24>)
d03e0664:	220f      	movs	r2, #15
d03e0666:	761a      	strb	r2, [r3, #24]
d03e0668:	f883 2038 	strb.w	r2, [r3, #56]	; 0x38
d03e066c:	bd08      	pop	{r3, pc}
d03e066e:	bf00      	nop
d03e0670:	d03ea0e8 	.word	0xd03ea0e8

d03e0674 <sid_midi_isr>:
d03e0674:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e0678:	4caf      	ldr	r4, [pc, #700]	; (d03e0938 <sid_midi_isr+0x2c4>)
d03e067a:	f04f 0800 	mov.w	r8, #0
d03e067e:	46a3      	mov	fp, r4
d03e0680:	7aa3      	ldrb	r3, [r4, #10]
d03e0682:	fa5f f688 	uxtb.w	r6, r8
d03e0686:	b17b      	cbz	r3, d03e06a8 <sid_midi_isr+0x34>
d03e0688:	2303      	movs	r3, #3
d03e068a:	fbb6 f3f3 	udiv	r3, r6, r3
d03e068e:	b2df      	uxtb	r7, r3
d03e0690:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e0694:	1af6      	subs	r6, r6, r3
d03e0696:	7c23      	ldrb	r3, [r4, #16]
d03e0698:	ebc6 06c6 	rsb	r6, r6, r6, lsl #3
d03e069c:	b2f6      	uxtb	r6, r6
d03e069e:	b19b      	cbz	r3, d03e06c8 <sid_midi_isr+0x54>
d03e06a0:	8925      	ldrh	r5, [r4, #8]
d03e06a2:	b155      	cbz	r5, d03e06ba <sid_midi_isr+0x46>
d03e06a4:	3d01      	subs	r5, #1
d03e06a6:	8125      	strh	r5, [r4, #8]
d03e06a8:	f108 0801 	add.w	r8, r8, #1
d03e06ac:	3438      	adds	r4, #56	; 0x38
d03e06ae:	f1b8 0f06 	cmp.w	r8, #6
d03e06b2:	d1e5      	bne.n	d03e0680 <sid_midi_isr+0xc>
d03e06b4:	b003      	add	sp, #12
d03e06b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e06ba:	4631      	mov	r1, r6
d03e06bc:	4638      	mov	r0, r7
d03e06be:	f7ff fe55 	bl	d03e036c <sid_voice_hard_silence>
d03e06c2:	7425      	strb	r5, [r4, #16]
d03e06c4:	72a5      	strb	r5, [r4, #10]
d03e06c6:	e7ef      	b.n	d03e06a8 <sid_midi_isr+0x34>
d03e06c8:	f9b4 302e 	ldrsh.w	r3, [r4, #46]	; 0x2e
d03e06cc:	b183      	cbz	r3, d03e06f0 <sid_midi_isr+0x7c>
d03e06ce:	8be2      	ldrh	r2, [r4, #30]
d03e06d0:	4631      	mov	r1, r6
d03e06d2:	4638      	mov	r0, r7
d03e06d4:	441a      	add	r2, r3
d03e06d6:	f382 0210 	usat	r2, #16, r2
d03e06da:	83e2      	strh	r2, [r4, #30]
d03e06dc:	b2d2      	uxtb	r2, r2
d03e06de:	f7ff fd95 	bl	d03e020c <sid_write>
d03e06e2:	8be2      	ldrh	r2, [r4, #30]
d03e06e4:	1c71      	adds	r1, r6, #1
d03e06e6:	4638      	mov	r0, r7
d03e06e8:	0a12      	lsrs	r2, r2, #8
d03e06ea:	b2c9      	uxtb	r1, r1
d03e06ec:	f7ff fd8e 	bl	d03e020c <sid_write>
d03e06f0:	f9b4 3024 	ldrsh.w	r3, [r4, #36]	; 0x24
d03e06f4:	b183      	cbz	r3, d03e0718 <sid_midi_isr+0xa4>
d03e06f6:	8be2      	ldrh	r2, [r4, #30]
d03e06f8:	4631      	mov	r1, r6
d03e06fa:	4638      	mov	r0, r7
d03e06fc:	441a      	add	r2, r3
d03e06fe:	f382 0210 	usat	r2, #16, r2
d03e0702:	83e2      	strh	r2, [r4, #30]
d03e0704:	b2d2      	uxtb	r2, r2
d03e0706:	f7ff fd81 	bl	d03e020c <sid_write>
d03e070a:	8be2      	ldrh	r2, [r4, #30]
d03e070c:	1c71      	adds	r1, r6, #1
d03e070e:	4638      	mov	r0, r7
d03e0710:	0a12      	lsrs	r2, r2, #8
d03e0712:	b2c9      	uxtb	r1, r1
d03e0714:	f7ff fd7a 	bl	d03e020c <sid_write>
d03e0718:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03e071c:	b1ab      	cbz	r3, d03e074a <sid_midi_isr+0xd6>
d03e071e:	f894 3029 	ldrb.w	r3, [r4, #41]	; 0x29
d03e0722:	2203      	movs	r2, #3
d03e0724:	4639      	mov	r1, r7
d03e0726:	4620      	mov	r0, r4
d03e0728:	3301      	adds	r3, #1
d03e072a:	fbb3 f2f2 	udiv	r2, r3, r2
d03e072e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03e0732:	1a9b      	subs	r3, r3, r2
d03e0734:	2238      	movs	r2, #56	; 0x38
d03e0736:	fb02 b208 	mla	r2, r2, r8, fp
d03e073a:	f884 3029 	strb.w	r3, [r4, #41]	; 0x29
d03e073e:	4413      	add	r3, r2
d03e0740:	4632      	mov	r2, r6
d03e0742:	f993 302a 	ldrsb.w	r3, [r3, #42]	; 0x2a
d03e0746:	f7ff fdab 	bl	d03e02a0 <sid_voice_apply_note_offset>
d03e074a:	f894 5030 	ldrb.w	r5, [r4, #48]	; 0x30
d03e074e:	b335      	cbz	r5, d03e079e <sid_midi_isr+0x12a>
d03e0750:	f894 2031 	ldrb.w	r2, [r4, #49]	; 0x31
d03e0754:	b31a      	cbz	r2, d03e079e <sid_midi_isr+0x12a>
d03e0756:	f894 3032 	ldrb.w	r3, [r4, #50]	; 0x32
d03e075a:	4631      	mov	r1, r6
d03e075c:	4638      	mov	r0, r7
d03e075e:	3301      	adds	r3, #1
d03e0760:	b2db      	uxtb	r3, r3
d03e0762:	429a      	cmp	r2, r3
d03e0764:	bf97      	itett	ls
d03e0766:	2300      	movls	r3, #0
d03e0768:	f884 3032 	strbhi.w	r3, [r4, #50]	; 0x32
d03e076c:	f884 3032 	strbls.w	r3, [r4, #50]	; 0x32
d03e0770:	f894 3033 	ldrbls.w	r3, [r4, #51]	; 0x33
d03e0774:	bf9c      	itt	ls
d03e0776:	425b      	negls	r3, r3
d03e0778:	f884 3033 	strbls.w	r3, [r4, #51]	; 0x33
d03e077c:	8be3      	ldrh	r3, [r4, #30]
d03e077e:	f994 2033 	ldrsb.w	r2, [r4, #51]	; 0x33
d03e0782:	fb15 3502 	smlabb	r5, r5, r2, r3
d03e0786:	f385 0510 	usat	r5, #16, r5
d03e078a:	b2ea      	uxtb	r2, r5
d03e078c:	f7ff fd3e 	bl	d03e020c <sid_write>
d03e0790:	1c71      	adds	r1, r6, #1
d03e0792:	f3c5 2207 	ubfx	r2, r5, #8, #8
d03e0796:	4638      	mov	r0, r7
d03e0798:	b2c9      	uxtb	r1, r1
d03e079a:	f7ff fd37 	bl	d03e020c <sid_write>
d03e079e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d03e07a2:	b163      	cbz	r3, d03e07be <sid_midi_isr+0x14a>
d03e07a4:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d03e07a8:	b14a      	cbz	r2, d03e07be <sid_midi_isr+0x14a>
d03e07aa:	7b63      	ldrb	r3, [r4, #13]
d03e07ac:	b13b      	cbz	r3, d03e07be <sid_midi_isr+0x14a>
d03e07ae:	f894 3036 	ldrb.w	r3, [r4, #54]	; 0x36
d03e07b2:	3301      	adds	r3, #1
d03e07b4:	b2db      	uxtb	r3, r3
d03e07b6:	429a      	cmp	r2, r3
d03e07b8:	d908      	bls.n	d03e07cc <sid_midi_isr+0x158>
d03e07ba:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03e07be:	8923      	ldrh	r3, [r4, #8]
d03e07c0:	2b00      	cmp	r3, #0
d03e07c2:	f000 8156 	beq.w	d03e0a72 <sid_midi_isr+0x3fe>
d03e07c6:	3b01      	subs	r3, #1
d03e07c8:	8123      	strh	r3, [r4, #8]
d03e07ca:	e76d      	b.n	d03e06a8 <sid_midi_isr+0x34>
d03e07cc:	2300      	movs	r3, #0
d03e07ce:	4632      	mov	r2, r6
d03e07d0:	4639      	mov	r1, r7
d03e07d2:	4620      	mov	r0, r4
d03e07d4:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03e07d8:	f894 3037 	ldrb.w	r3, [r4, #55]	; 0x37
d03e07dc:	fab3 f383 	clz	r3, r3
d03e07e0:	095b      	lsrs	r3, r3, #5
d03e07e2:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03e07e6:	f7ff fd2d 	bl	d03e0244 <sid_voice_write_scaled_sr>
d03e07ea:	e7e8      	b.n	d03e07be <sid_midi_isr+0x14a>
d03e07ec:	6822      	ldr	r2, [r4, #0]
d03e07ee:	6861      	ldr	r1, [r4, #4]
d03e07f0:	f892 c000 	ldrb.w	ip, [r2]
d03e07f4:	eba2 0e01 	sub.w	lr, r2, r1
d03e07f8:	7853      	ldrb	r3, [r2, #1]
d03e07fa:	8855      	ldrh	r5, [r2, #2]
d03e07fc:	ea4f 00ae 	mov.w	r0, lr, asr #2
d03e0800:	f5be 7fc0 	cmp.w	lr, #384	; 0x180
d03e0804:	bf38      	it	cc
d03e0806:	7460      	strbcc	r0, [r4, #17]
d03e0808:	f1bc 0f15 	cmp.w	ip, #21
d03e080c:	f200 812e 	bhi.w	d03e0a6c <sid_midi_isr+0x3f8>
d03e0810:	e8df f01c 	tbh	[pc, ip, lsl #1]
d03e0814:	002e0016 	.word	0x002e0016
d03e0818:	00390032 	.word	0x00390032
d03e081c:	00850062 	.word	0x00850062
d03e0820:	007e0068 	.word	0x007e0068
d03e0824:	0096008e 	.word	0x0096008e
d03e0828:	01160105 	.word	0x01160105
d03e082c:	00a60126 	.word	0x00a60126
d03e0830:	00c700a8 	.word	0x00c700a8
d03e0834:	00d000b4 	.word	0x00d000b4
d03e0838:	00e100d7 	.word	0x00e100d7
d03e083c:	00ff00eb 	.word	0x00ff00eb
d03e0840:	7ba5      	ldrb	r5, [r4, #14]
d03e0842:	4631      	mov	r1, r6
d03e0844:	4638      	mov	r0, r7
d03e0846:	b185      	cbz	r5, d03e086a <sid_midi_isr+0x1f6>
d03e0848:	f7ff fd82 	bl	d03e0350 <sid_voice_clear_gate>
d03e084c:	2301      	movs	r3, #1
d03e084e:	73a3      	strb	r3, [r4, #14]
d03e0850:	7423      	strb	r3, [r4, #16]
d03e0852:	8a63      	ldrh	r3, [r4, #18]
d03e0854:	8123      	strh	r3, [r4, #8]
d03e0856:	2300      	movs	r3, #0
d03e0858:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03e085a:	84a3      	strh	r3, [r4, #36]	; 0x24
d03e085c:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e0860:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e0864:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e0868:	e71e      	b.n	d03e06a8 <sid_midi_isr+0x34>
d03e086a:	f7ff fd71 	bl	d03e0350 <sid_voice_clear_gate>
d03e086e:	e729      	b.n	d03e06c4 <sid_midi_isr+0x50>
d03e0870:	3204      	adds	r2, #4
d03e0872:	8125      	strh	r5, [r4, #8]
d03e0874:	6022      	str	r2, [r4, #0]
d03e0876:	e717      	b.n	d03e06a8 <sid_midi_isr+0x34>
d03e0878:	1d31      	adds	r1, r6, #4
d03e087a:	b2ea      	uxtb	r2, r5
d03e087c:	b2c9      	uxtb	r1, r1
d03e087e:	4638      	mov	r0, r7
d03e0880:	f7ff fcc4 	bl	d03e020c <sid_write>
d03e0884:	e01a      	b.n	d03e08bc <sid_midi_isr+0x248>
d03e0886:	1d71      	adds	r1, r6, #5
d03e0888:	b2eb      	uxtb	r3, r5
d03e088a:	0a2a      	lsrs	r2, r5, #8
d03e088c:	4638      	mov	r0, r7
d03e088e:	b2c9      	uxtb	r1, r1
d03e0890:	7363      	strb	r3, [r4, #13]
d03e0892:	9301      	str	r3, [sp, #4]
d03e0894:	f7ff fcba 	bl	d03e020c <sid_write>
d03e0898:	9b01      	ldr	r3, [sp, #4]
d03e089a:	1db1      	adds	r1, r6, #6
d03e089c:	4638      	mov	r0, r7
d03e089e:	f005 050f 	and.w	r5, r5, #15
d03e08a2:	461a      	mov	r2, r3
d03e08a4:	b2c9      	uxtb	r1, r1
d03e08a6:	f7ff fcb1 	bl	d03e020c <sid_write>
d03e08aa:	4632      	mov	r2, r6
d03e08ac:	4639      	mov	r1, r7
d03e08ae:	4620      	mov	r0, r4
d03e08b0:	f7ff fcc8 	bl	d03e0244 <sid_voice_write_scaled_sr>
d03e08b4:	4b21      	ldr	r3, [pc, #132]	; (d03e093c <sid_midi_isr+0x2c8>)
d03e08b6:	f833 3015 	ldrh.w	r3, [r3, r5, lsl #1]
d03e08ba:	8263      	strh	r3, [r4, #18]
d03e08bc:	6823      	ldr	r3, [r4, #0]
d03e08be:	3304      	adds	r3, #4
d03e08c0:	6023      	str	r3, [r4, #0]
d03e08c2:	7aa3      	ldrb	r3, [r4, #10]
d03e08c4:	2b00      	cmp	r3, #0
d03e08c6:	f43f aeef 	beq.w	d03e06a8 <sid_midi_isr+0x34>
d03e08ca:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d03e08ce:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d03e08d2:	d18b      	bne.n	d03e07ec <sid_midi_isr+0x178>
d03e08d4:	2301      	movs	r3, #1
d03e08d6:	e777      	b.n	d03e07c8 <sid_midi_isr+0x154>
d03e08d8:	f3c5 020b 	ubfx	r2, r5, #0, #12
d03e08dc:	84e2      	strh	r2, [r4, #38]	; 0x26
d03e08de:	1cb1      	adds	r1, r6, #2
d03e08e0:	b2d2      	uxtb	r2, r2
d03e08e2:	e00c      	b.n	d03e08fe <sid_midi_isr+0x28a>
d03e08e4:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03e08e6:	1cb1      	adds	r1, r6, #2
d03e08e8:	4415      	add	r5, r2
d03e08ea:	b2ad      	uxth	r5, r5
d03e08ec:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
d03e08f0:	bf2a      	itet	cs
d03e08f2:	f640 73ff 	movwcs	r3, #4095	; 0xfff
d03e08f6:	84e5      	strhcc	r5, [r4, #38]	; 0x26
d03e08f8:	84e3      	strhcs	r3, [r4, #38]	; 0x26
d03e08fa:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d03e08fe:	b2c9      	uxtb	r1, r1
d03e0900:	4638      	mov	r0, r7
d03e0902:	f7ff fc83 	bl	d03e020c <sid_write>
d03e0906:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03e0908:	1cf1      	adds	r1, r6, #3
d03e090a:	f3c2 2203 	ubfx	r2, r2, #8, #4
d03e090e:	e7b5      	b.n	d03e087c <sid_midi_isr+0x208>
d03e0910:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03e0912:	4295      	cmp	r5, r2
d03e0914:	bf96      	itet	ls
d03e0916:	1b52      	subls	r2, r2, r5
d03e0918:	2200      	movhi	r2, #0
d03e091a:	b292      	uxthls	r2, r2
d03e091c:	e7de      	b.n	d03e08dc <sid_midi_isr+0x268>
d03e091e:	b26b      	sxtb	r3, r5
d03e0920:	4632      	mov	r2, r6
d03e0922:	4639      	mov	r1, r7
d03e0924:	4620      	mov	r0, r4
d03e0926:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
d03e092a:	f7ff fcb9 	bl	d03e02a0 <sid_voice_apply_note_offset>
d03e092e:	e7c5      	b.n	d03e08bc <sid_midi_isr+0x248>
d03e0930:	84a5      	strh	r5, [r4, #36]	; 0x24
d03e0932:	3204      	adds	r2, #4
d03e0934:	e057      	b.n	d03e09e6 <sid_midi_isr+0x372>
d03e0936:	bf00      	nop
d03e0938:	d03ec478 	.word	0xd03ec478
d03e093c:	d03e8a3c 	.word	0xd03e8a3c
d03e0940:	b915      	cbnz	r5, d03e0948 <sid_midi_isr+0x2d4>
d03e0942:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03e0946:	e7f4      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e0948:	2301      	movs	r3, #1
d03e094a:	f884 502c 	strb.w	r5, [r4, #44]	; 0x2c
d03e094e:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03e0952:	2300      	movs	r3, #0
d03e0954:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
d03e0958:	0a2b      	lsrs	r3, r5, #8
d03e095a:	f884 302b 	strb.w	r3, [r4, #43]	; 0x2b
d03e095e:	e7e8      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e0960:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03e0962:	e7e6      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e0964:	0a2b      	lsrs	r3, r5, #8
d03e0966:	f884 5031 	strb.w	r5, [r4, #49]	; 0x31
d03e096a:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03e096e:	2300      	movs	r3, #0
d03e0970:	f884 3032 	strb.w	r3, [r4, #50]	; 0x32
d03e0974:	2301      	movs	r3, #1
d03e0976:	f884 3033 	strb.w	r3, [r4, #51]	; 0x33
d03e097a:	e7da      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e097c:	0a2b      	lsrs	r3, r5, #8
d03e097e:	f884 5035 	strb.w	r5, [r4, #53]	; 0x35
d03e0982:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03e0986:	2300      	movs	r3, #0
d03e0988:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03e098c:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03e0990:	7b63      	ldrb	r3, [r4, #13]
d03e0992:	2b00      	cmp	r3, #0
d03e0994:	d092      	beq.n	d03e08bc <sid_midi_isr+0x248>
d03e0996:	4632      	mov	r2, r6
d03e0998:	4639      	mov	r1, r7
d03e099a:	4620      	mov	r0, r4
d03e099c:	f7ff fc52 	bl	d03e0244 <sid_voice_write_scaled_sr>
d03e09a0:	e78c      	b.n	d03e08bc <sid_midi_isr+0x248>
d03e09a2:	7ba3      	ldrb	r3, [r4, #14]
d03e09a4:	2b00      	cmp	r3, #0
d03e09a6:	d1c4      	bne.n	d03e0932 <sid_midi_isr+0x2be>
d03e09a8:	2d00      	cmp	r5, #0
d03e09aa:	d093      	beq.n	d03e08d4 <sid_midi_isr+0x260>
d03e09ac:	eba2 0585 	sub.w	r5, r2, r5, lsl #2
d03e09b0:	6025      	str	r5, [r4, #0]
d03e09b2:	e786      	b.n	d03e08c2 <sid_midi_isr+0x24e>
d03e09b4:	f003 0303 	and.w	r3, r3, #3
d03e09b8:	4453      	add	r3, sl
d03e09ba:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03e09be:	82dd      	strh	r5, [r3, #22]
d03e09c0:	e7b7      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e09c2:	f003 0103 	and.w	r1, r3, #3
d03e09c6:	4451      	add	r1, sl
d03e09c8:	3108      	adds	r1, #8
d03e09ca:	eb0b 0141 	add.w	r1, fp, r1, lsl #1
d03e09ce:	88cb      	ldrh	r3, [r1, #6]
d03e09d0:	441d      	add	r5, r3
d03e09d2:	80cd      	strh	r5, [r1, #6]
d03e09d4:	e7ad      	b.n	d03e0932 <sid_midi_isr+0x2be>
d03e09d6:	7ba3      	ldrb	r3, [r4, #14]
d03e09d8:	2b00      	cmp	r3, #0
d03e09da:	d0aa      	beq.n	d03e0932 <sid_midi_isr+0x2be>
d03e09dc:	6822      	ldr	r2, [r4, #0]
d03e09de:	2d00      	cmp	r5, #0
d03e09e0:	d0a7      	beq.n	d03e0932 <sid_midi_isr+0x2be>
d03e09e2:	eb02 0285 	add.w	r2, r2, r5, lsl #2
d03e09e6:	6022      	str	r2, [r4, #0]
d03e09e8:	e76b      	b.n	d03e08c2 <sid_midi_isr+0x24e>
d03e09ea:	f003 0303 	and.w	r3, r3, #3
d03e09ee:	4453      	add	r3, sl
d03e09f0:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03e09f4:	f9b3 1016 	ldrsh.w	r1, [r3, #22]
d03e09f8:	f345 2307 	sbfx	r3, r5, #8, #8
d03e09fc:	4299      	cmp	r1, r3
d03e09fe:	dc98      	bgt.n	d03e0932 <sid_midi_isr+0x2be>
d03e0a00:	6821      	ldr	r1, [r4, #0]
d03e0a02:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
d03e0a06:	bf0c      	ite	eq
d03e0a08:	3104      	addeq	r1, #4
d03e0a0a:	eb01 0185 	addne.w	r1, r1, r5, lsl #2
d03e0a0e:	6021      	str	r1, [r4, #0]
d03e0a10:	e757      	b.n	d03e08c2 <sid_midi_isr+0x24e>
d03e0a12:	6822      	ldr	r2, [r4, #0]
d03e0a14:	2d00      	cmp	r5, #0
d03e0a16:	d08c      	beq.n	d03e0932 <sid_midi_isr+0x2be>
d03e0a18:	eba2 0285 	sub.w	r2, r2, r5, lsl #2
d03e0a1c:	e7e3      	b.n	d03e09e6 <sid_midi_isr+0x372>
d03e0a1e:	f005 0207 	and.w	r2, r5, #7
d03e0a22:	2115      	movs	r1, #21
d03e0a24:	4638      	mov	r0, r7
d03e0a26:	9301      	str	r3, [sp, #4]
d03e0a28:	f7ff fbf0 	bl	d03e020c <sid_write>
d03e0a2c:	f3c5 02c7 	ubfx	r2, r5, #3, #8
d03e0a30:	2116      	movs	r1, #22
d03e0a32:	4638      	mov	r0, r7
d03e0a34:	f7ff fbea 	bl	d03e020c <sid_write>
d03e0a38:	9b01      	ldr	r3, [sp, #4]
d03e0a3a:	2118      	movs	r1, #24
d03e0a3c:	461a      	mov	r2, r3
d03e0a3e:	e71e      	b.n	d03e087e <sid_midi_isr+0x20a>
d03e0a40:	2d00      	cmp	r5, #0
d03e0a42:	f43f af47 	beq.w	d03e08d4 <sid_midi_isr+0x260>
d03e0a46:	2b00      	cmp	r3, #0
d03e0a48:	d0b0      	beq.n	d03e09ac <sid_midi_isr+0x338>
d03e0a4a:	7d21      	ldrb	r1, [r4, #20]
d03e0a4c:	b901      	cbnz	r1, d03e0a50 <sid_midi_isr+0x3dc>
d03e0a4e:	7523      	strb	r3, [r4, #20]
d03e0a50:	7d23      	ldrb	r3, [r4, #20]
d03e0a52:	3b01      	subs	r3, #1
d03e0a54:	b2db      	uxtb	r3, r3
d03e0a56:	7523      	strb	r3, [r4, #20]
d03e0a58:	2b00      	cmp	r3, #0
d03e0a5a:	f43f af6a 	beq.w	d03e0932 <sid_midi_isr+0x2be>
d03e0a5e:	e7a5      	b.n	d03e09ac <sid_midi_isr+0x338>
d03e0a60:	42a8      	cmp	r0, r5
d03e0a62:	f43f af66 	beq.w	d03e0932 <sid_midi_isr+0x2be>
d03e0a66:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d03e0a6a:	e7a1      	b.n	d03e09b0 <sid_midi_isr+0x33c>
d03e0a6c:	2300      	movs	r3, #0
d03e0a6e:	72a3      	strb	r3, [r4, #10]
d03e0a70:	e61a      	b.n	d03e06a8 <sid_midi_isr+0x34>
d03e0a72:	f04f 0a1c 	mov.w	sl, #28
d03e0a76:	f04f 0961 	mov.w	r9, #97	; 0x61
d03e0a7a:	fb0a fa08 	mul.w	sl, sl, r8
d03e0a7e:	e720      	b.n	d03e08c2 <sid_midi_isr+0x24e>

d03e0a80 <midi_out_packet3>:
d03e0a80:	b507      	push	{r0, r1, r2, lr}
d03e0a82:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03e0a86:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03e0a8a:	f88d 0004 	strb.w	r0, [sp, #4]
d03e0a8e:	a801      	add	r0, sp, #4
d03e0a90:	f88d 2006 	strb.w	r2, [sp, #6]
d03e0a94:	4a09      	ldr	r2, [pc, #36]	; (d03e0abc <midi_out_packet3+0x3c>)
d03e0a96:	f88d 1005 	strb.w	r1, [sp, #5]
d03e0a9a:	7d13      	ldrb	r3, [r2, #20]
d03e0a9c:	7d51      	ldrb	r1, [r2, #21]
d03e0a9e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e0aa2:	7d91      	ldrb	r1, [r2, #22]
d03e0aa4:	7dd2      	ldrb	r2, [r2, #23]
d03e0aa6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0aaa:	2103      	movs	r1, #3
d03e0aac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0ab0:	681b      	ldr	r3, [r3, #0]
d03e0ab2:	695b      	ldr	r3, [r3, #20]
d03e0ab4:	4798      	blx	r3
d03e0ab6:	b003      	add	sp, #12
d03e0ab8:	f85d fb04 	ldr.w	pc, [sp], #4
d03e0abc:	2001f000 	.word	0x2001f000

d03e0ac0 <sid_find_voice_source>:
d03e0ac0:	b570      	push	{r4, r5, r6, lr}
d03e0ac2:	4b0a      	ldr	r3, [pc, #40]	; (d03e0aec <sid_find_voice_source+0x2c>)
d03e0ac4:	2400      	movs	r4, #0
d03e0ac6:	781e      	ldrb	r6, [r3, #0]
d03e0ac8:	b2e5      	uxtb	r5, r4
d03e0aca:	b146      	cbz	r6, d03e0ade <sid_find_voice_source+0x1e>
d03e0acc:	785e      	ldrb	r6, [r3, #1]
d03e0ace:	4286      	cmp	r6, r0
d03e0ad0:	d105      	bne.n	d03e0ade <sid_find_voice_source+0x1e>
d03e0ad2:	789e      	ldrb	r6, [r3, #2]
d03e0ad4:	428e      	cmp	r6, r1
d03e0ad6:	d102      	bne.n	d03e0ade <sid_find_voice_source+0x1e>
d03e0ad8:	795e      	ldrb	r6, [r3, #5]
d03e0ada:	4296      	cmp	r6, r2
d03e0adc:	d004      	beq.n	d03e0ae8 <sid_find_voice_source+0x28>
d03e0ade:	3401      	adds	r4, #1
d03e0ae0:	3308      	adds	r3, #8
d03e0ae2:	2c06      	cmp	r4, #6
d03e0ae4:	d1ef      	bne.n	d03e0ac6 <sid_find_voice_source+0x6>
d03e0ae6:	25ff      	movs	r5, #255	; 0xff
d03e0ae8:	4628      	mov	r0, r5
d03e0aea:	bd70      	pop	{r4, r5, r6, pc}
d03e0aec:	d03eb49c 	.word	0xd03eb49c

d03e0af0 <midi_effective_velocity>:
d03e0af0:	4b1c      	ldr	r3, [pc, #112]	; (d03e0b64 <midi_effective_velocity+0x74>)
d03e0af2:	2809      	cmp	r0, #9
d03e0af4:	b5f0      	push	{r4, r5, r6, r7, lr}
d03e0af6:	5c1c      	ldrb	r4, [r3, r0]
d03e0af8:	f04f 067f 	mov.w	r6, #127	; 0x7f
d03e0afc:	4b1a      	ldr	r3, [pc, #104]	; (d03e0b68 <midi_effective_velocity+0x78>)
d03e0afe:	4d1b      	ldr	r5, [pc, #108]	; (d03e0b6c <midi_effective_velocity+0x7c>)
d03e0b00:	5c1a      	ldrb	r2, [r3, r0]
d03e0b02:	fb14 f301 	smulbb	r3, r4, r1
d03e0b06:	882d      	ldrh	r5, [r5, #0]
d03e0b08:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03e0b0c:	fbb3 f3f6 	udiv	r3, r3, r6
d03e0b10:	fb02 f303 	mul.w	r3, r2, r3
d03e0b14:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03e0b18:	fbb3 f3f6 	udiv	r3, r3, r6
d03e0b1c:	fb05 f303 	mul.w	r3, r5, r3
d03e0b20:	f04f 0664 	mov.w	r6, #100	; 0x64
d03e0b24:	f103 0332 	add.w	r3, r3, #50	; 0x32
d03e0b28:	fbb3 f3f6 	udiv	r3, r3, r6
d03e0b2c:	d105      	bne.n	d03e0b3a <midi_effective_velocity+0x4a>
d03e0b2e:	4f10      	ldr	r7, [pc, #64]	; (d03e0b70 <midi_effective_velocity+0x80>)
d03e0b30:	883f      	ldrh	r7, [r7, #0]
d03e0b32:	437b      	muls	r3, r7
d03e0b34:	3332      	adds	r3, #50	; 0x32
d03e0b36:	fbb3 f3f6 	udiv	r3, r3, r6
d03e0b3a:	2bff      	cmp	r3, #255	; 0xff
d03e0b3c:	d80d      	bhi.n	d03e0b5a <midi_effective_velocity+0x6a>
d03e0b3e:	b953      	cbnz	r3, d03e0b56 <midi_effective_velocity+0x66>
d03e0b40:	b149      	cbz	r1, d03e0b56 <midi_effective_velocity+0x66>
d03e0b42:	b144      	cbz	r4, d03e0b56 <midi_effective_velocity+0x66>
d03e0b44:	b13a      	cbz	r2, d03e0b56 <midi_effective_velocity+0x66>
d03e0b46:	b135      	cbz	r5, d03e0b56 <midi_effective_velocity+0x66>
d03e0b48:	2809      	cmp	r0, #9
d03e0b4a:	d108      	bne.n	d03e0b5e <midi_effective_velocity+0x6e>
d03e0b4c:	4b08      	ldr	r3, [pc, #32]	; (d03e0b70 <midi_effective_velocity+0x80>)
d03e0b4e:	881b      	ldrh	r3, [r3, #0]
d03e0b50:	3b00      	subs	r3, #0
d03e0b52:	bf18      	it	ne
d03e0b54:	2301      	movne	r3, #1
d03e0b56:	b2d8      	uxtb	r0, r3
d03e0b58:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03e0b5a:	23ff      	movs	r3, #255	; 0xff
d03e0b5c:	e7fb      	b.n	d03e0b56 <midi_effective_velocity+0x66>
d03e0b5e:	2301      	movs	r3, #1
d03e0b60:	e7f9      	b.n	d03e0b56 <midi_effective_velocity+0x66>
d03e0b62:	bf00      	nop
d03e0b64:	d03ea174 	.word	0xd03ea174
d03e0b68:	d03ea154 	.word	0xd03ea154
d03e0b6c:	d03ea38e 	.word	0xd03ea38e
d03e0b70:	d03ea18a 	.word	0xd03ea18a

d03e0b74 <seq_beat_ticks>:
d03e0b74:	4b05      	ldr	r3, [pc, #20]	; (d03e0b8c <seq_beat_ticks+0x18>)
d03e0b76:	881b      	ldrh	r3, [r3, #0]
d03e0b78:	0858      	lsrs	r0, r3, #1
d03e0b7a:	f600 30b8 	addw	r0, r0, #3000	; 0xbb8
d03e0b7e:	4298      	cmp	r0, r3
d03e0b80:	bf2c      	ite	cs
d03e0b82:	fbb0 f0f3 	udivcs	r0, r0, r3
d03e0b86:	2001      	movcc	r0, #1
d03e0b88:	4770      	bx	lr
d03e0b8a:	bf00      	nop
d03e0b8c:	d03ea3ac 	.word	0xd03ea3ac

d03e0b90 <midi_channel_active_count>:
d03e0b90:	2200      	movs	r2, #0
d03e0b92:	4908      	ldr	r1, [pc, #32]	; (d03e0bb4 <midi_channel_active_count+0x24>)
d03e0b94:	b510      	push	{r4, lr}
d03e0b96:	4604      	mov	r4, r0
d03e0b98:	4610      	mov	r0, r2
d03e0b9a:	780b      	ldrb	r3, [r1, #0]
d03e0b9c:	b123      	cbz	r3, d03e0ba8 <midi_channel_active_count+0x18>
d03e0b9e:	784b      	ldrb	r3, [r1, #1]
d03e0ba0:	42a3      	cmp	r3, r4
d03e0ba2:	bf04      	itt	eq
d03e0ba4:	1c43      	addeq	r3, r0, #1
d03e0ba6:	b2d8      	uxtbeq	r0, r3
d03e0ba8:	3201      	adds	r2, #1
d03e0baa:	3108      	adds	r1, #8
d03e0bac:	2a06      	cmp	r2, #6
d03e0bae:	d1f4      	bne.n	d03e0b9a <midi_channel_active_count+0xa>
d03e0bb0:	bd10      	pop	{r4, pc}
d03e0bb2:	bf00      	nop
d03e0bb4:	d03eb49c 	.word	0xd03eb49c

d03e0bb8 <ui_box>:
d03e0bb8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e0bbc:	4c27      	ldr	r4, [pc, #156]	; (d03e0c5c <ui_box+0xa4>)
d03e0bbe:	4690      	mov	r8, r2
d03e0bc0:	4699      	mov	r9, r3
d03e0bc2:	4606      	mov	r6, r0
d03e0bc4:	7b23      	ldrb	r3, [r4, #12]
d03e0bc6:	460f      	mov	r7, r1
d03e0bc8:	7b62      	ldrb	r2, [r4, #13]
d03e0bca:	f89d 0020 	ldrb.w	r0, [sp, #32]
d03e0bce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0bd2:	7ba2      	ldrb	r2, [r4, #14]
d03e0bd4:	f89d 5024 	ldrb.w	r5, [sp, #36]	; 0x24
d03e0bd8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0bdc:	7be2      	ldrb	r2, [r4, #15]
d03e0bde:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0be2:	685b      	ldr	r3, [r3, #4]
d03e0be4:	68db      	ldr	r3, [r3, #12]
d03e0be6:	4798      	blx	r3
d03e0be8:	7b23      	ldrb	r3, [r4, #12]
d03e0bea:	7b62      	ldrb	r2, [r4, #13]
d03e0bec:	4639      	mov	r1, r7
d03e0bee:	4630      	mov	r0, r6
d03e0bf0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0bf4:	7ba2      	ldrb	r2, [r4, #14]
d03e0bf6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0bfa:	7be2      	ldrb	r2, [r4, #15]
d03e0bfc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0c00:	4642      	mov	r2, r8
d03e0c02:	685b      	ldr	r3, [r3, #4]
d03e0c04:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03e0c08:	464b      	mov	r3, r9
d03e0c0a:	47d0      	blx	sl
d03e0c0c:	7b23      	ldrb	r3, [r4, #12]
d03e0c0e:	7b62      	ldrb	r2, [r4, #13]
d03e0c10:	4628      	mov	r0, r5
d03e0c12:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0c16:	7ba2      	ldrb	r2, [r4, #14]
d03e0c18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0c1c:	7be2      	ldrb	r2, [r4, #15]
d03e0c1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0c22:	685b      	ldr	r3, [r3, #4]
d03e0c24:	68db      	ldr	r3, [r3, #12]
d03e0c26:	4798      	blx	r3
d03e0c28:	7b25      	ldrb	r5, [r4, #12]
d03e0c2a:	7b63      	ldrb	r3, [r4, #13]
d03e0c2c:	f1a8 0202 	sub.w	r2, r8, #2
d03e0c30:	1c79      	adds	r1, r7, #1
d03e0c32:	1c70      	adds	r0, r6, #1
d03e0c34:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03e0c38:	7ba3      	ldrb	r3, [r4, #14]
d03e0c3a:	7be4      	ldrb	r4, [r4, #15]
d03e0c3c:	b212      	sxth	r2, r2
d03e0c3e:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
d03e0c42:	f1a9 0302 	sub.w	r3, r9, #2
d03e0c46:	b209      	sxth	r1, r1
d03e0c48:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d03e0c4c:	b21b      	sxth	r3, r3
d03e0c4e:	6864      	ldr	r4, [r4, #4]
d03e0c50:	b200      	sxth	r0, r0
d03e0c52:	6864      	ldr	r4, [r4, #4]
d03e0c54:	46a4      	mov	ip, r4
d03e0c56:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e0c5a:	4760      	bx	ip
d03e0c5c:	2001f000 	.word	0x2001f000

d03e0c60 <ui_panel>:
d03e0c60:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03e0c64:	f04f 0e1f 	mov.w	lr, #31
d03e0c68:	241a      	movs	r4, #26
d03e0c6a:	460e      	mov	r6, r1
d03e0c6c:	4690      	mov	r8, r2
d03e0c6e:	4605      	mov	r5, r0
d03e0c70:	9f08      	ldr	r7, [sp, #32]
d03e0c72:	b2b6      	uxth	r6, r6
d03e0c74:	b2ad      	uxth	r5, r5
d03e0c76:	e9cd 4e00 	strd	r4, lr, [sp]
d03e0c7a:	4c25      	ldr	r4, [pc, #148]	; (d03e0d10 <ui_panel+0xb0>)
d03e0c7c:	f7ff ff9c 	bl	d03e0bb8 <ui_box>
d03e0c80:	2014      	movs	r0, #20
d03e0c82:	7b23      	ldrb	r3, [r4, #12]
d03e0c84:	7b62      	ldrb	r2, [r4, #13]
d03e0c86:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0c8a:	7ba2      	ldrb	r2, [r4, #14]
d03e0c8c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0c90:	7be2      	ldrb	r2, [r4, #15]
d03e0c92:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0c96:	685b      	ldr	r3, [r3, #4]
d03e0c98:	68db      	ldr	r3, [r3, #12]
d03e0c9a:	4798      	blx	r3
d03e0c9c:	7b23      	ldrb	r3, [r4, #12]
d03e0c9e:	7b62      	ldrb	r2, [r4, #13]
d03e0ca0:	1c71      	adds	r1, r6, #1
d03e0ca2:	1c68      	adds	r0, r5, #1
d03e0ca4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0ca8:	7ba2      	ldrb	r2, [r4, #14]
d03e0caa:	b209      	sxth	r1, r1
d03e0cac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0cb0:	7be2      	ldrb	r2, [r4, #15]
d03e0cb2:	b200      	sxth	r0, r0
d03e0cb4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0cb8:	f1a8 0202 	sub.w	r2, r8, #2
d03e0cbc:	685b      	ldr	r3, [r3, #4]
d03e0cbe:	b212      	sxth	r2, r2
d03e0cc0:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e0cc4:	2314      	movs	r3, #20
d03e0cc6:	47c0      	blx	r8
d03e0cc8:	7b23      	ldrb	r3, [r4, #12]
d03e0cca:	7b62      	ldrb	r2, [r4, #13]
d03e0ccc:	201e      	movs	r0, #30
d03e0cce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0cd2:	7ba2      	ldrb	r2, [r4, #14]
d03e0cd4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0cd8:	7be2      	ldrb	r2, [r4, #15]
d03e0cda:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0cde:	685b      	ldr	r3, [r3, #4]
d03e0ce0:	68db      	ldr	r3, [r3, #12]
d03e0ce2:	4798      	blx	r3
d03e0ce4:	7b23      	ldrb	r3, [r4, #12]
d03e0ce6:	7b62      	ldrb	r2, [r4, #13]
d03e0ce8:	1d31      	adds	r1, r6, #4
d03e0cea:	f105 0008 	add.w	r0, r5, #8
d03e0cee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0cf2:	7ba2      	ldrb	r2, [r4, #14]
d03e0cf4:	b289      	uxth	r1, r1
d03e0cf6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0cfa:	7be2      	ldrb	r2, [r4, #15]
d03e0cfc:	b280      	uxth	r0, r0
d03e0cfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0d02:	463a      	mov	r2, r7
d03e0d04:	685b      	ldr	r3, [r3, #4]
d03e0d06:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e0d08:	b002      	add	sp, #8
d03e0d0a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e0d0e:	4718      	bx	r3
d03e0d10:	2001f000 	.word	0x2001f000

d03e0d14 <ui_value_bar>:
d03e0d14:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03e0d16:	1e97      	subs	r7, r2, #2
d03e0d18:	f8bd 4020 	ldrh.w	r4, [sp, #32]
d03e0d1c:	f04f 0c11 	mov.w	ip, #17
d03e0d20:	4605      	mov	r5, r0
d03e0d22:	437b      	muls	r3, r7
d03e0d24:	460e      	mov	r6, r1
d03e0d26:	fbb3 f7f4 	udiv	r7, r3, r4
d03e0d2a:	231a      	movs	r3, #26
d03e0d2c:	4c15      	ldr	r4, [pc, #84]	; (d03e0d84 <ui_value_bar+0x70>)
d03e0d2e:	e9cd 3c00 	strd	r3, ip, [sp]
d03e0d32:	230a      	movs	r3, #10
d03e0d34:	f7ff ff40 	bl	d03e0bb8 <ui_box>
d03e0d38:	7b23      	ldrb	r3, [r4, #12]
d03e0d3a:	7b62      	ldrb	r2, [r4, #13]
d03e0d3c:	201d      	movs	r0, #29
d03e0d3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0d42:	7ba2      	ldrb	r2, [r4, #14]
d03e0d44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0d48:	7be2      	ldrb	r2, [r4, #15]
d03e0d4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0d4e:	685b      	ldr	r3, [r3, #4]
d03e0d50:	68db      	ldr	r3, [r3, #12]
d03e0d52:	4798      	blx	r3
d03e0d54:	7b23      	ldrb	r3, [r4, #12]
d03e0d56:	7b62      	ldrb	r2, [r4, #13]
d03e0d58:	1c71      	adds	r1, r6, #1
d03e0d5a:	1c68      	adds	r0, r5, #1
d03e0d5c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0d60:	7ba2      	ldrb	r2, [r4, #14]
d03e0d62:	b209      	sxth	r1, r1
d03e0d64:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0d68:	7be2      	ldrb	r2, [r4, #15]
d03e0d6a:	b200      	sxth	r0, r0
d03e0d6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0d70:	b23a      	sxth	r2, r7
d03e0d72:	685b      	ldr	r3, [r3, #4]
d03e0d74:	685c      	ldr	r4, [r3, #4]
d03e0d76:	2308      	movs	r3, #8
d03e0d78:	46a4      	mov	ip, r4
d03e0d7a:	b003      	add	sp, #12
d03e0d7c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03e0d80:	4760      	bx	ip
d03e0d82:	bf00      	nop
d03e0d84:	2001f000 	.word	0x2001f000

d03e0d88 <vm_program_length>:
d03e0d88:	0603      	lsls	r3, r0, #24
d03e0d8a:	d40e      	bmi.n	d03e0daa <vm_program_length+0x22>
d03e0d8c:	4b08      	ldr	r3, [pc, #32]	; (d03e0db0 <vm_program_length+0x28>)
d03e0d8e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
d03e0d92:	b158      	cbz	r0, d03e0dac <vm_program_length+0x24>
d03e0d94:	2301      	movs	r3, #1
d03e0d96:	1f02      	subs	r2, r0, #4
d03e0d98:	f812 1023 	ldrb.w	r1, [r2, r3, lsl #2]
d03e0d9c:	b2d8      	uxtb	r0, r3
d03e0d9e:	b129      	cbz	r1, d03e0dac <vm_program_length+0x24>
d03e0da0:	3301      	adds	r3, #1
d03e0da2:	2b61      	cmp	r3, #97	; 0x61
d03e0da4:	d1f8      	bne.n	d03e0d98 <vm_program_length+0x10>
d03e0da6:	2060      	movs	r0, #96	; 0x60
d03e0da8:	4770      	bx	lr
d03e0daa:	2000      	movs	r0, #0
d03e0dac:	4770      	bx	lr
d03e0dae:	bf00      	nop
d03e0db0:	d03e9a7c 	.word	0xd03e9a7c

d03e0db4 <ui_clamp_vm_scroll>:
d03e0db4:	b508      	push	{r3, lr}
d03e0db6:	4b09      	ldr	r3, [pc, #36]	; (d03e0ddc <ui_clamp_vm_scroll+0x28>)
d03e0db8:	4a09      	ldr	r2, [pc, #36]	; (d03e0de0 <ui_clamp_vm_scroll+0x2c>)
d03e0dba:	781b      	ldrb	r3, [r3, #0]
d03e0dbc:	5cd0      	ldrb	r0, [r2, r3]
d03e0dbe:	f7ff ffe3 	bl	d03e0d88 <vm_program_length>
d03e0dc2:	2808      	cmp	r0, #8
d03e0dc4:	4b07      	ldr	r3, [pc, #28]	; (d03e0de4 <ui_clamp_vm_scroll+0x30>)
d03e0dc6:	bf8c      	ite	hi
d03e0dc8:	3808      	subhi	r0, #8
d03e0dca:	2000      	movls	r0, #0
d03e0dcc:	781a      	ldrb	r2, [r3, #0]
d03e0dce:	bf88      	it	hi
d03e0dd0:	b2c0      	uxtbhi	r0, r0
d03e0dd2:	4282      	cmp	r2, r0
d03e0dd4:	bf88      	it	hi
d03e0dd6:	7018      	strbhi	r0, [r3, #0]
d03e0dd8:	bd08      	pop	{r3, pc}
d03e0dda:	bf00      	nop
d03e0ddc:	d03ec2af 	.word	0xd03ec2af
d03e0de0:	d03ea164 	.word	0xd03ea164
d03e0de4:	d03ec469 	.word	0xd03ec469

d03e0de8 <ui_scroll_vm>:
d03e0de8:	b538      	push	{r3, r4, r5, lr}
d03e0dea:	4d0c      	ldr	r5, [pc, #48]	; (d03e0e1c <ui_scroll_vm+0x34>)
d03e0dec:	4a0c      	ldr	r2, [pc, #48]	; (d03e0e20 <ui_scroll_vm+0x38>)
d03e0dee:	782b      	ldrb	r3, [r5, #0]
d03e0df0:	181c      	adds	r4, r3, r0
d03e0df2:	4b0c      	ldr	r3, [pc, #48]	; (d03e0e24 <ui_scroll_vm+0x3c>)
d03e0df4:	781b      	ldrb	r3, [r3, #0]
d03e0df6:	5cd0      	ldrb	r0, [r2, r3]
d03e0df8:	f7ff ffc6 	bl	d03e0d88 <vm_program_length>
d03e0dfc:	2808      	cmp	r0, #8
d03e0dfe:	bf8a      	itet	hi
d03e0e00:	f1a0 0308 	subhi.w	r3, r0, #8
d03e0e04:	2300      	movls	r3, #0
d03e0e06:	b2db      	uxtbhi	r3, r3
d03e0e08:	1c62      	adds	r2, r4, #1
d03e0e0a:	d004      	beq.n	d03e0e16 <ui_scroll_vm+0x2e>
d03e0e0c:	429c      	cmp	r4, r3
d03e0e0e:	dd00      	ble.n	d03e0e12 <ui_scroll_vm+0x2a>
d03e0e10:	b21c      	sxth	r4, r3
d03e0e12:	702c      	strb	r4, [r5, #0]
d03e0e14:	bd38      	pop	{r3, r4, r5, pc}
d03e0e16:	2400      	movs	r4, #0
d03e0e18:	e7fb      	b.n	d03e0e12 <ui_scroll_vm+0x2a>
d03e0e1a:	bf00      	nop
d03e0e1c:	d03ec469 	.word	0xd03ec469
d03e0e20:	d03ea164 	.word	0xd03ea164
d03e0e24:	d03ec2af 	.word	0xd03ec2af

d03e0e28 <ui_vm_editor_field_delta>:
d03e0e28:	4a09      	ldr	r2, [pc, #36]	; (d03e0e50 <ui_vm_editor_field_delta+0x28>)
d03e0e2a:	7813      	ldrb	r3, [r2, #0]
d03e0e2c:	4418      	add	r0, r3
d03e0e2e:	b240      	sxtb	r0, r0
d03e0e30:	2800      	cmp	r0, #0
d03e0e32:	db0a      	blt.n	d03e0e4a <ui_vm_editor_field_delta+0x22>
d03e0e34:	2803      	cmp	r0, #3
d03e0e36:	bfa8      	it	ge
d03e0e38:	2000      	movge	r0, #0
d03e0e3a:	4b06      	ldr	r3, [pc, #24]	; (d03e0e54 <ui_vm_editor_field_delta+0x2c>)
d03e0e3c:	7010      	strb	r0, [r2, #0]
d03e0e3e:	2200      	movs	r2, #0
d03e0e40:	701a      	strb	r2, [r3, #0]
d03e0e42:	2201      	movs	r2, #1
d03e0e44:	4b04      	ldr	r3, [pc, #16]	; (d03e0e58 <ui_vm_editor_field_delta+0x30>)
d03e0e46:	701a      	strb	r2, [r3, #0]
d03e0e48:	4770      	bx	lr
d03e0e4a:	2002      	movs	r0, #2
d03e0e4c:	e7f5      	b.n	d03e0e3a <ui_vm_editor_field_delta+0x12>
d03e0e4e:	bf00      	nop
d03e0e50:	d03ec45a 	.word	0xd03ec45a
d03e0e54:	d03ec463 	.word	0xd03ec463
d03e0e58:	d03ec462 	.word	0xd03ec462

d03e0e5c <ui_draw_cursor>:
d03e0e5c:	4b58      	ldr	r3, [pc, #352]	; (d03e0fc0 <ui_draw_cursor+0x164>)
d03e0e5e:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03e0e62:	f9b3 5000 	ldrsh.w	r5, [r3]
d03e0e66:	201a      	movs	r0, #26
d03e0e68:	4b56      	ldr	r3, [pc, #344]	; (d03e0fc4 <ui_draw_cursor+0x168>)
d03e0e6a:	4c57      	ldr	r4, [pc, #348]	; (d03e0fc8 <ui_draw_cursor+0x16c>)
d03e0e6c:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d03e0e70:	f9b3 6000 	ldrsh.w	r6, [r3]
d03e0e74:	4b55      	ldr	r3, [pc, #340]	; (d03e0fcc <ui_draw_cursor+0x170>)
d03e0e76:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d03e0e7a:	781b      	ldrb	r3, [r3, #0]
d03e0e7c:	2b00      	cmp	r3, #0
d03e0e7e:	7b23      	ldrb	r3, [r4, #12]
d03e0e80:	7b62      	ldrb	r2, [r4, #13]
d03e0e82:	bf14      	ite	ne
d03e0e84:	271e      	movne	r7, #30
d03e0e86:	2718      	moveq	r7, #24
d03e0e88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0e8c:	7ba2      	ldrb	r2, [r4, #14]
d03e0e8e:	f5b5 7fec 	cmp.w	r5, #472	; 0x1d8
d03e0e92:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0e96:	7be2      	ldrb	r2, [r4, #15]
d03e0e98:	bfa8      	it	ge
d03e0e9a:	f44f 75ec 	movge.w	r5, #472	; 0x1d8
d03e0e9e:	f5b6 7f9b 	cmp.w	r6, #310	; 0x136
d03e0ea2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0ea6:	bfa8      	it	ge
d03e0ea8:	f44f 769b 	movge.w	r6, #310	; 0x136
d03e0eac:	685b      	ldr	r3, [r3, #4]
d03e0eae:	68db      	ldr	r3, [r3, #12]
d03e0eb0:	4798      	blx	r3
d03e0eb2:	7b23      	ldrb	r3, [r4, #12]
d03e0eb4:	7b62      	ldrb	r2, [r4, #13]
d03e0eb6:	4631      	mov	r1, r6
d03e0eb8:	4628      	mov	r0, r5
d03e0eba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0ebe:	7ba2      	ldrb	r2, [r4, #14]
d03e0ec0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0ec4:	7be2      	ldrb	r2, [r4, #15]
d03e0ec6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0eca:	2202      	movs	r2, #2
d03e0ecc:	685b      	ldr	r3, [r3, #4]
d03e0ece:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e0ed2:	230a      	movs	r3, #10
d03e0ed4:	47c0      	blx	r8
d03e0ed6:	7b23      	ldrb	r3, [r4, #12]
d03e0ed8:	7b62      	ldrb	r2, [r4, #13]
d03e0eda:	4631      	mov	r1, r6
d03e0edc:	4628      	mov	r0, r5
d03e0ede:	b2b6      	uxth	r6, r6
d03e0ee0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0ee4:	7ba2      	ldrb	r2, [r4, #14]
d03e0ee6:	b2ad      	uxth	r5, r5
d03e0ee8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0eec:	7be2      	ldrb	r2, [r4, #15]
d03e0eee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0ef2:	2208      	movs	r2, #8
d03e0ef4:	685b      	ldr	r3, [r3, #4]
d03e0ef6:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e0efa:	2302      	movs	r3, #2
d03e0efc:	47c0      	blx	r8
d03e0efe:	7b23      	ldrb	r3, [r4, #12]
d03e0f00:	7b62      	ldrb	r2, [r4, #13]
d03e0f02:	f106 0108 	add.w	r1, r6, #8
d03e0f06:	1ca8      	adds	r0, r5, #2
d03e0f08:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0f0c:	7ba2      	ldrb	r2, [r4, #14]
d03e0f0e:	b209      	sxth	r1, r1
d03e0f10:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0f14:	7be2      	ldrb	r2, [r4, #15]
d03e0f16:	b200      	sxth	r0, r0
d03e0f18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0f1c:	2204      	movs	r2, #4
d03e0f1e:	685b      	ldr	r3, [r3, #4]
d03e0f20:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e0f24:	2302      	movs	r3, #2
d03e0f26:	47c0      	blx	r8
d03e0f28:	7b23      	ldrb	r3, [r4, #12]
d03e0f2a:	7b62      	ldrb	r2, [r4, #13]
d03e0f2c:	4638      	mov	r0, r7
d03e0f2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0f32:	7ba2      	ldrb	r2, [r4, #14]
d03e0f34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0f38:	7be2      	ldrb	r2, [r4, #15]
d03e0f3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0f3e:	685b      	ldr	r3, [r3, #4]
d03e0f40:	68db      	ldr	r3, [r3, #12]
d03e0f42:	4798      	blx	r3
d03e0f44:	7b23      	ldrb	r3, [r4, #12]
d03e0f46:	7b62      	ldrb	r2, [r4, #13]
d03e0f48:	1c68      	adds	r0, r5, #1
d03e0f4a:	1c71      	adds	r1, r6, #1
d03e0f4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0f50:	7ba2      	ldrb	r2, [r4, #14]
d03e0f52:	b200      	sxth	r0, r0
d03e0f54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0f58:	7be2      	ldrb	r2, [r4, #15]
d03e0f5a:	b209      	sxth	r1, r1
d03e0f5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0f60:	2201      	movs	r2, #1
d03e0f62:	685b      	ldr	r3, [r3, #4]
d03e0f64:	685f      	ldr	r7, [r3, #4]
d03e0f66:	2308      	movs	r3, #8
d03e0f68:	e9cd 0100 	strd	r0, r1, [sp]
d03e0f6c:	47b8      	blx	r7
d03e0f6e:	7b23      	ldrb	r3, [r4, #12]
d03e0f70:	7b62      	ldrb	r2, [r4, #13]
d03e0f72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0f76:	7ba2      	ldrb	r2, [r4, #14]
d03e0f78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0f7c:	7be2      	ldrb	r2, [r4, #15]
d03e0f7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0f82:	2206      	movs	r2, #6
d03e0f84:	685b      	ldr	r3, [r3, #4]
d03e0f86:	e9dd 0100 	ldrd	r0, r1, [sp]
d03e0f8a:	685f      	ldr	r7, [r3, #4]
d03e0f8c:	2301      	movs	r3, #1
d03e0f8e:	47b8      	blx	r7
d03e0f90:	7b23      	ldrb	r3, [r4, #12]
d03e0f92:	7b62      	ldrb	r2, [r4, #13]
d03e0f94:	1df1      	adds	r1, r6, #7
d03e0f96:	1ce8      	adds	r0, r5, #3
d03e0f98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0f9c:	7ba2      	ldrb	r2, [r4, #14]
d03e0f9e:	b209      	sxth	r1, r1
d03e0fa0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e0fa4:	7be2      	ldrb	r2, [r4, #15]
d03e0fa6:	b200      	sxth	r0, r0
d03e0fa8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0fac:	2203      	movs	r2, #3
d03e0fae:	685b      	ldr	r3, [r3, #4]
d03e0fb0:	685c      	ldr	r4, [r3, #4]
d03e0fb2:	2301      	movs	r3, #1
d03e0fb4:	46a4      	mov	ip, r4
d03e0fb6:	b002      	add	sp, #8
d03e0fb8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e0fbc:	4760      	bx	ip
d03e0fbe:	bf00      	nop
d03e0fc0:	d03ec276 	.word	0xd03ec276
d03e0fc4:	d03ec278 	.word	0xd03ec278
d03e0fc8:	2001f000 	.word	0x2001f000
d03e0fcc:	d03ec211 	.word	0xd03ec211

d03e0fd0 <ui_hash_step>:
d03e0fd0:	4b03      	ldr	r3, [pc, #12]	; (d03e0fe0 <ui_hash_step+0x10>)
d03e0fd2:	440b      	add	r3, r1
d03e0fd4:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d03e0fd8:	eb03 0390 	add.w	r3, r3, r0, lsr #2
d03e0fdc:	4058      	eors	r0, r3
d03e0fde:	4770      	bx	lr
d03e0fe0:	9e3779b9 	.word	0x9e3779b9

d03e0fe4 <ui_vm_editor_clear_ram_patch>:
d03e0fe4:	4b0f      	ldr	r3, [pc, #60]	; (d03e1024 <ui_vm_editor_clear_ram_patch+0x40>)
d03e0fe6:	4810      	ldr	r0, [pc, #64]	; (d03e1028 <ui_vm_editor_clear_ram_patch+0x44>)
d03e0fe8:	b430      	push	{r4, r5}
d03e0fea:	781a      	ldrb	r2, [r3, #0]
d03e0fec:	2aff      	cmp	r2, #255	; 0xff
d03e0fee:	d008      	beq.n	d03e1002 <ui_vm_editor_clear_ram_patch+0x1e>
d03e0ff0:	490e      	ldr	r1, [pc, #56]	; (d03e102c <ui_vm_editor_clear_ram_patch+0x48>)
d03e0ff2:	4c0f      	ldr	r4, [pc, #60]	; (d03e1030 <ui_vm_editor_clear_ram_patch+0x4c>)
d03e0ff4:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
d03e0ff8:	42a5      	cmp	r5, r4
d03e0ffa:	bf04      	itt	eq
d03e0ffc:	6804      	ldreq	r4, [r0, #0]
d03e0ffe:	f841 4022 	streq.w	r4, [r1, r2, lsl #2]
d03e1002:	2100      	movs	r1, #0
d03e1004:	4a0b      	ldr	r2, [pc, #44]	; (d03e1034 <ui_vm_editor_clear_ram_patch+0x50>)
d03e1006:	7011      	strb	r1, [r2, #0]
d03e1008:	22ff      	movs	r2, #255	; 0xff
d03e100a:	6001      	str	r1, [r0, #0]
d03e100c:	701a      	strb	r2, [r3, #0]
d03e100e:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e1012:	4b09      	ldr	r3, [pc, #36]	; (d03e1038 <ui_vm_editor_clear_ram_patch+0x54>)
d03e1014:	4806      	ldr	r0, [pc, #24]	; (d03e1030 <ui_vm_editor_clear_ram_patch+0x4c>)
d03e1016:	7019      	strb	r1, [r3, #0]
d03e1018:	4b08      	ldr	r3, [pc, #32]	; (d03e103c <ui_vm_editor_clear_ram_patch+0x58>)
d03e101a:	7019      	strb	r1, [r3, #0]
d03e101c:	bc30      	pop	{r4, r5}
d03e101e:	f006 b9dd 	b.w	d03e73dc <memset>
d03e1022:	bf00      	nop
d03e1024:	d03ec460 	.word	0xd03ec460
d03e1028:	d03ec45c 	.word	0xd03ec45c
d03e102c:	d03e9a7c 	.word	0xd03e9a7c
d03e1030:	d03ec2da 	.word	0xd03ec2da
d03e1034:	d03ec45b 	.word	0xd03ec45b
d03e1038:	d03ec461 	.word	0xd03ec461
d03e103c:	d03ec45a 	.word	0xd03ec45a

d03e1040 <sid_midi_all_notes_off_event>:
d03e1040:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e1044:	2500      	movs	r5, #0
d03e1046:	4606      	mov	r6, r0
d03e1048:	4c0c      	ldr	r4, [pc, #48]	; (d03e107c <sid_midi_all_notes_off_event+0x3c>)
d03e104a:	462f      	mov	r7, r5
d03e104c:	f8df 8030 	ldr.w	r8, [pc, #48]	; d03e1080 <sid_midi_all_notes_off_event+0x40>
d03e1050:	7823      	ldrb	r3, [r4, #0]
d03e1052:	b2e8      	uxtb	r0, r5
d03e1054:	b163      	cbz	r3, d03e1070 <sid_midi_all_notes_off_event+0x30>
d03e1056:	7863      	ldrb	r3, [r4, #1]
d03e1058:	42b3      	cmp	r3, r6
d03e105a:	d109      	bne.n	d03e1070 <sid_midi_all_notes_off_event+0x30>
d03e105c:	f7ff fa10 	bl	d03e0480 <sid_voice_note_off>
d03e1060:	f8d8 3000 	ldr.w	r3, [r8]
d03e1064:	7027      	strb	r7, [r4, #0]
d03e1066:	3301      	adds	r3, #1
d03e1068:	7167      	strb	r7, [r4, #5]
d03e106a:	80e7      	strh	r7, [r4, #6]
d03e106c:	f8c8 3000 	str.w	r3, [r8]
d03e1070:	3501      	adds	r5, #1
d03e1072:	3408      	adds	r4, #8
d03e1074:	2d06      	cmp	r5, #6
d03e1076:	d1eb      	bne.n	d03e1050 <sid_midi_all_notes_off_event+0x10>
d03e1078:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e107c:	d03eb49c 	.word	0xd03eb49c
d03e1080:	d03ea398 	.word	0xd03ea398

d03e1084 <midi_process_ui_requests>:
d03e1084:	b538      	push	{r3, r4, r5, lr}
d03e1086:	4b09      	ldr	r3, [pc, #36]	; (d03e10ac <midi_process_ui_requests+0x28>)
d03e1088:	681d      	ldr	r5, [r3, #0]
d03e108a:	b175      	cbz	r5, d03e10aa <midi_process_ui_requests+0x26>
d03e108c:	681a      	ldr	r2, [r3, #0]
d03e108e:	2400      	movs	r4, #0
d03e1090:	ea22 0205 	bic.w	r2, r2, r5
d03e1094:	601a      	str	r2, [r3, #0]
d03e1096:	fa25 f304 	lsr.w	r3, r5, r4
d03e109a:	b2e0      	uxtb	r0, r4
d03e109c:	07db      	lsls	r3, r3, #31
d03e109e:	d501      	bpl.n	d03e10a4 <midi_process_ui_requests+0x20>
d03e10a0:	f7ff ffce 	bl	d03e1040 <sid_midi_all_notes_off_event>
d03e10a4:	3401      	adds	r4, #1
d03e10a6:	2c10      	cmp	r4, #16
d03e10a8:	d1f5      	bne.n	d03e1096 <midi_process_ui_requests+0x12>
d03e10aa:	bd38      	pop	{r3, r4, r5, pc}
d03e10ac:	d03eb4d0 	.word	0xd03eb4d0

d03e10b0 <sid_midi_all_notes_off_source>:
d03e10b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e10b4:	2500      	movs	r5, #0
d03e10b6:	4606      	mov	r6, r0
d03e10b8:	4c0e      	ldr	r4, [pc, #56]	; (d03e10f4 <sid_midi_all_notes_off_source+0x44>)
d03e10ba:	462f      	mov	r7, r5
d03e10bc:	f8df 8038 	ldr.w	r8, [pc, #56]	; d03e10f8 <sid_midi_all_notes_off_source+0x48>
d03e10c0:	7823      	ldrb	r3, [r4, #0]
d03e10c2:	b2e8      	uxtb	r0, r5
d03e10c4:	b183      	cbz	r3, d03e10e8 <sid_midi_all_notes_off_source+0x38>
d03e10c6:	7963      	ldrb	r3, [r4, #5]
d03e10c8:	42b3      	cmp	r3, r6
d03e10ca:	d10d      	bne.n	d03e10e8 <sid_midi_all_notes_off_source+0x38>
d03e10cc:	f7ff f9d8 	bl	d03e0480 <sid_voice_note_off>
d03e10d0:	2e02      	cmp	r6, #2
d03e10d2:	7027      	strb	r7, [r4, #0]
d03e10d4:	bf18      	it	ne
d03e10d6:	f8d8 3000 	ldrne.w	r3, [r8]
d03e10da:	7167      	strb	r7, [r4, #5]
d03e10dc:	bf18      	it	ne
d03e10de:	3301      	addne	r3, #1
d03e10e0:	80e7      	strh	r7, [r4, #6]
d03e10e2:	bf18      	it	ne
d03e10e4:	f8c8 3000 	strne.w	r3, [r8]
d03e10e8:	3501      	adds	r5, #1
d03e10ea:	3408      	adds	r4, #8
d03e10ec:	2d06      	cmp	r5, #6
d03e10ee:	d1e7      	bne.n	d03e10c0 <sid_midi_all_notes_off_source+0x10>
d03e10f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e10f4:	d03eb49c 	.word	0xd03eb49c
d03e10f8:	d03ea398 	.word	0xd03ea398

d03e10fc <midi_update_active_channel_volume>:
d03e10fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e10fe:	4606      	mov	r6, r0
d03e1100:	4c0a      	ldr	r4, [pc, #40]	; (d03e112c <midi_update_active_channel_volume+0x30>)
d03e1102:	2500      	movs	r5, #0
d03e1104:	7823      	ldrb	r3, [r4, #0]
d03e1106:	b2ef      	uxtb	r7, r5
d03e1108:	b153      	cbz	r3, d03e1120 <midi_update_active_channel_volume+0x24>
d03e110a:	7863      	ldrb	r3, [r4, #1]
d03e110c:	42b3      	cmp	r3, r6
d03e110e:	d107      	bne.n	d03e1120 <midi_update_active_channel_volume+0x24>
d03e1110:	78e1      	ldrb	r1, [r4, #3]
d03e1112:	4630      	mov	r0, r6
d03e1114:	f7ff fcec 	bl	d03e0af0 <midi_effective_velocity>
d03e1118:	4601      	mov	r1, r0
d03e111a:	4638      	mov	r0, r7
d03e111c:	f7ff fa50 	bl	d03e05c0 <sid_voice_set_velocity>
d03e1120:	3501      	adds	r5, #1
d03e1122:	3408      	adds	r4, #8
d03e1124:	2d06      	cmp	r5, #6
d03e1126:	d1ed      	bne.n	d03e1104 <midi_update_active_channel_volume+0x8>
d03e1128:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e112a:	bf00      	nop
d03e112c:	d03eb49c 	.word	0xd03eb49c

d03e1130 <midi_update_all_active_volume>:
d03e1130:	b570      	push	{r4, r5, r6, lr}
d03e1132:	4c09      	ldr	r4, [pc, #36]	; (d03e1158 <midi_update_all_active_volume+0x28>)
d03e1134:	2500      	movs	r5, #0
d03e1136:	7823      	ldrb	r3, [r4, #0]
d03e1138:	b2ee      	uxtb	r6, r5
d03e113a:	b13b      	cbz	r3, d03e114c <midi_update_all_active_volume+0x1c>
d03e113c:	78e1      	ldrb	r1, [r4, #3]
d03e113e:	7860      	ldrb	r0, [r4, #1]
d03e1140:	f7ff fcd6 	bl	d03e0af0 <midi_effective_velocity>
d03e1144:	4601      	mov	r1, r0
d03e1146:	4630      	mov	r0, r6
d03e1148:	f7ff fa3a 	bl	d03e05c0 <sid_voice_set_velocity>
d03e114c:	3501      	adds	r5, #1
d03e114e:	3408      	adds	r4, #8
d03e1150:	2d06      	cmp	r5, #6
d03e1152:	d1f0      	bne.n	d03e1136 <midi_update_all_active_volume+0x6>
d03e1154:	bd70      	pop	{r4, r5, r6, pc}
d03e1156:	bf00      	nop
d03e1158:	d03eb49c 	.word	0xd03eb49c

d03e115c <midi_set_global_gain>:
d03e115c:	f5b0 7f96 	cmp.w	r0, #300	; 0x12c
d03e1160:	4b04      	ldr	r3, [pc, #16]	; (d03e1174 <midi_set_global_gain+0x18>)
d03e1162:	bfa8      	it	ge
d03e1164:	f44f 7096 	movge.w	r0, #300	; 0x12c
d03e1168:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03e116c:	8018      	strh	r0, [r3, #0]
d03e116e:	f7ff bfdf 	b.w	d03e1130 <midi_update_all_active_volume>
d03e1172:	bf00      	nop
d03e1174:	d03ea38e 	.word	0xd03ea38e

d03e1178 <ui_set_status>:
d03e1178:	4a05      	ldr	r2, [pc, #20]	; (d03e1190 <ui_set_status+0x18>)
d03e117a:	2128      	movs	r1, #40	; 0x28
d03e117c:	b508      	push	{r3, lr}
d03e117e:	4603      	mov	r3, r0
d03e1180:	4804      	ldr	r0, [pc, #16]	; (d03e1194 <ui_set_status+0x1c>)
d03e1182:	f006 faab 	bl	d03e76dc <sniprintf>
d03e1186:	4b04      	ldr	r3, [pc, #16]	; (d03e1198 <ui_set_status+0x20>)
d03e1188:	225a      	movs	r2, #90	; 0x5a
d03e118a:	701a      	strb	r2, [r3, #0]
d03e118c:	bd08      	pop	{r3, pc}
d03e118e:	bf00      	nop
d03e1190:	d03e8f77 	.word	0xd03e8f77
d03e1194:	d03ec2b0 	.word	0xd03ec2b0
d03e1198:	d03ec2d8 	.word	0xd03ec2d8

d03e119c <ui_name_has_ext>:
d03e119c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e119e:	460c      	mov	r4, r1
d03e11a0:	4606      	mov	r6, r0
d03e11a2:	f006 fae1 	bl	d03e7768 <strlen>
d03e11a6:	4605      	mov	r5, r0
d03e11a8:	4620      	mov	r0, r4
d03e11aa:	f006 fadd 	bl	d03e7768 <strlen>
d03e11ae:	b2ea      	uxtb	r2, r5
d03e11b0:	b2c3      	uxtb	r3, r0
d03e11b2:	429a      	cmp	r2, r3
d03e11b4:	d319      	bcc.n	d03e11ea <ui_name_has_ext+0x4e>
d03e11b6:	1ad3      	subs	r3, r2, r3
d03e11b8:	3c01      	subs	r4, #1
d03e11ba:	4432      	add	r2, r6
d03e11bc:	4433      	add	r3, r6
d03e11be:	4293      	cmp	r3, r2
d03e11c0:	d101      	bne.n	d03e11c6 <ui_name_has_ext+0x2a>
d03e11c2:	2001      	movs	r0, #1
d03e11c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e11c6:	f813 7b01 	ldrb.w	r7, [r3], #1
d03e11ca:	f814 5f01 	ldrb.w	r5, [r4, #1]!
d03e11ce:	f1a7 0141 	sub.w	r1, r7, #65	; 0x41
d03e11d2:	2919      	cmp	r1, #25
d03e11d4:	f1a5 0141 	sub.w	r1, r5, #65	; 0x41
d03e11d8:	bf9c      	itt	ls
d03e11da:	3720      	addls	r7, #32
d03e11dc:	b2ff      	uxtbls	r7, r7
d03e11de:	2919      	cmp	r1, #25
d03e11e0:	bf9c      	itt	ls
d03e11e2:	3520      	addls	r5, #32
d03e11e4:	b2ed      	uxtbls	r5, r5
d03e11e6:	42af      	cmp	r7, r5
d03e11e8:	d0e9      	beq.n	d03e11be <ui_name_has_ext+0x22>
d03e11ea:	2000      	movs	r0, #0
d03e11ec:	e7ea      	b.n	d03e11c4 <ui_name_has_ext+0x28>
	...

d03e11f0 <ui_file_kind_from_name>:
d03e11f0:	b510      	push	{r4, lr}
d03e11f2:	4907      	ldr	r1, [pc, #28]	; (d03e1210 <ui_file_kind_from_name+0x20>)
d03e11f4:	4604      	mov	r4, r0
d03e11f6:	f7ff ffd1 	bl	d03e119c <ui_name_has_ext>
d03e11fa:	b938      	cbnz	r0, d03e120c <ui_file_kind_from_name+0x1c>
d03e11fc:	4905      	ldr	r1, [pc, #20]	; (d03e1214 <ui_file_kind_from_name+0x24>)
d03e11fe:	4620      	mov	r0, r4
d03e1200:	f7ff ffcc 	bl	d03e119c <ui_name_has_ext>
d03e1204:	3800      	subs	r0, #0
d03e1206:	bf18      	it	ne
d03e1208:	2001      	movne	r0, #1
d03e120a:	bd10      	pop	{r4, pc}
d03e120c:	2002      	movs	r0, #2
d03e120e:	e7fc      	b.n	d03e120a <ui_file_kind_from_name+0x1a>
d03e1210:	d03e8a5c 	.word	0xd03e8a5c
d03e1214:	d03e8a61 	.word	0xd03e8a61

d03e1218 <ui_keyboard_move_caret>:
d03e1218:	b538      	push	{r3, r4, r5, lr}
d03e121a:	4d0a      	ldr	r5, [pc, #40]	; (d03e1244 <ui_keyboard_move_caret+0x2c>)
d03e121c:	782b      	ldrb	r3, [r5, #0]
d03e121e:	181c      	adds	r4, r3, r0
d03e1220:	4809      	ldr	r0, [pc, #36]	; (d03e1248 <ui_keyboard_move_caret+0x30>)
d03e1222:	f006 faa1 	bl	d03e7768 <strlen>
d03e1226:	1c63      	adds	r3, r4, #1
d03e1228:	d00a      	beq.n	d03e1240 <ui_keyboard_move_caret+0x28>
d03e122a:	4284      	cmp	r4, r0
d03e122c:	dd00      	ble.n	d03e1230 <ui_keyboard_move_caret+0x18>
d03e122e:	b204      	sxth	r4, r0
d03e1230:	4b06      	ldr	r3, [pc, #24]	; (d03e124c <ui_keyboard_move_caret+0x34>)
d03e1232:	2200      	movs	r2, #0
d03e1234:	702c      	strb	r4, [r5, #0]
d03e1236:	701a      	strb	r2, [r3, #0]
d03e1238:	2201      	movs	r2, #1
d03e123a:	4b05      	ldr	r3, [pc, #20]	; (d03e1250 <ui_keyboard_move_caret+0x38>)
d03e123c:	701a      	strb	r2, [r3, #0]
d03e123e:	bd38      	pop	{r3, r4, r5, pc}
d03e1240:	2400      	movs	r4, #0
d03e1242:	e7f5      	b.n	d03e1230 <ui_keyboard_move_caret+0x18>
d03e1244:	d03ec28d 	.word	0xd03ec28d
d03e1248:	d03ec28f 	.word	0xd03ec28f
d03e124c:	d03ec463 	.word	0xd03ec463
d03e1250:	d03ec462 	.word	0xd03ec462

d03e1254 <ui_file_refresh>:
d03e1254:	2100      	movs	r1, #0
d03e1256:	4b49      	ldr	r3, [pc, #292]	; (d03e137c <ui_file_refresh+0x128>)
d03e1258:	f44f 6280 	mov.w	r2, #1024	; 0x400
d03e125c:	4848      	ldr	r0, [pc, #288]	; (d03e1380 <ui_file_refresh+0x12c>)
d03e125e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1262:	4c48      	ldr	r4, [pc, #288]	; (d03e1384 <ui_file_refresh+0x130>)
d03e1264:	b095      	sub	sp, #84	; 0x54
d03e1266:	7019      	strb	r1, [r3, #0]
d03e1268:	4d47      	ldr	r5, [pc, #284]	; (d03e1388 <ui_file_refresh+0x134>)
d03e126a:	4b48      	ldr	r3, [pc, #288]	; (d03e138c <ui_file_refresh+0x138>)
d03e126c:	7029      	strb	r1, [r5, #0]
d03e126e:	7019      	strb	r1, [r3, #0]
d03e1270:	e9cd 1102 	strd	r1, r1, [sp, #8]
d03e1274:	f006 f8b2 	bl	d03e73dc <memset>
d03e1278:	7923      	ldrb	r3, [r4, #4]
d03e127a:	7962      	ldrb	r2, [r4, #5]
d03e127c:	4844      	ldr	r0, [pc, #272]	; (d03e1390 <ui_file_refresh+0x13c>)
d03e127e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1282:	79a2      	ldrb	r2, [r4, #6]
d03e1284:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1288:	79e2      	ldrb	r2, [r4, #7]
d03e128a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e128e:	681b      	ldr	r3, [r3, #0]
d03e1290:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e1292:	4798      	blx	r3
d03e1294:	4606      	mov	r6, r0
d03e1296:	2800      	cmp	r0, #0
d03e1298:	d03c      	beq.n	d03e1314 <ui_file_refresh+0xc0>
d03e129a:	4f39      	ldr	r7, [pc, #228]	; (d03e1380 <ui_file_refresh+0x12c>)
d03e129c:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d03e1398 <ui_file_refresh+0x144>
d03e12a0:	782b      	ldrb	r3, [r5, #0]
d03e12a2:	2b1f      	cmp	r3, #31
d03e12a4:	d815      	bhi.n	d03e12d2 <ui_file_refresh+0x7e>
d03e12a6:	7923      	ldrb	r3, [r4, #4]
d03e12a8:	a904      	add	r1, sp, #16
d03e12aa:	7962      	ldrb	r2, [r4, #5]
d03e12ac:	4630      	mov	r0, r6
d03e12ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e12b2:	79a2      	ldrb	r2, [r4, #6]
d03e12b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e12b8:	79e2      	ldrb	r2, [r4, #7]
d03e12ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e12be:	aa03      	add	r2, sp, #12
d03e12c0:	681b      	ldr	r3, [r3, #0]
d03e12c2:	9200      	str	r2, [sp, #0]
d03e12c4:	2220      	movs	r2, #32
d03e12c6:	f8d3 9030 	ldr.w	r9, [r3, #48]	; 0x30
d03e12ca:	ab02      	add	r3, sp, #8
d03e12cc:	47c8      	blx	r9
d03e12ce:	2800      	cmp	r0, #0
d03e12d0:	dc26      	bgt.n	d03e1320 <ui_file_refresh+0xcc>
d03e12d2:	7923      	ldrb	r3, [r4, #4]
d03e12d4:	4630      	mov	r0, r6
d03e12d6:	7962      	ldrb	r2, [r4, #5]
d03e12d8:	f8df a0a4 	ldr.w	sl, [pc, #164]	; d03e1380 <ui_file_refresh+0x12c>
d03e12dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e12e0:	79a2      	ldrb	r2, [r4, #6]
d03e12e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e12e6:	79e2      	ldrb	r2, [r4, #7]
d03e12e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e12ec:	681b      	ldr	r3, [r3, #0]
d03e12ee:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e12f0:	4798      	blx	r3
d03e12f2:	2100      	movs	r1, #0
d03e12f4:	782f      	ldrb	r7, [r5, #0]
d03e12f6:	428f      	cmp	r7, r1
d03e12f8:	d90f      	bls.n	d03e131a <ui_file_refresh+0xc6>
d03e12fa:	1c4c      	adds	r4, r1, #1
d03e12fc:	eb0a 1941 	add.w	r9, sl, r1, lsl #5
d03e1300:	fa5f f884 	uxtb.w	r8, r4
d03e1304:	46cb      	mov	fp, r9
d03e1306:	eb0a 1448 	add.w	r4, sl, r8, lsl #5
d03e130a:	4646      	mov	r6, r8
d03e130c:	42b7      	cmp	r7, r6
d03e130e:	d11b      	bne.n	d03e1348 <ui_file_refresh+0xf4>
d03e1310:	4641      	mov	r1, r8
d03e1312:	e7ef      	b.n	d03e12f4 <ui_file_refresh+0xa0>
d03e1314:	481f      	ldr	r0, [pc, #124]	; (d03e1394 <ui_file_refresh+0x140>)
d03e1316:	f7ff ff2f 	bl	d03e1178 <ui_set_status>
d03e131a:	b015      	add	sp, #84	; 0x54
d03e131c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e1320:	9b02      	ldr	r3, [sp, #8]
d03e1322:	07db      	lsls	r3, r3, #31
d03e1324:	d4bc      	bmi.n	d03e12a0 <ui_file_refresh+0x4c>
d03e1326:	a804      	add	r0, sp, #16
d03e1328:	f7ff ff62 	bl	d03e11f0 <ui_file_kind_from_name>
d03e132c:	2800      	cmp	r0, #0
d03e132e:	d0b7      	beq.n	d03e12a0 <ui_file_refresh+0x4c>
d03e1330:	7828      	ldrb	r0, [r5, #0]
d03e1332:	ab04      	add	r3, sp, #16
d03e1334:	4642      	mov	r2, r8
d03e1336:	2120      	movs	r1, #32
d03e1338:	eb07 1040 	add.w	r0, r7, r0, lsl #5
d03e133c:	f006 f9ce 	bl	d03e76dc <sniprintf>
d03e1340:	782b      	ldrb	r3, [r5, #0]
d03e1342:	3301      	adds	r3, #1
d03e1344:	702b      	strb	r3, [r5, #0]
d03e1346:	e7ab      	b.n	d03e12a0 <ui_file_refresh+0x4c>
d03e1348:	4649      	mov	r1, r9
d03e134a:	4620      	mov	r0, r4
d03e134c:	f006 f9fa 	bl	d03e7744 <strcmp>
d03e1350:	2800      	cmp	r0, #0
d03e1352:	da0e      	bge.n	d03e1372 <ui_file_refresh+0x11e>
d03e1354:	2220      	movs	r2, #32
d03e1356:	4659      	mov	r1, fp
d03e1358:	a80c      	add	r0, sp, #48	; 0x30
d03e135a:	f006 f831 	bl	d03e73c0 <memcpy>
d03e135e:	2220      	movs	r2, #32
d03e1360:	4621      	mov	r1, r4
d03e1362:	4648      	mov	r0, r9
d03e1364:	f006 f82c 	bl	d03e73c0 <memcpy>
d03e1368:	2220      	movs	r2, #32
d03e136a:	a90c      	add	r1, sp, #48	; 0x30
d03e136c:	4620      	mov	r0, r4
d03e136e:	f006 f827 	bl	d03e73c0 <memcpy>
d03e1372:	3601      	adds	r6, #1
d03e1374:	3420      	adds	r4, #32
d03e1376:	b2f6      	uxtb	r6, r6
d03e1378:	e7c8      	b.n	d03e130c <ui_file_refresh+0xb8>
d03e137a:	bf00      	nop
d03e137c:	d03ec20d 	.word	0xd03ec20d
d03e1380:	d03ebe0d 	.word	0xd03ebe0d
d03e1384:	2001f000 	.word	0x2001f000
d03e1388:	d03ebe0c 	.word	0xd03ebe0c
d03e138c:	d03ec20e 	.word	0xd03ec20e
d03e1390:	d03e8a66 	.word	0xd03e8a66
d03e1394:	d03e8a79 	.word	0xd03e8a79
d03e1398:	d03e8f77 	.word	0xd03e8f77

d03e139c <seq_midi_out_note_off>:
d03e139c:	4b05      	ldr	r3, [pc, #20]	; (d03e13b4 <seq_midi_out_note_off+0x18>)
d03e139e:	781b      	ldrb	r3, [r3, #0]
d03e13a0:	b133      	cbz	r3, d03e13b0 <seq_midi_out_note_off+0x14>
d03e13a2:	280f      	cmp	r0, #15
d03e13a4:	d804      	bhi.n	d03e13b0 <seq_midi_out_note_off+0x14>
d03e13a6:	2200      	movs	r2, #0
d03e13a8:	f040 0080 	orr.w	r0, r0, #128	; 0x80
d03e13ac:	f7ff bb68 	b.w	d03e0a80 <midi_out_packet3>
d03e13b0:	4770      	bx	lr
d03e13b2:	bf00      	nop
d03e13b4:	d03ea3ca 	.word	0xd03ea3ca

d03e13b8 <seq_midi_out_all_notes_off>:
d03e13b8:	4b07      	ldr	r3, [pc, #28]	; (d03e13d8 <seq_midi_out_all_notes_off+0x20>)
d03e13ba:	b510      	push	{r4, lr}
d03e13bc:	781b      	ldrb	r3, [r3, #0]
d03e13be:	b153      	cbz	r3, d03e13d6 <seq_midi_out_all_notes_off+0x1e>
d03e13c0:	2400      	movs	r4, #0
d03e13c2:	f064 004f 	orn	r0, r4, #79	; 0x4f
d03e13c6:	3401      	adds	r4, #1
d03e13c8:	2200      	movs	r2, #0
d03e13ca:	217b      	movs	r1, #123	; 0x7b
d03e13cc:	b2c0      	uxtb	r0, r0
d03e13ce:	f7ff fb57 	bl	d03e0a80 <midi_out_packet3>
d03e13d2:	2c10      	cmp	r4, #16
d03e13d4:	d1f5      	bne.n	d03e13c2 <seq_midi_out_all_notes_off+0xa>
d03e13d6:	bd10      	pop	{r4, pc}
d03e13d8:	d03ea3ca 	.word	0xd03ea3ca

d03e13dc <sid_midi_all_notes_off>:
d03e13dc:	b570      	push	{r4, r5, r6, lr}
d03e13de:	2400      	movs	r4, #0
d03e13e0:	4d0a      	ldr	r5, [pc, #40]	; (d03e140c <sid_midi_all_notes_off+0x30>)
d03e13e2:	4626      	mov	r6, r4
d03e13e4:	b2e0      	uxtb	r0, r4
d03e13e6:	3401      	adds	r4, #1
d03e13e8:	f7ff f8a4 	bl	d03e0534 <sid_voice_note_kill>
d03e13ec:	3508      	adds	r5, #8
d03e13ee:	2c06      	cmp	r4, #6
d03e13f0:	f805 6c08 	strb.w	r6, [r5, #-8]
d03e13f4:	f805 6c03 	strb.w	r6, [r5, #-3]
d03e13f8:	f825 6c02 	strh.w	r6, [r5, #-2]
d03e13fc:	d1f2      	bne.n	d03e13e4 <sid_midi_all_notes_off+0x8>
d03e13fe:	f7ff ffdb 	bl	d03e13b8 <seq_midi_out_all_notes_off>
d03e1402:	4a03      	ldr	r2, [pc, #12]	; (d03e1410 <sid_midi_all_notes_off+0x34>)
d03e1404:	6813      	ldr	r3, [r2, #0]
d03e1406:	3301      	adds	r3, #1
d03e1408:	6013      	str	r3, [r2, #0]
d03e140a:	bd70      	pop	{r4, r5, r6, pc}
d03e140c:	d03eb49c 	.word	0xd03eb49c
d03e1410:	d03ea3a0 	.word	0xd03ea3a0

d03e1414 <seq_stop_playback_notes>:
d03e1414:	b508      	push	{r3, lr}
d03e1416:	2001      	movs	r0, #1
d03e1418:	f7ff fe4a 	bl	d03e10b0 <sid_midi_all_notes_off_source>
d03e141c:	2002      	movs	r0, #2
d03e141e:	f7ff fe47 	bl	d03e10b0 <sid_midi_all_notes_off_source>
d03e1422:	f7ff ffc9 	bl	d03e13b8 <seq_midi_out_all_notes_off>
d03e1426:	2300      	movs	r3, #0
d03e1428:	4a02      	ldr	r2, [pc, #8]	; (d03e1434 <seq_stop_playback_notes+0x20>)
d03e142a:	7013      	strb	r3, [r2, #0]
d03e142c:	4a02      	ldr	r2, [pc, #8]	; (d03e1438 <seq_stop_playback_notes+0x24>)
d03e142e:	7013      	strb	r3, [r2, #0]
d03e1430:	bd08      	pop	{r3, pc}
d03e1432:	bf00      	nop
d03e1434:	d03ea3c9 	.word	0xd03ea3c9
d03e1438:	d03ea3c8 	.word	0xd03ea3c8

d03e143c <seq_stop_transport>:
d03e143c:	b538      	push	{r3, r4, r5, lr}
d03e143e:	2400      	movs	r4, #0
d03e1440:	4605      	mov	r5, r0
d03e1442:	f7ff ffe7 	bl	d03e1414 <seq_stop_playback_notes>
d03e1446:	4b0b      	ldr	r3, [pc, #44]	; (d03e1474 <seq_stop_transport+0x38>)
d03e1448:	4621      	mov	r1, r4
d03e144a:	480b      	ldr	r0, [pc, #44]	; (d03e1478 <seq_stop_transport+0x3c>)
d03e144c:	701c      	strb	r4, [r3, #0]
d03e144e:	4b0b      	ldr	r3, [pc, #44]	; (d03e147c <seq_stop_transport+0x40>)
d03e1450:	701c      	strb	r4, [r3, #0]
d03e1452:	4b0b      	ldr	r3, [pc, #44]	; (d03e1480 <seq_stop_transport+0x44>)
d03e1454:	701c      	strb	r4, [r3, #0]
d03e1456:	4b0b      	ldr	r3, [pc, #44]	; (d03e1484 <seq_stop_transport+0x48>)
d03e1458:	701c      	strb	r4, [r3, #0]
d03e145a:	4b0b      	ldr	r3, [pc, #44]	; (d03e1488 <seq_stop_transport+0x4c>)
d03e145c:	801c      	strh	r4, [r3, #0]
d03e145e:	4b0b      	ldr	r3, [pc, #44]	; (d03e148c <seq_stop_transport+0x50>)
d03e1460:	681a      	ldr	r2, [r3, #0]
d03e1462:	4b0b      	ldr	r3, [pc, #44]	; (d03e1490 <seq_stop_transport+0x54>)
d03e1464:	601a      	str	r2, [r3, #0]
d03e1466:	22c0      	movs	r2, #192	; 0xc0
d03e1468:	f005 ffb8 	bl	d03e73dc <memset>
d03e146c:	b10d      	cbz	r5, d03e1472 <seq_stop_transport+0x36>
d03e146e:	4b09      	ldr	r3, [pc, #36]	; (d03e1494 <seq_stop_transport+0x58>)
d03e1470:	701c      	strb	r4, [r3, #0]
d03e1472:	bd38      	pop	{r3, r4, r5, pc}
d03e1474:	d03eb490 	.word	0xd03eb490
d03e1478:	d03eb3d0 	.word	0xd03eb3d0
d03e147c:	d03eb499 	.word	0xd03eb499
d03e1480:	d03ea3b4 	.word	0xd03ea3b4
d03e1484:	d03ea3b8 	.word	0xd03ea3b8
d03e1488:	d03ea3b6 	.word	0xd03ea3b6
d03e148c:	d03ea3b0 	.word	0xd03ea3b0
d03e1490:	d03ea3c4 	.word	0xd03ea3c4
d03e1494:	d03eb498 	.word	0xd03eb498

d03e1498 <midi_queue_event>:
d03e1498:	b5f0      	push	{r4, r5, r6, r7, lr}
d03e149a:	4c17      	ldr	r4, [pc, #92]	; (d03e14f8 <midi_queue_event+0x60>)
d03e149c:	469c      	mov	ip, r3
d03e149e:	4e17      	ldr	r6, [pc, #92]	; (d03e14fc <midi_queue_event+0x64>)
d03e14a0:	7825      	ldrb	r5, [r4, #0]
d03e14a2:	7833      	ldrb	r3, [r6, #0]
d03e14a4:	3501      	adds	r5, #1
d03e14a6:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03e14aa:	42ab      	cmp	r3, r5
d03e14ac:	d10d      	bne.n	d03e14ca <midi_queue_event+0x32>
d03e14ae:	4f14      	ldr	r7, [pc, #80]	; (d03e1500 <midi_queue_event+0x68>)
d03e14b0:	683b      	ldr	r3, [r7, #0]
d03e14b2:	46be      	mov	lr, r7
d03e14b4:	3301      	adds	r3, #1
d03e14b6:	b108      	cbz	r0, d03e14bc <midi_queue_event+0x24>
d03e14b8:	2805      	cmp	r0, #5
d03e14ba:	d11a      	bne.n	d03e14f2 <midi_queue_event+0x5a>
d03e14bc:	7837      	ldrb	r7, [r6, #0]
d03e14be:	f8ce 3000 	str.w	r3, [lr]
d03e14c2:	3701      	adds	r7, #1
d03e14c4:	f007 077f 	and.w	r7, r7, #127	; 0x7f
d03e14c8:	7037      	strb	r7, [r6, #0]
d03e14ca:	7823      	ldrb	r3, [r4, #0]
d03e14cc:	4e0d      	ldr	r6, [pc, #52]	; (d03e1504 <midi_queue_event+0x6c>)
d03e14ce:	b2db      	uxtb	r3, r3
d03e14d0:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d03e14d4:	7823      	ldrb	r3, [r4, #0]
d03e14d6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03e14da:	7059      	strb	r1, [r3, #1]
d03e14dc:	7823      	ldrb	r3, [r4, #0]
d03e14de:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03e14e2:	709a      	strb	r2, [r3, #2]
d03e14e4:	7823      	ldrb	r3, [r4, #0]
d03e14e6:	eb06 0683 	add.w	r6, r6, r3, lsl #2
d03e14ea:	f886 c003 	strb.w	ip, [r6, #3]
d03e14ee:	7025      	strb	r5, [r4, #0]
d03e14f0:	e000      	b.n	d03e14f4 <midi_queue_event+0x5c>
d03e14f2:	603b      	str	r3, [r7, #0]
d03e14f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03e14f6:	bf00      	nop
d03e14f8:	d03ea18c 	.word	0xd03ea18c
d03e14fc:	d03ea38d 	.word	0xd03ea38d
d03e1500:	d03ea184 	.word	0xd03ea184
d03e1504:	d03ea18d 	.word	0xd03ea18d

d03e1508 <ui_note_channel_used>:
d03e1508:	280f      	cmp	r0, #15
d03e150a:	b510      	push	{r4, lr}
d03e150c:	d811      	bhi.n	d03e1532 <ui_note_channel_used+0x2a>
d03e150e:	4909      	ldr	r1, [pc, #36]	; (d03e1534 <ui_note_channel_used+0x2c>)
d03e1510:	2204      	movs	r2, #4
d03e1512:	460b      	mov	r3, r1
d03e1514:	f811 4b01 	ldrb.w	r4, [r1], #1
d03e1518:	4284      	cmp	r4, r0
d03e151a:	d00a      	beq.n	d03e1532 <ui_note_channel_used+0x2a>
d03e151c:	3a01      	subs	r2, #1
d03e151e:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
d03e1522:	d1f7      	bne.n	d03e1514 <ui_note_channel_used+0xc>
d03e1524:	789a      	ldrb	r2, [r3, #2]
d03e1526:	70da      	strb	r2, [r3, #3]
d03e1528:	785a      	ldrb	r2, [r3, #1]
d03e152a:	709a      	strb	r2, [r3, #2]
d03e152c:	781a      	ldrb	r2, [r3, #0]
d03e152e:	7018      	strb	r0, [r3, #0]
d03e1530:	705a      	strb	r2, [r3, #1]
d03e1532:	bd10      	pop	{r4, pc}
d03e1534:	d03ec288 	.word	0xd03ec288

d03e1538 <sid_midi_note_on_program_source>:
d03e1538:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e153c:	f89d 9020 	ldrb.w	r9, [sp, #32]
d03e1540:	4616      	mov	r6, r2
d03e1542:	4607      	mov	r7, r0
d03e1544:	468a      	mov	sl, r1
d03e1546:	464a      	mov	r2, r9
d03e1548:	4698      	mov	r8, r3
d03e154a:	f7ff fab9 	bl	d03e0ac0 <sid_find_voice_source>
d03e154e:	f1b9 0f02 	cmp.w	r9, #2
d03e1552:	4604      	mov	r4, r0
d03e1554:	d008      	beq.n	d03e1568 <sid_midi_note_on_program_source+0x30>
d03e1556:	2f09      	cmp	r7, #9
d03e1558:	d103      	bne.n	d03e1562 <sid_midi_note_on_program_source+0x2a>
d03e155a:	4b35      	ldr	r3, [pc, #212]	; (d03e1630 <sid_midi_note_on_program_source+0xf8>)
d03e155c:	781b      	ldrb	r3, [r3, #0]
d03e155e:	2b00      	cmp	r3, #0
d03e1560:	d04c      	beq.n	d03e15fc <sid_midi_note_on_program_source+0xc4>
d03e1562:	4638      	mov	r0, r7
d03e1564:	f7ff ffd0 	bl	d03e1508 <ui_note_channel_used>
d03e1568:	2cff      	cmp	r4, #255	; 0xff
d03e156a:	4d32      	ldr	r5, [pc, #200]	; (d03e1634 <sid_midi_note_on_program_source+0xfc>)
d03e156c:	d15b      	bne.n	d03e1626 <sid_midi_note_on_program_source+0xee>
d03e156e:	4932      	ldr	r1, [pc, #200]	; (d03e1638 <sid_midi_note_on_program_source+0x100>)
d03e1570:	2200      	movs	r2, #0
d03e1572:	2006      	movs	r0, #6
d03e1574:	780c      	ldrb	r4, [r1, #0]
d03e1576:	eb02 0c04 	add.w	ip, r2, r4
d03e157a:	fbbc f3f0 	udiv	r3, ip, r0
d03e157e:	fb00 c313 	mls	r3, r0, r3, ip
d03e1582:	f815 c033 	ldrb.w	ip, [r5, r3, lsl #3]
d03e1586:	f1bc 0f00 	cmp.w	ip, #0
d03e158a:	d139      	bne.n	d03e1600 <sid_midi_note_on_program_source+0xc8>
d03e158c:	b2dc      	uxtb	r4, r3
d03e158e:	3301      	adds	r3, #1
d03e1590:	fbb3 f2f0 	udiv	r2, r3, r0
d03e1594:	fb00 3312 	mls	r3, r0, r2, r3
d03e1598:	700b      	strb	r3, [r1, #0]
d03e159a:	2301      	movs	r3, #1
d03e159c:	f1b9 0f02 	cmp.w	r9, #2
d03e15a0:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03e15a4:	eb05 05c4 	add.w	r5, r5, r4, lsl #3
d03e15a8:	f04f 0300 	mov.w	r3, #0
d03e15ac:	706f      	strb	r7, [r5, #1]
d03e15ae:	f885 a002 	strb.w	sl, [r5, #2]
d03e15b2:	70ee      	strb	r6, [r5, #3]
d03e15b4:	f885 8004 	strb.w	r8, [r5, #4]
d03e15b8:	f885 9005 	strb.w	r9, [r5, #5]
d03e15bc:	80eb      	strh	r3, [r5, #6]
d03e15be:	d004      	beq.n	d03e15ca <sid_midi_note_on_program_source+0x92>
d03e15c0:	4631      	mov	r1, r6
d03e15c2:	4638      	mov	r0, r7
d03e15c4:	f7ff fa94 	bl	d03e0af0 <midi_effective_velocity>
d03e15c8:	4606      	mov	r6, r0
d03e15ca:	4633      	mov	r3, r6
d03e15cc:	4652      	mov	r2, sl
d03e15ce:	4641      	mov	r1, r8
d03e15d0:	4620      	mov	r0, r4
d03e15d2:	f7fe ff8b 	bl	d03e04ec <sid_voice_note_on>
d03e15d6:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d03e15da:	d008      	beq.n	d03e15ee <sid_midi_note_on_program_source+0xb6>
d03e15dc:	f1b8 0f09 	cmp.w	r8, #9
d03e15e0:	d005      	beq.n	d03e15ee <sid_midi_note_on_program_source+0xb6>
d03e15e2:	4b16      	ldr	r3, [pc, #88]	; (d03e163c <sid_midi_note_on_program_source+0x104>)
d03e15e4:	4620      	mov	r0, r4
d03e15e6:	f933 1017 	ldrsh.w	r1, [r3, r7, lsl #1]
d03e15ea:	f7fe ffc7 	bl	d03e057c <sid_voice_pitch_bend>
d03e15ee:	f1b9 0f02 	cmp.w	r9, #2
d03e15f2:	bf1f      	itttt	ne
d03e15f4:	4a12      	ldrne	r2, [pc, #72]	; (d03e1640 <sid_midi_note_on_program_source+0x108>)
d03e15f6:	6813      	ldrne	r3, [r2, #0]
d03e15f8:	3301      	addne	r3, #1
d03e15fa:	6013      	strne	r3, [r2, #0]
d03e15fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e1600:	3201      	adds	r2, #1
d03e1602:	2a06      	cmp	r2, #6
d03e1604:	d1b7      	bne.n	d03e1576 <sid_midi_note_on_program_source+0x3e>
d03e1606:	1c60      	adds	r0, r4, #1
d03e1608:	fbb0 f3f2 	udiv	r3, r0, r2
d03e160c:	fb02 0213 	mls	r2, r2, r3, r0
d03e1610:	4620      	mov	r0, r4
d03e1612:	700a      	strb	r2, [r1, #0]
d03e1614:	f7fe ff8e 	bl	d03e0534 <sid_voice_note_kill>
d03e1618:	2300      	movs	r3, #0
d03e161a:	eb05 02c4 	add.w	r2, r5, r4, lsl #3
d03e161e:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03e1622:	7153      	strb	r3, [r2, #5]
d03e1624:	e7b9      	b.n	d03e159a <sid_midi_note_on_program_source+0x62>
d03e1626:	4620      	mov	r0, r4
d03e1628:	f7fe ff2a 	bl	d03e0480 <sid_voice_note_off>
d03e162c:	e7b5      	b.n	d03e159a <sid_midi_note_on_program_source+0x62>
d03e162e:	bf00      	nop
d03e1630:	d03ea188 	.word	0xd03ea188
d03e1634:	d03eb49c 	.word	0xd03eb49c
d03e1638:	d03eb4cc 	.word	0xd03eb4cc
d03e163c:	d03ea134 	.word	0xd03ea134
d03e1640:	d03ea39c 	.word	0xd03ea39c

d03e1644 <sid_midi_pitch_bend_event>:
d03e1644:	01d2      	lsls	r2, r2, #7
d03e1646:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e1648:	f402 527e 	and.w	r2, r2, #16256	; 0x3f80
d03e164c:	f001 047f 	and.w	r4, r1, #127	; 0x7f
d03e1650:	4605      	mov	r5, r0
d03e1652:	4314      	orrs	r4, r2
d03e1654:	f7ff ff58 	bl	d03e1508 <ui_note_channel_used>
d03e1658:	4b0b      	ldr	r3, [pc, #44]	; (d03e1688 <sid_midi_pitch_bend_event+0x44>)
d03e165a:	2809      	cmp	r0, #9
d03e165c:	f5a4 5400 	sub.w	r4, r4, #8192	; 0x2000
d03e1660:	b224      	sxth	r4, r4
d03e1662:	f823 4010 	strh.w	r4, [r3, r0, lsl #1]
d03e1666:	d00e      	beq.n	d03e1686 <sid_midi_pitch_bend_event+0x42>
d03e1668:	4f08      	ldr	r7, [pc, #32]	; (d03e168c <sid_midi_pitch_bend_event+0x48>)
d03e166a:	2600      	movs	r6, #0
d03e166c:	783b      	ldrb	r3, [r7, #0]
d03e166e:	b2f0      	uxtb	r0, r6
d03e1670:	b12b      	cbz	r3, d03e167e <sid_midi_pitch_bend_event+0x3a>
d03e1672:	787b      	ldrb	r3, [r7, #1]
d03e1674:	42ab      	cmp	r3, r5
d03e1676:	d102      	bne.n	d03e167e <sid_midi_pitch_bend_event+0x3a>
d03e1678:	4621      	mov	r1, r4
d03e167a:	f7fe ff7f 	bl	d03e057c <sid_voice_pitch_bend>
d03e167e:	3601      	adds	r6, #1
d03e1680:	3708      	adds	r7, #8
d03e1682:	2e06      	cmp	r6, #6
d03e1684:	d1f2      	bne.n	d03e166c <sid_midi_pitch_bend_event+0x28>
d03e1686:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e1688:	d03ea134 	.word	0xd03ea134
d03e168c:	d03eb49c 	.word	0xd03eb49c

d03e1690 <ui_vm_editor_clamp_selection>:
d03e1690:	b508      	push	{r3, lr}
d03e1692:	4b13      	ldr	r3, [pc, #76]	; (d03e16e0 <ui_vm_editor_clamp_selection+0x50>)
d03e1694:	4a13      	ldr	r2, [pc, #76]	; (d03e16e4 <ui_vm_editor_clamp_selection+0x54>)
d03e1696:	781b      	ldrb	r3, [r3, #0]
d03e1698:	5cd0      	ldrb	r0, [r2, r3]
d03e169a:	f7ff fb75 	bl	d03e0d88 <vm_program_length>
d03e169e:	4b12      	ldr	r3, [pc, #72]	; (d03e16e8 <ui_vm_editor_clamp_selection+0x58>)
d03e16a0:	4912      	ldr	r1, [pc, #72]	; (d03e16ec <ui_vm_editor_clamp_selection+0x5c>)
d03e16a2:	b910      	cbnz	r0, d03e16aa <ui_vm_editor_clamp_selection+0x1a>
d03e16a4:	7018      	strb	r0, [r3, #0]
d03e16a6:	7008      	strb	r0, [r1, #0]
d03e16a8:	bd08      	pop	{r3, pc}
d03e16aa:	781a      	ldrb	r2, [r3, #0]
d03e16ac:	4282      	cmp	r2, r0
d03e16ae:	4a10      	ldr	r2, [pc, #64]	; (d03e16f0 <ui_vm_editor_clamp_selection+0x60>)
d03e16b0:	bf24      	itt	cs
d03e16b2:	f100 30ff 	addcs.w	r0, r0, #4294967295	; 0xffffffff
d03e16b6:	7018      	strbcs	r0, [r3, #0]
d03e16b8:	7810      	ldrb	r0, [r2, #0]
d03e16ba:	781b      	ldrb	r3, [r3, #0]
d03e16bc:	2802      	cmp	r0, #2
d03e16be:	bf84      	itt	hi
d03e16c0:	2000      	movhi	r0, #0
d03e16c2:	7010      	strbhi	r0, [r2, #0]
d03e16c4:	780a      	ldrb	r2, [r1, #0]
d03e16c6:	4293      	cmp	r3, r2
d03e16c8:	d204      	bcs.n	d03e16d4 <ui_vm_editor_clamp_selection+0x44>
d03e16ca:	700b      	strb	r3, [r1, #0]
d03e16cc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d03e16d0:	f7ff bb70 	b.w	d03e0db4 <ui_clamp_vm_scroll>
d03e16d4:	3208      	adds	r2, #8
d03e16d6:	b2d2      	uxtb	r2, r2
d03e16d8:	4293      	cmp	r3, r2
d03e16da:	d3f7      	bcc.n	d03e16cc <ui_vm_editor_clamp_selection+0x3c>
d03e16dc:	3b07      	subs	r3, #7
d03e16de:	e7f4      	b.n	d03e16ca <ui_vm_editor_clamp_selection+0x3a>
d03e16e0:	d03ec2af 	.word	0xd03ec2af
d03e16e4:	d03ea164 	.word	0xd03ea164
d03e16e8:	d03ec461 	.word	0xd03ec461
d03e16ec:	d03ec469 	.word	0xd03ec469
d03e16f0:	d03ec45a 	.word	0xd03ec45a

d03e16f4 <ui_vm_editor_adjust>:
d03e16f4:	4b1d      	ldr	r3, [pc, #116]	; (d03e176c <ui_vm_editor_adjust+0x78>)
d03e16f6:	b510      	push	{r4, lr}
d03e16f8:	781b      	ldrb	r3, [r3, #0]
d03e16fa:	4604      	mov	r4, r0
d03e16fc:	b32b      	cbz	r3, d03e174a <ui_vm_editor_adjust+0x56>
d03e16fe:	4b1c      	ldr	r3, [pc, #112]	; (d03e1770 <ui_vm_editor_adjust+0x7c>)
d03e1700:	781b      	ldrb	r3, [r3, #0]
d03e1702:	2bff      	cmp	r3, #255	; 0xff
d03e1704:	d021      	beq.n	d03e174a <ui_vm_editor_adjust+0x56>
d03e1706:	4a1b      	ldr	r2, [pc, #108]	; (d03e1774 <ui_vm_editor_adjust+0x80>)
d03e1708:	491b      	ldr	r1, [pc, #108]	; (d03e1778 <ui_vm_editor_adjust+0x84>)
d03e170a:	7812      	ldrb	r2, [r2, #0]
d03e170c:	5c8a      	ldrb	r2, [r1, r2]
d03e170e:	429a      	cmp	r2, r3
d03e1710:	d11b      	bne.n	d03e174a <ui_vm_editor_adjust+0x56>
d03e1712:	f7ff ffbd 	bl	d03e1690 <ui_vm_editor_clamp_selection>
d03e1716:	4a19      	ldr	r2, [pc, #100]	; (d03e177c <ui_vm_editor_adjust+0x88>)
d03e1718:	4b19      	ldr	r3, [pc, #100]	; (d03e1780 <ui_vm_editor_adjust+0x8c>)
d03e171a:	7812      	ldrb	r2, [r2, #0]
d03e171c:	781b      	ldrb	r3, [r3, #0]
d03e171e:	2a01      	cmp	r2, #1
d03e1720:	4918      	ldr	r1, [pc, #96]	; (d03e1784 <ui_vm_editor_adjust+0x90>)
d03e1722:	d013      	beq.n	d03e174c <ui_vm_editor_adjust+0x58>
d03e1724:	2a02      	cmp	r2, #2
d03e1726:	d019      	beq.n	d03e175c <ui_vm_editor_adjust+0x68>
d03e1728:	b94a      	cbnz	r2, d03e173e <ui_vm_editor_adjust+0x4a>
d03e172a:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03e172e:	1910      	adds	r0, r2, r4
d03e1730:	2815      	cmp	r0, #21
d03e1732:	bfa8      	it	ge
d03e1734:	2015      	movge	r0, #21
d03e1736:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03e173a:	f801 0023 	strb.w	r0, [r1, r3, lsl #2]
d03e173e:	2300      	movs	r3, #0
d03e1740:	2201      	movs	r2, #1
d03e1742:	f881 317c 	strb.w	r3, [r1, #380]	; 0x17c
d03e1746:	4b10      	ldr	r3, [pc, #64]	; (d03e1788 <ui_vm_editor_adjust+0x94>)
d03e1748:	701a      	strb	r2, [r3, #0]
d03e174a:	bd10      	pop	{r4, pc}
d03e174c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03e1750:	7858      	ldrb	r0, [r3, #1]
d03e1752:	4420      	add	r0, r4
d03e1754:	f380 0008 	usat	r0, #8, r0
d03e1758:	7058      	strb	r0, [r3, #1]
d03e175a:	e7f0      	b.n	d03e173e <ui_vm_editor_adjust+0x4a>
d03e175c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03e1760:	885a      	ldrh	r2, [r3, #2]
d03e1762:	1910      	adds	r0, r2, r4
d03e1764:	f380 0010 	usat	r0, #16, r0
d03e1768:	8058      	strh	r0, [r3, #2]
d03e176a:	e7e8      	b.n	d03e173e <ui_vm_editor_adjust+0x4a>
d03e176c:	d03ec45b 	.word	0xd03ec45b
d03e1770:	d03ec460 	.word	0xd03ec460
d03e1774:	d03ec2af 	.word	0xd03ec2af
d03e1778:	d03ea164 	.word	0xd03ea164
d03e177c:	d03ec45a 	.word	0xd03ec45a
d03e1780:	d03ec461 	.word	0xd03ec461
d03e1784:	d03ec2da 	.word	0xd03ec2da
d03e1788:	d03eb4d4 	.word	0xd03eb4d4

d03e178c <the50hzISR>:
d03e178c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e178e:	2500      	movs	r5, #0
d03e1790:	4c17      	ldr	r4, [pc, #92]	; (d03e17f0 <the50hzISR+0x64>)
d03e1792:	4f18      	ldr	r7, [pc, #96]	; (d03e17f4 <the50hzISR+0x68>)
d03e1794:	f7fe ff6e 	bl	d03e0674 <sid_midi_isr>
d03e1798:	462e      	mov	r6, r5
d03e179a:	7823      	ldrb	r3, [r4, #0]
d03e179c:	b2e8      	uxtb	r0, r5
d03e179e:	b12b      	cbz	r3, d03e17ac <the50hzISR+0x20>
d03e17a0:	88e3      	ldrh	r3, [r4, #6]
d03e17a2:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03e17a6:	d219      	bcs.n	d03e17dc <the50hzISR+0x50>
d03e17a8:	3301      	adds	r3, #1
d03e17aa:	80e3      	strh	r3, [r4, #6]
d03e17ac:	3501      	adds	r5, #1
d03e17ae:	3408      	adds	r4, #8
d03e17b0:	2d06      	cmp	r5, #6
d03e17b2:	d1f2      	bne.n	d03e179a <the50hzISR+0xe>
d03e17b4:	4a10      	ldr	r2, [pc, #64]	; (d03e17f8 <the50hzISR+0x6c>)
d03e17b6:	6813      	ldr	r3, [r2, #0]
d03e17b8:	3301      	adds	r3, #1
d03e17ba:	6013      	str	r3, [r2, #0]
d03e17bc:	4a0f      	ldr	r2, [pc, #60]	; (d03e17fc <the50hzISR+0x70>)
d03e17be:	7813      	ldrb	r3, [r2, #0]
d03e17c0:	3301      	adds	r3, #1
d03e17c2:	b2db      	uxtb	r3, r3
d03e17c4:	2b0e      	cmp	r3, #14
d03e17c6:	7013      	strb	r3, [r2, #0]
d03e17c8:	d907      	bls.n	d03e17da <the50hzISR+0x4e>
d03e17ca:	2300      	movs	r3, #0
d03e17cc:	7013      	strb	r3, [r2, #0]
d03e17ce:	4a0c      	ldr	r2, [pc, #48]	; (d03e1800 <the50hzISR+0x74>)
d03e17d0:	7813      	ldrb	r3, [r2, #0]
d03e17d2:	fab3 f383 	clz	r3, r3
d03e17d6:	095b      	lsrs	r3, r3, #5
d03e17d8:	7013      	strb	r3, [r2, #0]
d03e17da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e17dc:	f7fe feaa 	bl	d03e0534 <sid_voice_note_kill>
d03e17e0:	683b      	ldr	r3, [r7, #0]
d03e17e2:	7026      	strb	r6, [r4, #0]
d03e17e4:	3301      	adds	r3, #1
d03e17e6:	7166      	strb	r6, [r4, #5]
d03e17e8:	80e6      	strh	r6, [r4, #6]
d03e17ea:	603b      	str	r3, [r7, #0]
d03e17ec:	e7de      	b.n	d03e17ac <the50hzISR+0x20>
d03e17ee:	bf00      	nop
d03e17f0:	d03eb49c 	.word	0xd03eb49c
d03e17f4:	d03ea3a8 	.word	0xd03ea3a8
d03e17f8:	d03ea3b0 	.word	0xd03ea3b0
d03e17fc:	d03ec463 	.word	0xd03ec463
d03e1800:	d03ec462 	.word	0xd03ec462

d03e1804 <sid_midi_note_off_source>:
d03e1804:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e1808:	4604      	mov	r4, r0
d03e180a:	f7ff f959 	bl	d03e0ac0 <sid_find_voice_source>
d03e180e:	28ff      	cmp	r0, #255	; 0xff
d03e1810:	4606      	mov	r6, r0
d03e1812:	d00f      	beq.n	d03e1834 <sid_midi_note_off_source+0x30>
d03e1814:	2c09      	cmp	r4, #9
d03e1816:	f04f 0500 	mov.w	r5, #0
d03e181a:	4c09      	ldr	r4, [pc, #36]	; (d03e1840 <sid_midi_note_off_source+0x3c>)
d03e181c:	ea4f 08c0 	mov.w	r8, r0, lsl #3
d03e1820:	4f08      	ldr	r7, [pc, #32]	; (d03e1844 <sid_midi_note_off_source+0x40>)
d03e1822:	d109      	bne.n	d03e1838 <sid_midi_note_off_source+0x34>
d03e1824:	683b      	ldr	r3, [r7, #0]
d03e1826:	f804 5036 	strb.w	r5, [r4, r6, lsl #3]
d03e182a:	4444      	add	r4, r8
d03e182c:	3301      	adds	r3, #1
d03e182e:	7165      	strb	r5, [r4, #5]
d03e1830:	80e5      	strh	r5, [r4, #6]
d03e1832:	603b      	str	r3, [r7, #0]
d03e1834:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e1838:	f7fe fe22 	bl	d03e0480 <sid_voice_note_off>
d03e183c:	e7f2      	b.n	d03e1824 <sid_midi_note_off_source+0x20>
d03e183e:	bf00      	nop
d03e1840:	d03eb49c 	.word	0xd03eb49c
d03e1844:	d03ea398 	.word	0xd03ea398

d03e1848 <ui_project_ensure_dir>:
d03e1848:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e184a:	4d19      	ldr	r5, [pc, #100]	; (d03e18b0 <ui_project_ensure_dir+0x68>)
d03e184c:	2400      	movs	r4, #0
d03e184e:	4669      	mov	r1, sp
d03e1850:	4818      	ldr	r0, [pc, #96]	; (d03e18b4 <ui_project_ensure_dir+0x6c>)
d03e1852:	792b      	ldrb	r3, [r5, #4]
d03e1854:	796a      	ldrb	r2, [r5, #5]
d03e1856:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e185a:	79aa      	ldrb	r2, [r5, #6]
d03e185c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1860:	79ea      	ldrb	r2, [r5, #7]
d03e1862:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1866:	aa01      	add	r2, sp, #4
d03e1868:	681b      	ldr	r3, [r3, #0]
d03e186a:	e9cd 4400 	strd	r4, r4, [sp]
d03e186e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03e1870:	4798      	blx	r3
d03e1872:	b920      	cbnz	r0, d03e187e <ui_project_ensure_dir+0x36>
d03e1874:	9800      	ldr	r0, [sp, #0]
d03e1876:	f000 0001 	and.w	r0, r0, #1
d03e187a:	b003      	add	sp, #12
d03e187c:	bd30      	pop	{r4, r5, pc}
d03e187e:	792b      	ldrb	r3, [r5, #4]
d03e1880:	796a      	ldrb	r2, [r5, #5]
d03e1882:	480c      	ldr	r0, [pc, #48]	; (d03e18b4 <ui_project_ensure_dir+0x6c>)
d03e1884:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1888:	79aa      	ldrb	r2, [r5, #6]
d03e188a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e188e:	79ea      	ldrb	r2, [r5, #7]
d03e1890:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1894:	681b      	ldr	r3, [r3, #0]
d03e1896:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03e1898:	4798      	blx	r3
d03e189a:	f010 0ff7 	tst.w	r0, #247	; 0xf7
d03e189e:	d004      	beq.n	d03e18aa <ui_project_ensure_dir+0x62>
d03e18a0:	4805      	ldr	r0, [pc, #20]	; (d03e18b8 <ui_project_ensure_dir+0x70>)
d03e18a2:	f7ff fc69 	bl	d03e1178 <ui_set_status>
d03e18a6:	4620      	mov	r0, r4
d03e18a8:	e7e7      	b.n	d03e187a <ui_project_ensure_dir+0x32>
d03e18aa:	2001      	movs	r0, #1
d03e18ac:	e7e5      	b.n	d03e187a <ui_project_ensure_dir+0x32>
d03e18ae:	bf00      	nop
d03e18b0:	2001f000 	.word	0x2001f000
d03e18b4:	d03e8a66 	.word	0xd03e8a66
d03e18b8:	d03e8a94 	.word	0xd03e8a94

d03e18bc <ui_select_program_delta>:
d03e18bc:	2809      	cmp	r0, #9
d03e18be:	b410      	push	{r4}
d03e18c0:	d107      	bne.n	d03e18d2 <ui_select_program_delta+0x16>
d03e18c2:	4b0d      	ldr	r3, [pc, #52]	; (d03e18f8 <ui_select_program_delta+0x3c>)
d03e18c4:	2203      	movs	r2, #3
d03e18c6:	480d      	ldr	r0, [pc, #52]	; (d03e18fc <ui_select_program_delta+0x40>)
d03e18c8:	701a      	strb	r2, [r3, #0]
d03e18ca:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e18ce:	f7ff bc53 	b.w	d03e1178 <ui_set_status>
d03e18d2:	280f      	cmp	r0, #15
d03e18d4:	d806      	bhi.n	d03e18e4 <ui_select_program_delta+0x28>
d03e18d6:	4c0a      	ldr	r4, [pc, #40]	; (d03e1900 <ui_select_program_delta+0x44>)
d03e18d8:	5c22      	ldrb	r2, [r4, r0]
d03e18da:	4411      	add	r1, r2
d03e18dc:	b20b      	sxth	r3, r1
d03e18de:	f383 0307 	usat	r3, #7, r3
d03e18e2:	5423      	strb	r3, [r4, r0]
d03e18e4:	4a07      	ldr	r2, [pc, #28]	; (d03e1904 <ui_select_program_delta+0x48>)
d03e18e6:	2301      	movs	r3, #1
d03e18e8:	f85d 4b04 	ldr.w	r4, [sp], #4
d03e18ec:	6811      	ldr	r1, [r2, #0]
d03e18ee:	fa03 f000 	lsl.w	r0, r3, r0
d03e18f2:	4308      	orrs	r0, r1
d03e18f4:	6010      	str	r0, [r2, #0]
d03e18f6:	4770      	bx	lr
d03e18f8:	d03ec212 	.word	0xd03ec212
d03e18fc:	d03e8ab4 	.word	0xd03e8ab4
d03e1900:	d03ea164 	.word	0xd03ea164
d03e1904:	d03eb4d0 	.word	0xd03eb4d0

d03e1908 <ui_project_save_path.constprop.0>:
d03e1908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e190c:	4e59      	ldr	r6, [pc, #356]	; (d03e1a74 <ui_project_save_path.constprop.0+0x16c>)
d03e190e:	b085      	sub	sp, #20
d03e1910:	2700      	movs	r7, #0
d03e1912:	6834      	ldr	r4, [r6, #0]
d03e1914:	9703      	str	r7, [sp, #12]
d03e1916:	b91c      	cbnz	r4, d03e1920 <ui_project_save_path.constprop.0+0x18>
d03e1918:	4857      	ldr	r0, [pc, #348]	; (d03e1a78 <ui_project_save_path.constprop.0+0x170>)
d03e191a:	f7ff fc2d 	bl	d03e1178 <ui_set_status>
d03e191e:	e075      	b.n	d03e1a0c <ui_project_save_path.constprop.0+0x104>
d03e1920:	f24c 05c2 	movw	r5, #49346	; 0xc0c2
d03e1924:	4639      	mov	r1, r7
d03e1926:	4620      	mov	r0, r4
d03e1928:	f104 0942 	add.w	r9, r4, #66	; 0x42
d03e192c:	462a      	mov	r2, r5
d03e192e:	f8df 8180 	ldr.w	r8, [pc, #384]	; d03e1ab0 <ui_project_save_path.constprop.0+0x1a8>
d03e1932:	f005 fd53 	bl	d03e73dc <memset>
d03e1936:	2207      	movs	r2, #7
d03e1938:	4950      	ldr	r1, [pc, #320]	; (d03e1a7c <ui_project_save_path.constprop.0+0x174>)
d03e193a:	4620      	mov	r0, r4
d03e193c:	f005 fd40 	bl	d03e73c0 <memcpy>
d03e1940:	2301      	movs	r3, #1
d03e1942:	2210      	movs	r2, #16
d03e1944:	494e      	ldr	r1, [pc, #312]	; (d03e1a80 <ui_project_save_path.constprop.0+0x178>)
d03e1946:	8123      	strh	r3, [r4, #8]
d03e1948:	f104 000c 	add.w	r0, r4, #12
d03e194c:	8165      	strh	r5, [r4, #10]
d03e194e:	46ba      	mov	sl, r7
d03e1950:	f005 fd36 	bl	d03e73c0 <memcpy>
d03e1954:	2210      	movs	r2, #16
d03e1956:	494b      	ldr	r1, [pc, #300]	; (d03e1a84 <ui_project_save_path.constprop.0+0x17c>)
d03e1958:	f104 001c 	add.w	r0, r4, #28
d03e195c:	f005 fd30 	bl	d03e73c0 <memcpy>
d03e1960:	f104 002c 	add.w	r0, r4, #44	; 0x2c
d03e1964:	2210      	movs	r2, #16
d03e1966:	4948      	ldr	r1, [pc, #288]	; (d03e1a88 <ui_project_save_path.constprop.0+0x180>)
d03e1968:	f005 fd2a 	bl	d03e73c0 <memcpy>
d03e196c:	4b47      	ldr	r3, [pc, #284]	; (d03e1a8c <ui_project_save_path.constprop.0+0x184>)
d03e196e:	34c2      	adds	r4, #194	; 0xc2
d03e1970:	881b      	ldrh	r3, [r3, #0]
d03e1972:	f824 3c86 	strh.w	r3, [r4, #-134]
d03e1976:	4b46      	ldr	r3, [pc, #280]	; (d03e1a90 <ui_project_save_path.constprop.0+0x188>)
d03e1978:	881b      	ldrh	r3, [r3, #0]
d03e197a:	f824 3c84 	strh.w	r3, [r4, #-132]
d03e197e:	4b45      	ldr	r3, [pc, #276]	; (d03e1a94 <ui_project_save_path.constprop.0+0x18c>)
d03e1980:	781b      	ldrb	r3, [r3, #0]
d03e1982:	f804 3c82 	strb.w	r3, [r4, #-130]
d03e1986:	4b44      	ldr	r3, [pc, #272]	; (d03e1a98 <ui_project_save_path.constprop.0+0x190>)
d03e1988:	781b      	ldrb	r3, [r3, #0]
d03e198a:	f804 3c81 	strb.w	r3, [r4, #-129]
d03e198e:	f858 bb04 	ldr.w	fp, [r8], #4
d03e1992:	b2f8      	uxtb	r0, r7
d03e1994:	f7ff f9f8 	bl	d03e0d88 <vm_program_length>
d03e1998:	f1bb 0f00 	cmp.w	fp, #0
d03e199c:	d03a      	beq.n	d03e1a14 <ui_project_save_path.constprop.0+0x10c>
d03e199e:	2800      	cmp	r0, #0
d03e19a0:	d038      	beq.n	d03e1a14 <ui_project_save_path.constprop.0+0x10c>
d03e19a2:	2860      	cmp	r0, #96	; 0x60
d03e19a4:	bf28      	it	cs
d03e19a6:	2060      	movcs	r0, #96	; 0x60
d03e19a8:	b2c5      	uxtb	r5, r0
d03e19aa:	f809 5b01 	strb.w	r5, [r9], #1
d03e19ae:	f1bb 0f00 	cmp.w	fp, #0
d03e19b2:	d00d      	beq.n	d03e19d0 <ui_project_save_path.constprop.0+0xc8>
d03e19b4:	2300      	movs	r3, #0
d03e19b6:	2204      	movs	r2, #4
d03e19b8:	eb0b 0183 	add.w	r1, fp, r3, lsl #2
d03e19bc:	eb04 0083 	add.w	r0, r4, r3, lsl #2
d03e19c0:	9301      	str	r3, [sp, #4]
d03e19c2:	f005 fcfd 	bl	d03e73c0 <memcpy>
d03e19c6:	9b01      	ldr	r3, [sp, #4]
d03e19c8:	3301      	adds	r3, #1
d03e19ca:	b2da      	uxtb	r2, r3
d03e19cc:	4295      	cmp	r5, r2
d03e19ce:	d8f2      	bhi.n	d03e19b6 <ui_project_save_path.constprop.0+0xae>
d03e19d0:	3701      	adds	r7, #1
d03e19d2:	f884 a17c 	strb.w	sl, [r4, #380]	; 0x17c
d03e19d6:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03e19da:	2f80      	cmp	r7, #128	; 0x80
d03e19dc:	d1d7      	bne.n	d03e198e <ui_project_save_path.constprop.0+0x86>
d03e19de:	4d2f      	ldr	r5, [pc, #188]	; (d03e1a9c <ui_project_save_path.constprop.0+0x194>)
d03e19e0:	2001      	movs	r0, #1
d03e19e2:	492f      	ldr	r1, [pc, #188]	; (d03e1aa0 <ui_project_save_path.constprop.0+0x198>)
d03e19e4:	792b      	ldrb	r3, [r5, #4]
d03e19e6:	796a      	ldrb	r2, [r5, #5]
d03e19e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e19ec:	79aa      	ldrb	r2, [r5, #6]
d03e19ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e19f2:	79ea      	ldrb	r2, [r5, #7]
d03e19f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e19f8:	220a      	movs	r2, #10
d03e19fa:	681b      	ldr	r3, [r3, #0]
d03e19fc:	681b      	ldr	r3, [r3, #0]
d03e19fe:	4798      	blx	r3
d03e1a00:	4604      	mov	r4, r0
d03e1a02:	b148      	cbz	r0, d03e1a18 <ui_project_save_path.constprop.0+0x110>
d03e1a04:	2400      	movs	r4, #0
d03e1a06:	4827      	ldr	r0, [pc, #156]	; (d03e1aa4 <ui_project_save_path.constprop.0+0x19c>)
d03e1a08:	f7ff fbb6 	bl	d03e1178 <ui_set_status>
d03e1a0c:	4620      	mov	r0, r4
d03e1a0e:	b005      	add	sp, #20
d03e1a10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e1a14:	2560      	movs	r5, #96	; 0x60
d03e1a16:	e7c8      	b.n	d03e19aa <ui_project_save_path.constprop.0+0xa2>
d03e1a18:	792b      	ldrb	r3, [r5, #4]
d03e1a1a:	2001      	movs	r0, #1
d03e1a1c:	796a      	ldrb	r2, [r5, #5]
d03e1a1e:	6831      	ldr	r1, [r6, #0]
d03e1a20:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1a24:	79aa      	ldrb	r2, [r5, #6]
d03e1a26:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1a2a:	79ea      	ldrb	r2, [r5, #7]
d03e1a2c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1a30:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03e1a34:	681b      	ldr	r3, [r3, #0]
d03e1a36:	691f      	ldr	r7, [r3, #16]
d03e1a38:	ab03      	add	r3, sp, #12
d03e1a3a:	47b8      	blx	r7
d03e1a3c:	792b      	ldrb	r3, [r5, #4]
d03e1a3e:	796a      	ldrb	r2, [r5, #5]
d03e1a40:	4606      	mov	r6, r0
d03e1a42:	2001      	movs	r0, #1
d03e1a44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1a48:	79aa      	ldrb	r2, [r5, #6]
d03e1a4a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1a4e:	79ea      	ldrb	r2, [r5, #7]
d03e1a50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1a54:	681b      	ldr	r3, [r3, #0]
d03e1a56:	68db      	ldr	r3, [r3, #12]
d03e1a58:	4798      	blx	r3
d03e1a5a:	b926      	cbnz	r6, d03e1a66 <ui_project_save_path.constprop.0+0x15e>
d03e1a5c:	9a03      	ldr	r2, [sp, #12]
d03e1a5e:	f24c 03c2 	movw	r3, #49346	; 0xc0c2
d03e1a62:	429a      	cmp	r2, r3
d03e1a64:	d001      	beq.n	d03e1a6a <ui_project_save_path.constprop.0+0x162>
d03e1a66:	4810      	ldr	r0, [pc, #64]	; (d03e1aa8 <ui_project_save_path.constprop.0+0x1a0>)
d03e1a68:	e757      	b.n	d03e191a <ui_project_save_path.constprop.0+0x12>
d03e1a6a:	4810      	ldr	r0, [pc, #64]	; (d03e1aac <ui_project_save_path.constprop.0+0x1a4>)
d03e1a6c:	2401      	movs	r4, #1
d03e1a6e:	f7ff fb83 	bl	d03e1178 <ui_set_status>
d03e1a72:	e7cb      	b.n	d03e1a0c <ui_project_save_path.constprop.0+0x104>
d03e1a74:	d03ec284 	.word	0xd03ec284
d03e1a78:	d03e8ad4 	.word	0xd03e8ad4
d03e1a7c:	d03e8af0 	.word	0xd03e8af0
d03e1a80:	d03ea164 	.word	0xd03ea164
d03e1a84:	d03ea174 	.word	0xd03ea174
d03e1a88:	d03ea154 	.word	0xd03ea154
d03e1a8c:	d03ea38e 	.word	0xd03ea38e
d03e1a90:	d03ea18a 	.word	0xd03ea18a
d03e1a94:	d03ea188 	.word	0xd03ea188
d03e1a98:	d03ec2af 	.word	0xd03ec2af
d03e1a9c:	2001f000 	.word	0x2001f000
d03e1aa0:	d03ec213 	.word	0xd03ec213
d03e1aa4:	d03e8af8 	.word	0xd03e8af8
d03e1aa8:	d03e8b11 	.word	0xd03e8b11
d03e1aac:	d03e8b2b 	.word	0xd03e8b2b
d03e1ab0:	d03e9a7c 	.word	0xd03e9a7c

d03e1ab4 <ui_program_save_path.constprop.0>:
d03e1ab4:	4b4d      	ldr	r3, [pc, #308]	; (d03e1bec <ui_program_save_path.constprop.0+0x138>)
d03e1ab6:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e1aba:	4a4d      	ldr	r2, [pc, #308]	; (d03e1bf0 <ui_program_save_path.constprop.0+0x13c>)
d03e1abc:	781b      	ldrb	r3, [r3, #0]
d03e1abe:	5cd4      	ldrb	r4, [r2, r3]
d03e1ac0:	2300      	movs	r3, #0
d03e1ac2:	9301      	str	r3, [sp, #4]
d03e1ac4:	4b4b      	ldr	r3, [pc, #300]	; (d03e1bf4 <ui_program_save_path.constprop.0+0x140>)
d03e1ac6:	781b      	ldrb	r3, [r3, #0]
d03e1ac8:	2bff      	cmp	r3, #255	; 0xff
d03e1aca:	d006      	beq.n	d03e1ada <ui_program_save_path.constprop.0+0x26>
d03e1acc:	4a4a      	ldr	r2, [pc, #296]	; (d03e1bf8 <ui_program_save_path.constprop.0+0x144>)
d03e1ace:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03e1ad2:	4a4a      	ldr	r2, [pc, #296]	; (d03e1bfc <ui_program_save_path.constprop.0+0x148>)
d03e1ad4:	4291      	cmp	r1, r2
d03e1ad6:	bf08      	it	eq
d03e1ad8:	461c      	moveq	r4, r3
d03e1ada:	0623      	lsls	r3, r4, #24
d03e1adc:	d507      	bpl.n	d03e1aee <ui_program_save_path.constprop.0+0x3a>
d03e1ade:	4848      	ldr	r0, [pc, #288]	; (d03e1c00 <ui_program_save_path.constprop.0+0x14c>)
d03e1ae0:	2500      	movs	r5, #0
d03e1ae2:	f7ff fb49 	bl	d03e1178 <ui_set_status>
d03e1ae6:	4628      	mov	r0, r5
d03e1ae8:	b003      	add	sp, #12
d03e1aea:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e1aee:	4e45      	ldr	r6, [pc, #276]	; (d03e1c04 <ui_program_save_path.constprop.0+0x150>)
d03e1af0:	6835      	ldr	r5, [r6, #0]
d03e1af2:	b91d      	cbnz	r5, d03e1afc <ui_program_save_path.constprop.0+0x48>
d03e1af4:	4844      	ldr	r0, [pc, #272]	; (d03e1c08 <ui_program_save_path.constprop.0+0x154>)
d03e1af6:	f7ff fb3f 	bl	d03e1178 <ui_set_status>
d03e1afa:	e7f4      	b.n	d03e1ae6 <ui_program_save_path.constprop.0+0x32>
d03e1afc:	f44f 77c7 	mov.w	r7, #398	; 0x18e
d03e1b00:	2100      	movs	r1, #0
d03e1b02:	4628      	mov	r0, r5
d03e1b04:	463a      	mov	r2, r7
d03e1b06:	f005 fc69 	bl	d03e73dc <memset>
d03e1b0a:	2207      	movs	r2, #7
d03e1b0c:	493f      	ldr	r1, [pc, #252]	; (d03e1c0c <ui_program_save_path.constprop.0+0x158>)
d03e1b0e:	4628      	mov	r0, r5
d03e1b10:	f005 fc56 	bl	d03e73c0 <memcpy>
d03e1b14:	2301      	movs	r3, #1
d03e1b16:	732c      	strb	r4, [r5, #12]
d03e1b18:	4620      	mov	r0, r4
d03e1b1a:	812b      	strh	r3, [r5, #8]
d03e1b1c:	4b36      	ldr	r3, [pc, #216]	; (d03e1bf8 <ui_program_save_path.constprop.0+0x144>)
d03e1b1e:	816f      	strh	r7, [r5, #10]
d03e1b20:	f853 8024 	ldr.w	r8, [r3, r4, lsl #2]
d03e1b24:	f7ff f930 	bl	d03e0d88 <vm_program_length>
d03e1b28:	f1b8 0f00 	cmp.w	r8, #0
d03e1b2c:	d02e      	beq.n	d03e1b8c <ui_program_save_path.constprop.0+0xd8>
d03e1b2e:	b368      	cbz	r0, d03e1b8c <ui_program_save_path.constprop.0+0xd8>
d03e1b30:	2860      	cmp	r0, #96	; 0x60
d03e1b32:	bf28      	it	cs
d03e1b34:	2060      	movcs	r0, #96	; 0x60
d03e1b36:	b2c4      	uxtb	r4, r0
d03e1b38:	736c      	strb	r4, [r5, #13]
d03e1b3a:	f1b8 0f00 	cmp.w	r8, #0
d03e1b3e:	d00d      	beq.n	d03e1b5c <ui_program_save_path.constprop.0+0xa8>
d03e1b40:	2700      	movs	r7, #0
d03e1b42:	f105 090e 	add.w	r9, r5, #14
d03e1b46:	eb08 0187 	add.w	r1, r8, r7, lsl #2
d03e1b4a:	2204      	movs	r2, #4
d03e1b4c:	eb09 0087 	add.w	r0, r9, r7, lsl #2
d03e1b50:	3701      	adds	r7, #1
d03e1b52:	f005 fc35 	bl	d03e73c0 <memcpy>
d03e1b56:	b2fb      	uxtb	r3, r7
d03e1b58:	429c      	cmp	r4, r3
d03e1b5a:	d8f4      	bhi.n	d03e1b46 <ui_program_save_path.constprop.0+0x92>
d03e1b5c:	4c2c      	ldr	r4, [pc, #176]	; (d03e1c10 <ui_program_save_path.constprop.0+0x15c>)
d03e1b5e:	2700      	movs	r7, #0
d03e1b60:	492c      	ldr	r1, [pc, #176]	; (d03e1c14 <ui_program_save_path.constprop.0+0x160>)
d03e1b62:	2001      	movs	r0, #1
d03e1b64:	7923      	ldrb	r3, [r4, #4]
d03e1b66:	7962      	ldrb	r2, [r4, #5]
d03e1b68:	f885 718a 	strb.w	r7, [r5, #394]	; 0x18a
d03e1b6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1b70:	79a2      	ldrb	r2, [r4, #6]
d03e1b72:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1b76:	79e2      	ldrb	r2, [r4, #7]
d03e1b78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1b7c:	220a      	movs	r2, #10
d03e1b7e:	681b      	ldr	r3, [r3, #0]
d03e1b80:	681b      	ldr	r3, [r3, #0]
d03e1b82:	4798      	blx	r3
d03e1b84:	4605      	mov	r5, r0
d03e1b86:	b118      	cbz	r0, d03e1b90 <ui_program_save_path.constprop.0+0xdc>
d03e1b88:	4823      	ldr	r0, [pc, #140]	; (d03e1c18 <ui_program_save_path.constprop.0+0x164>)
d03e1b8a:	e7a9      	b.n	d03e1ae0 <ui_program_save_path.constprop.0+0x2c>
d03e1b8c:	2460      	movs	r4, #96	; 0x60
d03e1b8e:	e7d3      	b.n	d03e1b38 <ui_program_save_path.constprop.0+0x84>
d03e1b90:	7923      	ldrb	r3, [r4, #4]
d03e1b92:	2001      	movs	r0, #1
d03e1b94:	7962      	ldrb	r2, [r4, #5]
d03e1b96:	6831      	ldr	r1, [r6, #0]
d03e1b98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1b9c:	79a2      	ldrb	r2, [r4, #6]
d03e1b9e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1ba2:	79e2      	ldrb	r2, [r4, #7]
d03e1ba4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1ba8:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03e1bac:	681b      	ldr	r3, [r3, #0]
d03e1bae:	691f      	ldr	r7, [r3, #16]
d03e1bb0:	ab01      	add	r3, sp, #4
d03e1bb2:	47b8      	blx	r7
d03e1bb4:	7923      	ldrb	r3, [r4, #4]
d03e1bb6:	7962      	ldrb	r2, [r4, #5]
d03e1bb8:	4606      	mov	r6, r0
d03e1bba:	2001      	movs	r0, #1
d03e1bbc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1bc0:	79a2      	ldrb	r2, [r4, #6]
d03e1bc2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1bc6:	79e2      	ldrb	r2, [r4, #7]
d03e1bc8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1bcc:	681b      	ldr	r3, [r3, #0]
d03e1bce:	68db      	ldr	r3, [r3, #12]
d03e1bd0:	4798      	blx	r3
d03e1bd2:	b91e      	cbnz	r6, d03e1bdc <ui_program_save_path.constprop.0+0x128>
d03e1bd4:	9b01      	ldr	r3, [sp, #4]
d03e1bd6:	f5b3 7fc7 	cmp.w	r3, #398	; 0x18e
d03e1bda:	d001      	beq.n	d03e1be0 <ui_program_save_path.constprop.0+0x12c>
d03e1bdc:	480f      	ldr	r0, [pc, #60]	; (d03e1c1c <ui_program_save_path.constprop.0+0x168>)
d03e1bde:	e78a      	b.n	d03e1af6 <ui_program_save_path.constprop.0+0x42>
d03e1be0:	480f      	ldr	r0, [pc, #60]	; (d03e1c20 <ui_program_save_path.constprop.0+0x16c>)
d03e1be2:	2501      	movs	r5, #1
d03e1be4:	f7ff fac8 	bl	d03e1178 <ui_set_status>
d03e1be8:	e77d      	b.n	d03e1ae6 <ui_program_save_path.constprop.0+0x32>
d03e1bea:	bf00      	nop
d03e1bec:	d03ec2af 	.word	0xd03ec2af
d03e1bf0:	d03ea164 	.word	0xd03ea164
d03e1bf4:	d03ec460 	.word	0xd03ec460
d03e1bf8:	d03e9a7c 	.word	0xd03e9a7c
d03e1bfc:	d03ec2da 	.word	0xd03ec2da
d03e1c00:	d03e8b39 	.word	0xd03e8b39
d03e1c04:	d03ec280 	.word	0xd03ec280
d03e1c08:	d03e8b4f 	.word	0xd03e8b4f
d03e1c0c:	d03e8b6b 	.word	0xd03e8b6b
d03e1c10:	2001f000 	.word	0x2001f000
d03e1c14:	d03ec213 	.word	0xd03ec213
d03e1c18:	d03e8b73 	.word	0xd03e8b73
d03e1c1c:	d03e8b8c 	.word	0xd03e8b8c
d03e1c20:	d03e8ba6 	.word	0xd03e8ba6

d03e1c24 <ui_file_make_path.constprop.0>:
d03e1c24:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e1c26:	4b0e      	ldr	r3, [pc, #56]	; (d03e1c60 <ui_file_make_path.constprop.0+0x3c>)
d03e1c28:	4604      	mov	r4, r0
d03e1c2a:	4d0e      	ldr	r5, [pc, #56]	; (d03e1c64 <ui_file_make_path.constprop.0+0x40>)
d03e1c2c:	2902      	cmp	r1, #2
d03e1c2e:	bf08      	it	eq
d03e1c30:	461d      	moveq	r5, r3
d03e1c32:	4629      	mov	r1, r5
d03e1c34:	f7ff fab2 	bl	d03e119c <ui_name_has_ext>
d03e1c38:	b140      	cbz	r0, d03e1c4c <ui_file_make_path.constprop.0+0x28>
d03e1c3a:	4b0b      	ldr	r3, [pc, #44]	; (d03e1c68 <ui_file_make_path.constprop.0+0x44>)
d03e1c3c:	2160      	movs	r1, #96	; 0x60
d03e1c3e:	4a0b      	ldr	r2, [pc, #44]	; (d03e1c6c <ui_file_make_path.constprop.0+0x48>)
d03e1c40:	480b      	ldr	r0, [pc, #44]	; (d03e1c70 <ui_file_make_path.constprop.0+0x4c>)
d03e1c42:	9400      	str	r4, [sp, #0]
d03e1c44:	f005 fd4a 	bl	d03e76dc <sniprintf>
d03e1c48:	b003      	add	sp, #12
d03e1c4a:	bd30      	pop	{r4, r5, pc}
d03e1c4c:	4b06      	ldr	r3, [pc, #24]	; (d03e1c68 <ui_file_make_path.constprop.0+0x44>)
d03e1c4e:	2160      	movs	r1, #96	; 0x60
d03e1c50:	4a08      	ldr	r2, [pc, #32]	; (d03e1c74 <ui_file_make_path.constprop.0+0x50>)
d03e1c52:	4807      	ldr	r0, [pc, #28]	; (d03e1c70 <ui_file_make_path.constprop.0+0x4c>)
d03e1c54:	e9cd 4500 	strd	r4, r5, [sp]
d03e1c58:	f005 fd40 	bl	d03e76dc <sniprintf>
d03e1c5c:	e7f4      	b.n	d03e1c48 <ui_file_make_path.constprop.0+0x24>
d03e1c5e:	bf00      	nop
d03e1c60:	d03e8a5c 	.word	0xd03e8a5c
d03e1c64:	d03e8a61 	.word	0xd03e8a61
d03e1c68:	d03e8a66 	.word	0xd03e8a66
d03e1c6c:	d03e8bb4 	.word	0xd03e8bb4
d03e1c70:	d03ec213 	.word	0xd03ec213
d03e1c74:	d03e8bba 	.word	0xd03e8bba

d03e1c78 <ui_keyboard_commit_save>:
d03e1c78:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e1c7a:	4604      	mov	r4, r0
d03e1c7c:	481d      	ldr	r0, [pc, #116]	; (d03e1cf4 <ui_keyboard_commit_save+0x7c>)
d03e1c7e:	7803      	ldrb	r3, [r0, #0]
d03e1c80:	b923      	cbnz	r3, d03e1c8c <ui_keyboard_commit_save+0x14>
d03e1c82:	481d      	ldr	r0, [pc, #116]	; (d03e1cf8 <ui_keyboard_commit_save+0x80>)
d03e1c84:	f7ff fa78 	bl	d03e1178 <ui_set_status>
d03e1c88:	b003      	add	sp, #12
d03e1c8a:	bd30      	pop	{r4, r5, pc}
d03e1c8c:	4b1b      	ldr	r3, [pc, #108]	; (d03e1cfc <ui_keyboard_commit_save+0x84>)
d03e1c8e:	4621      	mov	r1, r4
d03e1c90:	4d1b      	ldr	r5, [pc, #108]	; (d03e1d00 <ui_keyboard_commit_save+0x88>)
d03e1c92:	701c      	strb	r4, [r3, #0]
d03e1c94:	f7ff ffc6 	bl	d03e1c24 <ui_file_make_path.constprop.0>
d03e1c98:	4a1a      	ldr	r2, [pc, #104]	; (d03e1d04 <ui_keyboard_commit_save+0x8c>)
d03e1c9a:	2300      	movs	r3, #0
d03e1c9c:	481a      	ldr	r0, [pc, #104]	; (d03e1d08 <ui_keyboard_commit_save+0x90>)
d03e1c9e:	e9cd 3300 	strd	r3, r3, [sp]
d03e1ca2:	7913      	ldrb	r3, [r2, #4]
d03e1ca4:	7951      	ldrb	r1, [r2, #5]
d03e1ca6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e1caa:	7991      	ldrb	r1, [r2, #6]
d03e1cac:	79d2      	ldrb	r2, [r2, #7]
d03e1cae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e1cb2:	4669      	mov	r1, sp
d03e1cb4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1cb8:	aa01      	add	r2, sp, #4
d03e1cba:	681b      	ldr	r3, [r3, #0]
d03e1cbc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03e1cbe:	4798      	blx	r3
d03e1cc0:	b940      	cbnz	r0, d03e1cd4 <ui_keyboard_commit_save+0x5c>
d03e1cc2:	9b00      	ldr	r3, [sp, #0]
d03e1cc4:	07db      	lsls	r3, r3, #31
d03e1cc6:	d405      	bmi.n	d03e1cd4 <ui_keyboard_commit_save+0x5c>
d03e1cc8:	4b10      	ldr	r3, [pc, #64]	; (d03e1d0c <ui_keyboard_commit_save+0x94>)
d03e1cca:	2203      	movs	r2, #3
d03e1ccc:	701a      	strb	r2, [r3, #0]
d03e1cce:	2301      	movs	r3, #1
d03e1cd0:	702b      	strb	r3, [r5, #0]
d03e1cd2:	e7d9      	b.n	d03e1c88 <ui_keyboard_commit_save+0x10>
d03e1cd4:	2c02      	cmp	r4, #2
d03e1cd6:	d109      	bne.n	d03e1cec <ui_keyboard_commit_save+0x74>
d03e1cd8:	f7ff fe16 	bl	d03e1908 <ui_project_save_path.constprop.0>
d03e1cdc:	2800      	cmp	r0, #0
d03e1cde:	d0f6      	beq.n	d03e1cce <ui_keyboard_commit_save+0x56>
d03e1ce0:	4b0a      	ldr	r3, [pc, #40]	; (d03e1d0c <ui_keyboard_commit_save+0x94>)
d03e1ce2:	2200      	movs	r2, #0
d03e1ce4:	701a      	strb	r2, [r3, #0]
d03e1ce6:	f7ff fab5 	bl	d03e1254 <ui_file_refresh>
d03e1cea:	e7f0      	b.n	d03e1cce <ui_keyboard_commit_save+0x56>
d03e1cec:	f7ff fee2 	bl	d03e1ab4 <ui_program_save_path.constprop.0>
d03e1cf0:	e7f4      	b.n	d03e1cdc <ui_keyboard_commit_save+0x64>
d03e1cf2:	bf00      	nop
d03e1cf4:	d03ec28f 	.word	0xd03ec28f
d03e1cf8:	d03e8bc2 	.word	0xd03e8bc2
d03e1cfc:	d03ec28e 	.word	0xd03ec28e
d03e1d00:	d03eb4d4 	.word	0xd03eb4d4
d03e1d04:	2001f000 	.word	0x2001f000
d03e1d08:	d03ec213 	.word	0xd03ec213
d03e1d0c:	d03ebdc8 	.word	0xd03ebdc8

d03e1d10 <ui_load_selected_file>:
d03e1d10:	4b9f      	ldr	r3, [pc, #636]	; (d03e1f90 <ui_load_selected_file+0x280>)
d03e1d12:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e1d16:	781a      	ldrb	r2, [r3, #0]
d03e1d18:	4606      	mov	r6, r0
d03e1d1a:	b11a      	cbz	r2, d03e1d24 <ui_load_selected_file+0x14>
d03e1d1c:	4b9d      	ldr	r3, [pc, #628]	; (d03e1f94 <ui_load_selected_file+0x284>)
d03e1d1e:	781b      	ldrb	r3, [r3, #0]
d03e1d20:	429a      	cmp	r2, r3
d03e1d22:	d805      	bhi.n	d03e1d30 <ui_load_selected_file+0x20>
d03e1d24:	489c      	ldr	r0, [pc, #624]	; (d03e1f98 <ui_load_selected_file+0x288>)
d03e1d26:	f7ff fa27 	bl	d03e1178 <ui_set_status>
d03e1d2a:	b003      	add	sp, #12
d03e1d2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e1d30:	4d9a      	ldr	r5, [pc, #616]	; (d03e1f9c <ui_load_selected_file+0x28c>)
d03e1d32:	eb05 1543 	add.w	r5, r5, r3, lsl #5
d03e1d36:	4628      	mov	r0, r5
d03e1d38:	f7ff fa5a 	bl	d03e11f0 <ui_file_kind_from_name>
d03e1d3c:	42b0      	cmp	r0, r6
d03e1d3e:	4604      	mov	r4, r0
d03e1d40:	d005      	beq.n	d03e1d4e <ui_load_selected_file+0x3e>
d03e1d42:	4897      	ldr	r0, [pc, #604]	; (d03e1fa0 <ui_load_selected_file+0x290>)
d03e1d44:	4b97      	ldr	r3, [pc, #604]	; (d03e1fa4 <ui_load_selected_file+0x294>)
d03e1d46:	2e02      	cmp	r6, #2
d03e1d48:	bf18      	it	ne
d03e1d4a:	4618      	movne	r0, r3
d03e1d4c:	e7eb      	b.n	d03e1d26 <ui_load_selected_file+0x16>
d03e1d4e:	4601      	mov	r1, r0
d03e1d50:	4628      	mov	r0, r5
d03e1d52:	f7ff ff67 	bl	d03e1c24 <ui_file_make_path.constprop.0>
d03e1d56:	2c02      	cmp	r4, #2
d03e1d58:	f040 80ba 	bne.w	d03e1ed0 <ui_load_selected_file+0x1c0>
d03e1d5c:	4f92      	ldr	r7, [pc, #584]	; (d03e1fa8 <ui_load_selected_file+0x298>)
d03e1d5e:	2100      	movs	r1, #0
d03e1d60:	6838      	ldr	r0, [r7, #0]
d03e1d62:	9101      	str	r1, [sp, #4]
d03e1d64:	b110      	cbz	r0, d03e1d6c <ui_load_selected_file+0x5c>
d03e1d66:	4e91      	ldr	r6, [pc, #580]	; (d03e1fac <ui_load_selected_file+0x29c>)
d03e1d68:	6833      	ldr	r3, [r6, #0]
d03e1d6a:	b933      	cbnz	r3, d03e1d7a <ui_load_selected_file+0x6a>
d03e1d6c:	4890      	ldr	r0, [pc, #576]	; (d03e1fb0 <ui_load_selected_file+0x2a0>)
d03e1d6e:	f7ff fa03 	bl	d03e1178 <ui_set_status>
d03e1d72:	4b90      	ldr	r3, [pc, #576]	; (d03e1fb4 <ui_load_selected_file+0x2a4>)
d03e1d74:	2201      	movs	r2, #1
d03e1d76:	701a      	strb	r2, [r3, #0]
d03e1d78:	e7d7      	b.n	d03e1d2a <ui_load_selected_file+0x1a>
d03e1d7a:	4c8f      	ldr	r4, [pc, #572]	; (d03e1fb8 <ui_load_selected_file+0x2a8>)
d03e1d7c:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03e1d80:	f005 fb2c 	bl	d03e73dc <memset>
d03e1d84:	498d      	ldr	r1, [pc, #564]	; (d03e1fbc <ui_load_selected_file+0x2ac>)
d03e1d86:	7923      	ldrb	r3, [r4, #4]
d03e1d88:	7962      	ldrb	r2, [r4, #5]
d03e1d8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1d8e:	79a2      	ldrb	r2, [r4, #6]
d03e1d90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1d94:	79e2      	ldrb	r2, [r4, #7]
d03e1d96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1d9a:	2201      	movs	r2, #1
d03e1d9c:	681b      	ldr	r3, [r3, #0]
d03e1d9e:	4610      	mov	r0, r2
d03e1da0:	681b      	ldr	r3, [r3, #0]
d03e1da2:	4798      	blx	r3
d03e1da4:	b108      	cbz	r0, d03e1daa <ui_load_selected_file+0x9a>
d03e1da6:	4886      	ldr	r0, [pc, #536]	; (d03e1fc0 <ui_load_selected_file+0x2b0>)
d03e1da8:	e7e1      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1daa:	7923      	ldrb	r3, [r4, #4]
d03e1dac:	2001      	movs	r0, #1
d03e1dae:	7962      	ldrb	r2, [r4, #5]
d03e1db0:	6839      	ldr	r1, [r7, #0]
d03e1db2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1db6:	79a2      	ldrb	r2, [r4, #6]
d03e1db8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1dbc:	79e2      	ldrb	r2, [r4, #7]
d03e1dbe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1dc2:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03e1dc6:	681b      	ldr	r3, [r3, #0]
d03e1dc8:	689d      	ldr	r5, [r3, #8]
d03e1dca:	ab01      	add	r3, sp, #4
d03e1dcc:	47a8      	blx	r5
d03e1dce:	7923      	ldrb	r3, [r4, #4]
d03e1dd0:	7962      	ldrb	r2, [r4, #5]
d03e1dd2:	4605      	mov	r5, r0
d03e1dd4:	2001      	movs	r0, #1
d03e1dd6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1dda:	79a2      	ldrb	r2, [r4, #6]
d03e1ddc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1de0:	79e2      	ldrb	r2, [r4, #7]
d03e1de2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1de6:	681b      	ldr	r3, [r3, #0]
d03e1de8:	68db      	ldr	r3, [r3, #12]
d03e1dea:	4798      	blx	r3
d03e1dec:	b965      	cbnz	r5, d03e1e08 <ui_load_selected_file+0xf8>
d03e1dee:	9b01      	ldr	r3, [sp, #4]
d03e1df0:	2b1f      	cmp	r3, #31
d03e1df2:	d909      	bls.n	d03e1e08 <ui_load_selected_file+0xf8>
d03e1df4:	683c      	ldr	r4, [r7, #0]
d03e1df6:	2207      	movs	r2, #7
d03e1df8:	4972      	ldr	r1, [pc, #456]	; (d03e1fc4 <ui_load_selected_file+0x2b4>)
d03e1dfa:	4620      	mov	r0, r4
d03e1dfc:	f005 fad2 	bl	d03e73a4 <memcmp>
d03e1e00:	b910      	cbnz	r0, d03e1e08 <ui_load_selected_file+0xf8>
d03e1e02:	8923      	ldrh	r3, [r4, #8]
d03e1e04:	2b01      	cmp	r3, #1
d03e1e06:	d901      	bls.n	d03e1e0c <ui_load_selected_file+0xfc>
d03e1e08:	486f      	ldr	r0, [pc, #444]	; (d03e1fc8 <ui_load_selected_file+0x2b8>)
d03e1e0a:	e7b0      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1e0c:	f104 010c 	add.w	r1, r4, #12
d03e1e10:	2210      	movs	r2, #16
d03e1e12:	486e      	ldr	r0, [pc, #440]	; (d03e1fcc <ui_load_selected_file+0x2bc>)
d03e1e14:	f104 0b42 	add.w	fp, r4, #66	; 0x42
d03e1e18:	f005 fad2 	bl	d03e73c0 <memcpy>
d03e1e1c:	f104 011c 	add.w	r1, r4, #28
d03e1e20:	2210      	movs	r2, #16
d03e1e22:	486b      	ldr	r0, [pc, #428]	; (d03e1fd0 <ui_load_selected_file+0x2c0>)
d03e1e24:	f005 facc 	bl	d03e73c0 <memcpy>
d03e1e28:	f104 012c 	add.w	r1, r4, #44	; 0x2c
d03e1e2c:	2210      	movs	r2, #16
d03e1e2e:	4869      	ldr	r0, [pc, #420]	; (d03e1fd4 <ui_load_selected_file+0x2c4>)
d03e1e30:	f005 fac6 	bl	d03e73c0 <memcpy>
d03e1e34:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
d03e1e36:	4b68      	ldr	r3, [pc, #416]	; (d03e1fd8 <ui_load_selected_file+0x2c8>)
d03e1e38:	34c2      	adds	r4, #194	; 0xc2
d03e1e3a:	f8df a1d0 	ldr.w	sl, [pc, #464]	; d03e200c <ui_load_selected_file+0x2fc>
d03e1e3e:	801a      	strh	r2, [r3, #0]
d03e1e40:	f834 2c84 	ldrh.w	r2, [r4, #-132]
d03e1e44:	4b65      	ldr	r3, [pc, #404]	; (d03e1fdc <ui_load_selected_file+0x2cc>)
d03e1e46:	801a      	strh	r2, [r3, #0]
d03e1e48:	f814 3c82 	ldrb.w	r3, [r4, #-130]
d03e1e4c:	4a64      	ldr	r2, [pc, #400]	; (d03e1fe0 <ui_load_selected_file+0x2d0>)
d03e1e4e:	3b00      	subs	r3, #0
d03e1e50:	bf18      	it	ne
d03e1e52:	2301      	movne	r3, #1
d03e1e54:	7013      	strb	r3, [r2, #0]
d03e1e56:	f814 3c81 	ldrb.w	r3, [r4, #-129]
d03e1e5a:	2b0f      	cmp	r3, #15
d03e1e5c:	bf98      	it	ls
d03e1e5e:	461d      	movls	r5, r3
d03e1e60:	4b60      	ldr	r3, [pc, #384]	; (d03e1fe4 <ui_load_selected_file+0x2d4>)
d03e1e62:	701d      	strb	r5, [r3, #0]
d03e1e64:	08ad      	lsrs	r5, r5, #2
d03e1e66:	4b60      	ldr	r3, [pc, #384]	; (d03e1fe8 <ui_load_selected_file+0x2d8>)
d03e1e68:	701d      	strb	r5, [r3, #0]
d03e1e6a:	2500      	movs	r5, #0
d03e1e6c:	f7ff f8ba 	bl	d03e0fe4 <ui_vm_editor_clear_ram_patch>
d03e1e70:	f81b 9b01 	ldrb.w	r9, [fp], #1
d03e1e74:	f04f 0800 	mov.w	r8, #0
d03e1e78:	f109 32ff 	add.w	r2, r9, #4294967295	; 0xffffffff
d03e1e7c:	2a5f      	cmp	r2, #95	; 0x5f
d03e1e7e:	bf88      	it	hi
d03e1e80:	f04f 0960 	movhi.w	r9, #96	; 0x60
d03e1e84:	6837      	ldr	r7, [r6, #0]
d03e1e86:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d03e1e8a:	2204      	movs	r2, #4
d03e1e8c:	442f      	add	r7, r5
d03e1e8e:	eb07 0088 	add.w	r0, r7, r8, lsl #2
d03e1e92:	f108 0801 	add.w	r8, r8, #1
d03e1e96:	f005 fa93 	bl	d03e73c0 <memcpy>
d03e1e9a:	2300      	movs	r3, #0
d03e1e9c:	fa5f f288 	uxtb.w	r2, r8
d03e1ea0:	4591      	cmp	r9, r2
d03e1ea2:	d8ef      	bhi.n	d03e1e84 <ui_load_selected_file+0x174>
d03e1ea4:	f505 75c0 	add.w	r5, r5, #384	; 0x180
d03e1ea8:	f887 317c 	strb.w	r3, [r7, #380]	; 0x17c
d03e1eac:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03e1eb0:	f84a 7b04 	str.w	r7, [sl], #4
d03e1eb4:	f5b5 4f40 	cmp.w	r5, #49152	; 0xc000
d03e1eb8:	d1da      	bne.n	d03e1e70 <ui_load_selected_file+0x160>
d03e1eba:	f7ff fa8f 	bl	d03e13dc <sid_midi_all_notes_off>
d03e1ebe:	f7ff f937 	bl	d03e1130 <midi_update_all_active_volume>
d03e1ec2:	484a      	ldr	r0, [pc, #296]	; (d03e1fec <ui_load_selected_file+0x2dc>)
d03e1ec4:	f7ff f958 	bl	d03e1178 <ui_set_status>
d03e1ec8:	4b49      	ldr	r3, [pc, #292]	; (d03e1ff0 <ui_load_selected_file+0x2e0>)
d03e1eca:	2200      	movs	r2, #0
d03e1ecc:	701a      	strb	r2, [r3, #0]
d03e1ece:	e750      	b.n	d03e1d72 <ui_load_selected_file+0x62>
d03e1ed0:	4b44      	ldr	r3, [pc, #272]	; (d03e1fe4 <ui_load_selected_file+0x2d4>)
d03e1ed2:	2100      	movs	r1, #0
d03e1ed4:	4a3d      	ldr	r2, [pc, #244]	; (d03e1fcc <ui_load_selected_file+0x2bc>)
d03e1ed6:	781b      	ldrb	r3, [r3, #0]
d03e1ed8:	9101      	str	r1, [sp, #4]
d03e1eda:	5cd5      	ldrb	r5, [r2, r3]
d03e1edc:	56d3      	ldrsb	r3, [r2, r3]
d03e1ede:	428b      	cmp	r3, r1
d03e1ee0:	da01      	bge.n	d03e1ee6 <ui_load_selected_file+0x1d6>
d03e1ee2:	4844      	ldr	r0, [pc, #272]	; (d03e1ff4 <ui_load_selected_file+0x2e4>)
d03e1ee4:	e743      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1ee6:	4e44      	ldr	r6, [pc, #272]	; (d03e1ff8 <ui_load_selected_file+0x2e8>)
d03e1ee8:	6830      	ldr	r0, [r6, #0]
d03e1eea:	b908      	cbnz	r0, d03e1ef0 <ui_load_selected_file+0x1e0>
d03e1eec:	4843      	ldr	r0, [pc, #268]	; (d03e1ffc <ui_load_selected_file+0x2ec>)
d03e1eee:	e73e      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1ef0:	4c31      	ldr	r4, [pc, #196]	; (d03e1fb8 <ui_load_selected_file+0x2a8>)
d03e1ef2:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03e1ef6:	f005 fa71 	bl	d03e73dc <memset>
d03e1efa:	4930      	ldr	r1, [pc, #192]	; (d03e1fbc <ui_load_selected_file+0x2ac>)
d03e1efc:	7923      	ldrb	r3, [r4, #4]
d03e1efe:	7962      	ldrb	r2, [r4, #5]
d03e1f00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1f04:	79a2      	ldrb	r2, [r4, #6]
d03e1f06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1f0a:	79e2      	ldrb	r2, [r4, #7]
d03e1f0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1f10:	2201      	movs	r2, #1
d03e1f12:	681b      	ldr	r3, [r3, #0]
d03e1f14:	4610      	mov	r0, r2
d03e1f16:	681b      	ldr	r3, [r3, #0]
d03e1f18:	4798      	blx	r3
d03e1f1a:	b108      	cbz	r0, d03e1f20 <ui_load_selected_file+0x210>
d03e1f1c:	4838      	ldr	r0, [pc, #224]	; (d03e2000 <ui_load_selected_file+0x2f0>)
d03e1f1e:	e726      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1f20:	7923      	ldrb	r3, [r4, #4]
d03e1f22:	2001      	movs	r0, #1
d03e1f24:	7962      	ldrb	r2, [r4, #5]
d03e1f26:	6831      	ldr	r1, [r6, #0]
d03e1f28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1f2c:	79a2      	ldrb	r2, [r4, #6]
d03e1f2e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1f32:	79e2      	ldrb	r2, [r4, #7]
d03e1f34:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1f38:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03e1f3c:	681b      	ldr	r3, [r3, #0]
d03e1f3e:	689f      	ldr	r7, [r3, #8]
d03e1f40:	ab01      	add	r3, sp, #4
d03e1f42:	47b8      	blx	r7
d03e1f44:	7923      	ldrb	r3, [r4, #4]
d03e1f46:	7962      	ldrb	r2, [r4, #5]
d03e1f48:	4607      	mov	r7, r0
d03e1f4a:	2001      	movs	r0, #1
d03e1f4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e1f50:	79a2      	ldrb	r2, [r4, #6]
d03e1f52:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e1f56:	79e2      	ldrb	r2, [r4, #7]
d03e1f58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e1f5c:	681b      	ldr	r3, [r3, #0]
d03e1f5e:	68db      	ldr	r3, [r3, #12]
d03e1f60:	4798      	blx	r3
d03e1f62:	b997      	cbnz	r7, d03e1f8a <ui_load_selected_file+0x27a>
d03e1f64:	9b01      	ldr	r3, [sp, #4]
d03e1f66:	2b1f      	cmp	r3, #31
d03e1f68:	d90f      	bls.n	d03e1f8a <ui_load_selected_file+0x27a>
d03e1f6a:	6834      	ldr	r4, [r6, #0]
d03e1f6c:	2207      	movs	r2, #7
d03e1f6e:	4925      	ldr	r1, [pc, #148]	; (d03e2004 <ui_load_selected_file+0x2f4>)
d03e1f70:	4620      	mov	r0, r4
d03e1f72:	f005 fa17 	bl	d03e73a4 <memcmp>
d03e1f76:	b940      	cbnz	r0, d03e1f8a <ui_load_selected_file+0x27a>
d03e1f78:	8923      	ldrh	r3, [r4, #8]
d03e1f7a:	2b01      	cmp	r3, #1
d03e1f7c:	d805      	bhi.n	d03e1f8a <ui_load_selected_file+0x27a>
d03e1f7e:	f894 900d 	ldrb.w	r9, [r4, #13]
d03e1f82:	f109 33ff 	add.w	r3, r9, #4294967295	; 0xffffffff
d03e1f86:	2b5f      	cmp	r3, #95	; 0x5f
d03e1f88:	d942      	bls.n	d03e2010 <ui_load_selected_file+0x300>
d03e1f8a:	481f      	ldr	r0, [pc, #124]	; (d03e2008 <ui_load_selected_file+0x2f8>)
d03e1f8c:	e6ef      	b.n	d03e1d6e <ui_load_selected_file+0x5e>
d03e1f8e:	bf00      	nop
d03e1f90:	d03ebe0c 	.word	0xd03ebe0c
d03e1f94:	d03ec20e 	.word	0xd03ec20e
d03e1f98:	d03e8c00 	.word	0xd03e8c00
d03e1f9c:	d03ebe0d 	.word	0xd03ebe0d
d03e1fa0:	d03e8bd4 	.word	0xd03e8bd4
d03e1fa4:	d03e8bea 	.word	0xd03e8bea
d03e1fa8:	d03ec284 	.word	0xd03ec284
d03e1fac:	d03ec27c 	.word	0xd03ec27c
d03e1fb0:	d03e8c11 	.word	0xd03e8c11
d03e1fb4:	d03eb4d4 	.word	0xd03eb4d4
d03e1fb8:	2001f000 	.word	0x2001f000
d03e1fbc:	d03ec213 	.word	0xd03ec213
d03e1fc0:	d03e8c2d 	.word	0xd03e8c2d
d03e1fc4:	d03e8af0 	.word	0xd03e8af0
d03e1fc8:	d03e8c46 	.word	0xd03e8c46
d03e1fcc:	d03ea164 	.word	0xd03ea164
d03e1fd0:	d03ea174 	.word	0xd03ea174
d03e1fd4:	d03ea154 	.word	0xd03ea154
d03e1fd8:	d03ea38e 	.word	0xd03ea38e
d03e1fdc:	d03ea18a 	.word	0xd03ea18a
d03e1fe0:	d03ea188 	.word	0xd03ea188
d03e1fe4:	d03ec2af 	.word	0xd03ec2af
d03e1fe8:	d03ebdc6 	.word	0xd03ebdc6
d03e1fec:	d03e8c57 	.word	0xd03e8c57
d03e1ff0:	d03ebdc8 	.word	0xd03ebdc8
d03e1ff4:	d03e8c66 	.word	0xd03e8c66
d03e1ff8:	d03ec280 	.word	0xd03ec280
d03e1ffc:	d03e8c80 	.word	0xd03e8c80
d03e2000:	d03e8c9c 	.word	0xd03e8c9c
d03e2004:	d03e8b6b 	.word	0xd03e8b6b
d03e2008:	d03e8cb5 	.word	0xd03e8cb5
d03e200c:	d03e9a7c 	.word	0xd03e9a7c
d03e2010:	4f17      	ldr	r7, [pc, #92]	; (d03e2070 <ui_load_selected_file+0x360>)
d03e2012:	f7fe ffe7 	bl	d03e0fe4 <ui_vm_editor_clear_ram_patch>
d03e2016:	4b17      	ldr	r3, [pc, #92]	; (d03e2074 <ui_load_selected_file+0x364>)
d03e2018:	2600      	movs	r6, #0
d03e201a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
d03e201e:	340e      	adds	r4, #14
d03e2020:	f8df 8054 	ldr.w	r8, [pc, #84]	; d03e2078 <ui_load_selected_file+0x368>
d03e2024:	2100      	movs	r1, #0
d03e2026:	601a      	str	r2, [r3, #0]
d03e2028:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e202c:	4812      	ldr	r0, [pc, #72]	; (d03e2078 <ui_load_selected_file+0x368>)
d03e202e:	f005 f9d5 	bl	d03e73dc <memset>
d03e2032:	eb04 0186 	add.w	r1, r4, r6, lsl #2
d03e2036:	2204      	movs	r2, #4
d03e2038:	eb08 0086 	add.w	r0, r8, r6, lsl #2
d03e203c:	3601      	adds	r6, #1
d03e203e:	f005 f9bf 	bl	d03e73c0 <memcpy>
d03e2042:	b2f3      	uxtb	r3, r6
d03e2044:	4599      	cmp	r9, r3
d03e2046:	d8f4      	bhi.n	d03e2032 <ui_load_selected_file+0x322>
d03e2048:	4a0c      	ldr	r2, [pc, #48]	; (d03e207c <ui_load_selected_file+0x36c>)
d03e204a:	2101      	movs	r1, #1
d03e204c:	2300      	movs	r3, #0
d03e204e:	f847 8025 	str.w	r8, [r7, r5, lsl #2]
d03e2052:	7015      	strb	r5, [r2, #0]
d03e2054:	4a0a      	ldr	r2, [pc, #40]	; (d03e2080 <ui_load_selected_file+0x370>)
d03e2056:	f888 317c 	strb.w	r3, [r8, #380]	; 0x17c
d03e205a:	7011      	strb	r1, [r2, #0]
d03e205c:	4a09      	ldr	r2, [pc, #36]	; (d03e2084 <ui_load_selected_file+0x374>)
d03e205e:	7013      	strb	r3, [r2, #0]
d03e2060:	4a09      	ldr	r2, [pc, #36]	; (d03e2088 <ui_load_selected_file+0x378>)
d03e2062:	7013      	strb	r3, [r2, #0]
d03e2064:	4a09      	ldr	r2, [pc, #36]	; (d03e208c <ui_load_selected_file+0x37c>)
d03e2066:	7013      	strb	r3, [r2, #0]
d03e2068:	f7ff f9b8 	bl	d03e13dc <sid_midi_all_notes_off>
d03e206c:	4808      	ldr	r0, [pc, #32]	; (d03e2090 <ui_load_selected_file+0x380>)
d03e206e:	e729      	b.n	d03e1ec4 <ui_load_selected_file+0x1b4>
d03e2070:	d03e9a7c 	.word	0xd03e9a7c
d03e2074:	d03ec45c 	.word	0xd03ec45c
d03e2078:	d03ec2da 	.word	0xd03ec2da
d03e207c:	d03ec460 	.word	0xd03ec460
d03e2080:	d03ec45b 	.word	0xd03ec45b
d03e2084:	d03ec461 	.word	0xd03ec461
d03e2088:	d03ec45a 	.word	0xd03ec45a
d03e208c:	d03ec469 	.word	0xd03ec469
d03e2090:	d03e8cc6 	.word	0xd03e8cc6

d03e2094 <ui_event_push.constprop.0>:
d03e2094:	b530      	push	{r4, r5, lr}
d03e2096:	4c09      	ldr	r4, [pc, #36]	; (d03e20bc <ui_event_push.constprop.0+0x28>)
d03e2098:	4a09      	ldr	r2, [pc, #36]	; (d03e20c0 <ui_event_push.constprop.0+0x2c>)
d03e209a:	7821      	ldrb	r1, [r4, #0]
d03e209c:	7812      	ldrb	r2, [r2, #0]
d03e209e:	1c4b      	adds	r3, r1, #1
d03e20a0:	f003 030f 	and.w	r3, r3, #15
d03e20a4:	429a      	cmp	r2, r3
d03e20a6:	d007      	beq.n	d03e20b8 <ui_event_push.constprop.0+0x24>
d03e20a8:	4a06      	ldr	r2, [pc, #24]	; (d03e20c4 <ui_event_push.constprop.0+0x30>)
d03e20aa:	2501      	movs	r5, #1
d03e20ac:	7023      	strb	r3, [r4, #0]
d03e20ae:	f802 5021 	strb.w	r5, [r2, r1, lsl #2]
d03e20b2:	eb02 0281 	add.w	r2, r2, r1, lsl #2
d03e20b6:	8050      	strh	r0, [r2, #2]
d03e20b8:	bd30      	pop	{r4, r5, pc}
d03e20ba:	bf00      	nop
d03e20bc:	d03ebdc9 	.word	0xd03ebdc9
d03e20c0:	d03ebe0a 	.word	0xd03ebe0a
d03e20c4:	d03ebdca 	.word	0xd03ebdca

d03e20c8 <midi_rx_byte>:
d03e20c8:	b538      	push	{r3, r4, r5, lr}
d03e20ca:	0603      	lsls	r3, r0, #24
d03e20cc:	d522      	bpl.n	d03e2114 <midi_rx_byte+0x4c>
d03e20ce:	28f7      	cmp	r0, #247	; 0xf7
d03e20d0:	d81d      	bhi.n	d03e210e <midi_rx_byte+0x46>
d03e20d2:	28f0      	cmp	r0, #240	; 0xf0
d03e20d4:	4c41      	ldr	r4, [pc, #260]	; (d03e21dc <midi_rx_byte+0x114>)
d03e20d6:	4942      	ldr	r1, [pc, #264]	; (d03e21e0 <midi_rx_byte+0x118>)
d03e20d8:	4a42      	ldr	r2, [pc, #264]	; (d03e21e4 <midi_rx_byte+0x11c>)
d03e20da:	d106      	bne.n	d03e20ea <midi_rx_byte+0x22>
d03e20dc:	2301      	movs	r3, #1
d03e20de:	4842      	ldr	r0, [pc, #264]	; (d03e21e8 <midi_rx_byte+0x120>)
d03e20e0:	7023      	strb	r3, [r4, #0]
d03e20e2:	2300      	movs	r3, #0
d03e20e4:	7003      	strb	r3, [r0, #0]
d03e20e6:	700b      	strb	r3, [r1, #0]
d03e20e8:	e010      	b.n	d03e210c <midi_rx_byte+0x44>
d03e20ea:	2300      	movs	r3, #0
d03e20ec:	28f7      	cmp	r0, #247	; 0xf7
d03e20ee:	7023      	strb	r3, [r4, #0]
d03e20f0:	d0f9      	beq.n	d03e20e6 <midi_rx_byte+0x1e>
d03e20f2:	28ef      	cmp	r0, #239	; 0xef
d03e20f4:	4c3c      	ldr	r4, [pc, #240]	; (d03e21e8 <midi_rx_byte+0x120>)
d03e20f6:	d80b      	bhi.n	d03e2110 <midi_rx_byte+0x48>
d03e20f8:	7008      	strb	r0, [r1, #0]
d03e20fa:	7020      	strb	r0, [r4, #0]
d03e20fc:	f000 00e0 	and.w	r0, r0, #224	; 0xe0
d03e2100:	493a      	ldr	r1, [pc, #232]	; (d03e21ec <midi_rx_byte+0x124>)
d03e2102:	28c0      	cmp	r0, #192	; 0xc0
d03e2104:	bf0c      	ite	eq
d03e2106:	2001      	moveq	r0, #1
d03e2108:	2002      	movne	r0, #2
d03e210a:	7008      	strb	r0, [r1, #0]
d03e210c:	7013      	strb	r3, [r2, #0]
d03e210e:	bd38      	pop	{r3, r4, r5, pc}
d03e2110:	7023      	strb	r3, [r4, #0]
d03e2112:	e7e8      	b.n	d03e20e6 <midi_rx_byte+0x1e>
d03e2114:	4b31      	ldr	r3, [pc, #196]	; (d03e21dc <midi_rx_byte+0x114>)
d03e2116:	781b      	ldrb	r3, [r3, #0]
d03e2118:	2b00      	cmp	r3, #0
d03e211a:	d1f8      	bne.n	d03e210e <midi_rx_byte+0x46>
d03e211c:	4c30      	ldr	r4, [pc, #192]	; (d03e21e0 <midi_rx_byte+0x118>)
d03e211e:	7822      	ldrb	r2, [r4, #0]
d03e2120:	b962      	cbnz	r2, d03e213c <midi_rx_byte+0x74>
d03e2122:	4b31      	ldr	r3, [pc, #196]	; (d03e21e8 <midi_rx_byte+0x120>)
d03e2124:	781b      	ldrb	r3, [r3, #0]
d03e2126:	7023      	strb	r3, [r4, #0]
d03e2128:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
d03e212c:	2bc0      	cmp	r3, #192	; 0xc0
d03e212e:	4b2f      	ldr	r3, [pc, #188]	; (d03e21ec <midi_rx_byte+0x124>)
d03e2130:	bf0c      	ite	eq
d03e2132:	2101      	moveq	r1, #1
d03e2134:	2102      	movne	r1, #2
d03e2136:	7019      	strb	r1, [r3, #0]
d03e2138:	4b2a      	ldr	r3, [pc, #168]	; (d03e21e4 <midi_rx_byte+0x11c>)
d03e213a:	701a      	strb	r2, [r3, #0]
d03e213c:	7821      	ldrb	r1, [r4, #0]
d03e213e:	2900      	cmp	r1, #0
d03e2140:	d0e5      	beq.n	d03e210e <midi_rx_byte+0x46>
d03e2142:	4d28      	ldr	r5, [pc, #160]	; (d03e21e4 <midi_rx_byte+0x11c>)
d03e2144:	782b      	ldrb	r3, [r5, #0]
d03e2146:	2b01      	cmp	r3, #1
d03e2148:	bf9f      	itttt	ls
d03e214a:	1c5a      	addls	r2, r3, #1
d03e214c:	702a      	strbls	r2, [r5, #0]
d03e214e:	4a28      	ldrls	r2, [pc, #160]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e2150:	54d0      	strbls	r0, [r2, r3]
d03e2152:	4b26      	ldr	r3, [pc, #152]	; (d03e21ec <midi_rx_byte+0x124>)
d03e2154:	782a      	ldrb	r2, [r5, #0]
d03e2156:	781b      	ldrb	r3, [r3, #0]
d03e2158:	429a      	cmp	r2, r3
d03e215a:	d3d8      	bcc.n	d03e210e <midi_rx_byte+0x46>
d03e215c:	f001 03f0 	and.w	r3, r1, #240	; 0xf0
d03e2160:	f001 010f 	and.w	r1, r1, #15
d03e2164:	2bb0      	cmp	r3, #176	; 0xb0
d03e2166:	d021      	beq.n	d03e21ac <midi_rx_byte+0xe4>
d03e2168:	d809      	bhi.n	d03e217e <midi_rx_byte+0xb6>
d03e216a:	2b80      	cmp	r3, #128	; 0x80
d03e216c:	d010      	beq.n	d03e2190 <midi_rx_byte+0xc8>
d03e216e:	2b90      	cmp	r3, #144	; 0x90
d03e2170:	d015      	beq.n	d03e219e <midi_rx_byte+0xd6>
d03e2172:	2300      	movs	r3, #0
d03e2174:	702b      	strb	r3, [r5, #0]
d03e2176:	4b1c      	ldr	r3, [pc, #112]	; (d03e21e8 <midi_rx_byte+0x120>)
d03e2178:	781b      	ldrb	r3, [r3, #0]
d03e217a:	7023      	strb	r3, [r4, #0]
d03e217c:	e7c7      	b.n	d03e210e <midi_rx_byte+0x46>
d03e217e:	2bc0      	cmp	r3, #192	; 0xc0
d03e2180:	d027      	beq.n	d03e21d2 <midi_rx_byte+0x10a>
d03e2182:	2be0      	cmp	r3, #224	; 0xe0
d03e2184:	d1f5      	bne.n	d03e2172 <midi_rx_byte+0xaa>
d03e2186:	4a1a      	ldr	r2, [pc, #104]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e2188:	2003      	movs	r0, #3
d03e218a:	7853      	ldrb	r3, [r2, #1]
d03e218c:	7812      	ldrb	r2, [r2, #0]
d03e218e:	e003      	b.n	d03e2198 <midi_rx_byte+0xd0>
d03e2190:	4a17      	ldr	r2, [pc, #92]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e2192:	7853      	ldrb	r3, [r2, #1]
d03e2194:	7812      	ldrb	r2, [r2, #0]
d03e2196:	2000      	movs	r0, #0
d03e2198:	f7ff f97e 	bl	d03e1498 <midi_queue_event>
d03e219c:	e7e9      	b.n	d03e2172 <midi_rx_byte+0xaa>
d03e219e:	4a14      	ldr	r2, [pc, #80]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e21a0:	7853      	ldrb	r3, [r2, #1]
d03e21a2:	7812      	ldrb	r2, [r2, #0]
d03e21a4:	2b00      	cmp	r3, #0
d03e21a6:	d0f6      	beq.n	d03e2196 <midi_rx_byte+0xce>
d03e21a8:	2001      	movs	r0, #1
d03e21aa:	e7f5      	b.n	d03e2198 <midi_rx_byte+0xd0>
d03e21ac:	4b10      	ldr	r3, [pc, #64]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e21ae:	781a      	ldrb	r2, [r3, #0]
d03e21b0:	2a78      	cmp	r2, #120	; 0x78
d03e21b2:	d001      	beq.n	d03e21b8 <midi_rx_byte+0xf0>
d03e21b4:	2a7b      	cmp	r2, #123	; 0x7b
d03e21b6:	d103      	bne.n	d03e21c0 <midi_rx_byte+0xf8>
d03e21b8:	2300      	movs	r3, #0
d03e21ba:	2005      	movs	r0, #5
d03e21bc:	461a      	mov	r2, r3
d03e21be:	e7eb      	b.n	d03e2198 <midi_rx_byte+0xd0>
d03e21c0:	2a07      	cmp	r2, #7
d03e21c2:	d003      	beq.n	d03e21cc <midi_rx_byte+0x104>
d03e21c4:	2a0b      	cmp	r2, #11
d03e21c6:	d001      	beq.n	d03e21cc <midi_rx_byte+0x104>
d03e21c8:	2a79      	cmp	r2, #121	; 0x79
d03e21ca:	d1d2      	bne.n	d03e2172 <midi_rx_byte+0xaa>
d03e21cc:	785b      	ldrb	r3, [r3, #1]
d03e21ce:	2004      	movs	r0, #4
d03e21d0:	e7e2      	b.n	d03e2198 <midi_rx_byte+0xd0>
d03e21d2:	4a07      	ldr	r2, [pc, #28]	; (d03e21f0 <midi_rx_byte+0x128>)
d03e21d4:	2300      	movs	r3, #0
d03e21d6:	2002      	movs	r0, #2
d03e21d8:	7812      	ldrb	r2, [r2, #0]
d03e21da:	e7dd      	b.n	d03e2198 <midi_rx_byte+0xd0>
d03e21dc:	d03ea390 	.word	0xd03ea390
d03e21e0:	d03ea395 	.word	0xd03ea395
d03e21e4:	d03ea391 	.word	0xd03ea391
d03e21e8:	d03ea3a4 	.word	0xd03ea3a4
d03e21ec:	d03ea394 	.word	0xd03ea394
d03e21f0:	d03ea392 	.word	0xd03ea392

d03e21f4 <ui_button_hit>:
d03e21f4:	4b13      	ldr	r3, [pc, #76]	; (d03e2244 <ui_button_hit+0x50>)
d03e21f6:	b5f0      	push	{r4, r5, r6, r7, lr}
d03e21f8:	781b      	ldrb	r3, [r3, #0]
d03e21fa:	4c13      	ldr	r4, [pc, #76]	; (d03e2248 <ui_button_hit+0x54>)
d03e21fc:	3b01      	subs	r3, #1
d03e21fe:	b21a      	sxth	r2, r3
d03e2200:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03e2204:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03e2208:	b215      	sxth	r5, r2
d03e220a:	3501      	adds	r5, #1
d03e220c:	d101      	bne.n	d03e2212 <ui_button_hit+0x1e>
d03e220e:	2000      	movs	r0, #0
d03e2210:	e014      	b.n	d03e223c <ui_button_hit+0x48>
d03e2212:	f9b3 6002 	ldrsh.w	r6, [r3, #2]
d03e2216:	f9b3 5004 	ldrsh.w	r5, [r3, #4]
d03e221a:	4286      	cmp	r6, r0
d03e221c:	f9b3 c006 	ldrsh.w	ip, [r3, #6]
d03e2220:	f9b3 7008 	ldrsh.w	r7, [r3, #8]
d03e2224:	dc0b      	bgt.n	d03e223e <ui_button_hit+0x4a>
d03e2226:	4466      	add	r6, ip
d03e2228:	42b0      	cmp	r0, r6
d03e222a:	da08      	bge.n	d03e223e <ui_button_hit+0x4a>
d03e222c:	428d      	cmp	r5, r1
d03e222e:	dc06      	bgt.n	d03e223e <ui_button_hit+0x4a>
d03e2230:	443d      	add	r5, r7
d03e2232:	42a9      	cmp	r1, r5
d03e2234:	da03      	bge.n	d03e223e <ui_button_hit+0x4a>
d03e2236:	200c      	movs	r0, #12
d03e2238:	fb00 4002 	mla	r0, r0, r2, r4
d03e223c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03e223e:	3a01      	subs	r2, #1
d03e2240:	3b0c      	subs	r3, #12
d03e2242:	e7e1      	b.n	d03e2208 <ui_button_hit+0x14>
d03e2244:	d03eb4dc 	.word	0xd03eb4dc
d03e2248:	d03eb4de 	.word	0xd03eb4de

d03e224c <seq_grid_ticks>:
d03e224c:	b508      	push	{r3, lr}
d03e224e:	f7fe fc91 	bl	d03e0b74 <seq_beat_ticks>
d03e2252:	4a07      	ldr	r2, [pc, #28]	; (d03e2270 <seq_grid_ticks+0x24>)
d03e2254:	4907      	ldr	r1, [pc, #28]	; (d03e2274 <seq_grid_ticks+0x28>)
d03e2256:	0083      	lsls	r3, r0, #2
d03e2258:	7812      	ldrb	r2, [r2, #0]
d03e225a:	f002 0203 	and.w	r2, r2, #3
d03e225e:	5c8a      	ldrb	r2, [r1, r2]
d03e2260:	ebb2 0f80 	cmp.w	r2, r0, lsl #2
d03e2264:	bf94      	ite	ls
d03e2266:	fbb3 f0f2 	udivls	r0, r3, r2
d03e226a:	2001      	movhi	r0, #1
d03e226c:	b280      	uxth	r0, r0
d03e226e:	bd08      	pop	{r3, pc}
d03e2270:	d03eb49b 	.word	0xd03eb49b
d03e2274:	d03e99d8 	.word	0xd03e99d8

d03e2278 <seq_quantize_tick>:
d03e2278:	b510      	push	{r4, lr}
d03e227a:	4604      	mov	r4, r0
d03e227c:	f7ff ffe6 	bl	d03e224c <seq_grid_ticks>
d03e2280:	4b05      	ldr	r3, [pc, #20]	; (d03e2298 <seq_quantize_tick+0x20>)
d03e2282:	781b      	ldrb	r3, [r3, #0]
d03e2284:	b12b      	cbz	r3, d03e2292 <seq_quantize_tick+0x1a>
d03e2286:	f3c0 034f 	ubfx	r3, r0, #1, #16
d03e228a:	441c      	add	r4, r3
d03e228c:	fbb4 f4f0 	udiv	r4, r4, r0
d03e2290:	4344      	muls	r4, r0
d03e2292:	4620      	mov	r0, r4
d03e2294:	bd10      	pop	{r4, pc}
d03e2296:	bf00      	nop
d03e2298:	d03eb49a 	.word	0xd03eb49a

d03e229c <seq_set_position_from_drag>:
d03e229c:	b508      	push	{r3, lr}
d03e229e:	4b0f      	ldr	r3, [pc, #60]	; (d03e22dc <seq_set_position_from_drag+0x40>)
d03e22a0:	4a0f      	ldr	r2, [pc, #60]	; (d03e22e0 <seq_set_position_from_drag+0x44>)
d03e22a2:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e22a6:	6812      	ldr	r2, [r2, #0]
d03e22a8:	1ac0      	subs	r0, r0, r3
d03e22aa:	ea80 73e0 	eor.w	r3, r0, r0, asr #31
d03e22ae:	2800      	cmp	r0, #0
d03e22b0:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d03e22b4:	ea4f 0343 	mov.w	r3, r3, lsl #1
d03e22b8:	db0b      	blt.n	d03e22d2 <seq_set_position_from_drag+0x36>
d03e22ba:	4293      	cmp	r3, r2
d03e22bc:	d80b      	bhi.n	d03e22d6 <seq_set_position_from_drag+0x3a>
d03e22be:	1ad0      	subs	r0, r2, r3
d03e22c0:	f7ff ffda 	bl	d03e2278 <seq_quantize_tick>
d03e22c4:	4b07      	ldr	r3, [pc, #28]	; (d03e22e4 <seq_set_position_from_drag+0x48>)
d03e22c6:	6018      	str	r0, [r3, #0]
d03e22c8:	4b07      	ldr	r3, [pc, #28]	; (d03e22e8 <seq_set_position_from_drag+0x4c>)
d03e22ca:	681a      	ldr	r2, [r3, #0]
d03e22cc:	4b07      	ldr	r3, [pc, #28]	; (d03e22ec <seq_set_position_from_drag+0x50>)
d03e22ce:	601a      	str	r2, [r3, #0]
d03e22d0:	bd08      	pop	{r3, pc}
d03e22d2:	1898      	adds	r0, r3, r2
d03e22d4:	e7f4      	b.n	d03e22c0 <seq_set_position_from_drag+0x24>
d03e22d6:	2000      	movs	r0, #0
d03e22d8:	e7f2      	b.n	d03e22c0 <seq_set_position_from_drag+0x24>
d03e22da:	bf00      	nop
d03e22dc:	d03ea3c0 	.word	0xd03ea3c0
d03e22e0:	d03ea3bc 	.word	0xd03ea3bc
d03e22e4:	d03eb494 	.word	0xd03eb494
d03e22e8:	d03ea3b0 	.word	0xd03ea3b0
d03e22ec:	d03ea3c4 	.word	0xd03ea3c4

d03e22f0 <midi_process_events>:
d03e22f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e22f4:	f8df 8234 	ldr.w	r8, [pc, #564]	; d03e252c <midi_process_events+0x23c>
d03e22f8:	b085      	sub	sp, #20
d03e22fa:	f8df 9234 	ldr.w	r9, [pc, #564]	; d03e2530 <midi_process_events+0x240>
d03e22fe:	4b80      	ldr	r3, [pc, #512]	; (d03e2500 <midi_process_events+0x210>)
d03e2300:	f898 2000 	ldrb.w	r2, [r8]
d03e2304:	781b      	ldrb	r3, [r3, #0]
d03e2306:	429a      	cmp	r2, r3
d03e2308:	d102      	bne.n	d03e2310 <midi_process_events+0x20>
d03e230a:	b005      	add	sp, #20
d03e230c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e2310:	f898 2000 	ldrb.w	r2, [r8]
d03e2314:	4b7b      	ldr	r3, [pc, #492]	; (d03e2504 <midi_process_events+0x214>)
d03e2316:	b2d2      	uxtb	r2, r2
d03e2318:	f813 1022 	ldrb.w	r1, [r3, r2, lsl #2]
d03e231c:	f898 2000 	ldrb.w	r2, [r8]
d03e2320:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03e2324:	7854      	ldrb	r4, [r2, #1]
d03e2326:	f898 2000 	ldrb.w	r2, [r8]
d03e232a:	b2e4      	uxtb	r4, r4
d03e232c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03e2330:	7895      	ldrb	r5, [r2, #2]
d03e2332:	f898 2000 	ldrb.w	r2, [r8]
d03e2336:	b2ed      	uxtb	r5, r5
d03e2338:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d03e233c:	78de      	ldrb	r6, [r3, #3]
d03e233e:	f898 3000 	ldrb.w	r3, [r8]
d03e2342:	b2f6      	uxtb	r6, r6
d03e2344:	3301      	adds	r3, #1
d03e2346:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03e234a:	f888 3000 	strb.w	r3, [r8]
d03e234e:	2905      	cmp	r1, #5
d03e2350:	d8d5      	bhi.n	d03e22fe <midi_process_events+0xe>
d03e2352:	e8df f001 	tbb	[pc, r1]
d03e2356:	0366      	.short	0x0366
d03e2358:	d0ada79c 	.word	0xd0ada79c
d03e235c:	4b6a      	ldr	r3, [pc, #424]	; (d03e2508 <midi_process_events+0x218>)
d03e235e:	781b      	ldrb	r3, [r3, #0]
d03e2360:	2b00      	cmp	r3, #0
d03e2362:	d050      	beq.n	d03e2406 <midi_process_events+0x116>
d03e2364:	4b69      	ldr	r3, [pc, #420]	; (d03e250c <midi_process_events+0x21c>)
d03e2366:	2200      	movs	r2, #0
d03e2368:	469b      	mov	fp, r3
d03e236a:	7819      	ldrb	r1, [r3, #0]
d03e236c:	b129      	cbz	r1, d03e237a <midi_process_events+0x8a>
d03e236e:	7899      	ldrb	r1, [r3, #2]
d03e2370:	42a1      	cmp	r1, r4
d03e2372:	d102      	bne.n	d03e237a <midi_process_events+0x8a>
d03e2374:	7859      	ldrb	r1, [r3, #1]
d03e2376:	42a9      	cmp	r1, r5
d03e2378:	d045      	beq.n	d03e2406 <midi_process_events+0x116>
d03e237a:	3201      	adds	r2, #1
d03e237c:	3306      	adds	r3, #6
d03e237e:	2a20      	cmp	r2, #32
d03e2380:	d1f3      	bne.n	d03e236a <midi_process_events+0x7a>
d03e2382:	4b63      	ldr	r3, [pc, #396]	; (d03e2510 <midi_process_events+0x220>)
d03e2384:	2100      	movs	r1, #0
d03e2386:	f8b3 a000 	ldrh.w	sl, [r3]
d03e238a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
d03e238e:	bf8b      	itete	hi
d03e2390:	4a60      	ldrhi	r2, [pc, #384]	; (d03e2514 <midi_process_events+0x224>)
d03e2392:	f10a 0201 	addls.w	r2, sl, #1
d03e2396:	f8b2 a000 	ldrhhi.w	sl, [r2]
d03e239a:	801a      	strhls	r2, [r3, #0]
d03e239c:	bf88      	it	hi
d03e239e:	f10a 0301 	addhi.w	r3, sl, #1
d03e23a2:	eb09 170a 	add.w	r7, r9, sl, lsl #4
d03e23a6:	bf88      	it	hi
d03e23a8:	b2db      	uxtbhi	r3, r3
d03e23aa:	4638      	mov	r0, r7
d03e23ac:	bf88      	it	hi
d03e23ae:	8013      	strhhi	r3, [r2, #0]
d03e23b0:	ea4f 130a 	mov.w	r3, sl, lsl #4
d03e23b4:	2210      	movs	r2, #16
d03e23b6:	9303      	str	r3, [sp, #12]
d03e23b8:	f005 f810 	bl	d03e73dc <memset>
d03e23bc:	2201      	movs	r2, #1
d03e23be:	4956      	ldr	r1, [pc, #344]	; (d03e2518 <midi_process_events+0x228>)
d03e23c0:	737a      	strb	r2, [r7, #13]
d03e23c2:	6808      	ldr	r0, [r1, #0]
d03e23c4:	f7ff ff58 	bl	d03e2278 <seq_quantize_tick>
d03e23c8:	9b03      	ldr	r3, [sp, #12]
d03e23ca:	2201      	movs	r2, #1
d03e23cc:	2106      	movs	r1, #6
d03e23ce:	f849 0003 	str.w	r0, [r9, r3]
d03e23d2:	4b52      	ldr	r3, [pc, #328]	; (d03e251c <midi_process_events+0x22c>)
d03e23d4:	607a      	str	r2, [r7, #4]
d03e23d6:	5d1b      	ldrb	r3, [r3, r4]
d03e23d8:	723d      	strb	r5, [r7, #8]
d03e23da:	72bb      	strb	r3, [r7, #10]
d03e23dc:	f004 0307 	and.w	r3, r4, #7
d03e23e0:	727c      	strb	r4, [r7, #9]
d03e23e2:	3320      	adds	r3, #32
d03e23e4:	72fe      	strb	r6, [r7, #11]
d03e23e6:	733b      	strb	r3, [r7, #12]
d03e23e8:	2300      	movs	r3, #0
d03e23ea:	fb01 f203 	mul.w	r2, r1, r3
d03e23ee:	f81b 0002 	ldrb.w	r0, [fp, r2]
d03e23f2:	b990      	cbnz	r0, d03e241a <midi_process_events+0x12a>
d03e23f4:	eb0b 0302 	add.w	r3, fp, r2
d03e23f8:	2101      	movs	r1, #1
d03e23fa:	705d      	strb	r5, [r3, #1]
d03e23fc:	f80b 1002 	strb.w	r1, [fp, r2]
d03e2400:	709c      	strb	r4, [r3, #2]
d03e2402:	f8a3 a004 	strh.w	sl, [r3, #4]
d03e2406:	2300      	movs	r3, #0
d03e2408:	4632      	mov	r2, r6
d03e240a:	4629      	mov	r1, r5
d03e240c:	4620      	mov	r0, r4
d03e240e:	9300      	str	r3, [sp, #0]
d03e2410:	4b42      	ldr	r3, [pc, #264]	; (d03e251c <midi_process_events+0x22c>)
d03e2412:	5d1b      	ldrb	r3, [r3, r4]
d03e2414:	f7ff f890 	bl	d03e1538 <sid_midi_note_on_program_source>
d03e2418:	e771      	b.n	d03e22fe <midi_process_events+0xe>
d03e241a:	3301      	adds	r3, #1
d03e241c:	2b20      	cmp	r3, #32
d03e241e:	d1e4      	bne.n	d03e23ea <midi_process_events+0xfa>
d03e2420:	e7f1      	b.n	d03e2406 <midi_process_events+0x116>
d03e2422:	4b39      	ldr	r3, [pc, #228]	; (d03e2508 <midi_process_events+0x218>)
d03e2424:	781b      	ldrb	r3, [r3, #0]
d03e2426:	b33b      	cbz	r3, d03e2478 <midi_process_events+0x188>
d03e2428:	4b38      	ldr	r3, [pc, #224]	; (d03e250c <midi_process_events+0x21c>)
d03e242a:	2600      	movs	r6, #0
d03e242c:	461f      	mov	r7, r3
d03e242e:	781a      	ldrb	r2, [r3, #0]
d03e2430:	b342      	cbz	r2, d03e2484 <midi_process_events+0x194>
d03e2432:	789a      	ldrb	r2, [r3, #2]
d03e2434:	42a2      	cmp	r2, r4
d03e2436:	d125      	bne.n	d03e2484 <midi_process_events+0x194>
d03e2438:	785a      	ldrb	r2, [r3, #1]
d03e243a:	42aa      	cmp	r2, r5
d03e243c:	d122      	bne.n	d03e2484 <midi_process_events+0x194>
d03e243e:	2306      	movs	r3, #6
d03e2440:	fb03 7306 	mla	r3, r3, r6, r7
d03e2444:	889b      	ldrh	r3, [r3, #4]
d03e2446:	2bff      	cmp	r3, #255	; 0xff
d03e2448:	d812      	bhi.n	d03e2470 <midi_process_events+0x180>
d03e244a:	ea4f 1a03 	mov.w	sl, r3, lsl #4
d03e244e:	eb09 1303 	add.w	r3, r9, r3, lsl #4
d03e2452:	7b5b      	ldrb	r3, [r3, #13]
d03e2454:	b163      	cbz	r3, d03e2470 <midi_process_events+0x180>
d03e2456:	4b30      	ldr	r3, [pc, #192]	; (d03e2518 <midi_process_events+0x228>)
d03e2458:	6818      	ldr	r0, [r3, #0]
d03e245a:	f7ff ff0d 	bl	d03e2278 <seq_quantize_tick>
d03e245e:	f859 300a 	ldr.w	r3, [r9, sl]
d03e2462:	44ca      	add	sl, r9
d03e2464:	4298      	cmp	r0, r3
d03e2466:	bf98      	it	ls
d03e2468:	1c58      	addls	r0, r3, #1
d03e246a:	1ac0      	subs	r0, r0, r3
d03e246c:	f8ca 0004 	str.w	r0, [sl, #4]
d03e2470:	2306      	movs	r3, #6
d03e2472:	435e      	muls	r6, r3
d03e2474:	2300      	movs	r3, #0
d03e2476:	55bb      	strb	r3, [r7, r6]
d03e2478:	2200      	movs	r2, #0
d03e247a:	4629      	mov	r1, r5
d03e247c:	4620      	mov	r0, r4
d03e247e:	f7ff f9c1 	bl	d03e1804 <sid_midi_note_off_source>
d03e2482:	e73c      	b.n	d03e22fe <midi_process_events+0xe>
d03e2484:	3601      	adds	r6, #1
d03e2486:	3306      	adds	r3, #6
d03e2488:	2e20      	cmp	r6, #32
d03e248a:	d1d0      	bne.n	d03e242e <midi_process_events+0x13e>
d03e248c:	e7f4      	b.n	d03e2478 <midi_process_events+0x188>
d03e248e:	2c09      	cmp	r4, #9
d03e2490:	f43f af35 	beq.w	d03e22fe <midi_process_events+0xe>
d03e2494:	4620      	mov	r0, r4
d03e2496:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03e249a:	f7ff f835 	bl	d03e1508 <ui_note_channel_used>
d03e249e:	4b1f      	ldr	r3, [pc, #124]	; (d03e251c <midi_process_events+0x22c>)
d03e24a0:	551d      	strb	r5, [r3, r4]
d03e24a2:	e72c      	b.n	d03e22fe <midi_process_events+0xe>
d03e24a4:	4632      	mov	r2, r6
d03e24a6:	4629      	mov	r1, r5
d03e24a8:	4620      	mov	r0, r4
d03e24aa:	f7ff f8cb 	bl	d03e1644 <sid_midi_pitch_bend_event>
d03e24ae:	e726      	b.n	d03e22fe <midi_process_events+0xe>
d03e24b0:	4620      	mov	r0, r4
d03e24b2:	f7ff f829 	bl	d03e1508 <ui_note_channel_used>
d03e24b6:	2d0b      	cmp	r5, #11
d03e24b8:	d00c      	beq.n	d03e24d4 <midi_process_events+0x1e4>
d03e24ba:	2d79      	cmp	r5, #121	; 0x79
d03e24bc:	d00e      	beq.n	d03e24dc <midi_process_events+0x1ec>
d03e24be:	2d07      	cmp	r5, #7
d03e24c0:	f47f af1d 	bne.w	d03e22fe <midi_process_events+0xe>
d03e24c4:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e24c8:	4b15      	ldr	r3, [pc, #84]	; (d03e2520 <midi_process_events+0x230>)
d03e24ca:	4620      	mov	r0, r4
d03e24cc:	551e      	strb	r6, [r3, r4]
d03e24ce:	f7fe fe15 	bl	d03e10fc <midi_update_active_channel_volume>
d03e24d2:	e714      	b.n	d03e22fe <midi_process_events+0xe>
d03e24d4:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03e24d8:	4b12      	ldr	r3, [pc, #72]	; (d03e2524 <midi_process_events+0x234>)
d03e24da:	e7f6      	b.n	d03e24ca <midi_process_events+0x1da>
d03e24dc:	237f      	movs	r3, #127	; 0x7f
d03e24de:	4a10      	ldr	r2, [pc, #64]	; (d03e2520 <midi_process_events+0x230>)
d03e24e0:	2500      	movs	r5, #0
d03e24e2:	5513      	strb	r3, [r2, r4]
d03e24e4:	4a0f      	ldr	r2, [pc, #60]	; (d03e2524 <midi_process_events+0x234>)
d03e24e6:	5513      	strb	r3, [r2, r4]
d03e24e8:	4b0f      	ldr	r3, [pc, #60]	; (d03e2528 <midi_process_events+0x238>)
d03e24ea:	f823 5014 	strh.w	r5, [r3, r4, lsl #1]
d03e24ee:	f7fe fe05 	bl	d03e10fc <midi_update_active_channel_volume>
d03e24f2:	2240      	movs	r2, #64	; 0x40
d03e24f4:	e7d7      	b.n	d03e24a6 <midi_process_events+0x1b6>
d03e24f6:	4620      	mov	r0, r4
d03e24f8:	f7fe fda2 	bl	d03e1040 <sid_midi_all_notes_off_event>
d03e24fc:	e6ff      	b.n	d03e22fe <midi_process_events+0xe>
d03e24fe:	bf00      	nop
d03e2500:	d03ea18c 	.word	0xd03ea18c
d03e2504:	d03ea18d 	.word	0xd03ea18d
d03e2508:	d03eb499 	.word	0xd03eb499
d03e250c:	d03eb3d0 	.word	0xd03eb3d0
d03e2510:	d03ea3ce 	.word	0xd03ea3ce
d03e2514:	d03ea3cc 	.word	0xd03ea3cc
d03e2518:	d03eb494 	.word	0xd03eb494
d03e251c:	d03ea164 	.word	0xd03ea164
d03e2520:	d03ea174 	.word	0xd03ea174
d03e2524:	d03ea154 	.word	0xd03ea154
d03e2528:	d03ea134 	.word	0xd03ea134
d03e252c:	d03ea38d 	.word	0xd03ea38d
d03e2530:	d03ea3d0 	.word	0xd03ea3d0

d03e2534 <seq_metronome_click>:
d03e2534:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e2536:	2804      	cmp	r0, #4
d03e2538:	4c11      	ldr	r4, [pc, #68]	; (d03e2580 <seq_metronome_click+0x4c>)
d03e253a:	f04f 0002 	mov.w	r0, #2
d03e253e:	bf0c      	ite	eq
d03e2540:	2558      	moveq	r5, #88	; 0x58
d03e2542:	254c      	movne	r5, #76	; 0x4c
d03e2544:	f7fe fdb4 	bl	d03e10b0 <sid_midi_all_notes_off_source>
d03e2548:	7821      	ldrb	r1, [r4, #0]
d03e254a:	b111      	cbz	r1, d03e2552 <seq_metronome_click+0x1e>
d03e254c:	200f      	movs	r0, #15
d03e254e:	f7fe ff25 	bl	d03e139c <seq_midi_out_note_off>
d03e2552:	2302      	movs	r3, #2
d03e2554:	227f      	movs	r2, #127	; 0x7f
d03e2556:	4629      	mov	r1, r5
d03e2558:	200f      	movs	r0, #15
d03e255a:	9300      	str	r3, [sp, #0]
d03e255c:	2376      	movs	r3, #118	; 0x76
d03e255e:	f7fe ffeb 	bl	d03e1538 <sid_midi_note_on_program_source>
d03e2562:	4b08      	ldr	r3, [pc, #32]	; (d03e2584 <seq_metronome_click+0x50>)
d03e2564:	781b      	ldrb	r3, [r3, #0]
d03e2566:	b123      	cbz	r3, d03e2572 <seq_metronome_click+0x3e>
d03e2568:	227f      	movs	r2, #127	; 0x7f
d03e256a:	4629      	mov	r1, r5
d03e256c:	209f      	movs	r0, #159	; 0x9f
d03e256e:	f7fe fa87 	bl	d03e0a80 <midi_out_packet3>
d03e2572:	4b05      	ldr	r3, [pc, #20]	; (d03e2588 <seq_metronome_click+0x54>)
d03e2574:	2204      	movs	r2, #4
d03e2576:	7025      	strb	r5, [r4, #0]
d03e2578:	701a      	strb	r2, [r3, #0]
d03e257a:	b003      	add	sp, #12
d03e257c:	bd30      	pop	{r4, r5, pc}
d03e257e:	bf00      	nop
d03e2580:	d03ea3c8 	.word	0xd03ea3c8
d03e2584:	d03ea3ca 	.word	0xd03ea3ca
d03e2588:	d03ea3c9 	.word	0xd03ea3c9

d03e258c <seq_update_transport>:
d03e258c:	4b50      	ldr	r3, [pc, #320]	; (d03e26d0 <seq_update_transport+0x144>)
d03e258e:	4851      	ldr	r0, [pc, #324]	; (d03e26d4 <seq_update_transport+0x148>)
d03e2590:	4951      	ldr	r1, [pc, #324]	; (d03e26d8 <seq_update_transport+0x14c>)
d03e2592:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2596:	681e      	ldr	r6, [r3, #0]
d03e2598:	b085      	sub	sp, #20
d03e259a:	4b50      	ldr	r3, [pc, #320]	; (d03e26dc <seq_update_transport+0x150>)
d03e259c:	4682      	mov	sl, r0
d03e259e:	4f50      	ldr	r7, [pc, #320]	; (d03e26e0 <seq_update_transport+0x154>)
d03e25a0:	4688      	mov	r8, r1
d03e25a2:	681c      	ldr	r4, [r3, #0]
d03e25a4:	7802      	ldrb	r2, [r0, #0]
d03e25a6:	601e      	str	r6, [r3, #0]
d03e25a8:	783b      	ldrb	r3, [r7, #0]
d03e25aa:	4313      	orrs	r3, r2
d03e25ac:	780a      	ldrb	r2, [r1, #0]
d03e25ae:	4313      	orrs	r3, r2
d03e25b0:	4a4c      	ldr	r2, [pc, #304]	; (d03e26e4 <seq_update_transport+0x158>)
d03e25b2:	7815      	ldrb	r5, [r2, #0]
d03e25b4:	4691      	mov	r9, r2
d03e25b6:	432b      	orrs	r3, r5
d03e25b8:	d002      	beq.n	d03e25c0 <seq_update_transport+0x34>
d03e25ba:	1b36      	subs	r6, r6, r4
d03e25bc:	3e01      	subs	r6, #1
d03e25be:	d202      	bcs.n	d03e25c6 <seq_update_transport+0x3a>
d03e25c0:	b005      	add	sp, #20
d03e25c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e25c6:	f899 4000 	ldrb.w	r4, [r9]
d03e25ca:	b17c      	cbz	r4, d03e25ec <seq_update_transport+0x60>
d03e25cc:	3c01      	subs	r4, #1
d03e25ce:	b2e4      	uxtb	r4, r4
d03e25d0:	f889 4000 	strb.w	r4, [r9]
d03e25d4:	b954      	cbnz	r4, d03e25ec <seq_update_transport+0x60>
d03e25d6:	2002      	movs	r0, #2
d03e25d8:	f7fe fd6a 	bl	d03e10b0 <sid_midi_all_notes_off_source>
d03e25dc:	4b42      	ldr	r3, [pc, #264]	; (d03e26e8 <seq_update_transport+0x15c>)
d03e25de:	7819      	ldrb	r1, [r3, #0]
d03e25e0:	b121      	cbz	r1, d03e25ec <seq_update_transport+0x60>
d03e25e2:	200f      	movs	r0, #15
d03e25e4:	f7fe feda 	bl	d03e139c <seq_midi_out_note_off>
d03e25e8:	4b3f      	ldr	r3, [pc, #252]	; (d03e26e8 <seq_update_transport+0x15c>)
d03e25ea:	701c      	strb	r4, [r3, #0]
d03e25ec:	f898 5000 	ldrb.w	r5, [r8]
d03e25f0:	b345      	cbz	r5, d03e2644 <seq_update_transport+0xb8>
d03e25f2:	493e      	ldr	r1, [pc, #248]	; (d03e26ec <seq_update_transport+0x160>)
d03e25f4:	880b      	ldrh	r3, [r1, #0]
d03e25f6:	b9ab      	cbnz	r3, d03e2624 <seq_update_transport+0x98>
d03e25f8:	4b3d      	ldr	r3, [pc, #244]	; (d03e26f0 <seq_update_transport+0x164>)
d03e25fa:	781a      	ldrb	r2, [r3, #0]
d03e25fc:	2a01      	cmp	r2, #1
d03e25fe:	d817      	bhi.n	d03e2630 <seq_update_transport+0xa4>
d03e2600:	2100      	movs	r1, #0
d03e2602:	4a3c      	ldr	r2, [pc, #240]	; (d03e26f4 <seq_update_transport+0x168>)
d03e2604:	483c      	ldr	r0, [pc, #240]	; (d03e26f8 <seq_update_transport+0x16c>)
d03e2606:	7019      	strb	r1, [r3, #0]
d03e2608:	2301      	movs	r3, #1
d03e260a:	f888 1000 	strb.w	r1, [r8]
d03e260e:	7013      	strb	r3, [r2, #0]
d03e2610:	22c0      	movs	r2, #192	; 0xc0
d03e2612:	703b      	strb	r3, [r7, #0]
d03e2614:	f88a 3000 	strb.w	r3, [sl]
d03e2618:	f004 fee0 	bl	d03e73dc <memset>
d03e261c:	4837      	ldr	r0, [pc, #220]	; (d03e26fc <seq_update_transport+0x170>)
d03e261e:	f7fe fdab 	bl	d03e1178 <ui_set_status>
d03e2622:	e7cb      	b.n	d03e25bc <seq_update_transport+0x30>
d03e2624:	3b01      	subs	r3, #1
d03e2626:	b29b      	uxth	r3, r3
d03e2628:	800b      	strh	r3, [r1, #0]
d03e262a:	2b00      	cmp	r3, #0
d03e262c:	d1c6      	bne.n	d03e25bc <seq_update_transport+0x30>
d03e262e:	e7e3      	b.n	d03e25f8 <seq_update_transport+0x6c>
d03e2630:	3a01      	subs	r2, #1
d03e2632:	b2d2      	uxtb	r2, r2
d03e2634:	701a      	strb	r2, [r3, #0]
d03e2636:	f7fe fa9d 	bl	d03e0b74 <seq_beat_ticks>
d03e263a:	8008      	strh	r0, [r1, #0]
d03e263c:	4610      	mov	r0, r2
d03e263e:	f7ff ff79 	bl	d03e2534 <seq_metronome_click>
d03e2642:	e7bb      	b.n	d03e25bc <seq_update_transport+0x30>
d03e2644:	783b      	ldrb	r3, [r7, #0]
d03e2646:	b943      	cbnz	r3, d03e265a <seq_update_transport+0xce>
d03e2648:	f89a 3000 	ldrb.w	r3, [sl]
d03e264c:	2b00      	cmp	r3, #0
d03e264e:	d0b5      	beq.n	d03e25bc <seq_update_transport+0x30>
d03e2650:	4a2b      	ldr	r2, [pc, #172]	; (d03e2700 <seq_update_transport+0x174>)
d03e2652:	6813      	ldr	r3, [r2, #0]
d03e2654:	3301      	adds	r3, #1
d03e2656:	6013      	str	r3, [r2, #0]
d03e2658:	e7b0      	b.n	d03e25bc <seq_update_transport+0x30>
d03e265a:	4b29      	ldr	r3, [pc, #164]	; (d03e2700 <seq_update_transport+0x174>)
d03e265c:	4c29      	ldr	r4, [pc, #164]	; (d03e2704 <seq_update_transport+0x178>)
d03e265e:	f8d3 b000 	ldr.w	fp, [r3]
d03e2662:	4b29      	ldr	r3, [pc, #164]	; (d03e2708 <seq_update_transport+0x17c>)
d03e2664:	881a      	ldrh	r2, [r3, #0]
d03e2666:	b2ab      	uxth	r3, r5
d03e2668:	429a      	cmp	r2, r3
d03e266a:	d902      	bls.n	d03e2672 <seq_update_transport+0xe6>
d03e266c:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
d03e2670:	d103      	bne.n	d03e267a <seq_update_transport+0xee>
d03e2672:	783b      	ldrb	r3, [r7, #0]
d03e2674:	2b00      	cmp	r3, #0
d03e2676:	d1eb      	bne.n	d03e2650 <seq_update_transport+0xc4>
d03e2678:	e7e6      	b.n	d03e2648 <seq_update_transport+0xbc>
d03e267a:	7b63      	ldrb	r3, [r4, #13]
d03e267c:	b32b      	cbz	r3, d03e26ca <seq_update_transport+0x13e>
d03e267e:	6823      	ldr	r3, [r4, #0]
d03e2680:	6862      	ldr	r2, [r4, #4]
d03e2682:	459b      	cmp	fp, r3
d03e2684:	441a      	add	r2, r3
d03e2686:	9203      	str	r2, [sp, #12]
d03e2688:	d113      	bne.n	d03e26b2 <seq_update_transport+0x126>
d03e268a:	2301      	movs	r3, #1
d03e268c:	9300      	str	r3, [sp, #0]
d03e268e:	7aa3      	ldrb	r3, [r4, #10]
d03e2690:	7ae2      	ldrb	r2, [r4, #11]
d03e2692:	7a21      	ldrb	r1, [r4, #8]
d03e2694:	7a60      	ldrb	r0, [r4, #9]
d03e2696:	f7fe ff4f 	bl	d03e1538 <sid_midi_note_on_program_source>
d03e269a:	4b1c      	ldr	r3, [pc, #112]	; (d03e270c <seq_update_transport+0x180>)
d03e269c:	781b      	ldrb	r3, [r3, #0]
d03e269e:	b143      	cbz	r3, d03e26b2 <seq_update_transport+0x126>
d03e26a0:	7a60      	ldrb	r0, [r4, #9]
d03e26a2:	280f      	cmp	r0, #15
d03e26a4:	d805      	bhi.n	d03e26b2 <seq_update_transport+0x126>
d03e26a6:	7ae2      	ldrb	r2, [r4, #11]
d03e26a8:	f040 0090 	orr.w	r0, r0, #144	; 0x90
d03e26ac:	7a21      	ldrb	r1, [r4, #8]
d03e26ae:	f7fe f9e7 	bl	d03e0a80 <midi_out_packet3>
d03e26b2:	9b03      	ldr	r3, [sp, #12]
d03e26b4:	459b      	cmp	fp, r3
d03e26b6:	d108      	bne.n	d03e26ca <seq_update_transport+0x13e>
d03e26b8:	7a21      	ldrb	r1, [r4, #8]
d03e26ba:	2201      	movs	r2, #1
d03e26bc:	7a60      	ldrb	r0, [r4, #9]
d03e26be:	f7ff f8a1 	bl	d03e1804 <sid_midi_note_off_source>
d03e26c2:	7a21      	ldrb	r1, [r4, #8]
d03e26c4:	7a60      	ldrb	r0, [r4, #9]
d03e26c6:	f7fe fe69 	bl	d03e139c <seq_midi_out_note_off>
d03e26ca:	3501      	adds	r5, #1
d03e26cc:	3410      	adds	r4, #16
d03e26ce:	e7c8      	b.n	d03e2662 <seq_update_transport+0xd6>
d03e26d0:	d03ea3b0 	.word	0xd03ea3b0
d03e26d4:	d03eb499 	.word	0xd03eb499
d03e26d8:	d03ea3b4 	.word	0xd03ea3b4
d03e26dc:	d03ea3c4 	.word	0xd03ea3c4
d03e26e0:	d03eb490 	.word	0xd03eb490
d03e26e4:	d03ea3c9 	.word	0xd03ea3c9
d03e26e8:	d03ea3c8 	.word	0xd03ea3c8
d03e26ec:	d03ea3b6 	.word	0xd03ea3b6
d03e26f0:	d03ea3b8 	.word	0xd03ea3b8
d03e26f4:	d03eb498 	.word	0xd03eb498
d03e26f8:	d03eb3d0 	.word	0xd03eb3d0
d03e26fc:	d03e8cdd 	.word	0xd03e8cdd
d03e2700:	d03eb494 	.word	0xd03eb494
d03e2704:	d03ea3d0 	.word	0xd03ea3d0
d03e2708:	d03ea3ce 	.word	0xd03ea3ce
d03e270c:	d03ea3ca 	.word	0xd03ea3ca

d03e2710 <seq_begin_count_in>:
d03e2710:	b510      	push	{r4, lr}
d03e2712:	f7fe fe7f 	bl	d03e1414 <seq_stop_playback_notes>
d03e2716:	2100      	movs	r1, #0
d03e2718:	4b0e      	ldr	r3, [pc, #56]	; (d03e2754 <seq_begin_count_in+0x44>)
d03e271a:	2201      	movs	r2, #1
d03e271c:	2404      	movs	r4, #4
d03e271e:	7019      	strb	r1, [r3, #0]
d03e2720:	4b0d      	ldr	r3, [pc, #52]	; (d03e2758 <seq_begin_count_in+0x48>)
d03e2722:	7019      	strb	r1, [r3, #0]
d03e2724:	4b0d      	ldr	r3, [pc, #52]	; (d03e275c <seq_begin_count_in+0x4c>)
d03e2726:	701a      	strb	r2, [r3, #0]
d03e2728:	4b0d      	ldr	r3, [pc, #52]	; (d03e2760 <seq_begin_count_in+0x50>)
d03e272a:	701c      	strb	r4, [r3, #0]
d03e272c:	f7fe fa22 	bl	d03e0b74 <seq_beat_ticks>
d03e2730:	4b0c      	ldr	r3, [pc, #48]	; (d03e2764 <seq_begin_count_in+0x54>)
d03e2732:	8018      	strh	r0, [r3, #0]
d03e2734:	4b0c      	ldr	r3, [pc, #48]	; (d03e2768 <seq_begin_count_in+0x58>)
d03e2736:	480d      	ldr	r0, [pc, #52]	; (d03e276c <seq_begin_count_in+0x5c>)
d03e2738:	681a      	ldr	r2, [r3, #0]
d03e273a:	4b0d      	ldr	r3, [pc, #52]	; (d03e2770 <seq_begin_count_in+0x60>)
d03e273c:	601a      	str	r2, [r3, #0]
d03e273e:	22c0      	movs	r2, #192	; 0xc0
d03e2740:	f004 fe4c 	bl	d03e73dc <memset>
d03e2744:	4620      	mov	r0, r4
d03e2746:	f7ff fef5 	bl	d03e2534 <seq_metronome_click>
d03e274a:	480a      	ldr	r0, [pc, #40]	; (d03e2774 <seq_begin_count_in+0x64>)
d03e274c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e2750:	f7fe bd12 	b.w	d03e1178 <ui_set_status>
d03e2754:	d03eb490 	.word	0xd03eb490
d03e2758:	d03eb499 	.word	0xd03eb499
d03e275c:	d03ea3b4 	.word	0xd03ea3b4
d03e2760:	d03ea3b8 	.word	0xd03ea3b8
d03e2764:	d03ea3b6 	.word	0xd03ea3b6
d03e2768:	d03ea3b0 	.word	0xd03ea3b0
d03e276c:	d03eb3d0 	.word	0xd03eb3d0
d03e2770:	d03ea3c4 	.word	0xd03ea3c4
d03e2774:	d03e8ce7 	.word	0xd03e8ce7

d03e2778 <ui_create_button>:
d03e2778:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e277c:	ed2d 8b02 	vpush	{d8}
d03e2780:	b089      	sub	sp, #36	; 0x24
d03e2782:	4690      	mov	r8, r2
d03e2784:	461d      	mov	r5, r3
d03e2786:	4a96      	ldr	r2, [pc, #600]	; (d03e29e0 <ui_create_button+0x268>)
d03e2788:	9b15      	ldr	r3, [sp, #84]	; 0x54
d03e278a:	468b      	mov	fp, r1
d03e278c:	f9bd a050 	ldrsh.w	sl, [sp, #80]	; 0x50
d03e2790:	ee08 3a90 	vmov	s17, r3
d03e2794:	7813      	ldrb	r3, [r2, #0]
d03e2796:	f89d 7058 	ldrb.w	r7, [sp, #88]	; 0x58
d03e279a:	2bbd      	cmp	r3, #189	; 0xbd
d03e279c:	f89d 405c 	ldrb.w	r4, [sp, #92]	; 0x5c
d03e27a0:	d80e      	bhi.n	d03e27c0 <ui_create_button+0x48>
d03e27a2:	1c59      	adds	r1, r3, #1
d03e27a4:	7011      	strb	r1, [r2, #0]
d03e27a6:	220c      	movs	r2, #12
d03e27a8:	498e      	ldr	r1, [pc, #568]	; (d03e29e4 <ui_create_button+0x26c>)
d03e27aa:	435a      	muls	r2, r3
d03e27ac:	188b      	adds	r3, r1, r2
d03e27ae:	5288      	strh	r0, [r1, r2]
d03e27b0:	f8a3 b002 	strh.w	fp, [r3, #2]
d03e27b4:	f8a3 8004 	strh.w	r8, [r3, #4]
d03e27b8:	80dd      	strh	r5, [r3, #6]
d03e27ba:	f8a3 a008 	strh.w	sl, [r3, #8]
d03e27be:	729c      	strb	r4, [r3, #10]
d03e27c0:	4b89      	ldr	r3, [pc, #548]	; (d03e29e8 <ui_create_button+0x270>)
d03e27c2:	781b      	ldrb	r3, [r3, #0]
d03e27c4:	07db      	lsls	r3, r3, #31
d03e27c6:	f140 80fe 	bpl.w	d03e29c6 <ui_create_button+0x24e>
d03e27ca:	4b88      	ldr	r3, [pc, #544]	; (d03e29ec <ui_create_button+0x274>)
d03e27cc:	f9b3 2000 	ldrsh.w	r2, [r3]
d03e27d0:	4b87      	ldr	r3, [pc, #540]	; (d03e29f0 <ui_create_button+0x278>)
d03e27d2:	4593      	cmp	fp, r2
d03e27d4:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e27d8:	f300 80f5 	bgt.w	d03e29c6 <ui_create_button+0x24e>
d03e27dc:	eb0b 0105 	add.w	r1, fp, r5
d03e27e0:	428a      	cmp	r2, r1
d03e27e2:	f280 80f0 	bge.w	d03e29c6 <ui_create_button+0x24e>
d03e27e6:	4598      	cmp	r8, r3
d03e27e8:	f300 80ed 	bgt.w	d03e29c6 <ui_create_button+0x24e>
d03e27ec:	eb08 020a 	add.w	r2, r8, sl
d03e27f0:	4293      	cmp	r3, r2
d03e27f2:	f280 80e8 	bge.w	d03e29c6 <ui_create_button+0x24e>
d03e27f6:	2301      	movs	r3, #1
d03e27f8:	2414      	movs	r4, #20
d03e27fa:	2f00      	cmp	r7, #0
d03e27fc:	9302      	str	r3, [sp, #8]
d03e27fe:	bf14      	ite	ne
d03e2800:	230f      	movne	r3, #15
d03e2802:	2319      	moveq	r3, #25
d03e2804:	ee18 0a90 	vmov	r0, s17
d03e2808:	9307      	str	r3, [sp, #28]
d03e280a:	f004 ffad 	bl	d03e7768 <strlen>
d03e280e:	00c0      	lsls	r0, r0, #3
d03e2810:	9401      	str	r4, [sp, #4]
d03e2812:	4c78      	ldr	r4, [pc, #480]	; (d03e29f4 <ui_create_button+0x27c>)
d03e2814:	462a      	mov	r2, r5
d03e2816:	b203      	sxth	r3, r0
d03e2818:	4641      	mov	r1, r8
d03e281a:	4658      	mov	r0, fp
d03e281c:	9304      	str	r3, [sp, #16]
d03e281e:	231a      	movs	r3, #26
d03e2820:	9300      	str	r3, [sp, #0]
d03e2822:	4653      	mov	r3, sl
d03e2824:	f7fe f9c8 	bl	d03e0bb8 <ui_box>
d03e2828:	7b23      	ldrb	r3, [r4, #12]
d03e282a:	7b62      	ldrb	r2, [r4, #13]
d03e282c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2830:	7ba2      	ldrb	r2, [r4, #14]
d03e2832:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2836:	7be2      	ldrb	r2, [r4, #15]
d03e2838:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e283c:	9a02      	ldr	r2, [sp, #8]
d03e283e:	685b      	ldr	r3, [r3, #4]
d03e2840:	68db      	ldr	r3, [r3, #12]
d03e2842:	2a00      	cmp	r2, #0
d03e2844:	f040 80c6 	bne.w	d03e29d4 <ui_create_button+0x25c>
d03e2848:	2f00      	cmp	r7, #0
d03e284a:	bf14      	ite	ne
d03e284c:	201d      	movne	r0, #29
d03e284e:	2015      	moveq	r0, #21
d03e2850:	4798      	blx	r3
d03e2852:	7b23      	ldrb	r3, [r4, #12]
d03e2854:	7b62      	ldrb	r2, [r4, #13]
d03e2856:	fa1f fb8b 	uxth.w	fp, fp
d03e285a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e285e:	7ba2      	ldrb	r2, [r4, #14]
d03e2860:	f10b 0701 	add.w	r7, fp, #1
d03e2864:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2868:	7be2      	ldrb	r2, [r4, #15]
d03e286a:	b23f      	sxth	r7, r7
d03e286c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2870:	fa1f f288 	uxth.w	r2, r8
d03e2874:	4638      	mov	r0, r7
d03e2876:	685b      	ldr	r3, [r3, #4]
d03e2878:	1c56      	adds	r6, r2, #1
d03e287a:	9203      	str	r2, [sp, #12]
d03e287c:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e2880:	2302      	movs	r3, #2
d03e2882:	b232      	sxth	r2, r6
d03e2884:	ee08 2a10 	vmov	s16, r2
d03e2888:	b2aa      	uxth	r2, r5
d03e288a:	f1a2 0902 	sub.w	r9, r2, #2
d03e288e:	ee18 1a10 	vmov	r1, s16
d03e2892:	9205      	str	r2, [sp, #20]
d03e2894:	fa0f f989 	sxth.w	r9, r9
d03e2898:	464a      	mov	r2, r9
d03e289a:	47c0      	blx	r8
d03e289c:	7b23      	ldrb	r3, [r4, #12]
d03e289e:	7b62      	ldrb	r2, [r4, #13]
d03e28a0:	4638      	mov	r0, r7
d03e28a2:	ee18 1a10 	vmov	r1, s16
d03e28a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e28aa:	7ba2      	ldrb	r2, [r4, #14]
d03e28ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e28b0:	7be2      	ldrb	r2, [r4, #15]
d03e28b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e28b6:	fa1f f28a 	uxth.w	r2, sl
d03e28ba:	685b      	ldr	r3, [r3, #4]
d03e28bc:	f1a2 0802 	sub.w	r8, r2, #2
d03e28c0:	9206      	str	r2, [sp, #24]
d03e28c2:	685b      	ldr	r3, [r3, #4]
d03e28c4:	2202      	movs	r2, #2
d03e28c6:	fa0f f888 	sxth.w	r8, r8
d03e28ca:	461e      	mov	r6, r3
d03e28cc:	4643      	mov	r3, r8
d03e28ce:	47b0      	blx	r6
d03e28d0:	7b23      	ldrb	r3, [r4, #12]
d03e28d2:	7b62      	ldrb	r2, [r4, #13]
d03e28d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e28d8:	7ba2      	ldrb	r2, [r4, #14]
d03e28da:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e28de:	7be2      	ldrb	r2, [r4, #15]
d03e28e0:	4c44      	ldr	r4, [pc, #272]	; (d03e29f4 <ui_create_button+0x27c>)
d03e28e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e28e6:	9a02      	ldr	r2, [sp, #8]
d03e28e8:	685b      	ldr	r3, [r3, #4]
d03e28ea:	2a00      	cmp	r2, #0
d03e28ec:	68db      	ldr	r3, [r3, #12]
d03e28ee:	bf14      	ite	ne
d03e28f0:	201d      	movne	r0, #29
d03e28f2:	2010      	moveq	r0, #16
d03e28f4:	4798      	blx	r3
d03e28f6:	7b23      	ldrb	r3, [r4, #12]
d03e28f8:	7b62      	ldrb	r2, [r4, #13]
d03e28fa:	4638      	mov	r0, r7
d03e28fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2900:	7ba2      	ldrb	r2, [r4, #14]
d03e2902:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2906:	7be2      	ldrb	r2, [r4, #15]
d03e2908:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e290c:	9a06      	ldr	r2, [sp, #24]
d03e290e:	685b      	ldr	r3, [r3, #4]
d03e2910:	1ed1      	subs	r1, r2, #3
d03e2912:	9a03      	ldr	r2, [sp, #12]
d03e2914:	685b      	ldr	r3, [r3, #4]
d03e2916:	4411      	add	r1, r2
d03e2918:	464a      	mov	r2, r9
d03e291a:	461e      	mov	r6, r3
d03e291c:	2302      	movs	r3, #2
d03e291e:	b209      	sxth	r1, r1
d03e2920:	47b0      	blx	r6
d03e2922:	7b23      	ldrb	r3, [r4, #12]
d03e2924:	7b62      	ldrb	r2, [r4, #13]
d03e2926:	ee18 1a10 	vmov	r1, s16
d03e292a:	f1aa 0610 	sub.w	r6, sl, #16
d03e292e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2932:	7ba2      	ldrb	r2, [r4, #14]
d03e2934:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2938:	7be2      	ldrb	r2, [r4, #15]
d03e293a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e293e:	9a05      	ldr	r2, [sp, #20]
d03e2940:	1ed0      	subs	r0, r2, #3
d03e2942:	685b      	ldr	r3, [r3, #4]
d03e2944:	2202      	movs	r2, #2
d03e2946:	4458      	add	r0, fp
d03e2948:	685f      	ldr	r7, [r3, #4]
d03e294a:	4643      	mov	r3, r8
d03e294c:	b200      	sxth	r0, r0
d03e294e:	47b8      	blx	r7
d03e2950:	1feb      	subs	r3, r5, #7
d03e2952:	9a04      	ldr	r2, [sp, #16]
d03e2954:	4293      	cmp	r3, r2
d03e2956:	bfca      	itet	gt
d03e2958:	9b04      	ldrgt	r3, [sp, #16]
d03e295a:	f10b 0504 	addle.w	r5, fp, #4
d03e295e:	1aed      	subgt	r5, r5, r3
d03e2960:	9b03      	ldr	r3, [sp, #12]
d03e2962:	bfc8      	it	gt
d03e2964:	eb05 75d5 	addgt.w	r5, r5, r5, lsr #31
d03e2968:	eb03 0666 	add.w	r6, r3, r6, asr #1
d03e296c:	9b02      	ldr	r3, [sp, #8]
d03e296e:	bfc8      	it	gt
d03e2970:	eb0b 0565 	addgt.w	r5, fp, r5, asr #1
d03e2974:	b2b6      	uxth	r6, r6
d03e2976:	b22d      	sxth	r5, r5
d03e2978:	2b00      	cmp	r3, #0
d03e297a:	d12d      	bne.n	d03e29d8 <ui_create_button+0x260>
d03e297c:	7b23      	ldrb	r3, [r4, #12]
d03e297e:	b236      	sxth	r6, r6
d03e2980:	7b62      	ldrb	r2, [r4, #13]
d03e2982:	9807      	ldr	r0, [sp, #28]
d03e2984:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2988:	7ba2      	ldrb	r2, [r4, #14]
d03e298a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e298e:	7be2      	ldrb	r2, [r4, #15]
d03e2990:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2994:	685b      	ldr	r3, [r3, #4]
d03e2996:	68db      	ldr	r3, [r3, #12]
d03e2998:	4798      	blx	r3
d03e299a:	7b23      	ldrb	r3, [r4, #12]
d03e299c:	7b62      	ldrb	r2, [r4, #13]
d03e299e:	4631      	mov	r1, r6
d03e29a0:	4628      	mov	r0, r5
d03e29a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e29a6:	7ba2      	ldrb	r2, [r4, #14]
d03e29a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e29ac:	7be2      	ldrb	r2, [r4, #15]
d03e29ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e29b2:	ee18 2a90 	vmov	r2, s17
d03e29b6:	685b      	ldr	r3, [r3, #4]
d03e29b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e29ba:	b009      	add	sp, #36	; 0x24
d03e29bc:	ecbd 8b02 	vpop	{d8}
d03e29c0:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e29c4:	4718      	bx	r3
d03e29c6:	2300      	movs	r3, #0
d03e29c8:	429f      	cmp	r7, r3
d03e29ca:	9302      	str	r3, [sp, #8]
d03e29cc:	bf14      	ite	ne
d03e29ce:	241c      	movne	r4, #28
d03e29d0:	241b      	moveq	r4, #27
d03e29d2:	e714      	b.n	d03e27fe <ui_create_button+0x86>
d03e29d4:	2010      	movs	r0, #16
d03e29d6:	e73b      	b.n	d03e2850 <ui_create_button+0xd8>
d03e29d8:	3501      	adds	r5, #1
d03e29da:	3601      	adds	r6, #1
d03e29dc:	b22d      	sxth	r5, r5
d03e29de:	e7cd      	b.n	d03e297c <ui_create_button+0x204>
d03e29e0:	d03eb4dc 	.word	0xd03eb4dc
d03e29e4:	d03eb4de 	.word	0xd03eb4de
d03e29e8:	d03ec210 	.word	0xd03ec210
d03e29ec:	d03ec276 	.word	0xd03ec276
d03e29f0:	d03ec278 	.word	0xd03ec278
d03e29f4:	2001f000 	.word	0x2001f000

d03e29f8 <ui_draw_home>:
d03e29f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e29fc:	4f88      	ldr	r7, [pc, #544]	; (d03e2c20 <ui_draw_home+0x228>)
d03e29fe:	b09d      	sub	sp, #116	; 0x74
d03e2a00:	4b88      	ldr	r3, [pc, #544]	; (d03e2c24 <ui_draw_home+0x22c>)
d03e2a02:	22c8      	movs	r2, #200	; 0xc8
d03e2a04:	783c      	ldrb	r4, [r7, #0]
d03e2a06:	2142      	movs	r1, #66	; 0x42
d03e2a08:	4e87      	ldr	r6, [pc, #540]	; (d03e2c28 <ui_draw_home+0x230>)
d03e2a0a:	200a      	movs	r0, #10
d03e2a0c:	9300      	str	r3, [sp, #0]
d03e2a0e:	2360      	movs	r3, #96	; 0x60
d03e2a10:	5d35      	ldrb	r5, [r6, r4]
d03e2a12:	f7fe f925 	bl	d03e0c60 <ui_panel>
d03e2a16:	4b85      	ldr	r3, [pc, #532]	; (d03e2c2c <ui_draw_home+0x234>)
d03e2a18:	22fa      	movs	r2, #250	; 0xfa
d03e2a1a:	2142      	movs	r1, #66	; 0x42
d03e2a1c:	20dc      	movs	r0, #220	; 0xdc
d03e2a1e:	9300      	str	r3, [sp, #0]
d03e2a20:	2360      	movs	r3, #96	; 0x60
d03e2a22:	f7fe f91d 	bl	d03e0c60 <ui_panel>
d03e2a26:	2d80      	cmp	r5, #128	; 0x80
d03e2a28:	f104 0301 	add.w	r3, r4, #1
d03e2a2c:	4c80      	ldr	r4, [pc, #512]	; (d03e2c30 <ui_draw_home+0x238>)
d03e2a2e:	bf98      	it	ls
d03e2a30:	4a80      	ldrls	r2, [pc, #512]	; (d03e2c34 <ui_draw_home+0x23c>)
d03e2a32:	f04f 0160 	mov.w	r1, #96	; 0x60
d03e2a36:	bf88      	it	hi
d03e2a38:	4a7f      	ldrhi	r2, [pc, #508]	; (d03e2c38 <ui_draw_home+0x240>)
d03e2a3a:	a804      	add	r0, sp, #16
d03e2a3c:	bf98      	it	ls
d03e2a3e:	f852 2025 	ldrls.w	r2, [r2, r5, lsl #2]
d03e2a42:	f04f 0801 	mov.w	r8, #1
d03e2a46:	9500      	str	r5, [sp, #0]
d03e2a48:	46ba      	mov	sl, r7
d03e2a4a:	9201      	str	r2, [sp, #4]
d03e2a4c:	2520      	movs	r5, #32
d03e2a4e:	4a7b      	ldr	r2, [pc, #492]	; (d03e2c3c <ui_draw_home+0x244>)
d03e2a50:	2700      	movs	r7, #0
d03e2a52:	f004 fe43 	bl	d03e76dc <sniprintf>
d03e2a56:	7b23      	ldrb	r3, [r4, #12]
d03e2a58:	7b62      	ldrb	r2, [r4, #13]
d03e2a5a:	201e      	movs	r0, #30
d03e2a5c:	f8df b1d4 	ldr.w	fp, [pc, #468]	; d03e2c34 <ui_draw_home+0x23c>
d03e2a60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2a64:	7ba2      	ldrb	r2, [r4, #14]
d03e2a66:	f8df 91fc 	ldr.w	r9, [pc, #508]	; d03e2c64 <ui_draw_home+0x26c>
d03e2a6a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2a6e:	7be2      	ldrb	r2, [r4, #15]
d03e2a70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2a74:	685b      	ldr	r3, [r3, #4]
d03e2a76:	68db      	ldr	r3, [r3, #12]
d03e2a78:	4798      	blx	r3
d03e2a7a:	7b23      	ldrb	r3, [r4, #12]
d03e2a7c:	7b62      	ldrb	r2, [r4, #13]
d03e2a7e:	215c      	movs	r1, #92	; 0x5c
d03e2a80:	20e6      	movs	r0, #230	; 0xe6
d03e2a82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2a86:	7ba2      	ldrb	r2, [r4, #14]
d03e2a88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2a8c:	7be2      	ldrb	r2, [r4, #15]
d03e2a8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2a92:	aa04      	add	r2, sp, #16
d03e2a94:	685b      	ldr	r3, [r3, #4]
d03e2a96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2a98:	4798      	blx	r3
d03e2a9a:	4b69      	ldr	r3, [pc, #420]	; (d03e2c40 <ui_draw_home+0x248>)
d03e2a9c:	2282      	movs	r2, #130	; 0x82
d03e2a9e:	21e6      	movs	r1, #230	; 0xe6
d03e2aa0:	200a      	movs	r0, #10
d03e2aa2:	f8cd 800c 	str.w	r8, [sp, #12]
d03e2aa6:	9301      	str	r3, [sp, #4]
d03e2aa8:	2330      	movs	r3, #48	; 0x30
d03e2aaa:	9500      	str	r5, [sp, #0]
d03e2aac:	9702      	str	r7, [sp, #8]
d03e2aae:	f7ff fe63 	bl	d03e2778 <ui_create_button>
d03e2ab2:	4b64      	ldr	r3, [pc, #400]	; (d03e2c44 <ui_draw_home+0x24c>)
d03e2ab4:	2282      	movs	r2, #130	; 0x82
d03e2ab6:	f44f 718d 	mov.w	r1, #282	; 0x11a
d03e2aba:	200b      	movs	r0, #11
d03e2abc:	f8cd 800c 	str.w	r8, [sp, #12]
d03e2ac0:	9301      	str	r3, [sp, #4]
d03e2ac2:	2330      	movs	r3, #48	; 0x30
d03e2ac4:	9500      	str	r5, [sp, #0]
d03e2ac6:	9702      	str	r7, [sp, #8]
d03e2ac8:	f7ff fe56 	bl	d03e2778 <ui_create_button>
d03e2acc:	4b5e      	ldr	r3, [pc, #376]	; (d03e2c48 <ui_draw_home+0x250>)
d03e2ace:	2282      	movs	r2, #130	; 0x82
d03e2ad0:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03e2ad4:	200c      	movs	r0, #12
d03e2ad6:	f8cd 800c 	str.w	r8, [sp, #12]
d03e2ada:	9301      	str	r3, [sp, #4]
d03e2adc:	2330      	movs	r3, #48	; 0x30
d03e2ade:	9500      	str	r5, [sp, #0]
d03e2ae0:	9702      	str	r7, [sp, #8]
d03e2ae2:	f7ff fe49 	bl	d03e2778 <ui_create_button>
d03e2ae6:	4b59      	ldr	r3, [pc, #356]	; (d03e2c4c <ui_draw_home+0x254>)
d03e2ae8:	2282      	movs	r2, #130	; 0x82
d03e2aea:	f44f 71c5 	mov.w	r1, #394	; 0x18a
d03e2aee:	200d      	movs	r0, #13
d03e2af0:	f8cd 800c 	str.w	r8, [sp, #12]
d03e2af4:	9301      	str	r3, [sp, #4]
d03e2af6:	2330      	movs	r3, #48	; 0x30
d03e2af8:	9500      	str	r5, [sp, #0]
d03e2afa:	25c8      	movs	r5, #200	; 0xc8
d03e2afc:	9702      	str	r7, [sp, #8]
d03e2afe:	f7ff fe3b 	bl	d03e2778 <ui_create_button>
d03e2b02:	4b53      	ldr	r3, [pc, #332]	; (d03e2c50 <ui_draw_home+0x258>)
d03e2b04:	f8df 8160 	ldr.w	r8, [pc, #352]	; d03e2c68 <ui_draw_home+0x270>
d03e2b08:	22de      	movs	r2, #222	; 0xde
d03e2b0a:	9300      	str	r3, [sp, #0]
d03e2b0c:	21ac      	movs	r1, #172	; 0xac
d03e2b0e:	2362      	movs	r3, #98	; 0x62
d03e2b10:	200a      	movs	r0, #10
d03e2b12:	f7fe f8a5 	bl	d03e0c60 <ui_panel>
d03e2b16:	f818 7b01 	ldrb.w	r7, [r8], #1
d03e2b1a:	a804      	add	r0, sp, #16
d03e2b1c:	5df2      	ldrb	r2, [r6, r7]
d03e2b1e:	1c7b      	adds	r3, r7, #1
d03e2b20:	2a80      	cmp	r2, #128	; 0x80
d03e2b22:	9200      	str	r2, [sp, #0]
d03e2b24:	bf98      	it	ls
d03e2b26:	f85b 1022 	ldrls.w	r1, [fp, r2, lsl #2]
d03e2b2a:	464a      	mov	r2, r9
d03e2b2c:	bf88      	it	hi
d03e2b2e:	4942      	ldrhi	r1, [pc, #264]	; (d03e2c38 <ui_draw_home+0x240>)
d03e2b30:	9101      	str	r1, [sp, #4]
d03e2b32:	2160      	movs	r1, #96	; 0x60
d03e2b34:	f004 fdd2 	bl	d03e76dc <sniprintf>
d03e2b38:	7b23      	ldrb	r3, [r4, #12]
d03e2b3a:	7b62      	ldrb	r2, [r4, #13]
d03e2b3c:	f89a 0000 	ldrb.w	r0, [sl]
d03e2b40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2b44:	7ba2      	ldrb	r2, [r4, #14]
d03e2b46:	42b8      	cmp	r0, r7
d03e2b48:	bf0c      	ite	eq
d03e2b4a:	201e      	moveq	r0, #30
d03e2b4c:	2018      	movne	r0, #24
d03e2b4e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2b52:	7be2      	ldrb	r2, [r4, #15]
d03e2b54:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2b58:	685b      	ldr	r3, [r3, #4]
d03e2b5a:	68db      	ldr	r3, [r3, #12]
d03e2b5c:	4798      	blx	r3
d03e2b5e:	7b23      	ldrb	r3, [r4, #12]
d03e2b60:	7b62      	ldrb	r2, [r4, #13]
d03e2b62:	4629      	mov	r1, r5
d03e2b64:	3510      	adds	r5, #16
d03e2b66:	2018      	movs	r0, #24
d03e2b68:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2b6c:	7ba2      	ldrb	r2, [r4, #14]
d03e2b6e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2b72:	7be2      	ldrb	r2, [r4, #15]
d03e2b74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2b78:	aa04      	add	r2, sp, #16
d03e2b7a:	685b      	ldr	r3, [r3, #4]
d03e2b7c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2b7e:	4798      	blx	r3
d03e2b80:	f5b5 7f84 	cmp.w	r5, #264	; 0x108
d03e2b84:	d1c7      	bne.n	d03e2b16 <ui_draw_home+0x11e>
d03e2b86:	4b33      	ldr	r3, [pc, #204]	; (d03e2c54 <ui_draw_home+0x25c>)
d03e2b88:	21ac      	movs	r1, #172	; 0xac
d03e2b8a:	22e4      	movs	r2, #228	; 0xe4
d03e2b8c:	20f2      	movs	r0, #242	; 0xf2
d03e2b8e:	9300      	str	r3, [sp, #0]
d03e2b90:	2362      	movs	r3, #98	; 0x62
d03e2b92:	f7fe f865 	bl	d03e0c60 <ui_panel>
d03e2b96:	7b23      	ldrb	r3, [r4, #12]
d03e2b98:	7b62      	ldrb	r2, [r4, #13]
d03e2b9a:	2018      	movs	r0, #24
d03e2b9c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2ba0:	7ba2      	ldrb	r2, [r4, #14]
d03e2ba2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2ba6:	7be2      	ldrb	r2, [r4, #15]
d03e2ba8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2bac:	685b      	ldr	r3, [r3, #4]
d03e2bae:	68db      	ldr	r3, [r3, #12]
d03e2bb0:	4798      	blx	r3
d03e2bb2:	7b23      	ldrb	r3, [r4, #12]
d03e2bb4:	7b62      	ldrb	r2, [r4, #13]
d03e2bb6:	21c8      	movs	r1, #200	; 0xc8
d03e2bb8:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e2bbc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2bc0:	7ba2      	ldrb	r2, [r4, #14]
d03e2bc2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2bc6:	7be2      	ldrb	r2, [r4, #15]
d03e2bc8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2bcc:	4a22      	ldr	r2, [pc, #136]	; (d03e2c58 <ui_draw_home+0x260>)
d03e2bce:	685b      	ldr	r3, [r3, #4]
d03e2bd0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2bd2:	4798      	blx	r3
d03e2bd4:	7b23      	ldrb	r3, [r4, #12]
d03e2bd6:	7b62      	ldrb	r2, [r4, #13]
d03e2bd8:	21d8      	movs	r1, #216	; 0xd8
d03e2bda:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e2bde:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2be2:	7ba2      	ldrb	r2, [r4, #14]
d03e2be4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2be8:	7be2      	ldrb	r2, [r4, #15]
d03e2bea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2bee:	4a1b      	ldr	r2, [pc, #108]	; (d03e2c5c <ui_draw_home+0x264>)
d03e2bf0:	685b      	ldr	r3, [r3, #4]
d03e2bf2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2bf4:	4798      	blx	r3
d03e2bf6:	7b23      	ldrb	r3, [r4, #12]
d03e2bf8:	7b62      	ldrb	r2, [r4, #13]
d03e2bfa:	21ec      	movs	r1, #236	; 0xec
d03e2bfc:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e2c00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2c04:	7ba2      	ldrb	r2, [r4, #14]
d03e2c06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2c0a:	7be2      	ldrb	r2, [r4, #15]
d03e2c0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2c10:	4a13      	ldr	r2, [pc, #76]	; (d03e2c60 <ui_draw_home+0x268>)
d03e2c12:	685b      	ldr	r3, [r3, #4]
d03e2c14:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2c16:	4798      	blx	r3
d03e2c18:	b01d      	add	sp, #116	; 0x74
d03e2c1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e2c1e:	bf00      	nop
d03e2c20:	d03ec2af 	.word	0xd03ec2af
d03e2c24:	d03e8cfb 	.word	0xd03e8cfb
d03e2c28:	d03ea164 	.word	0xd03ea164
d03e2c2c:	d03e8d07 	.word	0xd03e8d07
d03e2c30:	2001f000 	.word	0x2001f000
d03e2c34:	d03e9708 	.word	0xd03e9708
d03e2c38:	d03e8cf2 	.word	0xd03e8cf2
d03e2c3c:	d03e8d18 	.word	0xd03e8d18
d03e2c40:	d03e8d2b 	.word	0xd03e8d2b
d03e2c44:	d03e8d2e 	.word	0xd03e8d2e
d03e2c48:	d03e8d31 	.word	0xd03e8d31
d03e2c4c:	d03e8d34 	.word	0xd03e8d34
d03e2c50:	d03e8d37 	.word	0xd03e8d37
d03e2c54:	d03e8d5c 	.word	0xd03e8d5c
d03e2c58:	d03e8d64 	.word	0xd03e8d64
d03e2c5c:	d03e8d7b 	.word	0xd03e8d7b
d03e2c60:	d03e8d8e 	.word	0xd03e8d8e
d03e2c64:	d03e8d46 	.word	0xd03e8d46
d03e2c68:	d03ec288 	.word	0xd03ec288

d03e2c6c <ui_redraw_backbuffer>:
d03e2c6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e2c70:	4c88      	ldr	r4, [pc, #544]	; (d03e2e94 <ui_redraw_backbuffer+0x228>)
d03e2c72:	2500      	movs	r5, #0
d03e2c74:	4e88      	ldr	r6, [pc, #544]	; (d03e2e98 <ui_redraw_backbuffer+0x22c>)
d03e2c76:	7b23      	ldrb	r3, [r4, #12]
d03e2c78:	7b62      	ldrb	r2, [r4, #13]
d03e2c7a:	4f88      	ldr	r7, [pc, #544]	; (d03e2e9c <ui_redraw_backbuffer+0x230>)
d03e2c7c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2c80:	7ba2      	ldrb	r2, [r4, #14]
d03e2c82:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2c86:	7be2      	ldrb	r2, [r4, #15]
d03e2c88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2c8c:	681b      	ldr	r3, [r3, #0]
d03e2c8e:	ed2d 8b02 	vpush	{d8}
d03e2c92:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e2c94:	b0a3      	sub	sp, #140	; 0x8c
d03e2c96:	4798      	blx	r3
d03e2c98:	7b23      	ldrb	r3, [r4, #12]
d03e2c9a:	7b62      	ldrb	r2, [r4, #13]
d03e2c9c:	ee08 0a10 	vmov	s16, r0
d03e2ca0:	487f      	ldr	r0, [pc, #508]	; (d03e2ea0 <ui_redraw_backbuffer+0x234>)
d03e2ca2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2ca6:	7ba2      	ldrb	r2, [r4, #14]
d03e2ca8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2cac:	7be2      	ldrb	r2, [r4, #15]
d03e2cae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2cb2:	681b      	ldr	r3, [r3, #0]
d03e2cb4:	6a1b      	ldr	r3, [r3, #32]
d03e2cb6:	4798      	blx	r3
d03e2cb8:	7b23      	ldrb	r3, [r4, #12]
d03e2cba:	7b62      	ldrb	r2, [r4, #13]
d03e2cbc:	4878      	ldr	r0, [pc, #480]	; (d03e2ea0 <ui_redraw_backbuffer+0x234>)
d03e2cbe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2cc2:	7ba2      	ldrb	r2, [r4, #14]
d03e2cc4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2cc8:	7be2      	ldrb	r2, [r4, #15]
d03e2cca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2cce:	681b      	ldr	r3, [r3, #0]
d03e2cd0:	699b      	ldr	r3, [r3, #24]
d03e2cd2:	4798      	blx	r3
d03e2cd4:	7b23      	ldrb	r3, [r4, #12]
d03e2cd6:	7b62      	ldrb	r2, [r4, #13]
d03e2cd8:	7035      	strb	r5, [r6, #0]
d03e2cda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2cde:	7ba2      	ldrb	r2, [r4, #14]
d03e2ce0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2ce4:	7be2      	ldrb	r2, [r4, #15]
d03e2ce6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2cea:	685b      	ldr	r3, [r3, #4]
d03e2cec:	681b      	ldr	r3, [r3, #0]
d03e2cee:	4798      	blx	r3
d03e2cf0:	7b23      	ldrb	r3, [r4, #12]
d03e2cf2:	7b62      	ldrb	r2, [r4, #13]
d03e2cf4:	f817 0b01 	ldrb.w	r0, [r7], #1
d03e2cf8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2cfc:	7ba2      	ldrb	r2, [r4, #14]
d03e2cfe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2d02:	7be2      	ldrb	r2, [r4, #15]
d03e2d04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2d08:	685b      	ldr	r3, [r3, #4]
d03e2d0a:	68db      	ldr	r3, [r3, #12]
d03e2d0c:	4798      	blx	r3
d03e2d0e:	7b23      	ldrb	r3, [r4, #12]
d03e2d10:	7b62      	ldrb	r2, [r4, #13]
d03e2d12:	b229      	sxth	r1, r5
d03e2d14:	3528      	adds	r5, #40	; 0x28
d03e2d16:	2000      	movs	r0, #0
d03e2d18:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2d1c:	7ba2      	ldrb	r2, [r4, #14]
d03e2d1e:	b2ad      	uxth	r5, r5
d03e2d20:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2d24:	7be2      	ldrb	r2, [r4, #15]
d03e2d26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2d2a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2d2e:	685b      	ldr	r3, [r3, #4]
d03e2d30:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e2d34:	2328      	movs	r3, #40	; 0x28
d03e2d36:	47c0      	blx	r8
d03e2d38:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d03e2d3c:	d1d8      	bne.n	d03e2cf0 <ui_redraw_backbuffer+0x84>
d03e2d3e:	7b23      	ldrb	r3, [r4, #12]
d03e2d40:	2015      	movs	r0, #21
d03e2d42:	7b62      	ldrb	r2, [r4, #13]
d03e2d44:	4f57      	ldr	r7, [pc, #348]	; (d03e2ea4 <ui_redraw_backbuffer+0x238>)
d03e2d46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2d4a:	7ba2      	ldrb	r2, [r4, #14]
d03e2d4c:	f8df a160 	ldr.w	sl, [pc, #352]	; d03e2eb0 <ui_redraw_backbuffer+0x244>
d03e2d50:	46bb      	mov	fp, r7
d03e2d52:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2d56:	7be2      	ldrb	r2, [r4, #15]
d03e2d58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2d5c:	685b      	ldr	r3, [r3, #4]
d03e2d5e:	68db      	ldr	r3, [r3, #12]
d03e2d60:	4798      	blx	r3
d03e2d62:	7b23      	ldrb	r3, [r4, #12]
d03e2d64:	7b62      	ldrb	r2, [r4, #13]
d03e2d66:	2100      	movs	r1, #0
d03e2d68:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2d6c:	7ba2      	ldrb	r2, [r4, #14]
d03e2d6e:	4608      	mov	r0, r1
d03e2d70:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2d74:	7be2      	ldrb	r2, [r4, #15]
d03e2d76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2d7a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2d7e:	685b      	ldr	r3, [r3, #4]
d03e2d80:	685d      	ldr	r5, [r3, #4]
d03e2d82:	2302      	movs	r3, #2
d03e2d84:	47a8      	blx	r5
d03e2d86:	7b23      	ldrb	r3, [r4, #12]
d03e2d88:	7b62      	ldrb	r2, [r4, #13]
d03e2d8a:	201a      	movs	r0, #26
d03e2d8c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2d90:	7ba2      	ldrb	r2, [r4, #14]
d03e2d92:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2d96:	7be2      	ldrb	r2, [r4, #15]
d03e2d98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2d9c:	685b      	ldr	r3, [r3, #4]
d03e2d9e:	68db      	ldr	r3, [r3, #12]
d03e2da0:	4798      	blx	r3
d03e2da2:	7b23      	ldrb	r3, [r4, #12]
d03e2da4:	7b62      	ldrb	r2, [r4, #13]
d03e2da6:	213f      	movs	r1, #63	; 0x3f
d03e2da8:	2000      	movs	r0, #0
d03e2daa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2dae:	7ba2      	ldrb	r2, [r4, #14]
d03e2db0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2db4:	7be2      	ldrb	r2, [r4, #15]
d03e2db6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2dba:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e2dbe:	685b      	ldr	r3, [r3, #4]
d03e2dc0:	685d      	ldr	r5, [r3, #4]
d03e2dc2:	2301      	movs	r3, #1
d03e2dc4:	47a8      	blx	r5
d03e2dc6:	7b23      	ldrb	r3, [r4, #12]
d03e2dc8:	7b62      	ldrb	r2, [r4, #13]
d03e2dca:	201e      	movs	r0, #30
d03e2dcc:	2508      	movs	r5, #8
d03e2dce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2dd2:	7ba2      	ldrb	r2, [r4, #14]
d03e2dd4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2dd8:	7be2      	ldrb	r2, [r4, #15]
d03e2dda:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2dde:	685b      	ldr	r3, [r3, #4]
d03e2de0:	68db      	ldr	r3, [r3, #12]
d03e2de2:	4798      	blx	r3
d03e2de4:	7b23      	ldrb	r3, [r4, #12]
d03e2de6:	7b62      	ldrb	r2, [r4, #13]
d03e2de8:	2108      	movs	r1, #8
d03e2dea:	200c      	movs	r0, #12
d03e2dec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2df0:	7ba2      	ldrb	r2, [r4, #14]
d03e2df2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2df6:	7be2      	ldrb	r2, [r4, #15]
d03e2df8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2dfc:	4a2a      	ldr	r2, [pc, #168]	; (d03e2ea8 <ui_redraw_backbuffer+0x23c>)
d03e2dfe:	685b      	ldr	r3, [r3, #4]
d03e2e00:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2e02:	4798      	blx	r3
d03e2e04:	7b23      	ldrb	r3, [r4, #12]
d03e2e06:	7b62      	ldrb	r2, [r4, #13]
d03e2e08:	2018      	movs	r0, #24
d03e2e0a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2e0e:	7ba2      	ldrb	r2, [r4, #14]
d03e2e10:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2e14:	7be2      	ldrb	r2, [r4, #15]
d03e2e16:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2e1a:	685b      	ldr	r3, [r3, #4]
d03e2e1c:	68db      	ldr	r3, [r3, #12]
d03e2e1e:	4798      	blx	r3
d03e2e20:	7b23      	ldrb	r3, [r4, #12]
d03e2e22:	7b62      	ldrb	r2, [r4, #13]
d03e2e24:	2108      	movs	r1, #8
d03e2e26:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03e2e2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2e2e:	7ba2      	ldrb	r2, [r4, #14]
d03e2e30:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2e34:	7be2      	ldrb	r2, [r4, #15]
d03e2e36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2e3a:	4a1c      	ldr	r2, [pc, #112]	; (d03e2eac <ui_redraw_backbuffer+0x240>)
d03e2e3c:	685b      	ldr	r3, [r3, #4]
d03e2e3e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2e40:	4798      	blx	r3
d03e2e42:	2300      	movs	r3, #0
d03e2e44:	4698      	mov	r8, r3
d03e2e46:	f85a 1b04 	ldr.w	r1, [sl], #4
d03e2e4a:	f103 0901 	add.w	r9, r3, #1
d03e2e4e:	f8cd 800c 	str.w	r8, [sp, #12]
d03e2e52:	b2db      	uxtb	r3, r3
d03e2e54:	783a      	ldrb	r2, [r7, #0]
d03e2e56:	fa1f f089 	uxth.w	r0, r9
d03e2e5a:	9101      	str	r1, [sp, #4]
d03e2e5c:	b229      	sxth	r1, r5
d03e2e5e:	1ad2      	subs	r2, r2, r3
d03e2e60:	354c      	adds	r5, #76	; 0x4c
d03e2e62:	4253      	negs	r3, r2
d03e2e64:	b2ad      	uxth	r5, r5
d03e2e66:	4153      	adcs	r3, r2
d03e2e68:	2220      	movs	r2, #32
d03e2e6a:	9302      	str	r3, [sp, #8]
d03e2e6c:	231c      	movs	r3, #28
d03e2e6e:	9300      	str	r3, [sp, #0]
d03e2e70:	2344      	movs	r3, #68	; 0x44
d03e2e72:	f7ff fc81 	bl	d03e2778 <ui_create_button>
d03e2e76:	464b      	mov	r3, r9
d03e2e78:	2b06      	cmp	r3, #6
d03e2e7a:	d1e4      	bne.n	d03e2e46 <ui_redraw_backbuffer+0x1da>
d03e2e7c:	783b      	ldrb	r3, [r7, #0]
d03e2e7e:	2b05      	cmp	r3, #5
d03e2e80:	f201 83b4 	bhi.w	d03e45ec <ui_redraw_backbuffer+0x1980>
d03e2e84:	e8df f013 	tbh	[pc, r3, lsl #1]
d03e2e88:	00160bb4 	.word	0x00160bb4
d03e2e8c:	03420205 	.word	0x03420205
d03e2e90:	0862044e 	.word	0x0862044e
d03e2e94:	2001f000 	.word	0x2001f000
d03e2e98:	d03eb4dc 	.word	0xd03eb4dc
d03e2e9c:	d03e997c 	.word	0xd03e997c
d03e2ea0:	d03ec5e0 	.word	0xd03ec5e0
d03e2ea4:	d03ec212 	.word	0xd03ec212
d03e2ea8:	d03e8e2c 	.word	0xd03e8e2c
d03e2eac:	d03e8e41 	.word	0xd03e8e41
d03e2eb0:	d03e990c 	.word	0xd03e990c
d03e2eb4:	4da0      	ldr	r5, [pc, #640]	; (d03e3138 <ui_redraw_backbuffer+0x4cc>)
d03e2eb6:	2700      	movs	r7, #0
d03e2eb8:	4ba0      	ldr	r3, [pc, #640]	; (d03e313c <ui_redraw_backbuffer+0x4d0>)
d03e2eba:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03e2ebe:	f895 8000 	ldrb.w	r8, [r5]
d03e2ec2:	2142      	movs	r1, #66	; 0x42
d03e2ec4:	200a      	movs	r0, #10
d03e2ec6:	9300      	str	r3, [sp, #0]
d03e2ec8:	23cc      	movs	r3, #204	; 0xcc
d03e2eca:	2620      	movs	r6, #32
d03e2ecc:	f7fd fec8 	bl	d03e0c60 <ui_panel>
d03e2ed0:	9703      	str	r7, [sp, #12]
d03e2ed2:	782b      	ldrb	r3, [r5, #0]
d03e2ed4:	2246      	movs	r2, #70	; 0x46
d03e2ed6:	21f4      	movs	r1, #244	; 0xf4
d03e2ed8:	2064      	movs	r0, #100	; 0x64
d03e2eda:	fab3 f383 	clz	r3, r3
d03e2ede:	9600      	str	r6, [sp, #0]
d03e2ee0:	ea4f 0888 	mov.w	r8, r8, lsl #2
d03e2ee4:	f8df b27c 	ldr.w	fp, [pc, #636]	; d03e3164 <ui_redraw_backbuffer+0x4f8>
d03e2ee8:	095b      	lsrs	r3, r3, #5
d03e2eea:	fa5f f888 	uxtb.w	r8, r8
d03e2eee:	9302      	str	r3, [sp, #8]
d03e2ef0:	4b93      	ldr	r3, [pc, #588]	; (d03e3140 <ui_redraw_backbuffer+0x4d4>)
d03e2ef2:	9301      	str	r3, [sp, #4]
d03e2ef4:	2334      	movs	r3, #52	; 0x34
d03e2ef6:	f7ff fc3f 	bl	d03e2778 <ui_create_button>
d03e2efa:	9703      	str	r7, [sp, #12]
d03e2efc:	782b      	ldrb	r3, [r5, #0]
d03e2efe:	2246      	movs	r2, #70	; 0x46
d03e2f00:	f44f 7194 	mov.w	r1, #296	; 0x128
d03e2f04:	2065      	movs	r0, #101	; 0x65
d03e2f06:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d03e2f0a:	9600      	str	r6, [sp, #0]
d03e2f0c:	f1dc 0300 	rsbs	r3, ip, #0
d03e2f10:	eb43 030c 	adc.w	r3, r3, ip
d03e2f14:	9302      	str	r3, [sp, #8]
d03e2f16:	4b8b      	ldr	r3, [pc, #556]	; (d03e3144 <ui_redraw_backbuffer+0x4d8>)
d03e2f18:	9301      	str	r3, [sp, #4]
d03e2f1a:	2334      	movs	r3, #52	; 0x34
d03e2f1c:	f7ff fc2c 	bl	d03e2778 <ui_create_button>
d03e2f20:	9703      	str	r7, [sp, #12]
d03e2f22:	782b      	ldrb	r3, [r5, #0]
d03e2f24:	2246      	movs	r2, #70	; 0x46
d03e2f26:	f44f 71ae 	mov.w	r1, #348	; 0x15c
d03e2f2a:	2066      	movs	r0, #102	; 0x66
d03e2f2c:	f1a3 0e02 	sub.w	lr, r3, #2
d03e2f30:	9600      	str	r6, [sp, #0]
d03e2f32:	f1de 0300 	rsbs	r3, lr, #0
d03e2f36:	eb43 030e 	adc.w	r3, r3, lr
d03e2f3a:	9302      	str	r3, [sp, #8]
d03e2f3c:	4b82      	ldr	r3, [pc, #520]	; (d03e3148 <ui_redraw_backbuffer+0x4dc>)
d03e2f3e:	9301      	str	r3, [sp, #4]
d03e2f40:	2334      	movs	r3, #52	; 0x34
d03e2f42:	f7ff fc19 	bl	d03e2778 <ui_create_button>
d03e2f46:	9703      	str	r7, [sp, #12]
d03e2f48:	782b      	ldrb	r3, [r5, #0]
d03e2f4a:	f44f 71c8 	mov.w	r1, #400	; 0x190
d03e2f4e:	2246      	movs	r2, #70	; 0x46
d03e2f50:	2067      	movs	r0, #103	; 0x67
d03e2f52:	f1a3 0903 	sub.w	r9, r3, #3
d03e2f56:	9600      	str	r6, [sp, #0]
d03e2f58:	2578      	movs	r5, #120	; 0x78
d03e2f5a:	267c      	movs	r6, #124	; 0x7c
d03e2f5c:	f1d9 0300 	rsbs	r3, r9, #0
d03e2f60:	eb43 0309 	adc.w	r3, r3, r9
d03e2f64:	9302      	str	r3, [sp, #8]
d03e2f66:	4b79      	ldr	r3, [pc, #484]	; (d03e314c <ui_redraw_backbuffer+0x4e0>)
d03e2f68:	9301      	str	r3, [sp, #4]
d03e2f6a:	2334      	movs	r3, #52	; 0x34
d03e2f6c:	f7ff fc04 	bl	d03e2778 <ui_create_button>
d03e2f70:	7b23      	ldrb	r3, [r4, #12]
d03e2f72:	7b62      	ldrb	r2, [r4, #13]
d03e2f74:	201d      	movs	r0, #29
d03e2f76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2f7a:	7ba2      	ldrb	r2, [r4, #14]
d03e2f7c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2f80:	7be2      	ldrb	r2, [r4, #15]
d03e2f82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2f86:	685b      	ldr	r3, [r3, #4]
d03e2f88:	68db      	ldr	r3, [r3, #12]
d03e2f8a:	4798      	blx	r3
d03e2f8c:	7b23      	ldrb	r3, [r4, #12]
d03e2f8e:	7b62      	ldrb	r2, [r4, #13]
d03e2f90:	2160      	movs	r1, #96	; 0x60
d03e2f92:	2036      	movs	r0, #54	; 0x36
d03e2f94:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2f98:	7ba2      	ldrb	r2, [r4, #14]
d03e2f9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2f9e:	7be2      	ldrb	r2, [r4, #15]
d03e2fa0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2fa4:	4a6a      	ldr	r2, [pc, #424]	; (d03e3150 <ui_redraw_backbuffer+0x4e4>)
d03e2fa6:	685b      	ldr	r3, [r3, #4]
d03e2fa8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e2faa:	4798      	blx	r3
d03e2fac:	4b69      	ldr	r3, [pc, #420]	; (d03e3154 <ui_redraw_backbuffer+0x4e8>)
d03e2fae:	f813 9008 	ldrb.w	r9, [r3, r8]
d03e2fb2:	f89b 3000 	ldrb.w	r3, [fp]
d03e2fb6:	4543      	cmp	r3, r8
d03e2fb8:	d120      	bne.n	d03e2ffc <ui_redraw_backbuffer+0x390>
d03e2fba:	7b23      	ldrb	r3, [r4, #12]
d03e2fbc:	201c      	movs	r0, #28
d03e2fbe:	7b62      	ldrb	r2, [r4, #13]
d03e2fc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2fc4:	7ba2      	ldrb	r2, [r4, #14]
d03e2fc6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2fca:	7be2      	ldrb	r2, [r4, #15]
d03e2fcc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2fd0:	685b      	ldr	r3, [r3, #4]
d03e2fd2:	68db      	ldr	r3, [r3, #12]
d03e2fd4:	4798      	blx	r3
d03e2fd6:	7b23      	ldrb	r3, [r4, #12]
d03e2fd8:	7b62      	ldrb	r2, [r4, #13]
d03e2fda:	1f71      	subs	r1, r6, #5
d03e2fdc:	2018      	movs	r0, #24
d03e2fde:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e2fe2:	7ba2      	ldrb	r2, [r4, #14]
d03e2fe4:	b209      	sxth	r1, r1
d03e2fe6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e2fea:	7be2      	ldrb	r2, [r4, #15]
d03e2fec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e2ff0:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d03e2ff4:	685b      	ldr	r3, [r3, #4]
d03e2ff6:	685f      	ldr	r7, [r3, #4]
d03e2ff8:	2320      	movs	r3, #32
d03e2ffa:	47b8      	blx	r7
d03e2ffc:	f1b9 0f80 	cmp.w	r9, #128	; 0x80
d03e3000:	f108 0701 	add.w	r7, r8, #1
d03e3004:	4a54      	ldr	r2, [pc, #336]	; (d03e3158 <ui_redraw_backbuffer+0x4ec>)
d03e3006:	f04f 0160 	mov.w	r1, #96	; 0x60
d03e300a:	bf98      	it	ls
d03e300c:	4b53      	ldrls	r3, [pc, #332]	; (d03e315c <ui_redraw_backbuffer+0x4f0>)
d03e300e:	a80a      	add	r0, sp, #40	; 0x28
d03e3010:	bf8c      	ite	hi
d03e3012:	4b53      	ldrhi	r3, [pc, #332]	; (d03e3160 <ui_redraw_backbuffer+0x4f4>)
d03e3014:	f853 3029 	ldrls.w	r3, [r3, r9, lsl #2]
d03e3018:	f8cd 9000 	str.w	r9, [sp]
d03e301c:	9301      	str	r3, [sp, #4]
d03e301e:	463b      	mov	r3, r7
d03e3020:	f004 fb5c 	bl	d03e76dc <sniprintf>
d03e3024:	7b23      	ldrb	r3, [r4, #12]
d03e3026:	7b62      	ldrb	r2, [r4, #13]
d03e3028:	f1b8 0f09 	cmp.w	r8, #9
d03e302c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3030:	7ba2      	ldrb	r2, [r4, #14]
d03e3032:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3036:	7be2      	ldrb	r2, [r4, #15]
d03e3038:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e303c:	685b      	ldr	r3, [r3, #4]
d03e303e:	68db      	ldr	r3, [r3, #12]
d03e3040:	f000 8125 	beq.w	d03e328e <ui_redraw_backbuffer+0x622>
d03e3044:	4a47      	ldr	r2, [pc, #284]	; (d03e3164 <ui_redraw_backbuffer+0x4f8>)
d03e3046:	7810      	ldrb	r0, [r2, #0]
d03e3048:	4540      	cmp	r0, r8
d03e304a:	bf14      	ite	ne
d03e304c:	2019      	movne	r0, #25
d03e304e:	200f      	moveq	r0, #15
d03e3050:	4798      	blx	r3
d03e3052:	7b23      	ldrb	r3, [r4, #12]
d03e3054:	7b62      	ldrb	r2, [r4, #13]
d03e3056:	4631      	mov	r1, r6
d03e3058:	2034      	movs	r0, #52	; 0x34
d03e305a:	f04f 0a01 	mov.w	sl, #1
d03e305e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3062:	7ba2      	ldrb	r2, [r4, #14]
d03e3064:	f04f 081e 	mov.w	r8, #30
d03e3068:	f04f 0900 	mov.w	r9, #0
d03e306c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3070:	7be2      	ldrb	r2, [r4, #15]
d03e3072:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3076:	aa0a      	add	r2, sp, #40	; 0x28
d03e3078:	685b      	ldr	r3, [r3, #4]
d03e307a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e307c:	4798      	blx	r3
d03e307e:	1f32      	subs	r2, r6, #4
d03e3080:	4b39      	ldr	r3, [pc, #228]	; (d03e3168 <ui_redraw_backbuffer+0x4fc>)
d03e3082:	4628      	mov	r0, r5
d03e3084:	b212      	sxth	r2, r2
d03e3086:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03e308a:	9301      	str	r3, [sp, #4]
d03e308c:	232a      	movs	r3, #42	; 0x2a
d03e308e:	f8cd 8000 	str.w	r8, [sp]
d03e3092:	3624      	adds	r6, #36	; 0x24
d03e3094:	f8cd a00c 	str.w	sl, [sp, #12]
d03e3098:	f8cd 9008 	str.w	r9, [sp, #8]
d03e309c:	9207      	str	r2, [sp, #28]
d03e309e:	f7ff fb6b 	bl	d03e2778 <ui_create_button>
d03e30a2:	f105 0014 	add.w	r0, r5, #20
d03e30a6:	4455      	add	r5, sl
d03e30a8:	4b30      	ldr	r3, [pc, #192]	; (d03e316c <ui_redraw_backbuffer+0x500>)
d03e30aa:	f44f 71c6 	mov.w	r1, #396	; 0x18c
d03e30ae:	b2ad      	uxth	r5, r5
d03e30b0:	f8cd 8000 	str.w	r8, [sp]
d03e30b4:	9301      	str	r3, [sp, #4]
d03e30b6:	b280      	uxth	r0, r0
d03e30b8:	232a      	movs	r3, #42	; 0x2a
d03e30ba:	9a07      	ldr	r2, [sp, #28]
d03e30bc:	f8cd a00c 	str.w	sl, [sp, #12]
d03e30c0:	fa5f f887 	uxtb.w	r8, r7
d03e30c4:	f8cd 9008 	str.w	r9, [sp, #8]
d03e30c8:	f7ff fb56 	bl	d03e2778 <ui_create_button>
d03e30cc:	2d7c      	cmp	r5, #124	; 0x7c
d03e30ce:	f47f af6d 	bne.w	d03e2fac <ui_redraw_backbuffer+0x340>
d03e30d2:	4b27      	ldr	r3, [pc, #156]	; (d03e3170 <ui_redraw_backbuffer+0x504>)
d03e30d4:	781b      	ldrb	r3, [r3, #0]
d03e30d6:	2b05      	cmp	r3, #5
d03e30d8:	d027      	beq.n	d03e312a <ui_redraw_backbuffer+0x4be>
d03e30da:	2400      	movs	r4, #0
d03e30dc:	2520      	movs	r5, #32
d03e30de:	4b25      	ldr	r3, [pc, #148]	; (d03e3174 <ui_redraw_backbuffer+0x508>)
d03e30e0:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e30e4:	2108      	movs	r1, #8
d03e30e6:	2007      	movs	r0, #7
d03e30e8:	9301      	str	r3, [sp, #4]
d03e30ea:	2346      	movs	r3, #70	; 0x46
d03e30ec:	9403      	str	r4, [sp, #12]
d03e30ee:	9402      	str	r4, [sp, #8]
d03e30f0:	9500      	str	r5, [sp, #0]
d03e30f2:	f7ff fb41 	bl	d03e2778 <ui_create_button>
d03e30f6:	4b20      	ldr	r3, [pc, #128]	; (d03e3178 <ui_redraw_backbuffer+0x50c>)
d03e30f8:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e30fc:	f44f 71b0 	mov.w	r1, #352	; 0x160
d03e3100:	2008      	movs	r0, #8
d03e3102:	9301      	str	r3, [sp, #4]
d03e3104:	9403      	str	r4, [sp, #12]
d03e3106:	2336      	movs	r3, #54	; 0x36
d03e3108:	9402      	str	r4, [sp, #8]
d03e310a:	9500      	str	r5, [sp, #0]
d03e310c:	f7ff fb34 	bl	d03e2778 <ui_create_button>
d03e3110:	4b1a      	ldr	r3, [pc, #104]	; (d03e317c <ui_redraw_backbuffer+0x510>)
d03e3112:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e3116:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03e311a:	9301      	str	r3, [sp, #4]
d03e311c:	2009      	movs	r0, #9
d03e311e:	2336      	movs	r3, #54	; 0x36
d03e3120:	9403      	str	r4, [sp, #12]
d03e3122:	9402      	str	r4, [sp, #8]
d03e3124:	9500      	str	r5, [sp, #0]
d03e3126:	f7ff fb27 	bl	d03e2778 <ui_create_button>
d03e312a:	4d15      	ldr	r5, [pc, #84]	; (d03e3180 <ui_redraw_backbuffer+0x514>)
d03e312c:	4c15      	ldr	r4, [pc, #84]	; (d03e3184 <ui_redraw_backbuffer+0x518>)
d03e312e:	782b      	ldrb	r3, [r5, #0]
d03e3130:	2b00      	cmp	r3, #0
d03e3132:	f001 82a5 	beq.w	d03e4680 <ui_redraw_backbuffer+0x1a14>
d03e3136:	e027      	b.n	d03e3188 <ui_redraw_backbuffer+0x51c>
d03e3138:	d03ebdc6 	.word	0xd03ebdc6
d03e313c:	d03e8e54 	.word	0xd03e8e54
d03e3140:	d03e8e68 	.word	0xd03e8e68
d03e3144:	d03e8e6c 	.word	0xd03e8e6c
d03e3148:	d03e8e70 	.word	0xd03e8e70
d03e314c:	d03e8e75 	.word	0xd03e8e75
d03e3150:	d03e8e7b 	.word	0xd03e8e7b
d03e3154:	d03ea164 	.word	0xd03ea164
d03e3158:	d03e8e90 	.word	0xd03e8e90
d03e315c:	d03e9708 	.word	0xd03e9708
d03e3160:	d03e8cf2 	.word	0xd03e8cf2
d03e3164:	d03ec2af 	.word	0xd03ec2af
d03e3168:	d03e8ea7 	.word	0xd03e8ea7
d03e316c:	d03e8ea9 	.word	0xd03e8ea9
d03e3170:	d03ec212 	.word	0xd03ec212
d03e3174:	d03e90f9 	.word	0xd03e90f9
d03e3178:	d03e90ff 	.word	0xd03e90ff
d03e317c:	d03e9104 	.word	0xd03e9104
d03e3180:	d03ebdc7 	.word	0xd03ebdc7
d03e3184:	2001f000 	.word	0x2001f000
d03e3188:	231a      	movs	r3, #26
d03e318a:	f04f 0a1f 	mov.w	sl, #31
d03e318e:	2170      	movs	r1, #112	; 0x70
d03e3190:	f44f 7290 	mov.w	r2, #288	; 0x120
d03e3194:	2060      	movs	r0, #96	; 0x60
d03e3196:	e9cd 3a00 	strd	r3, sl, [sp]
d03e319a:	236c      	movs	r3, #108	; 0x6c
d03e319c:	f7fd fd0c 	bl	d03e0bb8 <ui_box>
d03e31a0:	7b23      	ldrb	r3, [r4, #12]
d03e31a2:	7b62      	ldrb	r2, [r4, #13]
d03e31a4:	2014      	movs	r0, #20
d03e31a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e31aa:	7ba2      	ldrb	r2, [r4, #14]
d03e31ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e31b0:	7be2      	ldrb	r2, [r4, #15]
d03e31b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e31b6:	685b      	ldr	r3, [r3, #4]
d03e31b8:	68db      	ldr	r3, [r3, #12]
d03e31ba:	4798      	blx	r3
d03e31bc:	7b23      	ldrb	r3, [r4, #12]
d03e31be:	7b62      	ldrb	r2, [r4, #13]
d03e31c0:	2171      	movs	r1, #113	; 0x71
d03e31c2:	2061      	movs	r0, #97	; 0x61
d03e31c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e31c8:	7ba2      	ldrb	r2, [r4, #14]
d03e31ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e31ce:	7be2      	ldrb	r2, [r4, #15]
d03e31d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e31d4:	f44f 728f 	mov.w	r2, #286	; 0x11e
d03e31d8:	685b      	ldr	r3, [r3, #4]
d03e31da:	685e      	ldr	r6, [r3, #4]
d03e31dc:	2314      	movs	r3, #20
d03e31de:	47b0      	blx	r6
d03e31e0:	7b23      	ldrb	r3, [r4, #12]
d03e31e2:	7b62      	ldrb	r2, [r4, #13]
d03e31e4:	201e      	movs	r0, #30
d03e31e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e31ea:	7ba2      	ldrb	r2, [r4, #14]
d03e31ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e31f0:	7be2      	ldrb	r2, [r4, #15]
d03e31f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e31f6:	685b      	ldr	r3, [r3, #4]
d03e31f8:	68db      	ldr	r3, [r3, #12]
d03e31fa:	4798      	blx	r3
d03e31fc:	7b23      	ldrb	r3, [r4, #12]
d03e31fe:	7b62      	ldrb	r2, [r4, #13]
d03e3200:	2175      	movs	r1, #117	; 0x75
d03e3202:	206e      	movs	r0, #110	; 0x6e
d03e3204:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3208:	7ba2      	ldrb	r2, [r4, #14]
d03e320a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e320e:	7be2      	ldrb	r2, [r4, #15]
d03e3210:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3214:	4aab      	ldr	r2, [pc, #684]	; (d03e34c4 <ui_redraw_backbuffer+0x858>)
d03e3216:	685b      	ldr	r3, [r3, #4]
d03e3218:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e321a:	4798      	blx	r3
d03e321c:	7b23      	ldrb	r3, [r4, #12]
d03e321e:	7b62      	ldrb	r2, [r4, #13]
d03e3220:	2019      	movs	r0, #25
d03e3222:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3226:	7ba2      	ldrb	r2, [r4, #14]
d03e3228:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e322c:	7be2      	ldrb	r2, [r4, #15]
d03e322e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3232:	685b      	ldr	r3, [r3, #4]
d03e3234:	68db      	ldr	r3, [r3, #12]
d03e3236:	4798      	blx	r3
d03e3238:	782b      	ldrb	r3, [r5, #0]
d03e323a:	2b01      	cmp	r3, #1
d03e323c:	f041 8204 	bne.w	d03e4648 <ui_redraw_backbuffer+0x19dc>
d03e3240:	7b23      	ldrb	r3, [r4, #12]
d03e3242:	2192      	movs	r1, #146	; 0x92
d03e3244:	7b62      	ldrb	r2, [r4, #13]
d03e3246:	2074      	movs	r0, #116	; 0x74
d03e3248:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e324c:	7ba2      	ldrb	r2, [r4, #14]
d03e324e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3252:	7be2      	ldrb	r2, [r4, #15]
d03e3254:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3258:	4a9b      	ldr	r2, [pc, #620]	; (d03e34c8 <ui_redraw_backbuffer+0x85c>)
d03e325a:	685b      	ldr	r3, [r3, #4]
d03e325c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e325e:	4798      	blx	r3
d03e3260:	7b23      	ldrb	r3, [r4, #12]
d03e3262:	7b62      	ldrb	r2, [r4, #13]
d03e3264:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3268:	7ba2      	ldrb	r2, [r4, #14]
d03e326a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e326e:	7be2      	ldrb	r2, [r4, #15]
d03e3270:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3274:	4a95      	ldr	r2, [pc, #596]	; (d03e34cc <ui_redraw_backbuffer+0x860>)
d03e3276:	685b      	ldr	r3, [r3, #4]
d03e3278:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e327a:	21a2      	movs	r1, #162	; 0xa2
d03e327c:	2074      	movs	r0, #116	; 0x74
d03e327e:	4798      	blx	r3
d03e3280:	782b      	ldrb	r3, [r5, #0]
d03e3282:	2b02      	cmp	r3, #2
d03e3284:	f041 81e3 	bne.w	d03e464e <ui_redraw_backbuffer+0x19e2>
d03e3288:	4b91      	ldr	r3, [pc, #580]	; (d03e34d0 <ui_redraw_backbuffer+0x864>)
d03e328a:	f001 b9e1 	b.w	d03e4650 <ui_redraw_backbuffer+0x19e4>
d03e328e:	200e      	movs	r0, #14
d03e3290:	e6de      	b.n	d03e3050 <ui_redraw_backbuffer+0x3e4>
d03e3292:	4b90      	ldr	r3, [pc, #576]	; (d03e34d4 <ui_redraw_backbuffer+0x868>)
d03e3294:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3298:	4d8f      	ldr	r5, [pc, #572]	; (d03e34d8 <ui_redraw_backbuffer+0x86c>)
d03e329a:	214e      	movs	r1, #78	; 0x4e
d03e329c:	f893 8000 	ldrb.w	r8, [r3]
d03e32a0:	2010      	movs	r0, #16
d03e32a2:	4b8e      	ldr	r3, [pc, #568]	; (d03e34dc <ui_redraw_backbuffer+0x870>)
d03e32a4:	2701      	movs	r7, #1
d03e32a6:	4c8e      	ldr	r4, [pc, #568]	; (d03e34e0 <ui_redraw_backbuffer+0x874>)
d03e32a8:	2600      	movs	r6, #0
d03e32aa:	9300      	str	r3, [sp, #0]
d03e32ac:	2334      	movs	r3, #52	; 0x34
d03e32ae:	f7fd fcd7 	bl	d03e0c60 <ui_panel>
d03e32b2:	882b      	ldrh	r3, [r5, #0]
d03e32b4:	2160      	movs	r1, #96	; 0x60
d03e32b6:	4a8b      	ldr	r2, [pc, #556]	; (d03e34e4 <ui_redraw_backbuffer+0x878>)
d03e32b8:	a80a      	add	r0, sp, #40	; 0x28
d03e32ba:	f8df a240 	ldr.w	sl, [pc, #576]	; d03e34fc <ui_redraw_backbuffer+0x890>
d03e32be:	f004 fa0d 	bl	d03e76dc <sniprintf>
d03e32c2:	7b23      	ldrb	r3, [r4, #12]
d03e32c4:	7b62      	ldrb	r2, [r4, #13]
d03e32c6:	201e      	movs	r0, #30
d03e32c8:	f8df 9234 	ldr.w	r9, [pc, #564]	; d03e3500 <ui_redraw_backbuffer+0x894>
d03e32cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e32d0:	7ba2      	ldrb	r2, [r4, #14]
d03e32d2:	f8df b230 	ldr.w	fp, [pc, #560]	; d03e3504 <ui_redraw_backbuffer+0x898>
d03e32d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e32da:	7be2      	ldrb	r2, [r4, #15]
d03e32dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e32e0:	685b      	ldr	r3, [r3, #4]
d03e32e2:	68db      	ldr	r3, [r3, #12]
d03e32e4:	4798      	blx	r3
d03e32e6:	7b23      	ldrb	r3, [r4, #12]
d03e32e8:	7b62      	ldrb	r2, [r4, #13]
d03e32ea:	216a      	movs	r1, #106	; 0x6a
d03e32ec:	2020      	movs	r0, #32
d03e32ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e32f2:	7ba2      	ldrb	r2, [r4, #14]
d03e32f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e32f8:	7be2      	ldrb	r2, [r4, #15]
d03e32fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e32fe:	aa0a      	add	r2, sp, #40	; 0x28
d03e3300:	685b      	ldr	r3, [r3, #4]
d03e3302:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3304:	4798      	blx	r3
d03e3306:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03e330a:	22f0      	movs	r2, #240	; 0xf0
d03e330c:	216c      	movs	r1, #108	; 0x6c
d03e330e:	9300      	str	r3, [sp, #0]
d03e3310:	205c      	movs	r0, #92	; 0x5c
d03e3312:	882b      	ldrh	r3, [r5, #0]
d03e3314:	2520      	movs	r5, #32
d03e3316:	f7fd fcfd 	bl	d03e0d14 <ui_value_bar>
d03e331a:	2322      	movs	r3, #34	; 0x22
d03e331c:	2258      	movs	r2, #88	; 0x58
d03e331e:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03e3322:	200e      	movs	r0, #14
d03e3324:	9703      	str	r7, [sp, #12]
d03e3326:	9602      	str	r6, [sp, #8]
d03e3328:	f8cd a004 	str.w	sl, [sp, #4]
d03e332c:	9500      	str	r5, [sp, #0]
d03e332e:	f7ff fa23 	bl	d03e2778 <ui_create_button>
d03e3332:	2322      	movs	r3, #34	; 0x22
d03e3334:	2258      	movs	r2, #88	; 0x58
d03e3336:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03e333a:	200f      	movs	r0, #15
d03e333c:	9703      	str	r7, [sp, #12]
d03e333e:	9602      	str	r6, [sp, #8]
d03e3340:	e9cd 5900 	strd	r5, r9, [sp]
d03e3344:	f7ff fa18 	bl	d03e2778 <ui_create_button>
d03e3348:	4b67      	ldr	r3, [pc, #412]	; (d03e34e8 <ui_redraw_backbuffer+0x87c>)
d03e334a:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e334e:	2184      	movs	r1, #132	; 0x84
d03e3350:	2010      	movs	r0, #16
d03e3352:	9300      	str	r3, [sp, #0]
d03e3354:	2334      	movs	r3, #52	; 0x34
d03e3356:	f7fd fc83 	bl	d03e0c60 <ui_panel>
d03e335a:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03e335e:	2160      	movs	r1, #96	; 0x60
d03e3360:	4a62      	ldr	r2, [pc, #392]	; (d03e34ec <ui_redraw_backbuffer+0x880>)
d03e3362:	9300      	str	r3, [sp, #0]
d03e3364:	a80a      	add	r0, sp, #40	; 0x28
d03e3366:	eb08 0307 	add.w	r3, r8, r7
d03e336a:	f004 f9b7 	bl	d03e76dc <sniprintf>
d03e336e:	7b23      	ldrb	r3, [r4, #12]
d03e3370:	7b62      	ldrb	r2, [r4, #13]
d03e3372:	201e      	movs	r0, #30
d03e3374:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3378:	7ba2      	ldrb	r2, [r4, #14]
d03e337a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e337e:	7be2      	ldrb	r2, [r4, #15]
d03e3380:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3384:	685b      	ldr	r3, [r3, #4]
d03e3386:	68db      	ldr	r3, [r3, #12]
d03e3388:	4798      	blx	r3
d03e338a:	7b23      	ldrb	r3, [r4, #12]
d03e338c:	7b62      	ldrb	r2, [r4, #13]
d03e338e:	21a0      	movs	r1, #160	; 0xa0
d03e3390:	4628      	mov	r0, r5
d03e3392:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3396:	7ba2      	ldrb	r2, [r4, #14]
d03e3398:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e339c:	7be2      	ldrb	r2, [r4, #15]
d03e339e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e33a2:	aa0a      	add	r2, sp, #40	; 0x28
d03e33a4:	685b      	ldr	r3, [r3, #4]
d03e33a6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e33a8:	4798      	blx	r3
d03e33aa:	237f      	movs	r3, #127	; 0x7f
d03e33ac:	22cc      	movs	r2, #204	; 0xcc
d03e33ae:	21a2      	movs	r1, #162	; 0xa2
d03e33b0:	2080      	movs	r0, #128	; 0x80
d03e33b2:	9300      	str	r3, [sp, #0]
d03e33b4:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03e33b8:	f7fd fcac 	bl	d03e0d14 <ui_value_bar>
d03e33bc:	2322      	movs	r3, #34	; 0x22
d03e33be:	228e      	movs	r2, #142	; 0x8e
d03e33c0:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03e33c4:	2010      	movs	r0, #16
d03e33c6:	9703      	str	r7, [sp, #12]
d03e33c8:	9602      	str	r6, [sp, #8]
d03e33ca:	f8df b13c 	ldr.w	fp, [pc, #316]	; d03e3508 <ui_redraw_backbuffer+0x89c>
d03e33ce:	e9cd 5a00 	strd	r5, sl, [sp]
d03e33d2:	f7ff f9d1 	bl	d03e2778 <ui_create_button>
d03e33d6:	2322      	movs	r3, #34	; 0x22
d03e33d8:	228e      	movs	r2, #142	; 0x8e
d03e33da:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03e33de:	2011      	movs	r0, #17
d03e33e0:	9703      	str	r7, [sp, #12]
d03e33e2:	9602      	str	r6, [sp, #8]
d03e33e4:	e9cd 5900 	strd	r5, r9, [sp]
d03e33e8:	f7ff f9c6 	bl	d03e2778 <ui_create_button>
d03e33ec:	4b40      	ldr	r3, [pc, #256]	; (d03e34f0 <ui_redraw_backbuffer+0x884>)
d03e33ee:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e33f2:	21ba      	movs	r1, #186	; 0xba
d03e33f4:	2010      	movs	r0, #16
d03e33f6:	9300      	str	r3, [sp, #0]
d03e33f8:	2334      	movs	r3, #52	; 0x34
d03e33fa:	f7fd fc31 	bl	d03e0c60 <ui_panel>
d03e33fe:	2160      	movs	r1, #96	; 0x60
d03e3400:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03e3404:	a80a      	add	r0, sp, #40	; 0x28
d03e3406:	4a3b      	ldr	r2, [pc, #236]	; (d03e34f4 <ui_redraw_backbuffer+0x888>)
d03e3408:	f004 f968 	bl	d03e76dc <sniprintf>
d03e340c:	7b23      	ldrb	r3, [r4, #12]
d03e340e:	7b62      	ldrb	r2, [r4, #13]
d03e3410:	201e      	movs	r0, #30
d03e3412:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3416:	7ba2      	ldrb	r2, [r4, #14]
d03e3418:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e341c:	7be2      	ldrb	r2, [r4, #15]
d03e341e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3422:	685b      	ldr	r3, [r3, #4]
d03e3424:	68db      	ldr	r3, [r3, #12]
d03e3426:	4798      	blx	r3
d03e3428:	7b23      	ldrb	r3, [r4, #12]
d03e342a:	7b62      	ldrb	r2, [r4, #13]
d03e342c:	21d6      	movs	r1, #214	; 0xd6
d03e342e:	4628      	mov	r0, r5
d03e3430:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3434:	7ba2      	ldrb	r2, [r4, #14]
d03e3436:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e343a:	7be2      	ldrb	r2, [r4, #15]
d03e343c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3440:	aa0a      	add	r2, sp, #40	; 0x28
d03e3442:	685b      	ldr	r3, [r3, #4]
d03e3444:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3446:	4798      	blx	r3
d03e3448:	237f      	movs	r3, #127	; 0x7f
d03e344a:	22cc      	movs	r2, #204	; 0xcc
d03e344c:	21d8      	movs	r1, #216	; 0xd8
d03e344e:	2080      	movs	r0, #128	; 0x80
d03e3450:	9300      	str	r3, [sp, #0]
d03e3452:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03e3456:	f7fd fc5d 	bl	d03e0d14 <ui_value_bar>
d03e345a:	2322      	movs	r3, #34	; 0x22
d03e345c:	22c4      	movs	r2, #196	; 0xc4
d03e345e:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03e3462:	2012      	movs	r0, #18
d03e3464:	9703      	str	r7, [sp, #12]
d03e3466:	9602      	str	r6, [sp, #8]
d03e3468:	e9cd 5a00 	strd	r5, sl, [sp]
d03e346c:	f7ff f984 	bl	d03e2778 <ui_create_button>
d03e3470:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03e3474:	2322      	movs	r3, #34	; 0x22
d03e3476:	22c4      	movs	r2, #196	; 0xc4
d03e3478:	2013      	movs	r0, #19
d03e347a:	9703      	str	r7, [sp, #12]
d03e347c:	9602      	str	r6, [sp, #8]
d03e347e:	e9cd 5900 	strd	r5, r9, [sp]
d03e3482:	f7ff f979 	bl	d03e2778 <ui_create_button>
d03e3486:	7b23      	ldrb	r3, [r4, #12]
d03e3488:	7b62      	ldrb	r2, [r4, #13]
d03e348a:	2018      	movs	r0, #24
d03e348c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3490:	7ba2      	ldrb	r2, [r4, #14]
d03e3492:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3496:	7be2      	ldrb	r2, [r4, #15]
d03e3498:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e349c:	685b      	ldr	r3, [r3, #4]
d03e349e:	68db      	ldr	r3, [r3, #12]
d03e34a0:	4798      	blx	r3
d03e34a2:	7b23      	ldrb	r3, [r4, #12]
d03e34a4:	7b62      	ldrb	r2, [r4, #13]
d03e34a6:	21fc      	movs	r1, #252	; 0xfc
d03e34a8:	201a      	movs	r0, #26
d03e34aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e34ae:	7ba2      	ldrb	r2, [r4, #14]
d03e34b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e34b4:	7be2      	ldrb	r2, [r4, #15]
d03e34b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e34ba:	4a0f      	ldr	r2, [pc, #60]	; (d03e34f8 <ui_redraw_backbuffer+0x88c>)
d03e34bc:	685b      	ldr	r3, [r3, #4]
d03e34be:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e34c0:	4798      	blx	r3
d03e34c2:	e606      	b.n	d03e30d2 <ui_redraw_backbuffer+0x466>
d03e34c4:	d03e9109 	.word	0xd03e9109
d03e34c8:	d03e9118 	.word	0xd03e9118
d03e34cc:	d03e9134 	.word	0xd03e9134
d03e34d0:	d03e8e24 	.word	0xd03e8e24
d03e34d4:	d03ec2af 	.word	0xd03ec2af
d03e34d8:	d03ea38e 	.word	0xd03ea38e
d03e34dc:	d03e8eab 	.word	0xd03e8eab
d03e34e0:	2001f000 	.word	0x2001f000
d03e34e4:	d03e8f84 	.word	0xd03e8f84
d03e34e8:	d03e8ebe 	.word	0xd03e8ebe
d03e34ec:	d03e8ed6 	.word	0xd03e8ed6
d03e34f0:	d03e8ee3 	.word	0xd03e8ee3
d03e34f4:	d03e8eff 	.word	0xd03e8eff
d03e34f8:	d03e8f08 	.word	0xd03e8f08
d03e34fc:	d03e8ea7 	.word	0xd03e8ea7
d03e3500:	d03e8ea9 	.word	0xd03e8ea9
d03e3504:	d03ea174 	.word	0xd03ea174
d03e3508:	d03ea154 	.word	0xd03ea154
d03e350c:	4b76      	ldr	r3, [pc, #472]	; (d03e36e8 <ui_redraw_backbuffer+0xa7c>)
d03e350e:	2142      	movs	r1, #66	; 0x42
d03e3510:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e3514:	2010      	movs	r0, #16
d03e3516:	9300      	str	r3, [sp, #0]
d03e3518:	23ce      	movs	r3, #206	; 0xce
d03e351a:	f7fd fba1 	bl	d03e0c60 <ui_panel>
d03e351e:	7b23      	ldrb	r3, [r4, #12]
d03e3520:	7b62      	ldrb	r2, [r4, #13]
d03e3522:	201e      	movs	r0, #30
d03e3524:	4d71      	ldr	r5, [pc, #452]	; (d03e36ec <ui_redraw_backbuffer+0xa80>)
d03e3526:	2600      	movs	r6, #0
d03e3528:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e352c:	7ba2      	ldrb	r2, [r4, #14]
d03e352e:	4f70      	ldr	r7, [pc, #448]	; (d03e36f0 <ui_redraw_backbuffer+0xa84>)
d03e3530:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3534:	7be2      	ldrb	r2, [r4, #15]
d03e3536:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e353a:	685b      	ldr	r3, [r3, #4]
d03e353c:	68db      	ldr	r3, [r3, #12]
d03e353e:	4798      	blx	r3
d03e3540:	7b23      	ldrb	r3, [r4, #12]
d03e3542:	7b62      	ldrb	r2, [r4, #13]
d03e3544:	2164      	movs	r1, #100	; 0x64
d03e3546:	2020      	movs	r0, #32
d03e3548:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e354c:	7ba2      	ldrb	r2, [r4, #14]
d03e354e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3552:	7be2      	ldrb	r2, [r4, #15]
d03e3554:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3558:	4a66      	ldr	r2, [pc, #408]	; (d03e36f4 <ui_redraw_backbuffer+0xa88>)
d03e355a:	685b      	ldr	r3, [r3, #4]
d03e355c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e355e:	4798      	blx	r3
d03e3560:	7829      	ldrb	r1, [r5, #0]
d03e3562:	4a65      	ldr	r2, [pc, #404]	; (d03e36f8 <ui_redraw_backbuffer+0xa8c>)
d03e3564:	a80a      	add	r0, sp, #40	; 0x28
d03e3566:	4b65      	ldr	r3, [pc, #404]	; (d03e36fc <ui_redraw_backbuffer+0xa90>)
d03e3568:	2900      	cmp	r1, #0
d03e356a:	bf08      	it	eq
d03e356c:	4613      	moveq	r3, r2
d03e356e:	2160      	movs	r1, #96	; 0x60
d03e3570:	4a63      	ldr	r2, [pc, #396]	; (d03e3700 <ui_redraw_backbuffer+0xa94>)
d03e3572:	f004 f8b3 	bl	d03e76dc <sniprintf>
d03e3576:	7b23      	ldrb	r3, [r4, #12]
d03e3578:	7b62      	ldrb	r2, [r4, #13]
d03e357a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e357e:	7ba2      	ldrb	r2, [r4, #14]
d03e3580:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3584:	7be2      	ldrb	r2, [r4, #15]
d03e3586:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e358a:	782a      	ldrb	r2, [r5, #0]
d03e358c:	685b      	ldr	r3, [r3, #4]
d03e358e:	2a00      	cmp	r2, #0
d03e3590:	68db      	ldr	r3, [r3, #12]
d03e3592:	bf14      	ite	ne
d03e3594:	2009      	movne	r0, #9
d03e3596:	200d      	moveq	r0, #13
d03e3598:	4798      	blx	r3
d03e359a:	7b23      	ldrb	r3, [r4, #12]
d03e359c:	7b62      	ldrb	r2, [r4, #13]
d03e359e:	218e      	movs	r1, #142	; 0x8e
d03e35a0:	2020      	movs	r0, #32
d03e35a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e35a6:	7ba2      	ldrb	r2, [r4, #14]
d03e35a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e35ac:	7be2      	ldrb	r2, [r4, #15]
d03e35ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e35b2:	aa0a      	add	r2, sp, #40	; 0x28
d03e35b4:	685b      	ldr	r3, [r3, #4]
d03e35b6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e35b8:	4798      	blx	r3
d03e35ba:	782a      	ldrb	r2, [r5, #0]
d03e35bc:	4951      	ldr	r1, [pc, #324]	; (d03e3704 <ui_redraw_backbuffer+0xa98>)
d03e35be:	2520      	movs	r5, #32
d03e35c0:	4b51      	ldr	r3, [pc, #324]	; (d03e3708 <ui_redraw_backbuffer+0xa9c>)
d03e35c2:	2014      	movs	r0, #20
d03e35c4:	9202      	str	r2, [sp, #8]
d03e35c6:	2a00      	cmp	r2, #0
d03e35c8:	bf08      	it	eq
d03e35ca:	460b      	moveq	r3, r1
d03e35cc:	9603      	str	r6, [sp, #12]
d03e35ce:	2284      	movs	r2, #132	; 0x84
d03e35d0:	f44f 71a6 	mov.w	r1, #332	; 0x14c
d03e35d4:	9301      	str	r3, [sp, #4]
d03e35d6:	2358      	movs	r3, #88	; 0x58
d03e35d8:	9500      	str	r5, [sp, #0]
d03e35da:	f7ff f8cd 	bl	d03e2778 <ui_create_button>
d03e35de:	883b      	ldrh	r3, [r7, #0]
d03e35e0:	2160      	movs	r1, #96	; 0x60
d03e35e2:	4a4a      	ldr	r2, [pc, #296]	; (d03e370c <ui_redraw_backbuffer+0xaa0>)
d03e35e4:	a80a      	add	r0, sp, #40	; 0x28
d03e35e6:	f004 f879 	bl	d03e76dc <sniprintf>
d03e35ea:	7b23      	ldrb	r3, [r4, #12]
d03e35ec:	7b62      	ldrb	r2, [r4, #13]
d03e35ee:	201e      	movs	r0, #30
d03e35f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e35f4:	7ba2      	ldrb	r2, [r4, #14]
d03e35f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e35fa:	7be2      	ldrb	r2, [r4, #15]
d03e35fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3600:	685b      	ldr	r3, [r3, #4]
d03e3602:	68db      	ldr	r3, [r3, #12]
d03e3604:	4798      	blx	r3
d03e3606:	7b23      	ldrb	r3, [r4, #12]
d03e3608:	7b62      	ldrb	r2, [r4, #13]
d03e360a:	21b2      	movs	r1, #178	; 0xb2
d03e360c:	4628      	mov	r0, r5
d03e360e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3612:	7ba2      	ldrb	r2, [r4, #14]
d03e3614:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3618:	7be2      	ldrb	r2, [r4, #15]
d03e361a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e361e:	aa0a      	add	r2, sp, #40	; 0x28
d03e3620:	685b      	ldr	r3, [r3, #4]
d03e3622:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3624:	4798      	blx	r3
d03e3626:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03e362a:	2296      	movs	r2, #150	; 0x96
d03e362c:	21b4      	movs	r1, #180	; 0xb4
d03e362e:	20a0      	movs	r0, #160	; 0xa0
d03e3630:	9300      	str	r3, [sp, #0]
d03e3632:	883b      	ldrh	r3, [r7, #0]
d03e3634:	2701      	movs	r7, #1
d03e3636:	f7fd fb6d 	bl	d03e0d14 <ui_value_bar>
d03e363a:	4b35      	ldr	r3, [pc, #212]	; (d03e3710 <ui_redraw_backbuffer+0xaa4>)
d03e363c:	22a8      	movs	r2, #168	; 0xa8
d03e363e:	f44f 71a8 	mov.w	r1, #336	; 0x150
d03e3642:	2015      	movs	r0, #21
d03e3644:	9301      	str	r3, [sp, #4]
d03e3646:	9703      	str	r7, [sp, #12]
d03e3648:	2322      	movs	r3, #34	; 0x22
d03e364a:	9602      	str	r6, [sp, #8]
d03e364c:	9500      	str	r5, [sp, #0]
d03e364e:	f7ff f893 	bl	d03e2778 <ui_create_button>
d03e3652:	4b30      	ldr	r3, [pc, #192]	; (d03e3714 <ui_redraw_backbuffer+0xaa8>)
d03e3654:	f44f 71bd 	mov.w	r1, #378	; 0x17a
d03e3658:	22a8      	movs	r2, #168	; 0xa8
d03e365a:	2016      	movs	r0, #22
d03e365c:	9301      	str	r3, [sp, #4]
d03e365e:	9703      	str	r7, [sp, #12]
d03e3660:	2322      	movs	r3, #34	; 0x22
d03e3662:	9602      	str	r6, [sp, #8]
d03e3664:	9500      	str	r5, [sp, #0]
d03e3666:	f7ff f887 	bl	d03e2778 <ui_create_button>
d03e366a:	7b23      	ldrb	r3, [r4, #12]
d03e366c:	7b62      	ldrb	r2, [r4, #13]
d03e366e:	2018      	movs	r0, #24
d03e3670:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3674:	7ba2      	ldrb	r2, [r4, #14]
d03e3676:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e367a:	7be2      	ldrb	r2, [r4, #15]
d03e367c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3680:	685b      	ldr	r3, [r3, #4]
d03e3682:	68db      	ldr	r3, [r3, #12]
d03e3684:	4798      	blx	r3
d03e3686:	7b23      	ldrb	r3, [r4, #12]
d03e3688:	7b62      	ldrb	r2, [r4, #13]
d03e368a:	21d4      	movs	r1, #212	; 0xd4
d03e368c:	4628      	mov	r0, r5
d03e368e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3692:	7ba2      	ldrb	r2, [r4, #14]
d03e3694:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3698:	7be2      	ldrb	r2, [r4, #15]
d03e369a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e369e:	4a1e      	ldr	r2, [pc, #120]	; (d03e3718 <ui_redraw_backbuffer+0xaac>)
d03e36a0:	685b      	ldr	r3, [r3, #4]
d03e36a2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e36a4:	4798      	blx	r3
d03e36a6:	7b23      	ldrb	r3, [r4, #12]
d03e36a8:	7b62      	ldrb	r2, [r4, #13]
d03e36aa:	21e4      	movs	r1, #228	; 0xe4
d03e36ac:	4628      	mov	r0, r5
d03e36ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e36b2:	7ba2      	ldrb	r2, [r4, #14]
d03e36b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e36b8:	7be2      	ldrb	r2, [r4, #15]
d03e36ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e36be:	4a17      	ldr	r2, [pc, #92]	; (d03e371c <ui_redraw_backbuffer+0xab0>)
d03e36c0:	685b      	ldr	r3, [r3, #4]
d03e36c2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e36c4:	4798      	blx	r3
d03e36c6:	7b23      	ldrb	r3, [r4, #12]
d03e36c8:	7b62      	ldrb	r2, [r4, #13]
d03e36ca:	21f4      	movs	r1, #244	; 0xf4
d03e36cc:	4628      	mov	r0, r5
d03e36ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e36d2:	7ba2      	ldrb	r2, [r4, #14]
d03e36d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e36d8:	7be2      	ldrb	r2, [r4, #15]
d03e36da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e36de:	4a10      	ldr	r2, [pc, #64]	; (d03e3720 <ui_redraw_backbuffer+0xab4>)
d03e36e0:	685b      	ldr	r3, [r3, #4]
d03e36e2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e36e4:	e6ec      	b.n	d03e34c0 <ui_redraw_backbuffer+0x854>
d03e36e6:	bf00      	nop
d03e36e8:	d03e8f32 	.word	0xd03e8f32
d03e36ec:	d03ea188 	.word	0xd03ea188
d03e36f0:	d03ea18a 	.word	0xd03ea18a
d03e36f4:	d03e8f46 	.word	0xd03e8f46
d03e36f8:	d03e8dad 	.word	0xd03e8dad
d03e36fc:	d03e8da5 	.word	0xd03e8da5
d03e3700:	d03e8f70 	.word	0xd03e8f70
d03e3704:	d03e8db8 	.word	0xd03e8db8
d03e3708:	d03e8db3 	.word	0xd03e8db3
d03e370c:	d03e8f7a 	.word	0xd03e8f7a
d03e3710:	d03e8ea7 	.word	0xd03e8ea7
d03e3714:	d03e8ea9 	.word	0xd03e8ea9
d03e3718:	d03e8f89 	.word	0xd03e8f89
d03e371c:	d03e8faa 	.word	0xd03e8faa
d03e3720:	d03e8fc8 	.word	0xd03e8fc8
d03e3724:	4b57      	ldr	r3, [pc, #348]	; (d03e3884 <ui_redraw_backbuffer+0xc18>)
d03e3726:	781f      	ldrb	r7, [r3, #0]
d03e3728:	4b57      	ldr	r3, [pc, #348]	; (d03e3888 <ui_redraw_backbuffer+0xc1c>)
d03e372a:	5dde      	ldrb	r6, [r3, r7]
d03e372c:	4b57      	ldr	r3, [pc, #348]	; (d03e388c <ui_redraw_backbuffer+0xc20>)
d03e372e:	781d      	ldrb	r5, [r3, #0]
d03e3730:	2d00      	cmp	r5, #0
d03e3732:	f000 8083 	beq.w	d03e383c <ui_redraw_backbuffer+0xbd0>
d03e3736:	4b56      	ldr	r3, [pc, #344]	; (d03e3890 <ui_redraw_backbuffer+0xc24>)
d03e3738:	4a56      	ldr	r2, [pc, #344]	; (d03e3894 <ui_redraw_backbuffer+0xc28>)
d03e373a:	781b      	ldrb	r3, [r3, #0]
d03e373c:	42b3      	cmp	r3, r6
d03e373e:	4b56      	ldr	r3, [pc, #344]	; (d03e3898 <ui_redraw_backbuffer+0xc2c>)
d03e3740:	bf0e      	itee	eq
d03e3742:	2501      	moveq	r5, #1
d03e3744:	2500      	movne	r5, #0
d03e3746:	4613      	movne	r3, r2
d03e3748:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03e374c:	2142      	movs	r1, #66	; 0x42
d03e374e:	2010      	movs	r0, #16
d03e3750:	9300      	str	r3, [sp, #0]
d03e3752:	23ce      	movs	r3, #206	; 0xce
d03e3754:	f04f 0901 	mov.w	r9, #1
d03e3758:	f7fd fa82 	bl	d03e0c60 <ui_panel>
d03e375c:	2e80      	cmp	r6, #128	; 0x80
d03e375e:	f107 0301 	add.w	r3, r7, #1
d03e3762:	f04f 0160 	mov.w	r1, #96	; 0x60
d03e3766:	bf98      	it	ls
d03e3768:	4a4c      	ldrls	r2, [pc, #304]	; (d03e389c <ui_redraw_backbuffer+0xc30>)
d03e376a:	a80a      	add	r0, sp, #40	; 0x28
d03e376c:	bf88      	it	hi
d03e376e:	4a4c      	ldrhi	r2, [pc, #304]	; (d03e38a0 <ui_redraw_backbuffer+0xc34>)
d03e3770:	f04f 0700 	mov.w	r7, #0
d03e3774:	bf98      	it	ls
d03e3776:	f852 2026 	ldrls.w	r2, [r2, r6, lsl #2]
d03e377a:	f04f 0820 	mov.w	r8, #32
d03e377e:	9600      	str	r6, [sp, #0]
d03e3780:	9201      	str	r2, [sp, #4]
d03e3782:	4a48      	ldr	r2, [pc, #288]	; (d03e38a4 <ui_redraw_backbuffer+0xc38>)
d03e3784:	f003 ffaa 	bl	d03e76dc <sniprintf>
d03e3788:	7b23      	ldrb	r3, [r4, #12]
d03e378a:	7b62      	ldrb	r2, [r4, #13]
d03e378c:	201e      	movs	r0, #30
d03e378e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3792:	7ba2      	ldrb	r2, [r4, #14]
d03e3794:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3798:	7be2      	ldrb	r2, [r4, #15]
d03e379a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e379e:	685b      	ldr	r3, [r3, #4]
d03e37a0:	68db      	ldr	r3, [r3, #12]
d03e37a2:	4798      	blx	r3
d03e37a4:	7b23      	ldrb	r3, [r4, #12]
d03e37a6:	7b62      	ldrb	r2, [r4, #13]
d03e37a8:	215c      	movs	r1, #92	; 0x5c
d03e37aa:	201e      	movs	r0, #30
d03e37ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e37b0:	7ba2      	ldrb	r2, [r4, #14]
d03e37b2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e37b6:	7be2      	ldrb	r2, [r4, #15]
d03e37b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e37bc:	aa0a      	add	r2, sp, #40	; 0x28
d03e37be:	685b      	ldr	r3, [r3, #4]
d03e37c0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e37c2:	4798      	blx	r3
d03e37c4:	4b38      	ldr	r3, [pc, #224]	; (d03e38a8 <ui_redraw_backbuffer+0xc3c>)
d03e37c6:	225e      	movs	r2, #94	; 0x5e
d03e37c8:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e37cc:	2017      	movs	r0, #23
d03e37ce:	9301      	str	r3, [sp, #4]
d03e37d0:	f8cd 900c 	str.w	r9, [sp, #12]
d03e37d4:	2348      	movs	r3, #72	; 0x48
d03e37d6:	9702      	str	r7, [sp, #8]
d03e37d8:	f8cd 8000 	str.w	r8, [sp]
d03e37dc:	f7fe ffcc 	bl	d03e2778 <ui_create_button>
d03e37e0:	4b32      	ldr	r3, [pc, #200]	; (d03e38ac <ui_redraw_backbuffer+0xc40>)
d03e37e2:	2018      	movs	r0, #24
d03e37e4:	225e      	movs	r2, #94	; 0x5e
d03e37e6:	9301      	str	r3, [sp, #4]
d03e37e8:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e37ec:	2348      	movs	r3, #72	; 0x48
d03e37ee:	f8cd 900c 	str.w	r9, [sp, #12]
d03e37f2:	9702      	str	r7, [sp, #8]
d03e37f4:	f8cd 8000 	str.w	r8, [sp]
d03e37f8:	f7fe ffbe 	bl	d03e2778 <ui_create_button>
d03e37fc:	0630      	lsls	r0, r6, #24
d03e37fe:	d51f      	bpl.n	d03e3840 <ui_redraw_backbuffer+0xbd4>
d03e3800:	7b23      	ldrb	r3, [r4, #12]
d03e3802:	2018      	movs	r0, #24
d03e3804:	7b62      	ldrb	r2, [r4, #13]
d03e3806:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e380a:	7ba2      	ldrb	r2, [r4, #14]
d03e380c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3810:	7be2      	ldrb	r2, [r4, #15]
d03e3812:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3816:	685b      	ldr	r3, [r3, #4]
d03e3818:	68db      	ldr	r3, [r3, #12]
d03e381a:	4798      	blx	r3
d03e381c:	7b23      	ldrb	r3, [r4, #12]
d03e381e:	7b62      	ldrb	r2, [r4, #13]
d03e3820:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3824:	7ba2      	ldrb	r2, [r4, #14]
d03e3826:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e382a:	7be2      	ldrb	r2, [r4, #15]
d03e382c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3830:	4a1f      	ldr	r2, [pc, #124]	; (d03e38b0 <ui_redraw_backbuffer+0xc44>)
d03e3832:	685b      	ldr	r3, [r3, #4]
d03e3834:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3836:	2186      	movs	r1, #134	; 0x86
d03e3838:	201e      	movs	r0, #30
d03e383a:	e641      	b.n	d03e34c0 <ui_redraw_backbuffer+0x854>
d03e383c:	4b15      	ldr	r3, [pc, #84]	; (d03e3894 <ui_redraw_backbuffer+0xc28>)
d03e383e:	e783      	b.n	d03e3748 <ui_redraw_backbuffer+0xadc>
d03e3840:	4b1c      	ldr	r3, [pc, #112]	; (d03e38b4 <ui_redraw_backbuffer+0xc48>)
d03e3842:	f853 8026 	ldr.w	r8, [r3, r6, lsl #2]
d03e3846:	f1b8 0f00 	cmp.w	r8, #0
d03e384a:	d137      	bne.n	d03e38bc <ui_redraw_backbuffer+0xc50>
d03e384c:	7b23      	ldrb	r3, [r4, #12]
d03e384e:	200d      	movs	r0, #13
d03e3850:	7b62      	ldrb	r2, [r4, #13]
d03e3852:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3856:	7ba2      	ldrb	r2, [r4, #14]
d03e3858:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e385c:	7be2      	ldrb	r2, [r4, #15]
d03e385e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3862:	685b      	ldr	r3, [r3, #4]
d03e3864:	68db      	ldr	r3, [r3, #12]
d03e3866:	4798      	blx	r3
d03e3868:	7b23      	ldrb	r3, [r4, #12]
d03e386a:	7b62      	ldrb	r2, [r4, #13]
d03e386c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3870:	7ba2      	ldrb	r2, [r4, #14]
d03e3872:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3876:	7be2      	ldrb	r2, [r4, #15]
d03e3878:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e387c:	4a0e      	ldr	r2, [pc, #56]	; (d03e38b8 <ui_redraw_backbuffer+0xc4c>)
d03e387e:	685b      	ldr	r3, [r3, #4]
d03e3880:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3882:	e7d8      	b.n	d03e3836 <ui_redraw_backbuffer+0xbca>
d03e3884:	d03ec2af 	.word	0xd03ec2af
d03e3888:	d03ea164 	.word	0xd03ea164
d03e388c:	d03ec45b 	.word	0xd03ec45b
d03e3890:	d03ec460 	.word	0xd03ec460
d03e3894:	d03e8dcd 	.word	0xd03e8dcd
d03e3898:	d03e8dbf 	.word	0xd03e8dbf
d03e389c:	d03e9708 	.word	0xd03e9708
d03e38a0:	d03e8cf2 	.word	0xd03e8cf2
d03e38a4:	d03e8fe6 	.word	0xd03e8fe6
d03e38a8:	d03e8d2b 	.word	0xd03e8d2b
d03e38ac:	d03e8d2e 	.word	0xd03e8d2e
d03e38b0:	d03e8ff9 	.word	0xd03e8ff9
d03e38b4:	d03e9a7c 	.word	0xd03e9a7c
d03e38b8:	d03e9019 	.word	0xd03e9019
d03e38bc:	f7fd fa7a 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e38c0:	4630      	mov	r0, r6
d03e38c2:	f7fd fa61 	bl	d03e0d88 <vm_program_length>
d03e38c6:	7b23      	ldrb	r3, [r4, #12]
d03e38c8:	7b62      	ldrb	r2, [r4, #13]
d03e38ca:	4681      	mov	r9, r0
d03e38cc:	201d      	movs	r0, #29
d03e38ce:	f8df a350 	ldr.w	sl, [pc, #848]	; d03e3c20 <ui_redraw_backbuffer+0xfb4>
d03e38d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e38d6:	7ba2      	ldrb	r2, [r4, #14]
d03e38d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e38dc:	7be2      	ldrb	r2, [r4, #15]
d03e38de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e38e2:	685b      	ldr	r3, [r3, #4]
d03e38e4:	68db      	ldr	r3, [r3, #12]
d03e38e6:	4798      	blx	r3
d03e38e8:	7b23      	ldrb	r3, [r4, #12]
d03e38ea:	7b62      	ldrb	r2, [r4, #13]
d03e38ec:	2172      	movs	r1, #114	; 0x72
d03e38ee:	201e      	movs	r0, #30
d03e38f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e38f4:	7ba2      	ldrb	r2, [r4, #14]
d03e38f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e38fa:	7be2      	ldrb	r2, [r4, #15]
d03e38fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3900:	4ab8      	ldr	r2, [pc, #736]	; (d03e3be4 <ui_redraw_backbuffer+0xf78>)
d03e3902:	685b      	ldr	r3, [r3, #4]
d03e3904:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3906:	4798      	blx	r3
d03e3908:	4bb7      	ldr	r3, [pc, #732]	; (d03e3be8 <ui_redraw_backbuffer+0xf7c>)
d03e390a:	781e      	ldrb	r6, [r3, #0]
d03e390c:	443e      	add	r6, r7
d03e390e:	b2f6      	uxtb	r6, r6
d03e3910:	45b1      	cmp	r9, r6
d03e3912:	f200 820d 	bhi.w	d03e3d30 <ui_redraw_backbuffer+0x10c4>
d03e3916:	2301      	movs	r3, #1
d03e3918:	2600      	movs	r6, #0
d03e391a:	225e      	movs	r2, #94	; 0x5e
d03e391c:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03e3920:	9303      	str	r3, [sp, #12]
d03e3922:	2019      	movs	r0, #25
d03e3924:	4bb1      	ldr	r3, [pc, #708]	; (d03e3bec <ui_redraw_backbuffer+0xf80>)
d03e3926:	9602      	str	r6, [sp, #8]
d03e3928:	9301      	str	r3, [sp, #4]
d03e392a:	2320      	movs	r3, #32
d03e392c:	4fb0      	ldr	r7, [pc, #704]	; (d03e3bf0 <ui_redraw_backbuffer+0xf84>)
d03e392e:	9300      	str	r3, [sp, #0]
d03e3930:	2322      	movs	r3, #34	; 0x22
d03e3932:	f7fe ff21 	bl	d03e2778 <ui_create_button>
d03e3936:	4baf      	ldr	r3, [pc, #700]	; (d03e3bf4 <ui_redraw_backbuffer+0xf88>)
d03e3938:	4aaf      	ldr	r2, [pc, #700]	; (d03e3bf8 <ui_redraw_backbuffer+0xf8c>)
d03e393a:	42b5      	cmp	r5, r6
d03e393c:	bf08      	it	eq
d03e393e:	461f      	moveq	r7, r3
d03e3940:	7813      	ldrb	r3, [r2, #0]
d03e3942:	2bbd      	cmp	r3, #189	; 0xbd
d03e3944:	f240 82a6 	bls.w	d03e3e94 <ui_redraw_backbuffer+0x1228>
d03e3948:	4bac      	ldr	r3, [pc, #688]	; (d03e3bfc <ui_redraw_backbuffer+0xf90>)
d03e394a:	781b      	ldrb	r3, [r3, #0]
d03e394c:	07d9      	lsls	r1, r3, #31
d03e394e:	f140 82b4 	bpl.w	d03e3eba <ui_redraw_backbuffer+0x124e>
d03e3952:	4aab      	ldr	r2, [pc, #684]	; (d03e3c00 <ui_redraw_backbuffer+0xf94>)
d03e3954:	4bab      	ldr	r3, [pc, #684]	; (d03e3c04 <ui_redraw_backbuffer+0xf98>)
d03e3956:	8812      	ldrh	r2, [r2, #0]
d03e3958:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e395c:	f5a2 72d1 	sub.w	r2, r2, #418	; 0x1a2
d03e3960:	b292      	uxth	r2, r2
d03e3962:	2a21      	cmp	r2, #33	; 0x21
d03e3964:	f200 82a9 	bhi.w	d03e3eba <ui_redraw_backbuffer+0x124e>
d03e3968:	3b7c      	subs	r3, #124	; 0x7c
d03e396a:	b29b      	uxth	r3, r3
d03e396c:	2b6b      	cmp	r3, #107	; 0x6b
d03e396e:	f200 82a4 	bhi.w	d03e3eba <ui_redraw_backbuffer+0x124e>
d03e3972:	2d00      	cmp	r5, #0
d03e3974:	f04f 0601 	mov.w	r6, #1
d03e3978:	f04f 0314 	mov.w	r3, #20
d03e397c:	f04f 0200 	mov.w	r2, #0
d03e3980:	9301      	str	r3, [sp, #4]
d03e3982:	f04f 031a 	mov.w	r3, #26
d03e3986:	f04f 017c 	mov.w	r1, #124	; 0x7c
d03e398a:	f8ad 2024 	strh.w	r2, [sp, #36]	; 0x24
d03e398e:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03e3992:	f04f 0222 	mov.w	r2, #34	; 0x22
d03e3996:	9300      	str	r3, [sp, #0]
d03e3998:	f04f 036c 	mov.w	r3, #108	; 0x6c
d03e399c:	bf14      	ite	ne
d03e399e:	f04f 0a0f 	movne.w	sl, #15
d03e39a2:	f04f 0a19 	moveq.w	sl, #25
d03e39a6:	f7fd f907 	bl	d03e0bb8 <ui_box>
d03e39aa:	7b23      	ldrb	r3, [r4, #12]
d03e39ac:	7b62      	ldrb	r2, [r4, #13]
d03e39ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e39b2:	7ba2      	ldrb	r2, [r4, #14]
d03e39b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e39b8:	7be2      	ldrb	r2, [r4, #15]
d03e39ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e39be:	685b      	ldr	r3, [r3, #4]
d03e39c0:	68db      	ldr	r3, [r3, #12]
d03e39c2:	2e00      	cmp	r6, #0
d03e39c4:	f040 827f 	bne.w	d03e3ec6 <ui_redraw_backbuffer+0x125a>
d03e39c8:	2d00      	cmp	r5, #0
d03e39ca:	bf14      	ite	ne
d03e39cc:	201d      	movne	r0, #29
d03e39ce:	2015      	moveq	r0, #21
d03e39d0:	4798      	blx	r3
d03e39d2:	7b23      	ldrb	r3, [r4, #12]
d03e39d4:	7b62      	ldrb	r2, [r4, #13]
d03e39d6:	217d      	movs	r1, #125	; 0x7d
d03e39d8:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e39dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e39e0:	7ba2      	ldrb	r2, [r4, #14]
d03e39e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e39e6:	7be2      	ldrb	r2, [r4, #15]
d03e39e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e39ec:	2220      	movs	r2, #32
d03e39ee:	685b      	ldr	r3, [r3, #4]
d03e39f0:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e39f4:	2302      	movs	r3, #2
d03e39f6:	47c0      	blx	r8
d03e39f8:	7b23      	ldrb	r3, [r4, #12]
d03e39fa:	7b62      	ldrb	r2, [r4, #13]
d03e39fc:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e3a00:	217d      	movs	r1, #125	; 0x7d
d03e3a02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3a06:	7ba2      	ldrb	r2, [r4, #14]
d03e3a08:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3a0c:	7be2      	ldrb	r2, [r4, #15]
d03e3a0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3a12:	2202      	movs	r2, #2
d03e3a14:	685b      	ldr	r3, [r3, #4]
d03e3a16:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e3a1a:	236a      	movs	r3, #106	; 0x6a
d03e3a1c:	47c0      	blx	r8
d03e3a1e:	7b23      	ldrb	r3, [r4, #12]
d03e3a20:	7b62      	ldrb	r2, [r4, #13]
d03e3a22:	2e00      	cmp	r6, #0
d03e3a24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3a28:	7ba2      	ldrb	r2, [r4, #14]
d03e3a2a:	bf14      	ite	ne
d03e3a2c:	201d      	movne	r0, #29
d03e3a2e:	2010      	moveq	r0, #16
d03e3a30:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3a34:	7be2      	ldrb	r2, [r4, #15]
d03e3a36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3a3a:	685b      	ldr	r3, [r3, #4]
d03e3a3c:	68db      	ldr	r3, [r3, #12]
d03e3a3e:	4798      	blx	r3
d03e3a40:	7b23      	ldrb	r3, [r4, #12]
d03e3a42:	7b62      	ldrb	r2, [r4, #13]
d03e3a44:	21e5      	movs	r1, #229	; 0xe5
d03e3a46:	f240 10a3 	movw	r0, #419	; 0x1a3
d03e3a4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3a4e:	7ba2      	ldrb	r2, [r4, #14]
d03e3a50:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3a54:	7be2      	ldrb	r2, [r4, #15]
d03e3a56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3a5a:	2220      	movs	r2, #32
d03e3a5c:	685b      	ldr	r3, [r3, #4]
d03e3a5e:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e3a62:	2302      	movs	r3, #2
d03e3a64:	47c0      	blx	r8
d03e3a66:	7b23      	ldrb	r3, [r4, #12]
d03e3a68:	7b62      	ldrb	r2, [r4, #13]
d03e3a6a:	217d      	movs	r1, #125	; 0x7d
d03e3a6c:	f240 10c1 	movw	r0, #449	; 0x1c1
d03e3a70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3a74:	7ba2      	ldrb	r2, [r4, #14]
d03e3a76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3a7a:	7be2      	ldrb	r2, [r4, #15]
d03e3a7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3a80:	2202      	movs	r2, #2
d03e3a82:	685b      	ldr	r3, [r3, #4]
d03e3a84:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e3a88:	236a      	movs	r3, #106	; 0x6a
d03e3a8a:	47c0      	blx	r8
d03e3a8c:	7b23      	ldrb	r3, [r4, #12]
d03e3a8e:	7b62      	ldrb	r2, [r4, #13]
d03e3a90:	2e00      	cmp	r6, #0
d03e3a92:	4650      	mov	r0, sl
d03e3a94:	f04f 0a00 	mov.w	sl, #0
d03e3a98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3a9c:	7ba2      	ldrb	r2, [r4, #14]
d03e3a9e:	bf0c      	ite	eq
d03e3aa0:	f04f 0892 	moveq.w	r8, #146	; 0x92
d03e3aa4:	f04f 0893 	movne.w	r8, #147	; 0x93
d03e3aa8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3aac:	7be2      	ldrb	r2, [r4, #15]
d03e3aae:	f240 16af 	movw	r6, #431	; 0x1af
d03e3ab2:	bf18      	it	ne
d03e3ab4:	f44f 76d8 	movne.w	r6, #432	; 0x1b0
d03e3ab8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3abc:	685b      	ldr	r3, [r3, #4]
d03e3abe:	68db      	ldr	r3, [r3, #12]
d03e3ac0:	4798      	blx	r3
d03e3ac2:	f817 300a 	ldrb.w	r3, [r7, sl]
d03e3ac6:	eb08 110a 	add.w	r1, r8, sl, lsl #4
d03e3aca:	f10a 0a01 	add.w	sl, sl, #1
d03e3ace:	4630      	mov	r0, r6
d03e3ad0:	f88d 3024 	strb.w	r3, [sp, #36]	; 0x24
d03e3ad4:	7b23      	ldrb	r3, [r4, #12]
d03e3ad6:	7b62      	ldrb	r2, [r4, #13]
d03e3ad8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3adc:	7ba2      	ldrb	r2, [r4, #14]
d03e3ade:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3ae2:	7be2      	ldrb	r2, [r4, #15]
d03e3ae4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3ae8:	aa09      	add	r2, sp, #36	; 0x24
d03e3aea:	685b      	ldr	r3, [r3, #4]
d03e3aec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3aee:	4798      	blx	r3
d03e3af0:	f1ba 0f04 	cmp.w	sl, #4
d03e3af4:	d1e5      	bne.n	d03e3ac2 <ui_redraw_backbuffer+0xe56>
d03e3af6:	2301      	movs	r3, #1
d03e3af8:	22e6      	movs	r2, #230	; 0xe6
d03e3afa:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03e3afe:	201b      	movs	r0, #27
d03e3b00:	9303      	str	r3, [sp, #12]
d03e3b02:	2300      	movs	r3, #0
d03e3b04:	9302      	str	r3, [sp, #8]
d03e3b06:	4b40      	ldr	r3, [pc, #256]	; (d03e3c08 <ui_redraw_backbuffer+0xf9c>)
d03e3b08:	9301      	str	r3, [sp, #4]
d03e3b0a:	2320      	movs	r3, #32
d03e3b0c:	9300      	str	r3, [sp, #0]
d03e3b0e:	2322      	movs	r3, #34	; 0x22
d03e3b10:	f7fe fe32 	bl	d03e2778 <ui_create_button>
d03e3b14:	2d00      	cmp	r5, #0
d03e3b16:	f000 81da 	beq.w	d03e3ece <ui_redraw_backbuffer+0x1262>
d03e3b1a:	4b3c      	ldr	r3, [pc, #240]	; (d03e3c0c <ui_redraw_backbuffer+0xfa0>)
d03e3b1c:	781b      	ldrb	r3, [r3, #0]
d03e3b1e:	2b01      	cmp	r3, #1
d03e3b20:	f000 81d3 	beq.w	d03e3eca <ui_redraw_backbuffer+0x125e>
d03e3b24:	4e3a      	ldr	r6, [pc, #232]	; (d03e3c10 <ui_redraw_backbuffer+0xfa4>)
d03e3b26:	4a3b      	ldr	r2, [pc, #236]	; (d03e3c14 <ui_redraw_backbuffer+0xfa8>)
d03e3b28:	2b02      	cmp	r3, #2
d03e3b2a:	bf08      	it	eq
d03e3b2c:	4616      	moveq	r6, r2
d03e3b2e:	2500      	movs	r5, #0
d03e3b30:	f04f 081e 	mov.w	r8, #30
d03e3b34:	4b38      	ldr	r3, [pc, #224]	; (d03e3c18 <ui_redraw_backbuffer+0xfac>)
d03e3b36:	2242      	movs	r2, #66	; 0x42
d03e3b38:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e3b3c:	201c      	movs	r0, #28
d03e3b3e:	9301      	str	r3, [sp, #4]
d03e3b40:	2348      	movs	r3, #72	; 0x48
d03e3b42:	f8cd 8000 	str.w	r8, [sp]
d03e3b46:	2701      	movs	r7, #1
d03e3b48:	9503      	str	r5, [sp, #12]
d03e3b4a:	9502      	str	r5, [sp, #8]
d03e3b4c:	f7fe fe14 	bl	d03e2778 <ui_create_button>
d03e3b50:	4b32      	ldr	r3, [pc, #200]	; (d03e3c1c <ui_redraw_backbuffer+0xfb0>)
d03e3b52:	2242      	movs	r2, #66	; 0x42
d03e3b54:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e3b58:	201d      	movs	r0, #29
d03e3b5a:	9301      	str	r3, [sp, #4]
d03e3b5c:	f8cd 8000 	str.w	r8, [sp]
d03e3b60:	2348      	movs	r3, #72	; 0x48
d03e3b62:	9503      	str	r5, [sp, #12]
d03e3b64:	9502      	str	r5, [sp, #8]
d03e3b66:	f7fe fe07 	bl	d03e2778 <ui_create_button>
d03e3b6a:	4b2d      	ldr	r3, [pc, #180]	; (d03e3c20 <ui_redraw_backbuffer+0xfb4>)
d03e3b6c:	2160      	movs	r1, #96	; 0x60
d03e3b6e:	9600      	str	r6, [sp, #0]
d03e3b70:	4a2c      	ldr	r2, [pc, #176]	; (d03e3c24 <ui_redraw_backbuffer+0xfb8>)
d03e3b72:	a80a      	add	r0, sp, #40	; 0x28
d03e3b74:	781b      	ldrb	r3, [r3, #0]
d03e3b76:	2620      	movs	r6, #32
d03e3b78:	f003 fdb0 	bl	d03e76dc <sniprintf>
d03e3b7c:	7b23      	ldrb	r3, [r4, #12]
d03e3b7e:	7b62      	ldrb	r2, [r4, #13]
d03e3b80:	2018      	movs	r0, #24
d03e3b82:	f8df b0a8 	ldr.w	fp, [pc, #168]	; d03e3c2c <ui_redraw_backbuffer+0xfc0>
d03e3b86:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3b8a:	7ba2      	ldrb	r2, [r4, #14]
d03e3b8c:	f8df a0a0 	ldr.w	sl, [pc, #160]	; d03e3c30 <ui_redraw_backbuffer+0xfc4>
d03e3b90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3b94:	7be2      	ldrb	r2, [r4, #15]
d03e3b96:	f8df 909c 	ldr.w	r9, [pc, #156]	; d03e3c34 <ui_redraw_backbuffer+0xfc8>
d03e3b9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3b9e:	685b      	ldr	r3, [r3, #4]
d03e3ba0:	68db      	ldr	r3, [r3, #12]
d03e3ba2:	4798      	blx	r3
d03e3ba4:	7b23      	ldrb	r3, [r4, #12]
d03e3ba6:	7b62      	ldrb	r2, [r4, #13]
d03e3ba8:	2146      	movs	r1, #70	; 0x46
d03e3baa:	20a0      	movs	r0, #160	; 0xa0
d03e3bac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3bb0:	7ba2      	ldrb	r2, [r4, #14]
d03e3bb2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3bb6:	7be2      	ldrb	r2, [r4, #15]
d03e3bb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3bbc:	aa0a      	add	r2, sp, #40	; 0x28
d03e3bbe:	685b      	ldr	r3, [r3, #4]
d03e3bc0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3bc2:	4798      	blx	r3
d03e3bc4:	7b23      	ldrb	r3, [r4, #12]
d03e3bc6:	7b62      	ldrb	r2, [r4, #13]
d03e3bc8:	218a      	movs	r1, #138	; 0x8a
d03e3bca:	20f0      	movs	r0, #240	; 0xf0
d03e3bcc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3bd0:	7ba2      	ldrb	r2, [r4, #14]
d03e3bd2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3bd6:	7be2      	ldrb	r2, [r4, #15]
d03e3bd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3bdc:	4a12      	ldr	r2, [pc, #72]	; (d03e3c28 <ui_redraw_backbuffer+0xfbc>)
d03e3bde:	685b      	ldr	r3, [r3, #4]
d03e3be0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3be2:	e029      	b.n	d03e3c38 <ui_redraw_backbuffer+0xfcc>
d03e3be4:	d03e9031 	.word	0xd03e9031
d03e3be8:	d03ec469 	.word	0xd03ec469
d03e3bec:	d03e9047 	.word	0xd03e9047
d03e3bf0:	d03e8de0 	.word	0xd03e8de0
d03e3bf4:	d03e8de5 	.word	0xd03e8de5
d03e3bf8:	d03eb4dc 	.word	0xd03eb4dc
d03e3bfc:	d03ec210 	.word	0xd03ec210
d03e3c00:	d03ec276 	.word	0xd03ec276
d03e3c04:	d03ec278 	.word	0xd03ec278
d03e3c08:	d03e905f 	.word	0xd03e905f
d03e3c0c:	d03ec45a 	.word	0xd03ec45a
d03e3c10:	d03e8dee 	.word	0xd03e8dee
d03e3c14:	d03e8df2 	.word	0xd03e8df2
d03e3c18:	d03e8e1c 	.word	0xd03e8e1c
d03e3c1c:	d03e9062 	.word	0xd03e9062
d03e3c20:	d03ec461 	.word	0xd03ec461
d03e3c24:	d03e9068 	.word	0xd03e9068
d03e3c28:	d03e9073 	.word	0xd03e9073
d03e3c2c:	d03e8e77 	.word	0xd03e8e77
d03e3c30:	d03e9076 	.word	0xd03e9076
d03e3c34:	d03e8ea7 	.word	0xd03e8ea7
d03e3c38:	4798      	blx	r3
d03e3c3a:	4640      	mov	r0, r8
d03e3c3c:	2348      	movs	r3, #72	; 0x48
d03e3c3e:	2288      	movs	r2, #136	; 0x88
d03e3c40:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e3c44:	9703      	str	r7, [sp, #12]
d03e3c46:	9502      	str	r5, [sp, #8]
d03e3c48:	f8cd b004 	str.w	fp, [sp, #4]
d03e3c4c:	9600      	str	r6, [sp, #0]
d03e3c4e:	f7fe fd93 	bl	d03e2778 <ui_create_button>
d03e3c52:	f8df 82f4 	ldr.w	r8, [pc, #756]	; d03e3f48 <ui_redraw_backbuffer+0x12dc>
d03e3c56:	2348      	movs	r3, #72	; 0x48
d03e3c58:	2288      	movs	r2, #136	; 0x88
d03e3c5a:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e3c5e:	2021      	movs	r0, #33	; 0x21
d03e3c60:	9703      	str	r7, [sp, #12]
d03e3c62:	9502      	str	r5, [sp, #8]
d03e3c64:	e9cd 6a00 	strd	r6, sl, [sp]
d03e3c68:	f7fe fd86 	bl	d03e2778 <ui_create_button>
d03e3c6c:	2348      	movs	r3, #72	; 0x48
d03e3c6e:	22a6      	movs	r2, #166	; 0xa6
d03e3c70:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e3c74:	201f      	movs	r0, #31
d03e3c76:	9703      	str	r7, [sp, #12]
d03e3c78:	9502      	str	r5, [sp, #8]
d03e3c7a:	e9cd 6900 	strd	r6, r9, [sp]
d03e3c7e:	f7fe fd7b 	bl	d03e2778 <ui_create_button>
d03e3c82:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e3c86:	2348      	movs	r3, #72	; 0x48
d03e3c88:	22a6      	movs	r2, #166	; 0xa6
d03e3c8a:	4630      	mov	r0, r6
d03e3c8c:	9703      	str	r7, [sp, #12]
d03e3c8e:	9502      	str	r5, [sp, #8]
d03e3c90:	e9cd 6800 	strd	r6, r8, [sp]
d03e3c94:	f7fe fd70 	bl	d03e2778 <ui_create_button>
d03e3c98:	7b23      	ldrb	r3, [r4, #12]
d03e3c9a:	7b62      	ldrb	r2, [r4, #13]
d03e3c9c:	2018      	movs	r0, #24
d03e3c9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3ca2:	7ba2      	ldrb	r2, [r4, #14]
d03e3ca4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3ca8:	7be2      	ldrb	r2, [r4, #15]
d03e3caa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3cae:	685b      	ldr	r3, [r3, #4]
d03e3cb0:	68db      	ldr	r3, [r3, #12]
d03e3cb2:	4798      	blx	r3
d03e3cb4:	7b23      	ldrb	r3, [r4, #12]
d03e3cb6:	7b62      	ldrb	r2, [r4, #13]
d03e3cb8:	21ca      	movs	r1, #202	; 0xca
d03e3cba:	20f0      	movs	r0, #240	; 0xf0
d03e3cbc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3cc0:	7ba2      	ldrb	r2, [r4, #14]
d03e3cc2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3cc6:	7be2      	ldrb	r2, [r4, #15]
d03e3cc8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3ccc:	4a94      	ldr	r2, [pc, #592]	; (d03e3f20 <ui_redraw_backbuffer+0x12b4>)
d03e3cce:	685b      	ldr	r3, [r3, #4]
d03e3cd0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3cd2:	4798      	blx	r3
d03e3cd4:	2348      	movs	r3, #72	; 0x48
d03e3cd6:	22c8      	movs	r2, #200	; 0xc8
d03e3cd8:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e3cdc:	2022      	movs	r0, #34	; 0x22
d03e3cde:	9703      	str	r7, [sp, #12]
d03e3ce0:	9502      	str	r5, [sp, #8]
d03e3ce2:	e9cd 6b00 	strd	r6, fp, [sp]
d03e3ce6:	f7fe fd47 	bl	d03e2778 <ui_create_button>
d03e3cea:	2348      	movs	r3, #72	; 0x48
d03e3cec:	22c8      	movs	r2, #200	; 0xc8
d03e3cee:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e3cf2:	2025      	movs	r0, #37	; 0x25
d03e3cf4:	9703      	str	r7, [sp, #12]
d03e3cf6:	9502      	str	r5, [sp, #8]
d03e3cf8:	e9cd 6a00 	strd	r6, sl, [sp]
d03e3cfc:	f7fe fd3c 	bl	d03e2778 <ui_create_button>
d03e3d00:	2348      	movs	r3, #72	; 0x48
d03e3d02:	22e6      	movs	r2, #230	; 0xe6
d03e3d04:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e3d08:	2023      	movs	r0, #35	; 0x23
d03e3d0a:	9703      	str	r7, [sp, #12]
d03e3d0c:	9502      	str	r5, [sp, #8]
d03e3d0e:	e9cd 6900 	strd	r6, r9, [sp]
d03e3d12:	f7fe fd31 	bl	d03e2778 <ui_create_button>
d03e3d16:	2348      	movs	r3, #72	; 0x48
d03e3d18:	22e6      	movs	r2, #230	; 0xe6
d03e3d1a:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03e3d1e:	2024      	movs	r0, #36	; 0x24
d03e3d20:	9703      	str	r7, [sp, #12]
d03e3d22:	9502      	str	r5, [sp, #8]
d03e3d24:	e9cd 6800 	strd	r6, r8, [sp]
d03e3d28:	f7fe fd26 	bl	d03e2778 <ui_create_button>
d03e3d2c:	f7ff b9d1 	b.w	d03e30d2 <ui_redraw_backbuffer+0x466>
d03e3d30:	2d00      	cmp	r5, #0
d03e3d32:	d04d      	beq.n	d03e3dd0 <ui_redraw_backbuffer+0x1164>
d03e3d34:	f89a 3000 	ldrb.w	r3, [sl]
d03e3d38:	42b3      	cmp	r3, r6
d03e3d3a:	d149      	bne.n	d03e3dd0 <ui_redraw_backbuffer+0x1164>
d03e3d3c:	7b23      	ldrb	r3, [r4, #12]
d03e3d3e:	201c      	movs	r0, #28
d03e3d40:	7b62      	ldrb	r2, [r4, #13]
d03e3d42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3d46:	7ba2      	ldrb	r2, [r4, #14]
d03e3d48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3d4c:	7be2      	ldrb	r2, [r4, #15]
d03e3d4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3d52:	685b      	ldr	r3, [r3, #4]
d03e3d54:	68db      	ldr	r3, [r3, #12]
d03e3d56:	4798      	blx	r3
d03e3d58:	7b23      	ldrb	r3, [r4, #12]
d03e3d5a:	7b62      	ldrb	r2, [r4, #13]
d03e3d5c:	0139      	lsls	r1, r7, #4
d03e3d5e:	201c      	movs	r0, #28
d03e3d60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3d64:	7ba2      	ldrb	r2, [r4, #14]
d03e3d66:	3185      	adds	r1, #133	; 0x85
d03e3d68:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3d6c:	7be2      	ldrb	r2, [r4, #15]
d03e3d6e:	b209      	sxth	r1, r1
d03e3d70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3d74:	22be      	movs	r2, #190	; 0xbe
d03e3d76:	9107      	str	r1, [sp, #28]
d03e3d78:	685b      	ldr	r3, [r3, #4]
d03e3d7a:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e3d7e:	2310      	movs	r3, #16
d03e3d80:	47d8      	blx	fp
d03e3d82:	4b68      	ldr	r3, [pc, #416]	; (d03e3f24 <ui_redraw_backbuffer+0x12b8>)
d03e3d84:	781b      	ldrb	r3, [r3, #0]
d03e3d86:	b31b      	cbz	r3, d03e3dd0 <ui_redraw_backbuffer+0x1164>
d03e3d88:	7b23      	ldrb	r3, [r4, #12]
d03e3d8a:	201d      	movs	r0, #29
d03e3d8c:	7b62      	ldrb	r2, [r4, #13]
d03e3d8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3d92:	7ba2      	ldrb	r2, [r4, #14]
d03e3d94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3d98:	7be2      	ldrb	r2, [r4, #15]
d03e3d9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3d9e:	685b      	ldr	r3, [r3, #4]
d03e3da0:	68db      	ldr	r3, [r3, #12]
d03e3da2:	4798      	blx	r3
d03e3da4:	4b60      	ldr	r3, [pc, #384]	; (d03e3f28 <ui_redraw_backbuffer+0x12bc>)
d03e3da6:	9907      	ldr	r1, [sp, #28]
d03e3da8:	781b      	ldrb	r3, [r3, #0]
d03e3daa:	2b00      	cmp	r3, #0
d03e3dac:	d15a      	bne.n	d03e3e64 <ui_redraw_backbuffer+0x11f8>
d03e3dae:	7b23      	ldrb	r3, [r4, #12]
d03e3db0:	203e      	movs	r0, #62	; 0x3e
d03e3db2:	7b62      	ldrb	r2, [r4, #13]
d03e3db4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3db8:	7ba2      	ldrb	r2, [r4, #14]
d03e3dba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3dbe:	7be2      	ldrb	r2, [r4, #15]
d03e3dc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3dc4:	2240      	movs	r2, #64	; 0x40
d03e3dc6:	685b      	ldr	r3, [r3, #4]
d03e3dc8:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e3dcc:	2310      	movs	r3, #16
d03e3dce:	47d8      	blx	fp
d03e3dd0:	f818 3026 	ldrb.w	r3, [r8, r6, lsl #2]
d03e3dd4:	eb08 0286 	add.w	r2, r8, r6, lsl #2
d03e3dd8:	a80a      	add	r0, sp, #40	; 0x28
d03e3dda:	fa0f fb86 	sxth.w	fp, r6
d03e3dde:	2b15      	cmp	r3, #21
d03e3de0:	bf96      	itet	ls
d03e3de2:	4952      	ldrls	r1, [pc, #328]	; (d03e3f2c <ui_redraw_backbuffer+0x12c0>)
d03e3de4:	4b52      	ldrhi	r3, [pc, #328]	; (d03e3f30 <ui_redraw_backbuffer+0x12c4>)
d03e3de6:	f851 3023 	ldrls.w	r3, [r1, r3, lsl #2]
d03e3dea:	8851      	ldrh	r1, [r2, #2]
d03e3dec:	9102      	str	r1, [sp, #8]
d03e3dee:	2160      	movs	r1, #96	; 0x60
d03e3df0:	7852      	ldrb	r2, [r2, #1]
d03e3df2:	9300      	str	r3, [sp, #0]
d03e3df4:	4633      	mov	r3, r6
d03e3df6:	9201      	str	r2, [sp, #4]
d03e3df8:	4a4e      	ldr	r2, [pc, #312]	; (d03e3f34 <ui_redraw_backbuffer+0x12c8>)
d03e3dfa:	f003 fc6f 	bl	d03e76dc <sniprintf>
d03e3dfe:	7b23      	ldrb	r3, [r4, #12]
d03e3e00:	7b62      	ldrb	r2, [r4, #13]
d03e3e02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3e06:	7ba2      	ldrb	r2, [r4, #14]
d03e3e08:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3e0c:	7be2      	ldrb	r2, [r4, #15]
d03e3e0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3e12:	685b      	ldr	r3, [r3, #4]
d03e3e14:	68db      	ldr	r3, [r3, #12]
d03e3e16:	b11d      	cbz	r5, d03e3e20 <ui_redraw_backbuffer+0x11b4>
d03e3e18:	f89a 2000 	ldrb.w	r2, [sl]
d03e3e1c:	42b2      	cmp	r2, r6
d03e3e1e:	d037      	beq.n	d03e3e90 <ui_redraw_backbuffer+0x1224>
d03e3e20:	f818 202b 	ldrb.w	r2, [r8, fp, lsl #2]
d03e3e24:	2a00      	cmp	r2, #0
d03e3e26:	bf0c      	ite	eq
d03e3e28:	200e      	moveq	r0, #14
d03e3e2a:	2019      	movne	r0, #25
d03e3e2c:	4798      	blx	r3
d03e3e2e:	7b23      	ldrb	r3, [r4, #12]
d03e3e30:	7b62      	ldrb	r2, [r4, #13]
d03e3e32:	0139      	lsls	r1, r7, #4
d03e3e34:	201e      	movs	r0, #30
d03e3e36:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3e3a:	7ba2      	ldrb	r2, [r4, #14]
d03e3e3c:	3186      	adds	r1, #134	; 0x86
d03e3e3e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3e42:	7be2      	ldrb	r2, [r4, #15]
d03e3e44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3e48:	aa0a      	add	r2, sp, #40	; 0x28
d03e3e4a:	685b      	ldr	r3, [r3, #4]
d03e3e4c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3e4e:	4798      	blx	r3
d03e3e50:	f818 302b 	ldrb.w	r3, [r8, fp, lsl #2]
d03e3e54:	2b00      	cmp	r3, #0
d03e3e56:	f43f ad5e 	beq.w	d03e3916 <ui_redraw_backbuffer+0xcaa>
d03e3e5a:	3701      	adds	r7, #1
d03e3e5c:	2f08      	cmp	r7, #8
d03e3e5e:	f47f ad53 	bne.w	d03e3908 <ui_redraw_backbuffer+0xc9c>
d03e3e62:	e558      	b.n	d03e3916 <ui_redraw_backbuffer+0xcaa>
d03e3e64:	2b01      	cmp	r3, #1
d03e3e66:	7b23      	ldrb	r3, [r4, #12]
d03e3e68:	7b62      	ldrb	r2, [r4, #13]
d03e3e6a:	bf0c      	ite	eq
d03e3e6c:	2086      	moveq	r0, #134	; 0x86
d03e3e6e:	209e      	movne	r0, #158	; 0x9e
d03e3e70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3e74:	7ba2      	ldrb	r2, [r4, #14]
d03e3e76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3e7a:	7be2      	ldrb	r2, [r4, #15]
d03e3e7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3e80:	bf0c      	ite	eq
d03e3e82:	2212      	moveq	r2, #18
d03e3e84:	2228      	movne	r2, #40	; 0x28
d03e3e86:	685b      	ldr	r3, [r3, #4]
d03e3e88:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e3e8c:	2310      	movs	r3, #16
d03e3e8e:	e79e      	b.n	d03e3dce <ui_redraw_backbuffer+0x1162>
d03e3e90:	200f      	movs	r0, #15
d03e3e92:	e7cb      	b.n	d03e3e2c <ui_redraw_backbuffer+0x11c0>
d03e3e94:	1c59      	adds	r1, r3, #1
d03e3e96:	201a      	movs	r0, #26
d03e3e98:	7011      	strb	r1, [r2, #0]
d03e3e9a:	220c      	movs	r2, #12
d03e3e9c:	4926      	ldr	r1, [pc, #152]	; (d03e3f38 <ui_redraw_backbuffer+0x12cc>)
d03e3e9e:	435a      	muls	r2, r3
d03e3ea0:	188b      	adds	r3, r1, r2
d03e3ea2:	5288      	strh	r0, [r1, r2]
d03e3ea4:	f44f 72d1 	mov.w	r2, #418	; 0x1a2
d03e3ea8:	729e      	strb	r6, [r3, #10]
d03e3eaa:	805a      	strh	r2, [r3, #2]
d03e3eac:	227c      	movs	r2, #124	; 0x7c
d03e3eae:	809a      	strh	r2, [r3, #4]
d03e3eb0:	2222      	movs	r2, #34	; 0x22
d03e3eb2:	80da      	strh	r2, [r3, #6]
d03e3eb4:	226c      	movs	r2, #108	; 0x6c
d03e3eb6:	811a      	strh	r2, [r3, #8]
d03e3eb8:	e546      	b.n	d03e3948 <ui_redraw_backbuffer+0xcdc>
d03e3eba:	2600      	movs	r6, #0
d03e3ebc:	42b5      	cmp	r5, r6
d03e3ebe:	bf14      	ite	ne
d03e3ec0:	231c      	movne	r3, #28
d03e3ec2:	231b      	moveq	r3, #27
d03e3ec4:	e55a      	b.n	d03e397c <ui_redraw_backbuffer+0xd10>
d03e3ec6:	2010      	movs	r0, #16
d03e3ec8:	e582      	b.n	d03e39d0 <ui_redraw_backbuffer+0xd64>
d03e3eca:	4e1c      	ldr	r6, [pc, #112]	; (d03e3f3c <ui_redraw_backbuffer+0x12d0>)
d03e3ecc:	e62f      	b.n	d03e3b2e <ui_redraw_backbuffer+0xec2>
d03e3ece:	4b1c      	ldr	r3, [pc, #112]	; (d03e3f40 <ui_redraw_backbuffer+0x12d4>)
d03e3ed0:	2160      	movs	r1, #96	; 0x60
d03e3ed2:	4a1c      	ldr	r2, [pc, #112]	; (d03e3f44 <ui_redraw_backbuffer+0x12d8>)
d03e3ed4:	a80a      	add	r0, sp, #40	; 0x28
d03e3ed6:	f8cd 9000 	str.w	r9, [sp]
d03e3eda:	781b      	ldrb	r3, [r3, #0]
d03e3edc:	f003 fbfe 	bl	d03e76dc <sniprintf>
d03e3ee0:	7b23      	ldrb	r3, [r4, #12]
d03e3ee2:	7b62      	ldrb	r2, [r4, #13]
d03e3ee4:	2018      	movs	r0, #24
d03e3ee6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3eea:	7ba2      	ldrb	r2, [r4, #14]
d03e3eec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3ef0:	7be2      	ldrb	r2, [r4, #15]
d03e3ef2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3ef6:	685b      	ldr	r3, [r3, #4]
d03e3ef8:	68db      	ldr	r3, [r3, #12]
d03e3efa:	4798      	blx	r3
d03e3efc:	7b23      	ldrb	r3, [r4, #12]
d03e3efe:	7b62      	ldrb	r2, [r4, #13]
d03e3f00:	21fa      	movs	r1, #250	; 0xfa
d03e3f02:	f44f 70b4 	mov.w	r0, #360	; 0x168
d03e3f06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3f0a:	7ba2      	ldrb	r2, [r4, #14]
d03e3f0c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3f10:	7be2      	ldrb	r2, [r4, #15]
d03e3f12:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3f16:	aa0a      	add	r2, sp, #40	; 0x28
d03e3f18:	685b      	ldr	r3, [r3, #4]
d03e3f1a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e3f1c:	f7ff bad0 	b.w	d03e34c0 <ui_redraw_backbuffer+0x854>
d03e3f20:	d03e907a 	.word	0xd03e907a
d03e3f24:	d03ec462 	.word	0xd03ec462
d03e3f28:	d03ec45a 	.word	0xd03ec45a
d03e3f2c:	d03e9924 	.word	0xd03e9924
d03e3f30:	d03e8ddc 	.word	0xd03e8ddc
d03e3f34:	d03e904a 	.word	0xd03e904a
d03e3f38:	d03eb4de 	.word	0xd03eb4de
d03e3f3c:	d03e8dea 	.word	0xd03e8dea
d03e3f40:	d03ec469 	.word	0xd03ec469
d03e3f44:	d03e907d 	.word	0xd03e907d
d03e3f48:	d03e8ea9 	.word	0xd03e8ea9
d03e3f4c:	4faa      	ldr	r7, [pc, #680]	; (d03e41f8 <ui_redraw_backbuffer+0x158c>)
d03e3f4e:	783b      	ldrb	r3, [r7, #0]
d03e3f50:	2b00      	cmp	r3, #0
d03e3f52:	f040 830f 	bne.w	d03e4574 <ui_redraw_backbuffer+0x1908>
d03e3f56:	4ba9      	ldr	r3, [pc, #676]	; (d03e41fc <ui_redraw_backbuffer+0x1590>)
d03e3f58:	781b      	ldrb	r3, [r3, #0]
d03e3f5a:	2b00      	cmp	r3, #0
d03e3f5c:	f040 830c 	bne.w	d03e4578 <ui_redraw_backbuffer+0x190c>
d03e3f60:	4ba7      	ldr	r3, [pc, #668]	; (d03e4200 <ui_redraw_backbuffer+0x1594>)
d03e3f62:	781b      	ldrb	r3, [r3, #0]
d03e3f64:	2b00      	cmp	r3, #0
d03e3f66:	f040 8309 	bne.w	d03e457c <ui_redraw_backbuffer+0x1910>
d03e3f6a:	4ba6      	ldr	r3, [pc, #664]	; (d03e4204 <ui_redraw_backbuffer+0x1598>)
d03e3f6c:	4da6      	ldr	r5, [pc, #664]	; (d03e4208 <ui_redraw_backbuffer+0x159c>)
d03e3f6e:	781a      	ldrb	r2, [r3, #0]
d03e3f70:	4ba6      	ldr	r3, [pc, #664]	; (d03e420c <ui_redraw_backbuffer+0x15a0>)
d03e3f72:	2a00      	cmp	r2, #0
d03e3f74:	bf18      	it	ne
d03e3f76:	461d      	movne	r5, r3
d03e3f78:	7b23      	ldrb	r3, [r4, #12]
d03e3f7a:	2014      	movs	r0, #20
d03e3f7c:	7b62      	ldrb	r2, [r4, #13]
d03e3f7e:	f04f 0906 	mov.w	r9, #6
d03e3f82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3f86:	7ba2      	ldrb	r2, [r4, #14]
d03e3f88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3f8c:	7be2      	ldrb	r2, [r4, #15]
d03e3f8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3f92:	685b      	ldr	r3, [r3, #4]
d03e3f94:	68db      	ldr	r3, [r3, #12]
d03e3f96:	4798      	blx	r3
d03e3f98:	7b23      	ldrb	r3, [r4, #12]
d03e3f9a:	7b62      	ldrb	r2, [r4, #13]
d03e3f9c:	2140      	movs	r1, #64	; 0x40
d03e3f9e:	200a      	movs	r0, #10
d03e3fa0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3fa4:	7ba2      	ldrb	r2, [r4, #14]
d03e3fa6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3faa:	7be2      	ldrb	r2, [r4, #15]
d03e3fac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3fb0:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03e3fb4:	685b      	ldr	r3, [r3, #4]
d03e3fb6:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e3fba:	23bc      	movs	r3, #188	; 0xbc
d03e3fbc:	47c0      	blx	r8
d03e3fbe:	7b23      	ldrb	r3, [r4, #12]
d03e3fc0:	7b62      	ldrb	r2, [r4, #13]
d03e3fc2:	201a      	movs	r0, #26
d03e3fc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3fc8:	7ba2      	ldrb	r2, [r4, #14]
d03e3fca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3fce:	7be2      	ldrb	r2, [r4, #15]
d03e3fd0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3fd4:	685b      	ldr	r3, [r3, #4]
d03e3fd6:	68db      	ldr	r3, [r3, #12]
d03e3fd8:	4798      	blx	r3
d03e3fda:	7b23      	ldrb	r3, [r4, #12]
d03e3fdc:	7b62      	ldrb	r2, [r4, #13]
d03e3fde:	2140      	movs	r1, #64	; 0x40
d03e3fe0:	200a      	movs	r0, #10
d03e3fe2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e3fe6:	7ba2      	ldrb	r2, [r4, #14]
d03e3fe8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e3fec:	7be2      	ldrb	r2, [r4, #15]
d03e3fee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e3ff2:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03e3ff6:	685b      	ldr	r3, [r3, #4]
d03e3ff8:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e3ffc:	2301      	movs	r3, #1
d03e3ffe:	47c0      	blx	r8
d03e4000:	7b23      	ldrb	r3, [r4, #12]
d03e4002:	7b62      	ldrb	r2, [r4, #13]
d03e4004:	21fb      	movs	r1, #251	; 0xfb
d03e4006:	200a      	movs	r0, #10
d03e4008:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e400c:	7ba2      	ldrb	r2, [r4, #14]
d03e400e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4012:	7be2      	ldrb	r2, [r4, #15]
d03e4014:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4018:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03e401c:	685b      	ldr	r3, [r3, #4]
d03e401e:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e4022:	2301      	movs	r3, #1
d03e4024:	47c0      	blx	r8
d03e4026:	7b23      	ldrb	r3, [r4, #12]
d03e4028:	7b62      	ldrb	r2, [r4, #13]
d03e402a:	2140      	movs	r1, #64	; 0x40
d03e402c:	200a      	movs	r0, #10
d03e402e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4032:	7ba2      	ldrb	r2, [r4, #14]
d03e4034:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4038:	7be2      	ldrb	r2, [r4, #15]
d03e403a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e403e:	2201      	movs	r2, #1
d03e4040:	685b      	ldr	r3, [r3, #4]
d03e4042:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e4046:	23bc      	movs	r3, #188	; 0xbc
d03e4048:	47c0      	blx	r8
d03e404a:	7b23      	ldrb	r3, [r4, #12]
d03e404c:	7b62      	ldrb	r2, [r4, #13]
d03e404e:	2140      	movs	r1, #64	; 0x40
d03e4050:	f240 10d5 	movw	r0, #469	; 0x1d5
d03e4054:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4058:	7ba2      	ldrb	r2, [r4, #14]
d03e405a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e405e:	7be2      	ldrb	r2, [r4, #15]
d03e4060:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4064:	2201      	movs	r2, #1
d03e4066:	685b      	ldr	r3, [r3, #4]
d03e4068:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e406c:	23bc      	movs	r3, #188	; 0xbc
d03e406e:	47c0      	blx	r8
d03e4070:	7b23      	ldrb	r3, [r4, #12]
d03e4072:	7b62      	ldrb	r2, [r4, #13]
d03e4074:	f04f 08bc 	mov.w	r8, #188	; 0xbc
d03e4078:	2015      	movs	r0, #21
d03e407a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e407e:	7ba2      	ldrb	r2, [r4, #14]
d03e4080:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4084:	7be2      	ldrb	r2, [r4, #15]
d03e4086:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e408a:	685b      	ldr	r3, [r3, #4]
d03e408c:	68db      	ldr	r3, [r3, #12]
d03e408e:	4798      	blx	r3
d03e4090:	7b23      	ldrb	r3, [r4, #12]
d03e4092:	200a      	movs	r0, #10
d03e4094:	7b62      	ldrb	r2, [r4, #13]
d03e4096:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e409a:	7ba2      	ldrb	r2, [r4, #14]
d03e409c:	fbb8 f1f9 	udiv	r1, r8, r9
d03e40a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e40a4:	7be2      	ldrb	r2, [r4, #15]
d03e40a6:	3140      	adds	r1, #64	; 0x40
d03e40a8:	f108 08bc 	add.w	r8, r8, #188	; 0xbc
d03e40ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e40b0:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03e40b4:	b209      	sxth	r1, r1
d03e40b6:	685b      	ldr	r3, [r3, #4]
d03e40b8:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03e40bc:	2301      	movs	r3, #1
d03e40be:	47d0      	blx	sl
d03e40c0:	f5b8 6f8d 	cmp.w	r8, #1128	; 0x468
d03e40c4:	d1e4      	bne.n	d03e4090 <ui_redraw_backbuffer+0x1424>
d03e40c6:	4a52      	ldr	r2, [pc, #328]	; (d03e4210 <ui_redraw_backbuffer+0x15a4>)
d03e40c8:	4b52      	ldr	r3, [pc, #328]	; (d03e4214 <ui_redraw_backbuffer+0x15a8>)
d03e40ca:	f897 e000 	ldrb.w	lr, [r7]
d03e40ce:	4691      	mov	r9, r2
d03e40d0:	881b      	ldrh	r3, [r3, #0]
d03e40d2:	7811      	ldrb	r1, [r2, #0]
d03e40d4:	4850      	ldr	r0, [pc, #320]	; (d03e4218 <ui_redraw_backbuffer+0x15ac>)
d03e40d6:	f8df c164 	ldr.w	ip, [pc, #356]	; d03e423c <ui_redraw_backbuffer+0x15d0>
d03e40da:	f8df a164 	ldr.w	sl, [pc, #356]	; d03e4240 <ui_redraw_backbuffer+0x15d4>
d03e40de:	f1be 0f00 	cmp.w	lr, #0
d03e40e2:	f000 824d 	beq.w	d03e4580 <ui_redraw_backbuffer+0x1914>
d03e40e6:	f89c c000 	ldrb.w	ip, [ip]
d03e40ea:	4a4c      	ldr	r2, [pc, #304]	; (d03e421c <ui_redraw_backbuffer+0x15b0>)
d03e40ec:	f00c 0c03 	and.w	ip, ip, #3
d03e40f0:	f8df 8150 	ldr.w	r8, [pc, #336]	; d03e4244 <ui_redraw_backbuffer+0x15d8>
d03e40f4:	f892 e000 	ldrb.w	lr, [r2]
d03e40f8:	f810 000c 	ldrb.w	r0, [r0, ip]
d03e40fc:	4a48      	ldr	r2, [pc, #288]	; (d03e4220 <ui_redraw_backbuffer+0x15b4>)
d03e40fe:	f89a c000 	ldrb.w	ip, [sl]
d03e4102:	2900      	cmp	r1, #0
d03e4104:	bf14      	ite	ne
d03e4106:	4611      	movne	r1, r2
d03e4108:	4641      	moveq	r1, r8
d03e410a:	f1bc 0f00 	cmp.w	ip, #0
d03e410e:	bf08      	it	eq
d03e4110:	4642      	moveq	r2, r8
d03e4112:	f8df c134 	ldr.w	ip, [pc, #308]	; d03e4248 <ui_redraw_backbuffer+0x15dc>
d03e4116:	f8bc c000 	ldrh.w	ip, [ip]
d03e411a:	9204      	str	r2, [sp, #16]
d03e411c:	9003      	str	r0, [sp, #12]
d03e411e:	a80a      	add	r0, sp, #40	; 0x28
d03e4120:	9102      	str	r1, [sp, #8]
d03e4122:	2160      	movs	r1, #96	; 0x60
d03e4124:	4a3f      	ldr	r2, [pc, #252]	; (d03e4224 <ui_redraw_backbuffer+0x15b8>)
d03e4126:	f8cd c014 	str.w	ip, [sp, #20]
d03e412a:	e9cd 5e00 	strd	r5, lr, [sp]
d03e412e:	f003 fad5 	bl	d03e76dc <sniprintf>
d03e4132:	7b23      	ldrb	r3, [r4, #12]
d03e4134:	201e      	movs	r0, #30
d03e4136:	7b62      	ldrb	r2, [r4, #13]
d03e4138:	f04f 0800 	mov.w	r8, #0
d03e413c:	f04f 0b20 	mov.w	fp, #32
d03e4140:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4144:	7ba2      	ldrb	r2, [r4, #14]
d03e4146:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e414a:	7be2      	ldrb	r2, [r4, #15]
d03e414c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4150:	685b      	ldr	r3, [r3, #4]
d03e4152:	68db      	ldr	r3, [r3, #12]
d03e4154:	4798      	blx	r3
d03e4156:	7b23      	ldrb	r3, [r4, #12]
d03e4158:	7b62      	ldrb	r2, [r4, #13]
d03e415a:	21fe      	movs	r1, #254	; 0xfe
d03e415c:	200e      	movs	r0, #14
d03e415e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4162:	7ba2      	ldrb	r2, [r4, #14]
d03e4164:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4168:	7be2      	ldrb	r2, [r4, #15]
d03e416a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e416e:	aa0a      	add	r2, sp, #40	; 0x28
d03e4170:	685b      	ldr	r3, [r3, #4]
d03e4172:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4174:	4798      	blx	r3
d03e4176:	4b2c      	ldr	r3, [pc, #176]	; (d03e4228 <ui_redraw_backbuffer+0x15bc>)
d03e4178:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e417c:	2106      	movs	r1, #6
d03e417e:	9301      	str	r3, [sp, #4]
d03e4180:	2036      	movs	r0, #54	; 0x36
d03e4182:	2324      	movs	r3, #36	; 0x24
d03e4184:	f8cd 800c 	str.w	r8, [sp, #12]
d03e4188:	f8cd 8008 	str.w	r8, [sp, #8]
d03e418c:	f8cd b000 	str.w	fp, [sp]
d03e4190:	f7fe faf2 	bl	d03e2778 <ui_create_button>
d03e4194:	4b1a      	ldr	r3, [pc, #104]	; (d03e4200 <ui_redraw_backbuffer+0x1594>)
d03e4196:	781d      	ldrb	r5, [r3, #0]
d03e4198:	4b18      	ldr	r3, [pc, #96]	; (d03e41fc <ui_redraw_backbuffer+0x1590>)
d03e419a:	781b      	ldrb	r3, [r3, #0]
d03e419c:	431d      	orrs	r5, r3
d03e419e:	783b      	ldrb	r3, [r7, #0]
d03e41a0:	431d      	orrs	r5, r3
d03e41a2:	7833      	ldrb	r3, [r6, #0]
d03e41a4:	2bbd      	cmp	r3, #189	; 0xbd
d03e41a6:	d812      	bhi.n	d03e41ce <ui_redraw_backbuffer+0x1562>
d03e41a8:	1c5a      	adds	r2, r3, #1
d03e41aa:	4920      	ldr	r1, [pc, #128]	; (d03e422c <ui_redraw_backbuffer+0x15c0>)
d03e41ac:	2037      	movs	r0, #55	; 0x37
d03e41ae:	7032      	strb	r2, [r6, #0]
d03e41b0:	220c      	movs	r2, #12
d03e41b2:	435a      	muls	r2, r3
d03e41b4:	188b      	adds	r3, r1, r2
d03e41b6:	5288      	strh	r0, [r1, r2]
d03e41b8:	222e      	movs	r2, #46	; 0x2e
d03e41ba:	f8a3 b008 	strh.w	fp, [r3, #8]
d03e41be:	805a      	strh	r2, [r3, #2]
d03e41c0:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e41c4:	f883 800a 	strb.w	r8, [r3, #10]
d03e41c8:	809a      	strh	r2, [r3, #4]
d03e41ca:	2230      	movs	r2, #48	; 0x30
d03e41cc:	80da      	strh	r2, [r3, #6]
d03e41ce:	4b18      	ldr	r3, [pc, #96]	; (d03e4230 <ui_redraw_backbuffer+0x15c4>)
d03e41d0:	781b      	ldrb	r3, [r3, #0]
d03e41d2:	07db      	lsls	r3, r3, #31
d03e41d4:	d53a      	bpl.n	d03e424c <ui_redraw_backbuffer+0x15e0>
d03e41d6:	4a17      	ldr	r2, [pc, #92]	; (d03e4234 <ui_redraw_backbuffer+0x15c8>)
d03e41d8:	4b17      	ldr	r3, [pc, #92]	; (d03e4238 <ui_redraw_backbuffer+0x15cc>)
d03e41da:	8812      	ldrh	r2, [r2, #0]
d03e41dc:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e41e0:	3a2e      	subs	r2, #46	; 0x2e
d03e41e2:	b292      	uxth	r2, r2
d03e41e4:	2a2f      	cmp	r2, #47	; 0x2f
d03e41e6:	d831      	bhi.n	d03e424c <ui_redraw_backbuffer+0x15e0>
d03e41e8:	f5a3 738e 	sub.w	r3, r3, #284	; 0x11c
d03e41ec:	b29b      	uxth	r3, r3
d03e41ee:	2b1f      	cmp	r3, #31
d03e41f0:	f240 81e9 	bls.w	d03e45c6 <ui_redraw_backbuffer+0x195a>
d03e41f4:	e02a      	b.n	d03e424c <ui_redraw_backbuffer+0x15e0>
d03e41f6:	bf00      	nop
d03e41f8:	d03ea3b4 	.word	0xd03ea3b4
d03e41fc:	d03eb499 	.word	0xd03eb499
d03e4200:	d03eb498 	.word	0xd03eb498
d03e4204:	d03eb490 	.word	0xd03eb490
d03e4208:	d03e8e04 	.word	0xd03e8e04
d03e420c:	d03e8e09 	.word	0xd03e8e09
d03e4210:	d03eb49a 	.word	0xd03eb49a
d03e4214:	d03ea3ac 	.word	0xd03ea3ac
d03e4218:	d03e99d8 	.word	0xd03e99d8
d03e421c:	d03ea3b8 	.word	0xd03ea3b8
d03e4220:	d03e8efc 	.word	0xd03e8efc
d03e4224:	d03e9087 	.word	0xd03e9087
d03e4228:	d03e90e4 	.word	0xd03e90e4
d03e422c:	d03eb4de 	.word	0xd03eb4de
d03e4230:	d03ec210 	.word	0xd03ec210
d03e4234:	d03ec276 	.word	0xd03ec276
d03e4238:	d03ec278 	.word	0xd03ec278
d03e423c:	d03eb49b 	.word	0xd03eb49b
d03e4240:	d03ea3ca 	.word	0xd03ea3ca
d03e4244:	d03e8e0e 	.word	0xd03e8e0e
d03e4248:	d03ea3ce 	.word	0xd03ea3ce
d03e424c:	2d00      	cmp	r5, #0
d03e424e:	f040 81c0 	bne.w	d03e45d2 <ui_redraw_backbuffer+0x1966>
d03e4252:	462e      	mov	r6, r5
d03e4254:	f04f 0815 	mov.w	r8, #21
d03e4258:	221b      	movs	r2, #27
d03e425a:	231a      	movs	r3, #26
d03e425c:	9201      	str	r2, [sp, #4]
d03e425e:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03e4262:	9300      	str	r3, [sp, #0]
d03e4264:	2230      	movs	r2, #48	; 0x30
d03e4266:	2320      	movs	r3, #32
d03e4268:	202e      	movs	r0, #46	; 0x2e
d03e426a:	f7fc fca5 	bl	d03e0bb8 <ui_box>
d03e426e:	2d00      	cmp	r5, #0
d03e4270:	d05b      	beq.n	d03e432a <ui_redraw_backbuffer+0x16be>
d03e4272:	2e00      	cmp	r6, #0
d03e4274:	d159      	bne.n	d03e432a <ui_redraw_backbuffer+0x16be>
d03e4276:	7b23      	ldrb	r3, [r4, #12]
d03e4278:	2020      	movs	r0, #32
d03e427a:	7b62      	ldrb	r2, [r4, #13]
d03e427c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4280:	7ba2      	ldrb	r2, [r4, #14]
d03e4282:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4286:	7be2      	ldrb	r2, [r4, #15]
d03e4288:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e428c:	685b      	ldr	r3, [r3, #4]
d03e428e:	68db      	ldr	r3, [r3, #12]
d03e4290:	4798      	blx	r3
d03e4292:	7b23      	ldrb	r3, [r4, #12]
d03e4294:	7b62      	ldrb	r2, [r4, #13]
d03e4296:	f240 111b 	movw	r1, #283	; 0x11b
d03e429a:	202d      	movs	r0, #45	; 0x2d
d03e429c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e42a0:	7ba2      	ldrb	r2, [r4, #14]
d03e42a2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e42a6:	7be2      	ldrb	r2, [r4, #15]
d03e42a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e42ac:	2232      	movs	r2, #50	; 0x32
d03e42ae:	685b      	ldr	r3, [r3, #4]
d03e42b0:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e42b4:	2301      	movs	r3, #1
d03e42b6:	47d8      	blx	fp
d03e42b8:	7b23      	ldrb	r3, [r4, #12]
d03e42ba:	7b62      	ldrb	r2, [r4, #13]
d03e42bc:	f44f 719e 	mov.w	r1, #316	; 0x13c
d03e42c0:	202d      	movs	r0, #45	; 0x2d
d03e42c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e42c6:	7ba2      	ldrb	r2, [r4, #14]
d03e42c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e42cc:	7be2      	ldrb	r2, [r4, #15]
d03e42ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e42d2:	2232      	movs	r2, #50	; 0x32
d03e42d4:	685b      	ldr	r3, [r3, #4]
d03e42d6:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e42da:	2301      	movs	r3, #1
d03e42dc:	47d8      	blx	fp
d03e42de:	7b23      	ldrb	r3, [r4, #12]
d03e42e0:	7b62      	ldrb	r2, [r4, #13]
d03e42e2:	f240 111b 	movw	r1, #283	; 0x11b
d03e42e6:	202d      	movs	r0, #45	; 0x2d
d03e42e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e42ec:	7ba2      	ldrb	r2, [r4, #14]
d03e42ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e42f2:	7be2      	ldrb	r2, [r4, #15]
d03e42f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e42f8:	2201      	movs	r2, #1
d03e42fa:	685b      	ldr	r3, [r3, #4]
d03e42fc:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e4300:	2322      	movs	r3, #34	; 0x22
d03e4302:	47d8      	blx	fp
d03e4304:	7b23      	ldrb	r3, [r4, #12]
d03e4306:	7b62      	ldrb	r2, [r4, #13]
d03e4308:	f240 111b 	movw	r1, #283	; 0x11b
d03e430c:	205e      	movs	r0, #94	; 0x5e
d03e430e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4312:	7ba2      	ldrb	r2, [r4, #14]
d03e4314:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4318:	7be2      	ldrb	r2, [r4, #15]
d03e431a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e431e:	2201      	movs	r2, #1
d03e4320:	685b      	ldr	r3, [r3, #4]
d03e4322:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03e4326:	2322      	movs	r3, #34	; 0x22
d03e4328:	47d8      	blx	fp
d03e432a:	7b23      	ldrb	r3, [r4, #12]
d03e432c:	2e00      	cmp	r6, #0
d03e432e:	7b62      	ldrb	r2, [r4, #13]
d03e4330:	bf0c      	ite	eq
d03e4332:	4640      	moveq	r0, r8
d03e4334:	2010      	movne	r0, #16
d03e4336:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e433a:	7ba2      	ldrb	r2, [r4, #14]
d03e433c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4340:	7be2      	ldrb	r2, [r4, #15]
d03e4342:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4346:	685b      	ldr	r3, [r3, #4]
d03e4348:	68db      	ldr	r3, [r3, #12]
d03e434a:	4798      	blx	r3
d03e434c:	7b23      	ldrb	r3, [r4, #12]
d03e434e:	7b62      	ldrb	r2, [r4, #13]
d03e4350:	f240 111d 	movw	r1, #285	; 0x11d
d03e4354:	202f      	movs	r0, #47	; 0x2f
d03e4356:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e435a:	7ba2      	ldrb	r2, [r4, #14]
d03e435c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4360:	7be2      	ldrb	r2, [r4, #15]
d03e4362:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4366:	222e      	movs	r2, #46	; 0x2e
d03e4368:	685b      	ldr	r3, [r3, #4]
d03e436a:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e436e:	2302      	movs	r3, #2
d03e4370:	47c0      	blx	r8
d03e4372:	7b23      	ldrb	r3, [r4, #12]
d03e4374:	7b62      	ldrb	r2, [r4, #13]
d03e4376:	202f      	movs	r0, #47	; 0x2f
d03e4378:	f240 111d 	movw	r1, #285	; 0x11d
d03e437c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4380:	7ba2      	ldrb	r2, [r4, #14]
d03e4382:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4386:	7be2      	ldrb	r2, [r4, #15]
d03e4388:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e438c:	2202      	movs	r2, #2
d03e438e:	685b      	ldr	r3, [r3, #4]
d03e4390:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e4394:	231e      	movs	r3, #30
d03e4396:	47c0      	blx	r8
d03e4398:	7b23      	ldrb	r3, [r4, #12]
d03e439a:	7b62      	ldrb	r2, [r4, #13]
d03e439c:	2e00      	cmp	r6, #0
d03e439e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e43a2:	7ba2      	ldrb	r2, [r4, #14]
d03e43a4:	bf14      	ite	ne
d03e43a6:	200d      	movne	r0, #13
d03e43a8:	2010      	moveq	r0, #16
d03e43aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e43ae:	7be2      	ldrb	r2, [r4, #15]
d03e43b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e43b4:	685b      	ldr	r3, [r3, #4]
d03e43b6:	68db      	ldr	r3, [r3, #12]
d03e43b8:	4798      	blx	r3
d03e43ba:	7b23      	ldrb	r3, [r4, #12]
d03e43bc:	7b62      	ldrb	r2, [r4, #13]
d03e43be:	f240 1139 	movw	r1, #313	; 0x139
d03e43c2:	202f      	movs	r0, #47	; 0x2f
d03e43c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e43c8:	7ba2      	ldrb	r2, [r4, #14]
d03e43ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e43ce:	7be2      	ldrb	r2, [r4, #15]
d03e43d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e43d4:	222e      	movs	r2, #46	; 0x2e
d03e43d6:	685b      	ldr	r3, [r3, #4]
d03e43d8:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e43dc:	2302      	movs	r3, #2
d03e43de:	47c0      	blx	r8
d03e43e0:	7b23      	ldrb	r3, [r4, #12]
d03e43e2:	7b62      	ldrb	r2, [r4, #13]
d03e43e4:	205b      	movs	r0, #91	; 0x5b
d03e43e6:	f240 111d 	movw	r1, #285	; 0x11d
d03e43ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e43ee:	7ba2      	ldrb	r2, [r4, #14]
d03e43f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e43f4:	7be2      	ldrb	r2, [r4, #15]
d03e43f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e43fa:	2202      	movs	r2, #2
d03e43fc:	685b      	ldr	r3, [r3, #4]
d03e43fe:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e4402:	231e      	movs	r3, #30
d03e4404:	47c0      	blx	r8
d03e4406:	7b23      	ldrb	r3, [r4, #12]
d03e4408:	7b62      	ldrb	r2, [r4, #13]
d03e440a:	2e00      	cmp	r6, #0
d03e440c:	f240 1125 	movw	r1, #293	; 0x125
d03e4410:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4414:	7ba2      	ldrb	r2, [r4, #14]
d03e4416:	bf04      	itt	eq
d03e4418:	f44f 7192 	moveq.w	r1, #292	; 0x124
d03e441c:	263a      	moveq	r6, #58	; 0x3a
d03e441e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4422:	7be2      	ldrb	r2, [r4, #15]
d03e4424:	bf18      	it	ne
d03e4426:	263b      	movne	r6, #59	; 0x3b
d03e4428:	2d00      	cmp	r5, #0
d03e442a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e442e:	9107      	str	r1, [sp, #28]
d03e4430:	bf14      	ite	ne
d03e4432:	200f      	movne	r0, #15
d03e4434:	2019      	moveq	r0, #25
d03e4436:	685b      	ldr	r3, [r3, #4]
d03e4438:	68db      	ldr	r3, [r3, #12]
d03e443a:	4798      	blx	r3
d03e443c:	7b23      	ldrb	r3, [r4, #12]
d03e443e:	7b62      	ldrb	r2, [r4, #13]
d03e4440:	4630      	mov	r0, r6
d03e4442:	9907      	ldr	r1, [sp, #28]
d03e4444:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4448:	7ba2      	ldrb	r2, [r4, #14]
d03e444a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e444e:	7be2      	ldrb	r2, [r4, #15]
d03e4450:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4454:	4a68      	ldr	r2, [pc, #416]	; (d03e45f8 <ui_redraw_backbuffer+0x198c>)
d03e4456:	685b      	ldr	r3, [r3, #4]
d03e4458:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e445a:	4798      	blx	r3
d03e445c:	4b67      	ldr	r3, [pc, #412]	; (d03e45fc <ui_redraw_backbuffer+0x1990>)
d03e445e:	781b      	ldrb	r3, [r3, #0]
d03e4460:	2b00      	cmp	r3, #0
d03e4462:	f040 80c0 	bne.w	d03e45e6 <ui_redraw_backbuffer+0x197a>
d03e4466:	4b66      	ldr	r3, [pc, #408]	; (d03e4600 <ui_redraw_backbuffer+0x1994>)
d03e4468:	783a      	ldrb	r2, [r7, #0]
d03e446a:	781b      	ldrb	r3, [r3, #0]
d03e446c:	4313      	orrs	r3, r2
d03e446e:	4a65      	ldr	r2, [pc, #404]	; (d03e4604 <ui_redraw_backbuffer+0x1998>)
d03e4470:	2b00      	cmp	r3, #0
d03e4472:	4b65      	ldr	r3, [pc, #404]	; (d03e4608 <ui_redraw_backbuffer+0x199c>)
d03e4474:	bf12      	itee	ne
d03e4476:	2201      	movne	r2, #1
d03e4478:	4613      	moveq	r3, r2
d03e447a:	2200      	moveq	r2, #0
d03e447c:	2400      	movs	r4, #0
d03e447e:	2520      	movs	r5, #32
d03e4480:	2162      	movs	r1, #98	; 0x62
d03e4482:	2038      	movs	r0, #56	; 0x38
d03e4484:	9202      	str	r2, [sp, #8]
d03e4486:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e448a:	9301      	str	r3, [sp, #4]
d03e448c:	2334      	movs	r3, #52	; 0x34
d03e448e:	9403      	str	r4, [sp, #12]
d03e4490:	2601      	movs	r6, #1
d03e4492:	9500      	str	r5, [sp, #0]
d03e4494:	f7fe f970 	bl	d03e2778 <ui_create_button>
d03e4498:	4b5c      	ldr	r3, [pc, #368]	; (d03e460c <ui_redraw_backbuffer+0x19a0>)
d03e449a:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e449e:	219a      	movs	r1, #154	; 0x9a
d03e44a0:	2039      	movs	r0, #57	; 0x39
d03e44a2:	9301      	str	r3, [sp, #4]
d03e44a4:	9403      	str	r4, [sp, #12]
d03e44a6:	2330      	movs	r3, #48	; 0x30
d03e44a8:	9402      	str	r4, [sp, #8]
d03e44aa:	9500      	str	r5, [sp, #0]
d03e44ac:	f7fe f964 	bl	d03e2778 <ui_create_button>
d03e44b0:	4b57      	ldr	r3, [pc, #348]	; (d03e4610 <ui_redraw_backbuffer+0x19a4>)
d03e44b2:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e44b6:	21ce      	movs	r1, #206	; 0xce
d03e44b8:	203f      	movs	r0, #63	; 0x3f
d03e44ba:	9301      	str	r3, [sp, #4]
d03e44bc:	9403      	str	r4, [sp, #12]
d03e44be:	2332      	movs	r3, #50	; 0x32
d03e44c0:	9402      	str	r4, [sp, #8]
d03e44c2:	9500      	str	r5, [sp, #0]
d03e44c4:	f7fe f958 	bl	d03e2778 <ui_create_button>
d03e44c8:	9403      	str	r4, [sp, #12]
d03e44ca:	f89a 3000 	ldrb.w	r3, [sl]
d03e44ce:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e44d2:	f44f 7182 	mov.w	r1, #260	; 0x104
d03e44d6:	2040      	movs	r0, #64	; 0x40
d03e44d8:	9302      	str	r3, [sp, #8]
d03e44da:	4b4e      	ldr	r3, [pc, #312]	; (d03e4614 <ui_redraw_backbuffer+0x19a8>)
d03e44dc:	9500      	str	r5, [sp, #0]
d03e44de:	9301      	str	r3, [sp, #4]
d03e44e0:	2332      	movs	r3, #50	; 0x32
d03e44e2:	f7fe f949 	bl	d03e2778 <ui_create_button>
d03e44e6:	4b4c      	ldr	r3, [pc, #304]	; (d03e4618 <ui_redraw_backbuffer+0x19ac>)
d03e44e8:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e44ec:	f44f 719d 	mov.w	r1, #314	; 0x13a
d03e44f0:	203a      	movs	r0, #58	; 0x3a
d03e44f2:	9301      	str	r3, [sp, #4]
d03e44f4:	9603      	str	r6, [sp, #12]
d03e44f6:	231a      	movs	r3, #26
d03e44f8:	9402      	str	r4, [sp, #8]
d03e44fa:	9500      	str	r5, [sp, #0]
d03e44fc:	f7fe f93c 	bl	d03e2778 <ui_create_button>
d03e4500:	4b46      	ldr	r3, [pc, #280]	; (d03e461c <ui_redraw_backbuffer+0x19b0>)
d03e4502:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e4506:	f44f 71ac 	mov.w	r1, #344	; 0x158
d03e450a:	203b      	movs	r0, #59	; 0x3b
d03e450c:	9301      	str	r3, [sp, #4]
d03e450e:	9603      	str	r6, [sp, #12]
d03e4510:	231a      	movs	r3, #26
d03e4512:	9402      	str	r4, [sp, #8]
d03e4514:	9500      	str	r5, [sp, #0]
d03e4516:	f7fe f92f 	bl	d03e2778 <ui_create_button>
d03e451a:	f899 2000 	ldrb.w	r2, [r9]
d03e451e:	4940      	ldr	r1, [pc, #256]	; (d03e4620 <ui_redraw_backbuffer+0x19b4>)
d03e4520:	203c      	movs	r0, #60	; 0x3c
d03e4522:	4b40      	ldr	r3, [pc, #256]	; (d03e4624 <ui_redraw_backbuffer+0x19b8>)
d03e4524:	9202      	str	r2, [sp, #8]
d03e4526:	42a2      	cmp	r2, r4
d03e4528:	bf08      	it	eq
d03e452a:	460b      	moveq	r3, r1
d03e452c:	9403      	str	r4, [sp, #12]
d03e452e:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e4532:	f44f 71bb 	mov.w	r1, #374	; 0x176
d03e4536:	9301      	str	r3, [sp, #4]
d03e4538:	2332      	movs	r3, #50	; 0x32
d03e453a:	9500      	str	r5, [sp, #0]
d03e453c:	f7fe f91c 	bl	d03e2778 <ui_create_button>
d03e4540:	4b39      	ldr	r3, [pc, #228]	; (d03e4628 <ui_redraw_backbuffer+0x19bc>)
d03e4542:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e4546:	f44f 71d6 	mov.w	r1, #428	; 0x1ac
d03e454a:	203d      	movs	r0, #61	; 0x3d
d03e454c:	9301      	str	r3, [sp, #4]
d03e454e:	9403      	str	r4, [sp, #12]
d03e4550:	2316      	movs	r3, #22
d03e4552:	9402      	str	r4, [sp, #8]
d03e4554:	9500      	str	r5, [sp, #0]
d03e4556:	f7fe f90f 	bl	d03e2778 <ui_create_button>
d03e455a:	4b34      	ldr	r3, [pc, #208]	; (d03e462c <ui_redraw_backbuffer+0x19c0>)
d03e455c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03e4560:	f44f 71e3 	mov.w	r1, #454	; 0x1c6
d03e4564:	9301      	str	r3, [sp, #4]
d03e4566:	203e      	movs	r0, #62	; 0x3e
d03e4568:	2316      	movs	r3, #22
d03e456a:	9403      	str	r4, [sp, #12]
d03e456c:	9402      	str	r4, [sp, #8]
d03e456e:	9500      	str	r5, [sp, #0]
d03e4570:	f7ff bbda 	b.w	d03e3d28 <ui_redraw_backbuffer+0x10bc>
d03e4574:	4d2e      	ldr	r5, [pc, #184]	; (d03e4630 <ui_redraw_backbuffer+0x19c4>)
d03e4576:	e4ff      	b.n	d03e3f78 <ui_redraw_backbuffer+0x130c>
d03e4578:	4d1f      	ldr	r5, [pc, #124]	; (d03e45f8 <ui_redraw_backbuffer+0x198c>)
d03e457a:	e4fd      	b.n	d03e3f78 <ui_redraw_backbuffer+0x130c>
d03e457c:	4d2d      	ldr	r5, [pc, #180]	; (d03e4634 <ui_redraw_backbuffer+0x19c8>)
d03e457e:	e4fb      	b.n	d03e3f78 <ui_redraw_backbuffer+0x130c>
d03e4580:	f89c c000 	ldrb.w	ip, [ip]
d03e4584:	f8df e0b8 	ldr.w	lr, [pc, #184]	; d03e4640 <ui_redraw_backbuffer+0x19d4>
d03e4588:	f00c 0c03 	and.w	ip, ip, #3
d03e458c:	4a2a      	ldr	r2, [pc, #168]	; (d03e4638 <ui_redraw_backbuffer+0x19cc>)
d03e458e:	f810 000c 	ldrb.w	r0, [r0, ip]
d03e4592:	2900      	cmp	r1, #0
d03e4594:	bf14      	ite	ne
d03e4596:	4611      	movne	r1, r2
d03e4598:	4671      	moveq	r1, lr
d03e459a:	f89a c000 	ldrb.w	ip, [sl]
d03e459e:	f1bc 0f00 	cmp.w	ip, #0
d03e45a2:	bf08      	it	eq
d03e45a4:	4672      	moveq	r2, lr
d03e45a6:	f8df c09c 	ldr.w	ip, [pc, #156]	; d03e4644 <ui_redraw_backbuffer+0x19d8>
d03e45aa:	f8bc c000 	ldrh.w	ip, [ip]
d03e45ae:	9203      	str	r2, [sp, #12]
d03e45b0:	9002      	str	r0, [sp, #8]
d03e45b2:	a80a      	add	r0, sp, #40	; 0x28
d03e45b4:	9101      	str	r1, [sp, #4]
d03e45b6:	2160      	movs	r1, #96	; 0x60
d03e45b8:	4a20      	ldr	r2, [pc, #128]	; (d03e463c <ui_redraw_backbuffer+0x19d0>)
d03e45ba:	f8cd c010 	str.w	ip, [sp, #16]
d03e45be:	9500      	str	r5, [sp, #0]
d03e45c0:	f003 f88c 	bl	d03e76dc <sniprintf>
d03e45c4:	e5b5      	b.n	d03e4132 <ui_redraw_backbuffer+0x14c6>
d03e45c6:	2601      	movs	r6, #1
d03e45c8:	b94d      	cbnz	r5, d03e45de <ui_redraw_backbuffer+0x1972>
d03e45ca:	f04f 0815 	mov.w	r8, #21
d03e45ce:	2214      	movs	r2, #20
d03e45d0:	e643      	b.n	d03e425a <ui_redraw_backbuffer+0x15ee>
d03e45d2:	2600      	movs	r6, #0
d03e45d4:	f04f 080d 	mov.w	r8, #13
d03e45d8:	220c      	movs	r2, #12
d03e45da:	4643      	mov	r3, r8
d03e45dc:	e63e      	b.n	d03e425c <ui_redraw_backbuffer+0x15f0>
d03e45de:	f04f 080d 	mov.w	r8, #13
d03e45e2:	2214      	movs	r2, #20
d03e45e4:	e7f9      	b.n	d03e45da <ui_redraw_backbuffer+0x196e>
d03e45e6:	4b08      	ldr	r3, [pc, #32]	; (d03e4608 <ui_redraw_backbuffer+0x199c>)
d03e45e8:	2201      	movs	r2, #1
d03e45ea:	e747      	b.n	d03e447c <ui_redraw_backbuffer+0x1810>
d03e45ec:	f88b 8000 	strb.w	r8, [fp]
d03e45f0:	f7fe fa02 	bl	d03e29f8 <ui_draw_home>
d03e45f4:	f7fe bd6d 	b.w	d03e30d2 <ui_redraw_backbuffer+0x466>
d03e45f8:	d03e8dfc 	.word	0xd03e8dfc
d03e45fc:	d03eb490 	.word	0xd03eb490
d03e4600:	d03eb499 	.word	0xd03eb499
d03e4604:	d03e8e09 	.word	0xd03e8e09
d03e4608:	d03e8e04 	.word	0xd03e8e04
d03e460c:	d03e90e7 	.word	0xd03e90e7
d03e4610:	d03e90ec 	.word	0xd03e90ec
d03e4614:	d03e90f0 	.word	0xd03e90f0
d03e4618:	d03e8ea7 	.word	0xd03e8ea7
d03e461c:	d03e8ea9 	.word	0xd03e8ea9
d03e4620:	d03e8e17 	.word	0xd03e8e17
d03e4624:	d03e8e12 	.word	0xd03e8e12
d03e4628:	d03e90f5 	.word	0xd03e90f5
d03e462c:	d03e90f7 	.word	0xd03e90f7
d03e4630:	d03e8df6 	.word	0xd03e8df6
d03e4634:	d03e8e00 	.word	0xd03e8e00
d03e4638:	d03e8efc 	.word	0xd03e8efc
d03e463c:	d03e90b7 	.word	0xd03e90b7
d03e4640:	d03e8e0e 	.word	0xd03e8e0e
d03e4644:	d03ea3ce 	.word	0xd03ea3ce
d03e4648:	2b02      	cmp	r3, #2
d03e464a:	f000 8165 	beq.w	d03e4918 <ui_redraw_backbuffer+0x1cac>
d03e464e:	4ba7      	ldr	r3, [pc, #668]	; (d03e48ec <ui_redraw_backbuffer+0x1c80>)
d03e4650:	2500      	movs	r5, #0
d03e4652:	261c      	movs	r6, #28
d03e4654:	22b2      	movs	r2, #178	; 0xb2
d03e4656:	2184      	movs	r1, #132	; 0x84
d03e4658:	2026      	movs	r0, #38	; 0x26
d03e465a:	9301      	str	r3, [sp, #4]
d03e465c:	9503      	str	r5, [sp, #12]
d03e465e:	235c      	movs	r3, #92	; 0x5c
d03e4660:	9502      	str	r5, [sp, #8]
d03e4662:	9600      	str	r6, [sp, #0]
d03e4664:	f7fe f888 	bl	d03e2778 <ui_create_button>
d03e4668:	4ba1      	ldr	r3, [pc, #644]	; (d03e48f0 <ui_redraw_backbuffer+0x1c84>)
d03e466a:	22b2      	movs	r2, #178	; 0xb2
d03e466c:	f44f 7180 	mov.w	r1, #256	; 0x100
d03e4670:	9301      	str	r3, [sp, #4]
d03e4672:	2027      	movs	r0, #39	; 0x27
d03e4674:	235c      	movs	r3, #92	; 0x5c
d03e4676:	9503      	str	r5, [sp, #12]
d03e4678:	9502      	str	r5, [sp, #8]
d03e467a:	9600      	str	r6, [sp, #0]
d03e467c:	f7fe f87c 	bl	d03e2778 <ui_create_button>
d03e4680:	4b9c      	ldr	r3, [pc, #624]	; (d03e48f4 <ui_redraw_backbuffer+0x1c88>)
d03e4682:	781e      	ldrb	r6, [r3, #0]
d03e4684:	2e02      	cmp	r6, #2
d03e4686:	f000 81c1 	beq.w	d03e4a0c <ui_redraw_backbuffer+0x1da0>
d03e468a:	2e03      	cmp	r6, #3
d03e468c:	f000 8348 	beq.w	d03e4d20 <ui_redraw_backbuffer+0x20b4>
d03e4690:	2e01      	cmp	r6, #1
d03e4692:	f040 8116 	bne.w	d03e48c2 <ui_redraw_backbuffer+0x1c56>
d03e4696:	4e98      	ldr	r6, [pc, #608]	; (d03e48f8 <ui_redraw_backbuffer+0x1c8c>)
d03e4698:	2100      	movs	r1, #0
d03e469a:	231a      	movs	r3, #26
d03e469c:	f04f 081f 	mov.w	r8, #31
d03e46a0:	7835      	ldrb	r5, [r6, #0]
d03e46a2:	4608      	mov	r0, r1
d03e46a4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e46a8:	2d07      	cmp	r5, #7
d03e46aa:	bf8c      	ite	hi
d03e46ac:	3d07      	subhi	r5, #7
d03e46ae:	2500      	movls	r5, #0
d03e46b0:	e9cd 3800 	strd	r3, r8, [sp]
d03e46b4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e46b8:	bf88      	it	hi
d03e46ba:	b2ed      	uxtbhi	r5, r5
d03e46bc:	f7fc fa7c 	bl	d03e0bb8 <ui_box>
d03e46c0:	7b23      	ldrb	r3, [r4, #12]
d03e46c2:	7b62      	ldrb	r2, [r4, #13]
d03e46c4:	2014      	movs	r0, #20
d03e46c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e46ca:	7ba2      	ldrb	r2, [r4, #14]
d03e46cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e46d0:	7be2      	ldrb	r2, [r4, #15]
d03e46d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e46d6:	685b      	ldr	r3, [r3, #4]
d03e46d8:	68db      	ldr	r3, [r3, #12]
d03e46da:	4798      	blx	r3
d03e46dc:	7b23      	ldrb	r3, [r4, #12]
d03e46de:	7b62      	ldrb	r2, [r4, #13]
d03e46e0:	2101      	movs	r1, #1
d03e46e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e46e6:	7ba2      	ldrb	r2, [r4, #14]
d03e46e8:	4608      	mov	r0, r1
d03e46ea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e46ee:	7be2      	ldrb	r2, [r4, #15]
d03e46f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e46f4:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03e46f8:	685b      	ldr	r3, [r3, #4]
d03e46fa:	685f      	ldr	r7, [r3, #4]
d03e46fc:	231c      	movs	r3, #28
d03e46fe:	47b8      	blx	r7
d03e4700:	7b23      	ldrb	r3, [r4, #12]
d03e4702:	7b62      	ldrb	r2, [r4, #13]
d03e4704:	201e      	movs	r0, #30
d03e4706:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e470a:	7ba2      	ldrb	r2, [r4, #14]
d03e470c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4710:	7be2      	ldrb	r2, [r4, #15]
d03e4712:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4716:	685b      	ldr	r3, [r3, #4]
d03e4718:	68db      	ldr	r3, [r3, #12]
d03e471a:	4798      	blx	r3
d03e471c:	7b23      	ldrb	r3, [r4, #12]
d03e471e:	7b62      	ldrb	r2, [r4, #13]
d03e4720:	2107      	movs	r1, #7
d03e4722:	2010      	movs	r0, #16
d03e4724:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4728:	7ba2      	ldrb	r2, [r4, #14]
d03e472a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e472e:	7be2      	ldrb	r2, [r4, #15]
d03e4730:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4734:	4a71      	ldr	r2, [pc, #452]	; (d03e48fc <ui_redraw_backbuffer+0x1c90>)
d03e4736:	685b      	ldr	r3, [r3, #4]
d03e4738:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e473a:	4798      	blx	r3
d03e473c:	7b23      	ldrb	r3, [r4, #12]
d03e473e:	7b62      	ldrb	r2, [r4, #13]
d03e4740:	2018      	movs	r0, #24
d03e4742:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4746:	7ba2      	ldrb	r2, [r4, #14]
d03e4748:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e474c:	7be2      	ldrb	r2, [r4, #15]
d03e474e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4752:	685b      	ldr	r3, [r3, #4]
d03e4754:	68db      	ldr	r3, [r3, #12]
d03e4756:	4798      	blx	r3
d03e4758:	7b23      	ldrb	r3, [r4, #12]
d03e475a:	7b62      	ldrb	r2, [r4, #13]
d03e475c:	212a      	movs	r1, #42	; 0x2a
d03e475e:	2022      	movs	r0, #34	; 0x22
d03e4760:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4764:	7ba2      	ldrb	r2, [r4, #14]
d03e4766:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e476a:	7be2      	ldrb	r2, [r4, #15]
d03e476c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4770:	4a63      	ldr	r2, [pc, #396]	; (d03e4900 <ui_redraw_backbuffer+0x1c94>)
d03e4772:	685b      	ldr	r3, [r3, #4]
d03e4774:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4776:	4798      	blx	r3
d03e4778:	7833      	ldrb	r3, [r6, #0]
d03e477a:	2b00      	cmp	r3, #0
d03e477c:	f040 80eb 	bne.w	d03e4956 <ui_redraw_backbuffer+0x1cea>
d03e4780:	7b23      	ldrb	r3, [r4, #12]
d03e4782:	2019      	movs	r0, #25
d03e4784:	7b62      	ldrb	r2, [r4, #13]
d03e4786:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e478a:	7ba2      	ldrb	r2, [r4, #14]
d03e478c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4790:	7be2      	ldrb	r2, [r4, #15]
d03e4792:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4796:	685b      	ldr	r3, [r3, #4]
d03e4798:	68db      	ldr	r3, [r3, #12]
d03e479a:	4798      	blx	r3
d03e479c:	7b23      	ldrb	r3, [r4, #12]
d03e479e:	7b62      	ldrb	r2, [r4, #13]
d03e47a0:	2188      	movs	r1, #136	; 0x88
d03e47a2:	2038      	movs	r0, #56	; 0x38
d03e47a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e47a8:	7ba2      	ldrb	r2, [r4, #14]
d03e47aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e47ae:	7be2      	ldrb	r2, [r4, #15]
d03e47b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e47b4:	4a53      	ldr	r2, [pc, #332]	; (d03e4904 <ui_redraw_backbuffer+0x1c98>)
d03e47b6:	685b      	ldr	r3, [r3, #4]
d03e47b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e47ba:	4798      	blx	r3
d03e47bc:	7b23      	ldrb	r3, [r4, #12]
d03e47be:	2014      	movs	r0, #20
d03e47c0:	7b62      	ldrb	r2, [r4, #13]
d03e47c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e47c6:	7ba2      	ldrb	r2, [r4, #14]
d03e47c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e47cc:	7be2      	ldrb	r2, [r4, #15]
d03e47ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e47d2:	685b      	ldr	r3, [r3, #4]
d03e47d4:	68db      	ldr	r3, [r3, #12]
d03e47d6:	4798      	blx	r3
d03e47d8:	7b23      	ldrb	r3, [r4, #12]
d03e47da:	7b62      	ldrb	r2, [r4, #13]
d03e47dc:	f44f 70c4 	mov.w	r0, #392	; 0x188
d03e47e0:	214c      	movs	r1, #76	; 0x4c
d03e47e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e47e6:	7ba2      	ldrb	r2, [r4, #14]
d03e47e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e47ec:	7be2      	ldrb	r2, [r4, #15]
d03e47ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e47f2:	220c      	movs	r2, #12
d03e47f4:	685b      	ldr	r3, [r3, #4]
d03e47f6:	685f      	ldr	r7, [r3, #4]
d03e47f8:	23a8      	movs	r3, #168	; 0xa8
d03e47fa:	47b8      	blx	r7
d03e47fc:	7b23      	ldrb	r3, [r4, #12]
d03e47fe:	7b62      	ldrb	r2, [r4, #13]
d03e4800:	201c      	movs	r0, #28
d03e4802:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4806:	7ba2      	ldrb	r2, [r4, #14]
d03e4808:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e480c:	7be2      	ldrb	r2, [r4, #15]
d03e480e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4812:	685b      	ldr	r3, [r3, #4]
d03e4814:	68db      	ldr	r3, [r3, #12]
d03e4816:	4798      	blx	r3
d03e4818:	2d00      	cmp	r5, #0
d03e481a:	f040 80cd 	bne.w	d03e49b8 <ui_redraw_backbuffer+0x1d4c>
d03e481e:	7b23      	ldrb	r3, [r4, #12]
d03e4820:	214c      	movs	r1, #76	; 0x4c
d03e4822:	7b62      	ldrb	r2, [r4, #13]
d03e4824:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4828:	7ba2      	ldrb	r2, [r4, #14]
d03e482a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e482e:	7be2      	ldrb	r2, [r4, #15]
d03e4830:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4834:	2208      	movs	r2, #8
d03e4836:	685b      	ldr	r3, [r3, #4]
d03e4838:	685d      	ldr	r5, [r3, #4]
d03e483a:	23a8      	movs	r3, #168	; 0xa8
d03e483c:	f44f 70c5 	mov.w	r0, #394	; 0x18a
d03e4840:	2620      	movs	r6, #32
d03e4842:	47a8      	blx	r5
d03e4844:	2701      	movs	r7, #1
d03e4846:	2500      	movs	r5, #0
d03e4848:	4b2f      	ldr	r3, [pc, #188]	; (d03e4908 <ui_redraw_backbuffer+0x1c9c>)
d03e484a:	224c      	movs	r2, #76	; 0x4c
d03e484c:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03e4850:	2028      	movs	r0, #40	; 0x28
d03e4852:	9301      	str	r3, [sp, #4]
d03e4854:	9703      	str	r7, [sp, #12]
d03e4856:	232a      	movs	r3, #42	; 0x2a
d03e4858:	9502      	str	r5, [sp, #8]
d03e485a:	9600      	str	r6, [sp, #0]
d03e485c:	f7fd ff8c 	bl	d03e2778 <ui_create_button>
d03e4860:	4b2a      	ldr	r3, [pc, #168]	; (d03e490c <ui_redraw_backbuffer+0x1ca0>)
d03e4862:	2272      	movs	r2, #114	; 0x72
d03e4864:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03e4868:	2029      	movs	r0, #41	; 0x29
d03e486a:	9301      	str	r3, [sp, #4]
d03e486c:	9703      	str	r7, [sp, #12]
d03e486e:	232a      	movs	r3, #42	; 0x2a
d03e4870:	9502      	str	r5, [sp, #8]
d03e4872:	9600      	str	r6, [sp, #0]
d03e4874:	f7fd ff80 	bl	d03e2778 <ui_create_button>
d03e4878:	4b25      	ldr	r3, [pc, #148]	; (d03e4910 <ui_redraw_backbuffer+0x1ca4>)
d03e487a:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e487e:	211a      	movs	r1, #26
d03e4880:	202a      	movs	r0, #42	; 0x2a
d03e4882:	9301      	str	r3, [sp, #4]
d03e4884:	9503      	str	r5, [sp, #12]
d03e4886:	2376      	movs	r3, #118	; 0x76
d03e4888:	9502      	str	r5, [sp, #8]
d03e488a:	9600      	str	r6, [sp, #0]
d03e488c:	f7fd ff74 	bl	d03e2778 <ui_create_button>
d03e4890:	4b20      	ldr	r3, [pc, #128]	; (d03e4914 <ui_redraw_backbuffer+0x1ca8>)
d03e4892:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e4896:	21a8      	movs	r1, #168	; 0xa8
d03e4898:	202b      	movs	r0, #43	; 0x2b
d03e489a:	9301      	str	r3, [sp, #4]
d03e489c:	9503      	str	r5, [sp, #12]
d03e489e:	2376      	movs	r3, #118	; 0x76
d03e48a0:	9502      	str	r5, [sp, #8]
d03e48a2:	9600      	str	r6, [sp, #0]
d03e48a4:	f7fd ff68 	bl	d03e2778 <ui_create_button>
d03e48a8:	4b11      	ldr	r3, [pc, #68]	; (d03e48f0 <ui_redraw_backbuffer+0x1c84>)
d03e48aa:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e48ae:	f44f 71ac 	mov.w	r1, #344	; 0x158
d03e48b2:	9301      	str	r3, [sp, #4]
d03e48b4:	202c      	movs	r0, #44	; 0x2c
d03e48b6:	2364      	movs	r3, #100	; 0x64
d03e48b8:	9503      	str	r5, [sp, #12]
d03e48ba:	9502      	str	r5, [sp, #8]
d03e48bc:	9600      	str	r6, [sp, #0]
d03e48be:	f7fd ff5b 	bl	d03e2778 <ui_create_button>
d03e48c2:	7b23      	ldrb	r3, [r4, #12]
d03e48c4:	ee18 0a10 	vmov	r0, s16
d03e48c8:	7b62      	ldrb	r2, [r4, #13]
d03e48ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e48ce:	7ba2      	ldrb	r2, [r4, #14]
d03e48d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e48d4:	7be2      	ldrb	r2, [r4, #15]
d03e48d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e48da:	681b      	ldr	r3, [r3, #0]
d03e48dc:	699b      	ldr	r3, [r3, #24]
d03e48de:	4798      	blx	r3
d03e48e0:	b023      	add	sp, #140	; 0x8c
d03e48e2:	ecbd 8b02 	vpop	{d8}
d03e48e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e48ea:	bf00      	nop
d03e48ec:	d03e8e1c 	.word	0xd03e8e1c
d03e48f0:	d03e9180 	.word	0xd03e9180
d03e48f4:	d03ebdc8 	.word	0xd03ebdc8
d03e48f8:	d03ebe0c 	.word	0xd03ebe0c
d03e48fc:	d03e9187 	.word	0xd03e9187
d03e4900:	d03e8a66 	.word	0xd03e8a66
d03e4904:	d03e919a 	.word	0xd03e919a
d03e4908:	d03e9047 	.word	0xd03e9047
d03e490c:	d03e905f 	.word	0xd03e905f
d03e4910:	d03e91b4 	.word	0xd03e91b4
d03e4914:	d03e91be 	.word	0xd03e91be
d03e4918:	7b23      	ldrb	r3, [r4, #12]
d03e491a:	2192      	movs	r1, #146	; 0x92
d03e491c:	7b62      	ldrb	r2, [r4, #13]
d03e491e:	2074      	movs	r0, #116	; 0x74
d03e4920:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4924:	7ba2      	ldrb	r2, [r4, #14]
d03e4926:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e492a:	7be2      	ldrb	r2, [r4, #15]
d03e492c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4930:	4a31      	ldr	r2, [pc, #196]	; (d03e49f8 <ui_redraw_backbuffer+0x1d8c>)
d03e4932:	685b      	ldr	r3, [r3, #4]
d03e4934:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4936:	4798      	blx	r3
d03e4938:	7b23      	ldrb	r3, [r4, #12]
d03e493a:	7b62      	ldrb	r2, [r4, #13]
d03e493c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4940:	7ba2      	ldrb	r2, [r4, #14]
d03e4942:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4946:	7be2      	ldrb	r2, [r4, #15]
d03e4948:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e494c:	4a2b      	ldr	r2, [pc, #172]	; (d03e49fc <ui_redraw_backbuffer+0x1d90>)
d03e494e:	685b      	ldr	r3, [r3, #4]
d03e4950:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4952:	f7fe bc92 	b.w	d03e327a <ui_redraw_backbuffer+0x60e>
d03e4956:	2700      	movs	r7, #0
d03e4958:	f8df a0a4 	ldr.w	sl, [pc, #164]	; d03e4a00 <ui_redraw_backbuffer+0x1d94>
d03e495c:	f8df 90a4 	ldr.w	r9, [pc, #164]	; d03e4a04 <ui_redraw_backbuffer+0x1d98>
d03e4960:	f8df 80a4 	ldr.w	r8, [pc, #164]	; d03e4a08 <ui_redraw_backbuffer+0x1d9c>
d03e4964:	f89a 3000 	ldrb.w	r3, [sl]
d03e4968:	7832      	ldrb	r2, [r6, #0]
d03e496a:	443b      	add	r3, r7
d03e496c:	b2db      	uxtb	r3, r3
d03e496e:	429a      	cmp	r2, r3
d03e4970:	f67f af24 	bls.w	d03e47bc <ui_redraw_backbuffer+0x1b50>
d03e4974:	2100      	movs	r1, #0
d03e4976:	b2b8      	uxth	r0, r7
d03e4978:	3701      	adds	r7, #1
d03e497a:	9103      	str	r1, [sp, #12]
d03e497c:	eb00 0240 	add.w	r2, r0, r0, lsl #1
d03e4980:	f899 1000 	ldrb.w	r1, [r9]
d03e4984:	30b4      	adds	r0, #180	; 0xb4
d03e4986:	00d2      	lsls	r2, r2, #3
d03e4988:	eba1 0c03 	sub.w	ip, r1, r3
d03e498c:	eb08 1343 	add.w	r3, r8, r3, lsl #5
d03e4990:	324c      	adds	r2, #76	; 0x4c
d03e4992:	b280      	uxth	r0, r0
d03e4994:	f1dc 0100 	rsbs	r1, ip, #0
d03e4998:	9301      	str	r3, [sp, #4]
d03e499a:	f04f 0318 	mov.w	r3, #24
d03e499e:	b212      	sxth	r2, r2
d03e49a0:	eb41 010c 	adc.w	r1, r1, ip
d03e49a4:	9300      	str	r3, [sp, #0]
d03e49a6:	f44f 73af 	mov.w	r3, #350	; 0x15e
d03e49aa:	9102      	str	r1, [sp, #8]
d03e49ac:	2122      	movs	r1, #34	; 0x22
d03e49ae:	f7fd fee3 	bl	d03e2778 <ui_create_button>
d03e49b2:	2f07      	cmp	r7, #7
d03e49b4:	d1d6      	bne.n	d03e4964 <ui_redraw_backbuffer+0x1cf8>
d03e49b6:	e701      	b.n	d03e47bc <ui_redraw_backbuffer+0x1b50>
d03e49b8:	7832      	ldrb	r2, [r6, #0]
d03e49ba:	f44f 6393 	mov.w	r3, #1176	; 0x498
d03e49be:	fbb3 f3f2 	udiv	r3, r3, r2
d03e49c2:	7b22      	ldrb	r2, [r4, #12]
d03e49c4:	2b10      	cmp	r3, #16
d03e49c6:	7b61      	ldrb	r1, [r4, #13]
d03e49c8:	bfb8      	it	lt
d03e49ca:	2310      	movlt	r3, #16
d03e49cc:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03e49d0:	7ba1      	ldrb	r1, [r4, #14]
d03e49d2:	f1c3 00a8 	rsb	r0, r3, #168	; 0xa8
d03e49d6:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03e49da:	7be1      	ldrb	r1, [r4, #15]
d03e49dc:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d03e49e0:	4907      	ldr	r1, [pc, #28]	; (d03e4a00 <ui_redraw_backbuffer+0x1d94>)
d03e49e2:	7809      	ldrb	r1, [r1, #0]
d03e49e4:	6852      	ldr	r2, [r2, #4]
d03e49e6:	4341      	muls	r1, r0
d03e49e8:	fb91 f1f5 	sdiv	r1, r1, r5
d03e49ec:	314c      	adds	r1, #76	; 0x4c
d03e49ee:	6855      	ldr	r5, [r2, #4]
d03e49f0:	2208      	movs	r2, #8
d03e49f2:	b209      	sxth	r1, r1
d03e49f4:	e722      	b.n	d03e483c <ui_redraw_backbuffer+0x1bd0>
d03e49f6:	bf00      	nop
d03e49f8:	d03e914d 	.word	0xd03e914d
d03e49fc:	d03e9167 	.word	0xd03e9167
d03e4a00:	d03ec20d 	.word	0xd03ec20d
d03e4a04:	d03ec20e 	.word	0xd03ec20e
d03e4a08:	d03ebe0d 	.word	0xd03ebe0d
d03e4a0c:	2500      	movs	r5, #0
d03e4a0e:	231f      	movs	r3, #31
d03e4a10:	271a      	movs	r7, #26
d03e4a12:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e4a16:	4629      	mov	r1, r5
d03e4a18:	4628      	mov	r0, r5
d03e4a1a:	9301      	str	r3, [sp, #4]
d03e4a1c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e4a20:	9700      	str	r7, [sp, #0]
d03e4a22:	f04f 0901 	mov.w	r9, #1
d03e4a26:	f8ad 5028 	strh.w	r5, [sp, #40]	; 0x28
d03e4a2a:	f7fc f8c5 	bl	d03e0bb8 <ui_box>
d03e4a2e:	7b23      	ldrb	r3, [r4, #12]
d03e4a30:	2014      	movs	r0, #20
d03e4a32:	7b62      	ldrb	r2, [r4, #13]
d03e4a34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a38:	7ba2      	ldrb	r2, [r4, #14]
d03e4a3a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4a3e:	7be2      	ldrb	r2, [r4, #15]
d03e4a40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a44:	685b      	ldr	r3, [r3, #4]
d03e4a46:	68db      	ldr	r3, [r3, #12]
d03e4a48:	4798      	blx	r3
d03e4a4a:	7b23      	ldrb	r3, [r4, #12]
d03e4a4c:	7b62      	ldrb	r2, [r4, #13]
d03e4a4e:	2101      	movs	r1, #1
d03e4a50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a54:	7ba2      	ldrb	r2, [r4, #14]
d03e4a56:	4608      	mov	r0, r1
d03e4a58:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4a5c:	7be2      	ldrb	r2, [r4, #15]
d03e4a5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a62:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03e4a66:	685b      	ldr	r3, [r3, #4]
d03e4a68:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03e4a6c:	231c      	movs	r3, #28
d03e4a6e:	47c0      	blx	r8
d03e4a70:	7b23      	ldrb	r3, [r4, #12]
d03e4a72:	7b62      	ldrb	r2, [r4, #13]
d03e4a74:	201e      	movs	r0, #30
d03e4a76:	f04f 0822 	mov.w	r8, #34	; 0x22
d03e4a7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a7e:	7ba2      	ldrb	r2, [r4, #14]
d03e4a80:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4a84:	7be2      	ldrb	r2, [r4, #15]
d03e4a86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4a8a:	685b      	ldr	r3, [r3, #4]
d03e4a8c:	68db      	ldr	r3, [r3, #12]
d03e4a8e:	4798      	blx	r3
d03e4a90:	7b23      	ldrb	r3, [r4, #12]
d03e4a92:	7b62      	ldrb	r2, [r4, #13]
d03e4a94:	2107      	movs	r1, #7
d03e4a96:	2010      	movs	r0, #16
d03e4a98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4a9c:	7ba2      	ldrb	r2, [r4, #14]
d03e4a9e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4aa2:	7be2      	ldrb	r2, [r4, #15]
d03e4aa4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4aa8:	4a90      	ldr	r2, [pc, #576]	; (d03e4cec <ui_redraw_backbuffer+0x2080>)
d03e4aaa:	685b      	ldr	r3, [r3, #4]
d03e4aac:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4aae:	4798      	blx	r3
d03e4ab0:	4b8f      	ldr	r3, [pc, #572]	; (d03e4cf0 <ui_redraw_backbuffer+0x2084>)
d03e4ab2:	2224      	movs	r2, #36	; 0x24
d03e4ab4:	2114      	movs	r1, #20
d03e4ab6:	202e      	movs	r0, #46	; 0x2e
d03e4ab8:	9502      	str	r5, [sp, #8]
d03e4aba:	9301      	str	r3, [sp, #4]
d03e4abc:	2330      	movs	r3, #48	; 0x30
d03e4abe:	f8cd 900c 	str.w	r9, [sp, #12]
d03e4ac2:	f8cd 8000 	str.w	r8, [sp]
d03e4ac6:	f7fd fe57 	bl	d03e2778 <ui_create_button>
d03e4aca:	2311      	movs	r3, #17
d03e4acc:	f44f 72a6 	mov.w	r2, #332	; 0x14c
d03e4ad0:	2124      	movs	r1, #36	; 0x24
d03e4ad2:	204a      	movs	r0, #74	; 0x4a
d03e4ad4:	9301      	str	r3, [sp, #4]
d03e4ad6:	9700      	str	r7, [sp, #0]
d03e4ad8:	4643      	mov	r3, r8
d03e4ada:	f7fc f86d 	bl	d03e0bb8 <ui_box>
d03e4ade:	4b85      	ldr	r3, [pc, #532]	; (d03e4cf4 <ui_redraw_backbuffer+0x2088>)
d03e4ae0:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03e4ae4:	2224      	movs	r2, #36	; 0x24
d03e4ae6:	202f      	movs	r0, #47	; 0x2f
d03e4ae8:	9502      	str	r5, [sp, #8]
d03e4aea:	9301      	str	r3, [sp, #4]
d03e4aec:	2330      	movs	r3, #48	; 0x30
d03e4aee:	f8cd 900c 	str.w	r9, [sp, #12]
d03e4af2:	f8cd 8000 	str.w	r8, [sp]
d03e4af6:	f7fd fe3f 	bl	d03e2778 <ui_create_button>
d03e4afa:	7b23      	ldrb	r3, [r4, #12]
d03e4afc:	7b62      	ldrb	r2, [r4, #13]
d03e4afe:	201e      	movs	r0, #30
d03e4b00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b04:	7ba2      	ldrb	r2, [r4, #14]
d03e4b06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4b0a:	7be2      	ldrb	r2, [r4, #15]
d03e4b0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b10:	685b      	ldr	r3, [r3, #4]
d03e4b12:	68db      	ldr	r3, [r3, #12]
d03e4b14:	4798      	blx	r3
d03e4b16:	7b23      	ldrb	r3, [r4, #12]
d03e4b18:	7b62      	ldrb	r2, [r4, #13]
d03e4b1a:	2054      	movs	r0, #84	; 0x54
d03e4b1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b20:	7ba2      	ldrb	r2, [r4, #14]
d03e4b22:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4b26:	7be2      	ldrb	r2, [r4, #15]
d03e4b28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b2c:	4a72      	ldr	r2, [pc, #456]	; (d03e4cf8 <ui_redraw_backbuffer+0x208c>)
d03e4b2e:	685b      	ldr	r3, [r3, #4]
d03e4b30:	6add      	ldr	r5, [r3, #44]	; 0x2c
d03e4b32:	4b72      	ldr	r3, [pc, #456]	; (d03e4cfc <ui_redraw_backbuffer+0x2090>)
d03e4b34:	7819      	ldrb	r1, [r3, #0]
d03e4b36:	2900      	cmp	r1, #0
d03e4b38:	bf18      	it	ne
d03e4b3a:	461a      	movne	r2, r3
d03e4b3c:	212d      	movs	r1, #45	; 0x2d
d03e4b3e:	47a8      	blx	r5
d03e4b40:	4b6f      	ldr	r3, [pc, #444]	; (d03e4d00 <ui_redraw_backbuffer+0x2094>)
d03e4b42:	781b      	ldrb	r3, [r3, #0]
d03e4b44:	2b00      	cmp	r3, #0
d03e4b46:	d05d      	beq.n	d03e4c04 <ui_redraw_backbuffer+0x1f98>
d03e4b48:	4b6e      	ldr	r3, [pc, #440]	; (d03e4d04 <ui_redraw_backbuffer+0x2098>)
d03e4b4a:	200d      	movs	r0, #13
d03e4b4c:	781d      	ldrb	r5, [r3, #0]
d03e4b4e:	7b23      	ldrb	r3, [r4, #12]
d03e4b50:	7b62      	ldrb	r2, [r4, #13]
d03e4b52:	00ed      	lsls	r5, r5, #3
d03e4b54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b58:	7ba2      	ldrb	r2, [r4, #14]
d03e4b5a:	3554      	adds	r5, #84	; 0x54
d03e4b5c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4b60:	7be2      	ldrb	r2, [r4, #15]
d03e4b62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b66:	685b      	ldr	r3, [r3, #4]
d03e4b68:	68db      	ldr	r3, [r3, #12]
d03e4b6a:	4798      	blx	r3
d03e4b6c:	7b23      	ldrb	r3, [r4, #12]
d03e4b6e:	7b62      	ldrb	r2, [r4, #13]
d03e4b70:	f5b5 7fc4 	cmp.w	r5, #392	; 0x188
d03e4b74:	f04f 012b 	mov.w	r1, #43	; 0x2b
d03e4b78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4b7c:	7ba2      	ldrb	r2, [r4, #14]
d03e4b7e:	bfa8      	it	ge
d03e4b80:	f44f 75c4 	movge.w	r5, #392	; 0x188
d03e4b84:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4b88:	7be2      	ldrb	r2, [r4, #15]
d03e4b8a:	1e68      	subs	r0, r5, #1
d03e4b8c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4b90:	220a      	movs	r2, #10
d03e4b92:	b200      	sxth	r0, r0
d03e4b94:	685b      	ldr	r3, [r3, #4]
d03e4b96:	9007      	str	r0, [sp, #28]
d03e4b98:	685f      	ldr	r7, [r3, #4]
d03e4b9a:	4633      	mov	r3, r6
d03e4b9c:	47b8      	blx	r7
d03e4b9e:	7b23      	ldrb	r3, [r4, #12]
d03e4ba0:	7b62      	ldrb	r2, [r4, #13]
d03e4ba2:	213b      	movs	r1, #59	; 0x3b
d03e4ba4:	9807      	ldr	r0, [sp, #28]
d03e4ba6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4baa:	7ba2      	ldrb	r2, [r4, #14]
d03e4bac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4bb0:	7be2      	ldrb	r2, [r4, #15]
d03e4bb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4bb6:	220a      	movs	r2, #10
d03e4bb8:	685b      	ldr	r3, [r3, #4]
d03e4bba:	685f      	ldr	r7, [r3, #4]
d03e4bbc:	4633      	mov	r3, r6
d03e4bbe:	47b8      	blx	r7
d03e4bc0:	7b23      	ldrb	r3, [r4, #12]
d03e4bc2:	7b62      	ldrb	r2, [r4, #13]
d03e4bc4:	212b      	movs	r1, #43	; 0x2b
d03e4bc6:	9807      	ldr	r0, [sp, #28]
d03e4bc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4bcc:	7ba2      	ldrb	r2, [r4, #14]
d03e4bce:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4bd2:	7be2      	ldrb	r2, [r4, #15]
d03e4bd4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4bd8:	4632      	mov	r2, r6
d03e4bda:	685b      	ldr	r3, [r3, #4]
d03e4bdc:	685f      	ldr	r7, [r3, #4]
d03e4bde:	2312      	movs	r3, #18
d03e4be0:	47b8      	blx	r7
d03e4be2:	7b23      	ldrb	r3, [r4, #12]
d03e4be4:	7b62      	ldrb	r2, [r4, #13]
d03e4be6:	212b      	movs	r1, #43	; 0x2b
d03e4be8:	1de8      	adds	r0, r5, #7
d03e4bea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4bee:	7ba2      	ldrb	r2, [r4, #14]
d03e4bf0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4bf4:	7be2      	ldrb	r2, [r4, #15]
d03e4bf6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4bfa:	4632      	mov	r2, r6
d03e4bfc:	685b      	ldr	r3, [r3, #4]
d03e4bfe:	685f      	ldr	r7, [r3, #4]
d03e4c00:	2312      	movs	r3, #18
d03e4c02:	47b8      	blx	r7
d03e4c04:	f04f 0900 	mov.w	r9, #0
d03e4c08:	f8df 8110 	ldr.w	r8, [pc, #272]	; d03e4d1c <ui_redraw_backbuffer+0x20b0>
d03e4c0c:	2554      	movs	r5, #84	; 0x54
d03e4c0e:	46ca      	mov	sl, r9
d03e4c10:	4640      	mov	r0, r8
d03e4c12:	46c3      	mov	fp, r8
d03e4c14:	f002 fda8 	bl	d03e7768 <strlen>
d03e4c18:	2700      	movs	r7, #0
d03e4c1a:	b2c6      	uxtb	r6, r0
d03e4c1c:	b22a      	sxth	r2, r5
d03e4c1e:	b2fb      	uxtb	r3, r7
d03e4c20:	fa59 f087 	uxtab	r0, r9, r7
d03e4c24:	42b3      	cmp	r3, r6
d03e4c26:	b2c0      	uxtb	r0, r0
d03e4c28:	d347      	bcc.n	d03e4cba <ui_redraw_backbuffer+0x204e>
d03e4c2a:	3524      	adds	r5, #36	; 0x24
d03e4c2c:	44b1      	add	r9, r6
d03e4c2e:	f108 080b 	add.w	r8, r8, #11
d03e4c32:	b2ad      	uxth	r5, r5
d03e4c34:	fa5f f989 	uxtb.w	r9, r9
d03e4c38:	2de4      	cmp	r5, #228	; 0xe4
d03e4c3a:	d1e9      	bne.n	d03e4c10 <ui_redraw_backbuffer+0x1fa4>
d03e4c3c:	2301      	movs	r3, #1
d03e4c3e:	2500      	movs	r5, #0
d03e4c40:	2620      	movs	r6, #32
d03e4c42:	22c0      	movs	r2, #192	; 0xc0
d03e4c44:	9303      	str	r3, [sp, #12]
d03e4c46:	f44f 71d8 	mov.w	r1, #432	; 0x1b0
d03e4c4a:	4b2f      	ldr	r3, [pc, #188]	; (d03e4d08 <ui_redraw_backbuffer+0x209c>)
d03e4c4c:	202d      	movs	r0, #45	; 0x2d
d03e4c4e:	9502      	str	r5, [sp, #8]
d03e4c50:	9301      	str	r3, [sp, #4]
d03e4c52:	2330      	movs	r3, #48	; 0x30
d03e4c54:	9600      	str	r6, [sp, #0]
d03e4c56:	f7fd fd8f 	bl	d03e2778 <ui_create_button>
d03e4c5a:	4b2c      	ldr	r3, [pc, #176]	; (d03e4d0c <ui_redraw_backbuffer+0x20a0>)
d03e4c5c:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e4c60:	210c      	movs	r1, #12
d03e4c62:	2030      	movs	r0, #48	; 0x30
d03e4c64:	9301      	str	r3, [sp, #4]
d03e4c66:	9503      	str	r5, [sp, #12]
d03e4c68:	234e      	movs	r3, #78	; 0x4e
d03e4c6a:	9502      	str	r5, [sp, #8]
d03e4c6c:	9600      	str	r6, [sp, #0]
d03e4c6e:	f7fd fd83 	bl	d03e2778 <ui_create_button>
d03e4c72:	4b27      	ldr	r3, [pc, #156]	; (d03e4d10 <ui_redraw_backbuffer+0x20a4>)
d03e4c74:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e4c78:	2168      	movs	r1, #104	; 0x68
d03e4c7a:	2031      	movs	r0, #49	; 0x31
d03e4c7c:	9301      	str	r3, [sp, #4]
d03e4c7e:	9503      	str	r5, [sp, #12]
d03e4c80:	236a      	movs	r3, #106	; 0x6a
d03e4c82:	9502      	str	r5, [sp, #8]
d03e4c84:	9600      	str	r6, [sp, #0]
d03e4c86:	f7fd fd77 	bl	d03e2778 <ui_create_button>
d03e4c8a:	4b22      	ldr	r3, [pc, #136]	; (d03e4d14 <ui_redraw_backbuffer+0x20a8>)
d03e4c8c:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e4c90:	21e0      	movs	r1, #224	; 0xe0
d03e4c92:	2032      	movs	r0, #50	; 0x32
d03e4c94:	9301      	str	r3, [sp, #4]
d03e4c96:	9503      	str	r5, [sp, #12]
d03e4c98:	236a      	movs	r3, #106	; 0x6a
d03e4c9a:	9502      	str	r5, [sp, #8]
d03e4c9c:	9600      	str	r6, [sp, #0]
d03e4c9e:	f7fd fd6b 	bl	d03e2778 <ui_create_button>
d03e4ca2:	4b1d      	ldr	r3, [pc, #116]	; (d03e4d18 <ui_redraw_backbuffer+0x20ac>)
d03e4ca4:	f44f 7286 	mov.w	r2, #268	; 0x10c
d03e4ca8:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03e4cac:	9301      	str	r3, [sp, #4]
d03e4cae:	2033      	movs	r0, #51	; 0x33
d03e4cb0:	2364      	movs	r3, #100	; 0x64
d03e4cb2:	9503      	str	r5, [sp, #12]
d03e4cb4:	9502      	str	r5, [sp, #8]
d03e4cb6:	9600      	str	r6, [sp, #0]
d03e4cb8:	e601      	b.n	d03e48be <ui_redraw_backbuffer+0x1c52>
d03e4cba:	f81b 3b01 	ldrb.w	r3, [fp], #1
d03e4cbe:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d03e4cc2:	30dc      	adds	r0, #220	; 0xdc
d03e4cc4:	f8cd a00c 	str.w	sl, [sp, #12]
d03e4cc8:	f88d 3028 	strb.w	r3, [sp, #40]	; 0x28
d03e4ccc:	ab0a      	add	r3, sp, #40	; 0x28
d03e4cce:	0109      	lsls	r1, r1, #4
d03e4cd0:	f8cd a008 	str.w	sl, [sp, #8]
d03e4cd4:	9301      	str	r3, [sp, #4]
d03e4cd6:	2320      	movs	r3, #32
d03e4cd8:	b209      	sxth	r1, r1
d03e4cda:	9207      	str	r2, [sp, #28]
d03e4cdc:	9300      	str	r3, [sp, #0]
d03e4cde:	2330      	movs	r3, #48	; 0x30
d03e4ce0:	f7fd fd4a 	bl	d03e2778 <ui_create_button>
d03e4ce4:	3701      	adds	r7, #1
d03e4ce6:	9a07      	ldr	r2, [sp, #28]
d03e4ce8:	e799      	b.n	d03e4c1e <ui_redraw_backbuffer+0x1fb2>
d03e4cea:	bf00      	nop
d03e4cec:	d03e91c7 	.word	0xd03e91c7
d03e4cf0:	d03e90f5 	.word	0xd03e90f5
d03e4cf4:	d03e90f7 	.word	0xd03e90f7
d03e4cf8:	d03e8e2a 	.word	0xd03e8e2a
d03e4cfc:	d03ec28f 	.word	0xd03ec28f
d03e4d00:	d03ec462 	.word	0xd03ec462
d03e4d04:	d03ec28d 	.word	0xd03ec28d
d03e4d08:	d03e94fe 	.word	0xd03e94fe
d03e4d0c:	d03e8e24 	.word	0xd03e8e24
d03e4d10:	d03e91da 	.word	0xd03e91da
d03e4d14:	d03e91e3 	.word	0xd03e91e3
d03e4d18:	d03e9180 	.word	0xd03e9180
d03e4d1c:	d03e99ac 	.word	0xd03e99ac
d03e4d20:	212f      	movs	r1, #47	; 0x2f
d03e4d22:	4853      	ldr	r0, [pc, #332]	; (d03e4e70 <ui_redraw_backbuffer+0x2204>)
d03e4d24:	f002 fd28 	bl	d03e7778 <strrchr>
d03e4d28:	2800      	cmp	r0, #0
d03e4d2a:	f000 809e 	beq.w	d03e4e6a <ui_redraw_backbuffer+0x21fe>
d03e4d2e:	1c45      	adds	r5, r0, #1
d03e4d30:	211a      	movs	r1, #26
d03e4d32:	231f      	movs	r3, #31
d03e4d34:	f44f 72a8 	mov.w	r2, #336	; 0x150
d03e4d38:	2048      	movs	r0, #72	; 0x48
d03e4d3a:	e9cd 1300 	strd	r1, r3, [sp]
d03e4d3e:	2162      	movs	r1, #98	; 0x62
d03e4d40:	2382      	movs	r3, #130	; 0x82
d03e4d42:	f7fb ff39 	bl	d03e0bb8 <ui_box>
d03e4d46:	7b23      	ldrb	r3, [r4, #12]
d03e4d48:	7b62      	ldrb	r2, [r4, #13]
d03e4d4a:	2014      	movs	r0, #20
d03e4d4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4d50:	7ba2      	ldrb	r2, [r4, #14]
d03e4d52:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4d56:	7be2      	ldrb	r2, [r4, #15]
d03e4d58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4d5c:	685b      	ldr	r3, [r3, #4]
d03e4d5e:	68db      	ldr	r3, [r3, #12]
d03e4d60:	4798      	blx	r3
d03e4d62:	7b23      	ldrb	r3, [r4, #12]
d03e4d64:	7b62      	ldrb	r2, [r4, #13]
d03e4d66:	2163      	movs	r1, #99	; 0x63
d03e4d68:	2049      	movs	r0, #73	; 0x49
d03e4d6a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4d6e:	7ba2      	ldrb	r2, [r4, #14]
d03e4d70:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4d74:	7be2      	ldrb	r2, [r4, #15]
d03e4d76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4d7a:	f44f 72a7 	mov.w	r2, #334	; 0x14e
d03e4d7e:	685b      	ldr	r3, [r3, #4]
d03e4d80:	685e      	ldr	r6, [r3, #4]
d03e4d82:	2318      	movs	r3, #24
d03e4d84:	47b0      	blx	r6
d03e4d86:	7b23      	ldrb	r3, [r4, #12]
d03e4d88:	7b62      	ldrb	r2, [r4, #13]
d03e4d8a:	201e      	movs	r0, #30
d03e4d8c:	2620      	movs	r6, #32
d03e4d8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4d92:	7ba2      	ldrb	r2, [r4, #14]
d03e4d94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4d98:	7be2      	ldrb	r2, [r4, #15]
d03e4d9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4d9e:	685b      	ldr	r3, [r3, #4]
d03e4da0:	68db      	ldr	r3, [r3, #12]
d03e4da2:	4798      	blx	r3
d03e4da4:	7b23      	ldrb	r3, [r4, #12]
d03e4da6:	7b62      	ldrb	r2, [r4, #13]
d03e4da8:	2167      	movs	r1, #103	; 0x67
d03e4daa:	2058      	movs	r0, #88	; 0x58
d03e4dac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4db0:	7ba2      	ldrb	r2, [r4, #14]
d03e4db2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4db6:	7be2      	ldrb	r2, [r4, #15]
d03e4db8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4dbc:	4a2d      	ldr	r2, [pc, #180]	; (d03e4e74 <ui_redraw_backbuffer+0x2208>)
d03e4dbe:	685b      	ldr	r3, [r3, #4]
d03e4dc0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4dc2:	4798      	blx	r3
d03e4dc4:	7b23      	ldrb	r3, [r4, #12]
d03e4dc6:	7b62      	ldrb	r2, [r4, #13]
d03e4dc8:	2019      	movs	r0, #25
d03e4dca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4dce:	7ba2      	ldrb	r2, [r4, #14]
d03e4dd0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4dd4:	7be2      	ldrb	r2, [r4, #15]
d03e4dd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4dda:	685b      	ldr	r3, [r3, #4]
d03e4ddc:	68db      	ldr	r3, [r3, #12]
d03e4dde:	4798      	blx	r3
d03e4de0:	7b23      	ldrb	r3, [r4, #12]
d03e4de2:	7b62      	ldrb	r2, [r4, #13]
d03e4de4:	2188      	movs	r1, #136	; 0x88
d03e4de6:	205c      	movs	r0, #92	; 0x5c
d03e4de8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4dec:	7ba2      	ldrb	r2, [r4, #14]
d03e4dee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4df2:	7be2      	ldrb	r2, [r4, #15]
d03e4df4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4df8:	4a1f      	ldr	r2, [pc, #124]	; (d03e4e78 <ui_redraw_backbuffer+0x220c>)
d03e4dfa:	685b      	ldr	r3, [r3, #4]
d03e4dfc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4dfe:	4798      	blx	r3
d03e4e00:	7b23      	ldrb	r3, [r4, #12]
d03e4e02:	7b62      	ldrb	r2, [r4, #13]
d03e4e04:	201e      	movs	r0, #30
d03e4e06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4e0a:	7ba2      	ldrb	r2, [r4, #14]
d03e4e0c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4e10:	7be2      	ldrb	r2, [r4, #15]
d03e4e12:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4e16:	685b      	ldr	r3, [r3, #4]
d03e4e18:	68db      	ldr	r3, [r3, #12]
d03e4e1a:	4798      	blx	r3
d03e4e1c:	7b23      	ldrb	r3, [r4, #12]
d03e4e1e:	7b62      	ldrb	r2, [r4, #13]
d03e4e20:	219a      	movs	r1, #154	; 0x9a
d03e4e22:	205c      	movs	r0, #92	; 0x5c
d03e4e24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4e28:	7ba2      	ldrb	r2, [r4, #14]
d03e4e2a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4e2e:	7be2      	ldrb	r2, [r4, #15]
d03e4e30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4e34:	462a      	mov	r2, r5
d03e4e36:	2500      	movs	r5, #0
d03e4e38:	685b      	ldr	r3, [r3, #4]
d03e4e3a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e4e3c:	4798      	blx	r3
d03e4e3e:	4b0f      	ldr	r3, [pc, #60]	; (d03e4e7c <ui_redraw_backbuffer+0x2210>)
d03e4e40:	22b8      	movs	r2, #184	; 0xb8
d03e4e42:	2178      	movs	r1, #120	; 0x78
d03e4e44:	2034      	movs	r0, #52	; 0x34
d03e4e46:	9301      	str	r3, [sp, #4]
d03e4e48:	9503      	str	r5, [sp, #12]
d03e4e4a:	235c      	movs	r3, #92	; 0x5c
d03e4e4c:	9502      	str	r5, [sp, #8]
d03e4e4e:	9600      	str	r6, [sp, #0]
d03e4e50:	f7fd fc92 	bl	d03e2778 <ui_create_button>
d03e4e54:	4b0a      	ldr	r3, [pc, #40]	; (d03e4e80 <ui_redraw_backbuffer+0x2214>)
d03e4e56:	22b8      	movs	r2, #184	; 0xb8
d03e4e58:	f44f 7186 	mov.w	r1, #268	; 0x10c
d03e4e5c:	9301      	str	r3, [sp, #4]
d03e4e5e:	2035      	movs	r0, #53	; 0x35
d03e4e60:	235c      	movs	r3, #92	; 0x5c
d03e4e62:	9503      	str	r5, [sp, #12]
d03e4e64:	9502      	str	r5, [sp, #8]
d03e4e66:	9600      	str	r6, [sp, #0]
d03e4e68:	e529      	b.n	d03e48be <ui_redraw_backbuffer+0x1c52>
d03e4e6a:	4d01      	ldr	r5, [pc, #4]	; (d03e4e70 <ui_redraw_backbuffer+0x2204>)
d03e4e6c:	e760      	b.n	d03e4d30 <ui_redraw_backbuffer+0x20c4>
d03e4e6e:	bf00      	nop
d03e4e70:	d03ec213 	.word	0xd03ec213
d03e4e74:	d03e91ec 	.word	0xd03e91ec
d03e4e78:	d03e91fc 	.word	0xd03e91fc
d03e4e7c:	d03e9216 	.word	0xd03e9216
d03e4e80:	d03e921a 	.word	0xd03e921a

d03e4e84 <main>:
d03e4e84:	4bb2      	ldr	r3, [pc, #712]	; (d03e5150 <main+0x2cc>)
d03e4e86:	2201      	movs	r2, #1
d03e4e88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e4e8c:	4fb1      	ldr	r7, [pc, #708]	; (d03e5154 <main+0x2d0>)
d03e4e8e:	b0a5      	sub	sp, #148	; 0x94
d03e4e90:	701a      	strb	r2, [r3, #0]
d03e4e92:	f7fb f8d3 	bl	d03e003c <initMalloc>
d03e4e96:	f44f 4040 	mov.w	r0, #49152	; 0xc000
d03e4e9a:	f002 fa7b 	bl	d03e7394 <malloc>
d03e4e9e:	6038      	str	r0, [r7, #0]
d03e4ea0:	4606      	mov	r6, r0
d03e4ea2:	f24c 00c2 	movw	r0, #49346	; 0xc0c2
d03e4ea6:	f002 fa75 	bl	d03e7394 <malloc>
d03e4eaa:	4bab      	ldr	r3, [pc, #684]	; (d03e5158 <main+0x2d4>)
d03e4eac:	4605      	mov	r5, r0
d03e4eae:	6018      	str	r0, [r3, #0]
d03e4eb0:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03e4eb4:	f002 fa6e 	bl	d03e7394 <malloc>
d03e4eb8:	4ba8      	ldr	r3, [pc, #672]	; (d03e515c <main+0x2d8>)
d03e4eba:	4604      	mov	r4, r0
d03e4ebc:	6018      	str	r0, [r3, #0]
d03e4ebe:	b12e      	cbz	r6, d03e4ecc <main+0x48>
d03e4ec0:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03e4ec4:	2100      	movs	r1, #0
d03e4ec6:	4630      	mov	r0, r6
d03e4ec8:	f002 fa88 	bl	d03e73dc <memset>
d03e4ecc:	b12d      	cbz	r5, d03e4eda <main+0x56>
d03e4ece:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03e4ed2:	2100      	movs	r1, #0
d03e4ed4:	4628      	mov	r0, r5
d03e4ed6:	f002 fa81 	bl	d03e73dc <memset>
d03e4eda:	b12c      	cbz	r4, d03e4ee8 <main+0x64>
d03e4edc:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03e4ee0:	2100      	movs	r1, #0
d03e4ee2:	4620      	mov	r0, r4
d03e4ee4:	f002 fa7a 	bl	d03e73dc <memset>
d03e4ee8:	4c9d      	ldr	r4, [pc, #628]	; (d03e5160 <main+0x2dc>)
d03e4eea:	2000      	movs	r0, #0
d03e4eec:	2601      	movs	r6, #1
d03e4eee:	f04f 0802 	mov.w	r8, #2
d03e4ef2:	7823      	ldrb	r3, [r4, #0]
d03e4ef4:	7862      	ldrb	r2, [r4, #1]
d03e4ef6:	f8df 929c 	ldr.w	r9, [pc, #668]	; d03e5194 <main+0x310>
d03e4efa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4efe:	78a2      	ldrb	r2, [r4, #2]
d03e4f00:	f8df a294 	ldr.w	sl, [pc, #660]	; d03e5198 <main+0x314>
d03e4f04:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f08:	78e2      	ldrb	r2, [r4, #3]
d03e4f0a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f0e:	681b      	ldr	r3, [r3, #0]
d03e4f10:	4798      	blx	r3
d03e4f12:	7923      	ldrb	r3, [r4, #4]
d03e4f14:	7962      	ldrb	r2, [r4, #5]
d03e4f16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4f1a:	79a2      	ldrb	r2, [r4, #6]
d03e4f1c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f20:	79e2      	ldrb	r2, [r4, #7]
d03e4f22:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f26:	689b      	ldr	r3, [r3, #8]
d03e4f28:	4798      	blx	r3
d03e4f2a:	7d23      	ldrb	r3, [r4, #20]
d03e4f2c:	7d62      	ldrb	r2, [r4, #21]
d03e4f2e:	2080      	movs	r0, #128	; 0x80
d03e4f30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4f34:	7da2      	ldrb	r2, [r4, #22]
d03e4f36:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f3a:	7de2      	ldrb	r2, [r4, #23]
d03e4f3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f40:	681b      	ldr	r3, [r3, #0]
d03e4f42:	681b      	ldr	r3, [r3, #0]
d03e4f44:	4798      	blx	r3
d03e4f46:	7d23      	ldrb	r3, [r4, #20]
d03e4f48:	7d62      	ldrb	r2, [r4, #21]
d03e4f4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4f4e:	7da2      	ldrb	r2, [r4, #22]
d03e4f50:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f54:	7de2      	ldrb	r2, [r4, #23]
d03e4f56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f5a:	681b      	ldr	r3, [r3, #0]
d03e4f5c:	685b      	ldr	r3, [r3, #4]
d03e4f5e:	701e      	strb	r6, [r3, #0]
d03e4f60:	7d23      	ldrb	r3, [r4, #20]
d03e4f62:	7d62      	ldrb	r2, [r4, #21]
d03e4f64:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4f68:	7da2      	ldrb	r2, [r4, #22]
d03e4f6a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f6e:	7de2      	ldrb	r2, [r4, #23]
d03e4f70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f74:	681b      	ldr	r3, [r3, #0]
d03e4f76:	699b      	ldr	r3, [r3, #24]
d03e4f78:	4798      	blx	r3
d03e4f7a:	7b23      	ldrb	r3, [r4, #12]
d03e4f7c:	7b62      	ldrb	r2, [r4, #13]
d03e4f7e:	2190      	movs	r1, #144	; 0x90
d03e4f80:	20dc      	movs	r0, #220	; 0xdc
d03e4f82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4f86:	7ba2      	ldrb	r2, [r4, #14]
d03e4f88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4f8c:	7be2      	ldrb	r2, [r4, #15]
d03e4f8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4f92:	681b      	ldr	r3, [r3, #0]
d03e4f94:	691b      	ldr	r3, [r3, #16]
d03e4f96:	4798      	blx	r3
d03e4f98:	7b23      	ldrb	r3, [r4, #12]
d03e4f9a:	7b62      	ldrb	r2, [r4, #13]
d03e4f9c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4fa0:	7ba2      	ldrb	r2, [r4, #14]
d03e4fa2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4fa6:	7be2      	ldrb	r2, [r4, #15]
d03e4fa8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4fac:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e4fb0:	681b      	ldr	r3, [r3, #0]
d03e4fb2:	4610      	mov	r0, r2
d03e4fb4:	f8cd 8000 	str.w	r8, [sp]
d03e4fb8:	695d      	ldr	r5, [r3, #20]
d03e4fba:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e4fbe:	4619      	mov	r1, r3
d03e4fc0:	47a8      	blx	r5
d03e4fc2:	7b23      	ldrb	r3, [r4, #12]
d03e4fc4:	7b62      	ldrb	r2, [r4, #13]
d03e4fc6:	4867      	ldr	r0, [pc, #412]	; (d03e5164 <main+0x2e0>)
d03e4fc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4fcc:	7ba2      	ldrb	r2, [r4, #14]
d03e4fce:	4d66      	ldr	r5, [pc, #408]	; (d03e5168 <main+0x2e4>)
d03e4fd0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4fd4:	7be2      	ldrb	r2, [r4, #15]
d03e4fd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4fda:	681b      	ldr	r3, [r3, #0]
d03e4fdc:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d03e4fde:	4798      	blx	r3
d03e4fe0:	7b23      	ldrb	r3, [r4, #12]
d03e4fe2:	7b62      	ldrb	r2, [r4, #13]
d03e4fe4:	485f      	ldr	r0, [pc, #380]	; (d03e5164 <main+0x2e0>)
d03e4fe6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e4fea:	7ba2      	ldrb	r2, [r4, #14]
d03e4fec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e4ff0:	7be2      	ldrb	r2, [r4, #15]
d03e4ff2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e4ff6:	681b      	ldr	r3, [r3, #0]
d03e4ff8:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d03e4ffa:	4798      	blx	r3
d03e4ffc:	7b23      	ldrb	r3, [r4, #12]
d03e4ffe:	7b62      	ldrb	r2, [r4, #13]
d03e5000:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5004:	7ba2      	ldrb	r2, [r4, #14]
d03e5006:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e500a:	7be2      	ldrb	r2, [r4, #15]
d03e500c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5010:	681b      	ldr	r3, [r3, #0]
d03e5012:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03e5014:	4798      	blx	r3
d03e5016:	7b23      	ldrb	r3, [r4, #12]
d03e5018:	7b62      	ldrb	r2, [r4, #13]
d03e501a:	f8c9 0000 	str.w	r0, [r9]
d03e501e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5022:	7ba2      	ldrb	r2, [r4, #14]
d03e5024:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5028:	7be2      	ldrb	r2, [r4, #15]
d03e502a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e502e:	681b      	ldr	r3, [r3, #0]
d03e5030:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d03e5032:	4798      	blx	r3
d03e5034:	4b4d      	ldr	r3, [pc, #308]	; (d03e516c <main+0x2e8>)
d03e5036:	6028      	str	r0, [r5, #0]
d03e5038:	f44f 3016 	mov.w	r0, #153600	; 0x25800
d03e503c:	f8ca 000c 	str.w	r0, [sl, #12]
d03e5040:	f8ca 3004 	str.w	r3, [sl, #4]
d03e5044:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e5048:	f8aa 3008 	strh.w	r3, [sl, #8]
d03e504c:	f002 f9a2 	bl	d03e7394 <malloc>
d03e5050:	f8ca 0000 	str.w	r0, [sl]
d03e5054:	7b23      	ldrb	r3, [r4, #12]
d03e5056:	4650      	mov	r0, sl
d03e5058:	7b62      	ldrb	r2, [r4, #13]
d03e505a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e505e:	7ba2      	ldrb	r2, [r4, #14]
d03e5060:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5064:	7be2      	ldrb	r2, [r4, #15]
d03e5066:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e506a:	681b      	ldr	r3, [r3, #0]
d03e506c:	6a1b      	ldr	r3, [r3, #32]
d03e506e:	4798      	blx	r3
d03e5070:	7b23      	ldrb	r3, [r4, #12]
d03e5072:	7b62      	ldrb	r2, [r4, #13]
d03e5074:	f8d9 0000 	ldr.w	r0, [r9]
d03e5078:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e507c:	7ba2      	ldrb	r2, [r4, #14]
d03e507e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5082:	7be2      	ldrb	r2, [r4, #15]
d03e5084:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5088:	681b      	ldr	r3, [r3, #0]
d03e508a:	69db      	ldr	r3, [r3, #28]
d03e508c:	4798      	blx	r3
d03e508e:	7b23      	ldrb	r3, [r4, #12]
d03e5090:	7b62      	ldrb	r2, [r4, #13]
d03e5092:	6828      	ldr	r0, [r5, #0]
d03e5094:	2500      	movs	r5, #0
d03e5096:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e509a:	7ba2      	ldrb	r2, [r4, #14]
d03e509c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e50a0:	7be2      	ldrb	r2, [r4, #15]
d03e50a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e50a6:	681b      	ldr	r3, [r3, #0]
d03e50a8:	699b      	ldr	r3, [r3, #24]
d03e50aa:	4798      	blx	r3
d03e50ac:	4b30      	ldr	r3, [pc, #192]	; (d03e5170 <main+0x2ec>)
d03e50ae:	701d      	strb	r5, [r3, #0]
d03e50b0:	7e23      	ldrb	r3, [r4, #24]
d03e50b2:	7e62      	ldrb	r2, [r4, #25]
d03e50b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e50b8:	7ea2      	ldrb	r2, [r4, #26]
d03e50ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e50be:	7ee2      	ldrb	r2, [r4, #27]
d03e50c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e50c4:	681b      	ldr	r3, [r3, #0]
d03e50c6:	4798      	blx	r3
d03e50c8:	7d23      	ldrb	r3, [r4, #20]
d03e50ca:	7d62      	ldrb	r2, [r4, #21]
d03e50cc:	2118      	movs	r1, #24
d03e50ce:	4628      	mov	r0, r5
d03e50d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e50d4:	7da2      	ldrb	r2, [r4, #22]
d03e50d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e50da:	7de2      	ldrb	r2, [r4, #23]
d03e50dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e50e0:	220f      	movs	r2, #15
d03e50e2:	681b      	ldr	r3, [r3, #0]
d03e50e4:	69db      	ldr	r3, [r3, #28]
d03e50e6:	4798      	blx	r3
d03e50e8:	7d23      	ldrb	r3, [r4, #20]
d03e50ea:	7d62      	ldrb	r2, [r4, #21]
d03e50ec:	2118      	movs	r1, #24
d03e50ee:	4630      	mov	r0, r6
d03e50f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e50f4:	7da2      	ldrb	r2, [r4, #22]
d03e50f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e50fa:	7de2      	ldrb	r2, [r4, #23]
d03e50fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5100:	220f      	movs	r2, #15
d03e5102:	681b      	ldr	r3, [r3, #0]
d03e5104:	69db      	ldr	r3, [r3, #28]
d03e5106:	4798      	blx	r3
d03e5108:	f7fb faa0 	bl	d03e064c <sid_soundfont_init>
d03e510c:	f44f 7200 	mov.w	r2, #512	; 0x200
d03e5110:	4629      	mov	r1, r5
d03e5112:	4818      	ldr	r0, [pc, #96]	; (d03e5174 <main+0x2f0>)
d03e5114:	f002 f962 	bl	d03e73dc <memset>
d03e5118:	2230      	movs	r2, #48	; 0x30
d03e511a:	4629      	mov	r1, r5
d03e511c:	4816      	ldr	r0, [pc, #88]	; (d03e5178 <main+0x2f4>)
d03e511e:	f002 f95d 	bl	d03e73dc <memset>
d03e5122:	2210      	movs	r2, #16
d03e5124:	4915      	ldr	r1, [pc, #84]	; (d03e517c <main+0x2f8>)
d03e5126:	4816      	ldr	r0, [pc, #88]	; (d03e5180 <main+0x2fc>)
d03e5128:	f002 f94a 	bl	d03e73c0 <memcpy>
d03e512c:	2210      	movs	r2, #16
d03e512e:	217f      	movs	r1, #127	; 0x7f
d03e5130:	4814      	ldr	r0, [pc, #80]	; (d03e5184 <main+0x300>)
d03e5132:	f002 f953 	bl	d03e73dc <memset>
d03e5136:	2210      	movs	r2, #16
d03e5138:	217f      	movs	r1, #127	; 0x7f
d03e513a:	4813      	ldr	r0, [pc, #76]	; (d03e5188 <main+0x304>)
d03e513c:	f002 f94e 	bl	d03e73dc <memset>
d03e5140:	4b12      	ldr	r3, [pc, #72]	; (d03e518c <main+0x308>)
d03e5142:	22c8      	movs	r2, #200	; 0xc8
d03e5144:	4629      	mov	r1, r5
d03e5146:	4812      	ldr	r0, [pc, #72]	; (d03e5190 <main+0x30c>)
d03e5148:	801a      	strh	r2, [r3, #0]
d03e514a:	22b4      	movs	r2, #180	; 0xb4
d03e514c:	e026      	b.n	d03e519c <main+0x318>
d03e514e:	bf00      	nop
d03e5150:	d03ea128 	.word	0xd03ea128
d03e5154:	d03ec27c 	.word	0xd03ec27c
d03e5158:	d03ec284 	.word	0xd03ec284
d03e515c:	d03ec280 	.word	0xd03ec280
d03e5160:	2001f000 	.word	0x2001f000
d03e5164:	d03e9c7c 	.word	0xd03e9c7c
d03e5168:	d03ea130 	.word	0xd03ea130
d03e516c:	014001e0 	.word	0x014001e0
d03e5170:	d03ea129 	.word	0xd03ea129
d03e5174:	d03ea18d 	.word	0xd03ea18d
d03e5178:	d03eb49c 	.word	0xd03eb49c
d03e517c:	d03e96f6 	.word	0xd03e96f6
d03e5180:	d03ea164 	.word	0xd03ea164
d03e5184:	d03ea174 	.word	0xd03ea174
d03e5188:	d03ea154 	.word	0xd03ea154
d03e518c:	d03ea38e 	.word	0xd03ea38e
d03e5190:	d03ea134 	.word	0xd03ea134
d03e5194:	d03ea12c 	.word	0xd03ea12c
d03e5198:	d03ec5e0 	.word	0xd03ec5e0
d03e519c:	4b92      	ldr	r3, [pc, #584]	; (d03e53e8 <main+0x564>)
d03e519e:	801a      	strh	r2, [r3, #0]
d03e51a0:	2220      	movs	r2, #32
d03e51a2:	4b92      	ldr	r3, [pc, #584]	; (d03e53ec <main+0x568>)
d03e51a4:	701e      	strb	r6, [r3, #0]
d03e51a6:	f002 f919 	bl	d03e73dc <memset>
d03e51aa:	4b91      	ldr	r3, [pc, #580]	; (d03e53f0 <main+0x56c>)
d03e51ac:	2203      	movs	r2, #3
d03e51ae:	4629      	mov	r1, r5
d03e51b0:	4890      	ldr	r0, [pc, #576]	; (d03e53f4 <main+0x570>)
d03e51b2:	701d      	strb	r5, [r3, #0]
d03e51b4:	4b90      	ldr	r3, [pc, #576]	; (d03e53f8 <main+0x574>)
d03e51b6:	701d      	strb	r5, [r3, #0]
d03e51b8:	4b90      	ldr	r3, [pc, #576]	; (d03e53fc <main+0x578>)
d03e51ba:	601d      	str	r5, [r3, #0]
d03e51bc:	4b90      	ldr	r3, [pc, #576]	; (d03e5400 <main+0x57c>)
d03e51be:	701d      	strb	r5, [r3, #0]
d03e51c0:	4b90      	ldr	r3, [pc, #576]	; (d03e5404 <main+0x580>)
d03e51c2:	701d      	strb	r5, [r3, #0]
d03e51c4:	4b90      	ldr	r3, [pc, #576]	; (d03e5408 <main+0x584>)
d03e51c6:	701d      	strb	r5, [r3, #0]
d03e51c8:	4b90      	ldr	r3, [pc, #576]	; (d03e540c <main+0x588>)
d03e51ca:	701d      	strb	r5, [r3, #0]
d03e51cc:	4b90      	ldr	r3, [pc, #576]	; (d03e5410 <main+0x58c>)
d03e51ce:	701d      	strb	r5, [r3, #0]
d03e51d0:	4b90      	ldr	r3, [pc, #576]	; (d03e5414 <main+0x590>)
d03e51d2:	701d      	strb	r5, [r3, #0]
d03e51d4:	4b90      	ldr	r3, [pc, #576]	; (d03e5418 <main+0x594>)
d03e51d6:	701d      	strb	r5, [r3, #0]
d03e51d8:	4b90      	ldr	r3, [pc, #576]	; (d03e541c <main+0x598>)
d03e51da:	701d      	strb	r5, [r3, #0]
d03e51dc:	705e      	strb	r6, [r3, #1]
d03e51de:	70da      	strb	r2, [r3, #3]
d03e51e0:	22f0      	movs	r2, #240	; 0xf0
d03e51e2:	f883 8002 	strb.w	r8, [r3, #2]
d03e51e6:	4b8e      	ldr	r3, [pc, #568]	; (d03e5420 <main+0x59c>)
d03e51e8:	701d      	strb	r5, [r3, #0]
d03e51ea:	4b8e      	ldr	r3, [pc, #568]	; (d03e5424 <main+0x5a0>)
d03e51ec:	701d      	strb	r5, [r3, #0]
d03e51ee:	4b8e      	ldr	r3, [pc, #568]	; (d03e5428 <main+0x5a4>)
d03e51f0:	701d      	strb	r5, [r3, #0]
d03e51f2:	4b8e      	ldr	r3, [pc, #568]	; (d03e542c <main+0x5a8>)
d03e51f4:	701d      	strb	r5, [r3, #0]
d03e51f6:	4b8e      	ldr	r3, [pc, #568]	; (d03e5430 <main+0x5ac>)
d03e51f8:	701d      	strb	r5, [r3, #0]
d03e51fa:	4b8e      	ldr	r3, [pc, #568]	; (d03e5434 <main+0x5b0>)
d03e51fc:	701d      	strb	r5, [r3, #0]
d03e51fe:	4b8e      	ldr	r3, [pc, #568]	; (d03e5438 <main+0x5b4>)
d03e5200:	701d      	strb	r5, [r3, #0]
d03e5202:	4b8e      	ldr	r3, [pc, #568]	; (d03e543c <main+0x5b8>)
d03e5204:	701d      	strb	r5, [r3, #0]
d03e5206:	4b8e      	ldr	r3, [pc, #568]	; (d03e5440 <main+0x5bc>)
d03e5208:	701d      	strb	r5, [r3, #0]
d03e520a:	4b8e      	ldr	r3, [pc, #568]	; (d03e5444 <main+0x5c0>)
d03e520c:	701d      	strb	r5, [r3, #0]
d03e520e:	4b8e      	ldr	r3, [pc, #568]	; (d03e5448 <main+0x5c4>)
d03e5210:	801a      	strh	r2, [r3, #0]
d03e5212:	22a0      	movs	r2, #160	; 0xa0
d03e5214:	4b8d      	ldr	r3, [pc, #564]	; (d03e544c <main+0x5c8>)
d03e5216:	801a      	strh	r2, [r3, #0]
d03e5218:	4b8d      	ldr	r3, [pc, #564]	; (d03e5450 <main+0x5cc>)
d03e521a:	4a8e      	ldr	r2, [pc, #568]	; (d03e5454 <main+0x5d0>)
d03e521c:	701d      	strb	r5, [r3, #0]
d03e521e:	4b8e      	ldr	r3, [pc, #568]	; (d03e5458 <main+0x5d4>)
d03e5220:	701d      	strb	r5, [r3, #0]
d03e5222:	4b8e      	ldr	r3, [pc, #568]	; (d03e545c <main+0x5d8>)
d03e5224:	701e      	strb	r6, [r3, #0]
d03e5226:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03e522a:	6013      	str	r3, [r2, #0]
d03e522c:	4a8c      	ldr	r2, [pc, #560]	; (d03e5460 <main+0x5dc>)
d03e522e:	7015      	strb	r5, [r2, #0]
d03e5230:	4a8c      	ldr	r2, [pc, #560]	; (d03e5464 <main+0x5e0>)
d03e5232:	7015      	strb	r5, [r2, #0]
d03e5234:	4a8c      	ldr	r2, [pc, #560]	; (d03e5468 <main+0x5e4>)
d03e5236:	7015      	strb	r5, [r2, #0]
d03e5238:	4a8c      	ldr	r2, [pc, #560]	; (d03e546c <main+0x5e8>)
d03e523a:	7015      	strb	r5, [r2, #0]
d03e523c:	4a8c      	ldr	r2, [pc, #560]	; (d03e5470 <main+0x5ec>)
d03e523e:	7015      	strb	r5, [r2, #0]
d03e5240:	4a8c      	ldr	r2, [pc, #560]	; (d03e5474 <main+0x5f0>)
d03e5242:	7015      	strb	r5, [r2, #0]
d03e5244:	4a8c      	ldr	r2, [pc, #560]	; (d03e5478 <main+0x5f4>)
d03e5246:	7013      	strb	r3, [r2, #0]
d03e5248:	f44f 6280 	mov.w	r2, #1024	; 0x400
d03e524c:	4b8b      	ldr	r3, [pc, #556]	; (d03e547c <main+0x5f8>)
d03e524e:	701d      	strb	r5, [r3, #0]
d03e5250:	4b8b      	ldr	r3, [pc, #556]	; (d03e5480 <main+0x5fc>)
d03e5252:	701d      	strb	r5, [r3, #0]
d03e5254:	4b8b      	ldr	r3, [pc, #556]	; (d03e5484 <main+0x600>)
d03e5256:	701d      	strb	r5, [r3, #0]
d03e5258:	4b8b      	ldr	r3, [pc, #556]	; (d03e5488 <main+0x604>)
d03e525a:	701e      	strb	r6, [r3, #0]
d03e525c:	4b8b      	ldr	r3, [pc, #556]	; (d03e548c <main+0x608>)
d03e525e:	701d      	strb	r5, [r3, #0]
d03e5260:	4b8b      	ldr	r3, [pc, #556]	; (d03e5490 <main+0x60c>)
d03e5262:	701d      	strb	r5, [r3, #0]
d03e5264:	4b8b      	ldr	r3, [pc, #556]	; (d03e5494 <main+0x610>)
d03e5266:	701d      	strb	r5, [r3, #0]
d03e5268:	4b8b      	ldr	r3, [pc, #556]	; (d03e5498 <main+0x614>)
d03e526a:	701d      	strb	r5, [r3, #0]
d03e526c:	4b8b      	ldr	r3, [pc, #556]	; (d03e549c <main+0x618>)
d03e526e:	701d      	strb	r5, [r3, #0]
d03e5270:	f002 f8b4 	bl	d03e73dc <memset>
d03e5274:	4b8a      	ldr	r3, [pc, #552]	; (d03e54a0 <main+0x61c>)
d03e5276:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e527a:	4629      	mov	r1, r5
d03e527c:	4889      	ldr	r0, [pc, #548]	; (d03e54a4 <main+0x620>)
d03e527e:	701d      	strb	r5, [r3, #0]
d03e5280:	4b89      	ldr	r3, [pc, #548]	; (d03e54a8 <main+0x624>)
d03e5282:	701d      	strb	r5, [r3, #0]
d03e5284:	4b89      	ldr	r3, [pc, #548]	; (d03e54ac <main+0x628>)
d03e5286:	701d      	strb	r5, [r3, #0]
d03e5288:	4b89      	ldr	r3, [pc, #548]	; (d03e54b0 <main+0x62c>)
d03e528a:	701d      	strb	r5, [r3, #0]
d03e528c:	4b89      	ldr	r3, [pc, #548]	; (d03e54b4 <main+0x630>)
d03e528e:	701d      	strb	r5, [r3, #0]
d03e5290:	4b89      	ldr	r3, [pc, #548]	; (d03e54b8 <main+0x634>)
d03e5292:	f883 8000 	strb.w	r8, [r3]
d03e5296:	4b89      	ldr	r3, [pc, #548]	; (d03e54bc <main+0x638>)
d03e5298:	701d      	strb	r5, [r3, #0]
d03e529a:	4b89      	ldr	r3, [pc, #548]	; (d03e54c0 <main+0x63c>)
d03e529c:	601d      	str	r5, [r3, #0]
d03e529e:	f002 f89d 	bl	d03e73dc <memset>
d03e52a2:	6838      	ldr	r0, [r7, #0]
d03e52a4:	b120      	cbz	r0, d03e52b0 <main+0x42c>
d03e52a6:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03e52aa:	4629      	mov	r1, r5
d03e52ac:	f002 f896 	bl	d03e73dc <memset>
d03e52b0:	2500      	movs	r5, #0
d03e52b2:	4b84      	ldr	r3, [pc, #528]	; (d03e54c4 <main+0x640>)
d03e52b4:	2278      	movs	r2, #120	; 0x78
d03e52b6:	4884      	ldr	r0, [pc, #528]	; (d03e54c8 <main+0x644>)
d03e52b8:	601d      	str	r5, [r3, #0]
d03e52ba:	4629      	mov	r1, r5
d03e52bc:	4b83      	ldr	r3, [pc, #524]	; (d03e54cc <main+0x648>)
d03e52be:	601d      	str	r5, [r3, #0]
d03e52c0:	4b83      	ldr	r3, [pc, #524]	; (d03e54d0 <main+0x64c>)
d03e52c2:	601d      	str	r5, [r3, #0]
d03e52c4:	4b83      	ldr	r3, [pc, #524]	; (d03e54d4 <main+0x650>)
d03e52c6:	601d      	str	r5, [r3, #0]
d03e52c8:	4b83      	ldr	r3, [pc, #524]	; (d03e54d8 <main+0x654>)
d03e52ca:	601d      	str	r5, [r3, #0]
d03e52cc:	4b83      	ldr	r3, [pc, #524]	; (d03e54dc <main+0x658>)
d03e52ce:	601d      	str	r5, [r3, #0]
d03e52d0:	4b83      	ldr	r3, [pc, #524]	; (d03e54e0 <main+0x65c>)
d03e52d2:	601d      	str	r5, [r3, #0]
d03e52d4:	4b83      	ldr	r3, [pc, #524]	; (d03e54e4 <main+0x660>)
d03e52d6:	601d      	str	r5, [r3, #0]
d03e52d8:	4b83      	ldr	r3, [pc, #524]	; (d03e54e8 <main+0x664>)
d03e52da:	801d      	strh	r5, [r3, #0]
d03e52dc:	4b83      	ldr	r3, [pc, #524]	; (d03e54ec <main+0x668>)
d03e52de:	801d      	strh	r5, [r3, #0]
d03e52e0:	4b83      	ldr	r3, [pc, #524]	; (d03e54f0 <main+0x66c>)
d03e52e2:	801a      	strh	r2, [r3, #0]
d03e52e4:	2201      	movs	r2, #1
d03e52e6:	4b83      	ldr	r3, [pc, #524]	; (d03e54f4 <main+0x670>)
d03e52e8:	701d      	strb	r5, [r3, #0]
d03e52ea:	4b83      	ldr	r3, [pc, #524]	; (d03e54f8 <main+0x674>)
d03e52ec:	701d      	strb	r5, [r3, #0]
d03e52ee:	4b83      	ldr	r3, [pc, #524]	; (d03e54fc <main+0x678>)
d03e52f0:	701d      	strb	r5, [r3, #0]
d03e52f2:	4b83      	ldr	r3, [pc, #524]	; (d03e5500 <main+0x67c>)
d03e52f4:	701d      	strb	r5, [r3, #0]
d03e52f6:	4b83      	ldr	r3, [pc, #524]	; (d03e5504 <main+0x680>)
d03e52f8:	701d      	strb	r5, [r3, #0]
d03e52fa:	4b83      	ldr	r3, [pc, #524]	; (d03e5508 <main+0x684>)
d03e52fc:	801d      	strh	r5, [r3, #0]
d03e52fe:	4b83      	ldr	r3, [pc, #524]	; (d03e550c <main+0x688>)
d03e5300:	701d      	strb	r5, [r3, #0]
d03e5302:	4b83      	ldr	r3, [pc, #524]	; (d03e5510 <main+0x68c>)
d03e5304:	701d      	strb	r5, [r3, #0]
d03e5306:	4b83      	ldr	r3, [pc, #524]	; (d03e5514 <main+0x690>)
d03e5308:	701a      	strb	r2, [r3, #0]
d03e530a:	2202      	movs	r2, #2
d03e530c:	4b82      	ldr	r3, [pc, #520]	; (d03e5518 <main+0x694>)
d03e530e:	701a      	strb	r2, [r3, #0]
d03e5310:	f44f 5280 	mov.w	r2, #4096	; 0x1000
d03e5314:	4b81      	ldr	r3, [pc, #516]	; (d03e551c <main+0x698>)
d03e5316:	701d      	strb	r5, [r3, #0]
d03e5318:	4b81      	ldr	r3, [pc, #516]	; (d03e5520 <main+0x69c>)
d03e531a:	701d      	strb	r5, [r3, #0]
d03e531c:	4b81      	ldr	r3, [pc, #516]	; (d03e5524 <main+0x6a0>)
d03e531e:	801d      	strh	r5, [r3, #0]
d03e5320:	4b81      	ldr	r3, [pc, #516]	; (d03e5528 <main+0x6a4>)
d03e5322:	601d      	str	r5, [r3, #0]
d03e5324:	f002 f85a 	bl	d03e73dc <memset>
d03e5328:	4629      	mov	r1, r5
d03e532a:	22c0      	movs	r2, #192	; 0xc0
d03e532c:	487f      	ldr	r0, [pc, #508]	; (d03e552c <main+0x6a8>)
d03e532e:	f002 f855 	bl	d03e73dc <memset>
d03e5332:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e5336:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e533a:	487d      	ldr	r0, [pc, #500]	; (d03e5530 <main+0x6ac>)
d03e533c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5340:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d03e5344:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5348:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d03e534c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5350:	681b      	ldr	r3, [r3, #0]
d03e5352:	4798      	blx	r3
d03e5354:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e5358:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e535c:	4875      	ldr	r0, [pc, #468]	; (d03e5534 <main+0x6b0>)
d03e535e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5362:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d03e5366:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e536a:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d03e536e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5372:	685b      	ldr	r3, [r3, #4]
d03e5374:	4798      	blx	r3
d03e5376:	f7fd fc79 	bl	d03e2c6c <ui_redraw_backbuffer>
d03e537a:	4d6f      	ldr	r5, [pc, #444]	; (d03e5538 <main+0x6b4>)
d03e537c:	f7fc ffb8 	bl	d03e22f0 <midi_process_events>
d03e5380:	f7fb fe80 	bl	d03e1084 <midi_process_ui_requests>
d03e5384:	f7fd f902 	bl	d03e258c <seq_update_transport>
d03e5388:	7b2b      	ldrb	r3, [r5, #12]
d03e538a:	7b6a      	ldrb	r2, [r5, #13]
d03e538c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5390:	7baa      	ldrb	r2, [r5, #14]
d03e5392:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5396:	7bea      	ldrb	r2, [r5, #15]
d03e5398:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e539c:	681b      	ldr	r3, [r3, #0]
d03e539e:	68db      	ldr	r3, [r3, #12]
d03e53a0:	4798      	blx	r3
d03e53a2:	f7fc ffa5 	bl	d03e22f0 <midi_process_events>
d03e53a6:	f7fb fe6d 	bl	d03e1084 <midi_process_ui_requests>
d03e53aa:	f7fd f8ef 	bl	d03e258c <seq_update_transport>
d03e53ae:	4b23      	ldr	r3, [pc, #140]	; (d03e543c <main+0x5b8>)
d03e53b0:	781b      	ldrb	r3, [r3, #0]
d03e53b2:	9304      	str	r3, [sp, #16]
d03e53b4:	782b      	ldrb	r3, [r5, #0]
d03e53b6:	786a      	ldrb	r2, [r5, #1]
d03e53b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e53bc:	78aa      	ldrb	r2, [r5, #2]
d03e53be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e53c2:	78ea      	ldrb	r2, [r5, #3]
d03e53c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e53c8:	6a1b      	ldr	r3, [r3, #32]
d03e53ca:	4798      	blx	r3
d03e53cc:	4b18      	ldr	r3, [pc, #96]	; (d03e5430 <main+0x5ac>)
d03e53ce:	9002      	str	r0, [sp, #8]
d03e53d0:	781b      	ldrb	r3, [r3, #0]
d03e53d2:	ea20 0303 	bic.w	r3, r0, r3
d03e53d6:	f013 0bff 	ands.w	fp, r3, #255	; 0xff
d03e53da:	4b16      	ldr	r3, [pc, #88]	; (d03e5434 <main+0x5b0>)
d03e53dc:	f000 80ae 	beq.w	d03e553c <main+0x6b8>
d03e53e0:	220c      	movs	r2, #12
d03e53e2:	701a      	strb	r2, [r3, #0]
d03e53e4:	e0b1      	b.n	d03e554a <main+0x6c6>
d03e53e6:	bf00      	nop
d03e53e8:	d03ea18a 	.word	0xd03ea18a
d03e53ec:	d03ea188 	.word	0xd03ea188
d03e53f0:	d03ea18c 	.word	0xd03ea18c
d03e53f4:	d03ebe0d 	.word	0xd03ebe0d
d03e53f8:	d03ea38d 	.word	0xd03ea38d
d03e53fc:	d03eb4d0 	.word	0xd03eb4d0
d03e5400:	d03eb4cc 	.word	0xd03eb4cc
d03e5404:	d03ea3a4 	.word	0xd03ea3a4
d03e5408:	d03ea395 	.word	0xd03ea395
d03e540c:	d03ea391 	.word	0xd03ea391
d03e5410:	d03ea394 	.word	0xd03ea394
d03e5414:	d03ea390 	.word	0xd03ea390
d03e5418:	d03ec2af 	.word	0xd03ec2af
d03e541c:	d03ec288 	.word	0xd03ec288
d03e5420:	d03ec212 	.word	0xd03ec212
d03e5424:	d03ebdc6 	.word	0xd03ebdc6
d03e5428:	d03ec469 	.word	0xd03ec469
d03e542c:	d03ebe0b 	.word	0xd03ebe0b
d03e5430:	d03ec20f 	.word	0xd03ec20f
d03e5434:	d03ec28c 	.word	0xd03ec28c
d03e5438:	d03ec211 	.word	0xd03ec211
d03e543c:	d03ec210 	.word	0xd03ec210
d03e5440:	d03ec273 	.word	0xd03ec273
d03e5444:	d03ec274 	.word	0xd03ec274
d03e5448:	d03ec276 	.word	0xd03ec276
d03e544c:	d03ec278 	.word	0xd03ec278
d03e5450:	d03ec2b0 	.word	0xd03ec2b0
d03e5454:	d03eb4d8 	.word	0xd03eb4d8
d03e5458:	d03ec2d8 	.word	0xd03ec2d8
d03e545c:	d03eb4d4 	.word	0xd03eb4d4
d03e5460:	d03ec464 	.word	0xd03ec464
d03e5464:	d03ec465 	.word	0xd03ec465
d03e5468:	d03ec467 	.word	0xd03ec467
d03e546c:	d03ec466 	.word	0xd03ec466
d03e5470:	d03ec468 	.word	0xd03ec468
d03e5474:	d03ec45b 	.word	0xd03ec45b
d03e5478:	d03ec460 	.word	0xd03ec460
d03e547c:	d03ec461 	.word	0xd03ec461
d03e5480:	d03ec45a 	.word	0xd03ec45a
d03e5484:	d03ec463 	.word	0xd03ec463
d03e5488:	d03ec462 	.word	0xd03ec462
d03e548c:	d03ebdc7 	.word	0xd03ebdc7
d03e5490:	d03eb4dc 	.word	0xd03eb4dc
d03e5494:	d03ebdc9 	.word	0xd03ebdc9
d03e5498:	d03ebe0a 	.word	0xd03ebe0a
d03e549c:	d03ebdc8 	.word	0xd03ebdc8
d03e54a0:	d03ebe0c 	.word	0xd03ebe0c
d03e54a4:	d03ec2da 	.word	0xd03ec2da
d03e54a8:	d03ec20d 	.word	0xd03ec20d
d03e54ac:	d03ec20e 	.word	0xd03ec20e
d03e54b0:	d03ec28f 	.word	0xd03ec28f
d03e54b4:	d03ec28d 	.word	0xd03ec28d
d03e54b8:	d03ec28e 	.word	0xd03ec28e
d03e54bc:	d03ec213 	.word	0xd03ec213
d03e54c0:	d03ec45c 	.word	0xd03ec45c
d03e54c4:	d03ea39c 	.word	0xd03ea39c
d03e54c8:	d03ea3d0 	.word	0xd03ea3d0
d03e54cc:	d03ea398 	.word	0xd03ea398
d03e54d0:	d03ea184 	.word	0xd03ea184
d03e54d4:	d03ea3a0 	.word	0xd03ea3a0
d03e54d8:	d03ea3a8 	.word	0xd03ea3a8
d03e54dc:	d03ea3b0 	.word	0xd03ea3b0
d03e54e0:	d03ea3c4 	.word	0xd03ea3c4
d03e54e4:	d03eb494 	.word	0xd03eb494
d03e54e8:	d03ea3ce 	.word	0xd03ea3ce
d03e54ec:	d03ea3cc 	.word	0xd03ea3cc
d03e54f0:	d03ea3ac 	.word	0xd03ea3ac
d03e54f4:	d03eb490 	.word	0xd03eb490
d03e54f8:	d03eb499 	.word	0xd03eb499
d03e54fc:	d03eb498 	.word	0xd03eb498
d03e5500:	d03ea3b4 	.word	0xd03ea3b4
d03e5504:	d03ea3b8 	.word	0xd03ea3b8
d03e5508:	d03ea3b6 	.word	0xd03ea3b6
d03e550c:	d03ea3c9 	.word	0xd03ea3c9
d03e5510:	d03ea3c8 	.word	0xd03ea3c8
d03e5514:	d03eb49a 	.word	0xd03eb49a
d03e5518:	d03eb49b 	.word	0xd03eb49b
d03e551c:	d03ea3ca 	.word	0xd03ea3ca
d03e5520:	d03ea3c2 	.word	0xd03ea3c2
d03e5524:	d03ea3c0 	.word	0xd03ea3c0
d03e5528:	d03ea3bc 	.word	0xd03ea3bc
d03e552c:	d03eb3d0 	.word	0xd03eb3d0
d03e5530:	d03e178d 	.word	0xd03e178d
d03e5534:	d03e20c9 	.word	0xd03e20c9
d03e5538:	2001f000 	.word	0x2001f000
d03e553c:	9a02      	ldr	r2, [sp, #8]
d03e553e:	f012 0f3c 	tst.w	r2, #60	; 0x3c
d03e5542:	f040 80bd 	bne.w	d03e56c0 <main+0x83c>
d03e5546:	f883 b000 	strb.w	fp, [r3]
d03e554a:	4bb8      	ldr	r3, [pc, #736]	; (d03e582c <main+0x9a8>)
d03e554c:	f9b3 9000 	ldrsh.w	r9, [r3]
d03e5550:	4bb7      	ldr	r3, [pc, #732]	; (d03e5830 <main+0x9ac>)
d03e5552:	f8ad 9020 	strh.w	r9, [sp, #32]
d03e5556:	46c8      	mov	r8, r9
d03e5558:	f9b3 3000 	ldrsh.w	r3, [r3]
d03e555c:	f8ad 9024 	strh.w	r9, [sp, #36]	; 0x24
d03e5560:	9303      	str	r3, [sp, #12]
d03e5562:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
d03e5566:	f8ad 3026 	strh.w	r3, [sp, #38]	; 0x26
d03e556a:	2300      	movs	r3, #0
d03e556c:	f8bd 600c 	ldrh.w	r6, [sp, #12]
d03e5570:	e9cd 330a 	strd	r3, r3, [sp, #40]	; 0x28
d03e5574:	7e2b      	ldrb	r3, [r5, #24]
d03e5576:	7e6a      	ldrb	r2, [r5, #25]
d03e5578:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e557c:	7eaa      	ldrb	r2, [r5, #26]
d03e557e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5582:	7eea      	ldrb	r2, [r5, #27]
d03e5584:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5588:	685b      	ldr	r3, [r3, #4]
d03e558a:	4798      	blx	r3
d03e558c:	7e2b      	ldrb	r3, [r5, #24]
d03e558e:	7e6a      	ldrb	r2, [r5, #25]
d03e5590:	4682      	mov	sl, r0
d03e5592:	f10d 0122 	add.w	r1, sp, #34	; 0x22
d03e5596:	a808      	add	r0, sp, #32
d03e5598:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e559c:	7eaa      	ldrb	r2, [r5, #26]
d03e559e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e55a2:	7eea      	ldrb	r2, [r5, #27]
d03e55a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e55a8:	689b      	ldr	r3, [r3, #8]
d03e55aa:	4798      	blx	r3
d03e55ac:	4602      	mov	r2, r0
d03e55ae:	2800      	cmp	r0, #0
d03e55b0:	f000 808f 	beq.w	d03e56d2 <main+0x84e>
d03e55b4:	f9bd 3022 	ldrsh.w	r3, [sp, #34]	; 0x22
d03e55b8:	f9bd 9020 	ldrsh.w	r9, [sp, #32]
d03e55bc:	9303      	str	r3, [sp, #12]
d03e55be:	2301      	movs	r3, #1
d03e55c0:	461a      	mov	r2, r3
d03e55c2:	f240 10df 	movw	r0, #479	; 0x1df
d03e55c6:	ea29 76e9 	bic.w	r6, r9, r9, asr #31
d03e55ca:	9903      	ldr	r1, [sp, #12]
d03e55cc:	4286      	cmp	r6, r0
d03e55ce:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d03e55d2:	bfa8      	it	ge
d03e55d4:	4606      	movge	r6, r0
d03e55d6:	f240 103f 	movw	r0, #319	; 0x13f
d03e55da:	4281      	cmp	r1, r0
d03e55dc:	bfa8      	it	ge
d03e55de:	4601      	movge	r1, r0
d03e55e0:	2a00      	cmp	r2, #0
d03e55e2:	f000 80b9 	beq.w	d03e5758 <main+0x8d4>
d03e55e6:	4893      	ldr	r0, [pc, #588]	; (d03e5834 <main+0x9b0>)
d03e55e8:	f890 c000 	ldrb.w	ip, [r0]
d03e55ec:	fabc fc8c 	clz	ip, ip
d03e55f0:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d03e55f4:	f013 0a01 	ands.w	sl, r3, #1
d03e55f8:	4f8e      	ldr	r7, [pc, #568]	; (d03e5834 <main+0x9b0>)
d03e55fa:	fa5f fc8c 	uxtb.w	ip, ip
d03e55fe:	f8ad 6030 	strh.w	r6, [sp, #48]	; 0x30
d03e5602:	bf14      	ite	ne
d03e5604:	488c      	ldrne	r0, [pc, #560]	; (d03e5838 <main+0x9b4>)
d03e5606:	46d0      	moveq	r8, sl
d03e5608:	703a      	strb	r2, [r7, #0]
d03e560a:	bf18      	it	ne
d03e560c:	f890 8000 	ldrbne.w	r8, [r0]
d03e5610:	4f89      	ldr	r7, [pc, #548]	; (d03e5838 <main+0x9b4>)
d03e5612:	bf18      	it	ne
d03e5614:	f008 0801 	andne.w	r8, r8, #1
d03e5618:	f8ad 1032 	strh.w	r1, [sp, #50]	; 0x32
d03e561c:	f88d 2034 	strb.w	r2, [sp, #52]	; 0x34
d03e5620:	bf18      	it	ne
d03e5622:	f1c8 0801 	rsbne	r8, r8, #1
d03e5626:	f013 0002 	ands.w	r0, r3, #2
d03e562a:	f88d c035 	strb.w	ip, [sp, #53]	; 0x35
d03e562e:	bf18      	it	ne
d03e5630:	4881      	ldrne	r0, [pc, #516]	; (d03e5838 <main+0x9b4>)
d03e5632:	fa5f fe88 	uxtb.w	lr, r8
d03e5636:	f88d 3036 	strb.w	r3, [sp, #54]	; 0x36
d03e563a:	bf18      	it	ne
d03e563c:	7800      	ldrbne	r0, [r0, #0]
d03e563e:	703b      	strb	r3, [r7, #0]
d03e5640:	bf18      	it	ne
d03e5642:	f080 0002 	eorne.w	r0, r0, #2
d03e5646:	4f79      	ldr	r7, [pc, #484]	; (d03e582c <main+0x9a8>)
d03e5648:	f88d e037 	strb.w	lr, [sp, #55]	; 0x37
d03e564c:	803e      	strh	r6, [r7, #0]
d03e564e:	bf18      	it	ne
d03e5650:	f3c0 0040 	ubfxne	r0, r0, #1, #1
d03e5654:	4f76      	ldr	r7, [pc, #472]	; (d03e5830 <main+0x9ac>)
d03e5656:	f88d 0038 	strb.w	r0, [sp, #56]	; 0x38
d03e565a:	8039      	strh	r1, [r7, #0]
d03e565c:	f1ba 0f00 	cmp.w	sl, #0
d03e5660:	d07c      	beq.n	d03e575c <main+0x8d8>
d03e5662:	f1c8 0201 	rsb	r2, r8, #1
d03e5666:	f003 0303 	and.w	r3, r3, #3
d03e566a:	2b03      	cmp	r3, #3
d03e566c:	d178      	bne.n	d03e5760 <main+0x8dc>
d03e566e:	2300      	movs	r3, #0
d03e5670:	4a72      	ldr	r2, [pc, #456]	; (d03e583c <main+0x9b8>)
d03e5672:	7013      	strb	r3, [r2, #0]
d03e5674:	2201      	movs	r2, #1
d03e5676:	4b72      	ldr	r3, [pc, #456]	; (d03e5840 <main+0x9bc>)
d03e5678:	701a      	strb	r2, [r3, #0]
d03e567a:	4f72      	ldr	r7, [pc, #456]	; (d03e5844 <main+0x9c0>)
d03e567c:	4b72      	ldr	r3, [pc, #456]	; (d03e5848 <main+0x9c4>)
d03e567e:	781e      	ldrb	r6, [r3, #0]
d03e5680:	783b      	ldrb	r3, [r7, #0]
d03e5682:	42b3      	cmp	r3, r6
d03e5684:	f000 86c8 	beq.w	d03e6418 <main+0x1594>
d03e5688:	4b70      	ldr	r3, [pc, #448]	; (d03e584c <main+0x9c8>)
d03e568a:	2204      	movs	r2, #4
d03e568c:	a80b      	add	r0, sp, #44	; 0x2c
d03e568e:	eb03 0186 	add.w	r1, r3, r6, lsl #2
d03e5692:	f001 fe95 	bl	d03e73c0 <memcpy>
d03e5696:	4a6d      	ldr	r2, [pc, #436]	; (d03e584c <main+0x9c8>)
d03e5698:	eb02 0386 	add.w	r3, r2, r6, lsl #2
d03e569c:	f812 1026 	ldrb.w	r1, [r2, r6, lsl #2]
d03e56a0:	3601      	adds	r6, #1
d03e56a2:	8858      	ldrh	r0, [r3, #2]
d03e56a4:	2901      	cmp	r1, #1
d03e56a6:	f006 060f 	and.w	r6, r6, #15
d03e56aa:	4b67      	ldr	r3, [pc, #412]	; (d03e5848 <main+0x9c4>)
d03e56ac:	701e      	strb	r6, [r3, #0]
d03e56ae:	d1e5      	bne.n	d03e567c <main+0x7f8>
d03e56b0:	1e43      	subs	r3, r0, #1
d03e56b2:	b29a      	uxth	r2, r3
d03e56b4:	2a05      	cmp	r2, #5
d03e56b6:	f200 81b3 	bhi.w	d03e5a20 <main+0xb9c>
d03e56ba:	4a65      	ldr	r2, [pc, #404]	; (d03e5850 <main+0x9cc>)
d03e56bc:	7013      	strb	r3, [r2, #0]
d03e56be:	e7dc      	b.n	d03e567a <main+0x7f6>
d03e56c0:	781a      	ldrb	r2, [r3, #0]
d03e56c2:	b10a      	cbz	r2, d03e56c8 <main+0x844>
d03e56c4:	3a01      	subs	r2, #1
d03e56c6:	e68c      	b.n	d03e53e2 <main+0x55e>
d03e56c8:	2203      	movs	r2, #3
d03e56ca:	f8dd b008 	ldr.w	fp, [sp, #8]
d03e56ce:	701a      	strb	r2, [r3, #0]
d03e56d0:	e73b      	b.n	d03e554a <main+0x6c6>
d03e56d2:	f1ba 0f00 	cmp.w	sl, #0
d03e56d6:	d13d      	bne.n	d03e5754 <main+0x8d0>
d03e56d8:	782b      	ldrb	r3, [r5, #0]
d03e56da:	f10d 0126 	add.w	r1, sp, #38	; 0x26
d03e56de:	786a      	ldrb	r2, [r5, #1]
d03e56e0:	a809      	add	r0, sp, #36	; 0x24
d03e56e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e56e6:	78aa      	ldrb	r2, [r5, #2]
d03e56e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e56ec:	78ea      	ldrb	r2, [r5, #3]
d03e56ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e56f2:	691b      	ldr	r3, [r3, #16]
d03e56f4:	4798      	blx	r3
d03e56f6:	782b      	ldrb	r3, [r5, #0]
d03e56f8:	786a      	ldrb	r2, [r5, #1]
d03e56fa:	4682      	mov	sl, r0
d03e56fc:	a90b      	add	r1, sp, #44	; 0x2c
d03e56fe:	a80a      	add	r0, sp, #40	; 0x28
d03e5700:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e5704:	78aa      	ldrb	r2, [r5, #2]
d03e5706:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e570a:	78ea      	ldrb	r2, [r5, #3]
d03e570c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5710:	699b      	ldr	r3, [r3, #24]
d03e5712:	4798      	blx	r3
d03e5714:	782b      	ldrb	r3, [r5, #0]
d03e5716:	786a      	ldrb	r2, [r5, #1]
d03e5718:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e571c:	78aa      	ldrb	r2, [r5, #2]
d03e571e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e5722:	78ea      	ldrb	r2, [r5, #3]
d03e5724:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e5728:	69db      	ldr	r3, [r3, #28]
d03e572a:	4798      	blx	r3
d03e572c:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d03e572e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d03e5730:	4437      	add	r7, r6
d03e5732:	eb03 0908 	add.w	r9, r3, r8
d03e5736:	b23b      	sxth	r3, r7
d03e5738:	fa0f f989 	sxth.w	r9, r9
d03e573c:	9303      	str	r3, [sp, #12]
d03e573e:	9b02      	ldr	r3, [sp, #8]
d03e5740:	f003 0303 	and.w	r3, r3, #3
d03e5744:	ea43 030a 	orr.w	r3, r3, sl
d03e5748:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
d03e574c:	bf14      	ite	ne
d03e574e:	2201      	movne	r2, #1
d03e5750:	2200      	moveq	r2, #0
d03e5752:	e736      	b.n	d03e55c2 <main+0x73e>
d03e5754:	4603      	mov	r3, r0
d03e5756:	e734      	b.n	d03e55c2 <main+0x73e>
d03e5758:	4694      	mov	ip, r2
d03e575a:	e74b      	b.n	d03e55f4 <main+0x770>
d03e575c:	4652      	mov	r2, sl
d03e575e:	e782      	b.n	d03e5666 <main+0x7e2>
d03e5760:	b150      	cbz	r0, d03e5778 <main+0x8f4>
d03e5762:	4b36      	ldr	r3, [pc, #216]	; (d03e583c <main+0x9b8>)
d03e5764:	2600      	movs	r6, #0
d03e5766:	701e      	strb	r6, [r3, #0]
d03e5768:	f7fb fe38 	bl	d03e13dc <sid_midi_all_notes_off>
d03e576c:	4839      	ldr	r0, [pc, #228]	; (d03e5854 <main+0x9d0>)
d03e576e:	f7fb fd03 	bl	d03e1178 <ui_set_status>
d03e5772:	4b39      	ldr	r3, [pc, #228]	; (d03e5858 <main+0x9d4>)
d03e5774:	701e      	strb	r6, [r3, #0]
d03e5776:	e780      	b.n	d03e567a <main+0x7f6>
d03e5778:	4b37      	ldr	r3, [pc, #220]	; (d03e5858 <main+0x9d4>)
d03e577a:	781b      	ldrb	r3, [r3, #0]
d03e577c:	b333      	cbz	r3, d03e57cc <main+0x948>
d03e577e:	4b2f      	ldr	r3, [pc, #188]	; (d03e583c <main+0x9b8>)
d03e5780:	7018      	strb	r0, [r3, #0]
d03e5782:	4b36      	ldr	r3, [pc, #216]	; (d03e585c <main+0x9d8>)
d03e5784:	7018      	strb	r0, [r3, #0]
d03e5786:	4b36      	ldr	r3, [pc, #216]	; (d03e5860 <main+0x9dc>)
d03e5788:	7018      	strb	r0, [r3, #0]
d03e578a:	f1b8 0f00 	cmp.w	r8, #0
d03e578e:	f43f af74 	beq.w	d03e567a <main+0x7f6>
d03e5792:	4630      	mov	r0, r6
d03e5794:	f7fc fd2e 	bl	d03e21f4 <ui_button_hit>
d03e5798:	b138      	cbz	r0, d03e57aa <main+0x926>
d03e579a:	8800      	ldrh	r0, [r0, #0]
d03e579c:	f1a0 0326 	sub.w	r3, r0, #38	; 0x26
d03e57a0:	2b01      	cmp	r3, #1
d03e57a2:	d802      	bhi.n	d03e57aa <main+0x926>
d03e57a4:	f7fc fc76 	bl	d03e2094 <ui_event_push.constprop.0>
d03e57a8:	e767      	b.n	d03e567a <main+0x7f6>
d03e57aa:	3e60      	subs	r6, #96	; 0x60
d03e57ac:	b2b6      	uxth	r6, r6
d03e57ae:	f5b6 7f90 	cmp.w	r6, #288	; 0x120
d03e57b2:	d204      	bcs.n	d03e57be <main+0x93a>
d03e57b4:	3970      	subs	r1, #112	; 0x70
d03e57b6:	b289      	uxth	r1, r1
d03e57b8:	296b      	cmp	r1, #107	; 0x6b
d03e57ba:	f67f af5e 	bls.w	d03e567a <main+0x7f6>
d03e57be:	2300      	movs	r3, #0
d03e57c0:	4a25      	ldr	r2, [pc, #148]	; (d03e5858 <main+0x9d4>)
d03e57c2:	4828      	ldr	r0, [pc, #160]	; (d03e5864 <main+0x9e0>)
d03e57c4:	7013      	strb	r3, [r2, #0]
d03e57c6:	f7fb fcd7 	bl	d03e1178 <ui_set_status>
d03e57ca:	e756      	b.n	d03e567a <main+0x7f6>
d03e57cc:	4b26      	ldr	r3, [pc, #152]	; (d03e5868 <main+0x9e4>)
d03e57ce:	fa5f fc82 	uxtb.w	ip, r2
d03e57d2:	781b      	ldrb	r3, [r3, #0]
d03e57d4:	2b00      	cmp	r3, #0
d03e57d6:	d054      	beq.n	d03e5882 <main+0x9fe>
d03e57d8:	4b18      	ldr	r3, [pc, #96]	; (d03e583c <main+0x9b8>)
d03e57da:	7018      	strb	r0, [r3, #0]
d03e57dc:	4b1f      	ldr	r3, [pc, #124]	; (d03e585c <main+0x9d8>)
d03e57de:	f883 c000 	strb.w	ip, [r3]
d03e57e2:	4b1f      	ldr	r3, [pc, #124]	; (d03e5860 <main+0x9dc>)
d03e57e4:	f1b8 0f00 	cmp.w	r8, #0
d03e57e8:	d040      	beq.n	d03e586c <main+0x9e8>
d03e57ea:	7018      	strb	r0, [r3, #0]
d03e57ec:	4630      	mov	r0, r6
d03e57ee:	f7fc fd01 	bl	d03e21f4 <ui_button_hit>
d03e57f2:	2800      	cmp	r0, #0
d03e57f4:	f43f af41 	beq.w	d03e567a <main+0x7f6>
d03e57f8:	8803      	ldrh	r3, [r0, #0]
d03e57fa:	f1a3 02b4 	sub.w	r2, r3, #180	; 0xb4
d03e57fe:	2a06      	cmp	r2, #6
d03e5800:	d908      	bls.n	d03e5814 <main+0x990>
d03e5802:	f1a3 02dc 	sub.w	r2, r3, #220	; 0xdc
d03e5806:	2a27      	cmp	r2, #39	; 0x27
d03e5808:	d904      	bls.n	d03e5814 <main+0x990>
d03e580a:	f1a3 0228 	sub.w	r2, r3, #40	; 0x28
d03e580e:	2a0d      	cmp	r2, #13
d03e5810:	f63f af33 	bhi.w	d03e567a <main+0x7f6>
d03e5814:	f1b8 0f00 	cmp.w	r8, #0
d03e5818:	d103      	bne.n	d03e5822 <main+0x99e>
d03e581a:	7a82      	ldrb	r2, [r0, #10]
d03e581c:	2a00      	cmp	r2, #0
d03e581e:	f43f af2c 	beq.w	d03e567a <main+0x7f6>
d03e5822:	4618      	mov	r0, r3
d03e5824:	f7fc fc36 	bl	d03e2094 <ui_event_push.constprop.0>
d03e5828:	e727      	b.n	d03e567a <main+0x7f6>
d03e582a:	bf00      	nop
d03e582c:	d03ec276 	.word	0xd03ec276
d03e5830:	d03ec278 	.word	0xd03ec278
d03e5834:	d03ec211 	.word	0xd03ec211
d03e5838:	d03ec210 	.word	0xd03ec210
d03e583c:	d03ea3c2 	.word	0xd03ea3c2
d03e5840:	d03ebe0b 	.word	0xd03ebe0b
d03e5844:	d03ebdc9 	.word	0xd03ebdc9
d03e5848:	d03ebe0a 	.word	0xd03ebe0a
d03e584c:	d03ebdca 	.word	0xd03ebdca
d03e5850:	d03ec212 	.word	0xd03ec212
d03e5854:	d03e9251 	.word	0xd03e9251
d03e5858:	d03ebdc7 	.word	0xd03ebdc7
d03e585c:	d03ec273 	.word	0xd03ec273
d03e5860:	d03ec274 	.word	0xd03ec274
d03e5864:	d03e9263 	.word	0xd03e9263
d03e5868:	d03ebdc8 	.word	0xd03ebdc8
d03e586c:	b12a      	cbz	r2, d03e587a <main+0x9f6>
d03e586e:	781a      	ldrb	r2, [r3, #0]
d03e5870:	2a0e      	cmp	r2, #14
d03e5872:	d8bb      	bhi.n	d03e57ec <main+0x968>
d03e5874:	3201      	adds	r2, #1
d03e5876:	701a      	strb	r2, [r3, #0]
d03e5878:	e6ff      	b.n	d03e567a <main+0x7f6>
d03e587a:	4b9d      	ldr	r3, [pc, #628]	; (d03e5af0 <main+0xc6c>)
d03e587c:	2200      	movs	r2, #0
d03e587e:	701a      	strb	r2, [r3, #0]
d03e5880:	e6fb      	b.n	d03e567a <main+0x7f6>
d03e5882:	4b9c      	ldr	r3, [pc, #624]	; (d03e5af4 <main+0xc70>)
d03e5884:	781b      	ldrb	r3, [r3, #0]
d03e5886:	2b05      	cmp	r3, #5
d03e5888:	461f      	mov	r7, r3
d03e588a:	d136      	bne.n	d03e58fa <main+0xa76>
d03e588c:	f1b8 0f00 	cmp.w	r8, #0
d03e5890:	d023      	beq.n	d03e58da <main+0xa56>
d03e5892:	f1a6 030a 	sub.w	r3, r6, #10
d03e5896:	b29b      	uxth	r3, r3
d03e5898:	f5b3 7fe6 	cmp.w	r3, #460	; 0x1cc
d03e589c:	d21d      	bcs.n	d03e58da <main+0xa56>
d03e589e:	f1a1 0340 	sub.w	r3, r1, #64	; 0x40
d03e58a2:	b29b      	uxth	r3, r3
d03e58a4:	2bbb      	cmp	r3, #187	; 0xbb
d03e58a6:	d818      	bhi.n	d03e58da <main+0xa56>
d03e58a8:	2301      	movs	r3, #1
d03e58aa:	4a93      	ldr	r2, [pc, #588]	; (d03e5af8 <main+0xc74>)
d03e58ac:	7013      	strb	r3, [r2, #0]
d03e58ae:	4b93      	ldr	r3, [pc, #588]	; (d03e5afc <main+0xc78>)
d03e58b0:	801e      	strh	r6, [r3, #0]
d03e58b2:	4b93      	ldr	r3, [pc, #588]	; (d03e5b00 <main+0xc7c>)
d03e58b4:	681a      	ldr	r2, [r3, #0]
d03e58b6:	4b93      	ldr	r3, [pc, #588]	; (d03e5b04 <main+0xc80>)
d03e58b8:	601a      	str	r2, [r3, #0]
d03e58ba:	4b93      	ldr	r3, [pc, #588]	; (d03e5b08 <main+0xc84>)
d03e58bc:	4a93      	ldr	r2, [pc, #588]	; (d03e5b0c <main+0xc88>)
d03e58be:	781b      	ldrb	r3, [r3, #0]
d03e58c0:	7812      	ldrb	r2, [r2, #0]
d03e58c2:	4313      	orrs	r3, r2
d03e58c4:	4a92      	ldr	r2, [pc, #584]	; (d03e5b10 <main+0xc8c>)
d03e58c6:	7812      	ldrb	r2, [r2, #0]
d03e58c8:	4313      	orrs	r3, r2
d03e58ca:	d001      	beq.n	d03e58d0 <main+0xa4c>
d03e58cc:	f7fb fdb6 	bl	d03e143c <seq_stop_transport>
d03e58d0:	4b90      	ldr	r3, [pc, #576]	; (d03e5b14 <main+0xc90>)
d03e58d2:	681a      	ldr	r2, [r3, #0]
d03e58d4:	4b90      	ldr	r3, [pc, #576]	; (d03e5b18 <main+0xc94>)
d03e58d6:	601a      	str	r2, [r3, #0]
d03e58d8:	e6cf      	b.n	d03e567a <main+0x7f6>
d03e58da:	4b87      	ldr	r3, [pc, #540]	; (d03e5af8 <main+0xc74>)
d03e58dc:	781b      	ldrb	r3, [r3, #0]
d03e58de:	b173      	cbz	r3, d03e58fe <main+0xa7a>
d03e58e0:	4630      	mov	r0, r6
d03e58e2:	f1ba 0f00 	cmp.w	sl, #0
d03e58e6:	d002      	beq.n	d03e58ee <main+0xa6a>
d03e58e8:	f7fc fcd8 	bl	d03e229c <seq_set_position_from_drag>
d03e58ec:	e6c5      	b.n	d03e567a <main+0x7f6>
d03e58ee:	f7fc fcd5 	bl	d03e229c <seq_set_position_from_drag>
d03e58f2:	4b81      	ldr	r3, [pc, #516]	; (d03e5af8 <main+0xc74>)
d03e58f4:	f883 a000 	strb.w	sl, [r3]
d03e58f8:	e6bf      	b.n	d03e567a <main+0x7f6>
d03e58fa:	4b7f      	ldr	r3, [pc, #508]	; (d03e5af8 <main+0xc74>)
d03e58fc:	7018      	strb	r0, [r3, #0]
d03e58fe:	4b87      	ldr	r3, [pc, #540]	; (d03e5b1c <main+0xc98>)
d03e5900:	487b      	ldr	r0, [pc, #492]	; (d03e5af0 <main+0xc6c>)
d03e5902:	f883 c000 	strb.w	ip, [r3]
d03e5906:	f1b8 0f00 	cmp.w	r8, #0
d03e590a:	d012      	beq.n	d03e5932 <main+0xaae>
d03e590c:	2300      	movs	r3, #0
d03e590e:	7003      	strb	r3, [r0, #0]
d03e5910:	4630      	mov	r0, r6
d03e5912:	f7fc fc6f 	bl	d03e21f4 <ui_button_hit>
d03e5916:	4682      	mov	sl, r0
d03e5918:	b198      	cbz	r0, d03e5942 <main+0xabe>
d03e591a:	f1b8 0f00 	cmp.w	r8, #0
d03e591e:	d103      	bne.n	d03e5928 <main+0xaa4>
d03e5920:	7a83      	ldrb	r3, [r0, #10]
d03e5922:	2b00      	cmp	r3, #0
d03e5924:	f43f aea9 	beq.w	d03e567a <main+0x7f6>
d03e5928:	f8ba 0000 	ldrh.w	r0, [sl]
d03e592c:	f7fc fbb2 	bl	d03e2094 <ui_event_push.constprop.0>
d03e5930:	e6a3      	b.n	d03e567a <main+0x7f6>
d03e5932:	2a00      	cmp	r2, #0
d03e5934:	d0a1      	beq.n	d03e587a <main+0x9f6>
d03e5936:	7803      	ldrb	r3, [r0, #0]
d03e5938:	2b0e      	cmp	r3, #14
d03e593a:	d8e9      	bhi.n	d03e5910 <main+0xa8c>
d03e593c:	3301      	adds	r3, #1
d03e593e:	7003      	strb	r3, [r0, #0]
d03e5940:	e69b      	b.n	d03e567a <main+0x7f6>
d03e5942:	f1b8 0f00 	cmp.w	r8, #0
d03e5946:	f43f ae98 	beq.w	d03e567a <main+0x7f6>
d03e594a:	2f01      	cmp	r7, #1
d03e594c:	d039      	beq.n	d03e59c2 <main+0xb3e>
d03e594e:	2f04      	cmp	r7, #4
d03e5950:	f47f ae93 	bne.w	d03e567a <main+0x7f6>
d03e5954:	4b72      	ldr	r3, [pc, #456]	; (d03e5b20 <main+0xc9c>)
d03e5956:	781b      	ldrb	r3, [r3, #0]
d03e5958:	2b00      	cmp	r3, #0
d03e595a:	f43f ae8e 	beq.w	d03e567a <main+0x7f6>
d03e595e:	4b71      	ldr	r3, [pc, #452]	; (d03e5b24 <main+0xca0>)
d03e5960:	4a71      	ldr	r2, [pc, #452]	; (d03e5b28 <main+0xca4>)
d03e5962:	781b      	ldrb	r3, [r3, #0]
d03e5964:	5cd3      	ldrb	r3, [r2, r3]
d03e5966:	4a71      	ldr	r2, [pc, #452]	; (d03e5b2c <main+0xca8>)
d03e5968:	7810      	ldrb	r0, [r2, #0]
d03e596a:	4298      	cmp	r0, r3
d03e596c:	f47f ae85 	bne.w	d03e567a <main+0x7f6>
d03e5970:	3e1e      	subs	r6, #30
d03e5972:	b2b6      	uxth	r6, r6
d03e5974:	f5b6 7fbf 	cmp.w	r6, #382	; 0x17e
d03e5978:	f4bf ae7f 	bcs.w	d03e567a <main+0x7f6>
d03e597c:	9b03      	ldr	r3, [sp, #12]
d03e597e:	f1a3 0786 	sub.w	r7, r3, #134	; 0x86
d03e5982:	b2bf      	uxth	r7, r7
d03e5984:	2f7f      	cmp	r7, #127	; 0x7f
d03e5986:	f63f ae78 	bhi.w	d03e567a <main+0x7f6>
d03e598a:	4b69      	ldr	r3, [pc, #420]	; (d03e5b30 <main+0xcac>)
d03e598c:	3986      	subs	r1, #134	; 0x86
d03e598e:	781e      	ldrb	r6, [r3, #0]
d03e5990:	eb06 1121 	add.w	r1, r6, r1, asr #4
d03e5994:	b2ce      	uxtb	r6, r1
d03e5996:	f7fb f9f7 	bl	d03e0d88 <vm_program_length>
d03e599a:	4286      	cmp	r6, r0
d03e599c:	f4bf ae6d 	bcs.w	d03e567a <main+0x7f6>
d03e59a0:	4b64      	ldr	r3, [pc, #400]	; (d03e5b34 <main+0xcb0>)
d03e59a2:	701e      	strb	r6, [r3, #0]
d03e59a4:	2601      	movs	r6, #1
d03e59a6:	4b64      	ldr	r3, [pc, #400]	; (d03e5b38 <main+0xcb4>)
d03e59a8:	f883 a000 	strb.w	sl, [r3]
d03e59ac:	4b63      	ldr	r3, [pc, #396]	; (d03e5b3c <main+0xcb8>)
d03e59ae:	701e      	strb	r6, [r3, #0]
d03e59b0:	f7fb fe6e 	bl	d03e1690 <ui_vm_editor_clamp_selection>
d03e59b4:	f1b9 0f9d 	cmp.w	r9, #157	; 0x9d
d03e59b8:	dd24      	ble.n	d03e5a04 <main+0xb80>
d03e59ba:	4b61      	ldr	r3, [pc, #388]	; (d03e5b40 <main+0xcbc>)
d03e59bc:	2202      	movs	r2, #2
d03e59be:	701a      	strb	r2, [r3, #0]
d03e59c0:	e65b      	b.n	d03e567a <main+0x7f6>
d03e59c2:	3e18      	subs	r6, #24
d03e59c4:	2024      	movs	r0, #36	; 0x24
d03e59c6:	b2b6      	uxth	r6, r6
d03e59c8:	f5b6 7fd2 	cmp.w	r6, #420	; 0x1a4
d03e59cc:	fa5f f28a 	uxtb.w	r2, sl
d03e59d0:	d20b      	bcs.n	d03e59ea <main+0xb66>
d03e59d2:	eb0a 03ca 	add.w	r3, sl, sl, lsl #3
d03e59d6:	009b      	lsls	r3, r3, #2
d03e59d8:	3377      	adds	r3, #119	; 0x77
d03e59da:	b21b      	sxth	r3, r3
d03e59dc:	4299      	cmp	r1, r3
d03e59de:	db04      	blt.n	d03e59ea <main+0xb66>
d03e59e0:	fb00 f30a 	mul.w	r3, r0, sl
d03e59e4:	3397      	adds	r3, #151	; 0x97
d03e59e6:	4299      	cmp	r1, r3
d03e59e8:	db05      	blt.n	d03e59f6 <main+0xb72>
d03e59ea:	f10a 0a01 	add.w	sl, sl, #1
d03e59ee:	f1ba 0f04 	cmp.w	sl, #4
d03e59f2:	d1e9      	bne.n	d03e59c8 <main+0xb44>
d03e59f4:	e641      	b.n	d03e567a <main+0x7f6>
d03e59f6:	4b53      	ldr	r3, [pc, #332]	; (d03e5b44 <main+0xcc0>)
d03e59f8:	781b      	ldrb	r3, [r3, #0]
d03e59fa:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d03e59fe:	4b49      	ldr	r3, [pc, #292]	; (d03e5b24 <main+0xca0>)
d03e5a00:	701a      	strb	r2, [r3, #0]
d03e5a02:	e63a      	b.n	d03e567a <main+0x7f6>
d03e5a04:	f1b9 0f85 	cmp.w	r9, #133	; 0x85
d03e5a08:	dd02      	ble.n	d03e5a10 <main+0xb8c>
d03e5a0a:	4b4d      	ldr	r3, [pc, #308]	; (d03e5b40 <main+0xcbc>)
d03e5a0c:	701e      	strb	r6, [r3, #0]
d03e5a0e:	e634      	b.n	d03e567a <main+0x7f6>
d03e5a10:	f1b9 0f3d 	cmp.w	r9, #61	; 0x3d
d03e5a14:	f77f ae31 	ble.w	d03e567a <main+0x7f6>
d03e5a18:	4b49      	ldr	r3, [pc, #292]	; (d03e5b40 <main+0xcbc>)
d03e5a1a:	2200      	movs	r2, #0
d03e5a1c:	701a      	strb	r2, [r3, #0]
d03e5a1e:	e62c      	b.n	d03e567a <main+0x7f6>
d03e5a20:	f1a0 0364 	sub.w	r3, r0, #100	; 0x64
d03e5a24:	b29a      	uxth	r2, r3
d03e5a26:	2a03      	cmp	r2, #3
d03e5a28:	d802      	bhi.n	d03e5a30 <main+0xbac>
d03e5a2a:	4a46      	ldr	r2, [pc, #280]	; (d03e5b44 <main+0xcc0>)
d03e5a2c:	7013      	strb	r3, [r2, #0]
d03e5a2e:	e624      	b.n	d03e567a <main+0x7f6>
d03e5a30:	f1a0 0378 	sub.w	r3, r0, #120	; 0x78
d03e5a34:	2b03      	cmp	r3, #3
d03e5a36:	d80c      	bhi.n	d03e5a52 <main+0xbce>
d03e5a38:	4b42      	ldr	r3, [pc, #264]	; (d03e5b44 <main+0xcc0>)
d03e5a3a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03e5a3e:	781b      	ldrb	r3, [r3, #0]
d03e5a40:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e5a44:	4b37      	ldr	r3, [pc, #220]	; (d03e5b24 <main+0xca0>)
d03e5a46:	3878      	subs	r0, #120	; 0x78
d03e5a48:	b2c0      	uxtb	r0, r0
d03e5a4a:	7018      	strb	r0, [r3, #0]
d03e5a4c:	f7fb ff36 	bl	d03e18bc <ui_select_program_delta>
d03e5a50:	e613      	b.n	d03e567a <main+0x7f6>
d03e5a52:	f1a0 038c 	sub.w	r3, r0, #140	; 0x8c
d03e5a56:	2b03      	cmp	r3, #3
d03e5a58:	d80a      	bhi.n	d03e5a70 <main+0xbec>
d03e5a5a:	4b3a      	ldr	r3, [pc, #232]	; (d03e5b44 <main+0xcc0>)
d03e5a5c:	781b      	ldrb	r3, [r3, #0]
d03e5a5e:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03e5a62:	4b30      	ldr	r3, [pc, #192]	; (d03e5b24 <main+0xca0>)
d03e5a64:	3074      	adds	r0, #116	; 0x74
d03e5a66:	b2c0      	uxtb	r0, r0
d03e5a68:	7018      	strb	r0, [r3, #0]
d03e5a6a:	f7fb ff27 	bl	d03e18bc <ui_select_program_delta>
d03e5a6e:	e604      	b.n	d03e567a <main+0x7f6>
d03e5a70:	f1a0 03b4 	sub.w	r3, r0, #180	; 0xb4
d03e5a74:	2b06      	cmp	r3, #6
d03e5a76:	d80c      	bhi.n	d03e5a92 <main+0xc0e>
d03e5a78:	4b33      	ldr	r3, [pc, #204]	; (d03e5b48 <main+0xcc4>)
d03e5a7a:	781b      	ldrb	r3, [r3, #0]
d03e5a7c:	334c      	adds	r3, #76	; 0x4c
d03e5a7e:	4418      	add	r0, r3
d03e5a80:	4b32      	ldr	r3, [pc, #200]	; (d03e5b4c <main+0xcc8>)
d03e5a82:	b2c0      	uxtb	r0, r0
d03e5a84:	781b      	ldrb	r3, [r3, #0]
d03e5a86:	4283      	cmp	r3, r0
d03e5a88:	f67f adf7 	bls.w	d03e567a <main+0x7f6>
d03e5a8c:	4b30      	ldr	r3, [pc, #192]	; (d03e5b50 <main+0xccc>)
d03e5a8e:	7018      	strb	r0, [r3, #0]
d03e5a90:	e5f3      	b.n	d03e567a <main+0x7f6>
d03e5a92:	f1a0 03dc 	sub.w	r3, r0, #220	; 0xdc
d03e5a96:	2b27      	cmp	r3, #39	; 0x27
d03e5a98:	d862      	bhi.n	d03e5b60 <main+0xcdc>
d03e5a9a:	3024      	adds	r0, #36	; 0x24
d03e5a9c:	b2c6      	uxtb	r6, r0
d03e5a9e:	2e27      	cmp	r6, #39	; 0x27
d03e5aa0:	f43f adeb 	beq.w	d03e567a <main+0x7f6>
d03e5aa4:	482b      	ldr	r0, [pc, #172]	; (d03e5b54 <main+0xcd0>)
d03e5aa6:	f001 fe5f 	bl	d03e7768 <strlen>
d03e5aaa:	281a      	cmp	r0, #26
d03e5aac:	f63f ade5 	bhi.w	d03e567a <main+0x7f6>
d03e5ab0:	4b29      	ldr	r3, [pc, #164]	; (d03e5b58 <main+0xcd4>)
d03e5ab2:	b2c2      	uxtb	r2, r0
d03e5ab4:	b200      	sxth	r0, r0
d03e5ab6:	5d9e      	ldrb	r6, [r3, r6]
d03e5ab8:	4b28      	ldr	r3, [pc, #160]	; (d03e5b5c <main+0xcd8>)
d03e5aba:	7819      	ldrb	r1, [r3, #0]
d03e5abc:	4291      	cmp	r1, r2
d03e5abe:	4925      	ldr	r1, [pc, #148]	; (d03e5b54 <main+0xcd0>)
d03e5ac0:	bf88      	it	hi
d03e5ac2:	701a      	strbhi	r2, [r3, #0]
d03e5ac4:	781a      	ldrb	r2, [r3, #0]
d03e5ac6:	4290      	cmp	r0, r2
d03e5ac8:	da09      	bge.n	d03e5ade <main+0xc5a>
d03e5aca:	1c50      	adds	r0, r2, #1
d03e5acc:	548e      	strb	r6, [r1, r2]
d03e5ace:	2200      	movs	r2, #0
d03e5ad0:	7018      	strb	r0, [r3, #0]
d03e5ad2:	4b19      	ldr	r3, [pc, #100]	; (d03e5b38 <main+0xcb4>)
d03e5ad4:	701a      	strb	r2, [r3, #0]
d03e5ad6:	2201      	movs	r2, #1
d03e5ad8:	4b18      	ldr	r3, [pc, #96]	; (d03e5b3c <main+0xcb8>)
d03e5ada:	701a      	strb	r2, [r3, #0]
d03e5adc:	e5cd      	b.n	d03e567a <main+0x7f6>
d03e5ade:	f811 c000 	ldrb.w	ip, [r1, r0]
d03e5ae2:	180f      	adds	r7, r1, r0
d03e5ae4:	3801      	subs	r0, #1
d03e5ae6:	f887 c001 	strb.w	ip, [r7, #1]
d03e5aea:	b200      	sxth	r0, r0
d03e5aec:	e7eb      	b.n	d03e5ac6 <main+0xc42>
d03e5aee:	bf00      	nop
d03e5af0:	d03ec274 	.word	0xd03ec274
d03e5af4:	d03ec212 	.word	0xd03ec212
d03e5af8:	d03ea3c2 	.word	0xd03ea3c2
d03e5afc:	d03ea3c0 	.word	0xd03ea3c0
d03e5b00:	d03eb494 	.word	0xd03eb494
d03e5b04:	d03ea3bc 	.word	0xd03ea3bc
d03e5b08:	d03eb490 	.word	0xd03eb490
d03e5b0c:	d03eb499 	.word	0xd03eb499
d03e5b10:	d03ea3b4 	.word	0xd03ea3b4
d03e5b14:	d03ea3b0 	.word	0xd03ea3b0
d03e5b18:	d03ea3c4 	.word	0xd03ea3c4
d03e5b1c:	d03ec273 	.word	0xd03ec273
d03e5b20:	d03ec45b 	.word	0xd03ec45b
d03e5b24:	d03ec2af 	.word	0xd03ec2af
d03e5b28:	d03ea164 	.word	0xd03ea164
d03e5b2c:	d03ec460 	.word	0xd03ec460
d03e5b30:	d03ec469 	.word	0xd03ec469
d03e5b34:	d03ec461 	.word	0xd03ec461
d03e5b38:	d03ec463 	.word	0xd03ec463
d03e5b3c:	d03ec462 	.word	0xd03ec462
d03e5b40:	d03ec45a 	.word	0xd03ec45a
d03e5b44:	d03ebdc6 	.word	0xd03ebdc6
d03e5b48:	d03ec20d 	.word	0xd03ec20d
d03e5b4c:	d03ebe0c 	.word	0xd03ebe0c
d03e5b50:	d03ec20e 	.word	0xd03ec20e
d03e5b54:	d03ec28f 	.word	0xd03ec28f
d03e5b58:	d03e9984 	.word	0xd03e9984
d03e5b5c:	d03ec28d 	.word	0xd03ec28d
d03e5b60:	3807      	subs	r0, #7
d03e5b62:	2839      	cmp	r0, #57	; 0x39
d03e5b64:	f63f ad89 	bhi.w	d03e567a <main+0x7f6>
d03e5b68:	e8df f010 	tbh	[pc, r0, lsl #1]
d03e5b6c:	0040003a 	.word	0x0040003a
d03e5b70:	0064005a 	.word	0x0064005a
d03e5b74:	0071006b 	.word	0x0071006b
d03e5b78:	00710078 	.word	0x00710078
d03e5b7c:	007f0078 	.word	0x007f0078
d03e5b80:	009c008d 	.word	0x009c008d
d03e5b84:	00b900aa 	.word	0x00b900aa
d03e5b88:	00d300c3 	.word	0x00d300c3
d03e5b8c:	00ef00e3 	.word	0x00ef00e3
d03e5b90:	00ff00fa 	.word	0x00ff00fa
d03e5b94:	01750171 	.word	0x01750171
d03e5b98:	017d0179 	.word	0x017d0179
d03e5b9c:	01860181 	.word	0x01860181
d03e5ba0:	0192018c 	.word	0x0192018c
d03e5ba4:	019e0198 	.word	0x019e0198
d03e5ba8:	01e601a3 	.word	0x01e601a3
d03e5bac:	0266025e 	.word	0x0266025e
d03e5bb0:	027b026f 	.word	0x027b026f
d03e5bb4:	02850280 	.word	0x02850280
d03e5bb8:	02b4028d 	.word	0x02b4028d
d03e5bbc:	02bf02ba 	.word	0x02bf02ba
d03e5bc0:	02d002cb 	.word	0x02d002cb
d03e5bc4:	02dd02d5 	.word	0x02dd02d5
d03e5bc8:	030202fa 	.word	0x030202fa
d03e5bcc:	03ac031a 	.word	0x03ac031a
d03e5bd0:	03ea03d6 	.word	0x03ea03d6
d03e5bd4:	040403f7 	.word	0x040403f7
d03e5bd8:	0415040c 	.word	0x0415040c
d03e5bdc:	0423041e 	.word	0x0423041e
d03e5be0:	f7fb fbfc 	bl	d03e13dc <sid_midi_all_notes_off>
d03e5be4:	48b5      	ldr	r0, [pc, #724]	; (d03e5ebc <main+0x1038>)
d03e5be6:	f7fb fac7 	bl	d03e1178 <ui_set_status>
d03e5bea:	e546      	b.n	d03e567a <main+0x7f6>
d03e5bec:	f7fb fe2c 	bl	d03e1848 <ui_project_ensure_dir>
d03e5bf0:	2800      	cmp	r0, #0
d03e5bf2:	f43f ad42 	beq.w	d03e567a <main+0x7f6>
d03e5bf6:	49b2      	ldr	r1, [pc, #712]	; (d03e5ec0 <main+0x103c>)
d03e5bf8:	2602      	movs	r6, #2
d03e5bfa:	48b2      	ldr	r0, [pc, #712]	; (d03e5ec4 <main+0x1040>)
d03e5bfc:	f001 fdac 	bl	d03e7758 <strcpy>
d03e5c00:	4bb1      	ldr	r3, [pc, #708]	; (d03e5ec8 <main+0x1044>)
d03e5c02:	48b0      	ldr	r0, [pc, #704]	; (d03e5ec4 <main+0x1040>)
d03e5c04:	701e      	strb	r6, [r3, #0]
d03e5c06:	f001 fdaf 	bl	d03e7768 <strlen>
d03e5c0a:	4bb0      	ldr	r3, [pc, #704]	; (d03e5ecc <main+0x1048>)
d03e5c0c:	2200      	movs	r2, #0
d03e5c0e:	7018      	strb	r0, [r3, #0]
d03e5c10:	4baf      	ldr	r3, [pc, #700]	; (d03e5ed0 <main+0x104c>)
d03e5c12:	701a      	strb	r2, [r3, #0]
d03e5c14:	2201      	movs	r2, #1
d03e5c16:	4baf      	ldr	r3, [pc, #700]	; (d03e5ed4 <main+0x1050>)
d03e5c18:	701e      	strb	r6, [r3, #0]
d03e5c1a:	4baf      	ldr	r3, [pc, #700]	; (d03e5ed8 <main+0x1054>)
d03e5c1c:	701a      	strb	r2, [r3, #0]
d03e5c1e:	e52c      	b.n	d03e567a <main+0x7f6>
d03e5c20:	f7fb fe12 	bl	d03e1848 <ui_project_ensure_dir>
d03e5c24:	f7fb fb16 	bl	d03e1254 <ui_file_refresh>
d03e5c28:	2301      	movs	r3, #1
d03e5c2a:	4aaa      	ldr	r2, [pc, #680]	; (d03e5ed4 <main+0x1050>)
d03e5c2c:	7013      	strb	r3, [r2, #0]
d03e5c2e:	4aaa      	ldr	r2, [pc, #680]	; (d03e5ed8 <main+0x1054>)
d03e5c30:	7013      	strb	r3, [r2, #0]
d03e5c32:	e522      	b.n	d03e567a <main+0x7f6>
d03e5c34:	4ba9      	ldr	r3, [pc, #676]	; (d03e5edc <main+0x1058>)
d03e5c36:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03e5c3a:	7818      	ldrb	r0, [r3, #0]
d03e5c3c:	f7fb fe3e 	bl	d03e18bc <ui_select_program_delta>
d03e5c40:	e51b      	b.n	d03e567a <main+0x7f6>
d03e5c42:	4ba6      	ldr	r3, [pc, #664]	; (d03e5edc <main+0x1058>)
d03e5c44:	2101      	movs	r1, #1
d03e5c46:	7818      	ldrb	r0, [r3, #0]
d03e5c48:	f7fb fe38 	bl	d03e18bc <ui_select_program_delta>
d03e5c4c:	e515      	b.n	d03e567a <main+0x7f6>
d03e5c4e:	4ba4      	ldr	r3, [pc, #656]	; (d03e5ee0 <main+0x105c>)
d03e5c50:	8818      	ldrh	r0, [r3, #0]
d03e5c52:	380a      	subs	r0, #10
d03e5c54:	b200      	sxth	r0, r0
d03e5c56:	f7fb fa81 	bl	d03e115c <midi_set_global_gain>
d03e5c5a:	e50e      	b.n	d03e567a <main+0x7f6>
d03e5c5c:	4ba0      	ldr	r3, [pc, #640]	; (d03e5ee0 <main+0x105c>)
d03e5c5e:	8818      	ldrh	r0, [r3, #0]
d03e5c60:	300a      	adds	r0, #10
d03e5c62:	b200      	sxth	r0, r0
d03e5c64:	f7fb fa7a 	bl	d03e115c <midi_set_global_gain>
d03e5c68:	e507      	b.n	d03e567a <main+0x7f6>
d03e5c6a:	4b9c      	ldr	r3, [pc, #624]	; (d03e5edc <main+0x1058>)
d03e5c6c:	7818      	ldrb	r0, [r3, #0]
d03e5c6e:	280f      	cmp	r0, #15
d03e5c70:	f63f ad03 	bhi.w	d03e567a <main+0x7f6>
d03e5c74:	4a9b      	ldr	r2, [pc, #620]	; (d03e5ee4 <main+0x1060>)
d03e5c76:	5c13      	ldrb	r3, [r2, r0]
d03e5c78:	3b08      	subs	r3, #8
d03e5c7a:	f383 0307 	usat	r3, #7, r3
d03e5c7e:	5413      	strb	r3, [r2, r0]
d03e5c80:	f7fb fa3c 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5c84:	e4f9      	b.n	d03e567a <main+0x7f6>
d03e5c86:	4b95      	ldr	r3, [pc, #596]	; (d03e5edc <main+0x1058>)
d03e5c88:	7818      	ldrb	r0, [r3, #0]
d03e5c8a:	280f      	cmp	r0, #15
d03e5c8c:	f63f acf5 	bhi.w	d03e567a <main+0x7f6>
d03e5c90:	4a94      	ldr	r2, [pc, #592]	; (d03e5ee4 <main+0x1060>)
d03e5c92:	5c13      	ldrb	r3, [r2, r0]
d03e5c94:	3308      	adds	r3, #8
d03e5c96:	2b7f      	cmp	r3, #127	; 0x7f
d03e5c98:	bfa8      	it	ge
d03e5c9a:	237f      	movge	r3, #127	; 0x7f
d03e5c9c:	5413      	strb	r3, [r2, r0]
d03e5c9e:	f7fb fa2d 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5ca2:	e4ea      	b.n	d03e567a <main+0x7f6>
d03e5ca4:	4b8d      	ldr	r3, [pc, #564]	; (d03e5edc <main+0x1058>)
d03e5ca6:	7818      	ldrb	r0, [r3, #0]
d03e5ca8:	280f      	cmp	r0, #15
d03e5caa:	f63f ace6 	bhi.w	d03e567a <main+0x7f6>
d03e5cae:	4a8e      	ldr	r2, [pc, #568]	; (d03e5ee8 <main+0x1064>)
d03e5cb0:	5c13      	ldrb	r3, [r2, r0]
d03e5cb2:	3b08      	subs	r3, #8
d03e5cb4:	f383 0307 	usat	r3, #7, r3
d03e5cb8:	5413      	strb	r3, [r2, r0]
d03e5cba:	f7fb fa1f 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5cbe:	e4dc      	b.n	d03e567a <main+0x7f6>
d03e5cc0:	4b86      	ldr	r3, [pc, #536]	; (d03e5edc <main+0x1058>)
d03e5cc2:	7818      	ldrb	r0, [r3, #0]
d03e5cc4:	280f      	cmp	r0, #15
d03e5cc6:	f63f acd8 	bhi.w	d03e567a <main+0x7f6>
d03e5cca:	4a87      	ldr	r2, [pc, #540]	; (d03e5ee8 <main+0x1064>)
d03e5ccc:	5c13      	ldrb	r3, [r2, r0]
d03e5cce:	3308      	adds	r3, #8
d03e5cd0:	2b7f      	cmp	r3, #127	; 0x7f
d03e5cd2:	bfa8      	it	ge
d03e5cd4:	237f      	movge	r3, #127	; 0x7f
d03e5cd6:	5413      	strb	r3, [r2, r0]
d03e5cd8:	f7fb fa10 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5cdc:	e4cd      	b.n	d03e567a <main+0x7f6>
d03e5cde:	4a83      	ldr	r2, [pc, #524]	; (d03e5eec <main+0x1068>)
d03e5ce0:	2009      	movs	r0, #9
d03e5ce2:	7813      	ldrb	r3, [r2, #0]
d03e5ce4:	fab3 f383 	clz	r3, r3
d03e5ce8:	095b      	lsrs	r3, r3, #5
d03e5cea:	7013      	strb	r3, [r2, #0]
d03e5cec:	f7fb f9a8 	bl	d03e1040 <sid_midi_all_notes_off_event>
d03e5cf0:	e4c3      	b.n	d03e567a <main+0x7f6>
d03e5cf2:	4a7f      	ldr	r2, [pc, #508]	; (d03e5ef0 <main+0x106c>)
d03e5cf4:	2009      	movs	r0, #9
d03e5cf6:	8813      	ldrh	r3, [r2, #0]
d03e5cf8:	3b0a      	subs	r3, #10
d03e5cfa:	b21b      	sxth	r3, r3
d03e5cfc:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e5d00:	bfa8      	it	ge
d03e5d02:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e5d06:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e5d0a:	8013      	strh	r3, [r2, #0]
d03e5d0c:	f7fb f9f6 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5d10:	e4b3      	b.n	d03e567a <main+0x7f6>
d03e5d12:	4a77      	ldr	r2, [pc, #476]	; (d03e5ef0 <main+0x106c>)
d03e5d14:	2009      	movs	r0, #9
d03e5d16:	8813      	ldrh	r3, [r2, #0]
d03e5d18:	330a      	adds	r3, #10
d03e5d1a:	b21b      	sxth	r3, r3
d03e5d1c:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03e5d20:	bfa8      	it	ge
d03e5d22:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03e5d26:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e5d2a:	8013      	strh	r3, [r2, #0]
d03e5d2c:	f7fb f9e6 	bl	d03e10fc <midi_update_active_channel_volume>
d03e5d30:	e4a3      	b.n	d03e567a <main+0x7f6>
d03e5d32:	4b6a      	ldr	r3, [pc, #424]	; (d03e5edc <main+0x1058>)
d03e5d34:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03e5d38:	7818      	ldrb	r0, [r3, #0]
d03e5d3a:	f7fb fdbf 	bl	d03e18bc <ui_select_program_delta>
d03e5d3e:	4b6d      	ldr	r3, [pc, #436]	; (d03e5ef4 <main+0x1070>)
d03e5d40:	2200      	movs	r2, #0
d03e5d42:	701a      	strb	r2, [r3, #0]
d03e5d44:	f7fb f836 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e5d48:	e497      	b.n	d03e567a <main+0x7f6>
d03e5d4a:	4b64      	ldr	r3, [pc, #400]	; (d03e5edc <main+0x1058>)
d03e5d4c:	2101      	movs	r1, #1
d03e5d4e:	7818      	ldrb	r0, [r3, #0]
d03e5d50:	f7fb fdb4 	bl	d03e18bc <ui_select_program_delta>
d03e5d54:	4b67      	ldr	r3, [pc, #412]	; (d03e5ef4 <main+0x1070>)
d03e5d56:	2200      	movs	r2, #0
d03e5d58:	701a      	strb	r2, [r3, #0]
d03e5d5a:	f7fb f82b 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e5d5e:	e48c      	b.n	d03e567a <main+0x7f6>
d03e5d60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e5d64:	f7fb f840 	bl	d03e0de8 <ui_scroll_vm>
d03e5d68:	e487      	b.n	d03e567a <main+0x7f6>
d03e5d6a:	4b5c      	ldr	r3, [pc, #368]	; (d03e5edc <main+0x1058>)
d03e5d6c:	4a62      	ldr	r2, [pc, #392]	; (d03e5ef8 <main+0x1074>)
d03e5d6e:	781b      	ldrb	r3, [r3, #0]
d03e5d70:	f8df a180 	ldr.w	sl, [pc, #384]	; d03e5ef4 <main+0x1070>
d03e5d74:	5cd6      	ldrb	r6, [r2, r3]
d03e5d76:	f89a 3000 	ldrb.w	r3, [sl]
d03e5d7a:	b153      	cbz	r3, d03e5d92 <main+0xf0e>
d03e5d7c:	4b5f      	ldr	r3, [pc, #380]	; (d03e5efc <main+0x1078>)
d03e5d7e:	781b      	ldrb	r3, [r3, #0]
d03e5d80:	42b3      	cmp	r3, r6
d03e5d82:	d106      	bne.n	d03e5d92 <main+0xf0e>
d03e5d84:	2300      	movs	r3, #0
d03e5d86:	485e      	ldr	r0, [pc, #376]	; (d03e5f00 <main+0x107c>)
d03e5d88:	f88a 3000 	strb.w	r3, [sl]
d03e5d8c:	f7fb f9f4 	bl	d03e1178 <ui_set_status>
d03e5d90:	e473      	b.n	d03e567a <main+0x7f6>
d03e5d92:	0633      	lsls	r3, r6, #24
d03e5d94:	d503      	bpl.n	d03e5d9e <main+0xf1a>
d03e5d96:	485b      	ldr	r0, [pc, #364]	; (d03e5f04 <main+0x1080>)
d03e5d98:	f7fb f9ee 	bl	d03e1178 <ui_set_status>
d03e5d9c:	e46d      	b.n	d03e567a <main+0x7f6>
d03e5d9e:	f8df 9194 	ldr.w	r9, [pc, #404]	; d03e5f34 <main+0x10b0>
d03e5da2:	f859 3026 	ldr.w	r3, [r9, r6, lsl #2]
d03e5da6:	b91b      	cbnz	r3, d03e5db0 <main+0xf2c>
d03e5da8:	4857      	ldr	r0, [pc, #348]	; (d03e5f08 <main+0x1084>)
d03e5daa:	f7fb f9e5 	bl	d03e1178 <ui_set_status>
d03e5dae:	e464      	b.n	d03e567a <main+0x7f6>
d03e5db0:	4a52      	ldr	r2, [pc, #328]	; (d03e5efc <main+0x1078>)
d03e5db2:	7812      	ldrb	r2, [r2, #0]
d03e5db4:	4296      	cmp	r6, r2
d03e5db6:	d03c      	beq.n	d03e5e32 <main+0xfae>
d03e5db8:	2aff      	cmp	r2, #255	; 0xff
d03e5dba:	4954      	ldr	r1, [pc, #336]	; (d03e5f0c <main+0x1088>)
d03e5dbc:	d007      	beq.n	d03e5dce <main+0xf4a>
d03e5dbe:	f859 0022 	ldr.w	r0, [r9, r2, lsl #2]
d03e5dc2:	4f53      	ldr	r7, [pc, #332]	; (d03e5f10 <main+0x108c>)
d03e5dc4:	42b8      	cmp	r0, r7
d03e5dc6:	bf04      	itt	eq
d03e5dc8:	6808      	ldreq	r0, [r1, #0]
d03e5dca:	f849 0022 	streq.w	r0, [r9, r2, lsl #2]
d03e5dce:	4630      	mov	r0, r6
d03e5dd0:	600b      	str	r3, [r1, #0]
d03e5dd2:	9303      	str	r3, [sp, #12]
d03e5dd4:	f7fa ffd8 	bl	d03e0d88 <vm_program_length>
d03e5dd8:	1e42      	subs	r2, r0, #1
d03e5dda:	4607      	mov	r7, r0
d03e5ddc:	2100      	movs	r1, #0
d03e5dde:	484c      	ldr	r0, [pc, #304]	; (d03e5f10 <main+0x108c>)
d03e5de0:	b2d2      	uxtb	r2, r2
d03e5de2:	f04f 0800 	mov.w	r8, #0
d03e5de6:	2a60      	cmp	r2, #96	; 0x60
d03e5de8:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e5dec:	bf28      	it	cs
d03e5dee:	2760      	movcs	r7, #96	; 0x60
d03e5df0:	f001 faf4 	bl	d03e73dc <memset>
d03e5df4:	9b03      	ldr	r3, [sp, #12]
d03e5df6:	eb03 0188 	add.w	r1, r3, r8, lsl #2
d03e5dfa:	9303      	str	r3, [sp, #12]
d03e5dfc:	4b44      	ldr	r3, [pc, #272]	; (d03e5f10 <main+0x108c>)
d03e5dfe:	2204      	movs	r2, #4
d03e5e00:	eb03 0088 	add.w	r0, r3, r8, lsl #2
d03e5e04:	f108 0801 	add.w	r8, r8, #1
d03e5e08:	f001 fada 	bl	d03e73c0 <memcpy>
d03e5e0c:	9b03      	ldr	r3, [sp, #12]
d03e5e0e:	fa5f f288 	uxtb.w	r2, r8
d03e5e12:	4297      	cmp	r7, r2
d03e5e14:	d8ef      	bhi.n	d03e5df6 <main+0xf72>
d03e5e16:	4a39      	ldr	r2, [pc, #228]	; (d03e5efc <main+0x1078>)
d03e5e18:	2300      	movs	r3, #0
d03e5e1a:	493d      	ldr	r1, [pc, #244]	; (d03e5f10 <main+0x108c>)
d03e5e1c:	7016      	strb	r6, [r2, #0]
d03e5e1e:	4a3d      	ldr	r2, [pc, #244]	; (d03e5f14 <main+0x1090>)
d03e5e20:	f881 317c 	strb.w	r3, [r1, #380]	; 0x17c
d03e5e24:	7013      	strb	r3, [r2, #0]
d03e5e26:	4a3c      	ldr	r2, [pc, #240]	; (d03e5f18 <main+0x1094>)
d03e5e28:	f849 1026 	str.w	r1, [r9, r6, lsl #2]
d03e5e2c:	7013      	strb	r3, [r2, #0]
d03e5e2e:	4a3b      	ldr	r2, [pc, #236]	; (d03e5f1c <main+0x1098>)
d03e5e30:	7013      	strb	r3, [r2, #0]
d03e5e32:	2100      	movs	r1, #0
d03e5e34:	4a3a      	ldr	r2, [pc, #232]	; (d03e5f20 <main+0x109c>)
d03e5e36:	2301      	movs	r3, #1
d03e5e38:	7011      	strb	r1, [r2, #0]
d03e5e3a:	4a3a      	ldr	r2, [pc, #232]	; (d03e5f24 <main+0x10a0>)
d03e5e3c:	f88a 3000 	strb.w	r3, [sl]
d03e5e40:	7013      	strb	r3, [r2, #0]
d03e5e42:	f7fb fc25 	bl	d03e1690 <ui_vm_editor_clamp_selection>
d03e5e46:	4838      	ldr	r0, [pc, #224]	; (d03e5f28 <main+0x10a4>)
d03e5e48:	f7fb f996 	bl	d03e1178 <ui_set_status>
d03e5e4c:	e415      	b.n	d03e567a <main+0x7f6>
d03e5e4e:	2001      	movs	r0, #1
d03e5e50:	f7fa ffca 	bl	d03e0de8 <ui_scroll_vm>
d03e5e54:	e411      	b.n	d03e567a <main+0x7f6>
d03e5e56:	4b35      	ldr	r3, [pc, #212]	; (d03e5f2c <main+0x10a8>)
d03e5e58:	2201      	movs	r2, #1
d03e5e5a:	701a      	strb	r2, [r3, #0]
d03e5e5c:	e40d      	b.n	d03e567a <main+0x7f6>
d03e5e5e:	2001      	movs	r0, #1
d03e5e60:	f7fa ffe2 	bl	d03e0e28 <ui_vm_editor_field_delta>
d03e5e64:	e409      	b.n	d03e567a <main+0x7f6>
d03e5e66:	4832      	ldr	r0, [pc, #200]	; (d03e5f30 <main+0x10ac>)
d03e5e68:	f7fb fc44 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5e6c:	e405      	b.n	d03e567a <main+0x7f6>
d03e5e6e:	f06f 00ff 	mvn.w	r0, #255	; 0xff
d03e5e72:	f7fb fc3f 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5e76:	e400      	b.n	d03e567a <main+0x7f6>
d03e5e78:	f44f 7080 	mov.w	r0, #256	; 0x100
d03e5e7c:	f7fb fc3a 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5e80:	f7ff bbfb 	b.w	d03e567a <main+0x7f6>
d03e5e84:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d03e5e88:	f7fb fc34 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5e8c:	f7ff bbf5 	b.w	d03e567a <main+0x7f6>
d03e5e90:	f06f 000f 	mvn.w	r0, #15
d03e5e94:	f7fb fc2e 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5e98:	f7ff bbef 	b.w	d03e567a <main+0x7f6>
d03e5e9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e5ea0:	f7fb fc28 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5ea4:	f7ff bbe9 	b.w	d03e567a <main+0x7f6>
d03e5ea8:	2001      	movs	r0, #1
d03e5eaa:	f7fb fc23 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5eae:	f7ff bbe4 	b.w	d03e567a <main+0x7f6>
d03e5eb2:	2010      	movs	r0, #16
d03e5eb4:	f7fb fc1e 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e5eb8:	f7ff bbdf 	b.w	d03e567a <main+0x7f6>
d03e5ebc:	d03e9274 	.word	0xd03e9274
d03e5ec0:	d03e8d5c 	.word	0xd03e8d5c
d03e5ec4:	d03ec28f 	.word	0xd03ec28f
d03e5ec8:	d03ec28e 	.word	0xd03ec28e
d03e5ecc:	d03ec28d 	.word	0xd03ec28d
d03e5ed0:	d03ec213 	.word	0xd03ec213
d03e5ed4:	d03ebdc8 	.word	0xd03ebdc8
d03e5ed8:	d03eb4d4 	.word	0xd03eb4d4
d03e5edc:	d03ec2af 	.word	0xd03ec2af
d03e5ee0:	d03ea38e 	.word	0xd03ea38e
d03e5ee4:	d03ea174 	.word	0xd03ea174
d03e5ee8:	d03ea154 	.word	0xd03ea154
d03e5eec:	d03ea188 	.word	0xd03ea188
d03e5ef0:	d03ea18a 	.word	0xd03ea18a
d03e5ef4:	d03ec45b 	.word	0xd03ec45b
d03e5ef8:	d03ea164 	.word	0xd03ea164
d03e5efc:	d03ec460 	.word	0xd03ec460
d03e5f00:	d03e928c 	.word	0xd03e928c
d03e5f04:	d03e92a0 	.word	0xd03e92a0
d03e5f08:	d03e92c1 	.word	0xd03e92c1
d03e5f0c:	d03ec45c 	.word	0xd03ec45c
d03e5f10:	d03ec2da 	.word	0xd03ec2da
d03e5f14:	d03ec461 	.word	0xd03ec461
d03e5f18:	d03ec45a 	.word	0xd03ec45a
d03e5f1c:	d03ec469 	.word	0xd03ec469
d03e5f20:	d03ec463 	.word	0xd03ec463
d03e5f24:	d03ec462 	.word	0xd03ec462
d03e5f28:	d03e92d7 	.word	0xd03e92d7
d03e5f2c:	d03ebdc7 	.word	0xd03ebdc7
d03e5f30:	fffff000 	.word	0xfffff000
d03e5f34:	d03e9a7c 	.word	0xd03e9a7c
d03e5f38:	4bb4      	ldr	r3, [pc, #720]	; (d03e620c <main+0x1388>)
d03e5f3a:	781b      	ldrb	r3, [r3, #0]
d03e5f3c:	2b01      	cmp	r3, #1
d03e5f3e:	d149      	bne.n	d03e5fd4 <main+0x1150>
d03e5f40:	4bb3      	ldr	r3, [pc, #716]	; (d03e6210 <main+0x138c>)
d03e5f42:	4ab4      	ldr	r2, [pc, #720]	; (d03e6214 <main+0x1390>)
d03e5f44:	f893 9000 	ldrb.w	r9, [r3]
d03e5f48:	f993 3000 	ldrsb.w	r3, [r3]
d03e5f4c:	f8d2 a000 	ldr.w	sl, [r2]
d03e5f50:	2b00      	cmp	r3, #0
d03e5f52:	db02      	blt.n	d03e5f5a <main+0x10d6>
d03e5f54:	f1ba 0f00 	cmp.w	sl, #0
d03e5f58:	d103      	bne.n	d03e5f62 <main+0x10de>
d03e5f5a:	48af      	ldr	r0, [pc, #700]	; (d03e6218 <main+0x1394>)
d03e5f5c:	f7fb f90c 	bl	d03e1178 <ui_set_status>
d03e5f60:	e033      	b.n	d03e5fca <main+0x1146>
d03e5f62:	2300      	movs	r3, #0
d03e5f64:	1c5a      	adds	r2, r3, #1
d03e5f66:	f81a 3023 	ldrb.w	r3, [sl, r3, lsl #2]
d03e5f6a:	fa5f f882 	uxtb.w	r8, r2
d03e5f6e:	b11b      	cbz	r3, d03e5f78 <main+0x10f4>
d03e5f70:	2a60      	cmp	r2, #96	; 0x60
d03e5f72:	4613      	mov	r3, r2
d03e5f74:	d1f6      	bne.n	d03e5f64 <main+0x10e0>
d03e5f76:	4690      	mov	r8, r2
d03e5f78:	2600      	movs	r6, #0
d03e5f7a:	4fa8      	ldr	r7, [pc, #672]	; (d03e621c <main+0x1398>)
d03e5f7c:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03e5f80:	2100      	movs	r1, #0
d03e5f82:	48a6      	ldr	r0, [pc, #664]	; (d03e621c <main+0x1398>)
d03e5f84:	f001 fa2a 	bl	d03e73dc <memset>
d03e5f88:	eb0a 0186 	add.w	r1, sl, r6, lsl #2
d03e5f8c:	2204      	movs	r2, #4
d03e5f8e:	eb07 0086 	add.w	r0, r7, r6, lsl #2
d03e5f92:	3601      	adds	r6, #1
d03e5f94:	f001 fa14 	bl	d03e73c0 <memcpy>
d03e5f98:	b2f3      	uxtb	r3, r6
d03e5f9a:	4598      	cmp	r8, r3
d03e5f9c:	d8f4      	bhi.n	d03e5f88 <main+0x1104>
d03e5f9e:	4aa0      	ldr	r2, [pc, #640]	; (d03e6220 <main+0x139c>)
d03e5fa0:	2300      	movs	r3, #0
d03e5fa2:	2601      	movs	r6, #1
d03e5fa4:	f842 7029 	str.w	r7, [r2, r9, lsl #2]
d03e5fa8:	4a9e      	ldr	r2, [pc, #632]	; (d03e6224 <main+0x13a0>)
d03e5faa:	f887 317c 	strb.w	r3, [r7, #380]	; 0x17c
d03e5fae:	7013      	strb	r3, [r2, #0]
d03e5fb0:	4a9d      	ldr	r2, [pc, #628]	; (d03e6228 <main+0x13a4>)
d03e5fb2:	7013      	strb	r3, [r2, #0]
d03e5fb4:	4a9d      	ldr	r2, [pc, #628]	; (d03e622c <main+0x13a8>)
d03e5fb6:	7013      	strb	r3, [r2, #0]
d03e5fb8:	4b9d      	ldr	r3, [pc, #628]	; (d03e6230 <main+0x13ac>)
d03e5fba:	701e      	strb	r6, [r3, #0]
d03e5fbc:	f7fb fa0e 	bl	d03e13dc <sid_midi_all_notes_off>
d03e5fc0:	489c      	ldr	r0, [pc, #624]	; (d03e6234 <main+0x13b0>)
d03e5fc2:	f7fb f8d9 	bl	d03e1178 <ui_set_status>
d03e5fc6:	4b9c      	ldr	r3, [pc, #624]	; (d03e6238 <main+0x13b4>)
d03e5fc8:	701e      	strb	r6, [r3, #0]
d03e5fca:	4b90      	ldr	r3, [pc, #576]	; (d03e620c <main+0x1388>)
d03e5fcc:	2200      	movs	r2, #0
d03e5fce:	701a      	strb	r2, [r3, #0]
d03e5fd0:	f7ff bb53 	b.w	d03e567a <main+0x7f6>
d03e5fd4:	2b02      	cmp	r3, #2
d03e5fd6:	d1f8      	bne.n	d03e5fca <main+0x1146>
d03e5fd8:	f7fb fa1c 	bl	d03e1414 <seq_stop_playback_notes>
d03e5fdc:	2600      	movs	r6, #0
d03e5fde:	4b97      	ldr	r3, [pc, #604]	; (d03e623c <main+0x13b8>)
d03e5fe0:	4631      	mov	r1, r6
d03e5fe2:	4897      	ldr	r0, [pc, #604]	; (d03e6240 <main+0x13bc>)
d03e5fe4:	701e      	strb	r6, [r3, #0]
d03e5fe6:	4b97      	ldr	r3, [pc, #604]	; (d03e6244 <main+0x13c0>)
d03e5fe8:	701e      	strb	r6, [r3, #0]
d03e5fea:	4b97      	ldr	r3, [pc, #604]	; (d03e6248 <main+0x13c4>)
d03e5fec:	701e      	strb	r6, [r3, #0]
d03e5fee:	4b97      	ldr	r3, [pc, #604]	; (d03e624c <main+0x13c8>)
d03e5ff0:	701e      	strb	r6, [r3, #0]
d03e5ff2:	4b97      	ldr	r3, [pc, #604]	; (d03e6250 <main+0x13cc>)
d03e5ff4:	701e      	strb	r6, [r3, #0]
d03e5ff6:	4b97      	ldr	r3, [pc, #604]	; (d03e6254 <main+0x13d0>)
d03e5ff8:	801e      	strh	r6, [r3, #0]
d03e5ffa:	4b97      	ldr	r3, [pc, #604]	; (d03e6258 <main+0x13d4>)
d03e5ffc:	601e      	str	r6, [r3, #0]
d03e5ffe:	4b97      	ldr	r3, [pc, #604]	; (d03e625c <main+0x13d8>)
d03e6000:	681a      	ldr	r2, [r3, #0]
d03e6002:	4b97      	ldr	r3, [pc, #604]	; (d03e6260 <main+0x13dc>)
d03e6004:	601a      	str	r2, [r3, #0]
d03e6006:	f44f 5280 	mov.w	r2, #4096	; 0x1000
d03e600a:	4b96      	ldr	r3, [pc, #600]	; (d03e6264 <main+0x13e0>)
d03e600c:	701e      	strb	r6, [r3, #0]
d03e600e:	4b96      	ldr	r3, [pc, #600]	; (d03e6268 <main+0x13e4>)
d03e6010:	801e      	strh	r6, [r3, #0]
d03e6012:	4b96      	ldr	r3, [pc, #600]	; (d03e626c <main+0x13e8>)
d03e6014:	801e      	strh	r6, [r3, #0]
d03e6016:	f001 f9e1 	bl	d03e73dc <memset>
d03e601a:	22c0      	movs	r2, #192	; 0xc0
d03e601c:	4631      	mov	r1, r6
d03e601e:	4894      	ldr	r0, [pc, #592]	; (d03e6270 <main+0x13ec>)
d03e6020:	f001 f9dc 	bl	d03e73dc <memset>
d03e6024:	4893      	ldr	r0, [pc, #588]	; (d03e6274 <main+0x13f0>)
d03e6026:	e799      	b.n	d03e5f5c <main+0x10d8>
d03e6028:	4b78      	ldr	r3, [pc, #480]	; (d03e620c <main+0x1388>)
d03e602a:	2200      	movs	r2, #0
d03e602c:	4892      	ldr	r0, [pc, #584]	; (d03e6278 <main+0x13f4>)
d03e602e:	701a      	strb	r2, [r3, #0]
d03e6030:	f7fb f8a2 	bl	d03e1178 <ui_set_status>
d03e6034:	f7ff bb21 	b.w	d03e567a <main+0x7f6>
d03e6038:	4a90      	ldr	r2, [pc, #576]	; (d03e627c <main+0x13f8>)
d03e603a:	7813      	ldrb	r3, [r2, #0]
d03e603c:	2b00      	cmp	r3, #0
d03e603e:	f43f ab1c 	beq.w	d03e567a <main+0x7f6>
d03e6042:	3b01      	subs	r3, #1
d03e6044:	7013      	strb	r3, [r2, #0]
d03e6046:	f7ff bb18 	b.w	d03e567a <main+0x7f6>
d03e604a:	4a8c      	ldr	r2, [pc, #560]	; (d03e627c <main+0x13f8>)
d03e604c:	498c      	ldr	r1, [pc, #560]	; (d03e6280 <main+0x13fc>)
d03e604e:	7813      	ldrb	r3, [r2, #0]
d03e6050:	7809      	ldrb	r1, [r1, #0]
d03e6052:	1dd8      	adds	r0, r3, #7
d03e6054:	4288      	cmp	r0, r1
d03e6056:	f4bf ab10 	bcs.w	d03e567a <main+0x7f6>
d03e605a:	3301      	adds	r3, #1
d03e605c:	7013      	strb	r3, [r2, #0]
d03e605e:	f7ff bb0c 	b.w	d03e567a <main+0x7f6>
d03e6062:	2002      	movs	r0, #2
d03e6064:	f7fb fe54 	bl	d03e1d10 <ui_load_selected_file>
d03e6068:	f7ff bb07 	b.w	d03e567a <main+0x7f6>
d03e606c:	2001      	movs	r0, #1
d03e606e:	f7fb fe4f 	bl	d03e1d10 <ui_load_selected_file>
d03e6072:	f7ff bb02 	b.w	d03e567a <main+0x7f6>
d03e6076:	4b83      	ldr	r3, [pc, #524]	; (d03e6284 <main+0x1400>)
d03e6078:	2200      	movs	r2, #0
d03e607a:	4883      	ldr	r0, [pc, #524]	; (d03e6288 <main+0x1404>)
d03e607c:	701a      	strb	r2, [r3, #0]
d03e607e:	f7fb f87b 	bl	d03e1178 <ui_set_status>
d03e6082:	f7ff bafa 	b.w	d03e567a <main+0x7f6>
d03e6086:	4881      	ldr	r0, [pc, #516]	; (d03e628c <main+0x1408>)
d03e6088:	f001 fb6e 	bl	d03e7768 <strlen>
d03e608c:	4980      	ldr	r1, [pc, #512]	; (d03e6290 <main+0x140c>)
d03e608e:	b2c6      	uxtb	r6, r0
d03e6090:	780b      	ldrb	r3, [r1, #0]
d03e6092:	42b3      	cmp	r3, r6
d03e6094:	bf88      	it	hi
d03e6096:	700e      	strbhi	r6, [r1, #0]
d03e6098:	2800      	cmp	r0, #0
d03e609a:	f43f aaee 	beq.w	d03e567a <main+0x7f6>
d03e609e:	780b      	ldrb	r3, [r1, #0]
d03e60a0:	2b00      	cmp	r3, #0
d03e60a2:	f43f aaea 	beq.w	d03e567a <main+0x7f6>
d03e60a6:	3b01      	subs	r3, #1
d03e60a8:	4a78      	ldr	r2, [pc, #480]	; (d03e628c <main+0x1408>)
d03e60aa:	b2d8      	uxtb	r0, r3
d03e60ac:	fa52 f383 	uxtab	r3, r2, r3
d03e60b0:	4602      	mov	r2, r0
d03e60b2:	4296      	cmp	r6, r2
d03e60b4:	d808      	bhi.n	d03e60c8 <main+0x1244>
d03e60b6:	4b77      	ldr	r3, [pc, #476]	; (d03e6294 <main+0x1410>)
d03e60b8:	2200      	movs	r2, #0
d03e60ba:	7008      	strb	r0, [r1, #0]
d03e60bc:	701a      	strb	r2, [r3, #0]
d03e60be:	2201      	movs	r2, #1
d03e60c0:	4b75      	ldr	r3, [pc, #468]	; (d03e6298 <main+0x1414>)
d03e60c2:	701a      	strb	r2, [r3, #0]
d03e60c4:	f7ff bad9 	b.w	d03e567a <main+0x7f6>
d03e60c8:	785f      	ldrb	r7, [r3, #1]
d03e60ca:	3201      	adds	r2, #1
d03e60cc:	f803 7b01 	strb.w	r7, [r3], #1
d03e60d0:	b2d2      	uxtb	r2, r2
d03e60d2:	e7ee      	b.n	d03e60b2 <main+0x122e>
d03e60d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e60d8:	f7fb f89e 	bl	d03e1218 <ui_keyboard_move_caret>
d03e60dc:	f7ff bacd 	b.w	d03e567a <main+0x7f6>
d03e60e0:	2001      	movs	r0, #1
d03e60e2:	f7fb f899 	bl	d03e1218 <ui_keyboard_move_caret>
d03e60e6:	f7ff bac8 	b.w	d03e567a <main+0x7f6>
d03e60ea:	2300      	movs	r3, #0
d03e60ec:	4a67      	ldr	r2, [pc, #412]	; (d03e628c <main+0x1408>)
d03e60ee:	7013      	strb	r3, [r2, #0]
d03e60f0:	4a67      	ldr	r2, [pc, #412]	; (d03e6290 <main+0x140c>)
d03e60f2:	7013      	strb	r3, [r2, #0]
d03e60f4:	4a67      	ldr	r2, [pc, #412]	; (d03e6294 <main+0x1410>)
d03e60f6:	7013      	strb	r3, [r2, #0]
d03e60f8:	2201      	movs	r2, #1
d03e60fa:	4b67      	ldr	r3, [pc, #412]	; (d03e6298 <main+0x1414>)
d03e60fc:	701a      	strb	r2, [r3, #0]
d03e60fe:	f7ff babc 	b.w	d03e567a <main+0x7f6>
d03e6102:	2002      	movs	r0, #2
d03e6104:	f7fb fdb8 	bl	d03e1c78 <ui_keyboard_commit_save>
d03e6108:	f7ff bab7 	b.w	d03e567a <main+0x7f6>
d03e610c:	2001      	movs	r0, #1
d03e610e:	f7fb fdb3 	bl	d03e1c78 <ui_keyboard_commit_save>
d03e6112:	f7ff bab2 	b.w	d03e567a <main+0x7f6>
d03e6116:	4b5b      	ldr	r3, [pc, #364]	; (d03e6284 <main+0x1400>)
d03e6118:	2200      	movs	r2, #0
d03e611a:	4860      	ldr	r0, [pc, #384]	; (d03e629c <main+0x1418>)
d03e611c:	701a      	strb	r2, [r3, #0]
d03e611e:	f7fb f82b 	bl	d03e1178 <ui_set_status>
d03e6122:	f7ff baaa 	b.w	d03e567a <main+0x7f6>
d03e6126:	4b5e      	ldr	r3, [pc, #376]	; (d03e62a0 <main+0x141c>)
d03e6128:	781b      	ldrb	r3, [r3, #0]
d03e612a:	2b00      	cmp	r3, #0
d03e612c:	f43f aaa5 	beq.w	d03e567a <main+0x7f6>
d03e6130:	4e5c      	ldr	r6, [pc, #368]	; (d03e62a4 <main+0x1420>)
d03e6132:	7833      	ldrb	r3, [r6, #0]
d03e6134:	2b02      	cmp	r3, #2
d03e6136:	d008      	beq.n	d03e614a <main+0x12c6>
d03e6138:	7833      	ldrb	r3, [r6, #0]
d03e613a:	2b01      	cmp	r3, #1
d03e613c:	f47f aa9d 	bne.w	d03e567a <main+0x7f6>
d03e6140:	f7fb fcb8 	bl	d03e1ab4 <ui_program_save_path.constprop.0>
d03e6144:	b928      	cbnz	r0, d03e6152 <main+0x12ce>
d03e6146:	f7ff ba98 	b.w	d03e567a <main+0x7f6>
d03e614a:	f7fb fbdd 	bl	d03e1908 <ui_project_save_path.constprop.0>
d03e614e:	2800      	cmp	r0, #0
d03e6150:	d0f2      	beq.n	d03e6138 <main+0x12b4>
d03e6152:	4b4c      	ldr	r3, [pc, #304]	; (d03e6284 <main+0x1400>)
d03e6154:	2200      	movs	r2, #0
d03e6156:	701a      	strb	r2, [r3, #0]
d03e6158:	f7fb f87c 	bl	d03e1254 <ui_file_refresh>
d03e615c:	f7ff ba8d 	b.w	d03e567a <main+0x7f6>
d03e6160:	4b48      	ldr	r3, [pc, #288]	; (d03e6284 <main+0x1400>)
d03e6162:	2202      	movs	r2, #2
d03e6164:	4850      	ldr	r0, [pc, #320]	; (d03e62a8 <main+0x1424>)
d03e6166:	701a      	strb	r2, [r3, #0]
d03e6168:	f7fb f806 	bl	d03e1178 <ui_set_status>
d03e616c:	f7ff ba85 	b.w	d03e567a <main+0x7f6>
d03e6170:	f7fb f950 	bl	d03e1414 <seq_stop_playback_notes>
d03e6174:	2100      	movs	r1, #0
d03e6176:	4b35      	ldr	r3, [pc, #212]	; (d03e624c <main+0x13c8>)
d03e6178:	483d      	ldr	r0, [pc, #244]	; (d03e6270 <main+0x13ec>)
d03e617a:	7019      	strb	r1, [r3, #0]
d03e617c:	4b34      	ldr	r3, [pc, #208]	; (d03e6250 <main+0x13cc>)
d03e617e:	7019      	strb	r1, [r3, #0]
d03e6180:	4b34      	ldr	r3, [pc, #208]	; (d03e6254 <main+0x13d0>)
d03e6182:	8019      	strh	r1, [r3, #0]
d03e6184:	4b34      	ldr	r3, [pc, #208]	; (d03e6258 <main+0x13d4>)
d03e6186:	6019      	str	r1, [r3, #0]
d03e6188:	4b34      	ldr	r3, [pc, #208]	; (d03e625c <main+0x13d8>)
d03e618a:	681a      	ldr	r2, [r3, #0]
d03e618c:	4b34      	ldr	r3, [pc, #208]	; (d03e6260 <main+0x13dc>)
d03e618e:	601a      	str	r2, [r3, #0]
d03e6190:	22c0      	movs	r2, #192	; 0xc0
d03e6192:	f001 f923 	bl	d03e73dc <memset>
d03e6196:	4845      	ldr	r0, [pc, #276]	; (d03e62ac <main+0x1428>)
d03e6198:	f7fa ffee 	bl	d03e1178 <ui_set_status>
d03e619c:	f7ff ba6d 	b.w	d03e567a <main+0x7f6>
d03e61a0:	4b28      	ldr	r3, [pc, #160]	; (d03e6244 <main+0x13c0>)
d03e61a2:	781a      	ldrb	r2, [r3, #0]
d03e61a4:	b19a      	cbz	r2, d03e61ce <main+0x134a>
d03e61a6:	2100      	movs	r1, #0
d03e61a8:	22c0      	movs	r2, #192	; 0xc0
d03e61aa:	4831      	ldr	r0, [pc, #196]	; (d03e6270 <main+0x13ec>)
d03e61ac:	7019      	strb	r1, [r3, #0]
d03e61ae:	4b26      	ldr	r3, [pc, #152]	; (d03e6248 <main+0x13c4>)
d03e61b0:	7019      	strb	r1, [r3, #0]
d03e61b2:	f001 f913 	bl	d03e73dc <memset>
d03e61b6:	4b21      	ldr	r3, [pc, #132]	; (d03e623c <main+0x13b8>)
d03e61b8:	4a3d      	ldr	r2, [pc, #244]	; (d03e62b0 <main+0x142c>)
d03e61ba:	7818      	ldrb	r0, [r3, #0]
d03e61bc:	4b3d      	ldr	r3, [pc, #244]	; (d03e62b4 <main+0x1430>)
d03e61be:	2800      	cmp	r0, #0
d03e61c0:	bf14      	ite	ne
d03e61c2:	4610      	movne	r0, r2
d03e61c4:	4618      	moveq	r0, r3
d03e61c6:	f7fa ffd7 	bl	d03e1178 <ui_set_status>
d03e61ca:	f7ff ba56 	b.w	d03e567a <main+0x7f6>
d03e61ce:	4b1f      	ldr	r3, [pc, #124]	; (d03e624c <main+0x13c8>)
d03e61d0:	7819      	ldrb	r1, [r3, #0]
d03e61d2:	b139      	cbz	r1, d03e61e4 <main+0x1360>
d03e61d4:	2001      	movs	r0, #1
d03e61d6:	f7fb f931 	bl	d03e143c <seq_stop_transport>
d03e61da:	4837      	ldr	r0, [pc, #220]	; (d03e62b8 <main+0x1434>)
d03e61dc:	f7fa ffcc 	bl	d03e1178 <ui_set_status>
d03e61e0:	f7ff ba4b 	b.w	d03e567a <main+0x7f6>
d03e61e4:	4a18      	ldr	r2, [pc, #96]	; (d03e6248 <main+0x13c4>)
d03e61e6:	4822      	ldr	r0, [pc, #136]	; (d03e6270 <main+0x13ec>)
d03e61e8:	7816      	ldrb	r6, [r2, #0]
d03e61ea:	fab6 f386 	clz	r3, r6
d03e61ee:	095b      	lsrs	r3, r3, #5
d03e61f0:	7013      	strb	r3, [r2, #0]
d03e61f2:	22c0      	movs	r2, #192	; 0xc0
d03e61f4:	f001 f8f2 	bl	d03e73dc <memset>
d03e61f8:	4b30      	ldr	r3, [pc, #192]	; (d03e62bc <main+0x1438>)
d03e61fa:	4831      	ldr	r0, [pc, #196]	; (d03e62c0 <main+0x143c>)
d03e61fc:	2e00      	cmp	r6, #0
d03e61fe:	bf18      	it	ne
d03e6200:	4618      	movne	r0, r3
d03e6202:	f7fa ffb9 	bl	d03e1178 <ui_set_status>
d03e6206:	f7ff ba38 	b.w	d03e567a <main+0x7f6>
d03e620a:	bf00      	nop
d03e620c:	d03ebdc7 	.word	0xd03ebdc7
d03e6210:	d03ec460 	.word	0xd03ec460
d03e6214:	d03ec45c 	.word	0xd03ec45c
d03e6218:	d03e92f0 	.word	0xd03e92f0
d03e621c:	d03ec2da 	.word	0xd03ec2da
d03e6220:	d03e9a7c 	.word	0xd03e9a7c
d03e6224:	d03ec461 	.word	0xd03ec461
d03e6228:	d03ec45a 	.word	0xd03ec45a
d03e622c:	d03ec469 	.word	0xd03ec469
d03e6230:	d03ec45b 	.word	0xd03ec45b
d03e6234:	d03e9309 	.word	0xd03e9309
d03e6238:	d03eb4d4 	.word	0xd03eb4d4
d03e623c:	d03eb490 	.word	0xd03eb490
d03e6240:	d03ea3d0 	.word	0xd03ea3d0
d03e6244:	d03eb499 	.word	0xd03eb499
d03e6248:	d03eb498 	.word	0xd03eb498
d03e624c:	d03ea3b4 	.word	0xd03ea3b4
d03e6250:	d03ea3b8 	.word	0xd03ea3b8
d03e6254:	d03ea3b6 	.word	0xd03ea3b6
d03e6258:	d03eb494 	.word	0xd03eb494
d03e625c:	d03ea3b0 	.word	0xd03ea3b0
d03e6260:	d03ea3c4 	.word	0xd03ea3c4
d03e6264:	d03ea3c2 	.word	0xd03ea3c2
d03e6268:	d03ea3ce 	.word	0xd03ea3ce
d03e626c:	d03ea3cc 	.word	0xd03ea3cc
d03e6270:	d03eb3d0 	.word	0xd03eb3d0
d03e6274:	d03e9321 	.word	0xd03e9321
d03e6278:	d03e9263 	.word	0xd03e9263
d03e627c:	d03ec20d 	.word	0xd03ec20d
d03e6280:	d03ebe0c 	.word	0xd03ebe0c
d03e6284:	d03ebdc8 	.word	0xd03ebdc8
d03e6288:	d03e9333 	.word	0xd03e9333
d03e628c:	d03ec28f 	.word	0xd03ec28f
d03e6290:	d03ec28d 	.word	0xd03ec28d
d03e6294:	d03ec463 	.word	0xd03ec463
d03e6298:	d03ec462 	.word	0xd03ec462
d03e629c:	d03e9342 	.word	0xd03e9342
d03e62a0:	d03ec213 	.word	0xd03ec213
d03e62a4:	d03ec28e 	.word	0xd03ec28e
d03e62a8:	d03e9351 	.word	0xd03e9351
d03e62ac:	d03e9365 	.word	0xd03e9365
d03e62b0:	d03e921d 	.word	0xd03e921d
d03e62b4:	d03e9229 	.word	0xd03e9229
d03e62b8:	d03e9377 	.word	0xd03e9377
d03e62bc:	d03e9241 	.word	0xd03e9241
d03e62c0:	d03e9234 	.word	0xd03e9234
d03e62c4:	4f44      	ldr	r7, [pc, #272]	; (d03e63d8 <main+0x1554>)
d03e62c6:	4e45      	ldr	r6, [pc, #276]	; (d03e63dc <main+0x1558>)
d03e62c8:	783b      	ldrb	r3, [r7, #0]
d03e62ca:	7832      	ldrb	r2, [r6, #0]
d03e62cc:	4313      	orrs	r3, r2
d03e62ce:	4a44      	ldr	r2, [pc, #272]	; (d03e63e0 <main+0x155c>)
d03e62d0:	7812      	ldrb	r2, [r2, #0]
d03e62d2:	4313      	orrs	r3, r2
d03e62d4:	d007      	beq.n	d03e62e6 <main+0x1462>
d03e62d6:	2001      	movs	r0, #1
d03e62d8:	f7fb f8b0 	bl	d03e143c <seq_stop_transport>
d03e62dc:	4841      	ldr	r0, [pc, #260]	; (d03e63e4 <main+0x1560>)
d03e62de:	f7fa ff4b 	bl	d03e1178 <ui_set_status>
d03e62e2:	f7ff b9ca 	b.w	d03e567a <main+0x7f6>
d03e62e6:	4b40      	ldr	r3, [pc, #256]	; (d03e63e8 <main+0x1564>)
d03e62e8:	f893 8000 	ldrb.w	r8, [r3]
d03e62ec:	f1b8 0f00 	cmp.w	r8, #0
d03e62f0:	d003      	beq.n	d03e62fa <main+0x1476>
d03e62f2:	f7fc fa0d 	bl	d03e2710 <seq_begin_count_in>
d03e62f6:	f7ff b9c0 	b.w	d03e567a <main+0x7f6>
d03e62fa:	f7fb f88b 	bl	d03e1414 <seq_stop_playback_notes>
d03e62fe:	2301      	movs	r3, #1
d03e6300:	483a      	ldr	r0, [pc, #232]	; (d03e63ec <main+0x1568>)
d03e6302:	703b      	strb	r3, [r7, #0]
d03e6304:	4b3a      	ldr	r3, [pc, #232]	; (d03e63f0 <main+0x156c>)
d03e6306:	f886 8000 	strb.w	r8, [r6]
d03e630a:	681a      	ldr	r2, [r3, #0]
d03e630c:	4b39      	ldr	r3, [pc, #228]	; (d03e63f4 <main+0x1570>)
d03e630e:	601a      	str	r2, [r3, #0]
d03e6310:	f7fa ff32 	bl	d03e1178 <ui_set_status>
d03e6314:	f7ff b9b1 	b.w	d03e567a <main+0x7f6>
d03e6318:	4b33      	ldr	r3, [pc, #204]	; (d03e63e8 <main+0x1564>)
d03e631a:	781e      	ldrb	r6, [r3, #0]
d03e631c:	2e00      	cmp	r6, #0
d03e631e:	d1e8      	bne.n	d03e62f2 <main+0x146e>
d03e6320:	f7fb f878 	bl	d03e1414 <seq_stop_playback_notes>
d03e6324:	4b2c      	ldr	r3, [pc, #176]	; (d03e63d8 <main+0x1554>)
d03e6326:	2201      	movs	r2, #1
d03e6328:	4833      	ldr	r0, [pc, #204]	; (d03e63f8 <main+0x1574>)
d03e632a:	701a      	strb	r2, [r3, #0]
d03e632c:	4b2b      	ldr	r3, [pc, #172]	; (d03e63dc <main+0x1558>)
d03e632e:	701e      	strb	r6, [r3, #0]
d03e6330:	4b2f      	ldr	r3, [pc, #188]	; (d03e63f0 <main+0x156c>)
d03e6332:	681a      	ldr	r2, [r3, #0]
d03e6334:	4b2f      	ldr	r3, [pc, #188]	; (d03e63f4 <main+0x1570>)
d03e6336:	601a      	str	r2, [r3, #0]
d03e6338:	f7fa ff1e 	bl	d03e1178 <ui_set_status>
d03e633c:	f7ff b99d 	b.w	d03e567a <main+0x7f6>
d03e6340:	4a2e      	ldr	r2, [pc, #184]	; (d03e63fc <main+0x1578>)
d03e6342:	8813      	ldrh	r3, [r2, #0]
d03e6344:	3b01      	subs	r3, #1
d03e6346:	b21b      	sxth	r3, r3
d03e6348:	2bf0      	cmp	r3, #240	; 0xf0
d03e634a:	bfa8      	it	ge
d03e634c:	23f0      	movge	r3, #240	; 0xf0
d03e634e:	2b28      	cmp	r3, #40	; 0x28
d03e6350:	bfb8      	it	lt
d03e6352:	2328      	movlt	r3, #40	; 0x28
d03e6354:	8013      	strh	r3, [r2, #0]
d03e6356:	f7ff b990 	b.w	d03e567a <main+0x7f6>
d03e635a:	4a28      	ldr	r2, [pc, #160]	; (d03e63fc <main+0x1578>)
d03e635c:	8813      	ldrh	r3, [r2, #0]
d03e635e:	3301      	adds	r3, #1
d03e6360:	b21b      	sxth	r3, r3
d03e6362:	2bf0      	cmp	r3, #240	; 0xf0
d03e6364:	bfa8      	it	ge
d03e6366:	23f0      	movge	r3, #240	; 0xf0
d03e6368:	2b28      	cmp	r3, #40	; 0x28
d03e636a:	bfb8      	it	lt
d03e636c:	2328      	movlt	r3, #40	; 0x28
d03e636e:	8013      	strh	r3, [r2, #0]
d03e6370:	f7ff b983 	b.w	d03e567a <main+0x7f6>
d03e6374:	4a22      	ldr	r2, [pc, #136]	; (d03e6400 <main+0x157c>)
d03e6376:	7813      	ldrb	r3, [r2, #0]
d03e6378:	fab3 f383 	clz	r3, r3
d03e637c:	095b      	lsrs	r3, r3, #5
d03e637e:	7013      	strb	r3, [r2, #0]
d03e6380:	f7ff b97b 	b.w	d03e567a <main+0x7f6>
d03e6384:	4a1f      	ldr	r2, [pc, #124]	; (d03e6404 <main+0x1580>)
d03e6386:	7813      	ldrb	r3, [r2, #0]
d03e6388:	2b00      	cmp	r3, #0
d03e638a:	f43f a976 	beq.w	d03e567a <main+0x7f6>
d03e638e:	3b01      	subs	r3, #1
d03e6390:	7013      	strb	r3, [r2, #0]
d03e6392:	f7ff b972 	b.w	d03e567a <main+0x7f6>
d03e6396:	4a1b      	ldr	r2, [pc, #108]	; (d03e6404 <main+0x1580>)
d03e6398:	7813      	ldrb	r3, [r2, #0]
d03e639a:	2b02      	cmp	r3, #2
d03e639c:	f63f a96d 	bhi.w	d03e567a <main+0x7f6>
d03e63a0:	3301      	adds	r3, #1
d03e63a2:	7013      	strb	r3, [r2, #0]
d03e63a4:	f7ff b969 	b.w	d03e567a <main+0x7f6>
d03e63a8:	4b17      	ldr	r3, [pc, #92]	; (d03e6408 <main+0x1584>)
d03e63aa:	2202      	movs	r2, #2
d03e63ac:	701a      	strb	r2, [r3, #0]
d03e63ae:	f7ff b964 	b.w	d03e567a <main+0x7f6>
d03e63b2:	4e16      	ldr	r6, [pc, #88]	; (d03e640c <main+0x1588>)
d03e63b4:	7833      	ldrb	r3, [r6, #0]
d03e63b6:	b143      	cbz	r3, d03e63ca <main+0x1546>
d03e63b8:	f7fa fffe 	bl	d03e13b8 <seq_midi_out_all_notes_off>
d03e63bc:	2300      	movs	r3, #0
d03e63be:	4814      	ldr	r0, [pc, #80]	; (d03e6410 <main+0x158c>)
d03e63c0:	7033      	strb	r3, [r6, #0]
d03e63c2:	f7fa fed9 	bl	d03e1178 <ui_set_status>
d03e63c6:	f7ff b958 	b.w	d03e567a <main+0x7f6>
d03e63ca:	2301      	movs	r3, #1
d03e63cc:	4811      	ldr	r0, [pc, #68]	; (d03e6414 <main+0x1590>)
d03e63ce:	7033      	strb	r3, [r6, #0]
d03e63d0:	f7fa fed2 	bl	d03e1178 <ui_set_status>
d03e63d4:	f7ff b951 	b.w	d03e567a <main+0x7f6>
d03e63d8:	d03eb490 	.word	0xd03eb490
d03e63dc:	d03eb499 	.word	0xd03eb499
d03e63e0:	d03ea3b4 	.word	0xd03ea3b4
d03e63e4:	d03e9388 	.word	0xd03e9388
d03e63e8:	d03eb498 	.word	0xd03eb498
d03e63ec:	d03e939a 	.word	0xd03e939a
d03e63f0:	d03ea3b0 	.word	0xd03ea3b0
d03e63f4:	d03ea3c4 	.word	0xd03ea3c4
d03e63f8:	d03e93ac 	.word	0xd03e93ac
d03e63fc:	d03ea3ac 	.word	0xd03ea3ac
d03e6400:	d03eb49a 	.word	0xd03eb49a
d03e6404:	d03eb49b 	.word	0xd03eb49b
d03e6408:	d03ebdc7 	.word	0xd03ebdc7
d03e640c:	d03ea3ca 	.word	0xd03ea3ca
d03e6410:	d03e93bd 	.word	0xd03e93bd
d03e6414:	d03e93d4 	.word	0xd03e93d4
d03e6418:	9b02      	ldr	r3, [sp, #8]
d03e641a:	f8df 9358 	ldr.w	r9, [pc, #856]	; d03e6774 <main+0x18f0>
d03e641e:	f003 0303 	and.w	r3, r3, #3
d03e6422:	4fa8      	ldr	r7, [pc, #672]	; (d03e66c4 <main+0x1840>)
d03e6424:	2b03      	cmp	r3, #3
d03e6426:	bf04      	itt	eq
d03e6428:	2301      	moveq	r3, #1
d03e642a:	f889 3000 	strbeq.w	r3, [r9]
d03e642e:	4ba6      	ldr	r3, [pc, #664]	; (d03e66c8 <main+0x1844>)
d03e6430:	781b      	ldrb	r3, [r3, #0]
d03e6432:	2b00      	cmp	r3, #0
d03e6434:	f000 81a4 	beq.w	d03e6780 <main+0x18fc>
d03e6438:	9b02      	ldr	r3, [sp, #8]
d03e643a:	703b      	strb	r3, [r7, #0]
d03e643c:	f899 6000 	ldrb.w	r6, [r9]
d03e6440:	2e00      	cmp	r6, #0
d03e6442:	f040 86cf 	bne.w	d03e71e4 <main+0x2360>
d03e6446:	f8df 8328 	ldr.w	r8, [pc, #808]	; d03e6770 <main+0x18ec>
d03e644a:	4aa0      	ldr	r2, [pc, #640]	; (d03e66cc <main+0x1848>)
d03e644c:	f898 3000 	ldrb.w	r3, [r8]
d03e6450:	f88d 602c 	strb.w	r6, [sp, #44]	; 0x2c
d03e6454:	f812 b003 	ldrb.w	fp, [r2, r3]
d03e6458:	9302      	str	r3, [sp, #8]
d03e645a:	4658      	mov	r0, fp
d03e645c:	f88d 6030 	strb.w	r6, [sp, #48]	; 0x30
d03e6460:	f7fa fc92 	bl	d03e0d88 <vm_program_length>
d03e6464:	4b9a      	ldr	r3, [pc, #616]	; (d03e66d0 <main+0x184c>)
d03e6466:	f8df a310 	ldr.w	sl, [pc, #784]	; d03e6778 <main+0x18f4>
d03e646a:	4607      	mov	r7, r0
d03e646c:	781a      	ldrb	r2, [r3, #0]
d03e646e:	f88a 6000 	strb.w	r6, [sl]
d03e6472:	2a04      	cmp	r2, #4
d03e6474:	d106      	bne.n	d03e6484 <main+0x1600>
d03e6476:	f01b 0f80 	tst.w	fp, #128	; 0x80
d03e647a:	d103      	bne.n	d03e6484 <main+0x1600>
d03e647c:	9b02      	ldr	r3, [sp, #8]
d03e647e:	2800      	cmp	r0, #0
d03e6480:	f040 8246 	bne.w	d03e6910 <main+0x1a8c>
d03e6484:	4f93      	ldr	r7, [pc, #588]	; (d03e66d4 <main+0x1850>)
d03e6486:	783b      	ldrb	r3, [r7, #0]
d03e6488:	b13b      	cbz	r3, d03e649a <main+0x1616>
d03e648a:	4b93      	ldr	r3, [pc, #588]	; (d03e66d8 <main+0x1854>)
d03e648c:	781a      	ldrb	r2, [r3, #0]
d03e648e:	4b93      	ldr	r3, [pc, #588]	; (d03e66dc <main+0x1858>)
d03e6490:	701a      	strb	r2, [r3, #0]
d03e6492:	f7fa fc8f 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e6496:	2300      	movs	r3, #0
d03e6498:	703b      	strb	r3, [r7, #0]
d03e649a:	4b8d      	ldr	r3, [pc, #564]	; (d03e66d0 <main+0x184c>)
d03e649c:	2700      	movs	r7, #0
d03e649e:	4890      	ldr	r0, [pc, #576]	; (d03e66e0 <main+0x185c>)
d03e64a0:	781a      	ldrb	r2, [r3, #0]
d03e64a2:	4b90      	ldr	r3, [pc, #576]	; (d03e66e4 <main+0x1860>)
d03e64a4:	f898 1000 	ldrb.w	r1, [r8]
d03e64a8:	4413      	add	r3, r2
d03e64aa:	4058      	eors	r0, r3
d03e64ac:	f7fa fd90 	bl	d03e0fd0 <ui_hash_step>
d03e64b0:	4b8d      	ldr	r3, [pc, #564]	; (d03e66e8 <main+0x1864>)
d03e64b2:	7819      	ldrb	r1, [r3, #0]
d03e64b4:	f7fa fd8c 	bl	d03e0fd0 <ui_hash_step>
d03e64b8:	498c      	ldr	r1, [pc, #560]	; (d03e66ec <main+0x1868>)
d03e64ba:	4603      	mov	r3, r0
d03e64bc:	4688      	mov	r8, r1
d03e64be:	9102      	str	r1, [sp, #8]
d03e64c0:	3701      	adds	r7, #1
d03e64c2:	4618      	mov	r0, r3
d03e64c4:	f818 1b01 	ldrb.w	r1, [r8], #1
d03e64c8:	b2ff      	uxtb	r7, r7
d03e64ca:	f7fa fd81 	bl	d03e0fd0 <ui_hash_step>
d03e64ce:	4603      	mov	r3, r0
d03e64d0:	2f04      	cmp	r7, #4
d03e64d2:	d1f5      	bne.n	d03e64c0 <main+0x163c>
d03e64d4:	4b81      	ldr	r3, [pc, #516]	; (d03e66dc <main+0x1858>)
d03e64d6:	781f      	ldrb	r7, [r3, #0]
d03e64d8:	4639      	mov	r1, r7
d03e64da:	f7fa fd79 	bl	d03e0fd0 <ui_hash_step>
d03e64de:	4b84      	ldr	r3, [pc, #528]	; (d03e66f0 <main+0x186c>)
d03e64e0:	f893 8000 	ldrb.w	r8, [r3]
d03e64e4:	4641      	mov	r1, r8
d03e64e6:	f7fa fd73 	bl	d03e0fd0 <ui_hash_step>
d03e64ea:	4b82      	ldr	r3, [pc, #520]	; (d03e66f4 <main+0x1870>)
d03e64ec:	f893 a000 	ldrb.w	sl, [r3]
d03e64f0:	4651      	mov	r1, sl
d03e64f2:	f7fa fd6d 	bl	d03e0fd0 <ui_hash_step>
d03e64f6:	4b80      	ldr	r3, [pc, #512]	; (d03e66f8 <main+0x1874>)
d03e64f8:	7819      	ldrb	r1, [r3, #0]
d03e64fa:	f7fa fd69 	bl	d03e0fd0 <ui_hash_step>
d03e64fe:	4b7f      	ldr	r3, [pc, #508]	; (d03e66fc <main+0x1878>)
d03e6500:	7819      	ldrb	r1, [r3, #0]
d03e6502:	f7fa fd65 	bl	d03e0fd0 <ui_hash_step>
d03e6506:	2a04      	cmp	r2, #4
d03e6508:	f040 8224 	bne.w	d03e6954 <main+0x1ad0>
d03e650c:	f1b8 0f00 	cmp.w	r8, #0
d03e6510:	f000 8222 	beq.w	d03e6958 <main+0x1ad4>
d03e6514:	4b7a      	ldr	r3, [pc, #488]	; (d03e6700 <main+0x187c>)
d03e6516:	7819      	ldrb	r1, [r3, #0]
d03e6518:	b2c9      	uxtb	r1, r1
d03e651a:	f7fa fd59 	bl	d03e0fd0 <ui_hash_step>
d03e651e:	4b6a      	ldr	r3, [pc, #424]	; (d03e66c8 <main+0x1844>)
d03e6520:	7819      	ldrb	r1, [r3, #0]
d03e6522:	f7fa fd55 	bl	d03e0fd0 <ui_hash_step>
d03e6526:	4b77      	ldr	r3, [pc, #476]	; (d03e6704 <main+0x1880>)
d03e6528:	781a      	ldrb	r2, [r3, #0]
d03e652a:	4611      	mov	r1, r2
d03e652c:	f7fa fd50 	bl	d03e0fd0 <ui_hash_step>
d03e6530:	4b75      	ldr	r3, [pc, #468]	; (d03e6708 <main+0x1884>)
d03e6532:	f893 b000 	ldrb.w	fp, [r3]
d03e6536:	4659      	mov	r1, fp
d03e6538:	f7fa fd4a 	bl	d03e0fd0 <ui_hash_step>
d03e653c:	4b73      	ldr	r3, [pc, #460]	; (d03e670c <main+0x1888>)
d03e653e:	f893 8000 	ldrb.w	r8, [r3]
d03e6542:	4641      	mov	r1, r8
d03e6544:	f7fa fd44 	bl	d03e0fd0 <ui_hash_step>
d03e6548:	4b71      	ldr	r3, [pc, #452]	; (d03e6710 <main+0x188c>)
d03e654a:	7819      	ldrb	r1, [r3, #0]
d03e654c:	f7fa fd40 	bl	d03e0fd0 <ui_hash_step>
d03e6550:	4b70      	ldr	r3, [pc, #448]	; (d03e6714 <main+0x1890>)
d03e6552:	7819      	ldrb	r1, [r3, #0]
d03e6554:	f7fa fd3c 	bl	d03e0fd0 <ui_hash_step>
d03e6558:	4b6f      	ldr	r3, [pc, #444]	; (d03e6718 <main+0x1894>)
d03e655a:	7819      	ldrb	r1, [r3, #0]
d03e655c:	f7fa fd38 	bl	d03e0fd0 <ui_hash_step>
d03e6560:	2a02      	cmp	r2, #2
d03e6562:	f040 81fb 	bne.w	d03e695c <main+0x1ad8>
d03e6566:	4b66      	ldr	r3, [pc, #408]	; (d03e6700 <main+0x187c>)
d03e6568:	7819      	ldrb	r1, [r3, #0]
d03e656a:	b2c9      	uxtb	r1, r1
d03e656c:	f7fa fd30 	bl	d03e0fd0 <ui_hash_step>
d03e6570:	4b6a      	ldr	r3, [pc, #424]	; (d03e671c <main+0x1898>)
d03e6572:	7819      	ldrb	r1, [r3, #0]
d03e6574:	f7fa fd2c 	bl	d03e0fd0 <ui_hash_step>
d03e6578:	4b69      	ldr	r3, [pc, #420]	; (d03e6720 <main+0x189c>)
d03e657a:	8819      	ldrh	r1, [r3, #0]
d03e657c:	f7fa fd28 	bl	d03e0fd0 <ui_hash_step>
d03e6580:	4b68      	ldr	r3, [pc, #416]	; (d03e6724 <main+0x18a0>)
d03e6582:	8819      	ldrh	r1, [r3, #0]
d03e6584:	f7fa fd24 	bl	d03e0fd0 <ui_hash_step>
d03e6588:	4b67      	ldr	r3, [pc, #412]	; (d03e6728 <main+0x18a4>)
d03e658a:	7819      	ldrb	r1, [r3, #0]
d03e658c:	f7fa fd20 	bl	d03e0fd0 <ui_hash_step>
d03e6590:	4b66      	ldr	r3, [pc, #408]	; (d03e672c <main+0x18a8>)
d03e6592:	7819      	ldrb	r1, [r3, #0]
d03e6594:	f7fa fd1c 	bl	d03e0fd0 <ui_hash_step>
d03e6598:	4b65      	ldr	r3, [pc, #404]	; (d03e6730 <main+0x18ac>)
d03e659a:	7819      	ldrb	r1, [r3, #0]
d03e659c:	f7fa fd18 	bl	d03e0fd0 <ui_hash_step>
d03e65a0:	4b64      	ldr	r3, [pc, #400]	; (d03e6734 <main+0x18b0>)
d03e65a2:	7819      	ldrb	r1, [r3, #0]
d03e65a4:	f7fa fd14 	bl	d03e0fd0 <ui_hash_step>
d03e65a8:	4b63      	ldr	r3, [pc, #396]	; (d03e6738 <main+0x18b4>)
d03e65aa:	7819      	ldrb	r1, [r3, #0]
d03e65ac:	f7fa fd10 	bl	d03e0fd0 <ui_hash_step>
d03e65b0:	4b62      	ldr	r3, [pc, #392]	; (d03e673c <main+0x18b8>)
d03e65b2:	7819      	ldrb	r1, [r3, #0]
d03e65b4:	f7fa fd0c 	bl	d03e0fd0 <ui_hash_step>
d03e65b8:	4b61      	ldr	r3, [pc, #388]	; (d03e6740 <main+0x18bc>)
d03e65ba:	8819      	ldrh	r1, [r3, #0]
d03e65bc:	f7fa fd08 	bl	d03e0fd0 <ui_hash_step>
d03e65c0:	4b60      	ldr	r3, [pc, #384]	; (d03e6744 <main+0x18c0>)
d03e65c2:	7819      	ldrb	r1, [r3, #0]
d03e65c4:	f7fa fd04 	bl	d03e0fd0 <ui_hash_step>
d03e65c8:	4b5f      	ldr	r3, [pc, #380]	; (d03e6748 <main+0x18c4>)
d03e65ca:	7819      	ldrb	r1, [r3, #0]
d03e65cc:	f7fa fd00 	bl	d03e0fd0 <ui_hash_step>
d03e65d0:	4b5e      	ldr	r3, [pc, #376]	; (d03e674c <main+0x18c8>)
d03e65d2:	7819      	ldrb	r1, [r3, #0]
d03e65d4:	f7fa fcfc 	bl	d03e0fd0 <ui_hash_step>
d03e65d8:	4b5d      	ldr	r3, [pc, #372]	; (d03e6750 <main+0x18cc>)
d03e65da:	8819      	ldrh	r1, [r3, #0]
d03e65dc:	f7fa fcf8 	bl	d03e0fd0 <ui_hash_step>
d03e65e0:	4a5c      	ldr	r2, [pc, #368]	; (d03e6754 <main+0x18d0>)
d03e65e2:	4684      	mov	ip, r0
d03e65e4:	f812 1b01 	ldrb.w	r1, [r2], #1
d03e65e8:	4660      	mov	r0, ip
d03e65ea:	f7fa fcf1 	bl	d03e0fd0 <ui_hash_step>
d03e65ee:	4684      	mov	ip, r0
d03e65f0:	b119      	cbz	r1, d03e65fa <main+0x1776>
d03e65f2:	3601      	adds	r6, #1
d03e65f4:	b2f6      	uxtb	r6, r6
d03e65f6:	2e20      	cmp	r6, #32
d03e65f8:	d1f4      	bne.n	d03e65e4 <main+0x1760>
d03e65fa:	4a57      	ldr	r2, [pc, #348]	; (d03e6758 <main+0x18d4>)
d03e65fc:	2600      	movs	r6, #0
d03e65fe:	eb02 1248 	add.w	r2, r2, r8, lsl #5
d03e6602:	eb08 0306 	add.w	r3, r8, r6
d03e6606:	b2db      	uxtb	r3, r3
d03e6608:	459b      	cmp	fp, r3
d03e660a:	d911      	bls.n	d03e6630 <main+0x17ac>
d03e660c:	4691      	mov	r9, r2
d03e660e:	f102 0320 	add.w	r3, r2, #32
d03e6612:	f819 1b01 	ldrb.w	r1, [r9], #1
d03e6616:	4660      	mov	r0, ip
d03e6618:	9303      	str	r3, [sp, #12]
d03e661a:	f7fa fcd9 	bl	d03e0fd0 <ui_hash_step>
d03e661e:	4684      	mov	ip, r0
d03e6620:	b111      	cbz	r1, d03e6628 <main+0x17a4>
d03e6622:	9b03      	ldr	r3, [sp, #12]
d03e6624:	454b      	cmp	r3, r9
d03e6626:	d1f4      	bne.n	d03e6612 <main+0x178e>
d03e6628:	3601      	adds	r6, #1
d03e662a:	3220      	adds	r2, #32
d03e662c:	2e07      	cmp	r6, #7
d03e662e:	d1e8      	bne.n	d03e6602 <main+0x177e>
d03e6630:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
d03e6634:	d017      	beq.n	d03e6666 <main+0x17e2>
d03e6636:	4a49      	ldr	r2, [pc, #292]	; (d03e675c <main+0x18d8>)
d03e6638:	2600      	movs	r6, #0
d03e663a:	eb02 0287 	add.w	r2, r2, r7, lsl #2
d03e663e:	19bb      	adds	r3, r7, r6
d03e6640:	b2db      	uxtb	r3, r3
d03e6642:	2b5f      	cmp	r3, #95	; 0x5f
d03e6644:	d80f      	bhi.n	d03e6666 <main+0x17e2>
d03e6646:	7811      	ldrb	r1, [r2, #0]
d03e6648:	4660      	mov	r0, ip
d03e664a:	f7fa fcc1 	bl	d03e0fd0 <ui_hash_step>
d03e664e:	3601      	adds	r6, #1
d03e6650:	7851      	ldrb	r1, [r2, #1]
d03e6652:	f7fa fcbd 	bl	d03e0fd0 <ui_hash_step>
d03e6656:	8851      	ldrh	r1, [r2, #2]
d03e6658:	f7fa fcba 	bl	d03e0fd0 <ui_hash_step>
d03e665c:	2e08      	cmp	r6, #8
d03e665e:	4684      	mov	ip, r0
d03e6660:	f102 0204 	add.w	r2, r2, #4
d03e6664:	d1eb      	bne.n	d03e663e <main+0x17ba>
d03e6666:	4a19      	ldr	r2, [pc, #100]	; (d03e66cc <main+0x1848>)
d03e6668:	f8df 9110 	ldr.w	r9, [pc, #272]	; d03e677c <main+0x18f8>
d03e666c:	4e3c      	ldr	r6, [pc, #240]	; (d03e6760 <main+0x18dc>)
d03e666e:	f102 0a10 	add.w	sl, r2, #16
d03e6672:	464f      	mov	r7, r9
d03e6674:	46b0      	mov	r8, r6
d03e6676:	f812 1b01 	ldrb.w	r1, [r2], #1
d03e667a:	4660      	mov	r0, ip
d03e667c:	f7fa fca8 	bl	d03e0fd0 <ui_hash_step>
d03e6680:	f819 1b01 	ldrb.w	r1, [r9], #1
d03e6684:	f7fa fca4 	bl	d03e0fd0 <ui_hash_step>
d03e6688:	f816 1b01 	ldrb.w	r1, [r6], #1
d03e668c:	f7fa fca0 	bl	d03e0fd0 <ui_hash_step>
d03e6690:	4592      	cmp	sl, r2
d03e6692:	4684      	mov	ip, r0
d03e6694:	d1ef      	bne.n	d03e6676 <main+0x17f2>
d03e6696:	4b33      	ldr	r3, [pc, #204]	; (d03e6764 <main+0x18e0>)
d03e6698:	4e33      	ldr	r6, [pc, #204]	; (d03e6768 <main+0x18e4>)
d03e669a:	781a      	ldrb	r2, [r3, #0]
d03e669c:	f002 0101 	and.w	r1, r2, #1
d03e66a0:	f7fa fc96 	bl	d03e0fd0 <ui_hash_step>
d03e66a4:	4b31      	ldr	r3, [pc, #196]	; (d03e676c <main+0x18e8>)
d03e66a6:	6819      	ldr	r1, [r3, #0]
d03e66a8:	4281      	cmp	r1, r0
d03e66aa:	d103      	bne.n	d03e66b4 <main+0x1830>
d03e66ac:	9904      	ldr	r1, [sp, #16]
d03e66ae:	4291      	cmp	r1, r2
d03e66b0:	f000 8156 	beq.w	d03e6960 <main+0x1adc>
d03e66b4:	6018      	str	r0, [r3, #0]
d03e66b6:	2301      	movs	r3, #1
d03e66b8:	7033      	strb	r3, [r6, #0]
d03e66ba:	f7fc fad7 	bl	d03e2c6c <ui_redraw_backbuffer>
d03e66be:	2300      	movs	r3, #0
d03e66c0:	7033      	strb	r3, [r6, #0]
d03e66c2:	e151      	b.n	d03e6968 <main+0x1ae4>
d03e66c4:	d03ec20f 	.word	0xd03ec20f
d03e66c8:	d03ebdc7 	.word	0xd03ebdc7
d03e66cc:	d03ea164 	.word	0xd03ea164
d03e66d0:	d03ec212 	.word	0xd03ec212
d03e66d4:	d03ec464 	.word	0xd03ec464
d03e66d8:	d03ec465 	.word	0xd03ec465
d03e66dc:	d03ec469 	.word	0xd03ec469
d03e66e0:	811c9dc5 	.word	0x811c9dc5
d03e66e4:	05a6126a 	.word	0x05a6126a
d03e66e8:	d03ebdc6 	.word	0xd03ebdc6
d03e66ec:	d03ec288 	.word	0xd03ec288
d03e66f0:	d03ec45b 	.word	0xd03ec45b
d03e66f4:	d03ec460 	.word	0xd03ec460
d03e66f8:	d03ec461 	.word	0xd03ec461
d03e66fc:	d03ec45a 	.word	0xd03ec45a
d03e6700:	d03ec462 	.word	0xd03ec462
d03e6704:	d03ebdc8 	.word	0xd03ebdc8
d03e6708:	d03ebe0c 	.word	0xd03ebe0c
d03e670c:	d03ec20d 	.word	0xd03ec20d
d03e6710:	d03ec20e 	.word	0xd03ec20e
d03e6714:	d03ec28d 	.word	0xd03ec28d
d03e6718:	d03ec28e 	.word	0xd03ec28e
d03e671c:	d03ec273 	.word	0xd03ec273
d03e6720:	d03ea38e 	.word	0xd03ea38e
d03e6724:	d03ea18a 	.word	0xd03ea18a
d03e6728:	d03ea188 	.word	0xd03ea188
d03e672c:	d03eb490 	.word	0xd03eb490
d03e6730:	d03eb499 	.word	0xd03eb499
d03e6734:	d03eb498 	.word	0xd03eb498
d03e6738:	d03ea3b4 	.word	0xd03ea3b4
d03e673c:	d03ea3b8 	.word	0xd03ea3b8
d03e6740:	d03ea3ac 	.word	0xd03ea3ac
d03e6744:	d03eb49a 	.word	0xd03eb49a
d03e6748:	d03eb49b 	.word	0xd03eb49b
d03e674c:	d03ea3ca 	.word	0xd03ea3ca
d03e6750:	d03ea3ce 	.word	0xd03ea3ce
d03e6754:	d03ec28f 	.word	0xd03ec28f
d03e6758:	d03ebe0d 	.word	0xd03ebe0d
d03e675c:	d03ec2da 	.word	0xd03ec2da
d03e6760:	d03ea154 	.word	0xd03ea154
d03e6764:	d03ec210 	.word	0xd03ec210
d03e6768:	d03eb4d4 	.word	0xd03eb4d4
d03e676c:	d03eb4d8 	.word	0xd03eb4d8
d03e6770:	d03ec2af 	.word	0xd03ec2af
d03e6774:	d03ebe0b 	.word	0xd03ebe0b
d03e6778:	d03ec467 	.word	0xd03ec467
d03e677c:	d03ea174 	.word	0xd03ea174
d03e6780:	4ba0      	ldr	r3, [pc, #640]	; (d03e6a04 <main+0x1b80>)
d03e6782:	781a      	ldrb	r2, [r3, #0]
d03e6784:	9b02      	ldr	r3, [sp, #8]
d03e6786:	2a00      	cmp	r2, #0
d03e6788:	f47f ae57 	bne.w	d03e643a <main+0x15b6>
d03e678c:	f8df 82c0 	ldr.w	r8, [pc, #704]	; d03e6a50 <main+0x1bcc>
d03e6790:	f003 0601 	and.w	r6, r3, #1
d03e6794:	f00b 0304 	and.w	r3, fp, #4
d03e6798:	f898 1000 	ldrb.w	r1, [r8]
d03e679c:	2904      	cmp	r1, #4
d03e679e:	f040 8089 	bne.w	d03e68b4 <main+0x1a30>
d03e67a2:	4999      	ldr	r1, [pc, #612]	; (d03e6a08 <main+0x1b84>)
d03e67a4:	7809      	ldrb	r1, [r1, #0]
d03e67a6:	2900      	cmp	r1, #0
d03e67a8:	d06f      	beq.n	d03e688a <main+0x1a06>
d03e67aa:	4998      	ldr	r1, [pc, #608]	; (d03e6a0c <main+0x1b88>)
d03e67ac:	4898      	ldr	r0, [pc, #608]	; (d03e6a10 <main+0x1b8c>)
d03e67ae:	7809      	ldrb	r1, [r1, #0]
d03e67b0:	5c40      	ldrb	r0, [r0, r1]
d03e67b2:	4998      	ldr	r1, [pc, #608]	; (d03e6a14 <main+0x1b90>)
d03e67b4:	7809      	ldrb	r1, [r1, #0]
d03e67b6:	4288      	cmp	r0, r1
d03e67b8:	d167      	bne.n	d03e688a <main+0x1a06>
d03e67ba:	b1eb      	cbz	r3, d03e67f8 <main+0x1974>
d03e67bc:	4996      	ldr	r1, [pc, #600]	; (d03e6a18 <main+0x1b94>)
d03e67be:	780b      	ldrb	r3, [r1, #0]
d03e67c0:	3b01      	subs	r3, #1
d03e67c2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03e67c6:	700b      	strb	r3, [r1, #0]
d03e67c8:	4b94      	ldr	r3, [pc, #592]	; (d03e6a1c <main+0x1b98>)
d03e67ca:	701a      	strb	r2, [r3, #0]
d03e67cc:	4b94      	ldr	r3, [pc, #592]	; (d03e6a20 <main+0x1b9c>)
d03e67ce:	2201      	movs	r2, #1
d03e67d0:	701a      	strb	r2, [r3, #0]
d03e67d2:	f7fa ff5d 	bl	d03e1690 <ui_vm_editor_clamp_selection>
d03e67d6:	f01b 0f10 	tst.w	fp, #16
d03e67da:	d01c      	beq.n	d03e6816 <main+0x1992>
d03e67dc:	b1b6      	cbz	r6, d03e680c <main+0x1988>
d03e67de:	4b91      	ldr	r3, [pc, #580]	; (d03e6a24 <main+0x1ba0>)
d03e67e0:	781b      	ldrb	r3, [r3, #0]
d03e67e2:	2b02      	cmp	r3, #2
d03e67e4:	bf0c      	ite	eq
d03e67e6:	f06f 000f 	mvneq.w	r0, #15
d03e67ea:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d03e67ee:	f7fa ff81 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e67f2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03e67f6:	e01c      	b.n	d03e6832 <main+0x19ae>
d03e67f8:	f01b 0f08 	tst.w	fp, #8
d03e67fc:	d0eb      	beq.n	d03e67d6 <main+0x1952>
d03e67fe:	4986      	ldr	r1, [pc, #536]	; (d03e6a18 <main+0x1b94>)
d03e6800:	780a      	ldrb	r2, [r1, #0]
d03e6802:	3201      	adds	r2, #1
d03e6804:	700a      	strb	r2, [r1, #0]
d03e6806:	4a85      	ldr	r2, [pc, #532]	; (d03e6a1c <main+0x1b98>)
d03e6808:	7013      	strb	r3, [r2, #0]
d03e680a:	e7df      	b.n	d03e67cc <main+0x1948>
d03e680c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e6810:	f7fa fb0a 	bl	d03e0e28 <ui_vm_editor_field_delta>
d03e6814:	e7ed      	b.n	d03e67f2 <main+0x196e>
d03e6816:	f01b 0f20 	tst.w	fp, #32
d03e681a:	d022      	beq.n	d03e6862 <main+0x19de>
d03e681c:	2e00      	cmp	r6, #0
d03e681e:	d030      	beq.n	d03e6882 <main+0x19fe>
d03e6820:	4b80      	ldr	r3, [pc, #512]	; (d03e6a24 <main+0x1ba0>)
d03e6822:	781b      	ldrb	r3, [r3, #0]
d03e6824:	2b02      	cmp	r3, #2
d03e6826:	bf0c      	ite	eq
d03e6828:	2010      	moveq	r0, #16
d03e682a:	2001      	movne	r0, #1
d03e682c:	f7fa ff62 	bl	d03e16f4 <ui_vm_editor_adjust>
d03e6830:	2301      	movs	r3, #1
d03e6832:	4a76      	ldr	r2, [pc, #472]	; (d03e6a0c <main+0x1b88>)
d03e6834:	7810      	ldrb	r0, [r2, #0]
d03e6836:	f898 2000 	ldrb.w	r2, [r8]
d03e683a:	2a04      	cmp	r2, #4
d03e683c:	d108      	bne.n	d03e6850 <main+0x19cc>
d03e683e:	4a72      	ldr	r2, [pc, #456]	; (d03e6a08 <main+0x1b84>)
d03e6840:	7812      	ldrb	r2, [r2, #0]
d03e6842:	b12a      	cbz	r2, d03e6850 <main+0x19cc>
d03e6844:	4a72      	ldr	r2, [pc, #456]	; (d03e6a10 <main+0x1b8c>)
d03e6846:	5c11      	ldrb	r1, [r2, r0]
d03e6848:	4a72      	ldr	r2, [pc, #456]	; (d03e6a14 <main+0x1b90>)
d03e684a:	7812      	ldrb	r2, [r2, #0]
d03e684c:	4291      	cmp	r1, r2
d03e684e:	d008      	beq.n	d03e6862 <main+0x19de>
d03e6850:	2e00      	cmp	r6, #0
d03e6852:	bf14      	ite	ne
d03e6854:	210a      	movne	r1, #10
d03e6856:	2101      	moveq	r1, #1
d03e6858:	4359      	muls	r1, r3
d03e685a:	f7fb f82f 	bl	d03e18bc <ui_select_program_delta>
d03e685e:	f7fa faa9 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e6862:	9b02      	ldr	r3, [sp, #8]
d03e6864:	4a70      	ldr	r2, [pc, #448]	; (d03e6a28 <main+0x1ba4>)
d03e6866:	703b      	strb	r3, [r7, #0]
d03e6868:	7813      	ldrb	r3, [r2, #0]
d03e686a:	2b00      	cmp	r3, #0
d03e686c:	f43f ade6 	beq.w	d03e643c <main+0x15b8>
d03e6870:	3b01      	subs	r3, #1
d03e6872:	b2db      	uxtb	r3, r3
d03e6874:	7013      	strb	r3, [r2, #0]
d03e6876:	2b00      	cmp	r3, #0
d03e6878:	f47f ade0 	bne.w	d03e643c <main+0x15b8>
d03e687c:	4a6b      	ldr	r2, [pc, #428]	; (d03e6a2c <main+0x1ba8>)
d03e687e:	7013      	strb	r3, [r2, #0]
d03e6880:	e5dc      	b.n	d03e643c <main+0x15b8>
d03e6882:	2001      	movs	r0, #1
d03e6884:	f7fa fad0 	bl	d03e0e28 <ui_vm_editor_field_delta>
d03e6888:	e7d2      	b.n	d03e6830 <main+0x19ac>
d03e688a:	b9a6      	cbnz	r6, d03e68b6 <main+0x1a32>
d03e688c:	f01b 0f0c 	tst.w	fp, #12
d03e6890:	d023      	beq.n	d03e68da <main+0x1a56>
d03e6892:	b153      	cbz	r3, d03e68aa <main+0x1a26>
d03e6894:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e6898:	f7fa faa6 	bl	d03e0de8 <ui_scroll_vm>
d03e689c:	f01b 0f10 	tst.w	fp, #16
d03e68a0:	d1a7      	bne.n	d03e67f2 <main+0x196e>
d03e68a2:	f01b 0f20 	tst.w	fp, #32
d03e68a6:	d1c3      	bne.n	d03e6830 <main+0x19ac>
d03e68a8:	e7db      	b.n	d03e6862 <main+0x19de>
d03e68aa:	f01b 0f08 	tst.w	fp, #8
d03e68ae:	d0f5      	beq.n	d03e689c <main+0x1a18>
d03e68b0:	2001      	movs	r0, #1
d03e68b2:	e7f1      	b.n	d03e6898 <main+0x1a14>
d03e68b4:	b18e      	cbz	r6, d03e68da <main+0x1a56>
d03e68b6:	f01b 0f0c 	tst.w	fp, #12
d03e68ba:	d00e      	beq.n	d03e68da <main+0x1a56>
d03e68bc:	b95b      	cbnz	r3, d03e68d6 <main+0x1a52>
d03e68be:	f01b 0f08 	tst.w	fp, #8
d03e68c2:	d0eb      	beq.n	d03e689c <main+0x1a18>
d03e68c4:	f06f 0009 	mvn.w	r0, #9
d03e68c8:	4b59      	ldr	r3, [pc, #356]	; (d03e6a30 <main+0x1bac>)
d03e68ca:	881b      	ldrh	r3, [r3, #0]
d03e68cc:	4418      	add	r0, r3
d03e68ce:	b200      	sxth	r0, r0
d03e68d0:	f7fa fc44 	bl	d03e115c <midi_set_global_gain>
d03e68d4:	e7e2      	b.n	d03e689c <main+0x1a18>
d03e68d6:	200a      	movs	r0, #10
d03e68d8:	e7f6      	b.n	d03e68c8 <main+0x1a44>
d03e68da:	b153      	cbz	r3, d03e68f2 <main+0x1a6e>
d03e68dc:	4a4b      	ldr	r2, [pc, #300]	; (d03e6a0c <main+0x1b88>)
d03e68de:	7813      	ldrb	r3, [r2, #0]
d03e68e0:	330f      	adds	r3, #15
d03e68e2:	f003 030f 	and.w	r3, r3, #15
d03e68e6:	7013      	strb	r3, [r2, #0]
d03e68e8:	089b      	lsrs	r3, r3, #2
d03e68ea:	4a52      	ldr	r2, [pc, #328]	; (d03e6a34 <main+0x1bb0>)
d03e68ec:	7013      	strb	r3, [r2, #0]
d03e68ee:	f7fa fa61 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e68f2:	f01b 0f08 	tst.w	fp, #8
d03e68f6:	d0d1      	beq.n	d03e689c <main+0x1a18>
d03e68f8:	4a44      	ldr	r2, [pc, #272]	; (d03e6a0c <main+0x1b88>)
d03e68fa:	7813      	ldrb	r3, [r2, #0]
d03e68fc:	3301      	adds	r3, #1
d03e68fe:	f003 030f 	and.w	r3, r3, #15
d03e6902:	7013      	strb	r3, [r2, #0]
d03e6904:	089b      	lsrs	r3, r3, #2
d03e6906:	4a4b      	ldr	r2, [pc, #300]	; (d03e6a34 <main+0x1bb0>)
d03e6908:	7013      	strb	r3, [r2, #0]
d03e690a:	f7fa fa53 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e690e:	e7c5      	b.n	d03e689c <main+0x1a18>
d03e6910:	4a3d      	ldr	r2, [pc, #244]	; (d03e6a08 <main+0x1b84>)
d03e6912:	7812      	ldrb	r2, [r2, #0]
d03e6914:	b122      	cbz	r2, d03e6920 <main+0x1a9c>
d03e6916:	4a3f      	ldr	r2, [pc, #252]	; (d03e6a14 <main+0x1b90>)
d03e6918:	7812      	ldrb	r2, [r2, #0]
d03e691a:	455a      	cmp	r2, fp
d03e691c:	f43f adb2 	beq.w	d03e6484 <main+0x1600>
d03e6920:	4a45      	ldr	r2, [pc, #276]	; (d03e6a38 <main+0x1bb4>)
d03e6922:	2100      	movs	r1, #0
d03e6924:	7810      	ldrb	r0, [r2, #0]
d03e6926:	fa5f f981 	uxtb.w	r9, r1
d03e692a:	b130      	cbz	r0, d03e693a <main+0x1ab6>
d03e692c:	7850      	ldrb	r0, [r2, #1]
d03e692e:	4298      	cmp	r0, r3
d03e6930:	d103      	bne.n	d03e693a <main+0x1ab6>
d03e6932:	7910      	ldrb	r0, [r2, #4]
d03e6934:	4558      	cmp	r0, fp
d03e6936:	f000 84e2 	beq.w	d03e72fe <main+0x247a>
d03e693a:	3101      	adds	r1, #1
d03e693c:	3208      	adds	r2, #8
d03e693e:	2906      	cmp	r1, #6
d03e6940:	d1f0      	bne.n	d03e6924 <main+0x1aa0>
d03e6942:	e59f      	b.n	d03e6484 <main+0x1600>
d03e6944:	3208      	adds	r2, #8
d03e6946:	b2d2      	uxtb	r2, r2
d03e6948:	4293      	cmp	r3, r2
d03e694a:	f0c0 8506 	bcc.w	d03e735a <main+0x24d6>
d03e694e:	3b07      	subs	r3, #7
d03e6950:	f000 bd02 	b.w	d03e7358 <main+0x24d4>
d03e6954:	2100      	movs	r1, #0
d03e6956:	e5e0      	b.n	d03e651a <main+0x1696>
d03e6958:	4641      	mov	r1, r8
d03e695a:	e5de      	b.n	d03e651a <main+0x1696>
d03e695c:	2100      	movs	r1, #0
d03e695e:	e605      	b.n	d03e656c <main+0x16e8>
d03e6960:	7833      	ldrb	r3, [r6, #0]
d03e6962:	2b00      	cmp	r3, #0
d03e6964:	f47f aea9 	bne.w	d03e66ba <main+0x1836>
d03e6968:	4a34      	ldr	r2, [pc, #208]	; (d03e6a3c <main+0x1bb8>)
d03e696a:	4935      	ldr	r1, [pc, #212]	; (d03e6a40 <main+0x1bbc>)
d03e696c:	7813      	ldrb	r3, [r2, #0]
d03e696e:	6808      	ldr	r0, [r1, #0]
d03e6970:	f1c3 0301 	rsb	r3, r3, #1
d03e6974:	b2db      	uxtb	r3, r3
d03e6976:	7013      	strb	r3, [r2, #0]
d03e6978:	4a32      	ldr	r2, [pc, #200]	; (d03e6a44 <main+0x1bc0>)
d03e697a:	6812      	ldr	r2, [r2, #0]
d03e697c:	2b00      	cmp	r3, #0
d03e697e:	d032      	beq.n	d03e69e6 <main+0x1b62>
d03e6980:	7b2b      	ldrb	r3, [r5, #12]
d03e6982:	7b69      	ldrb	r1, [r5, #13]
d03e6984:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e6988:	7ba9      	ldrb	r1, [r5, #14]
d03e698a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e698e:	7be9      	ldrb	r1, [r5, #15]
d03e6990:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e6994:	4611      	mov	r1, r2
d03e6996:	681b      	ldr	r3, [r3, #0]
d03e6998:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03e699a:	4798      	blx	r3
d03e699c:	7b2b      	ldrb	r3, [r5, #12]
d03e699e:	7b6a      	ldrb	r2, [r5, #13]
d03e69a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e69a4:	7baa      	ldrb	r2, [r5, #14]
d03e69a6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e69aa:	7bea      	ldrb	r2, [r5, #15]
d03e69ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e69b0:	685b      	ldr	r3, [r3, #4]
d03e69b2:	681b      	ldr	r3, [r3, #0]
d03e69b4:	4798      	blx	r3
d03e69b6:	4b13      	ldr	r3, [pc, #76]	; (d03e6a04 <main+0x1b80>)
d03e69b8:	781a      	ldrb	r2, [r3, #0]
d03e69ba:	4b23      	ldr	r3, [pc, #140]	; (d03e6a48 <main+0x1bc4>)
d03e69bc:	781b      	ldrb	r3, [r3, #0]
d03e69be:	4313      	orrs	r3, r2
d03e69c0:	d048      	beq.n	d03e6a54 <main+0x1bd0>
d03e69c2:	f7fa fa4b 	bl	d03e0e5c <ui_draw_cursor>
d03e69c6:	4a21      	ldr	r2, [pc, #132]	; (d03e6a4c <main+0x1bc8>)
d03e69c8:	7b13      	ldrb	r3, [r2, #12]
d03e69ca:	7b51      	ldrb	r1, [r2, #13]
d03e69cc:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e69d0:	7b91      	ldrb	r1, [r2, #14]
d03e69d2:	7bd2      	ldrb	r2, [r2, #15]
d03e69d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e69d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e69dc:	681b      	ldr	r3, [r3, #0]
d03e69de:	681b      	ldr	r3, [r3, #0]
d03e69e0:	4798      	blx	r3
d03e69e2:	f7fe bcca 	b.w	d03e537a <main+0x4f6>
d03e69e6:	7b2b      	ldrb	r3, [r5, #12]
d03e69e8:	7b69      	ldrb	r1, [r5, #13]
d03e69ea:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e69ee:	7ba9      	ldrb	r1, [r5, #14]
d03e69f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e69f4:	7be9      	ldrb	r1, [r5, #15]
d03e69f6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e69fa:	4601      	mov	r1, r0
d03e69fc:	4610      	mov	r0, r2
d03e69fe:	681b      	ldr	r3, [r3, #0]
d03e6a00:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03e6a02:	e7ca      	b.n	d03e699a <main+0x1b16>
d03e6a04:	d03ebdc8 	.word	0xd03ebdc8
d03e6a08:	d03ec45b 	.word	0xd03ec45b
d03e6a0c:	d03ec2af 	.word	0xd03ec2af
d03e6a10:	d03ea164 	.word	0xd03ea164
d03e6a14:	d03ec460 	.word	0xd03ec460
d03e6a18:	d03ec461 	.word	0xd03ec461
d03e6a1c:	d03ec463 	.word	0xd03ec463
d03e6a20:	d03ec462 	.word	0xd03ec462
d03e6a24:	d03ec45a 	.word	0xd03ec45a
d03e6a28:	d03ec2d8 	.word	0xd03ec2d8
d03e6a2c:	d03ec2b0 	.word	0xd03ec2b0
d03e6a30:	d03ea38e 	.word	0xd03ea38e
d03e6a34:	d03ebdc6 	.word	0xd03ebdc6
d03e6a38:	d03eb49c 	.word	0xd03eb49c
d03e6a3c:	d03ea129 	.word	0xd03ea129
d03e6a40:	d03ea12c 	.word	0xd03ea12c
d03e6a44:	d03ea130 	.word	0xd03ea130
d03e6a48:	d03ebdc7 	.word	0xd03ebdc7
d03e6a4c:	2001f000 	.word	0x2001f000
d03e6a50:	d03ec212 	.word	0xd03ec212
d03e6a54:	4b2c      	ldr	r3, [pc, #176]	; (d03e6b08 <main+0x1c84>)
d03e6a56:	781b      	ldrb	r3, [r3, #0]
d03e6a58:	2b05      	cmp	r3, #5
d03e6a5a:	f040 8217 	bne.w	d03e6e8c <main+0x2008>
d03e6a5e:	4f2b      	ldr	r7, [pc, #172]	; (d03e6b0c <main+0x1c88>)
d03e6a60:	f8df 80ac 	ldr.w	r8, [pc, #172]	; d03e6b10 <main+0x1c8c>
d03e6a64:	683b      	ldr	r3, [r7, #0]
d03e6a66:	f5b3 7fe2 	cmp.w	r3, #452	; 0x1c4
d03e6a6a:	461a      	mov	r2, r3
d03e6a6c:	f503 73ea 	add.w	r3, r3, #468	; 0x1d4
d03e6a70:	bf38      	it	cc
d03e6a72:	f44f 72e2 	movcc.w	r2, #452	; 0x1c4
d03e6a76:	9304      	str	r3, [sp, #16]
d03e6a78:	f5a2 72e2 	sub.w	r2, r2, #452	; 0x1c4
d03e6a7c:	9203      	str	r2, [sp, #12]
d03e6a7e:	f7fb fbe5 	bl	d03e224c <seq_grid_ticks>
d03e6a82:	7b2b      	ldrb	r3, [r5, #12]
d03e6a84:	4606      	mov	r6, r0
d03e6a86:	7b6a      	ldrb	r2, [r5, #13]
d03e6a88:	2015      	movs	r0, #21
d03e6a8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6a8e:	7baa      	ldrb	r2, [r5, #14]
d03e6a90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6a94:	7bea      	ldrb	r2, [r5, #15]
d03e6a96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6a9a:	685b      	ldr	r3, [r3, #4]
d03e6a9c:	68db      	ldr	r3, [r3, #12]
d03e6a9e:	4798      	blx	r3
d03e6aa0:	9b03      	ldr	r3, [sp, #12]
d03e6aa2:	fbb3 f5f6 	udiv	r5, r3, r6
d03e6aa6:	4375      	muls	r5, r6
d03e6aa8:	9b04      	ldr	r3, [sp, #16]
d03e6aaa:	42ab      	cmp	r3, r5
d03e6aac:	d205      	bcs.n	d03e6aba <main+0x1c36>
d03e6aae:	f8df 8064 	ldr.w	r8, [pc, #100]	; d03e6b14 <main+0x1c90>
d03e6ab2:	f04f 0b00 	mov.w	fp, #0
d03e6ab6:	4d16      	ldr	r5, [pc, #88]	; (d03e6b10 <main+0x1c8c>)
d03e6ab8:	e135      	b.n	d03e6d26 <main+0x1ea2>
d03e6aba:	6838      	ldr	r0, [r7, #0]
d03e6abc:	1a28      	subs	r0, r5, r0
d03e6abe:	eb00 70d0 	add.w	r0, r0, r0, lsr #31
d03e6ac2:	f3c0 004f 	ubfx	r0, r0, #1, #16
d03e6ac6:	f100 03e2 	add.w	r3, r0, #226	; 0xe2
d03e6aca:	b29b      	uxth	r3, r3
d03e6acc:	f5b3 7fe6 	cmp.w	r3, #460	; 0x1cc
d03e6ad0:	d216      	bcs.n	d03e6b00 <main+0x1c7c>
d03e6ad2:	f898 300c 	ldrb.w	r3, [r8, #12]
d03e6ad6:	30ec      	adds	r0, #236	; 0xec
d03e6ad8:	f898 200d 	ldrb.w	r2, [r8, #13]
d03e6adc:	2140      	movs	r1, #64	; 0x40
d03e6ade:	b200      	sxth	r0, r0
d03e6ae0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6ae4:	f898 200e 	ldrb.w	r2, [r8, #14]
d03e6ae8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6aec:	f898 200f 	ldrb.w	r2, [r8, #15]
d03e6af0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6af4:	2201      	movs	r2, #1
d03e6af6:	685b      	ldr	r3, [r3, #4]
d03e6af8:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03e6afc:	23bc      	movs	r3, #188	; 0xbc
d03e6afe:	47c8      	blx	r9
d03e6b00:	2e00      	cmp	r6, #0
d03e6b02:	d0d4      	beq.n	d03e6aae <main+0x1c2a>
d03e6b04:	4435      	add	r5, r6
d03e6b06:	e7cf      	b.n	d03e6aa8 <main+0x1c24>
d03e6b08:	d03ec212 	.word	0xd03ec212
d03e6b0c:	d03eb494 	.word	0xd03eb494
d03e6b10:	2001f000 	.word	0x2001f000
d03e6b14:	d03ea3d0 	.word	0xd03ea3d0
d03e6b18:	f898 300d 	ldrb.w	r3, [r8, #13]
d03e6b1c:	2b00      	cmp	r3, #0
d03e6b1e:	f000 80fe 	beq.w	d03e6d1e <main+0x1e9a>
d03e6b22:	f8d8 9000 	ldr.w	r9, [r8]
d03e6b26:	f8d8 2004 	ldr.w	r2, [r8, #4]
d03e6b2a:	eb09 0302 	add.w	r3, r9, r2
d03e6b2e:	9305      	str	r3, [sp, #20]
d03e6b30:	9905      	ldr	r1, [sp, #20]
d03e6b32:	9b03      	ldr	r3, [sp, #12]
d03e6b34:	428b      	cmp	r3, r1
d03e6b36:	f200 80f2 	bhi.w	d03e6d1e <main+0x1e9a>
d03e6b3a:	9b04      	ldr	r3, [sp, #16]
d03e6b3c:	454b      	cmp	r3, r9
d03e6b3e:	f0c0 80ee 	bcc.w	d03e6d1e <main+0x1e9a>
d03e6b42:	4bb1      	ldr	r3, [pc, #708]	; (d03e6e08 <main+0x1f84>)
d03e6b44:	f342 024f 	sbfx	r2, r2, #1, #16
d03e6b48:	681e      	ldr	r6, [r3, #0]
d03e6b4a:	2a04      	cmp	r2, #4
d03e6b4c:	eba9 0606 	sub.w	r6, r9, r6
d03e6b50:	bfb8      	it	lt
d03e6b52:	2204      	movlt	r2, #4
d03e6b54:	eb06 76d6 	add.w	r6, r6, r6, lsr #31
d03e6b58:	1076      	asrs	r6, r6, #1
d03e6b5a:	36ec      	adds	r6, #236	; 0xec
d03e6b5c:	b2b3      	uxth	r3, r6
d03e6b5e:	b236      	sxth	r6, r6
d03e6b60:	2e09      	cmp	r6, #9
d03e6b62:	bfdf      	itttt	le
d03e6b64:	3a0a      	suble	r2, #10
d03e6b66:	260a      	movle	r6, #10
d03e6b68:	18d2      	addle	r2, r2, r3
d03e6b6a:	b212      	sxthle	r2, r2
d03e6b6c:	18b3      	adds	r3, r6, r2
d03e6b6e:	f5b3 7feb 	cmp.w	r3, #470	; 0x1d6
d03e6b72:	bfc4      	itt	gt
d03e6b74:	f5c6 72eb 	rsbgt	r2, r6, #470	; 0x1d6
d03e6b78:	b212      	sxthgt	r2, r2
d03e6b7a:	2a00      	cmp	r2, #0
d03e6b7c:	9207      	str	r2, [sp, #28]
d03e6b7e:	f340 80ce 	ble.w	d03e6d1e <main+0x1e9a>
d03e6b82:	f898 3008 	ldrb.w	r3, [r8, #8]
d03e6b86:	27b0      	movs	r7, #176	; 0xb0
d03e6b88:	f04f 0a30 	mov.w	sl, #48	; 0x30
d03e6b8c:	2b54      	cmp	r3, #84	; 0x54
d03e6b8e:	bf28      	it	cs
d03e6b90:	2354      	movcs	r3, #84	; 0x54
d03e6b92:	2b24      	cmp	r3, #36	; 0x24
d03e6b94:	bf38      	it	cc
d03e6b96:	2324      	movcc	r3, #36	; 0x24
d03e6b98:	3b24      	subs	r3, #36	; 0x24
d03e6b9a:	b29b      	uxth	r3, r3
d03e6b9c:	435f      	muls	r7, r3
d03e6b9e:	fbb7 f7fa 	udiv	r7, r7, sl
d03e6ba2:	b2bb      	uxth	r3, r7
d03e6ba4:	f1c3 01f4 	rsb	r1, r3, #244	; 0xf4
d03e6ba8:	9302      	str	r3, [sp, #8]
d03e6baa:	7b2b      	ldrb	r3, [r5, #12]
d03e6bac:	7b68      	ldrb	r0, [r5, #13]
d03e6bae:	b209      	sxth	r1, r1
d03e6bb0:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e6bb4:	7ba8      	ldrb	r0, [r5, #14]
d03e6bb6:	9106      	str	r1, [sp, #24]
d03e6bb8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e6bbc:	7be8      	ldrb	r0, [r5, #15]
d03e6bbe:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e6bc2:	f898 000c 	ldrb.w	r0, [r8, #12]
d03e6bc6:	685b      	ldr	r3, [r3, #4]
d03e6bc8:	68db      	ldr	r3, [r3, #12]
d03e6bca:	4798      	blx	r3
d03e6bcc:	7b2b      	ldrb	r3, [r5, #12]
d03e6bce:	7b68      	ldrb	r0, [r5, #13]
d03e6bd0:	9a07      	ldr	r2, [sp, #28]
d03e6bd2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e6bd6:	7ba8      	ldrb	r0, [r5, #14]
d03e6bd8:	9906      	ldr	r1, [sp, #24]
d03e6bda:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e6bde:	7be8      	ldrb	r0, [r5, #15]
d03e6be0:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e6be4:	4630      	mov	r0, r6
d03e6be6:	685b      	ldr	r3, [r3, #4]
d03e6be8:	685b      	ldr	r3, [r3, #4]
d03e6bea:	461f      	mov	r7, r3
d03e6bec:	2306      	movs	r3, #6
d03e6bee:	47b8      	blx	r7
d03e6bf0:	7b2b      	ldrb	r3, [r5, #12]
d03e6bf2:	7b68      	ldrb	r0, [r5, #13]
d03e6bf4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e6bf8:	7ba8      	ldrb	r0, [r5, #14]
d03e6bfa:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e6bfe:	7be8      	ldrb	r0, [r5, #15]
d03e6c00:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e6c04:	2010      	movs	r0, #16
d03e6c06:	685b      	ldr	r3, [r3, #4]
d03e6c08:	68db      	ldr	r3, [r3, #12]
d03e6c0a:	4798      	blx	r3
d03e6c0c:	7b2b      	ldrb	r3, [r5, #12]
d03e6c0e:	7b68      	ldrb	r0, [r5, #13]
d03e6c10:	9a07      	ldr	r2, [sp, #28]
d03e6c12:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e6c16:	7ba8      	ldrb	r0, [r5, #14]
d03e6c18:	9906      	ldr	r1, [sp, #24]
d03e6c1a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e6c1e:	7be8      	ldrb	r0, [r5, #15]
d03e6c20:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03e6c24:	4630      	mov	r0, r6
d03e6c26:	685b      	ldr	r3, [r3, #4]
d03e6c28:	685b      	ldr	r3, [r3, #4]
d03e6c2a:	461f      	mov	r7, r3
d03e6c2c:	2301      	movs	r3, #1
d03e6c2e:	47b8      	blx	r7
d03e6c30:	4b75      	ldr	r3, [pc, #468]	; (d03e6e08 <main+0x1f84>)
d03e6c32:	681b      	ldr	r3, [r3, #0]
d03e6c34:	4599      	cmp	r9, r3
d03e6c36:	d872      	bhi.n	d03e6d1e <main+0x1e9a>
d03e6c38:	9a05      	ldr	r2, [sp, #20]
d03e6c3a:	429a      	cmp	r2, r3
d03e6c3c:	d96f      	bls.n	d03e6d1e <main+0x1e9a>
d03e6c3e:	7b2b      	ldrb	r3, [r5, #12]
d03e6c40:	200f      	movs	r0, #15
d03e6c42:	7b6a      	ldrb	r2, [r5, #13]
d03e6c44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6c48:	7baa      	ldrb	r2, [r5, #14]
d03e6c4a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6c4e:	7bea      	ldrb	r2, [r5, #15]
d03e6c50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6c54:	685b      	ldr	r3, [r3, #4]
d03e6c56:	68db      	ldr	r3, [r3, #12]
d03e6c58:	4798      	blx	r3
d03e6c5a:	7b2b      	ldrb	r3, [r5, #12]
d03e6c5c:	7b6a      	ldrb	r2, [r5, #13]
d03e6c5e:	20e8      	movs	r0, #232	; 0xe8
d03e6c60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6c64:	7baa      	ldrb	r2, [r5, #14]
d03e6c66:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6c6a:	7bea      	ldrb	r2, [r5, #15]
d03e6c6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6c70:	9a02      	ldr	r2, [sp, #8]
d03e6c72:	685b      	ldr	r3, [r3, #4]
d03e6c74:	f1c2 01f2 	rsb	r1, r2, #242	; 0xf2
d03e6c78:	685e      	ldr	r6, [r3, #4]
d03e6c7a:	230a      	movs	r3, #10
d03e6c7c:	b209      	sxth	r1, r1
d03e6c7e:	461a      	mov	r2, r3
d03e6c80:	47b0      	blx	r6
d03e6c82:	7b2b      	ldrb	r3, [r5, #12]
d03e6c84:	7b6a      	ldrb	r2, [r5, #13]
d03e6c86:	f898 000c 	ldrb.w	r0, [r8, #12]
d03e6c8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6c8e:	7baa      	ldrb	r2, [r5, #14]
d03e6c90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6c94:	7bea      	ldrb	r2, [r5, #15]
d03e6c96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6c9a:	685b      	ldr	r3, [r3, #4]
d03e6c9c:	68db      	ldr	r3, [r3, #12]
d03e6c9e:	4798      	blx	r3
d03e6ca0:	7b2b      	ldrb	r3, [r5, #12]
d03e6ca2:	7b6a      	ldrb	r2, [r5, #13]
d03e6ca4:	20e9      	movs	r0, #233	; 0xe9
d03e6ca6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6caa:	7baa      	ldrb	r2, [r5, #14]
d03e6cac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6cb0:	7bea      	ldrb	r2, [r5, #15]
d03e6cb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6cb6:	9a02      	ldr	r2, [sp, #8]
d03e6cb8:	685b      	ldr	r3, [r3, #4]
d03e6cba:	f1c2 01f3 	rsb	r1, r2, #243	; 0xf3
d03e6cbe:	685e      	ldr	r6, [r3, #4]
d03e6cc0:	2308      	movs	r3, #8
d03e6cc2:	b209      	sxth	r1, r1
d03e6cc4:	461a      	mov	r2, r3
d03e6cc6:	47b0      	blx	r6
d03e6cc8:	f898 3009 	ldrb.w	r3, [r8, #9]
d03e6ccc:	4651      	mov	r1, sl
d03e6cce:	4a4f      	ldr	r2, [pc, #316]	; (d03e6e0c <main+0x1f88>)
d03e6cd0:	3301      	adds	r3, #1
d03e6cd2:	eb0d 000a 	add.w	r0, sp, sl
d03e6cd6:	9300      	str	r3, [sp, #0]
d03e6cd8:	f898 3008 	ldrb.w	r3, [r8, #8]
d03e6cdc:	f000 fcfe 	bl	d03e76dc <sniprintf>
d03e6ce0:	7b2b      	ldrb	r3, [r5, #12]
d03e6ce2:	7b6a      	ldrb	r2, [r5, #13]
d03e6ce4:	201e      	movs	r0, #30
d03e6ce6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6cea:	7baa      	ldrb	r2, [r5, #14]
d03e6cec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6cf0:	7bea      	ldrb	r2, [r5, #15]
d03e6cf2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6cf6:	685b      	ldr	r3, [r3, #4]
d03e6cf8:	68db      	ldr	r3, [r3, #12]
d03e6cfa:	4798      	blx	r3
d03e6cfc:	7b2b      	ldrb	r3, [r5, #12]
d03e6cfe:	7b6a      	ldrb	r2, [r5, #13]
d03e6d00:	2148      	movs	r1, #72	; 0x48
d03e6d02:	20f6      	movs	r0, #246	; 0xf6
d03e6d04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6d08:	7baa      	ldrb	r2, [r5, #14]
d03e6d0a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6d0e:	7bea      	ldrb	r2, [r5, #15]
d03e6d10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6d14:	eb0d 020a 	add.w	r2, sp, sl
d03e6d18:	685b      	ldr	r3, [r3, #4]
d03e6d1a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6d1c:	4798      	blx	r3
d03e6d1e:	f10b 0b01 	add.w	fp, fp, #1
d03e6d22:	f108 0810 	add.w	r8, r8, #16
d03e6d26:	4b3a      	ldr	r3, [pc, #232]	; (d03e6e10 <main+0x1f8c>)
d03e6d28:	881a      	ldrh	r2, [r3, #0]
d03e6d2a:	fa1f f38b 	uxth.w	r3, fp
d03e6d2e:	429a      	cmp	r2, r3
d03e6d30:	d903      	bls.n	d03e6d3a <main+0x1eb6>
d03e6d32:	f5bb 7f80 	cmp.w	fp, #256	; 0x100
d03e6d36:	f47f aeef 	bne.w	d03e6b18 <main+0x1c94>
d03e6d3a:	4d36      	ldr	r5, [pc, #216]	; (d03e6e14 <main+0x1f90>)
d03e6d3c:	200d      	movs	r0, #13
d03e6d3e:	7b2b      	ldrb	r3, [r5, #12]
d03e6d40:	7b6a      	ldrb	r2, [r5, #13]
d03e6d42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6d46:	7baa      	ldrb	r2, [r5, #14]
d03e6d48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6d4c:	7bea      	ldrb	r2, [r5, #15]
d03e6d4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6d52:	685b      	ldr	r3, [r3, #4]
d03e6d54:	68db      	ldr	r3, [r3, #12]
d03e6d56:	4798      	blx	r3
d03e6d58:	7b2b      	ldrb	r3, [r5, #12]
d03e6d5a:	7b6a      	ldrb	r2, [r5, #13]
d03e6d5c:	2140      	movs	r1, #64	; 0x40
d03e6d5e:	20ec      	movs	r0, #236	; 0xec
d03e6d60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6d64:	7baa      	ldrb	r2, [r5, #14]
d03e6d66:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6d6a:	7bea      	ldrb	r2, [r5, #15]
d03e6d6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6d70:	2202      	movs	r2, #2
d03e6d72:	685b      	ldr	r3, [r3, #4]
d03e6d74:	685e      	ldr	r6, [r3, #4]
d03e6d76:	23bc      	movs	r3, #188	; 0xbc
d03e6d78:	47b0      	blx	r6
d03e6d7a:	7b2b      	ldrb	r3, [r5, #12]
d03e6d7c:	7b6a      	ldrb	r2, [r5, #13]
d03e6d7e:	201e      	movs	r0, #30
d03e6d80:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6d84:	7baa      	ldrb	r2, [r5, #14]
d03e6d86:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6d8a:	7bea      	ldrb	r2, [r5, #15]
d03e6d8c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6d90:	685b      	ldr	r3, [r3, #4]
d03e6d92:	68db      	ldr	r3, [r3, #12]
d03e6d94:	4798      	blx	r3
d03e6d96:	4b1c      	ldr	r3, [pc, #112]	; (d03e6e08 <main+0x1f84>)
d03e6d98:	2232      	movs	r2, #50	; 0x32
d03e6d9a:	6819      	ldr	r1, [r3, #0]
d03e6d9c:	fbb1 f3f2 	udiv	r3, r1, r2
d03e6da0:	fb02 1213 	mls	r2, r2, r3, r1
d03e6da4:	2130      	movs	r1, #48	; 0x30
d03e6da6:	0052      	lsls	r2, r2, #1
d03e6da8:	eb0d 0001 	add.w	r0, sp, r1
d03e6dac:	9200      	str	r2, [sp, #0]
d03e6dae:	4a1a      	ldr	r2, [pc, #104]	; (d03e6e18 <main+0x1f94>)
d03e6db0:	f000 fc94 	bl	d03e76dc <sniprintf>
d03e6db4:	7b2b      	ldrb	r3, [r5, #12]
d03e6db6:	7b6a      	ldrb	r2, [r5, #13]
d03e6db8:	212e      	movs	r1, #46	; 0x2e
d03e6dba:	20da      	movs	r0, #218	; 0xda
d03e6dbc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6dc0:	7baa      	ldrb	r2, [r5, #14]
d03e6dc2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6dc6:	7bea      	ldrb	r2, [r5, #15]
d03e6dc8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6dcc:	aa0c      	add	r2, sp, #48	; 0x30
d03e6dce:	685b      	ldr	r3, [r3, #4]
d03e6dd0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6dd2:	4798      	blx	r3
d03e6dd4:	4b11      	ldr	r3, [pc, #68]	; (d03e6e1c <main+0x1f98>)
d03e6dd6:	781b      	ldrb	r3, [r3, #0]
d03e6dd8:	2b00      	cmp	r3, #0
d03e6dda:	f43f adf2 	beq.w	d03e69c2 <main+0x1b3e>
d03e6dde:	2130      	movs	r1, #48	; 0x30
d03e6de0:	4b0f      	ldr	r3, [pc, #60]	; (d03e6e20 <main+0x1f9c>)
d03e6de2:	4a10      	ldr	r2, [pc, #64]	; (d03e6e24 <main+0x1fa0>)
d03e6de4:	eb0d 0001 	add.w	r0, sp, r1
d03e6de8:	781b      	ldrb	r3, [r3, #0]
d03e6dea:	f000 fc77 	bl	d03e76dc <sniprintf>
d03e6dee:	7b2b      	ldrb	r3, [r5, #12]
d03e6df0:	7b6a      	ldrb	r2, [r5, #13]
d03e6df2:	200d      	movs	r0, #13
d03e6df4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6df8:	7baa      	ldrb	r2, [r5, #14]
d03e6dfa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6dfe:	7bea      	ldrb	r2, [r5, #15]
d03e6e00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6e04:	685b      	ldr	r3, [r3, #4]
d03e6e06:	e00f      	b.n	d03e6e28 <main+0x1fa4>
d03e6e08:	d03eb494 	.word	0xd03eb494
d03e6e0c:	d03e93ea 	.word	0xd03e93ea
d03e6e10:	d03ea3ce 	.word	0xd03ea3ce
d03e6e14:	2001f000 	.word	0x2001f000
d03e6e18:	d03e93f7 	.word	0xd03e93f7
d03e6e1c:	d03ea3b4 	.word	0xd03ea3b4
d03e6e20:	d03ea3b8 	.word	0xd03ea3b8
d03e6e24:	d03e9401 	.word	0xd03e9401
d03e6e28:	68db      	ldr	r3, [r3, #12]
d03e6e2a:	4798      	blx	r3
d03e6e2c:	7b2b      	ldrb	r3, [r5, #12]
d03e6e2e:	7b6a      	ldrb	r2, [r5, #13]
d03e6e30:	2186      	movs	r1, #134	; 0x86
d03e6e32:	20ca      	movs	r0, #202	; 0xca
d03e6e34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6e38:	7baa      	ldrb	r2, [r5, #14]
d03e6e3a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6e3e:	7bea      	ldrb	r2, [r5, #15]
d03e6e40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6e44:	2248      	movs	r2, #72	; 0x48
d03e6e46:	685b      	ldr	r3, [r3, #4]
d03e6e48:	685e      	ldr	r6, [r3, #4]
d03e6e4a:	2318      	movs	r3, #24
d03e6e4c:	47b0      	blx	r6
d03e6e4e:	7b2b      	ldrb	r3, [r5, #12]
d03e6e50:	7b6a      	ldrb	r2, [r5, #13]
d03e6e52:	200f      	movs	r0, #15
d03e6e54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6e58:	7baa      	ldrb	r2, [r5, #14]
d03e6e5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6e5e:	7bea      	ldrb	r2, [r5, #15]
d03e6e60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6e64:	685b      	ldr	r3, [r3, #4]
d03e6e66:	68db      	ldr	r3, [r3, #12]
d03e6e68:	4798      	blx	r3
d03e6e6a:	7b2b      	ldrb	r3, [r5, #12]
d03e6e6c:	7b6a      	ldrb	r2, [r5, #13]
d03e6e6e:	218a      	movs	r1, #138	; 0x8a
d03e6e70:	20d0      	movs	r0, #208	; 0xd0
d03e6e72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6e76:	7baa      	ldrb	r2, [r5, #14]
d03e6e78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6e7c:	7bea      	ldrb	r2, [r5, #15]
d03e6e7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6e82:	aa0c      	add	r2, sp, #48	; 0x30
d03e6e84:	685b      	ldr	r3, [r3, #4]
d03e6e86:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6e88:	4798      	blx	r3
d03e6e8a:	e59a      	b.n	d03e69c2 <main+0x1b3e>
d03e6e8c:	7b2b      	ldrb	r3, [r5, #12]
d03e6e8e:	2018      	movs	r0, #24
d03e6e90:	7b6a      	ldrb	r2, [r5, #13]
d03e6e92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6e96:	7baa      	ldrb	r2, [r5, #14]
d03e6e98:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6e9c:	7bea      	ldrb	r2, [r5, #15]
d03e6e9e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6ea2:	685b      	ldr	r3, [r3, #4]
d03e6ea4:	68db      	ldr	r3, [r3, #12]
d03e6ea6:	4798      	blx	r3
d03e6ea8:	4a90      	ldr	r2, [pc, #576]	; (d03e70ec <main+0x2268>)
d03e6eaa:	7813      	ldrb	r3, [r2, #0]
d03e6eac:	2b00      	cmp	r3, #0
d03e6eae:	f000 80dd 	beq.w	d03e706c <main+0x21e8>
d03e6eb2:	7b2b      	ldrb	r3, [r5, #12]
d03e6eb4:	7b69      	ldrb	r1, [r5, #13]
d03e6eb6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03e6eba:	7ba9      	ldrb	r1, [r5, #14]
d03e6ebc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e6ec0:	7be9      	ldrb	r1, [r5, #15]
d03e6ec2:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03e6ec6:	685b      	ldr	r3, [r3, #4]
d03e6ec8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6eca:	f44f 7192 	mov.w	r1, #292	; 0x124
d03e6ece:	2058      	movs	r0, #88	; 0x58
d03e6ed0:	4798      	blx	r3
d03e6ed2:	4b87      	ldr	r3, [pc, #540]	; (d03e70f0 <main+0x226c>)
d03e6ed4:	781b      	ldrb	r3, [r3, #0]
d03e6ed6:	2b01      	cmp	r3, #1
d03e6ed8:	f000 80d6 	beq.w	d03e7088 <main+0x2204>
d03e6edc:	2b04      	cmp	r3, #4
d03e6ede:	f000 8127 	beq.w	d03e7130 <main+0x22ac>
d03e6ee2:	2b00      	cmp	r3, #0
d03e6ee4:	f47f ad6d 	bne.w	d03e69c2 <main+0x1b3e>
d03e6ee8:	4a82      	ldr	r2, [pc, #520]	; (d03e70f4 <main+0x2270>)
d03e6eea:	4983      	ldr	r1, [pc, #524]	; (d03e70f8 <main+0x2274>)
d03e6eec:	7816      	ldrb	r6, [r2, #0]
d03e6eee:	461a      	mov	r2, r3
d03e6ef0:	f811 0032 	ldrb.w	r0, [r1, r2, lsl #3]
d03e6ef4:	b108      	cbz	r0, d03e6efa <main+0x2076>
d03e6ef6:	3301      	adds	r3, #1
d03e6ef8:	b2db      	uxtb	r3, r3
d03e6efa:	3201      	adds	r2, #1
d03e6efc:	2a06      	cmp	r2, #6
d03e6efe:	d1f7      	bne.n	d03e6ef0 <main+0x206c>
d03e6f00:	4d7e      	ldr	r5, [pc, #504]	; (d03e70fc <main+0x2278>)
d03e6f02:	2160      	movs	r1, #96	; 0x60
d03e6f04:	9200      	str	r2, [sp, #0]
d03e6f06:	a80c      	add	r0, sp, #48	; 0x30
d03e6f08:	4a7d      	ldr	r2, [pc, #500]	; (d03e7100 <main+0x227c>)
d03e6f0a:	f000 fbe7 	bl	d03e76dc <sniprintf>
d03e6f0e:	7b2b      	ldrb	r3, [r5, #12]
d03e6f10:	7b6a      	ldrb	r2, [r5, #13]
d03e6f12:	201e      	movs	r0, #30
d03e6f14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6f18:	7baa      	ldrb	r2, [r5, #14]
d03e6f1a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6f1e:	7bea      	ldrb	r2, [r5, #15]
d03e6f20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6f24:	685b      	ldr	r3, [r3, #4]
d03e6f26:	68db      	ldr	r3, [r3, #12]
d03e6f28:	4798      	blx	r3
d03e6f2a:	7b2b      	ldrb	r3, [r5, #12]
d03e6f2c:	7b6a      	ldrb	r2, [r5, #13]
d03e6f2e:	215c      	movs	r1, #92	; 0x5c
d03e6f30:	2018      	movs	r0, #24
d03e6f32:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6f36:	7baa      	ldrb	r2, [r5, #14]
d03e6f38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6f3c:	7bea      	ldrb	r2, [r5, #15]
d03e6f3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6f42:	aa0c      	add	r2, sp, #48	; 0x30
d03e6f44:	685b      	ldr	r3, [r3, #4]
d03e6f46:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6f48:	4798      	blx	r3
d03e6f4a:	4b6e      	ldr	r3, [pc, #440]	; (d03e7104 <main+0x2280>)
d03e6f4c:	2160      	movs	r1, #96	; 0x60
d03e6f4e:	4a6e      	ldr	r2, [pc, #440]	; (d03e7108 <main+0x2284>)
d03e6f50:	681b      	ldr	r3, [r3, #0]
d03e6f52:	a80c      	add	r0, sp, #48	; 0x30
d03e6f54:	9300      	str	r3, [sp, #0]
d03e6f56:	4b6d      	ldr	r3, [pc, #436]	; (d03e710c <main+0x2288>)
d03e6f58:	681b      	ldr	r3, [r3, #0]
d03e6f5a:	f000 fbbf 	bl	d03e76dc <sniprintf>
d03e6f5e:	7b2b      	ldrb	r3, [r5, #12]
d03e6f60:	7b6a      	ldrb	r2, [r5, #13]
d03e6f62:	2018      	movs	r0, #24
d03e6f64:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6f68:	7baa      	ldrb	r2, [r5, #14]
d03e6f6a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6f6e:	7bea      	ldrb	r2, [r5, #15]
d03e6f70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6f74:	685b      	ldr	r3, [r3, #4]
d03e6f76:	68db      	ldr	r3, [r3, #12]
d03e6f78:	4798      	blx	r3
d03e6f7a:	7b2b      	ldrb	r3, [r5, #12]
d03e6f7c:	7b6a      	ldrb	r2, [r5, #13]
d03e6f7e:	2170      	movs	r1, #112	; 0x70
d03e6f80:	2018      	movs	r0, #24
d03e6f82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6f86:	7baa      	ldrb	r2, [r5, #14]
d03e6f88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6f8c:	7bea      	ldrb	r2, [r5, #15]
d03e6f8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6f92:	aa0c      	add	r2, sp, #48	; 0x30
d03e6f94:	685b      	ldr	r3, [r3, #4]
d03e6f96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6f98:	4798      	blx	r3
d03e6f9a:	4b5d      	ldr	r3, [pc, #372]	; (d03e7110 <main+0x228c>)
d03e6f9c:	4a5d      	ldr	r2, [pc, #372]	; (d03e7114 <main+0x2290>)
d03e6f9e:	2160      	movs	r1, #96	; 0x60
d03e6fa0:	881b      	ldrh	r3, [r3, #0]
d03e6fa2:	a80c      	add	r0, sp, #48	; 0x30
d03e6fa4:	9300      	str	r3, [sp, #0]
d03e6fa6:	4b5c      	ldr	r3, [pc, #368]	; (d03e7118 <main+0x2294>)
d03e6fa8:	881b      	ldrh	r3, [r3, #0]
d03e6faa:	f000 fb97 	bl	d03e76dc <sniprintf>
d03e6fae:	7b2b      	ldrb	r3, [r5, #12]
d03e6fb0:	7b6a      	ldrb	r2, [r5, #13]
d03e6fb2:	2184      	movs	r1, #132	; 0x84
d03e6fb4:	2018      	movs	r0, #24
d03e6fb6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6fba:	7baa      	ldrb	r2, [r5, #14]
d03e6fbc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6fc0:	7bea      	ldrb	r2, [r5, #15]
d03e6fc2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e6fc6:	aa0c      	add	r2, sp, #48	; 0x30
d03e6fc8:	685b      	ldr	r3, [r3, #4]
d03e6fca:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e6fcc:	4798      	blx	r3
d03e6fce:	4b53      	ldr	r3, [pc, #332]	; (d03e711c <main+0x2298>)
d03e6fd0:	4a53      	ldr	r2, [pc, #332]	; (d03e7120 <main+0x229c>)
d03e6fd2:	2160      	movs	r1, #96	; 0x60
d03e6fd4:	f933 3016 	ldrsh.w	r3, [r3, r6, lsl #1]
d03e6fd8:	a80c      	add	r0, sp, #48	; 0x30
d03e6fda:	9301      	str	r3, [sp, #4]
d03e6fdc:	f818 3006 	ldrb.w	r3, [r8, r6]
d03e6fe0:	9300      	str	r3, [sp, #0]
d03e6fe2:	5dbb      	ldrb	r3, [r7, r6]
d03e6fe4:	26c8      	movs	r6, #200	; 0xc8
d03e6fe6:	f000 fb79 	bl	d03e76dc <sniprintf>
d03e6fea:	7b2b      	ldrb	r3, [r5, #12]
d03e6fec:	7b6a      	ldrb	r2, [r5, #13]
d03e6fee:	2170      	movs	r1, #112	; 0x70
d03e6ff0:	4f4c      	ldr	r7, [pc, #304]	; (d03e7124 <main+0x22a0>)
d03e6ff2:	20e6      	movs	r0, #230	; 0xe6
d03e6ff4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e6ff8:	7baa      	ldrb	r2, [r5, #14]
d03e6ffa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e6ffe:	7bea      	ldrb	r2, [r5, #15]
d03e7000:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e7004:	aa0c      	add	r2, sp, #48	; 0x30
d03e7006:	685b      	ldr	r3, [r3, #4]
d03e7008:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e700a:	4798      	blx	r3
d03e700c:	9b02      	ldr	r3, [sp, #8]
d03e700e:	f813 0b01 	ldrb.w	r0, [r3], #1
d03e7012:	9302      	str	r3, [sp, #8]
d03e7014:	f7f9 fdbc 	bl	d03e0b90 <midi_channel_active_count>
d03e7018:	4603      	mov	r3, r0
d03e701a:	b310      	cbz	r0, d03e7062 <main+0x21de>
d03e701c:	2160      	movs	r1, #96	; 0x60
d03e701e:	463a      	mov	r2, r7
d03e7020:	a80c      	add	r0, sp, #48	; 0x30
d03e7022:	f000 fb5b 	bl	d03e76dc <sniprintf>
d03e7026:	7b2b      	ldrb	r3, [r5, #12]
d03e7028:	7b6a      	ldrb	r2, [r5, #13]
d03e702a:	200e      	movs	r0, #14
d03e702c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7030:	7baa      	ldrb	r2, [r5, #14]
d03e7032:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7036:	7bea      	ldrb	r2, [r5, #15]
d03e7038:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e703c:	685b      	ldr	r3, [r3, #4]
d03e703e:	68db      	ldr	r3, [r3, #12]
d03e7040:	4798      	blx	r3
d03e7042:	7b2b      	ldrb	r3, [r5, #12]
d03e7044:	7b6a      	ldrb	r2, [r5, #13]
d03e7046:	4631      	mov	r1, r6
d03e7048:	20cc      	movs	r0, #204	; 0xcc
d03e704a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e704e:	7baa      	ldrb	r2, [r5, #14]
d03e7050:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7054:	7bea      	ldrb	r2, [r5, #15]
d03e7056:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e705a:	aa0c      	add	r2, sp, #48	; 0x30
d03e705c:	685b      	ldr	r3, [r3, #4]
d03e705e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e7060:	4798      	blx	r3
d03e7062:	3610      	adds	r6, #16
d03e7064:	f5b6 7f84 	cmp.w	r6, #264	; 0x108
d03e7068:	d1d0      	bne.n	d03e700c <main+0x2188>
d03e706a:	e4aa      	b.n	d03e69c2 <main+0x1b3e>
d03e706c:	7b2b      	ldrb	r3, [r5, #12]
d03e706e:	7b6a      	ldrb	r2, [r5, #13]
d03e7070:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7074:	7baa      	ldrb	r2, [r5, #14]
d03e7076:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e707a:	7bea      	ldrb	r2, [r5, #15]
d03e707c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e7080:	4a29      	ldr	r2, [pc, #164]	; (d03e7128 <main+0x22a4>)
d03e7082:	685b      	ldr	r3, [r3, #4]
d03e7084:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e7086:	e720      	b.n	d03e6eca <main+0x2046>
d03e7088:	4b28      	ldr	r3, [pc, #160]	; (d03e712c <main+0x22a8>)
d03e708a:	2700      	movs	r7, #0
d03e708c:	4d1b      	ldr	r5, [pc, #108]	; (d03e70fc <main+0x2278>)
d03e708e:	781e      	ldrb	r6, [r3, #0]
d03e7090:	230e      	movs	r3, #14
d03e7092:	00b6      	lsls	r6, r6, #2
d03e7094:	f8ad 3030 	strh.w	r3, [sp, #48]	; 0x30
d03e7098:	b2f6      	uxtb	r6, r6
d03e709a:	19f0      	adds	r0, r6, r7
d03e709c:	b2c0      	uxtb	r0, r0
d03e709e:	f7f9 fd77 	bl	d03e0b90 <midi_channel_active_count>
d03e70a2:	b1f8      	cbz	r0, d03e70e4 <main+0x2260>
d03e70a4:	7b2b      	ldrb	r3, [r5, #12]
d03e70a6:	200e      	movs	r0, #14
d03e70a8:	7b6a      	ldrb	r2, [r5, #13]
d03e70aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e70ae:	7baa      	ldrb	r2, [r5, #14]
d03e70b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e70b4:	7bea      	ldrb	r2, [r5, #15]
d03e70b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e70ba:	685b      	ldr	r3, [r3, #4]
d03e70bc:	68db      	ldr	r3, [r3, #12]
d03e70be:	4798      	blx	r3
d03e70c0:	7b2b      	ldrb	r3, [r5, #12]
d03e70c2:	7b6a      	ldrb	r2, [r5, #13]
d03e70c4:	2124      	movs	r1, #36	; 0x24
d03e70c6:	2020      	movs	r0, #32
d03e70c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e70cc:	7baa      	ldrb	r2, [r5, #14]
d03e70ce:	4379      	muls	r1, r7
d03e70d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e70d4:	7bea      	ldrb	r2, [r5, #15]
d03e70d6:	317c      	adds	r1, #124	; 0x7c
d03e70d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e70dc:	aa0c      	add	r2, sp, #48	; 0x30
d03e70de:	685b      	ldr	r3, [r3, #4]
d03e70e0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e70e2:	4798      	blx	r3
d03e70e4:	3701      	adds	r7, #1
d03e70e6:	2f04      	cmp	r7, #4
d03e70e8:	d1d7      	bne.n	d03e709a <main+0x2216>
d03e70ea:	e46a      	b.n	d03e69c2 <main+0x1b3e>
d03e70ec:	d03ec2b0 	.word	0xd03ec2b0
d03e70f0:	d03ec212 	.word	0xd03ec212
d03e70f4:	d03ec2af 	.word	0xd03ec2af
d03e70f8:	d03eb49c 	.word	0xd03eb49c
d03e70fc:	2001f000 	.word	0x2001f000
d03e7100:	d03e9427 	.word	0xd03e9427
d03e7104:	d03ea3a8 	.word	0xd03ea3a8
d03e7108:	d03e9434 	.word	0xd03e9434
d03e710c:	d03ea3a0 	.word	0xd03ea3a0
d03e7110:	d03ea18a 	.word	0xd03ea18a
d03e7114:	d03e9447 	.word	0xd03e9447
d03e7118:	d03ea38e 	.word	0xd03ea38e
d03e711c:	d03ea134 	.word	0xd03ea134
d03e7120:	d03e945d 	.word	0xd03e945d
d03e7124:	d03e90e1 	.word	0xd03e90e1
d03e7128:	d03e940a 	.word	0xd03e940a
d03e712c:	d03ebdc6 	.word	0xd03ebdc6
d03e7130:	4b8c      	ldr	r3, [pc, #560]	; (d03e7364 <main+0x24e0>)
d03e7132:	781b      	ldrb	r3, [r3, #0]
d03e7134:	2b00      	cmp	r3, #0
d03e7136:	f43f ac44 	beq.w	d03e69c2 <main+0x1b3e>
d03e713a:	4e8b      	ldr	r6, [pc, #556]	; (d03e7368 <main+0x24e4>)
d03e713c:	4b8b      	ldr	r3, [pc, #556]	; (d03e736c <main+0x24e8>)
d03e713e:	7837      	ldrb	r7, [r6, #0]
d03e7140:	f893 8000 	ldrb.w	r8, [r3]
d03e7144:	4d8a      	ldr	r5, [pc, #552]	; (d03e7370 <main+0x24ec>)
d03e7146:	4547      	cmp	r7, r8
d03e7148:	d325      	bcc.n	d03e7196 <main+0x2312>
d03e714a:	f108 0308 	add.w	r3, r8, #8
d03e714e:	b2db      	uxtb	r3, r3
d03e7150:	429f      	cmp	r7, r3
d03e7152:	d220      	bcs.n	d03e7196 <main+0x2312>
d03e7154:	7b2b      	ldrb	r3, [r5, #12]
d03e7156:	200e      	movs	r0, #14
d03e7158:	7b6a      	ldrb	r2, [r5, #13]
d03e715a:	eba7 0708 	sub.w	r7, r7, r8
d03e715e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7162:	7baa      	ldrb	r2, [r5, #14]
d03e7164:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7168:	7bea      	ldrb	r2, [r5, #15]
d03e716a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e716e:	685b      	ldr	r3, [r3, #4]
d03e7170:	68db      	ldr	r3, [r3, #12]
d03e7172:	4798      	blx	r3
d03e7174:	7b2b      	ldrb	r3, [r5, #12]
d03e7176:	7b6a      	ldrb	r2, [r5, #13]
d03e7178:	0139      	lsls	r1, r7, #4
d03e717a:	2014      	movs	r0, #20
d03e717c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7180:	7baa      	ldrb	r2, [r5, #14]
d03e7182:	3186      	adds	r1, #134	; 0x86
d03e7184:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7188:	7bea      	ldrb	r2, [r5, #15]
d03e718a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e718e:	4a79      	ldr	r2, [pc, #484]	; (d03e7374 <main+0x24f0>)
d03e7190:	685b      	ldr	r3, [r3, #4]
d03e7192:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e7194:	4798      	blx	r3
d03e7196:	4b78      	ldr	r3, [pc, #480]	; (d03e7378 <main+0x24f4>)
d03e7198:	2118      	movs	r1, #24
d03e719a:	4a78      	ldr	r2, [pc, #480]	; (d03e737c <main+0x24f8>)
d03e719c:	a80c      	add	r0, sp, #48	; 0x30
d03e719e:	781b      	ldrb	r3, [r3, #0]
d03e71a0:	9300      	str	r3, [sp, #0]
d03e71a2:	7833      	ldrb	r3, [r6, #0]
d03e71a4:	f000 fa9a 	bl	d03e76dc <sniprintf>
d03e71a8:	7b2b      	ldrb	r3, [r5, #12]
d03e71aa:	7b6a      	ldrb	r2, [r5, #13]
d03e71ac:	200e      	movs	r0, #14
d03e71ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e71b2:	7baa      	ldrb	r2, [r5, #14]
d03e71b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e71b8:	7bea      	ldrb	r2, [r5, #15]
d03e71ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e71be:	685b      	ldr	r3, [r3, #4]
d03e71c0:	68db      	ldr	r3, [r3, #12]
d03e71c2:	4798      	blx	r3
d03e71c4:	7b2b      	ldrb	r3, [r5, #12]
d03e71c6:	7b6a      	ldrb	r2, [r5, #13]
d03e71c8:	21fa      	movs	r1, #250	; 0xfa
d03e71ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e71ce:	7baa      	ldrb	r2, [r5, #14]
d03e71d0:	4608      	mov	r0, r1
d03e71d2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e71d6:	7bea      	ldrb	r2, [r5, #15]
d03e71d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e71dc:	aa0c      	add	r2, sp, #48	; 0x30
d03e71de:	685b      	ldr	r3, [r3, #4]
d03e71e0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03e71e2:	e651      	b.n	d03e6e88 <main+0x2004>
d03e71e4:	7b23      	ldrb	r3, [r4, #12]
d03e71e6:	7b62      	ldrb	r2, [r4, #13]
d03e71e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e71ec:	7ba2      	ldrb	r2, [r4, #14]
d03e71ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e71f2:	7be2      	ldrb	r2, [r4, #15]
d03e71f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e71f8:	2202      	movs	r2, #2
d03e71fa:	681b      	ldr	r3, [r3, #0]
d03e71fc:	9200      	str	r2, [sp, #0]
d03e71fe:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03e7202:	695d      	ldr	r5, [r3, #20]
d03e7204:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03e7208:	4610      	mov	r0, r2
d03e720a:	4619      	mov	r1, r3
d03e720c:	47a8      	blx	r5
d03e720e:	7b23      	ldrb	r3, [r4, #12]
d03e7210:	7b62      	ldrb	r2, [r4, #13]
d03e7212:	2100      	movs	r1, #0
d03e7214:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7218:	7ba2      	ldrb	r2, [r4, #14]
d03e721a:	4608      	mov	r0, r1
d03e721c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7220:	7be2      	ldrb	r2, [r4, #15]
d03e7222:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e7226:	681b      	ldr	r3, [r3, #0]
d03e7228:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03e722a:	4798      	blx	r3
d03e722c:	7923      	ldrb	r3, [r4, #4]
d03e722e:	7962      	ldrb	r2, [r4, #5]
d03e7230:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e7234:	79a2      	ldrb	r2, [r4, #6]
d03e7236:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e723a:	79e2      	ldrb	r2, [r4, #7]
d03e723c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e7240:	685b      	ldr	r3, [r3, #4]
d03e7242:	4798      	blx	r3
d03e7244:	7823      	ldrb	r3, [r4, #0]
d03e7246:	7862      	ldrb	r2, [r4, #1]
d03e7248:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e724c:	78a2      	ldrb	r2, [r4, #2]
d03e724e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7252:	78e2      	ldrb	r2, [r4, #3]
d03e7254:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e7258:	685b      	ldr	r3, [r3, #4]
d03e725a:	4798      	blx	r3
d03e725c:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e7260:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e7264:	2000      	movs	r0, #0
d03e7266:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e726a:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d03e726e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7272:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d03e7276:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e727a:	685b      	ldr	r3, [r3, #4]
d03e727c:	4798      	blx	r3
d03e727e:	f894 3020 	ldrb.w	r3, [r4, #32]
d03e7282:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d03e7286:	2000      	movs	r0, #0
d03e7288:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e728c:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d03e7290:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e7294:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d03e7298:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e729c:	681b      	ldr	r3, [r3, #0]
d03e729e:	4798      	blx	r3
d03e72a0:	f7fa f89c 	bl	d03e13dc <sid_midi_all_notes_off>
d03e72a4:	7d23      	ldrb	r3, [r4, #20]
d03e72a6:	7d62      	ldrb	r2, [r4, #21]
d03e72a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e72ac:	7da2      	ldrb	r2, [r4, #22]
d03e72ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e72b2:	7de2      	ldrb	r2, [r4, #23]
d03e72b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e72b8:	685b      	ldr	r3, [r3, #4]
d03e72ba:	68db      	ldr	r3, [r3, #12]
d03e72bc:	4798      	blx	r3
d03e72be:	7d23      	ldrb	r3, [r4, #20]
d03e72c0:	7d62      	ldrb	r2, [r4, #21]
d03e72c2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d03e72c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e72ca:	7da2      	ldrb	r2, [r4, #22]
d03e72cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e72d0:	7de2      	ldrb	r2, [r4, #23]
d03e72d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e72d6:	681b      	ldr	r3, [r3, #0]
d03e72d8:	681b      	ldr	r3, [r3, #0]
d03e72da:	4798      	blx	r3
d03e72dc:	7d23      	ldrb	r3, [r4, #20]
d03e72de:	7d62      	ldrb	r2, [r4, #21]
d03e72e0:	2000      	movs	r0, #0
d03e72e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e72e6:	7da2      	ldrb	r2, [r4, #22]
d03e72e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03e72ec:	7de2      	ldrb	r2, [r4, #23]
d03e72ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e72f2:	681b      	ldr	r3, [r3, #0]
d03e72f4:	685b      	ldr	r3, [r3, #4]
d03e72f6:	7018      	strb	r0, [r3, #0]
d03e72f8:	b025      	add	sp, #148	; 0x94
d03e72fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e72fe:	aa0c      	add	r2, sp, #48	; 0x30
d03e7300:	a90b      	add	r1, sp, #44	; 0x2c
d03e7302:	4648      	mov	r0, r9
d03e7304:	f7f9 f97e 	bl	d03e0604 <sid_voice_get_vm_debug>
d03e7308:	2800      	cmp	r0, #0
d03e730a:	f43f a8bb 	beq.w	d03e6484 <main+0x1600>
d03e730e:	f89d 3030 	ldrb.w	r3, [sp, #48]	; 0x30
d03e7312:	2b00      	cmp	r3, #0
d03e7314:	f43f a8b6 	beq.w	d03e6484 <main+0x1600>
d03e7318:	4b19      	ldr	r3, [pc, #100]	; (d03e7380 <main+0x24fc>)
d03e731a:	4914      	ldr	r1, [pc, #80]	; (d03e736c <main+0x24e8>)
d03e731c:	7818      	ldrb	r0, [r3, #0]
d03e731e:	780a      	ldrb	r2, [r1, #0]
d03e7320:	b918      	cbnz	r0, d03e732a <main+0x24a6>
d03e7322:	4818      	ldr	r0, [pc, #96]	; (d03e7384 <main+0x2500>)
d03e7324:	7002      	strb	r2, [r0, #0]
d03e7326:	2001      	movs	r0, #1
d03e7328:	7018      	strb	r0, [r3, #0]
d03e732a:	f89d 302c 	ldrb.w	r3, [sp, #44]	; 0x2c
d03e732e:	480e      	ldr	r0, [pc, #56]	; (d03e7368 <main+0x24e4>)
d03e7330:	42bb      	cmp	r3, r7
d03e7332:	f04f 0301 	mov.w	r3, #1
d03e7336:	bf28      	it	cs
d03e7338:	f107 37ff 	addcs.w	r7, r7, #4294967295	; 0xffffffff
d03e733c:	f88a 3000 	strb.w	r3, [sl]
d03e7340:	bf28      	it	cs
d03e7342:	f88d 702c 	strbcs.w	r7, [sp, #44]	; 0x2c
d03e7346:	f89d 302c 	ldrb.w	r3, [sp, #44]	; 0x2c
d03e734a:	7003      	strb	r3, [r0, #0]
d03e734c:	4293      	cmp	r3, r2
d03e734e:	480a      	ldr	r0, [pc, #40]	; (d03e7378 <main+0x24f4>)
d03e7350:	f880 9000 	strb.w	r9, [r0]
d03e7354:	f4bf aaf6 	bcs.w	d03e6944 <main+0x1ac0>
d03e7358:	700b      	strb	r3, [r1, #0]
d03e735a:	f7f9 fd2b 	bl	d03e0db4 <ui_clamp_vm_scroll>
d03e735e:	f7ff b89c 	b.w	d03e649a <main+0x1616>
d03e7362:	bf00      	nop
d03e7364:	d03ec467 	.word	0xd03ec467
d03e7368:	d03ec466 	.word	0xd03ec466
d03e736c:	d03ec469 	.word	0xd03ec469
d03e7370:	2001f000 	.word	0x2001f000
d03e7374:	d03e90f7 	.word	0xd03e90f7
d03e7378:	d03ec468 	.word	0xd03ec468
d03e737c:	d03e9479 	.word	0xd03e9479
d03e7380:	d03ec464 	.word	0xd03ec464
d03e7384:	d03ec465 	.word	0xd03ec465

d03e7388 <__errno>:
d03e7388:	4b01      	ldr	r3, [pc, #4]	; (d03e7390 <__errno+0x8>)
d03e738a:	6818      	ldr	r0, [r3, #0]
d03e738c:	4770      	bx	lr
d03e738e:	bf00      	nop
d03e7390:	d03ea07c 	.word	0xd03ea07c

d03e7394 <malloc>:
d03e7394:	4b02      	ldr	r3, [pc, #8]	; (d03e73a0 <malloc+0xc>)
d03e7396:	4601      	mov	r1, r0
d03e7398:	6818      	ldr	r0, [r3, #0]
d03e739a:	f000 b877 	b.w	d03e748c <_malloc_r>
d03e739e:	bf00      	nop
d03e73a0:	d03ea07c 	.word	0xd03ea07c

d03e73a4 <memcmp>:
d03e73a4:	b530      	push	{r4, r5, lr}
d03e73a6:	3901      	subs	r1, #1
d03e73a8:	2400      	movs	r4, #0
d03e73aa:	42a2      	cmp	r2, r4
d03e73ac:	d101      	bne.n	d03e73b2 <memcmp+0xe>
d03e73ae:	2000      	movs	r0, #0
d03e73b0:	e005      	b.n	d03e73be <memcmp+0x1a>
d03e73b2:	5d03      	ldrb	r3, [r0, r4]
d03e73b4:	3401      	adds	r4, #1
d03e73b6:	5d0d      	ldrb	r5, [r1, r4]
d03e73b8:	42ab      	cmp	r3, r5
d03e73ba:	d0f6      	beq.n	d03e73aa <memcmp+0x6>
d03e73bc:	1b58      	subs	r0, r3, r5
d03e73be:	bd30      	pop	{r4, r5, pc}

d03e73c0 <memcpy>:
d03e73c0:	440a      	add	r2, r1
d03e73c2:	4291      	cmp	r1, r2
d03e73c4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03e73c8:	d100      	bne.n	d03e73cc <memcpy+0xc>
d03e73ca:	4770      	bx	lr
d03e73cc:	b510      	push	{r4, lr}
d03e73ce:	f811 4b01 	ldrb.w	r4, [r1], #1
d03e73d2:	f803 4f01 	strb.w	r4, [r3, #1]!
d03e73d6:	4291      	cmp	r1, r2
d03e73d8:	d1f9      	bne.n	d03e73ce <memcpy+0xe>
d03e73da:	bd10      	pop	{r4, pc}

d03e73dc <memset>:
d03e73dc:	4402      	add	r2, r0
d03e73de:	4603      	mov	r3, r0
d03e73e0:	4293      	cmp	r3, r2
d03e73e2:	d100      	bne.n	d03e73e6 <memset+0xa>
d03e73e4:	4770      	bx	lr
d03e73e6:	f803 1b01 	strb.w	r1, [r3], #1
d03e73ea:	e7f9      	b.n	d03e73e0 <memset+0x4>

d03e73ec <_free_r>:
d03e73ec:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e73ee:	2900      	cmp	r1, #0
d03e73f0:	d048      	beq.n	d03e7484 <_free_r+0x98>
d03e73f2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e73f6:	9001      	str	r0, [sp, #4]
d03e73f8:	2b00      	cmp	r3, #0
d03e73fa:	f1a1 0404 	sub.w	r4, r1, #4
d03e73fe:	bfb8      	it	lt
d03e7400:	18e4      	addlt	r4, r4, r3
d03e7402:	f000 fbab 	bl	d03e7b5c <__malloc_lock>
d03e7406:	4a20      	ldr	r2, [pc, #128]	; (d03e7488 <_free_r+0x9c>)
d03e7408:	9801      	ldr	r0, [sp, #4]
d03e740a:	6813      	ldr	r3, [r2, #0]
d03e740c:	4615      	mov	r5, r2
d03e740e:	b933      	cbnz	r3, d03e741e <_free_r+0x32>
d03e7410:	6063      	str	r3, [r4, #4]
d03e7412:	6014      	str	r4, [r2, #0]
d03e7414:	b003      	add	sp, #12
d03e7416:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e741a:	f000 bba5 	b.w	d03e7b68 <__malloc_unlock>
d03e741e:	42a3      	cmp	r3, r4
d03e7420:	d90b      	bls.n	d03e743a <_free_r+0x4e>
d03e7422:	6821      	ldr	r1, [r4, #0]
d03e7424:	1862      	adds	r2, r4, r1
d03e7426:	4293      	cmp	r3, r2
d03e7428:	bf04      	itt	eq
d03e742a:	681a      	ldreq	r2, [r3, #0]
d03e742c:	685b      	ldreq	r3, [r3, #4]
d03e742e:	6063      	str	r3, [r4, #4]
d03e7430:	bf04      	itt	eq
d03e7432:	1852      	addeq	r2, r2, r1
d03e7434:	6022      	streq	r2, [r4, #0]
d03e7436:	602c      	str	r4, [r5, #0]
d03e7438:	e7ec      	b.n	d03e7414 <_free_r+0x28>
d03e743a:	461a      	mov	r2, r3
d03e743c:	685b      	ldr	r3, [r3, #4]
d03e743e:	b10b      	cbz	r3, d03e7444 <_free_r+0x58>
d03e7440:	42a3      	cmp	r3, r4
d03e7442:	d9fa      	bls.n	d03e743a <_free_r+0x4e>
d03e7444:	6811      	ldr	r1, [r2, #0]
d03e7446:	1855      	adds	r5, r2, r1
d03e7448:	42a5      	cmp	r5, r4
d03e744a:	d10b      	bne.n	d03e7464 <_free_r+0x78>
d03e744c:	6824      	ldr	r4, [r4, #0]
d03e744e:	4421      	add	r1, r4
d03e7450:	1854      	adds	r4, r2, r1
d03e7452:	42a3      	cmp	r3, r4
d03e7454:	6011      	str	r1, [r2, #0]
d03e7456:	d1dd      	bne.n	d03e7414 <_free_r+0x28>
d03e7458:	681c      	ldr	r4, [r3, #0]
d03e745a:	685b      	ldr	r3, [r3, #4]
d03e745c:	6053      	str	r3, [r2, #4]
d03e745e:	4421      	add	r1, r4
d03e7460:	6011      	str	r1, [r2, #0]
d03e7462:	e7d7      	b.n	d03e7414 <_free_r+0x28>
d03e7464:	d902      	bls.n	d03e746c <_free_r+0x80>
d03e7466:	230c      	movs	r3, #12
d03e7468:	6003      	str	r3, [r0, #0]
d03e746a:	e7d3      	b.n	d03e7414 <_free_r+0x28>
d03e746c:	6825      	ldr	r5, [r4, #0]
d03e746e:	1961      	adds	r1, r4, r5
d03e7470:	428b      	cmp	r3, r1
d03e7472:	bf04      	itt	eq
d03e7474:	6819      	ldreq	r1, [r3, #0]
d03e7476:	685b      	ldreq	r3, [r3, #4]
d03e7478:	6063      	str	r3, [r4, #4]
d03e747a:	bf04      	itt	eq
d03e747c:	1949      	addeq	r1, r1, r5
d03e747e:	6021      	streq	r1, [r4, #0]
d03e7480:	6054      	str	r4, [r2, #4]
d03e7482:	e7c7      	b.n	d03e7414 <_free_r+0x28>
d03e7484:	b003      	add	sp, #12
d03e7486:	bd30      	pop	{r4, r5, pc}
d03e7488:	d03ec46c 	.word	0xd03ec46c

d03e748c <_malloc_r>:
d03e748c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e748e:	1ccd      	adds	r5, r1, #3
d03e7490:	f025 0503 	bic.w	r5, r5, #3
d03e7494:	3508      	adds	r5, #8
d03e7496:	2d0c      	cmp	r5, #12
d03e7498:	bf38      	it	cc
d03e749a:	250c      	movcc	r5, #12
d03e749c:	2d00      	cmp	r5, #0
d03e749e:	4606      	mov	r6, r0
d03e74a0:	db01      	blt.n	d03e74a6 <_malloc_r+0x1a>
d03e74a2:	42a9      	cmp	r1, r5
d03e74a4:	d903      	bls.n	d03e74ae <_malloc_r+0x22>
d03e74a6:	230c      	movs	r3, #12
d03e74a8:	6033      	str	r3, [r6, #0]
d03e74aa:	2000      	movs	r0, #0
d03e74ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e74ae:	f000 fb55 	bl	d03e7b5c <__malloc_lock>
d03e74b2:	4921      	ldr	r1, [pc, #132]	; (d03e7538 <_malloc_r+0xac>)
d03e74b4:	680a      	ldr	r2, [r1, #0]
d03e74b6:	4614      	mov	r4, r2
d03e74b8:	b99c      	cbnz	r4, d03e74e2 <_malloc_r+0x56>
d03e74ba:	4f20      	ldr	r7, [pc, #128]	; (d03e753c <_malloc_r+0xb0>)
d03e74bc:	683b      	ldr	r3, [r7, #0]
d03e74be:	b923      	cbnz	r3, d03e74ca <_malloc_r+0x3e>
d03e74c0:	4621      	mov	r1, r4
d03e74c2:	4630      	mov	r0, r6
d03e74c4:	f7f8 fe0c 	bl	d03e00e0 <_sbrk_r>
d03e74c8:	6038      	str	r0, [r7, #0]
d03e74ca:	4629      	mov	r1, r5
d03e74cc:	4630      	mov	r0, r6
d03e74ce:	f7f8 fe07 	bl	d03e00e0 <_sbrk_r>
d03e74d2:	1c43      	adds	r3, r0, #1
d03e74d4:	d123      	bne.n	d03e751e <_malloc_r+0x92>
d03e74d6:	230c      	movs	r3, #12
d03e74d8:	6033      	str	r3, [r6, #0]
d03e74da:	4630      	mov	r0, r6
d03e74dc:	f000 fb44 	bl	d03e7b68 <__malloc_unlock>
d03e74e0:	e7e3      	b.n	d03e74aa <_malloc_r+0x1e>
d03e74e2:	6823      	ldr	r3, [r4, #0]
d03e74e4:	1b5b      	subs	r3, r3, r5
d03e74e6:	d417      	bmi.n	d03e7518 <_malloc_r+0x8c>
d03e74e8:	2b0b      	cmp	r3, #11
d03e74ea:	d903      	bls.n	d03e74f4 <_malloc_r+0x68>
d03e74ec:	6023      	str	r3, [r4, #0]
d03e74ee:	441c      	add	r4, r3
d03e74f0:	6025      	str	r5, [r4, #0]
d03e74f2:	e004      	b.n	d03e74fe <_malloc_r+0x72>
d03e74f4:	6863      	ldr	r3, [r4, #4]
d03e74f6:	42a2      	cmp	r2, r4
d03e74f8:	bf0c      	ite	eq
d03e74fa:	600b      	streq	r3, [r1, #0]
d03e74fc:	6053      	strne	r3, [r2, #4]
d03e74fe:	4630      	mov	r0, r6
d03e7500:	f000 fb32 	bl	d03e7b68 <__malloc_unlock>
d03e7504:	f104 000b 	add.w	r0, r4, #11
d03e7508:	1d23      	adds	r3, r4, #4
d03e750a:	f020 0007 	bic.w	r0, r0, #7
d03e750e:	1ac2      	subs	r2, r0, r3
d03e7510:	d0cc      	beq.n	d03e74ac <_malloc_r+0x20>
d03e7512:	1a1b      	subs	r3, r3, r0
d03e7514:	50a3      	str	r3, [r4, r2]
d03e7516:	e7c9      	b.n	d03e74ac <_malloc_r+0x20>
d03e7518:	4622      	mov	r2, r4
d03e751a:	6864      	ldr	r4, [r4, #4]
d03e751c:	e7cc      	b.n	d03e74b8 <_malloc_r+0x2c>
d03e751e:	1cc4      	adds	r4, r0, #3
d03e7520:	f024 0403 	bic.w	r4, r4, #3
d03e7524:	42a0      	cmp	r0, r4
d03e7526:	d0e3      	beq.n	d03e74f0 <_malloc_r+0x64>
d03e7528:	1a21      	subs	r1, r4, r0
d03e752a:	4630      	mov	r0, r6
d03e752c:	f7f8 fdd8 	bl	d03e00e0 <_sbrk_r>
d03e7530:	3001      	adds	r0, #1
d03e7532:	d1dd      	bne.n	d03e74f0 <_malloc_r+0x64>
d03e7534:	e7cf      	b.n	d03e74d6 <_malloc_r+0x4a>
d03e7536:	bf00      	nop
d03e7538:	d03ec46c 	.word	0xd03ec46c
d03e753c:	d03ec470 	.word	0xd03ec470

d03e7540 <setbuf>:
d03e7540:	2900      	cmp	r1, #0
d03e7542:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e7546:	bf0c      	ite	eq
d03e7548:	2202      	moveq	r2, #2
d03e754a:	2200      	movne	r2, #0
d03e754c:	f000 b800 	b.w	d03e7550 <setvbuf>

d03e7550 <setvbuf>:
d03e7550:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e7554:	461d      	mov	r5, r3
d03e7556:	4b5d      	ldr	r3, [pc, #372]	; (d03e76cc <setvbuf+0x17c>)
d03e7558:	681f      	ldr	r7, [r3, #0]
d03e755a:	4604      	mov	r4, r0
d03e755c:	460e      	mov	r6, r1
d03e755e:	4690      	mov	r8, r2
d03e7560:	b127      	cbz	r7, d03e756c <setvbuf+0x1c>
d03e7562:	69bb      	ldr	r3, [r7, #24]
d03e7564:	b913      	cbnz	r3, d03e756c <setvbuf+0x1c>
d03e7566:	4638      	mov	r0, r7
d03e7568:	f000 fa34 	bl	d03e79d4 <__sinit>
d03e756c:	4b58      	ldr	r3, [pc, #352]	; (d03e76d0 <setvbuf+0x180>)
d03e756e:	429c      	cmp	r4, r3
d03e7570:	d167      	bne.n	d03e7642 <setvbuf+0xf2>
d03e7572:	687c      	ldr	r4, [r7, #4]
d03e7574:	f1b8 0f02 	cmp.w	r8, #2
d03e7578:	d006      	beq.n	d03e7588 <setvbuf+0x38>
d03e757a:	f1b8 0f01 	cmp.w	r8, #1
d03e757e:	f200 809f 	bhi.w	d03e76c0 <setvbuf+0x170>
d03e7582:	2d00      	cmp	r5, #0
d03e7584:	f2c0 809c 	blt.w	d03e76c0 <setvbuf+0x170>
d03e7588:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e758a:	07db      	lsls	r3, r3, #31
d03e758c:	d405      	bmi.n	d03e759a <setvbuf+0x4a>
d03e758e:	89a3      	ldrh	r3, [r4, #12]
d03e7590:	0598      	lsls	r0, r3, #22
d03e7592:	d402      	bmi.n	d03e759a <setvbuf+0x4a>
d03e7594:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7596:	f000 fabb 	bl	d03e7b10 <__retarget_lock_acquire_recursive>
d03e759a:	4621      	mov	r1, r4
d03e759c:	4638      	mov	r0, r7
d03e759e:	f000 f985 	bl	d03e78ac <_fflush_r>
d03e75a2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e75a4:	b141      	cbz	r1, d03e75b8 <setvbuf+0x68>
d03e75a6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e75aa:	4299      	cmp	r1, r3
d03e75ac:	d002      	beq.n	d03e75b4 <setvbuf+0x64>
d03e75ae:	4638      	mov	r0, r7
d03e75b0:	f7ff ff1c 	bl	d03e73ec <_free_r>
d03e75b4:	2300      	movs	r3, #0
d03e75b6:	6363      	str	r3, [r4, #52]	; 0x34
d03e75b8:	2300      	movs	r3, #0
d03e75ba:	61a3      	str	r3, [r4, #24]
d03e75bc:	6063      	str	r3, [r4, #4]
d03e75be:	89a3      	ldrh	r3, [r4, #12]
d03e75c0:	0619      	lsls	r1, r3, #24
d03e75c2:	d503      	bpl.n	d03e75cc <setvbuf+0x7c>
d03e75c4:	6921      	ldr	r1, [r4, #16]
d03e75c6:	4638      	mov	r0, r7
d03e75c8:	f7ff ff10 	bl	d03e73ec <_free_r>
d03e75cc:	89a3      	ldrh	r3, [r4, #12]
d03e75ce:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03e75d2:	f023 0303 	bic.w	r3, r3, #3
d03e75d6:	f1b8 0f02 	cmp.w	r8, #2
d03e75da:	81a3      	strh	r3, [r4, #12]
d03e75dc:	d06c      	beq.n	d03e76b8 <setvbuf+0x168>
d03e75de:	ab01      	add	r3, sp, #4
d03e75e0:	466a      	mov	r2, sp
d03e75e2:	4621      	mov	r1, r4
d03e75e4:	4638      	mov	r0, r7
d03e75e6:	f000 fa95 	bl	d03e7b14 <__swhatbuf_r>
d03e75ea:	89a3      	ldrh	r3, [r4, #12]
d03e75ec:	4318      	orrs	r0, r3
d03e75ee:	81a0      	strh	r0, [r4, #12]
d03e75f0:	2d00      	cmp	r5, #0
d03e75f2:	d130      	bne.n	d03e7656 <setvbuf+0x106>
d03e75f4:	9d00      	ldr	r5, [sp, #0]
d03e75f6:	4628      	mov	r0, r5
d03e75f8:	f7ff fecc 	bl	d03e7394 <malloc>
d03e75fc:	4606      	mov	r6, r0
d03e75fe:	2800      	cmp	r0, #0
d03e7600:	d155      	bne.n	d03e76ae <setvbuf+0x15e>
d03e7602:	f8dd 9000 	ldr.w	r9, [sp]
d03e7606:	45a9      	cmp	r9, r5
d03e7608:	d14a      	bne.n	d03e76a0 <setvbuf+0x150>
d03e760a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e760e:	2200      	movs	r2, #0
d03e7610:	60a2      	str	r2, [r4, #8]
d03e7612:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03e7616:	6022      	str	r2, [r4, #0]
d03e7618:	6122      	str	r2, [r4, #16]
d03e761a:	2201      	movs	r2, #1
d03e761c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e7620:	6162      	str	r2, [r4, #20]
d03e7622:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e7624:	f043 0302 	orr.w	r3, r3, #2
d03e7628:	07d2      	lsls	r2, r2, #31
d03e762a:	81a3      	strh	r3, [r4, #12]
d03e762c:	d405      	bmi.n	d03e763a <setvbuf+0xea>
d03e762e:	f413 7f00 	tst.w	r3, #512	; 0x200
d03e7632:	d102      	bne.n	d03e763a <setvbuf+0xea>
d03e7634:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e7636:	f000 fa6c 	bl	d03e7b12 <__retarget_lock_release_recursive>
d03e763a:	4628      	mov	r0, r5
d03e763c:	b003      	add	sp, #12
d03e763e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e7642:	4b24      	ldr	r3, [pc, #144]	; (d03e76d4 <setvbuf+0x184>)
d03e7644:	429c      	cmp	r4, r3
d03e7646:	d101      	bne.n	d03e764c <setvbuf+0xfc>
d03e7648:	68bc      	ldr	r4, [r7, #8]
d03e764a:	e793      	b.n	d03e7574 <setvbuf+0x24>
d03e764c:	4b22      	ldr	r3, [pc, #136]	; (d03e76d8 <setvbuf+0x188>)
d03e764e:	429c      	cmp	r4, r3
d03e7650:	bf08      	it	eq
d03e7652:	68fc      	ldreq	r4, [r7, #12]
d03e7654:	e78e      	b.n	d03e7574 <setvbuf+0x24>
d03e7656:	2e00      	cmp	r6, #0
d03e7658:	d0cd      	beq.n	d03e75f6 <setvbuf+0xa6>
d03e765a:	69bb      	ldr	r3, [r7, #24]
d03e765c:	b913      	cbnz	r3, d03e7664 <setvbuf+0x114>
d03e765e:	4638      	mov	r0, r7
d03e7660:	f000 f9b8 	bl	d03e79d4 <__sinit>
d03e7664:	f1b8 0f01 	cmp.w	r8, #1
d03e7668:	bf08      	it	eq
d03e766a:	89a3      	ldrheq	r3, [r4, #12]
d03e766c:	6026      	str	r6, [r4, #0]
d03e766e:	bf04      	itt	eq
d03e7670:	f043 0301 	orreq.w	r3, r3, #1
d03e7674:	81a3      	strheq	r3, [r4, #12]
d03e7676:	89a2      	ldrh	r2, [r4, #12]
d03e7678:	f012 0308 	ands.w	r3, r2, #8
d03e767c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03e7680:	d01c      	beq.n	d03e76bc <setvbuf+0x16c>
d03e7682:	07d3      	lsls	r3, r2, #31
d03e7684:	bf41      	itttt	mi
d03e7686:	2300      	movmi	r3, #0
d03e7688:	426d      	negmi	r5, r5
d03e768a:	60a3      	strmi	r3, [r4, #8]
d03e768c:	61a5      	strmi	r5, [r4, #24]
d03e768e:	bf58      	it	pl
d03e7690:	60a5      	strpl	r5, [r4, #8]
d03e7692:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03e7694:	f015 0501 	ands.w	r5, r5, #1
d03e7698:	d115      	bne.n	d03e76c6 <setvbuf+0x176>
d03e769a:	f412 7f00 	tst.w	r2, #512	; 0x200
d03e769e:	e7c8      	b.n	d03e7632 <setvbuf+0xe2>
d03e76a0:	4648      	mov	r0, r9
d03e76a2:	f7ff fe77 	bl	d03e7394 <malloc>
d03e76a6:	4606      	mov	r6, r0
d03e76a8:	2800      	cmp	r0, #0
d03e76aa:	d0ae      	beq.n	d03e760a <setvbuf+0xba>
d03e76ac:	464d      	mov	r5, r9
d03e76ae:	89a3      	ldrh	r3, [r4, #12]
d03e76b0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e76b4:	81a3      	strh	r3, [r4, #12]
d03e76b6:	e7d0      	b.n	d03e765a <setvbuf+0x10a>
d03e76b8:	2500      	movs	r5, #0
d03e76ba:	e7a8      	b.n	d03e760e <setvbuf+0xbe>
d03e76bc:	60a3      	str	r3, [r4, #8]
d03e76be:	e7e8      	b.n	d03e7692 <setvbuf+0x142>
d03e76c0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e76c4:	e7b9      	b.n	d03e763a <setvbuf+0xea>
d03e76c6:	2500      	movs	r5, #0
d03e76c8:	e7b7      	b.n	d03e763a <setvbuf+0xea>
d03e76ca:	bf00      	nop
d03e76cc:	d03ea07c 	.word	0xd03ea07c
d03e76d0:	d03e9a00 	.word	0xd03e9a00
d03e76d4:	d03e9a20 	.word	0xd03e9a20
d03e76d8:	d03e99e0 	.word	0xd03e99e0

d03e76dc <sniprintf>:
d03e76dc:	b40c      	push	{r2, r3}
d03e76de:	b530      	push	{r4, r5, lr}
d03e76e0:	4b17      	ldr	r3, [pc, #92]	; (d03e7740 <sniprintf+0x64>)
d03e76e2:	1e0c      	subs	r4, r1, #0
d03e76e4:	681d      	ldr	r5, [r3, #0]
d03e76e6:	b09d      	sub	sp, #116	; 0x74
d03e76e8:	da08      	bge.n	d03e76fc <sniprintf+0x20>
d03e76ea:	238b      	movs	r3, #139	; 0x8b
d03e76ec:	602b      	str	r3, [r5, #0]
d03e76ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e76f2:	b01d      	add	sp, #116	; 0x74
d03e76f4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e76f8:	b002      	add	sp, #8
d03e76fa:	4770      	bx	lr
d03e76fc:	f44f 7302 	mov.w	r3, #520	; 0x208
d03e7700:	f8ad 3014 	strh.w	r3, [sp, #20]
d03e7704:	bf14      	ite	ne
d03e7706:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d03e770a:	4623      	moveq	r3, r4
d03e770c:	9304      	str	r3, [sp, #16]
d03e770e:	9307      	str	r3, [sp, #28]
d03e7710:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03e7714:	9002      	str	r0, [sp, #8]
d03e7716:	9006      	str	r0, [sp, #24]
d03e7718:	f8ad 3016 	strh.w	r3, [sp, #22]
d03e771c:	9a20      	ldr	r2, [sp, #128]	; 0x80
d03e771e:	ab21      	add	r3, sp, #132	; 0x84
d03e7720:	a902      	add	r1, sp, #8
d03e7722:	4628      	mov	r0, r5
d03e7724:	9301      	str	r3, [sp, #4]
d03e7726:	f000 fa81 	bl	d03e7c2c <_svfiprintf_r>
d03e772a:	1c43      	adds	r3, r0, #1
d03e772c:	bfbc      	itt	lt
d03e772e:	238b      	movlt	r3, #139	; 0x8b
d03e7730:	602b      	strlt	r3, [r5, #0]
d03e7732:	2c00      	cmp	r4, #0
d03e7734:	d0dd      	beq.n	d03e76f2 <sniprintf+0x16>
d03e7736:	9b02      	ldr	r3, [sp, #8]
d03e7738:	2200      	movs	r2, #0
d03e773a:	701a      	strb	r2, [r3, #0]
d03e773c:	e7d9      	b.n	d03e76f2 <sniprintf+0x16>
d03e773e:	bf00      	nop
d03e7740:	d03ea07c 	.word	0xd03ea07c

d03e7744 <strcmp>:
d03e7744:	f810 2b01 	ldrb.w	r2, [r0], #1
d03e7748:	f811 3b01 	ldrb.w	r3, [r1], #1
d03e774c:	2a01      	cmp	r2, #1
d03e774e:	bf28      	it	cs
d03e7750:	429a      	cmpcs	r2, r3
d03e7752:	d0f7      	beq.n	d03e7744 <strcmp>
d03e7754:	1ad0      	subs	r0, r2, r3
d03e7756:	4770      	bx	lr

d03e7758 <strcpy>:
d03e7758:	4603      	mov	r3, r0
d03e775a:	f811 2b01 	ldrb.w	r2, [r1], #1
d03e775e:	f803 2b01 	strb.w	r2, [r3], #1
d03e7762:	2a00      	cmp	r2, #0
d03e7764:	d1f9      	bne.n	d03e775a <strcpy+0x2>
d03e7766:	4770      	bx	lr

d03e7768 <strlen>:
d03e7768:	4603      	mov	r3, r0
d03e776a:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e776e:	2a00      	cmp	r2, #0
d03e7770:	d1fb      	bne.n	d03e776a <strlen+0x2>
d03e7772:	1a18      	subs	r0, r3, r0
d03e7774:	3801      	subs	r0, #1
d03e7776:	4770      	bx	lr

d03e7778 <strrchr>:
d03e7778:	b538      	push	{r3, r4, r5, lr}
d03e777a:	4603      	mov	r3, r0
d03e777c:	460c      	mov	r4, r1
d03e777e:	b969      	cbnz	r1, d03e779c <strrchr+0x24>
d03e7780:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03e7784:	f000 bd29 	b.w	d03e81da <strchr>
d03e7788:	1c43      	adds	r3, r0, #1
d03e778a:	4605      	mov	r5, r0
d03e778c:	4621      	mov	r1, r4
d03e778e:	4618      	mov	r0, r3
d03e7790:	f000 fd23 	bl	d03e81da <strchr>
d03e7794:	2800      	cmp	r0, #0
d03e7796:	d1f7      	bne.n	d03e7788 <strrchr+0x10>
d03e7798:	4628      	mov	r0, r5
d03e779a:	bd38      	pop	{r3, r4, r5, pc}
d03e779c:	2500      	movs	r5, #0
d03e779e:	e7f5      	b.n	d03e778c <strrchr+0x14>

d03e77a0 <__sflush_r>:
d03e77a0:	898a      	ldrh	r2, [r1, #12]
d03e77a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e77a6:	4605      	mov	r5, r0
d03e77a8:	0710      	lsls	r0, r2, #28
d03e77aa:	460c      	mov	r4, r1
d03e77ac:	d458      	bmi.n	d03e7860 <__sflush_r+0xc0>
d03e77ae:	684b      	ldr	r3, [r1, #4]
d03e77b0:	2b00      	cmp	r3, #0
d03e77b2:	dc05      	bgt.n	d03e77c0 <__sflush_r+0x20>
d03e77b4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03e77b6:	2b00      	cmp	r3, #0
d03e77b8:	dc02      	bgt.n	d03e77c0 <__sflush_r+0x20>
d03e77ba:	2000      	movs	r0, #0
d03e77bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e77c0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e77c2:	2e00      	cmp	r6, #0
d03e77c4:	d0f9      	beq.n	d03e77ba <__sflush_r+0x1a>
d03e77c6:	2300      	movs	r3, #0
d03e77c8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03e77cc:	682f      	ldr	r7, [r5, #0]
d03e77ce:	602b      	str	r3, [r5, #0]
d03e77d0:	d032      	beq.n	d03e7838 <__sflush_r+0x98>
d03e77d2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03e77d4:	89a3      	ldrh	r3, [r4, #12]
d03e77d6:	075a      	lsls	r2, r3, #29
d03e77d8:	d505      	bpl.n	d03e77e6 <__sflush_r+0x46>
d03e77da:	6863      	ldr	r3, [r4, #4]
d03e77dc:	1ac0      	subs	r0, r0, r3
d03e77de:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03e77e0:	b10b      	cbz	r3, d03e77e6 <__sflush_r+0x46>
d03e77e2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03e77e4:	1ac0      	subs	r0, r0, r3
d03e77e6:	2300      	movs	r3, #0
d03e77e8:	4602      	mov	r2, r0
d03e77ea:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e77ec:	6a21      	ldr	r1, [r4, #32]
d03e77ee:	4628      	mov	r0, r5
d03e77f0:	47b0      	blx	r6
d03e77f2:	1c43      	adds	r3, r0, #1
d03e77f4:	89a3      	ldrh	r3, [r4, #12]
d03e77f6:	d106      	bne.n	d03e7806 <__sflush_r+0x66>
d03e77f8:	6829      	ldr	r1, [r5, #0]
d03e77fa:	291d      	cmp	r1, #29
d03e77fc:	d82c      	bhi.n	d03e7858 <__sflush_r+0xb8>
d03e77fe:	4a2a      	ldr	r2, [pc, #168]	; (d03e78a8 <__sflush_r+0x108>)
d03e7800:	40ca      	lsrs	r2, r1
d03e7802:	07d6      	lsls	r6, r2, #31
d03e7804:	d528      	bpl.n	d03e7858 <__sflush_r+0xb8>
d03e7806:	2200      	movs	r2, #0
d03e7808:	6062      	str	r2, [r4, #4]
d03e780a:	04d9      	lsls	r1, r3, #19
d03e780c:	6922      	ldr	r2, [r4, #16]
d03e780e:	6022      	str	r2, [r4, #0]
d03e7810:	d504      	bpl.n	d03e781c <__sflush_r+0x7c>
d03e7812:	1c42      	adds	r2, r0, #1
d03e7814:	d101      	bne.n	d03e781a <__sflush_r+0x7a>
d03e7816:	682b      	ldr	r3, [r5, #0]
d03e7818:	b903      	cbnz	r3, d03e781c <__sflush_r+0x7c>
d03e781a:	6560      	str	r0, [r4, #84]	; 0x54
d03e781c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e781e:	602f      	str	r7, [r5, #0]
d03e7820:	2900      	cmp	r1, #0
d03e7822:	d0ca      	beq.n	d03e77ba <__sflush_r+0x1a>
d03e7824:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e7828:	4299      	cmp	r1, r3
d03e782a:	d002      	beq.n	d03e7832 <__sflush_r+0x92>
d03e782c:	4628      	mov	r0, r5
d03e782e:	f7ff fddd 	bl	d03e73ec <_free_r>
d03e7832:	2000      	movs	r0, #0
d03e7834:	6360      	str	r0, [r4, #52]	; 0x34
d03e7836:	e7c1      	b.n	d03e77bc <__sflush_r+0x1c>
d03e7838:	6a21      	ldr	r1, [r4, #32]
d03e783a:	2301      	movs	r3, #1
d03e783c:	4628      	mov	r0, r5
d03e783e:	47b0      	blx	r6
d03e7840:	1c41      	adds	r1, r0, #1
d03e7842:	d1c7      	bne.n	d03e77d4 <__sflush_r+0x34>
d03e7844:	682b      	ldr	r3, [r5, #0]
d03e7846:	2b00      	cmp	r3, #0
d03e7848:	d0c4      	beq.n	d03e77d4 <__sflush_r+0x34>
d03e784a:	2b1d      	cmp	r3, #29
d03e784c:	d001      	beq.n	d03e7852 <__sflush_r+0xb2>
d03e784e:	2b16      	cmp	r3, #22
d03e7850:	d101      	bne.n	d03e7856 <__sflush_r+0xb6>
d03e7852:	602f      	str	r7, [r5, #0]
d03e7854:	e7b1      	b.n	d03e77ba <__sflush_r+0x1a>
d03e7856:	89a3      	ldrh	r3, [r4, #12]
d03e7858:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e785c:	81a3      	strh	r3, [r4, #12]
d03e785e:	e7ad      	b.n	d03e77bc <__sflush_r+0x1c>
d03e7860:	690f      	ldr	r7, [r1, #16]
d03e7862:	2f00      	cmp	r7, #0
d03e7864:	d0a9      	beq.n	d03e77ba <__sflush_r+0x1a>
d03e7866:	0793      	lsls	r3, r2, #30
d03e7868:	680e      	ldr	r6, [r1, #0]
d03e786a:	bf08      	it	eq
d03e786c:	694b      	ldreq	r3, [r1, #20]
d03e786e:	600f      	str	r7, [r1, #0]
d03e7870:	bf18      	it	ne
d03e7872:	2300      	movne	r3, #0
d03e7874:	eba6 0807 	sub.w	r8, r6, r7
d03e7878:	608b      	str	r3, [r1, #8]
d03e787a:	f1b8 0f00 	cmp.w	r8, #0
d03e787e:	dd9c      	ble.n	d03e77ba <__sflush_r+0x1a>
d03e7880:	6a21      	ldr	r1, [r4, #32]
d03e7882:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03e7884:	4643      	mov	r3, r8
d03e7886:	463a      	mov	r2, r7
d03e7888:	4628      	mov	r0, r5
d03e788a:	47b0      	blx	r6
d03e788c:	2800      	cmp	r0, #0
d03e788e:	dc06      	bgt.n	d03e789e <__sflush_r+0xfe>
d03e7890:	89a3      	ldrh	r3, [r4, #12]
d03e7892:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e7896:	81a3      	strh	r3, [r4, #12]
d03e7898:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e789c:	e78e      	b.n	d03e77bc <__sflush_r+0x1c>
d03e789e:	4407      	add	r7, r0
d03e78a0:	eba8 0800 	sub.w	r8, r8, r0
d03e78a4:	e7e9      	b.n	d03e787a <__sflush_r+0xda>
d03e78a6:	bf00      	nop
d03e78a8:	20400001 	.word	0x20400001

d03e78ac <_fflush_r>:
d03e78ac:	b538      	push	{r3, r4, r5, lr}
d03e78ae:	690b      	ldr	r3, [r1, #16]
d03e78b0:	4605      	mov	r5, r0
d03e78b2:	460c      	mov	r4, r1
d03e78b4:	b913      	cbnz	r3, d03e78bc <_fflush_r+0x10>
d03e78b6:	2500      	movs	r5, #0
d03e78b8:	4628      	mov	r0, r5
d03e78ba:	bd38      	pop	{r3, r4, r5, pc}
d03e78bc:	b118      	cbz	r0, d03e78c6 <_fflush_r+0x1a>
d03e78be:	6983      	ldr	r3, [r0, #24]
d03e78c0:	b90b      	cbnz	r3, d03e78c6 <_fflush_r+0x1a>
d03e78c2:	f000 f887 	bl	d03e79d4 <__sinit>
d03e78c6:	4b14      	ldr	r3, [pc, #80]	; (d03e7918 <_fflush_r+0x6c>)
d03e78c8:	429c      	cmp	r4, r3
d03e78ca:	d11b      	bne.n	d03e7904 <_fflush_r+0x58>
d03e78cc:	686c      	ldr	r4, [r5, #4]
d03e78ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e78d2:	2b00      	cmp	r3, #0
d03e78d4:	d0ef      	beq.n	d03e78b6 <_fflush_r+0xa>
d03e78d6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e78d8:	07d0      	lsls	r0, r2, #31
d03e78da:	d404      	bmi.n	d03e78e6 <_fflush_r+0x3a>
d03e78dc:	0599      	lsls	r1, r3, #22
d03e78de:	d402      	bmi.n	d03e78e6 <_fflush_r+0x3a>
d03e78e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e78e2:	f000 f915 	bl	d03e7b10 <__retarget_lock_acquire_recursive>
d03e78e6:	4628      	mov	r0, r5
d03e78e8:	4621      	mov	r1, r4
d03e78ea:	f7ff ff59 	bl	d03e77a0 <__sflush_r>
d03e78ee:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e78f0:	07da      	lsls	r2, r3, #31
d03e78f2:	4605      	mov	r5, r0
d03e78f4:	d4e0      	bmi.n	d03e78b8 <_fflush_r+0xc>
d03e78f6:	89a3      	ldrh	r3, [r4, #12]
d03e78f8:	059b      	lsls	r3, r3, #22
d03e78fa:	d4dd      	bmi.n	d03e78b8 <_fflush_r+0xc>
d03e78fc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e78fe:	f000 f908 	bl	d03e7b12 <__retarget_lock_release_recursive>
d03e7902:	e7d9      	b.n	d03e78b8 <_fflush_r+0xc>
d03e7904:	4b05      	ldr	r3, [pc, #20]	; (d03e791c <_fflush_r+0x70>)
d03e7906:	429c      	cmp	r4, r3
d03e7908:	d101      	bne.n	d03e790e <_fflush_r+0x62>
d03e790a:	68ac      	ldr	r4, [r5, #8]
d03e790c:	e7df      	b.n	d03e78ce <_fflush_r+0x22>
d03e790e:	4b04      	ldr	r3, [pc, #16]	; (d03e7920 <_fflush_r+0x74>)
d03e7910:	429c      	cmp	r4, r3
d03e7912:	bf08      	it	eq
d03e7914:	68ec      	ldreq	r4, [r5, #12]
d03e7916:	e7da      	b.n	d03e78ce <_fflush_r+0x22>
d03e7918:	d03e9a00 	.word	0xd03e9a00
d03e791c:	d03e9a20 	.word	0xd03e9a20
d03e7920:	d03e99e0 	.word	0xd03e99e0

d03e7924 <std>:
d03e7924:	2300      	movs	r3, #0
d03e7926:	b510      	push	{r4, lr}
d03e7928:	4604      	mov	r4, r0
d03e792a:	e9c0 3300 	strd	r3, r3, [r0]
d03e792e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03e7932:	6083      	str	r3, [r0, #8]
d03e7934:	8181      	strh	r1, [r0, #12]
d03e7936:	6643      	str	r3, [r0, #100]	; 0x64
d03e7938:	81c2      	strh	r2, [r0, #14]
d03e793a:	6183      	str	r3, [r0, #24]
d03e793c:	4619      	mov	r1, r3
d03e793e:	2208      	movs	r2, #8
d03e7940:	305c      	adds	r0, #92	; 0x5c
d03e7942:	f7ff fd4b 	bl	d03e73dc <memset>
d03e7946:	4b05      	ldr	r3, [pc, #20]	; (d03e795c <std+0x38>)
d03e7948:	6263      	str	r3, [r4, #36]	; 0x24
d03e794a:	4b05      	ldr	r3, [pc, #20]	; (d03e7960 <std+0x3c>)
d03e794c:	62a3      	str	r3, [r4, #40]	; 0x28
d03e794e:	4b05      	ldr	r3, [pc, #20]	; (d03e7964 <std+0x40>)
d03e7950:	62e3      	str	r3, [r4, #44]	; 0x2c
d03e7952:	4b05      	ldr	r3, [pc, #20]	; (d03e7968 <std+0x44>)
d03e7954:	6224      	str	r4, [r4, #32]
d03e7956:	6323      	str	r3, [r4, #48]	; 0x30
d03e7958:	bd10      	pop	{r4, pc}
d03e795a:	bf00      	nop
d03e795c:	d03e8155 	.word	0xd03e8155
d03e7960:	d03e8177 	.word	0xd03e8177
d03e7964:	d03e81af 	.word	0xd03e81af
d03e7968:	d03e81d3 	.word	0xd03e81d3

d03e796c <_cleanup_r>:
d03e796c:	4901      	ldr	r1, [pc, #4]	; (d03e7974 <_cleanup_r+0x8>)
d03e796e:	f000 b8af 	b.w	d03e7ad0 <_fwalk_reent>
d03e7972:	bf00      	nop
d03e7974:	d03e78ad 	.word	0xd03e78ad

d03e7978 <__sfmoreglue>:
d03e7978:	b570      	push	{r4, r5, r6, lr}
d03e797a:	1e4a      	subs	r2, r1, #1
d03e797c:	2568      	movs	r5, #104	; 0x68
d03e797e:	4355      	muls	r5, r2
d03e7980:	460e      	mov	r6, r1
d03e7982:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03e7986:	f7ff fd81 	bl	d03e748c <_malloc_r>
d03e798a:	4604      	mov	r4, r0
d03e798c:	b140      	cbz	r0, d03e79a0 <__sfmoreglue+0x28>
d03e798e:	2100      	movs	r1, #0
d03e7990:	e9c0 1600 	strd	r1, r6, [r0]
d03e7994:	300c      	adds	r0, #12
d03e7996:	60a0      	str	r0, [r4, #8]
d03e7998:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03e799c:	f7ff fd1e 	bl	d03e73dc <memset>
d03e79a0:	4620      	mov	r0, r4
d03e79a2:	bd70      	pop	{r4, r5, r6, pc}

d03e79a4 <__sfp_lock_acquire>:
d03e79a4:	4801      	ldr	r0, [pc, #4]	; (d03e79ac <__sfp_lock_acquire+0x8>)
d03e79a6:	f000 b8b3 	b.w	d03e7b10 <__retarget_lock_acquire_recursive>
d03e79aa:	bf00      	nop
d03e79ac:	d03ec608 	.word	0xd03ec608

d03e79b0 <__sfp_lock_release>:
d03e79b0:	4801      	ldr	r0, [pc, #4]	; (d03e79b8 <__sfp_lock_release+0x8>)
d03e79b2:	f000 b8ae 	b.w	d03e7b12 <__retarget_lock_release_recursive>
d03e79b6:	bf00      	nop
d03e79b8:	d03ec608 	.word	0xd03ec608

d03e79bc <__sinit_lock_acquire>:
d03e79bc:	4801      	ldr	r0, [pc, #4]	; (d03e79c4 <__sinit_lock_acquire+0x8>)
d03e79be:	f000 b8a7 	b.w	d03e7b10 <__retarget_lock_acquire_recursive>
d03e79c2:	bf00      	nop
d03e79c4:	d03ec603 	.word	0xd03ec603

d03e79c8 <__sinit_lock_release>:
d03e79c8:	4801      	ldr	r0, [pc, #4]	; (d03e79d0 <__sinit_lock_release+0x8>)
d03e79ca:	f000 b8a2 	b.w	d03e7b12 <__retarget_lock_release_recursive>
d03e79ce:	bf00      	nop
d03e79d0:	d03ec603 	.word	0xd03ec603

d03e79d4 <__sinit>:
d03e79d4:	b510      	push	{r4, lr}
d03e79d6:	4604      	mov	r4, r0
d03e79d8:	f7ff fff0 	bl	d03e79bc <__sinit_lock_acquire>
d03e79dc:	69a3      	ldr	r3, [r4, #24]
d03e79de:	b11b      	cbz	r3, d03e79e8 <__sinit+0x14>
d03e79e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e79e4:	f7ff bff0 	b.w	d03e79c8 <__sinit_lock_release>
d03e79e8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03e79ec:	6523      	str	r3, [r4, #80]	; 0x50
d03e79ee:	4b13      	ldr	r3, [pc, #76]	; (d03e7a3c <__sinit+0x68>)
d03e79f0:	4a13      	ldr	r2, [pc, #76]	; (d03e7a40 <__sinit+0x6c>)
d03e79f2:	681b      	ldr	r3, [r3, #0]
d03e79f4:	62a2      	str	r2, [r4, #40]	; 0x28
d03e79f6:	42a3      	cmp	r3, r4
d03e79f8:	bf04      	itt	eq
d03e79fa:	2301      	moveq	r3, #1
d03e79fc:	61a3      	streq	r3, [r4, #24]
d03e79fe:	4620      	mov	r0, r4
d03e7a00:	f000 f820 	bl	d03e7a44 <__sfp>
d03e7a04:	6060      	str	r0, [r4, #4]
d03e7a06:	4620      	mov	r0, r4
d03e7a08:	f000 f81c 	bl	d03e7a44 <__sfp>
d03e7a0c:	60a0      	str	r0, [r4, #8]
d03e7a0e:	4620      	mov	r0, r4
d03e7a10:	f000 f818 	bl	d03e7a44 <__sfp>
d03e7a14:	2200      	movs	r2, #0
d03e7a16:	60e0      	str	r0, [r4, #12]
d03e7a18:	2104      	movs	r1, #4
d03e7a1a:	6860      	ldr	r0, [r4, #4]
d03e7a1c:	f7ff ff82 	bl	d03e7924 <std>
d03e7a20:	68a0      	ldr	r0, [r4, #8]
d03e7a22:	2201      	movs	r2, #1
d03e7a24:	2109      	movs	r1, #9
d03e7a26:	f7ff ff7d 	bl	d03e7924 <std>
d03e7a2a:	68e0      	ldr	r0, [r4, #12]
d03e7a2c:	2202      	movs	r2, #2
d03e7a2e:	2112      	movs	r1, #18
d03e7a30:	f7ff ff78 	bl	d03e7924 <std>
d03e7a34:	2301      	movs	r3, #1
d03e7a36:	61a3      	str	r3, [r4, #24]
d03e7a38:	e7d2      	b.n	d03e79e0 <__sinit+0xc>
d03e7a3a:	bf00      	nop
d03e7a3c:	d03e99dc 	.word	0xd03e99dc
d03e7a40:	d03e796d 	.word	0xd03e796d

d03e7a44 <__sfp>:
d03e7a44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e7a46:	4607      	mov	r7, r0
d03e7a48:	f7ff ffac 	bl	d03e79a4 <__sfp_lock_acquire>
d03e7a4c:	4b1e      	ldr	r3, [pc, #120]	; (d03e7ac8 <__sfp+0x84>)
d03e7a4e:	681e      	ldr	r6, [r3, #0]
d03e7a50:	69b3      	ldr	r3, [r6, #24]
d03e7a52:	b913      	cbnz	r3, d03e7a5a <__sfp+0x16>
d03e7a54:	4630      	mov	r0, r6
d03e7a56:	f7ff ffbd 	bl	d03e79d4 <__sinit>
d03e7a5a:	3648      	adds	r6, #72	; 0x48
d03e7a5c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03e7a60:	3b01      	subs	r3, #1
d03e7a62:	d503      	bpl.n	d03e7a6c <__sfp+0x28>
d03e7a64:	6833      	ldr	r3, [r6, #0]
d03e7a66:	b30b      	cbz	r3, d03e7aac <__sfp+0x68>
d03e7a68:	6836      	ldr	r6, [r6, #0]
d03e7a6a:	e7f7      	b.n	d03e7a5c <__sfp+0x18>
d03e7a6c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03e7a70:	b9d5      	cbnz	r5, d03e7aa8 <__sfp+0x64>
d03e7a72:	4b16      	ldr	r3, [pc, #88]	; (d03e7acc <__sfp+0x88>)
d03e7a74:	60e3      	str	r3, [r4, #12]
d03e7a76:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03e7a7a:	6665      	str	r5, [r4, #100]	; 0x64
d03e7a7c:	f000 f847 	bl	d03e7b0e <__retarget_lock_init_recursive>
d03e7a80:	f7ff ff96 	bl	d03e79b0 <__sfp_lock_release>
d03e7a84:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03e7a88:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03e7a8c:	6025      	str	r5, [r4, #0]
d03e7a8e:	61a5      	str	r5, [r4, #24]
d03e7a90:	2208      	movs	r2, #8
d03e7a92:	4629      	mov	r1, r5
d03e7a94:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03e7a98:	f7ff fca0 	bl	d03e73dc <memset>
d03e7a9c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03e7aa0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03e7aa4:	4620      	mov	r0, r4
d03e7aa6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e7aa8:	3468      	adds	r4, #104	; 0x68
d03e7aaa:	e7d9      	b.n	d03e7a60 <__sfp+0x1c>
d03e7aac:	2104      	movs	r1, #4
d03e7aae:	4638      	mov	r0, r7
d03e7ab0:	f7ff ff62 	bl	d03e7978 <__sfmoreglue>
d03e7ab4:	4604      	mov	r4, r0
d03e7ab6:	6030      	str	r0, [r6, #0]
d03e7ab8:	2800      	cmp	r0, #0
d03e7aba:	d1d5      	bne.n	d03e7a68 <__sfp+0x24>
d03e7abc:	f7ff ff78 	bl	d03e79b0 <__sfp_lock_release>
d03e7ac0:	230c      	movs	r3, #12
d03e7ac2:	603b      	str	r3, [r7, #0]
d03e7ac4:	e7ee      	b.n	d03e7aa4 <__sfp+0x60>
d03e7ac6:	bf00      	nop
d03e7ac8:	d03e99dc 	.word	0xd03e99dc
d03e7acc:	ffff0001 	.word	0xffff0001

d03e7ad0 <_fwalk_reent>:
d03e7ad0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03e7ad4:	4606      	mov	r6, r0
d03e7ad6:	4688      	mov	r8, r1
d03e7ad8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03e7adc:	2700      	movs	r7, #0
d03e7ade:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03e7ae2:	f1b9 0901 	subs.w	r9, r9, #1
d03e7ae6:	d505      	bpl.n	d03e7af4 <_fwalk_reent+0x24>
d03e7ae8:	6824      	ldr	r4, [r4, #0]
d03e7aea:	2c00      	cmp	r4, #0
d03e7aec:	d1f7      	bne.n	d03e7ade <_fwalk_reent+0xe>
d03e7aee:	4638      	mov	r0, r7
d03e7af0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03e7af4:	89ab      	ldrh	r3, [r5, #12]
d03e7af6:	2b01      	cmp	r3, #1
d03e7af8:	d907      	bls.n	d03e7b0a <_fwalk_reent+0x3a>
d03e7afa:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03e7afe:	3301      	adds	r3, #1
d03e7b00:	d003      	beq.n	d03e7b0a <_fwalk_reent+0x3a>
d03e7b02:	4629      	mov	r1, r5
d03e7b04:	4630      	mov	r0, r6
d03e7b06:	47c0      	blx	r8
d03e7b08:	4307      	orrs	r7, r0
d03e7b0a:	3568      	adds	r5, #104	; 0x68
d03e7b0c:	e7e9      	b.n	d03e7ae2 <_fwalk_reent+0x12>

d03e7b0e <__retarget_lock_init_recursive>:
d03e7b0e:	4770      	bx	lr

d03e7b10 <__retarget_lock_acquire_recursive>:
d03e7b10:	4770      	bx	lr

d03e7b12 <__retarget_lock_release_recursive>:
d03e7b12:	4770      	bx	lr

d03e7b14 <__swhatbuf_r>:
d03e7b14:	b570      	push	{r4, r5, r6, lr}
d03e7b16:	460e      	mov	r6, r1
d03e7b18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e7b1c:	2900      	cmp	r1, #0
d03e7b1e:	b096      	sub	sp, #88	; 0x58
d03e7b20:	4614      	mov	r4, r2
d03e7b22:	461d      	mov	r5, r3
d03e7b24:	da07      	bge.n	d03e7b36 <__swhatbuf_r+0x22>
d03e7b26:	2300      	movs	r3, #0
d03e7b28:	602b      	str	r3, [r5, #0]
d03e7b2a:	89b3      	ldrh	r3, [r6, #12]
d03e7b2c:	061a      	lsls	r2, r3, #24
d03e7b2e:	d410      	bmi.n	d03e7b52 <__swhatbuf_r+0x3e>
d03e7b30:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e7b34:	e00e      	b.n	d03e7b54 <__swhatbuf_r+0x40>
d03e7b36:	466a      	mov	r2, sp
d03e7b38:	f000 fb6c 	bl	d03e8214 <_fstat_r>
d03e7b3c:	2800      	cmp	r0, #0
d03e7b3e:	dbf2      	blt.n	d03e7b26 <__swhatbuf_r+0x12>
d03e7b40:	9a01      	ldr	r2, [sp, #4]
d03e7b42:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03e7b46:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03e7b4a:	425a      	negs	r2, r3
d03e7b4c:	415a      	adcs	r2, r3
d03e7b4e:	602a      	str	r2, [r5, #0]
d03e7b50:	e7ee      	b.n	d03e7b30 <__swhatbuf_r+0x1c>
d03e7b52:	2340      	movs	r3, #64	; 0x40
d03e7b54:	2000      	movs	r0, #0
d03e7b56:	6023      	str	r3, [r4, #0]
d03e7b58:	b016      	add	sp, #88	; 0x58
d03e7b5a:	bd70      	pop	{r4, r5, r6, pc}

d03e7b5c <__malloc_lock>:
d03e7b5c:	4801      	ldr	r0, [pc, #4]	; (d03e7b64 <__malloc_lock+0x8>)
d03e7b5e:	f7ff bfd7 	b.w	d03e7b10 <__retarget_lock_acquire_recursive>
d03e7b62:	bf00      	nop
d03e7b64:	d03ec604 	.word	0xd03ec604

d03e7b68 <__malloc_unlock>:
d03e7b68:	4801      	ldr	r0, [pc, #4]	; (d03e7b70 <__malloc_unlock+0x8>)
d03e7b6a:	f7ff bfd2 	b.w	d03e7b12 <__retarget_lock_release_recursive>
d03e7b6e:	bf00      	nop
d03e7b70:	d03ec604 	.word	0xd03ec604

d03e7b74 <__ssputs_r>:
d03e7b74:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e7b78:	688e      	ldr	r6, [r1, #8]
d03e7b7a:	429e      	cmp	r6, r3
d03e7b7c:	4682      	mov	sl, r0
d03e7b7e:	460c      	mov	r4, r1
d03e7b80:	4690      	mov	r8, r2
d03e7b82:	461f      	mov	r7, r3
d03e7b84:	d838      	bhi.n	d03e7bf8 <__ssputs_r+0x84>
d03e7b86:	898a      	ldrh	r2, [r1, #12]
d03e7b88:	f412 6f90 	tst.w	r2, #1152	; 0x480
d03e7b8c:	d032      	beq.n	d03e7bf4 <__ssputs_r+0x80>
d03e7b8e:	6825      	ldr	r5, [r4, #0]
d03e7b90:	6909      	ldr	r1, [r1, #16]
d03e7b92:	eba5 0901 	sub.w	r9, r5, r1
d03e7b96:	6965      	ldr	r5, [r4, #20]
d03e7b98:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d03e7b9c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d03e7ba0:	3301      	adds	r3, #1
d03e7ba2:	444b      	add	r3, r9
d03e7ba4:	106d      	asrs	r5, r5, #1
d03e7ba6:	429d      	cmp	r5, r3
d03e7ba8:	bf38      	it	cc
d03e7baa:	461d      	movcc	r5, r3
d03e7bac:	0553      	lsls	r3, r2, #21
d03e7bae:	d531      	bpl.n	d03e7c14 <__ssputs_r+0xa0>
d03e7bb0:	4629      	mov	r1, r5
d03e7bb2:	f7ff fc6b 	bl	d03e748c <_malloc_r>
d03e7bb6:	4606      	mov	r6, r0
d03e7bb8:	b950      	cbnz	r0, d03e7bd0 <__ssputs_r+0x5c>
d03e7bba:	230c      	movs	r3, #12
d03e7bbc:	f8ca 3000 	str.w	r3, [sl]
d03e7bc0:	89a3      	ldrh	r3, [r4, #12]
d03e7bc2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e7bc6:	81a3      	strh	r3, [r4, #12]
d03e7bc8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7bcc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e7bd0:	6921      	ldr	r1, [r4, #16]
d03e7bd2:	464a      	mov	r2, r9
d03e7bd4:	f7ff fbf4 	bl	d03e73c0 <memcpy>
d03e7bd8:	89a3      	ldrh	r3, [r4, #12]
d03e7bda:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d03e7bde:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e7be2:	81a3      	strh	r3, [r4, #12]
d03e7be4:	6126      	str	r6, [r4, #16]
d03e7be6:	6165      	str	r5, [r4, #20]
d03e7be8:	444e      	add	r6, r9
d03e7bea:	eba5 0509 	sub.w	r5, r5, r9
d03e7bee:	6026      	str	r6, [r4, #0]
d03e7bf0:	60a5      	str	r5, [r4, #8]
d03e7bf2:	463e      	mov	r6, r7
d03e7bf4:	42be      	cmp	r6, r7
d03e7bf6:	d900      	bls.n	d03e7bfa <__ssputs_r+0x86>
d03e7bf8:	463e      	mov	r6, r7
d03e7bfa:	4632      	mov	r2, r6
d03e7bfc:	6820      	ldr	r0, [r4, #0]
d03e7bfe:	4641      	mov	r1, r8
d03e7c00:	f000 fb7e 	bl	d03e8300 <memmove>
d03e7c04:	68a3      	ldr	r3, [r4, #8]
d03e7c06:	6822      	ldr	r2, [r4, #0]
d03e7c08:	1b9b      	subs	r3, r3, r6
d03e7c0a:	4432      	add	r2, r6
d03e7c0c:	60a3      	str	r3, [r4, #8]
d03e7c0e:	6022      	str	r2, [r4, #0]
d03e7c10:	2000      	movs	r0, #0
d03e7c12:	e7db      	b.n	d03e7bcc <__ssputs_r+0x58>
d03e7c14:	462a      	mov	r2, r5
d03e7c16:	f000 fb8d 	bl	d03e8334 <_realloc_r>
d03e7c1a:	4606      	mov	r6, r0
d03e7c1c:	2800      	cmp	r0, #0
d03e7c1e:	d1e1      	bne.n	d03e7be4 <__ssputs_r+0x70>
d03e7c20:	6921      	ldr	r1, [r4, #16]
d03e7c22:	4650      	mov	r0, sl
d03e7c24:	f7ff fbe2 	bl	d03e73ec <_free_r>
d03e7c28:	e7c7      	b.n	d03e7bba <__ssputs_r+0x46>
	...

d03e7c2c <_svfiprintf_r>:
d03e7c2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03e7c30:	4698      	mov	r8, r3
d03e7c32:	898b      	ldrh	r3, [r1, #12]
d03e7c34:	061b      	lsls	r3, r3, #24
d03e7c36:	b09d      	sub	sp, #116	; 0x74
d03e7c38:	4607      	mov	r7, r0
d03e7c3a:	460d      	mov	r5, r1
d03e7c3c:	4614      	mov	r4, r2
d03e7c3e:	d50e      	bpl.n	d03e7c5e <_svfiprintf_r+0x32>
d03e7c40:	690b      	ldr	r3, [r1, #16]
d03e7c42:	b963      	cbnz	r3, d03e7c5e <_svfiprintf_r+0x32>
d03e7c44:	2140      	movs	r1, #64	; 0x40
d03e7c46:	f7ff fc21 	bl	d03e748c <_malloc_r>
d03e7c4a:	6028      	str	r0, [r5, #0]
d03e7c4c:	6128      	str	r0, [r5, #16]
d03e7c4e:	b920      	cbnz	r0, d03e7c5a <_svfiprintf_r+0x2e>
d03e7c50:	230c      	movs	r3, #12
d03e7c52:	603b      	str	r3, [r7, #0]
d03e7c54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7c58:	e0d1      	b.n	d03e7dfe <_svfiprintf_r+0x1d2>
d03e7c5a:	2340      	movs	r3, #64	; 0x40
d03e7c5c:	616b      	str	r3, [r5, #20]
d03e7c5e:	2300      	movs	r3, #0
d03e7c60:	9309      	str	r3, [sp, #36]	; 0x24
d03e7c62:	2320      	movs	r3, #32
d03e7c64:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d03e7c68:	f8cd 800c 	str.w	r8, [sp, #12]
d03e7c6c:	2330      	movs	r3, #48	; 0x30
d03e7c6e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d03e7e18 <_svfiprintf_r+0x1ec>
d03e7c72:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d03e7c76:	f04f 0901 	mov.w	r9, #1
d03e7c7a:	4623      	mov	r3, r4
d03e7c7c:	469a      	mov	sl, r3
d03e7c7e:	f813 2b01 	ldrb.w	r2, [r3], #1
d03e7c82:	b10a      	cbz	r2, d03e7c88 <_svfiprintf_r+0x5c>
d03e7c84:	2a25      	cmp	r2, #37	; 0x25
d03e7c86:	d1f9      	bne.n	d03e7c7c <_svfiprintf_r+0x50>
d03e7c88:	ebba 0b04 	subs.w	fp, sl, r4
d03e7c8c:	d00b      	beq.n	d03e7ca6 <_svfiprintf_r+0x7a>
d03e7c8e:	465b      	mov	r3, fp
d03e7c90:	4622      	mov	r2, r4
d03e7c92:	4629      	mov	r1, r5
d03e7c94:	4638      	mov	r0, r7
d03e7c96:	f7ff ff6d 	bl	d03e7b74 <__ssputs_r>
d03e7c9a:	3001      	adds	r0, #1
d03e7c9c:	f000 80aa 	beq.w	d03e7df4 <_svfiprintf_r+0x1c8>
d03e7ca0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03e7ca2:	445a      	add	r2, fp
d03e7ca4:	9209      	str	r2, [sp, #36]	; 0x24
d03e7ca6:	f89a 3000 	ldrb.w	r3, [sl]
d03e7caa:	2b00      	cmp	r3, #0
d03e7cac:	f000 80a2 	beq.w	d03e7df4 <_svfiprintf_r+0x1c8>
d03e7cb0:	2300      	movs	r3, #0
d03e7cb2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d03e7cb6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d03e7cba:	f10a 0a01 	add.w	sl, sl, #1
d03e7cbe:	9304      	str	r3, [sp, #16]
d03e7cc0:	9307      	str	r3, [sp, #28]
d03e7cc2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d03e7cc6:	931a      	str	r3, [sp, #104]	; 0x68
d03e7cc8:	4654      	mov	r4, sl
d03e7cca:	2205      	movs	r2, #5
d03e7ccc:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e7cd0:	4851      	ldr	r0, [pc, #324]	; (d03e7e18 <_svfiprintf_r+0x1ec>)
d03e7cd2:	f000 fac5 	bl	d03e8260 <memchr>
d03e7cd6:	9a04      	ldr	r2, [sp, #16]
d03e7cd8:	b9d8      	cbnz	r0, d03e7d12 <_svfiprintf_r+0xe6>
d03e7cda:	06d0      	lsls	r0, r2, #27
d03e7cdc:	bf44      	itt	mi
d03e7cde:	2320      	movmi	r3, #32
d03e7ce0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e7ce4:	0711      	lsls	r1, r2, #28
d03e7ce6:	bf44      	itt	mi
d03e7ce8:	232b      	movmi	r3, #43	; 0x2b
d03e7cea:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03e7cee:	f89a 3000 	ldrb.w	r3, [sl]
d03e7cf2:	2b2a      	cmp	r3, #42	; 0x2a
d03e7cf4:	d015      	beq.n	d03e7d22 <_svfiprintf_r+0xf6>
d03e7cf6:	9a07      	ldr	r2, [sp, #28]
d03e7cf8:	4654      	mov	r4, sl
d03e7cfa:	2000      	movs	r0, #0
d03e7cfc:	f04f 0c0a 	mov.w	ip, #10
d03e7d00:	4621      	mov	r1, r4
d03e7d02:	f811 3b01 	ldrb.w	r3, [r1], #1
d03e7d06:	3b30      	subs	r3, #48	; 0x30
d03e7d08:	2b09      	cmp	r3, #9
d03e7d0a:	d94e      	bls.n	d03e7daa <_svfiprintf_r+0x17e>
d03e7d0c:	b1b0      	cbz	r0, d03e7d3c <_svfiprintf_r+0x110>
d03e7d0e:	9207      	str	r2, [sp, #28]
d03e7d10:	e014      	b.n	d03e7d3c <_svfiprintf_r+0x110>
d03e7d12:	eba0 0308 	sub.w	r3, r0, r8
d03e7d16:	fa09 f303 	lsl.w	r3, r9, r3
d03e7d1a:	4313      	orrs	r3, r2
d03e7d1c:	9304      	str	r3, [sp, #16]
d03e7d1e:	46a2      	mov	sl, r4
d03e7d20:	e7d2      	b.n	d03e7cc8 <_svfiprintf_r+0x9c>
d03e7d22:	9b03      	ldr	r3, [sp, #12]
d03e7d24:	1d19      	adds	r1, r3, #4
d03e7d26:	681b      	ldr	r3, [r3, #0]
d03e7d28:	9103      	str	r1, [sp, #12]
d03e7d2a:	2b00      	cmp	r3, #0
d03e7d2c:	bfbb      	ittet	lt
d03e7d2e:	425b      	neglt	r3, r3
d03e7d30:	f042 0202 	orrlt.w	r2, r2, #2
d03e7d34:	9307      	strge	r3, [sp, #28]
d03e7d36:	9307      	strlt	r3, [sp, #28]
d03e7d38:	bfb8      	it	lt
d03e7d3a:	9204      	strlt	r2, [sp, #16]
d03e7d3c:	7823      	ldrb	r3, [r4, #0]
d03e7d3e:	2b2e      	cmp	r3, #46	; 0x2e
d03e7d40:	d10c      	bne.n	d03e7d5c <_svfiprintf_r+0x130>
d03e7d42:	7863      	ldrb	r3, [r4, #1]
d03e7d44:	2b2a      	cmp	r3, #42	; 0x2a
d03e7d46:	d135      	bne.n	d03e7db4 <_svfiprintf_r+0x188>
d03e7d48:	9b03      	ldr	r3, [sp, #12]
d03e7d4a:	1d1a      	adds	r2, r3, #4
d03e7d4c:	681b      	ldr	r3, [r3, #0]
d03e7d4e:	9203      	str	r2, [sp, #12]
d03e7d50:	2b00      	cmp	r3, #0
d03e7d52:	bfb8      	it	lt
d03e7d54:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d03e7d58:	3402      	adds	r4, #2
d03e7d5a:	9305      	str	r3, [sp, #20]
d03e7d5c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d03e7e28 <_svfiprintf_r+0x1fc>
d03e7d60:	7821      	ldrb	r1, [r4, #0]
d03e7d62:	2203      	movs	r2, #3
d03e7d64:	4650      	mov	r0, sl
d03e7d66:	f000 fa7b 	bl	d03e8260 <memchr>
d03e7d6a:	b140      	cbz	r0, d03e7d7e <_svfiprintf_r+0x152>
d03e7d6c:	2340      	movs	r3, #64	; 0x40
d03e7d6e:	eba0 000a 	sub.w	r0, r0, sl
d03e7d72:	fa03 f000 	lsl.w	r0, r3, r0
d03e7d76:	9b04      	ldr	r3, [sp, #16]
d03e7d78:	4303      	orrs	r3, r0
d03e7d7a:	3401      	adds	r4, #1
d03e7d7c:	9304      	str	r3, [sp, #16]
d03e7d7e:	f814 1b01 	ldrb.w	r1, [r4], #1
d03e7d82:	4826      	ldr	r0, [pc, #152]	; (d03e7e1c <_svfiprintf_r+0x1f0>)
d03e7d84:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d03e7d88:	2206      	movs	r2, #6
d03e7d8a:	f000 fa69 	bl	d03e8260 <memchr>
d03e7d8e:	2800      	cmp	r0, #0
d03e7d90:	d038      	beq.n	d03e7e04 <_svfiprintf_r+0x1d8>
d03e7d92:	4b23      	ldr	r3, [pc, #140]	; (d03e7e20 <_svfiprintf_r+0x1f4>)
d03e7d94:	bb1b      	cbnz	r3, d03e7dde <_svfiprintf_r+0x1b2>
d03e7d96:	9b03      	ldr	r3, [sp, #12]
d03e7d98:	3307      	adds	r3, #7
d03e7d9a:	f023 0307 	bic.w	r3, r3, #7
d03e7d9e:	3308      	adds	r3, #8
d03e7da0:	9303      	str	r3, [sp, #12]
d03e7da2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03e7da4:	4433      	add	r3, r6
d03e7da6:	9309      	str	r3, [sp, #36]	; 0x24
d03e7da8:	e767      	b.n	d03e7c7a <_svfiprintf_r+0x4e>
d03e7daa:	fb0c 3202 	mla	r2, ip, r2, r3
d03e7dae:	460c      	mov	r4, r1
d03e7db0:	2001      	movs	r0, #1
d03e7db2:	e7a5      	b.n	d03e7d00 <_svfiprintf_r+0xd4>
d03e7db4:	2300      	movs	r3, #0
d03e7db6:	3401      	adds	r4, #1
d03e7db8:	9305      	str	r3, [sp, #20]
d03e7dba:	4619      	mov	r1, r3
d03e7dbc:	f04f 0c0a 	mov.w	ip, #10
d03e7dc0:	4620      	mov	r0, r4
d03e7dc2:	f810 2b01 	ldrb.w	r2, [r0], #1
d03e7dc6:	3a30      	subs	r2, #48	; 0x30
d03e7dc8:	2a09      	cmp	r2, #9
d03e7dca:	d903      	bls.n	d03e7dd4 <_svfiprintf_r+0x1a8>
d03e7dcc:	2b00      	cmp	r3, #0
d03e7dce:	d0c5      	beq.n	d03e7d5c <_svfiprintf_r+0x130>
d03e7dd0:	9105      	str	r1, [sp, #20]
d03e7dd2:	e7c3      	b.n	d03e7d5c <_svfiprintf_r+0x130>
d03e7dd4:	fb0c 2101 	mla	r1, ip, r1, r2
d03e7dd8:	4604      	mov	r4, r0
d03e7dda:	2301      	movs	r3, #1
d03e7ddc:	e7f0      	b.n	d03e7dc0 <_svfiprintf_r+0x194>
d03e7dde:	ab03      	add	r3, sp, #12
d03e7de0:	9300      	str	r3, [sp, #0]
d03e7de2:	462a      	mov	r2, r5
d03e7de4:	4b0f      	ldr	r3, [pc, #60]	; (d03e7e24 <_svfiprintf_r+0x1f8>)
d03e7de6:	a904      	add	r1, sp, #16
d03e7de8:	4638      	mov	r0, r7
d03e7dea:	f3af 8000 	nop.w
d03e7dee:	1c42      	adds	r2, r0, #1
d03e7df0:	4606      	mov	r6, r0
d03e7df2:	d1d6      	bne.n	d03e7da2 <_svfiprintf_r+0x176>
d03e7df4:	89ab      	ldrh	r3, [r5, #12]
d03e7df6:	065b      	lsls	r3, r3, #25
d03e7df8:	f53f af2c 	bmi.w	d03e7c54 <_svfiprintf_r+0x28>
d03e7dfc:	9809      	ldr	r0, [sp, #36]	; 0x24
d03e7dfe:	b01d      	add	sp, #116	; 0x74
d03e7e00:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03e7e04:	ab03      	add	r3, sp, #12
d03e7e06:	9300      	str	r3, [sp, #0]
d03e7e08:	462a      	mov	r2, r5
d03e7e0a:	4b06      	ldr	r3, [pc, #24]	; (d03e7e24 <_svfiprintf_r+0x1f8>)
d03e7e0c:	a904      	add	r1, sp, #16
d03e7e0e:	4638      	mov	r0, r7
d03e7e10:	f000 f87a 	bl	d03e7f08 <_printf_i>
d03e7e14:	e7eb      	b.n	d03e7dee <_svfiprintf_r+0x1c2>
d03e7e16:	bf00      	nop
d03e7e18:	d03e9a40 	.word	0xd03e9a40
d03e7e1c:	d03e9a4a 	.word	0xd03e9a4a
d03e7e20:	00000000 	.word	0x00000000
d03e7e24:	d03e7b75 	.word	0xd03e7b75
d03e7e28:	d03e9a46 	.word	0xd03e9a46

d03e7e2c <_printf_common>:
d03e7e2c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03e7e30:	4616      	mov	r6, r2
d03e7e32:	4699      	mov	r9, r3
d03e7e34:	688a      	ldr	r2, [r1, #8]
d03e7e36:	690b      	ldr	r3, [r1, #16]
d03e7e38:	f8dd 8020 	ldr.w	r8, [sp, #32]
d03e7e3c:	4293      	cmp	r3, r2
d03e7e3e:	bfb8      	it	lt
d03e7e40:	4613      	movlt	r3, r2
d03e7e42:	6033      	str	r3, [r6, #0]
d03e7e44:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d03e7e48:	4607      	mov	r7, r0
d03e7e4a:	460c      	mov	r4, r1
d03e7e4c:	b10a      	cbz	r2, d03e7e52 <_printf_common+0x26>
d03e7e4e:	3301      	adds	r3, #1
d03e7e50:	6033      	str	r3, [r6, #0]
d03e7e52:	6823      	ldr	r3, [r4, #0]
d03e7e54:	0699      	lsls	r1, r3, #26
d03e7e56:	bf42      	ittt	mi
d03e7e58:	6833      	ldrmi	r3, [r6, #0]
d03e7e5a:	3302      	addmi	r3, #2
d03e7e5c:	6033      	strmi	r3, [r6, #0]
d03e7e5e:	6825      	ldr	r5, [r4, #0]
d03e7e60:	f015 0506 	ands.w	r5, r5, #6
d03e7e64:	d106      	bne.n	d03e7e74 <_printf_common+0x48>
d03e7e66:	f104 0a19 	add.w	sl, r4, #25
d03e7e6a:	68e3      	ldr	r3, [r4, #12]
d03e7e6c:	6832      	ldr	r2, [r6, #0]
d03e7e6e:	1a9b      	subs	r3, r3, r2
d03e7e70:	42ab      	cmp	r3, r5
d03e7e72:	dc26      	bgt.n	d03e7ec2 <_printf_common+0x96>
d03e7e74:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d03e7e78:	1e13      	subs	r3, r2, #0
d03e7e7a:	6822      	ldr	r2, [r4, #0]
d03e7e7c:	bf18      	it	ne
d03e7e7e:	2301      	movne	r3, #1
d03e7e80:	0692      	lsls	r2, r2, #26
d03e7e82:	d42b      	bmi.n	d03e7edc <_printf_common+0xb0>
d03e7e84:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e7e88:	4649      	mov	r1, r9
d03e7e8a:	4638      	mov	r0, r7
d03e7e8c:	47c0      	blx	r8
d03e7e8e:	3001      	adds	r0, #1
d03e7e90:	d01e      	beq.n	d03e7ed0 <_printf_common+0xa4>
d03e7e92:	6823      	ldr	r3, [r4, #0]
d03e7e94:	68e5      	ldr	r5, [r4, #12]
d03e7e96:	6832      	ldr	r2, [r6, #0]
d03e7e98:	f003 0306 	and.w	r3, r3, #6
d03e7e9c:	2b04      	cmp	r3, #4
d03e7e9e:	bf08      	it	eq
d03e7ea0:	1aad      	subeq	r5, r5, r2
d03e7ea2:	68a3      	ldr	r3, [r4, #8]
d03e7ea4:	6922      	ldr	r2, [r4, #16]
d03e7ea6:	bf0c      	ite	eq
d03e7ea8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d03e7eac:	2500      	movne	r5, #0
d03e7eae:	4293      	cmp	r3, r2
d03e7eb0:	bfc4      	itt	gt
d03e7eb2:	1a9b      	subgt	r3, r3, r2
d03e7eb4:	18ed      	addgt	r5, r5, r3
d03e7eb6:	2600      	movs	r6, #0
d03e7eb8:	341a      	adds	r4, #26
d03e7eba:	42b5      	cmp	r5, r6
d03e7ebc:	d11a      	bne.n	d03e7ef4 <_printf_common+0xc8>
d03e7ebe:	2000      	movs	r0, #0
d03e7ec0:	e008      	b.n	d03e7ed4 <_printf_common+0xa8>
d03e7ec2:	2301      	movs	r3, #1
d03e7ec4:	4652      	mov	r2, sl
d03e7ec6:	4649      	mov	r1, r9
d03e7ec8:	4638      	mov	r0, r7
d03e7eca:	47c0      	blx	r8
d03e7ecc:	3001      	adds	r0, #1
d03e7ece:	d103      	bne.n	d03e7ed8 <_printf_common+0xac>
d03e7ed0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e7ed4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e7ed8:	3501      	adds	r5, #1
d03e7eda:	e7c6      	b.n	d03e7e6a <_printf_common+0x3e>
d03e7edc:	18e1      	adds	r1, r4, r3
d03e7ede:	1c5a      	adds	r2, r3, #1
d03e7ee0:	2030      	movs	r0, #48	; 0x30
d03e7ee2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d03e7ee6:	4422      	add	r2, r4
d03e7ee8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d03e7eec:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d03e7ef0:	3302      	adds	r3, #2
d03e7ef2:	e7c7      	b.n	d03e7e84 <_printf_common+0x58>
d03e7ef4:	2301      	movs	r3, #1
d03e7ef6:	4622      	mov	r2, r4
d03e7ef8:	4649      	mov	r1, r9
d03e7efa:	4638      	mov	r0, r7
d03e7efc:	47c0      	blx	r8
d03e7efe:	3001      	adds	r0, #1
d03e7f00:	d0e6      	beq.n	d03e7ed0 <_printf_common+0xa4>
d03e7f02:	3601      	adds	r6, #1
d03e7f04:	e7d9      	b.n	d03e7eba <_printf_common+0x8e>
	...

d03e7f08 <_printf_i>:
d03e7f08:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d03e7f0c:	460c      	mov	r4, r1
d03e7f0e:	4691      	mov	r9, r2
d03e7f10:	7e27      	ldrb	r7, [r4, #24]
d03e7f12:	990c      	ldr	r1, [sp, #48]	; 0x30
d03e7f14:	2f78      	cmp	r7, #120	; 0x78
d03e7f16:	4680      	mov	r8, r0
d03e7f18:	469a      	mov	sl, r3
d03e7f1a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03e7f1e:	d807      	bhi.n	d03e7f30 <_printf_i+0x28>
d03e7f20:	2f62      	cmp	r7, #98	; 0x62
d03e7f22:	d80a      	bhi.n	d03e7f3a <_printf_i+0x32>
d03e7f24:	2f00      	cmp	r7, #0
d03e7f26:	f000 80d8 	beq.w	d03e80da <_printf_i+0x1d2>
d03e7f2a:	2f58      	cmp	r7, #88	; 0x58
d03e7f2c:	f000 80a3 	beq.w	d03e8076 <_printf_i+0x16e>
d03e7f30:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e7f34:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d03e7f38:	e03a      	b.n	d03e7fb0 <_printf_i+0xa8>
d03e7f3a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d03e7f3e:	2b15      	cmp	r3, #21
d03e7f40:	d8f6      	bhi.n	d03e7f30 <_printf_i+0x28>
d03e7f42:	a001      	add	r0, pc, #4	; (adr r0, d03e7f48 <_printf_i+0x40>)
d03e7f44:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d03e7f48:	d03e7fa1 	.word	0xd03e7fa1
d03e7f4c:	d03e7fb5 	.word	0xd03e7fb5
d03e7f50:	d03e7f31 	.word	0xd03e7f31
d03e7f54:	d03e7f31 	.word	0xd03e7f31
d03e7f58:	d03e7f31 	.word	0xd03e7f31
d03e7f5c:	d03e7f31 	.word	0xd03e7f31
d03e7f60:	d03e7fb5 	.word	0xd03e7fb5
d03e7f64:	d03e7f31 	.word	0xd03e7f31
d03e7f68:	d03e7f31 	.word	0xd03e7f31
d03e7f6c:	d03e7f31 	.word	0xd03e7f31
d03e7f70:	d03e7f31 	.word	0xd03e7f31
d03e7f74:	d03e80c1 	.word	0xd03e80c1
d03e7f78:	d03e7fe5 	.word	0xd03e7fe5
d03e7f7c:	d03e80a3 	.word	0xd03e80a3
d03e7f80:	d03e7f31 	.word	0xd03e7f31
d03e7f84:	d03e7f31 	.word	0xd03e7f31
d03e7f88:	d03e80e3 	.word	0xd03e80e3
d03e7f8c:	d03e7f31 	.word	0xd03e7f31
d03e7f90:	d03e7fe5 	.word	0xd03e7fe5
d03e7f94:	d03e7f31 	.word	0xd03e7f31
d03e7f98:	d03e7f31 	.word	0xd03e7f31
d03e7f9c:	d03e80ab 	.word	0xd03e80ab
d03e7fa0:	680b      	ldr	r3, [r1, #0]
d03e7fa2:	1d1a      	adds	r2, r3, #4
d03e7fa4:	681b      	ldr	r3, [r3, #0]
d03e7fa6:	600a      	str	r2, [r1, #0]
d03e7fa8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03e7fac:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d03e7fb0:	2301      	movs	r3, #1
d03e7fb2:	e0a3      	b.n	d03e80fc <_printf_i+0x1f4>
d03e7fb4:	6825      	ldr	r5, [r4, #0]
d03e7fb6:	6808      	ldr	r0, [r1, #0]
d03e7fb8:	062e      	lsls	r6, r5, #24
d03e7fba:	f100 0304 	add.w	r3, r0, #4
d03e7fbe:	d50a      	bpl.n	d03e7fd6 <_printf_i+0xce>
d03e7fc0:	6805      	ldr	r5, [r0, #0]
d03e7fc2:	600b      	str	r3, [r1, #0]
d03e7fc4:	2d00      	cmp	r5, #0
d03e7fc6:	da03      	bge.n	d03e7fd0 <_printf_i+0xc8>
d03e7fc8:	232d      	movs	r3, #45	; 0x2d
d03e7fca:	426d      	negs	r5, r5
d03e7fcc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e7fd0:	485e      	ldr	r0, [pc, #376]	; (d03e814c <_printf_i+0x244>)
d03e7fd2:	230a      	movs	r3, #10
d03e7fd4:	e019      	b.n	d03e800a <_printf_i+0x102>
d03e7fd6:	f015 0f40 	tst.w	r5, #64	; 0x40
d03e7fda:	6805      	ldr	r5, [r0, #0]
d03e7fdc:	600b      	str	r3, [r1, #0]
d03e7fde:	bf18      	it	ne
d03e7fe0:	b22d      	sxthne	r5, r5
d03e7fe2:	e7ef      	b.n	d03e7fc4 <_printf_i+0xbc>
d03e7fe4:	680b      	ldr	r3, [r1, #0]
d03e7fe6:	6825      	ldr	r5, [r4, #0]
d03e7fe8:	1d18      	adds	r0, r3, #4
d03e7fea:	6008      	str	r0, [r1, #0]
d03e7fec:	0628      	lsls	r0, r5, #24
d03e7fee:	d501      	bpl.n	d03e7ff4 <_printf_i+0xec>
d03e7ff0:	681d      	ldr	r5, [r3, #0]
d03e7ff2:	e002      	b.n	d03e7ffa <_printf_i+0xf2>
d03e7ff4:	0669      	lsls	r1, r5, #25
d03e7ff6:	d5fb      	bpl.n	d03e7ff0 <_printf_i+0xe8>
d03e7ff8:	881d      	ldrh	r5, [r3, #0]
d03e7ffa:	4854      	ldr	r0, [pc, #336]	; (d03e814c <_printf_i+0x244>)
d03e7ffc:	2f6f      	cmp	r7, #111	; 0x6f
d03e7ffe:	bf0c      	ite	eq
d03e8000:	2308      	moveq	r3, #8
d03e8002:	230a      	movne	r3, #10
d03e8004:	2100      	movs	r1, #0
d03e8006:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d03e800a:	6866      	ldr	r6, [r4, #4]
d03e800c:	60a6      	str	r6, [r4, #8]
d03e800e:	2e00      	cmp	r6, #0
d03e8010:	bfa2      	ittt	ge
d03e8012:	6821      	ldrge	r1, [r4, #0]
d03e8014:	f021 0104 	bicge.w	r1, r1, #4
d03e8018:	6021      	strge	r1, [r4, #0]
d03e801a:	b90d      	cbnz	r5, d03e8020 <_printf_i+0x118>
d03e801c:	2e00      	cmp	r6, #0
d03e801e:	d04d      	beq.n	d03e80bc <_printf_i+0x1b4>
d03e8020:	4616      	mov	r6, r2
d03e8022:	fbb5 f1f3 	udiv	r1, r5, r3
d03e8026:	fb03 5711 	mls	r7, r3, r1, r5
d03e802a:	5dc7      	ldrb	r7, [r0, r7]
d03e802c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d03e8030:	462f      	mov	r7, r5
d03e8032:	42bb      	cmp	r3, r7
d03e8034:	460d      	mov	r5, r1
d03e8036:	d9f4      	bls.n	d03e8022 <_printf_i+0x11a>
d03e8038:	2b08      	cmp	r3, #8
d03e803a:	d10b      	bne.n	d03e8054 <_printf_i+0x14c>
d03e803c:	6823      	ldr	r3, [r4, #0]
d03e803e:	07df      	lsls	r7, r3, #31
d03e8040:	d508      	bpl.n	d03e8054 <_printf_i+0x14c>
d03e8042:	6923      	ldr	r3, [r4, #16]
d03e8044:	6861      	ldr	r1, [r4, #4]
d03e8046:	4299      	cmp	r1, r3
d03e8048:	bfde      	ittt	le
d03e804a:	2330      	movle	r3, #48	; 0x30
d03e804c:	f806 3c01 	strble.w	r3, [r6, #-1]
d03e8050:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d03e8054:	1b92      	subs	r2, r2, r6
d03e8056:	6122      	str	r2, [r4, #16]
d03e8058:	f8cd a000 	str.w	sl, [sp]
d03e805c:	464b      	mov	r3, r9
d03e805e:	aa03      	add	r2, sp, #12
d03e8060:	4621      	mov	r1, r4
d03e8062:	4640      	mov	r0, r8
d03e8064:	f7ff fee2 	bl	d03e7e2c <_printf_common>
d03e8068:	3001      	adds	r0, #1
d03e806a:	d14c      	bne.n	d03e8106 <_printf_i+0x1fe>
d03e806c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e8070:	b004      	add	sp, #16
d03e8072:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03e8076:	4835      	ldr	r0, [pc, #212]	; (d03e814c <_printf_i+0x244>)
d03e8078:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d03e807c:	6823      	ldr	r3, [r4, #0]
d03e807e:	680e      	ldr	r6, [r1, #0]
d03e8080:	061f      	lsls	r7, r3, #24
d03e8082:	f856 5b04 	ldr.w	r5, [r6], #4
d03e8086:	600e      	str	r6, [r1, #0]
d03e8088:	d514      	bpl.n	d03e80b4 <_printf_i+0x1ac>
d03e808a:	07d9      	lsls	r1, r3, #31
d03e808c:	bf44      	itt	mi
d03e808e:	f043 0320 	orrmi.w	r3, r3, #32
d03e8092:	6023      	strmi	r3, [r4, #0]
d03e8094:	b91d      	cbnz	r5, d03e809e <_printf_i+0x196>
d03e8096:	6823      	ldr	r3, [r4, #0]
d03e8098:	f023 0320 	bic.w	r3, r3, #32
d03e809c:	6023      	str	r3, [r4, #0]
d03e809e:	2310      	movs	r3, #16
d03e80a0:	e7b0      	b.n	d03e8004 <_printf_i+0xfc>
d03e80a2:	6823      	ldr	r3, [r4, #0]
d03e80a4:	f043 0320 	orr.w	r3, r3, #32
d03e80a8:	6023      	str	r3, [r4, #0]
d03e80aa:	2378      	movs	r3, #120	; 0x78
d03e80ac:	4828      	ldr	r0, [pc, #160]	; (d03e8150 <_printf_i+0x248>)
d03e80ae:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d03e80b2:	e7e3      	b.n	d03e807c <_printf_i+0x174>
d03e80b4:	065e      	lsls	r6, r3, #25
d03e80b6:	bf48      	it	mi
d03e80b8:	b2ad      	uxthmi	r5, r5
d03e80ba:	e7e6      	b.n	d03e808a <_printf_i+0x182>
d03e80bc:	4616      	mov	r6, r2
d03e80be:	e7bb      	b.n	d03e8038 <_printf_i+0x130>
d03e80c0:	680b      	ldr	r3, [r1, #0]
d03e80c2:	6826      	ldr	r6, [r4, #0]
d03e80c4:	6960      	ldr	r0, [r4, #20]
d03e80c6:	1d1d      	adds	r5, r3, #4
d03e80c8:	600d      	str	r5, [r1, #0]
d03e80ca:	0635      	lsls	r5, r6, #24
d03e80cc:	681b      	ldr	r3, [r3, #0]
d03e80ce:	d501      	bpl.n	d03e80d4 <_printf_i+0x1cc>
d03e80d0:	6018      	str	r0, [r3, #0]
d03e80d2:	e002      	b.n	d03e80da <_printf_i+0x1d2>
d03e80d4:	0671      	lsls	r1, r6, #25
d03e80d6:	d5fb      	bpl.n	d03e80d0 <_printf_i+0x1c8>
d03e80d8:	8018      	strh	r0, [r3, #0]
d03e80da:	2300      	movs	r3, #0
d03e80dc:	6123      	str	r3, [r4, #16]
d03e80de:	4616      	mov	r6, r2
d03e80e0:	e7ba      	b.n	d03e8058 <_printf_i+0x150>
d03e80e2:	680b      	ldr	r3, [r1, #0]
d03e80e4:	1d1a      	adds	r2, r3, #4
d03e80e6:	600a      	str	r2, [r1, #0]
d03e80e8:	681e      	ldr	r6, [r3, #0]
d03e80ea:	6862      	ldr	r2, [r4, #4]
d03e80ec:	2100      	movs	r1, #0
d03e80ee:	4630      	mov	r0, r6
d03e80f0:	f000 f8b6 	bl	d03e8260 <memchr>
d03e80f4:	b108      	cbz	r0, d03e80fa <_printf_i+0x1f2>
d03e80f6:	1b80      	subs	r0, r0, r6
d03e80f8:	6060      	str	r0, [r4, #4]
d03e80fa:	6863      	ldr	r3, [r4, #4]
d03e80fc:	6123      	str	r3, [r4, #16]
d03e80fe:	2300      	movs	r3, #0
d03e8100:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03e8104:	e7a8      	b.n	d03e8058 <_printf_i+0x150>
d03e8106:	6923      	ldr	r3, [r4, #16]
d03e8108:	4632      	mov	r2, r6
d03e810a:	4649      	mov	r1, r9
d03e810c:	4640      	mov	r0, r8
d03e810e:	47d0      	blx	sl
d03e8110:	3001      	adds	r0, #1
d03e8112:	d0ab      	beq.n	d03e806c <_printf_i+0x164>
d03e8114:	6823      	ldr	r3, [r4, #0]
d03e8116:	079b      	lsls	r3, r3, #30
d03e8118:	d413      	bmi.n	d03e8142 <_printf_i+0x23a>
d03e811a:	68e0      	ldr	r0, [r4, #12]
d03e811c:	9b03      	ldr	r3, [sp, #12]
d03e811e:	4298      	cmp	r0, r3
d03e8120:	bfb8      	it	lt
d03e8122:	4618      	movlt	r0, r3
d03e8124:	e7a4      	b.n	d03e8070 <_printf_i+0x168>
d03e8126:	2301      	movs	r3, #1
d03e8128:	4632      	mov	r2, r6
d03e812a:	4649      	mov	r1, r9
d03e812c:	4640      	mov	r0, r8
d03e812e:	47d0      	blx	sl
d03e8130:	3001      	adds	r0, #1
d03e8132:	d09b      	beq.n	d03e806c <_printf_i+0x164>
d03e8134:	3501      	adds	r5, #1
d03e8136:	68e3      	ldr	r3, [r4, #12]
d03e8138:	9903      	ldr	r1, [sp, #12]
d03e813a:	1a5b      	subs	r3, r3, r1
d03e813c:	42ab      	cmp	r3, r5
d03e813e:	dcf2      	bgt.n	d03e8126 <_printf_i+0x21e>
d03e8140:	e7eb      	b.n	d03e811a <_printf_i+0x212>
d03e8142:	2500      	movs	r5, #0
d03e8144:	f104 0619 	add.w	r6, r4, #25
d03e8148:	e7f5      	b.n	d03e8136 <_printf_i+0x22e>
d03e814a:	bf00      	nop
d03e814c:	d03e9a51 	.word	0xd03e9a51
d03e8150:	d03e9a62 	.word	0xd03e9a62

d03e8154 <__sread>:
d03e8154:	b510      	push	{r4, lr}
d03e8156:	460c      	mov	r4, r1
d03e8158:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e815c:	f000 f910 	bl	d03e8380 <_read_r>
d03e8160:	2800      	cmp	r0, #0
d03e8162:	bfab      	itete	ge
d03e8164:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03e8166:	89a3      	ldrhlt	r3, [r4, #12]
d03e8168:	181b      	addge	r3, r3, r0
d03e816a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03e816e:	bfac      	ite	ge
d03e8170:	6563      	strge	r3, [r4, #84]	; 0x54
d03e8172:	81a3      	strhlt	r3, [r4, #12]
d03e8174:	bd10      	pop	{r4, pc}

d03e8176 <__swrite>:
d03e8176:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e817a:	461f      	mov	r7, r3
d03e817c:	898b      	ldrh	r3, [r1, #12]
d03e817e:	05db      	lsls	r3, r3, #23
d03e8180:	4605      	mov	r5, r0
d03e8182:	460c      	mov	r4, r1
d03e8184:	4616      	mov	r6, r2
d03e8186:	d505      	bpl.n	d03e8194 <__swrite+0x1e>
d03e8188:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e818c:	2302      	movs	r3, #2
d03e818e:	2200      	movs	r2, #0
d03e8190:	f000 f852 	bl	d03e8238 <_lseek_r>
d03e8194:	89a3      	ldrh	r3, [r4, #12]
d03e8196:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e819a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03e819e:	81a3      	strh	r3, [r4, #12]
d03e81a0:	4632      	mov	r2, r6
d03e81a2:	463b      	mov	r3, r7
d03e81a4:	4628      	mov	r0, r5
d03e81a6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e81aa:	f7f7 bf53 	b.w	d03e0054 <_write_r>

d03e81ae <__sseek>:
d03e81ae:	b510      	push	{r4, lr}
d03e81b0:	460c      	mov	r4, r1
d03e81b2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e81b6:	f000 f83f 	bl	d03e8238 <_lseek_r>
d03e81ba:	1c43      	adds	r3, r0, #1
d03e81bc:	89a3      	ldrh	r3, [r4, #12]
d03e81be:	bf15      	itete	ne
d03e81c0:	6560      	strne	r0, [r4, #84]	; 0x54
d03e81c2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03e81c6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03e81ca:	81a3      	strheq	r3, [r4, #12]
d03e81cc:	bf18      	it	ne
d03e81ce:	81a3      	strhne	r3, [r4, #12]
d03e81d0:	bd10      	pop	{r4, pc}

d03e81d2 <__sclose>:
d03e81d2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e81d6:	f000 b80d 	b.w	d03e81f4 <_close_r>

d03e81da <strchr>:
d03e81da:	b2c9      	uxtb	r1, r1
d03e81dc:	4603      	mov	r3, r0
d03e81de:	f810 2b01 	ldrb.w	r2, [r0], #1
d03e81e2:	b11a      	cbz	r2, d03e81ec <strchr+0x12>
d03e81e4:	428a      	cmp	r2, r1
d03e81e6:	d1f9      	bne.n	d03e81dc <strchr+0x2>
d03e81e8:	4618      	mov	r0, r3
d03e81ea:	4770      	bx	lr
d03e81ec:	2900      	cmp	r1, #0
d03e81ee:	bf18      	it	ne
d03e81f0:	2300      	movne	r3, #0
d03e81f2:	e7f9      	b.n	d03e81e8 <strchr+0xe>

d03e81f4 <_close_r>:
d03e81f4:	b538      	push	{r3, r4, r5, lr}
d03e81f6:	4d06      	ldr	r5, [pc, #24]	; (d03e8210 <_close_r+0x1c>)
d03e81f8:	2300      	movs	r3, #0
d03e81fa:	4604      	mov	r4, r0
d03e81fc:	4608      	mov	r0, r1
d03e81fe:	602b      	str	r3, [r5, #0]
d03e8200:	f7f7 ff62 	bl	d03e00c8 <_close>
d03e8204:	1c43      	adds	r3, r0, #1
d03e8206:	d102      	bne.n	d03e820e <_close_r+0x1a>
d03e8208:	682b      	ldr	r3, [r5, #0]
d03e820a:	b103      	cbz	r3, d03e820e <_close_r+0x1a>
d03e820c:	6023      	str	r3, [r4, #0]
d03e820e:	bd38      	pop	{r3, r4, r5, pc}
d03e8210:	d03ec60c 	.word	0xd03ec60c

d03e8214 <_fstat_r>:
d03e8214:	b538      	push	{r3, r4, r5, lr}
d03e8216:	4d07      	ldr	r5, [pc, #28]	; (d03e8234 <_fstat_r+0x20>)
d03e8218:	2300      	movs	r3, #0
d03e821a:	4604      	mov	r4, r0
d03e821c:	4608      	mov	r0, r1
d03e821e:	4611      	mov	r1, r2
d03e8220:	602b      	str	r3, [r5, #0]
d03e8222:	f7f7 ff55 	bl	d03e00d0 <_fstat>
d03e8226:	1c43      	adds	r3, r0, #1
d03e8228:	d102      	bne.n	d03e8230 <_fstat_r+0x1c>
d03e822a:	682b      	ldr	r3, [r5, #0]
d03e822c:	b103      	cbz	r3, d03e8230 <_fstat_r+0x1c>
d03e822e:	6023      	str	r3, [r4, #0]
d03e8230:	bd38      	pop	{r3, r4, r5, pc}
d03e8232:	bf00      	nop
d03e8234:	d03ec60c 	.word	0xd03ec60c

d03e8238 <_lseek_r>:
d03e8238:	b538      	push	{r3, r4, r5, lr}
d03e823a:	4d07      	ldr	r5, [pc, #28]	; (d03e8258 <_lseek_r+0x20>)
d03e823c:	4604      	mov	r4, r0
d03e823e:	4608      	mov	r0, r1
d03e8240:	4611      	mov	r1, r2
d03e8242:	2200      	movs	r2, #0
d03e8244:	602a      	str	r2, [r5, #0]
d03e8246:	461a      	mov	r2, r3
d03e8248:	f7f7 ff48 	bl	d03e00dc <_lseek>
d03e824c:	1c43      	adds	r3, r0, #1
d03e824e:	d102      	bne.n	d03e8256 <_lseek_r+0x1e>
d03e8250:	682b      	ldr	r3, [r5, #0]
d03e8252:	b103      	cbz	r3, d03e8256 <_lseek_r+0x1e>
d03e8254:	6023      	str	r3, [r4, #0]
d03e8256:	bd38      	pop	{r3, r4, r5, pc}
d03e8258:	d03ec60c 	.word	0xd03ec60c
d03e825c:	00000000 	.word	0x00000000

d03e8260 <memchr>:
d03e8260:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e8264:	2a10      	cmp	r2, #16
d03e8266:	db2b      	blt.n	d03e82c0 <memchr+0x60>
d03e8268:	f010 0f07 	tst.w	r0, #7
d03e826c:	d008      	beq.n	d03e8280 <memchr+0x20>
d03e826e:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e8272:	3a01      	subs	r2, #1
d03e8274:	428b      	cmp	r3, r1
d03e8276:	d02d      	beq.n	d03e82d4 <memchr+0x74>
d03e8278:	f010 0f07 	tst.w	r0, #7
d03e827c:	b342      	cbz	r2, d03e82d0 <memchr+0x70>
d03e827e:	d1f6      	bne.n	d03e826e <memchr+0xe>
d03e8280:	b4f0      	push	{r4, r5, r6, r7}
d03e8282:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d03e8286:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d03e828a:	f022 0407 	bic.w	r4, r2, #7
d03e828e:	f07f 0700 	mvns.w	r7, #0
d03e8292:	2300      	movs	r3, #0
d03e8294:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d03e8298:	3c08      	subs	r4, #8
d03e829a:	ea85 0501 	eor.w	r5, r5, r1
d03e829e:	ea86 0601 	eor.w	r6, r6, r1
d03e82a2:	fa85 f547 	uadd8	r5, r5, r7
d03e82a6:	faa3 f587 	sel	r5, r3, r7
d03e82aa:	fa86 f647 	uadd8	r6, r6, r7
d03e82ae:	faa5 f687 	sel	r6, r5, r7
d03e82b2:	b98e      	cbnz	r6, d03e82d8 <memchr+0x78>
d03e82b4:	d1ee      	bne.n	d03e8294 <memchr+0x34>
d03e82b6:	bcf0      	pop	{r4, r5, r6, r7}
d03e82b8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03e82bc:	f002 0207 	and.w	r2, r2, #7
d03e82c0:	b132      	cbz	r2, d03e82d0 <memchr+0x70>
d03e82c2:	f810 3b01 	ldrb.w	r3, [r0], #1
d03e82c6:	3a01      	subs	r2, #1
d03e82c8:	ea83 0301 	eor.w	r3, r3, r1
d03e82cc:	b113      	cbz	r3, d03e82d4 <memchr+0x74>
d03e82ce:	d1f8      	bne.n	d03e82c2 <memchr+0x62>
d03e82d0:	2000      	movs	r0, #0
d03e82d2:	4770      	bx	lr
d03e82d4:	3801      	subs	r0, #1
d03e82d6:	4770      	bx	lr
d03e82d8:	2d00      	cmp	r5, #0
d03e82da:	bf06      	itte	eq
d03e82dc:	4635      	moveq	r5, r6
d03e82de:	3803      	subeq	r0, #3
d03e82e0:	3807      	subne	r0, #7
d03e82e2:	f015 0f01 	tst.w	r5, #1
d03e82e6:	d107      	bne.n	d03e82f8 <memchr+0x98>
d03e82e8:	3001      	adds	r0, #1
d03e82ea:	f415 7f80 	tst.w	r5, #256	; 0x100
d03e82ee:	bf02      	ittt	eq
d03e82f0:	3001      	addeq	r0, #1
d03e82f2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d03e82f6:	3001      	addeq	r0, #1
d03e82f8:	bcf0      	pop	{r4, r5, r6, r7}
d03e82fa:	3801      	subs	r0, #1
d03e82fc:	4770      	bx	lr
d03e82fe:	bf00      	nop

d03e8300 <memmove>:
d03e8300:	4288      	cmp	r0, r1
d03e8302:	b510      	push	{r4, lr}
d03e8304:	eb01 0402 	add.w	r4, r1, r2
d03e8308:	d902      	bls.n	d03e8310 <memmove+0x10>
d03e830a:	4284      	cmp	r4, r0
d03e830c:	4623      	mov	r3, r4
d03e830e:	d807      	bhi.n	d03e8320 <memmove+0x20>
d03e8310:	1e43      	subs	r3, r0, #1
d03e8312:	42a1      	cmp	r1, r4
d03e8314:	d008      	beq.n	d03e8328 <memmove+0x28>
d03e8316:	f811 2b01 	ldrb.w	r2, [r1], #1
d03e831a:	f803 2f01 	strb.w	r2, [r3, #1]!
d03e831e:	e7f8      	b.n	d03e8312 <memmove+0x12>
d03e8320:	4402      	add	r2, r0
d03e8322:	4601      	mov	r1, r0
d03e8324:	428a      	cmp	r2, r1
d03e8326:	d100      	bne.n	d03e832a <memmove+0x2a>
d03e8328:	bd10      	pop	{r4, pc}
d03e832a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d03e832e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d03e8332:	e7f7      	b.n	d03e8324 <memmove+0x24>

d03e8334 <_realloc_r>:
d03e8334:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e8336:	4607      	mov	r7, r0
d03e8338:	4614      	mov	r4, r2
d03e833a:	460e      	mov	r6, r1
d03e833c:	b921      	cbnz	r1, d03e8348 <_realloc_r+0x14>
d03e833e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03e8342:	4611      	mov	r1, r2
d03e8344:	f7ff b8a2 	b.w	d03e748c <_malloc_r>
d03e8348:	b922      	cbnz	r2, d03e8354 <_realloc_r+0x20>
d03e834a:	f7ff f84f 	bl	d03e73ec <_free_r>
d03e834e:	4625      	mov	r5, r4
d03e8350:	4628      	mov	r0, r5
d03e8352:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e8354:	f000 f826 	bl	d03e83a4 <_malloc_usable_size_r>
d03e8358:	42a0      	cmp	r0, r4
d03e835a:	d20f      	bcs.n	d03e837c <_realloc_r+0x48>
d03e835c:	4621      	mov	r1, r4
d03e835e:	4638      	mov	r0, r7
d03e8360:	f7ff f894 	bl	d03e748c <_malloc_r>
d03e8364:	4605      	mov	r5, r0
d03e8366:	2800      	cmp	r0, #0
d03e8368:	d0f2      	beq.n	d03e8350 <_realloc_r+0x1c>
d03e836a:	4631      	mov	r1, r6
d03e836c:	4622      	mov	r2, r4
d03e836e:	f7ff f827 	bl	d03e73c0 <memcpy>
d03e8372:	4631      	mov	r1, r6
d03e8374:	4638      	mov	r0, r7
d03e8376:	f7ff f839 	bl	d03e73ec <_free_r>
d03e837a:	e7e9      	b.n	d03e8350 <_realloc_r+0x1c>
d03e837c:	4635      	mov	r5, r6
d03e837e:	e7e7      	b.n	d03e8350 <_realloc_r+0x1c>

d03e8380 <_read_r>:
d03e8380:	b538      	push	{r3, r4, r5, lr}
d03e8382:	4d07      	ldr	r5, [pc, #28]	; (d03e83a0 <_read_r+0x20>)
d03e8384:	4604      	mov	r4, r0
d03e8386:	4608      	mov	r0, r1
d03e8388:	4611      	mov	r1, r2
d03e838a:	2200      	movs	r2, #0
d03e838c:	602a      	str	r2, [r5, #0]
d03e838e:	461a      	mov	r2, r3
d03e8390:	f7f7 fe90 	bl	d03e00b4 <_read>
d03e8394:	1c43      	adds	r3, r0, #1
d03e8396:	d102      	bne.n	d03e839e <_read_r+0x1e>
d03e8398:	682b      	ldr	r3, [r5, #0]
d03e839a:	b103      	cbz	r3, d03e839e <_read_r+0x1e>
d03e839c:	6023      	str	r3, [r4, #0]
d03e839e:	bd38      	pop	{r3, r4, r5, pc}
d03e83a0:	d03ec60c 	.word	0xd03ec60c

d03e83a4 <_malloc_usable_size_r>:
d03e83a4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e83a8:	1f18      	subs	r0, r3, #4
d03e83aa:	2b00      	cmp	r3, #0
d03e83ac:	bfbc      	itt	lt
d03e83ae:	580b      	ldrlt	r3, [r1, r0]
d03e83b0:	18c0      	addlt	r0, r0, r3
d03e83b2:	4770      	bx	lr

d03e83b4 <CSWTCH.7>:
d03e83b4:	8408 d03e 8408 d03e 83f4 d03e 843c d03e     ..>...>...>.<.>.
d03e83c4:	83f4 d03e 843c d03e 846c d03e 83f4 d03e     ..>.<.>.l.>...>.
d03e83d4:	846c d03e 83f4 d03e 846c d03e 8428 d03e     l.>...>.l.>.(.>.
d03e83e4:	846c d03e 846c d03e 83f4 d03e 846c d03e     l.>.l.>...>.l.>.

d03e83f4 <drv_closed_hat_patch>:
d03e83f4:	0003 0041 4f0a 0700 0002 0081 0001 0001     ..A..O..........
d03e8404:	0000 0000                                   ....

d03e8408 <drv_kick_patch>:
d03e8408:	0003 00b2 0005 0024 0002 0011 000d f9c0     ......$.........
d03e8418:	0001 0003 000d 0000 0002 0010 0000 0000     ................

d03e8428 <drv_open_hat_patch>:
d03e8428:	0003 00a5 4f0a 0700 0002 0081 0001 0005     .....O..........
d03e8438:	0000 0000                                   ....

d03e843c <drv_snare_patch>:
d03e843c:	0003 0092 4f0a 1800 0005 003c 0002 0091     .....O....<.....
d03e844c:	0001 0001 0005 0012 4f0a 0a00 0002 0081     .........O......
d03e845c:	0001 0002 4f0a 0200 0002 0080 0000 0000     .....O..........

d03e846c <drv_tom_patch>:
d03e846c:	0003 00a3 0002 0011 000d ff6a 0001 0004     ..........j.....
d03e847c:	000d 0000 0000 0000                         ........

d03e8484 <prg_acoustic_bass>:
d03e8484:	0003 0581 0002 0011 0005 000c 0001 0000     ................
d03e8494:	0005 0000 000f 0000 0000 0000               ............

d03e84a0 <prg_acoustic_piano>:
d03e84a0:	0003 0342 0004 0900 0002 0041 0001 0001     ..B.......A.....
d03e84b0:	0004 0300 0001 0003 0004 0700 000f 0000     ................
d03e84c0:	0000 0000                                   ....

d03e84c4 <prg_bass_lead>:
d03e84c4:	0003 00e3 0004 0400 0002 0041 0009 000c     ..........A.....
d03e84d4:	000e 1405 000f 0000 0000 0000               ............

d03e84e0 <prg_bright_key>:
d03e84e0:	0003 0242 0004 0a00 0002 0041 0001 0001     ..B.......A.....
d03e84f0:	0004 0280 0001 0002 0004 0600 000f 0000     ................
d03e8500:	0000 0000                                   ....

d03e8504 <prg_charang_lead>:
d03e8504:	0003 00d3 0004 0180 0002 0041 000e 3004     ..........A....0
d03e8514:	0009 070c 000f 0000 0000 0000               ............

d03e8520 <prg_chiff_lead>:
d03e8520:	0003 00e3 0004 0700 0002 0081 0001 0001     ................
d03e8530:	0002 0041 000e 2005 0010 0105 000f 0000     ..A.... ........
d03e8540:	0000 0000                                   ....

d03e8544 <prg_church_organ>:
d03e8544:	0003 00f5 0002 0031 000e 1807 0010 0209     ......1.........
d03e8554:	000f 0000 0000 0000                         ........

d03e855c <prg_clav_pluck>:
d03e855c:	0003 0121 0004 0180 0002 0041 0001 0001     ..!.......A.....
d03e856c:	0004 0c00 000f 0000 0000 0000               ............

d03e8578 <prg_conditional_loop_demo>:
d03e8578:	0003 00fc 0004 0200 0002 0041 0011 000a     ..........A.....
d03e8588:	0014 0405 0006 0100 0001 0001 0012 ffff     ................
d03e8598:	0015 0004 0013 000d 0006 0040 0001 0001     ..........@.....
d03e85a8:	0007 0040 0001 0001 0015 0005 0000 0000     ..@.............

d03e85b8 <prg_crystal_fx>:
d03e85b8:	0003 02e5 0004 0500 0002 0041 0009 0c13     ..........A.....
d03e85c8:	000e 1004 0010 0104 000f 0000 0000 0000     ................

d03e85d8 <prg_distortion_guitar>:
d03e85d8:	0003 0652 0004 0180 0005 000c 0002 0041     ..R...........A.
d03e85e8:	0001 0000 0005 0000 0004 0d00 0009 070c     ................
d03e85f8:	000f 0000 0000 0000                         ........

d03e8600 <prg_electric_key>:
d03e8600:	0003 0464 0004 0440 0002 0041 000e 0807     ..d...@...A.....
d03e8610:	0010 0108 000f 0000 0000 0000               ............

d03e861c <prg_gunshot>:
d03e861c:	0003 0ef0 0002 0081 0001 0014 0000 0000     ................

d03e862c <prg_honkytonk_piano>:
d03e862c:	0003 0432 0004 0240 0002 0041 0001 0002     ..2...@...A.....
d03e863c:	0004 0500 0001 0004 0004 0340 000f 0000     ..........@.....
d03e864c:	0000 0000                                   ....

d03e8650 <prg_hubbard_arp_hardware>:
d03e8650:	0003 00f3 0004 0480 0002 0041 000e 1806     ..........A.....
d03e8660:	0010 0104 0009 0407 000f 0000 0000 0000     ................

d03e8670 <prg_hubbard_arp_lead>:
d03e8670:	0003 00f3 0004 0600 0002 0041 000e 1806     ..........A.....
d03e8680:	0005 0000 0004 0600 0001 0000 0005 0004     ................
d03e8690:	0004 0380 0001 0000 0005 0007 0004 0a00     ................
d03e86a0:	0001 0000 0005 000c 0004 0500 0001 0000     ................
d03e86b0:	000f 000c 0000 0000                         ........

d03e86b8 <prg_hubbard_pwm_lead>:
d03e86b8:	0003 00f4 0004 0180 0002 0041 000e 2005     ..........A.... 
d03e86c8:	0010 0206 0006 0060 0001 0001 200b 0002     ......`...... ..
d03e86d8:	0007 0060 0001 0001 200b 0002 000f 0006     ..`...... ......
d03e86e8:	0000 0000                                   ....

d03e86ec <prg_lead_square>:
d03e86ec:	0003 00d3 0004 0600 0002 0041 000e 2404     ..........A....$
d03e86fc:	0010 0105 0006 0080 0001 0001 080b 0002     ................
d03e870c:	0007 0080 0001 0001 080b 0002 000f 0006     ................
d03e871c:	0000 0000                                   ....

d03e8720 <prg_muted_guitar>:
d03e8720:	0003 0111 0004 0100 0002 0041 0001 0001     ..........A.....
d03e8730:	0004 0f00 000f 0000 0000 0000               ............

d03e873c <prg_percussive_organ>:
d03e873c:	0003 02c3 0004 0380 0002 0051 0010 0105     ..........Q.....
d03e874c:	000f 0000 0000 0000                         ........

d03e8754 <prg_pizzicato>:
d03e8754:	0003 0262 0004 0a00 0002 0041 0001 0001     ..b.......A.....
d03e8764:	0004 0300 000f 0000 0000 0000               ............

d03e8770 <prg_sid_bell>:
d03e8770:	0003 04a6 0002 0011 000e 0803 0005 000c     ................
d03e8780:	0001 0001 0005 0000 000f 0000 0000 0000     ................

d03e8790 <prg_sid_brass>:
d03e8790:	0003 12d4 0004 0700 0002 0061 000e 1006     ..........a.....
d03e87a0:	0010 0106 000f 0000 0000 0000               ............

d03e87ac <prg_sid_drawbar_organ>:
d03e87ac:	0003 00e4 0004 0700 0002 0051 000e 1008     ..........Q.....
d03e87bc:	0010 0207 000f 0000 0000 0000               ............

d03e87c8 <prg_sid_flute>:
d03e87c8:	0003 34b4 0002 0011 000e 2006 0010 0107     ...4....... ....
d03e87d8:	000f 0000 0000 0000                         ........

d03e87e0 <prg_sid_guitar>:
d03e87e0:	0003 0352 0004 0280 0002 0041 0001 0001     ..R.......A.....
d03e87f0:	0004 0900 000f 0000 0000 0000               ............

d03e87fc <prg_sid_reed>:
d03e87fc:	0003 01c4 0004 0300 0002 0041 000e 2006     ..........A.... 
d03e880c:	0010 0108 000f 0000 0000 0000               ............

d03e8818 <prg_sid_strings>:
d03e8818:	0003 45c5 0004 0800 0002 0051 000e 1807     ...E......Q.....
d03e8828:	0010 0109 000f 0000 0000 0000               ............

d03e8834 <prg_sitar_sid>:
d03e8834:	0003 0273 0004 0180 0002 0041 0009 0c13     ..s.......A.....
d03e8844:	0001 0003 0009 0000 000f 0000 0000 0000     ................

d03e8854 <prg_slap_bass>:
d03e8854:	0003 0471 0004 0140 0002 0041 0005 000c     ..q...@...A.....
d03e8864:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e8874:	0000 0000                                   ....

d03e8878 <prg_sweep_pad>:
d03e8878:	0003 45f6 0004 0180 0002 0041 000e 1808     ...E......A.....
d03e8888:	0010 0208 0006 0040 0001 0001 280b 0002     ......@......(..
d03e8898:	0007 0040 0001 0001 280b 0002 000f 0006     ..@......(......
d03e88a8:	0000 0000                                   ....

d03e88ac <prg_synth_bass_1>:
d03e88ac:	0003 0671 0004 0280 0005 000c 0002 0041     ..q...........A.
d03e88bc:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03e88cc:	0000 0000                                   ....

d03e88d0 <prg_synth_brass>:
d03e88d0:	0003 01f4 0004 0200 0002 0041 000e 1805     ..........A.....
d03e88e0:	0010 0205 0006 0080 0001 0001 040b 0002     ................
d03e88f0:	0007 0080 0001 0001 040b 0002 000f 0006     ................
d03e8900:	0000 0000                                   ....

d03e8904 <prg_synth_drum_program>:
d03e8904:	0003 00a2 0005 0018 0002 0011 000d fe0c     ................
d03e8914:	0001 0004 000d 0000 0000 0000               ............

d03e8920 <prg_warm_pad>:
d03e8920:	0003 55f6 0004 0800 0002 0051 000e 1809     ...U......Q.....
d03e8930:	0010 020a 000f 0000 0000 0000               ............

d03e893c <sid_note_to_freq>:
d03e893c:	0111 0121 0133 0145 0158 016d 0182 019a     ..!.3.E.X.m.....
d03e894c:	01b2 01cc 01e7 0204 0223 0243 0266 028a     ........#.C.f...
d03e895c:	02b1 02da 0305 0333 0364 0398 03cf 0409     ......3.d.......
d03e896c:	0446 0487 04cc 0515 0562 05b4 060b 0667     F.......b.....g.
d03e897c:	06c9 0730 079d 0811 088c 090e 0998 0a2a     ..0...........*.
d03e898c:	0ac5 0b69 0c17 0ccf 0d92 0e61 0f3c 1023     ..i.......a.<.#.
d03e899c:	1119 121d 1331 1455 158a 16d2 182d 199d     ....1.U.....-...
d03e89ac:	1b23 1cc0 1e76 2046 2232 243a 2662 28aa     #...v.F 2":$b&.(
d03e89bc:	2b15 2da5 305b 333b 3647 3981 3cec 408c     .+.-[0;3G6.9.<.@
d03e89cc:	4464 4875 4cc4 5154 562a 5b4a 60b7 6676     dDuH.LTQ*VJ[.`vf
d03e89dc:	6c8e 7302 79d9 8118 88c9 90ea 9988 a2a9     .l.s.y..........
d03e89ec:	ac55 b694 c16f ccee d91d e605 f3b3 ffff     U...o...........
d03e89fc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e8a0c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e8a1c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03e8a2c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................

d03e8a3c <sid_release_ticks_50hz>:
d03e8a3c:	0001 0002 0003 0004 0006 0009 000b 000d     ................
d03e8a4c:	0010 0026 004c 0079 0097 01c3 02ef 04b1     ..&.L.y.........
d03e8a5c:	732e 7070 2e00 7073 0067 6473 6163 6472     .spp..spg.sdcard
d03e8a6c:	2f3a 7973 746e 7068 6f72 7367 4e00 206f     :/synthprogs.No 
d03e8a7c:	7973 746e 7068 6f72 7367 6620 6c6f 6564     synthprogs folde
d03e8a8c:	2f72 6966 656c 0073 6143 6e6e 746f 6320     r/files.Cannot c
d03e8a9c:	6572 7461 2065 7973 746e 7068 6f72 7367     reate synthprogs
d03e8aac:	6620 6c6f 6564 0072 4843 3031 7520 6573      folder.CH10 use
d03e8abc:	2073 6874 2065 6570 6372 7375 6973 6e6f     s the percussion
d03e8acc:	7220 756f 6574 0072 7250 6a6f 6365 2074      router.Project 
d03e8adc:	6173 6576 6220 6675 6566 2072 696d 7373     save buffer miss
d03e8aec:	6e69 0067 4953 5344 5050 0031 7250 6a6f     ing.SIDSPP1.Proj
d03e8afc:	6365 2074 6173 6576 6f20 6570 206e 6166     ect save open fa
d03e8b0c:	6c69 6465 5000 6f72 656a 7463 7320 7661     iled.Project sav
d03e8b1c:	2065 7277 7469 2065 6166 6c69 6465 5000     e write failed.P
d03e8b2c:	6f72 656a 7463 7320 7661 6465 4e00 206f     roject saved.No 
d03e8b3c:	4d56 7020 6f72 7267 6d61 7420 206f 6173     VM program to sa
d03e8b4c:	6576 5000 6f72 7267 6d61 7320 7661 2065     ve.Program save 
d03e8b5c:	7562 6666 7265 6d20 7369 6973 676e 5300     buffer missing.S
d03e8b6c:	4449 5053 3147 5000 6f72 7267 6d61 7320     IDSPG1.Program s
d03e8b7c:	7661 2065 706f 6e65 6620 6961 656c 0064     ave open failed.
d03e8b8c:	7250 676f 6172 206d 6173 6576 7720 6972     Program save wri
d03e8b9c:	6574 6620 6961 656c 0064 7250 676f 6172     te failed.Progra
d03e8bac:	206d 6173 6576 0064 7325 252f 0073 7325     m saved.%s/%s.%s
d03e8bbc:	252f 2573 0073 6e45 6574 2072 2061 6966     /%s%s.Enter a fi
d03e8bcc:	656c 6e20 6d61 0065 6553 656c 7463 6120     le name.Select a
d03e8bdc:	2e20 7073 2070 7270 6a6f 6365 0074 6553      .spp project.Se
d03e8bec:	656c 7463 6120 2e20 7073 2067 7270 676f     lect a .spg prog
d03e8bfc:	6172 006d 6f4e 6620 6c69 2065 6573 656c     ram.No file sele
d03e8c0c:	7463 6465 5000 6f72 656a 7463 6c20 616f     cted.Project loa
d03e8c1c:	2064 7562 6666 7265 6d20 7369 6973 676e     d buffer missing
d03e8c2c:	5000 6f72 656a 7463 6c20 616f 2064 706f     .Project load op
d03e8c3c:	6e65 6620 6961 656c 0064 6142 2064 7270     en failed.Bad pr
d03e8c4c:	6a6f 6365 2074 6966 656c 5000 6f72 656a     oject file.Proje
d03e8c5c:	7463 6c20 616f 6564 0064 6553 656c 7463     ct loaded.Select
d03e8c6c:	6120 5620 204d 7270 676f 6172 206d 6966      a VM program fi
d03e8c7c:	7372 0074 7250 676f 6172 206d 6f6c 6461     rst.Program load
d03e8c8c:	6220 6675 6566 2072 696d 7373 6e69 0067      buffer missing.
d03e8c9c:	7250 676f 6172 206d 6f6c 6461 6f20 6570     Program load ope
d03e8cac:	206e 6166 6c69 6465 4200 6461 7020 6f72     n failed.Bad pro
d03e8cbc:	7267 6d61 6620 6c69 0065 7250 676f 6172     gram file.Progra
d03e8ccc:	206d 6f6c 6461 6465 6920 746e 206f 4d56     m loaded into VM
d03e8cdc:	5200 6365 726f 6964 676e 4300 756f 746e     .Recording.Count
d03e8cec:	6920 206e 0034 6146 6c6c 6162 6b63 5000      in 4.Fallback.P
d03e8cfc:	5245 4f46 4d52 4e41 4543 5300 4c45 4345     ERFORMANCE.SELEC
d03e8d0c:	4554 2044 4843 4e41 454e 004c 4843 3025     TED CHANNEL.CH%0
d03e8d1c:	7532 5020 3025 7533 2520 312e 7338 2d00     2u P%03u %.18s.-
d03e8d2c:	0050 502b 2d00 0047 472b 5200 4345 4e45     P.+P.-G.+G.RECEN
d03e8d3c:	2054 4f52 5455 4e49 0047 4843 3025 7532     T ROUTING.CH%02u
d03e8d4c:	5020 3025 7533 2520 312d 2e30 3031 0073      P%03u %-10.10s.
d03e8d5c:	5250 4a4f 4345 0054 6153 6576 6c2f 616f     PROJECT.Save/loa
d03e8d6c:	2064 6f68 6b6f 2073 6572 6461 2e79 5000     d hooks ready..P
d03e8d7c:	7461 6863 6220 6e61 736b 6c20 7461 7265     atch banks later
d03e8d8c:	002e 7542 7474 6e6f 2073 7261 2065 6c63     ..Buttons are cl
d03e8d9c:	6369 616b 6c62 2e65 4500 414e 4c42 4445     ickable..ENABLED
d03e8dac:	4d00 5455 4445 4d00 5455 0045 4e45 4241     .MUTED.MUTE.ENAB
d03e8dbc:	454c 5600 204d 4152 204d 4445 5449 524f     LE.VM RAM EDITOR
d03e8dcc:	5600 204d 4f43 4544 5620 4549 4557 0052     .VM CODE VIEWER.
d03e8ddc:	3f3f 003f 4956 5745 4500 4944 0054 4150     ???.VIEW.EDIT.PA
d03e8dec:	0052 504f 0043 4156 004c 4f43 4e55 0054     R.OPC.VAL.COUNT.
d03e8dfc:	4552 0043 5241 004d 5453 504f 5000 414c     REC.ARM.STOP.PLA
d03e8e0c:	0059 464f 0046 4e53 5041 4600 4552 0045     Y.OFF.SNAP.FREE.
d03e8e1c:	4552 5453 524f 0045 4c43 4145 0052 005f     RESTORE.CLEAR._.
d03e8e2c:	4953 4244 584f 4d20 4449 2049 4953 2044     SIDBOX MIDI SID 
d03e8e3c:	3056 392e 4c00 5649 2045 5953 544e 2048     V0.9.LIVE SYNTH 
d03e8e4c:	4f43 544e 4f52 004c 4843 4e41 454e 204c     CONTROL.CHANNEL 
d03e8e5c:	5341 4953 4e47 454d 544e 0053 2d31 0034     ASSIGNMENTS.1-4.
d03e8e6c:	2d35 0038 2d39 3231 3100 2d33 3631 4300     5-8.9-12.13-16.C
d03e8e7c:	2048 2020 5250 2047 2020 5250 474f 4e20     H   PRG   PROG N
d03e8e8c:	4d41 0045 3025 7532 2020 2520 3330 2075     AME.%02u   %03u 
d03e8e9c:	2020 2d25 3532 322e 7335 2d00 2b00 4700       %-25.25s.-.+.G
d03e8eac:	4f4c 4142 204c 554f 5054 5455 4720 4941     LOBAL OUTPUT GAI
d03e8ebc:	004e 4553 454c 5443 4445 4320 4148 4e4e     N.SELECTED CHANN
d03e8ecc:	4c45 5620 4c4f 4d55 0045 4843 3025 7532     EL VOLUME.CH%02u
d03e8edc:	2020 3025 7533 5300 4c45 4345 4554 2044       %03u.SELECTED 
d03e8eec:	4843 4e41 454e 204c 5845 5250 5345 4953     CHANNEL EXPRESSI
d03e8efc:	4e4f 4500 5058 2520 3330 0075 494d 4944     ON.EXP %03u.MIDI
d03e8f0c:	4320 3743 432f 3143 2031 7473 6c69 206c      CC7/CC11 still 
d03e8f1c:	7075 6164 6574 7720 6968 656c 7020 616c     update while pla
d03e8f2c:	6979 676e 002e 4550 4352 5355 4953 4e4f     ying..PERCUSSION
d03e8f3c:	5320 5445 4954 474e 0053 4d47 6320 6168      SETTINGS.GM cha
d03e8f4c:	6e6e 6c65 3120 2030 6f72 7475 6465 7420     nnel 10 routed t
d03e8f5c:	206f 4953 2044 7264 6d75 7020 6f72 7267     o SID drum progr
d03e8f6c:	6d61 0073 5453 5441 3a45 2520 0073 5244     ams.STATE: %s.DR
d03e8f7c:	4d55 4720 4941 204e 7525 2525 4d00 7061     UM GAIN %u%%.Map
d03e8f8c:	6570 3a64 6b20 6369 2c6b 7320 616e 6572     ped: kick, snare
d03e8f9c:	202c 6168 7374 202c 6f74 736d 002e 7546     , hats, toms..Fu
d03e8fac:	7574 6572 203a 6570 2d72 6f6e 6574 6b20     ture: per-note k
d03e8fbc:	7469 6220 6f72 7377 7265 002e 4843 3031     it browser..CH10
d03e8fcc:	6920 6e67 726f 7365 7020 6f72 7267 6d61      ignores program
d03e8fdc:	6320 6168 676e 7365 002e 4843 3025 7532      changes..CH%02u
d03e8fec:	5020 3025 7533 2520 322e 7334 4700 204d      P%03u %.24s.GM 
d03e8ffc:	7264 6d75 2073 7375 2065 6570 6372 7375     drums use percus
d03e900c:	6973 6e6f 7220 756f 6574 2e72 4e00 206f     sion router..No 
d03e901c:	4d56 7020 6f72 7267 6d61 6120 7373 6769     VM program assig
d03e902c:	656e 2e64 4900 5844 4f20 4350 444f 2045     ned..IDX OPCODE 
d03e903c:	2020 2050 5620 4c41 4555 5500 0050 3025       P  VALUE.UP.%0
d03e904c:	7532 2020 2d25 7338 2520 3230 2058 3025     2u  %-8s %02X %0
d03e905c:	5834 4400 004e 4946 4c45 0044 4f52 2557     4X.DN.FIELD.ROW%
d03e906c:	3230 2075 7325 4800 0049 312b 0036 4f4c     02u %s.HI.+16.LO
d03e907c:	2500 3230 2f75 3025 7532 4200 4d50 2520     .%02u/%02u.BPM %
d03e908c:	3330 2075 2520 2073 7525 2020 4e53 5041     03u  %s %u  SNAP
d03e909c:	2520 2073 2f31 7525 2020 554f 2054 7325      %s 1/%u  OUT %s
d03e90ac:	2020 4f4e 4554 2053 7525 4200 4d50 2520       NOTES %u.BPM %
d03e90bc:	3330 2075 2520 2073 5320 414e 2050 7325     03u  %s  SNAP %s
d03e90cc:	3120 252f 2075 4f20 5455 2520 2073 4e20      1/%u  OUT %s  N
d03e90dc:	544f 5345 2520 0075 5752 4600 4f52 004d     OTES %u.RW.FROM.
d03e90ec:	4c43 0052 494d 4944 3c00 3e00 5000 4e41     CLR.MIDI.<.>.PAN
d03e90fc:	4349 5300 5641 0045 4f4c 4441 4300 4e4f     IC.SAVE.LOAD.CON
d03e910c:	4946 4d52 4120 5443 4f49 004e 6552 7473     FIRM ACTION.Rest
d03e911c:	726f 2065 6573 656c 7463 6465 5620 204d     ore selected VM 
d03e912c:	7270 676f 6172 006d 7266 6d6f 6920 7374     program.from its
d03e913c:	7020 6572 6573 2074 6564 6166 6c75 3f74      preset default?
d03e914c:	4300 656c 7261 6120 6c6c 7320 7165 6575     .Clear all seque
d03e915c:	636e 7265 6e20 746f 7365 6100 646e 7220     ncer notes.and r
d03e916c:	7765 6e69 2064 6f74 7420 6568 7320 6174     ewind to the sta
d03e917c:	7472 003f 4143 434e 4c45 4c00 414f 2044     rt?.CANCEL.LOAD 
d03e918c:	5953 544e 2048 5250 474f 4152 004d 6f4e     SYNTH PROGRAM.No
d03e919c:	2e20 7073 2f70 732e 6770 6620 6c69 7365      .spp/.spg files
d03e91ac:	6620 756f 646e 002e 4f4c 4441 5020 4f52      found..LOAD PRO
d03e91bc:	004a 4f4c 4441 5020 4752 5300 5641 2045     J.LOAD PRG.SAVE 
d03e91cc:	5953 544e 2048 5250 474f 4152 004d 4153     SYNTH PROGRAM.SA
d03e91dc:	4556 4120 4c4c 5300 5641 2045 5250 0047     VE ALL.SAVE PRG.
d03e91ec:	564f 5245 5257 5449 2045 4946 454c 003f     OVERWRITE FILE?.
d03e91fc:	6854 7369 6e20 6d61 2065 6c61 6572 6461     This name alread
d03e920c:	2079 7865 7369 7374 003a 4559 0053 4f4e     y exists:.YES.NO
d03e921c:	4f00 6576 6472 6275 6f20 6666 5200 6365     .Overdub off.Rec
d03e922c:	726f 2064 666f 0066 6552 6f63 6472 6120     ord off.Record a
d03e923c:	6d72 6465 5200 6365 726f 2064 6964 6173     rmed.Record disa
d03e924c:	6d72 6465 5200 6769 7468 6320 696c 6b63     rmed.Right click
d03e925c:	7020 6e61 6369 4100 7463 6f69 206e 6163      panic.Action ca
d03e926c:	636e 6c65 656c 0064 6150 696e 3a63 6120     ncelled.Panic: a
d03e927c:	6c6c 6e20 746f 7365 6b20 6c69 656c 0064     ll notes killed.
d03e928c:	4d56 6520 6964 2074 6976 7765 6320 6f6c     VM edit view clo
d03e929c:	6573 0064 6550 6372 7375 6973 6e6f 7220     sed.Percussion r
d03e92ac:	756f 6574 2072 6168 2073 6f6e 5620 204d     outer has no VM 
d03e92bc:	6465 7469 4e00 206f 4d56 7020 6f72 7267     edit.No VM progr
d03e92cc:	6d61 7420 206f 6465 7469 5600 204d 6465     am to edit.VM ed
d03e92dc:	7469 726f 7520 6573 2073 4152 204d 6170     itor uses RAM pa
d03e92ec:	6374 0068 6f4e 5620 204d 6564 6166 6c75     tch.No VM defaul
d03e92fc:	2074 6f74 7220 7365 6f74 6572 5600 204d     t to restore.VM 
d03e930c:	6572 7473 726f 6465 6620 6f72 206d 7270     restored from pr
d03e931c:	7365 7465 5300 7165 6575 636e 7265 6320     eset.Sequencer c
d03e932c:	656c 7261 6465 4c00 616f 2064 6163 636e     leared.Load canc
d03e933c:	6c65 656c 0064 6153 6576 6320 6e61 6563     elled.Save cance
d03e934c:	6c6c 6465 4f00 6576 7772 6972 6574 6320     lled.Overwrite c
d03e935c:	6e61 6563 6c6c 6465 5300 7165 6575 636e     ancelled.Sequenc
d03e936c:	7265 7220 7765 756f 646e 5200 6365 726f     er rewound.Recor
d03e937c:	2064 6163 636e 6c65 656c 0064 6553 7571     d cancelled.Sequ
d03e938c:	6e65 6563 2072 7473 706f 6570 0064 6553     encer stopped.Se
d03e939c:	7571 6e65 6563 2072 6c70 7961 6e69 0067     quencer playing.
d03e93ac:	6c50 7961 6620 6f72 206d 7563 7372 726f     Play from cursor
d03e93bc:	5300 7165 6575 636e 7265 4d20 4449 2049     .Sequencer MIDI 
d03e93cc:	756f 2074 666f 0066 6553 7571 6e65 6563     out off.Sequence
d03e93dc:	2072 494d 4944 6f20 7475 6f20 006e 254e     r MIDI out on.N%
d03e93ec:	3330 2075 4843 3025 7532 2500 756c 252e     03u CH%02u.%lu.%
d03e93fc:	3230 756c 4300 554f 544e 2520 0075 6952     02lu.COUNT %u.Ri
d03e940c:	6867 2074 6c63 6369 206b 6170 696e 2063     ght click panic 
d03e941c:	4c20 522b 6520 6978 7374 2500 2f75 7525      L+R exits.%u/%u
d03e942c:	7620 696f 6563 0073 6170 696e 2063 6c25      voices.panic %l
d03e943c:	2075 7420 6f6d 2520 756c 6700 6961 206e     u  tmo %lu.gain 
d03e944c:	7525 2525 2020 7264 6d75 2073 7525 2525     %u%%  drums %u%%
d03e945c:	5600 4c4f 2520 3330 2075 4520 5058 2520     .VOL %03u  EXP %
d03e946c:	3330 2075 4220 4e45 2044 6425 5000 2543     03u  BEND %d.PC%
d03e947c:	3230 2075 2556 0075 4e45 0044 4157 5449     02u V%u.END.WAIT
d03e948c:	5700 5641 0045 4441 5253 5000 4c55 4553     .WAVE.ADSR.PULSE
d03e949c:	5000 5449 4843 4100 4444 5750 004d 4544     .PITCH.ADDPWM.DE
d03e94ac:	5043 4d57 5000 524f 4154 4100 5052 4600     CPWM.PORTA.ARP.F
d03e94bc:	4c49 4554 0052 4f4c 504f 4a00 4d55 0050     ILTER.LOOP.JUMP.
d03e94cc:	5753 4545 0050 4956 0042 4f48 444c 5400     SWEEP.VIB.HOLD.T
d03e94dc:	4552 004d 4553 5654 5241 4100 4444 4156     REM.SETVAR.ADDVA
d03e94ec:	0052 4857 4f4e 4554 5700 4748 0054 4f4c     R.WHNOTE.WHGT.LO
d03e94fc:	504f 4b42 4800 4d4f 0045 4843 4e41 454e     OPBK.HOME.CHANNE
d03e950c:	534c 4d00 5849 5245 5000 5245 0043 4553     LS.MIXER.PERC.SE
d03e951c:	0051 6341 756f 7473 6369 5020 6169 6f6e     Q.Acoustic Piano
d03e952c:	4200 6972 6867 2074 654b 0079 6f48 6b6e     .Bright Key.Honk
d03e953c:	2d79 6f74 6b6e 4500 656c 7463 6972 2063     y-tonk.Electric 
d03e954c:	654b 0079 6c43 7661 5020 756c 6b63 5300     Key.Clav Pluck.S
d03e955c:	4449 4220 6c65 006c 7244 7761 6162 2072     ID Bell.Drawbar 
d03e956c:	724f 6167 006e 6843 7275 6863 4f20 6772     Organ.Church Org
d03e957c:	6e61 5200 6565 2064 724f 6167 006e 4953     an.Reed Organ.SI
d03e958c:	2044 7547 7469 7261 4d00 7475 6465 4720     D Guitar.Muted G
d03e959c:	6975 6174 0072 764f 7265 7264 7669 2065     uitar.Overdrive 
d03e95ac:	7447 0072 6944 7473 4720 6975 6174 0072     Gtr.Dist Guitar.
d03e95bc:	754d 6574 2064 6f4e 7369 0065 6341 756f     Muted Noise.Acou
d03e95cc:	7473 6369 4220 7361 0073 4953 2044 6142     stic Bass.SID Ba
d03e95dc:	7373 5300 6e79 6874 4220 7361 2073 0031     ss.Synth Bass 1.
d03e95ec:	6c53 7061 4220 7361 0073 4953 2044 7453     Slap Bass.SID St
d03e95fc:	6972 676e 0073 6950 7a7a 6369 7461 006f     rings.Pizzicato.
d03e960c:	4953 2044 6e45 6573 626d 656c 5300 4449     SID Ensemble.SID
d03e961c:	4220 6172 7373 5300 6e79 6874 4220 6172      Brass.Synth Bra
d03e962c:	7373 5300 4449 5220 6565 0064 4953 2044     ss.SID Reed.SID 
d03e963c:	6c46 7475 0065 654c 6461 5320 7571 7261     Flute.Lead Squar
d03e964c:	0065 5750 204d 654c 6461 4600 7361 2074     e.PWM Lead.Fast 
d03e965c:	7241 2070 654c 6461 4800 2057 7241 2070     Arp Lead.HW Arp 
d03e966c:	654c 6461 4300 6968 6666 4c20 6165 0064     Lead.Chiff Lead.
d03e967c:	6843 7261 6e61 2067 654c 6461 5000 4d57     Charang Lead.PWM
d03e968c:	5320 6577 7065 4200 7361 2b73 654c 6461      Sweep.Bass+Lead
d03e969c:	5700 7261 206d 6150 0064 7753 6565 2070     .Warm Pad.Sweep 
d03e96ac:	6150 0064 4953 2044 5846 5300 4449 5020     Pad.SID FX.SID P
d03e96bc:	756c 6b63 5300 6e79 6874 4420 7572 006d     luck.Synth Drum.
d03e96cc:	6f4e 7369 2065 5846 5600 204d 6f4c 706f     Noise FX.VM Loop
d03e96dc:	4420 6d65 006f 7547 736e 6f68 2074 5846      Demo.Gunshot FX
d03e96ec:	4700 204d 7244 6d75 0073 2650 5153 1300     .GM Drums.P&SQ..
d03e96fc:	521e 8004 2650 5153 7f00 0000               .R..P&SQ....

d03e9708 <CSWTCH.1091>:
d03e9708:	951e d03e 952d d03e 952d d03e 952d d03e     ..>.-.>.-.>.-.>.
d03e9718:	9538 d03e 9543 d03e 9543 d03e 9550 d03e     8.>.C.>.C.>.P.>.
d03e9728:	9550 d03e 955b d03e 955b d03e 955b d03e     P.>.[.>.[.>.[.>.
d03e9738:	955b d03e 955b d03e 955b d03e 955b d03e     [.>.[.>.[.>.[.>.
d03e9748:	9564 d03e 9564 d03e 9564 d03e 9572 d03e     d.>.d.>.d.>.r.>.
d03e9758:	957f d03e 957f d03e 957f d03e 957f d03e     ..>...>...>...>.
d03e9768:	958a d03e 958a d03e 958a d03e 958a d03e     ..>...>...>...>.
d03e9778:	9595 d03e 95a2 d03e 95b0 d03e 95bc d03e     ..>...>...>...>.
d03e9788:	95c8 d03e 95d6 d03e 95d6 d03e 95d6 d03e     ..>...>...>...>.
d03e9798:	95d6 d03e 95d6 d03e 95df d03e 95ec d03e     ..>...>...>...>.
d03e97a8:	95f6 d03e 95f6 d03e 95f6 d03e 95f6 d03e     ..>...>...>...>.
d03e97b8:	95f6 d03e 95f6 d03e 9602 d03e 960c d03e     ..>...>...>...>.
d03e97c8:	960c d03e 960c d03e 960c d03e 960c d03e     ..>...>...>...>.
d03e97d8:	960c d03e 960c d03e 960c d03e 960c d03e     ..>...>...>...>.
d03e97e8:	9619 d03e 9619 d03e 9619 d03e 9619 d03e     ..>...>...>...>.
d03e97f8:	9619 d03e 9619 d03e 9623 d03e 9623 d03e     ..>...>.#.>.#.>.
d03e9808:	962f d03e 962f d03e 962f d03e 962f d03e     /.>./.>./.>./.>.
d03e9818:	962f d03e 962f d03e 962f d03e 962f d03e     /.>./.>./.>./.>.
d03e9828:	9638 d03e 9638 d03e 9638 d03e 9638 d03e     8.>.8.>.8.>.8.>.
d03e9838:	9638 d03e 9638 d03e 9638 d03e 9638 d03e     8.>.8.>.8.>.8.>.
d03e9848:	9642 d03e 964e d03e 9657 d03e 9665 d03e     B.>.N.>.W.>.e.>.
d03e9858:	9671 d03e 967c d03e 9689 d03e 9693 d03e     q.>.|.>...>...>.
d03e9868:	969d d03e 969d d03e 969d d03e 969d d03e     ..>...>...>...>.
d03e9878:	969d d03e 969d d03e 969d d03e 96a6 d03e     ..>...>...>...>.
d03e9888:	96b0 d03e 96b0 d03e 96b0 d03e 96b0 d03e     ..>...>...>...>.
d03e9898:	96b0 d03e 96b0 d03e 96b0 d03e 96b0 d03e     ..>...>...>...>.
d03e98a8:	96b7 d03e 96b7 d03e 96b7 d03e 96b7 d03e     ..>...>...>...>.
d03e98b8:	96b7 d03e 96b7 d03e 96b7 d03e 96b7 d03e     ..>...>...>...>.
d03e98c8:	955b d03e 955b d03e 955b d03e 955b d03e     [.>.[.>.[.>.[.>.
d03e98d8:	955b d03e 955b d03e 96c1 d03e 96c1 d03e     [.>.[.>...>...>.
d03e98e8:	96cc d03e 96cc d03e 96cc d03e 96cc d03e     ..>...>...>...>.
d03e98f8:	96cc d03e 96cc d03e 96d5 d03e 96e2 d03e     ..>...>...>...>.
d03e9908:	96ed d03e                                   ..>.

d03e990c <CSWTCH.1106>:
d03e990c:	9501 d03e 9506 d03e 950f d03e 9515 d03e     ..>...>...>...>.
d03e991c:	8cda d03e 951a d03e                         ..>...>.

d03e9924 <CSWTCH.1108>:
d03e9924:	9484 d03e 9488 d03e 948d d03e 9492 d03e     ..>...>...>...>.
d03e9934:	9497 d03e 949d d03e 94a3 d03e 94aa d03e     ..>...>...>...>.
d03e9944:	94b1 d03e 94b7 d03e 94bb d03e 94c2 d03e     ..>...>...>...>.
d03e9954:	94c7 d03e 94cc d03e 94d2 d03e 94d6 d03e     ..>...>...>...>.
d03e9964:	94db d03e 94e0 d03e 94e7 d03e 94ee d03e     ..>...>...>...>.
d03e9974:	94f5 d03e 94fa d03e                         ..>...>.

d03e997c <bands.10238>:
d03e997c:	1110 1312 1314 1112                         ........

d03e9984 <keys.10556>:
d03e9984:	3231 3433 3635 3837 3039 5751 5245 5954     1234567890QWERTY
d03e9994:	4955 504f 5341 4644 4847 4b4a 2d4c 585a     UIOPASDFGHJKL-ZX
d03e99a4:	5643 4e42 5f4d 002e                         CVBNM_..

d03e99ac <rows.10766>:
d03e99ac:	3231 3433 3635 3837 3039 5100 4557 5452     1234567890.QWERT
d03e99bc:	5559 4f49 0050 5341 4644 4847 4b4a 2d4c     YUIOP.ASDFGHJKL-
d03e99cc:	5a00 4358 4256 4d4e 2e5f 0000               .ZXCVBNM_...

d03e99d8 <snaps.9870>:
d03e99d8:	0804 2010                                   ... 

d03e99dc <_global_impure_ptr>:
d03e99dc:	a080 d03e                                   ..>.

d03e99e0 <__sf_fake_stderr>:
	...

d03e9a00 <__sf_fake_stdin>:
	...

d03e9a20 <__sf_fake_stdout>:
	...
d03e9a40:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d03e9a50:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d03e9a60:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d03e9a70:	6665                                         ef.

Disassembly of section .init:

d03e9a74 <_init>:
d03e9a74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e9a76:	bf00      	nop

Disassembly of section .fini:

d03e9a78 <_fini>:
d03e9a78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e9a7a:	bf00      	nop

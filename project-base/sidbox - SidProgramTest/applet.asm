
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d03c0010 <applet_entry>:
d03c0010:	b570      	push	{r4, r5, r6, lr}
d03c0012:	4e09      	ldr	r6, [pc, #36]	; (d03c0038 <applet_entry+0x28>)
d03c0014:	460d      	mov	r5, r1
d03c0016:	4604      	mov	r4, r0
d03c0018:	2100      	movs	r1, #0
d03c001a:	6833      	ldr	r3, [r6, #0]
d03c001c:	6898      	ldr	r0, [r3, #8]
d03c001e:	f009 ff03 	bl	d03c9e28 <setbuf>
d03c0022:	6833      	ldr	r3, [r6, #0]
d03c0024:	2100      	movs	r1, #0
d03c0026:	68d8      	ldr	r0, [r3, #12]
d03c0028:	f009 fefe 	bl	d03c9e28 <setbuf>
d03c002c:	4629      	mov	r1, r5
d03c002e:	4620      	mov	r0, r4
d03c0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03c0034:	f006 bf6a 	b.w	d03c6f0c <main>
d03c0038:	d03ccc70 	.word	0xd03ccc70

d03c003c <initMalloc>:
d03c003c:	4902      	ldr	r1, [pc, #8]	; (d03c0048 <initMalloc+0xc>)
d03c003e:	4b03      	ldr	r3, [pc, #12]	; (d03c004c <initMalloc+0x10>)
d03c0040:	4a03      	ldr	r2, [pc, #12]	; (d03c0050 <initMalloc+0x14>)
d03c0042:	1a5b      	subs	r3, r3, r1
d03c0044:	6013      	str	r3, [r2, #0]
d03c0046:	4770      	bx	lr
d03c0048:	d03d1730 	.word	0xd03d1730
d03c004c:	d0600000 	.word	0xd0600000
d03c0050:	d03cf59c 	.word	0xd03cf59c

d03c0054 <_write_r>:
d03c0054:	3901      	subs	r1, #1
d03c0056:	2901      	cmp	r1, #1
d03c0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c005a:	d81f      	bhi.n	d03c009c <_write_r+0x48>
d03c005c:	b1e2      	cbz	r2, d03c0098 <_write_r+0x44>
d03c005e:	461c      	mov	r4, r3
d03c0060:	b1d3      	cbz	r3, d03c0098 <_write_r+0x44>
d03c0062:	4d12      	ldr	r5, [pc, #72]	; (d03c00ac <_write_r+0x58>)
d03c0064:	682e      	ldr	r6, [r5, #0]
d03c0066:	b9ae      	cbnz	r6, d03c0094 <_write_r+0x40>
d03c0068:	4f11      	ldr	r7, [pc, #68]	; (d03c00b0 <_write_r+0x5c>)
d03c006a:	2301      	movs	r3, #1
d03c006c:	4611      	mov	r1, r2
d03c006e:	4630      	mov	r0, r6
d03c0070:	602b      	str	r3, [r5, #0]
d03c0072:	4622      	mov	r2, r4
d03c0074:	7a3b      	ldrb	r3, [r7, #8]
d03c0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d03c007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03c007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03c0082:	7aff      	ldrb	r7, [r7, #11]
d03c0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03c0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03c008c:	681b      	ldr	r3, [r3, #0]
d03c008e:	685b      	ldr	r3, [r3, #4]
d03c0090:	4798      	blx	r3
d03c0092:	602e      	str	r6, [r5, #0]
d03c0094:	4620      	mov	r0, r4
d03c0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c0098:	2000      	movs	r0, #0
d03c009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c009c:	f009 fc56 	bl	d03c994c <__errno>
d03c00a0:	2209      	movs	r2, #9
d03c00a2:	4603      	mov	r3, r0
d03c00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00a8:	601a      	str	r2, [r3, #0]
d03c00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c00ac:	d03ccce4 	.word	0xd03ccce4
d03c00b0:	2001f000 	.word	0x2001f000

d03c00b4 <_read>:
d03c00b4:	b508      	push	{r3, lr}
d03c00b6:	f009 fc49 	bl	d03c994c <__errno>
d03c00ba:	2258      	movs	r2, #88	; 0x58
d03c00bc:	4603      	mov	r3, r0
d03c00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00c2:	601a      	str	r2, [r3, #0]
d03c00c4:	bd08      	pop	{r3, pc}
d03c00c6:	bf00      	nop

d03c00c8 <_close>:
d03c00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c00cc:	4770      	bx	lr
d03c00ce:	bf00      	nop

d03c00d0 <_fstat>:
d03c00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03c00d4:	2000      	movs	r0, #0
d03c00d6:	604b      	str	r3, [r1, #4]
d03c00d8:	4770      	bx	lr
d03c00da:	bf00      	nop

d03c00dc <_lseek>:
d03c00dc:	2000      	movs	r0, #0
d03c00de:	4770      	bx	lr

d03c00e0 <_sbrk_r>:
d03c00e0:	4b0c      	ldr	r3, [pc, #48]	; (d03c0114 <_sbrk_r+0x34>)
d03c00e2:	4a0d      	ldr	r2, [pc, #52]	; (d03c0118 <_sbrk_r+0x38>)
d03c00e4:	6818      	ldr	r0, [r3, #0]
d03c00e6:	b510      	push	{r4, lr}
d03c00e8:	b918      	cbnz	r0, d03c00f2 <_sbrk_r+0x12>
d03c00ea:	1dd0      	adds	r0, r2, #7
d03c00ec:	f020 0007 	bic.w	r0, r0, #7
d03c00f0:	6018      	str	r0, [r3, #0]
d03c00f2:	4401      	add	r1, r0
d03c00f4:	4c09      	ldr	r4, [pc, #36]	; (d03c011c <_sbrk_r+0x3c>)
d03c00f6:	42a1      	cmp	r1, r4
d03c00f8:	d803      	bhi.n	d03c0102 <_sbrk_r+0x22>
d03c00fa:	4291      	cmp	r1, r2
d03c00fc:	d301      	bcc.n	d03c0102 <_sbrk_r+0x22>
d03c00fe:	6019      	str	r1, [r3, #0]
d03c0100:	bd10      	pop	{r4, pc}
d03c0102:	f009 fc23 	bl	d03c994c <__errno>
d03c0106:	220c      	movs	r2, #12
d03c0108:	4603      	mov	r3, r0
d03c010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c010e:	601a      	str	r2, [r3, #0]
d03c0110:	bd10      	pop	{r4, pc}
d03c0112:	bf00      	nop
d03c0114:	d03ccce0 	.word	0xd03ccce0
d03c0118:	d03d1730 	.word	0xd03d1730
d03c011c:	d0600000 	.word	0xd0600000

d03c0120 <sid_midi_trigger_percussion>:
d03c0120:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03c0124:	4606      	mov	r6, r0
d03c0126:	460c      	mov	r4, r1
d03c0128:	4615      	mov	r5, r2
d03c012a:	2a00      	cmp	r2, #0
d03c012c:	d05f      	beq.n	d03c01ee <sid_midi_trigger_percussion+0xce>
d03c012e:	f10d 0207 	add.w	r2, sp, #7
d03c0132:	f10d 0106 	add.w	r1, sp, #6
d03c0136:	f000 f92f 	bl	d03c0398 <get_voice_target>
d03c013a:	f1a4 0123 	sub.w	r1, r4, #35	; 0x23
d03c013e:	4c2d      	ldr	r4, [pc, #180]	; (d03c01f4 <sid_midi_trigger_percussion+0xd4>)
d03c0140:	b2c9      	uxtb	r1, r1
d03c0142:	4a2d      	ldr	r2, [pc, #180]	; (d03c01f8 <sid_midi_trigger_percussion+0xd8>)
d03c0144:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03c0148:	290f      	cmp	r1, #15
d03c014a:	f8b2 801c 	ldrh.w	r8, [r2, #28]
d03c014e:	7f12      	ldrb	r2, [r2, #28]
d03c0150:	bf96      	itet	ls
d03c0152:	4b2a      	ldrls	r3, [pc, #168]	; (d03c01fc <sid_midi_trigger_percussion+0xdc>)
d03c0154:	4f2a      	ldrhi	r7, [pc, #168]	; (d03c0200 <sid_midi_trigger_percussion+0xe0>)
d03c0156:	f853 7021 	ldrls.w	r7, [r3, r1, lsl #2]
d03c015a:	7d23      	ldrb	r3, [r4, #20]
d03c015c:	7d61      	ldrb	r1, [r4, #21]
d03c015e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c0162:	7da1      	ldrb	r1, [r4, #22]
d03c0164:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c0168:	7de1      	ldrb	r1, [r4, #23]
d03c016a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03c016e:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03c0172:	681b      	ldr	r3, [r3, #0]
d03c0174:	69db      	ldr	r3, [r3, #28]
d03c0176:	4798      	blx	r3
d03c0178:	7d23      	ldrb	r3, [r4, #20]
d03c017a:	7d62      	ldrb	r2, [r4, #21]
d03c017c:	f89d 1007 	ldrb.w	r1, [sp, #7]
d03c0180:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0184:	7da2      	ldrb	r2, [r4, #22]
d03c0186:	3101      	adds	r1, #1
d03c0188:	f89d 0006 	ldrb.w	r0, [sp, #6]
d03c018c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0190:	7de2      	ldrb	r2, [r4, #23]
d03c0192:	b2c9      	uxtb	r1, r1
d03c0194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0198:	ea4f 2218 	mov.w	r2, r8, lsr #8
d03c019c:	681b      	ldr	r3, [r3, #0]
d03c019e:	69db      	ldr	r3, [r3, #28]
d03c01a0:	4798      	blx	r3
d03c01a2:	2338      	movs	r3, #56	; 0x38
d03c01a4:	4a17      	ldr	r2, [pc, #92]	; (d03c0204 <sid_midi_trigger_percussion+0xe4>)
d03c01a6:	fb03 f006 	mul.w	r0, r3, r6
d03c01aa:	2300      	movs	r3, #0
d03c01ac:	f102 0408 	add.w	r4, r2, #8
d03c01b0:	f04f 7680 	mov.w	r6, #16777216	; 0x1000000
d03c01b4:	1811      	adds	r1, r2, r0
d03c01b6:	5017      	str	r7, [r2, r0]
d03c01b8:	730d      	strb	r5, [r1, #12]
d03c01ba:	1905      	adds	r5, r0, r4
d03c01bc:	734b      	strb	r3, [r1, #13]
d03c01be:	604f      	str	r7, [r1, #4]
d03c01c0:	80eb      	strh	r3, [r5, #6]
d03c01c2:	2501      	movs	r5, #1
d03c01c4:	740b      	strb	r3, [r1, #16]
d03c01c6:	824d      	strh	r5, [r1, #18]
d03c01c8:	f102 0520 	add.w	r5, r2, #32
d03c01cc:	85cb      	strh	r3, [r1, #46]	; 0x2e
d03c01ce:	5143      	str	r3, [r0, r5]
d03c01d0:	848b      	strh	r3, [r1, #36]	; 0x24
d03c01d2:	f881 3028 	strb.w	r3, [r1, #40]	; 0x28
d03c01d6:	750b      	strb	r3, [r1, #20]
d03c01d8:	82cb      	strh	r3, [r1, #22]
d03c01da:	830b      	strh	r3, [r1, #24]
d03c01dc:	834b      	strh	r3, [r1, #26]
d03c01de:	838b      	strh	r3, [r1, #28]
d03c01e0:	f100 0130 	add.w	r1, r0, #48	; 0x30
d03c01e4:	188d      	adds	r5, r1, r2
d03c01e6:	508e      	str	r6, [r1, r2]
d03c01e8:	606b      	str	r3, [r5, #4]
d03c01ea:	4b07      	ldr	r3, [pc, #28]	; (d03c0208 <sid_midi_trigger_percussion+0xe8>)
d03c01ec:	5103      	str	r3, [r0, r4]
d03c01ee:	b002      	add	sp, #8
d03c01f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c01f4:	2001f000 	.word	0x2001f000
d03c01f8:	d03cb22c 	.word	0xd03cb22c
d03c01fc:	d03caca4 	.word	0xd03caca4
d03c0200:	d03cace4 	.word	0xd03cace4
d03c0204:	d03cf5a0 	.word	0xd03cf5a0
d03c0208:	0e010000 	.word	0x0e010000

d03c020c <sid_write>:
d03c020c:	2801      	cmp	r0, #1
d03c020e:	b430      	push	{r4, r5}
d03c0210:	d805      	bhi.n	d03c021e <sid_write+0x12>
d03c0212:	291f      	cmp	r1, #31
d03c0214:	bf9e      	ittt	ls
d03c0216:	4b09      	ldrls	r3, [pc, #36]	; (d03c023c <sid_write+0x30>)
d03c0218:	eb03 1340 	addls.w	r3, r3, r0, lsl #5
d03c021c:	545a      	strbls	r2, [r3, r1]
d03c021e:	4c08      	ldr	r4, [pc, #32]	; (d03c0240 <sid_write+0x34>)
d03c0220:	7d23      	ldrb	r3, [r4, #20]
d03c0222:	7d65      	ldrb	r5, [r4, #21]
d03c0224:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03c0228:	7da5      	ldrb	r5, [r4, #22]
d03c022a:	7de4      	ldrb	r4, [r4, #23]
d03c022c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03c0230:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03c0234:	681b      	ldr	r3, [r3, #0]
d03c0236:	bc30      	pop	{r4, r5}
d03c0238:	69db      	ldr	r3, [r3, #28]
d03c023a:	4718      	bx	r3
d03c023c:	d03ccce8 	.word	0xd03ccce8
d03c0240:	2001f000 	.word	0x2001f000

d03c0244 <sid_voice_write_scaled_sr>:
d03c0244:	b470      	push	{r4, r5, r6}
d03c0246:	4605      	mov	r5, r0
d03c0248:	4608      	mov	r0, r1
d03c024a:	7b6c      	ldrb	r4, [r5, #13]
d03c024c:	7b2e      	ldrb	r6, [r5, #12]
d03c024e:	f004 010f 	and.w	r1, r4, #15
d03c0252:	0924      	lsrs	r4, r4, #4
d03c0254:	fb14 f406 	smulbb	r4, r4, r6
d03c0258:	343f      	adds	r4, #63	; 0x3f
d03c025a:	f5b4 6ffe 	cmp.w	r4, #2032	; 0x7f0
d03c025e:	d21d      	bcs.n	d03c029c <sid_voice_write_scaled_sr+0x58>
d03c0260:	237f      	movs	r3, #127	; 0x7f
d03c0262:	2c7e      	cmp	r4, #126	; 0x7e
d03c0264:	fbb4 f3f3 	udiv	r3, r4, r3
d03c0268:	b2db      	uxtb	r3, r3
d03c026a:	d802      	bhi.n	d03c0272 <sid_voice_write_scaled_sr+0x2e>
d03c026c:	1e33      	subs	r3, r6, #0
d03c026e:	bf18      	it	ne
d03c0270:	2301      	movne	r3, #1
d03c0272:	f895 4034 	ldrb.w	r4, [r5, #52]	; 0x34
d03c0276:	f003 030f 	and.w	r3, r3, #15
d03c027a:	f895 5037 	ldrb.w	r5, [r5, #55]	; 0x37
d03c027e:	b12d      	cbz	r5, d03c028c <sid_voice_write_scaled_sr+0x48>
d03c0280:	b124      	cbz	r4, d03c028c <sid_voice_write_scaled_sr+0x48>
d03c0282:	429c      	cmp	r4, r3
d03c0284:	bf36      	itet	cc
d03c0286:	1b1b      	subcc	r3, r3, r4
d03c0288:	2300      	movcs	r3, #0
d03c028a:	b2db      	uxtbcc	r3, r3
d03c028c:	ea41 1303 	orr.w	r3, r1, r3, lsl #4
d03c0290:	1d91      	adds	r1, r2, #6
d03c0292:	bc70      	pop	{r4, r5, r6}
d03c0294:	b2da      	uxtb	r2, r3
d03c0296:	b2c9      	uxtb	r1, r1
d03c0298:	f7ff bfb8 	b.w	d03c020c <sid_write>
d03c029c:	230f      	movs	r3, #15
d03c029e:	e7e8      	b.n	d03c0272 <sid_voice_write_scaled_sr+0x2e>

d03c02a0 <sid_voice_apply_note_offset>:
d03c02a0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c02a2:	4606      	mov	r6, r0
d03c02a4:	4608      	mov	r0, r1
d03c02a6:	4615      	mov	r5, r2
d03c02a8:	f9b6 4020 	ldrsh.w	r4, [r6, #32]
d03c02ac:	7af2      	ldrb	r2, [r6, #11]
d03c02ae:	2c00      	cmp	r4, #0
d03c02b0:	f886 3022 	strb.w	r3, [r6, #34]	; 0x22
d03c02b4:	4413      	add	r3, r2
d03c02b6:	bfa9      	itett	ge
d03c02b8:	f44f 31c0 	movge.w	r1, #98304	; 0x18000
d03c02bc:	eb04 0444 	addlt.w	r4, r4, r4, lsl #1
d03c02c0:	4361      	mulge	r1, r4
d03c02c2:	f641 74ff 	movwge	r4, #8191	; 0x1fff
d03c02c6:	bfb4      	ite	lt
d03c02c8:	00a4      	lsllt	r4, r4, #2
d03c02ca:	fbb1 f4f4 	udivge	r4, r1, r4
d03c02ce:	2c00      	cmp	r4, #0
d03c02d0:	4621      	mov	r1, r4
d03c02d2:	bfbc      	itt	lt
d03c02d4:	f504 51ff 	addlt.w	r1, r4, #8160	; 0x1fe0
d03c02d8:	311f      	addlt	r1, #31
d03c02da:	4267      	negs	r7, r4
d03c02dc:	f3c4 040c 	ubfx	r4, r4, #0, #13
d03c02e0:	f3c7 070c 	ubfx	r7, r7, #0, #13
d03c02e4:	ea4f 3161 	mov.w	r1, r1, asr #13
d03c02e8:	bf58      	it	pl
d03c02ea:	427c      	negpl	r4, r7
d03c02ec:	2c00      	cmp	r4, #0
d03c02ee:	bfbc      	itt	lt
d03c02f0:	f101 31ff 	addlt.w	r1, r1, #4294967295	; 0xffffffff
d03c02f4:	f504 5400 	addlt.w	r4, r4, #8192	; 0x2000
d03c02f8:	185b      	adds	r3, r3, r1
d03c02fa:	d423      	bmi.n	d03c0344 <sid_voice_apply_note_offset+0xa4>
d03c02fc:	2b7e      	cmp	r3, #126	; 0x7e
d03c02fe:	dd01      	ble.n	d03c0304 <sid_voice_apply_note_offset+0x64>
d03c0300:	237f      	movs	r3, #127	; 0x7f
d03c0302:	2400      	movs	r4, #0
d03c0304:	4911      	ldr	r1, [pc, #68]	; (d03c034c <sid_voice_apply_note_offset+0xac>)
d03c0306:	2b7f      	cmp	r3, #127	; 0x7f
d03c0308:	9001      	str	r0, [sp, #4]
d03c030a:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
d03c030e:	bf18      	it	ne
d03c0310:	3301      	addne	r3, #1
d03c0312:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
d03c0316:	4629      	mov	r1, r5
d03c0318:	1a9b      	subs	r3, r3, r2
d03c031a:	435c      	muls	r4, r3
d03c031c:	bf44      	itt	mi
d03c031e:	f504 54ff 	addmi.w	r4, r4, #8160	; 0x1fe0
d03c0322:	341f      	addmi	r4, #31
d03c0324:	eb02 3464 	add.w	r4, r2, r4, asr #13
d03c0328:	b2a4      	uxth	r4, r4
d03c032a:	b2e2      	uxtb	r2, r4
d03c032c:	83f4      	strh	r4, [r6, #30]
d03c032e:	f7ff ff6d 	bl	d03c020c <sid_write>
d03c0332:	1c69      	adds	r1, r5, #1
d03c0334:	0a22      	lsrs	r2, r4, #8
d03c0336:	9801      	ldr	r0, [sp, #4]
d03c0338:	b2c9      	uxtb	r1, r1
d03c033a:	b003      	add	sp, #12
d03c033c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03c0340:	f7ff bf64 	b.w	d03c020c <sid_write>
d03c0344:	2400      	movs	r4, #0
d03c0346:	4623      	mov	r3, r4
d03c0348:	e7dc      	b.n	d03c0304 <sid_voice_apply_note_offset+0x64>
d03c034a:	bf00      	nop
d03c034c:	d03cb22c 	.word	0xd03cb22c

d03c0350 <sid_voice_clear_gate>:
d03c0350:	4b05      	ldr	r3, [pc, #20]	; (d03c0368 <sid_voice_clear_gate+0x18>)
d03c0352:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d03c0356:	440b      	add	r3, r1
d03c0358:	3104      	adds	r1, #4
d03c035a:	791a      	ldrb	r2, [r3, #4]
d03c035c:	b2c9      	uxtb	r1, r1
d03c035e:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
d03c0362:	f7ff bf53 	b.w	d03c020c <sid_write>
d03c0366:	bf00      	nop
d03c0368:	d03ccce8 	.word	0xd03ccce8

d03c036c <sid_voice_hard_silence>:
d03c036c:	b538      	push	{r3, r4, r5, lr}
d03c036e:	460c      	mov	r4, r1
d03c0370:	3104      	adds	r1, #4
d03c0372:	2208      	movs	r2, #8
d03c0374:	4605      	mov	r5, r0
d03c0376:	b2c9      	uxtb	r1, r1
d03c0378:	f7ff ff48 	bl	d03c020c <sid_write>
d03c037c:	1d61      	adds	r1, r4, #5
d03c037e:	4628      	mov	r0, r5
d03c0380:	2200      	movs	r2, #0
d03c0382:	b2c9      	uxtb	r1, r1
d03c0384:	f7ff ff42 	bl	d03c020c <sid_write>
d03c0388:	1da1      	adds	r1, r4, #6
d03c038a:	4628      	mov	r0, r5
d03c038c:	2200      	movs	r2, #0
d03c038e:	b2c9      	uxtb	r1, r1
d03c0390:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03c0394:	f7ff bf3a 	b.w	d03c020c <sid_write>

d03c0398 <get_voice_target>:
d03c0398:	2303      	movs	r3, #3
d03c039a:	fbb0 f3f3 	udiv	r3, r0, r3
d03c039e:	700b      	strb	r3, [r1, #0]
d03c03a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c03a4:	1ac0      	subs	r0, r0, r3
d03c03a6:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c03aa:	7010      	strb	r0, [r2, #0]
d03c03ac:	4770      	bx	lr
	...

d03c03b0 <sid_voice_set_program>:
d03c03b0:	2805      	cmp	r0, #5
d03c03b2:	4603      	mov	r3, r0
d03c03b4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c03b6:	d856      	bhi.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03b8:	0608      	lsls	r0, r1, #24
d03c03ba:	d454      	bmi.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03bc:	482c      	ldr	r0, [pc, #176]	; (d03c0470 <sid_voice_set_program+0xc0>)
d03c03be:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
d03c03c2:	2800      	cmp	r0, #0
d03c03c4:	d04f      	beq.n	d03c0466 <sid_voice_set_program+0xb6>
d03c03c6:	2138      	movs	r1, #56	; 0x38
d03c03c8:	4c2a      	ldr	r4, [pc, #168]	; (d03c0474 <sid_voice_set_program+0xc4>)
d03c03ca:	4359      	muls	r1, r3
d03c03cc:	1865      	adds	r5, r4, r1
d03c03ce:	5060      	str	r0, [r4, r1]
d03c03d0:	2100      	movs	r1, #0
d03c03d2:	6068      	str	r0, [r5, #4]
d03c03d4:	72ea      	strb	r2, [r5, #11]
d03c03d6:	7369      	strb	r1, [r5, #13]
d03c03d8:	73a9      	strb	r1, [r5, #14]
d03c03da:	f810 6021 	ldrb.w	r6, [r0, r1, lsl #2]
d03c03de:	2e0f      	cmp	r6, #15
d03c03e0:	d043      	beq.n	d03c046a <sid_voice_set_program+0xba>
d03c03e2:	2e13      	cmp	r6, #19
d03c03e4:	d041      	beq.n	d03c046a <sid_voice_set_program+0xba>
d03c03e6:	b11e      	cbz	r6, d03c03f0 <sid_voice_set_program+0x40>
d03c03e8:	3101      	adds	r1, #1
d03c03ea:	2960      	cmp	r1, #96	; 0x60
d03c03ec:	d1f5      	bne.n	d03c03da <sid_voice_set_program+0x2a>
d03c03ee:	2600      	movs	r6, #0
d03c03f0:	2038      	movs	r0, #56	; 0x38
d03c03f2:	2100      	movs	r1, #0
d03c03f4:	f44f 3780 	mov.w	r7, #65536	; 0x10000
d03c03f8:	f012 0f80 	tst.w	r2, #128	; 0x80
d03c03fc:	fb00 f003 	mul.w	r0, r0, r3
d03c0400:	bf18      	it	ne
d03c0402:	227f      	movne	r2, #127	; 0x7f
d03c0404:	1825      	adds	r5, r4, r0
d03c0406:	73ee      	strb	r6, [r5, #15]
d03c0408:	4e1b      	ldr	r6, [pc, #108]	; (d03c0478 <sid_voice_set_program+0xc8>)
d03c040a:	8129      	strh	r1, [r5, #8]
d03c040c:	5187      	str	r7, [r0, r6]
d03c040e:	3610      	adds	r6, #16
d03c0410:	7529      	strb	r1, [r5, #20]
d03c0412:	f04f 7780 	mov.w	r7, #16777216	; 0x1000000
d03c0416:	82e9      	strh	r1, [r5, #22]
d03c0418:	8329      	strh	r1, [r5, #24]
d03c041a:	8369      	strh	r1, [r5, #26]
d03c041c:	83a9      	strh	r1, [r5, #28]
d03c041e:	5181      	str	r1, [r0, r6]
d03c0420:	3030      	adds	r0, #48	; 0x30
d03c0422:	84a9      	strh	r1, [r5, #36]	; 0x24
d03c0424:	1826      	adds	r6, r4, r0
d03c0426:	85e9      	strh	r1, [r5, #46]	; 0x2e
d03c0428:	f885 1028 	strb.w	r1, [r5, #40]	; 0x28
d03c042c:	5027      	str	r7, [r4, r0]
d03c042e:	2403      	movs	r4, #3
d03c0430:	6071      	str	r1, [r6, #4]
d03c0432:	fbb3 f4f4 	udiv	r4, r3, r4
d03c0436:	b2e0      	uxtb	r0, r4
d03c0438:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d03c043c:	9001      	str	r0, [sp, #4]
d03c043e:	1b1b      	subs	r3, r3, r4
d03c0440:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d03c0444:	b2dc      	uxtb	r4, r3
d03c0446:	4b0d      	ldr	r3, [pc, #52]	; (d03c047c <sid_voice_set_program+0xcc>)
d03c0448:	f833 6012 	ldrh.w	r6, [r3, r2, lsl #1]
d03c044c:	4621      	mov	r1, r4
d03c044e:	b2f2      	uxtb	r2, r6
d03c0450:	83ee      	strh	r6, [r5, #30]
d03c0452:	f7ff fedb 	bl	d03c020c <sid_write>
d03c0456:	1c61      	adds	r1, r4, #1
d03c0458:	0a32      	lsrs	r2, r6, #8
d03c045a:	9801      	ldr	r0, [sp, #4]
d03c045c:	b2c9      	uxtb	r1, r1
d03c045e:	f7ff fed5 	bl	d03c020c <sid_write>
d03c0462:	2301      	movs	r3, #1
d03c0464:	72ab      	strb	r3, [r5, #10]
d03c0466:	b003      	add	sp, #12
d03c0468:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c046a:	2601      	movs	r6, #1
d03c046c:	e7c0      	b.n	d03c03f0 <sid_voice_set_program+0x40>
d03c046e:	bf00      	nop
d03c0470:	d03cc670 	.word	0xd03cc670
d03c0474:	d03cf5a0 	.word	0xd03cf5a0
d03c0478:	d03cf5b0 	.word	0xd03cf5b0
d03c047c:	d03cb22c 	.word	0xd03cb22c

d03c0480 <sid_voice_note_off>:
d03c0480:	2805      	cmp	r0, #5
d03c0482:	4601      	mov	r1, r0
d03c0484:	b570      	push	{r4, r5, r6, lr}
d03c0486:	d81f      	bhi.n	d03c04c8 <sid_voice_note_off+0x48>
d03c0488:	4b17      	ldr	r3, [pc, #92]	; (d03c04e8 <sid_voice_note_off+0x68>)
d03c048a:	2438      	movs	r4, #56	; 0x38
d03c048c:	fb04 3400 	mla	r4, r4, r0, r3
d03c0490:	7aa3      	ldrb	r3, [r4, #10]
d03c0492:	b1cb      	cbz	r3, d03c04c8 <sid_voice_note_off+0x48>
d03c0494:	2303      	movs	r3, #3
d03c0496:	7be5      	ldrb	r5, [r4, #15]
d03c0498:	2601      	movs	r6, #1
d03c049a:	fbb0 f3f3 	udiv	r3, r0, r3
d03c049e:	b2d8      	uxtb	r0, r3
d03c04a0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c04a4:	1ac9      	subs	r1, r1, r3
d03c04a6:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03c04aa:	b2c9      	uxtb	r1, r1
d03c04ac:	b16d      	cbz	r5, d03c04ca <sid_voice_note_off+0x4a>
d03c04ae:	f7ff ff4f 	bl	d03c0350 <sid_voice_clear_gate>
d03c04b2:	2300      	movs	r3, #0
d03c04b4:	73a6      	strb	r6, [r4, #14]
d03c04b6:	8123      	strh	r3, [r4, #8]
d03c04b8:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03c04ba:	84a3      	strh	r3, [r4, #36]	; 0x24
d03c04bc:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c04c0:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c04c4:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c04c8:	bd70      	pop	{r4, r5, r6, pc}
d03c04ca:	f7ff ff41 	bl	d03c0350 <sid_voice_clear_gate>
d03c04ce:	8a63      	ldrh	r3, [r4, #18]
d03c04d0:	73a6      	strb	r6, [r4, #14]
d03c04d2:	7426      	strb	r6, [r4, #16]
d03c04d4:	8123      	strh	r3, [r4, #8]
d03c04d6:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03c04d8:	84a5      	strh	r5, [r4, #36]	; 0x24
d03c04da:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03c04de:	f884 5030 	strb.w	r5, [r4, #48]	; 0x30
d03c04e2:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
d03c04e6:	e7ef      	b.n	d03c04c8 <sid_voice_note_off+0x48>
d03c04e8:	d03cf5a0 	.word	0xd03cf5a0

d03c04ec <sid_voice_note_on>:
d03c04ec:	2805      	cmp	r0, #5
d03c04ee:	b4f0      	push	{r4, r5, r6, r7}
d03c04f0:	4604      	mov	r4, r0
d03c04f2:	4616      	mov	r6, r2
d03c04f4:	d804      	bhi.n	d03c0500 <sid_voice_note_on+0x14>
d03c04f6:	b93b      	cbnz	r3, d03c0508 <sid_voice_note_on+0x1c>
d03c04f8:	4620      	mov	r0, r4
d03c04fa:	bcf0      	pop	{r4, r5, r6, r7}
d03c04fc:	f7ff bfc0 	b.w	d03c0480 <sid_voice_note_off>
d03c0500:	2b00      	cmp	r3, #0
d03c0502:	d0f9      	beq.n	d03c04f8 <sid_voice_note_on+0xc>
d03c0504:	bcf0      	pop	{r4, r5, r6, r7}
d03c0506:	4770      	bx	lr
d03c0508:	f8df c024 	ldr.w	ip, [pc, #36]	; d03c0530 <sid_voice_note_on+0x44>
d03c050c:	2738      	movs	r7, #56	; 0x38
d03c050e:	2980      	cmp	r1, #128	; 0x80
d03c0510:	fb07 c700 	mla	r7, r7, r0, ip
d03c0514:	733b      	strb	r3, [r7, #12]
d03c0516:	d001      	beq.n	d03c051c <sid_voice_note_on+0x30>
d03c0518:	2909      	cmp	r1, #9
d03c051a:	d105      	bne.n	d03c0528 <sid_voice_note_on+0x3c>
d03c051c:	4631      	mov	r1, r6
d03c051e:	4620      	mov	r0, r4
d03c0520:	461a      	mov	r2, r3
d03c0522:	bcf0      	pop	{r4, r5, r6, r7}
d03c0524:	f7ff bdfc 	b.w	d03c0120 <sid_midi_trigger_percussion>
d03c0528:	bcf0      	pop	{r4, r5, r6, r7}
d03c052a:	f7ff bf41 	b.w	d03c03b0 <sid_voice_set_program>
d03c052e:	bf00      	nop
d03c0530:	d03cf5a0 	.word	0xd03cf5a0

d03c0534 <sid_voice_note_kill>:
d03c0534:	2805      	cmp	r0, #5
d03c0536:	b510      	push	{r4, lr}
d03c0538:	4604      	mov	r4, r0
d03c053a:	d81c      	bhi.n	d03c0576 <sid_voice_note_kill+0x42>
d03c053c:	2003      	movs	r0, #3
d03c053e:	fbb4 f0f0 	udiv	r0, r4, r0
d03c0542:	eb00 0140 	add.w	r1, r0, r0, lsl #1
d03c0546:	1a61      	subs	r1, r4, r1
d03c0548:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d03c054c:	b2c9      	uxtb	r1, r1
d03c054e:	f7ff ff0d 	bl	d03c036c <sid_voice_hard_silence>
d03c0552:	2338      	movs	r3, #56	; 0x38
d03c0554:	4808      	ldr	r0, [pc, #32]	; (d03c0578 <sid_voice_note_kill+0x44>)
d03c0556:	2201      	movs	r2, #1
d03c0558:	fb03 0004 	mla	r0, r3, r4, r0
d03c055c:	2300      	movs	r3, #0
d03c055e:	7382      	strb	r2, [r0, #14]
d03c0560:	7283      	strb	r3, [r0, #10]
d03c0562:	7403      	strb	r3, [r0, #16]
d03c0564:	8103      	strh	r3, [r0, #8]
d03c0566:	85c3      	strh	r3, [r0, #46]	; 0x2e
d03c0568:	8483      	strh	r3, [r0, #36]	; 0x24
d03c056a:	f880 3028 	strb.w	r3, [r0, #40]	; 0x28
d03c056e:	f880 3030 	strb.w	r3, [r0, #48]	; 0x30
d03c0572:	f880 3034 	strb.w	r3, [r0, #52]	; 0x34
d03c0576:	bd10      	pop	{r4, pc}
d03c0578:	d03cf5a0 	.word	0xd03cf5a0

d03c057c <sid_voice_pitch_bend>:
d03c057c:	2805      	cmp	r0, #5
d03c057e:	b410      	push	{r4}
d03c0580:	d819      	bhi.n	d03c05b6 <sid_voice_pitch_bend+0x3a>
d03c0582:	4c0e      	ldr	r4, [pc, #56]	; (d03c05bc <sid_voice_pitch_bend+0x40>)
d03c0584:	2338      	movs	r3, #56	; 0x38
d03c0586:	fb03 4300 	mla	r3, r3, r0, r4
d03c058a:	7a9a      	ldrb	r2, [r3, #10]
d03c058c:	b19a      	cbz	r2, d03c05b6 <sid_voice_pitch_bend+0x3a>
d03c058e:	8419      	strh	r1, [r3, #32]
d03c0590:	2103      	movs	r1, #3
d03c0592:	f993 3022 	ldrsb.w	r3, [r3, #34]	; 0x22
d03c0596:	fbb0 f1f1 	udiv	r1, r0, r1
d03c059a:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03c059e:	1a82      	subs	r2, r0, r2
d03c05a0:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c05a4:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03c05a8:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03c05ac:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05b0:	b2d2      	uxtb	r2, r2
d03c05b2:	f7ff be75 	b.w	d03c02a0 <sid_voice_apply_note_offset>
d03c05b6:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05ba:	4770      	bx	lr
d03c05bc:	d03cf5a0 	.word	0xd03cf5a0

d03c05c0 <sid_voice_set_velocity>:
d03c05c0:	2805      	cmp	r0, #5
d03c05c2:	b410      	push	{r4}
d03c05c4:	d819      	bhi.n	d03c05fa <sid_voice_set_velocity+0x3a>
d03c05c6:	4c0e      	ldr	r4, [pc, #56]	; (d03c0600 <sid_voice_set_velocity+0x40>)
d03c05c8:	2338      	movs	r3, #56	; 0x38
d03c05ca:	fb03 4300 	mla	r3, r3, r0, r4
d03c05ce:	7a9a      	ldrb	r2, [r3, #10]
d03c05d0:	b19a      	cbz	r2, d03c05fa <sid_voice_set_velocity+0x3a>
d03c05d2:	7b5a      	ldrb	r2, [r3, #13]
d03c05d4:	b18a      	cbz	r2, d03c05fa <sid_voice_set_velocity+0x3a>
d03c05d6:	7319      	strb	r1, [r3, #12]
d03c05d8:	2103      	movs	r1, #3
d03c05da:	fbb0 f1f1 	udiv	r1, r0, r1
d03c05de:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d03c05e2:	1a82      	subs	r2, r0, r2
d03c05e4:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
d03c05e8:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d03c05ec:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d03c05f0:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05f4:	b2d2      	uxtb	r2, r2
d03c05f6:	f7ff be25 	b.w	d03c0244 <sid_voice_write_scaled_sr>
d03c05fa:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c05fe:	4770      	bx	lr
d03c0600:	d03cf5a0 	.word	0xd03cf5a0

d03c0604 <sid_voice_get_vm_debug>:
d03c0604:	2805      	cmp	r0, #5
d03c0606:	b510      	push	{r4, lr}
d03c0608:	d81b      	bhi.n	d03c0642 <sid_voice_get_vm_debug+0x3e>
d03c060a:	4c0f      	ldr	r4, [pc, #60]	; (d03c0648 <sid_voice_get_vm_debug+0x44>)
d03c060c:	b121      	cbz	r1, d03c0618 <sid_voice_get_vm_debug+0x14>
d03c060e:	2338      	movs	r3, #56	; 0x38
d03c0610:	fb03 4300 	mla	r3, r3, r0, r4
d03c0614:	7c5b      	ldrb	r3, [r3, #17]
d03c0616:	700b      	strb	r3, [r1, #0]
d03c0618:	b14a      	cbz	r2, d03c062e <sid_voice_get_vm_debug+0x2a>
d03c061a:	2338      	movs	r3, #56	; 0x38
d03c061c:	fb03 4300 	mla	r3, r3, r0, r4
d03c0620:	7a99      	ldrb	r1, [r3, #10]
d03c0622:	b961      	cbnz	r1, d03c063e <sid_voice_get_vm_debug+0x3a>
d03c0624:	7c1b      	ldrb	r3, [r3, #16]
d03c0626:	3b00      	subs	r3, #0
d03c0628:	bf18      	it	ne
d03c062a:	2301      	movne	r3, #1
d03c062c:	7013      	strb	r3, [r2, #0]
d03c062e:	2338      	movs	r3, #56	; 0x38
d03c0630:	fb03 4000 	mla	r0, r3, r0, r4
d03c0634:	6840      	ldr	r0, [r0, #4]
d03c0636:	3800      	subs	r0, #0
d03c0638:	bf18      	it	ne
d03c063a:	2001      	movne	r0, #1
d03c063c:	bd10      	pop	{r4, pc}
d03c063e:	2301      	movs	r3, #1
d03c0640:	e7f4      	b.n	d03c062c <sid_voice_get_vm_debug+0x28>
d03c0642:	2000      	movs	r0, #0
d03c0644:	e7fa      	b.n	d03c063c <sid_voice_get_vm_debug+0x38>
d03c0646:	bf00      	nop
d03c0648:	d03cf5a0 	.word	0xd03cf5a0

d03c064c <sid_soundfont_init>:
d03c064c:	b508      	push	{r3, lr}
d03c064e:	220f      	movs	r2, #15
d03c0650:	2118      	movs	r1, #24
d03c0652:	2000      	movs	r0, #0
d03c0654:	f7ff fdda 	bl	d03c020c <sid_write>
d03c0658:	220f      	movs	r2, #15
d03c065a:	2118      	movs	r1, #24
d03c065c:	2001      	movs	r0, #1
d03c065e:	f7ff fdd5 	bl	d03c020c <sid_write>
d03c0662:	4b03      	ldr	r3, [pc, #12]	; (d03c0670 <sid_soundfont_init+0x24>)
d03c0664:	220f      	movs	r2, #15
d03c0666:	761a      	strb	r2, [r3, #24]
d03c0668:	f883 2038 	strb.w	r2, [r3, #56]	; 0x38
d03c066c:	bd08      	pop	{r3, pc}
d03c066e:	bf00      	nop
d03c0670:	d03ccce8 	.word	0xd03ccce8

d03c0674 <sid_midi_isr>:
d03c0674:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c0678:	4caf      	ldr	r4, [pc, #700]	; (d03c0938 <sid_midi_isr+0x2c4>)
d03c067a:	f04f 0800 	mov.w	r8, #0
d03c067e:	46a3      	mov	fp, r4
d03c0680:	7aa3      	ldrb	r3, [r4, #10]
d03c0682:	fa5f f688 	uxtb.w	r6, r8
d03c0686:	b17b      	cbz	r3, d03c06a8 <sid_midi_isr+0x34>
d03c0688:	2303      	movs	r3, #3
d03c068a:	fbb6 f3f3 	udiv	r3, r6, r3
d03c068e:	b2df      	uxtb	r7, r3
d03c0690:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c0694:	1af6      	subs	r6, r6, r3
d03c0696:	7c23      	ldrb	r3, [r4, #16]
d03c0698:	ebc6 06c6 	rsb	r6, r6, r6, lsl #3
d03c069c:	b2f6      	uxtb	r6, r6
d03c069e:	b19b      	cbz	r3, d03c06c8 <sid_midi_isr+0x54>
d03c06a0:	8925      	ldrh	r5, [r4, #8]
d03c06a2:	b155      	cbz	r5, d03c06ba <sid_midi_isr+0x46>
d03c06a4:	3d01      	subs	r5, #1
d03c06a6:	8125      	strh	r5, [r4, #8]
d03c06a8:	f108 0801 	add.w	r8, r8, #1
d03c06ac:	3438      	adds	r4, #56	; 0x38
d03c06ae:	f1b8 0f06 	cmp.w	r8, #6
d03c06b2:	d1e5      	bne.n	d03c0680 <sid_midi_isr+0xc>
d03c06b4:	b003      	add	sp, #12
d03c06b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c06ba:	4631      	mov	r1, r6
d03c06bc:	4638      	mov	r0, r7
d03c06be:	f7ff fe55 	bl	d03c036c <sid_voice_hard_silence>
d03c06c2:	7425      	strb	r5, [r4, #16]
d03c06c4:	72a5      	strb	r5, [r4, #10]
d03c06c6:	e7ef      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c06c8:	f9b4 302e 	ldrsh.w	r3, [r4, #46]	; 0x2e
d03c06cc:	b183      	cbz	r3, d03c06f0 <sid_midi_isr+0x7c>
d03c06ce:	8be2      	ldrh	r2, [r4, #30]
d03c06d0:	4631      	mov	r1, r6
d03c06d2:	4638      	mov	r0, r7
d03c06d4:	441a      	add	r2, r3
d03c06d6:	f382 0210 	usat	r2, #16, r2
d03c06da:	83e2      	strh	r2, [r4, #30]
d03c06dc:	b2d2      	uxtb	r2, r2
d03c06de:	f7ff fd95 	bl	d03c020c <sid_write>
d03c06e2:	8be2      	ldrh	r2, [r4, #30]
d03c06e4:	1c71      	adds	r1, r6, #1
d03c06e6:	4638      	mov	r0, r7
d03c06e8:	0a12      	lsrs	r2, r2, #8
d03c06ea:	b2c9      	uxtb	r1, r1
d03c06ec:	f7ff fd8e 	bl	d03c020c <sid_write>
d03c06f0:	f9b4 3024 	ldrsh.w	r3, [r4, #36]	; 0x24
d03c06f4:	b183      	cbz	r3, d03c0718 <sid_midi_isr+0xa4>
d03c06f6:	8be2      	ldrh	r2, [r4, #30]
d03c06f8:	4631      	mov	r1, r6
d03c06fa:	4638      	mov	r0, r7
d03c06fc:	441a      	add	r2, r3
d03c06fe:	f382 0210 	usat	r2, #16, r2
d03c0702:	83e2      	strh	r2, [r4, #30]
d03c0704:	b2d2      	uxtb	r2, r2
d03c0706:	f7ff fd81 	bl	d03c020c <sid_write>
d03c070a:	8be2      	ldrh	r2, [r4, #30]
d03c070c:	1c71      	adds	r1, r6, #1
d03c070e:	4638      	mov	r0, r7
d03c0710:	0a12      	lsrs	r2, r2, #8
d03c0712:	b2c9      	uxtb	r1, r1
d03c0714:	f7ff fd7a 	bl	d03c020c <sid_write>
d03c0718:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d03c071c:	b1ab      	cbz	r3, d03c074a <sid_midi_isr+0xd6>
d03c071e:	f894 3029 	ldrb.w	r3, [r4, #41]	; 0x29
d03c0722:	2203      	movs	r2, #3
d03c0724:	4639      	mov	r1, r7
d03c0726:	4620      	mov	r0, r4
d03c0728:	3301      	adds	r3, #1
d03c072a:	fbb3 f2f2 	udiv	r2, r3, r2
d03c072e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d03c0732:	1a9b      	subs	r3, r3, r2
d03c0734:	2238      	movs	r2, #56	; 0x38
d03c0736:	fb02 b208 	mla	r2, r2, r8, fp
d03c073a:	f884 3029 	strb.w	r3, [r4, #41]	; 0x29
d03c073e:	4413      	add	r3, r2
d03c0740:	4632      	mov	r2, r6
d03c0742:	f993 302a 	ldrsb.w	r3, [r3, #42]	; 0x2a
d03c0746:	f7ff fdab 	bl	d03c02a0 <sid_voice_apply_note_offset>
d03c074a:	f894 5030 	ldrb.w	r5, [r4, #48]	; 0x30
d03c074e:	b335      	cbz	r5, d03c079e <sid_midi_isr+0x12a>
d03c0750:	f894 2031 	ldrb.w	r2, [r4, #49]	; 0x31
d03c0754:	b31a      	cbz	r2, d03c079e <sid_midi_isr+0x12a>
d03c0756:	f894 3032 	ldrb.w	r3, [r4, #50]	; 0x32
d03c075a:	4631      	mov	r1, r6
d03c075c:	4638      	mov	r0, r7
d03c075e:	3301      	adds	r3, #1
d03c0760:	b2db      	uxtb	r3, r3
d03c0762:	429a      	cmp	r2, r3
d03c0764:	bf97      	itett	ls
d03c0766:	2300      	movls	r3, #0
d03c0768:	f884 3032 	strbhi.w	r3, [r4, #50]	; 0x32
d03c076c:	f884 3032 	strbls.w	r3, [r4, #50]	; 0x32
d03c0770:	f894 3033 	ldrbls.w	r3, [r4, #51]	; 0x33
d03c0774:	bf9c      	itt	ls
d03c0776:	425b      	negls	r3, r3
d03c0778:	f884 3033 	strbls.w	r3, [r4, #51]	; 0x33
d03c077c:	8be3      	ldrh	r3, [r4, #30]
d03c077e:	f994 2033 	ldrsb.w	r2, [r4, #51]	; 0x33
d03c0782:	fb15 3502 	smlabb	r5, r5, r2, r3
d03c0786:	f385 0510 	usat	r5, #16, r5
d03c078a:	b2ea      	uxtb	r2, r5
d03c078c:	f7ff fd3e 	bl	d03c020c <sid_write>
d03c0790:	1c71      	adds	r1, r6, #1
d03c0792:	f3c5 2207 	ubfx	r2, r5, #8, #8
d03c0796:	4638      	mov	r0, r7
d03c0798:	b2c9      	uxtb	r1, r1
d03c079a:	f7ff fd37 	bl	d03c020c <sid_write>
d03c079e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d03c07a2:	b163      	cbz	r3, d03c07be <sid_midi_isr+0x14a>
d03c07a4:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d03c07a8:	b14a      	cbz	r2, d03c07be <sid_midi_isr+0x14a>
d03c07aa:	7b63      	ldrb	r3, [r4, #13]
d03c07ac:	b13b      	cbz	r3, d03c07be <sid_midi_isr+0x14a>
d03c07ae:	f894 3036 	ldrb.w	r3, [r4, #54]	; 0x36
d03c07b2:	3301      	adds	r3, #1
d03c07b4:	b2db      	uxtb	r3, r3
d03c07b6:	429a      	cmp	r2, r3
d03c07b8:	d908      	bls.n	d03c07cc <sid_midi_isr+0x158>
d03c07ba:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c07be:	8923      	ldrh	r3, [r4, #8]
d03c07c0:	2b00      	cmp	r3, #0
d03c07c2:	f000 8156 	beq.w	d03c0a72 <sid_midi_isr+0x3fe>
d03c07c6:	3b01      	subs	r3, #1
d03c07c8:	8123      	strh	r3, [r4, #8]
d03c07ca:	e76d      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c07cc:	2300      	movs	r3, #0
d03c07ce:	4632      	mov	r2, r6
d03c07d0:	4639      	mov	r1, r7
d03c07d2:	4620      	mov	r0, r4
d03c07d4:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c07d8:	f894 3037 	ldrb.w	r3, [r4, #55]	; 0x37
d03c07dc:	fab3 f383 	clz	r3, r3
d03c07e0:	095b      	lsrs	r3, r3, #5
d03c07e2:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03c07e6:	f7ff fd2d 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c07ea:	e7e8      	b.n	d03c07be <sid_midi_isr+0x14a>
d03c07ec:	6822      	ldr	r2, [r4, #0]
d03c07ee:	6861      	ldr	r1, [r4, #4]
d03c07f0:	f892 c000 	ldrb.w	ip, [r2]
d03c07f4:	eba2 0e01 	sub.w	lr, r2, r1
d03c07f8:	7853      	ldrb	r3, [r2, #1]
d03c07fa:	8855      	ldrh	r5, [r2, #2]
d03c07fc:	ea4f 00ae 	mov.w	r0, lr, asr #2
d03c0800:	f5be 7fc0 	cmp.w	lr, #384	; 0x180
d03c0804:	bf38      	it	cc
d03c0806:	7460      	strbcc	r0, [r4, #17]
d03c0808:	f1bc 0f15 	cmp.w	ip, #21
d03c080c:	f200 812e 	bhi.w	d03c0a6c <sid_midi_isr+0x3f8>
d03c0810:	e8df f01c 	tbh	[pc, ip, lsl #1]
d03c0814:	002e0016 	.word	0x002e0016
d03c0818:	00390032 	.word	0x00390032
d03c081c:	00850062 	.word	0x00850062
d03c0820:	007e0068 	.word	0x007e0068
d03c0824:	0096008e 	.word	0x0096008e
d03c0828:	01160105 	.word	0x01160105
d03c082c:	00a60126 	.word	0x00a60126
d03c0830:	00c700a8 	.word	0x00c700a8
d03c0834:	00d000b4 	.word	0x00d000b4
d03c0838:	00e100d7 	.word	0x00e100d7
d03c083c:	00ff00eb 	.word	0x00ff00eb
d03c0840:	7ba5      	ldrb	r5, [r4, #14]
d03c0842:	4631      	mov	r1, r6
d03c0844:	4638      	mov	r0, r7
d03c0846:	b185      	cbz	r5, d03c086a <sid_midi_isr+0x1f6>
d03c0848:	f7ff fd82 	bl	d03c0350 <sid_voice_clear_gate>
d03c084c:	2301      	movs	r3, #1
d03c084e:	73a3      	strb	r3, [r4, #14]
d03c0850:	7423      	strb	r3, [r4, #16]
d03c0852:	8a63      	ldrh	r3, [r4, #18]
d03c0854:	8123      	strh	r3, [r4, #8]
d03c0856:	2300      	movs	r3, #0
d03c0858:	85e3      	strh	r3, [r4, #46]	; 0x2e
d03c085a:	84a3      	strh	r3, [r4, #36]	; 0x24
d03c085c:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c0860:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c0864:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c0868:	e71e      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c086a:	f7ff fd71 	bl	d03c0350 <sid_voice_clear_gate>
d03c086e:	e729      	b.n	d03c06c4 <sid_midi_isr+0x50>
d03c0870:	3204      	adds	r2, #4
d03c0872:	8125      	strh	r5, [r4, #8]
d03c0874:	6022      	str	r2, [r4, #0]
d03c0876:	e717      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c0878:	1d31      	adds	r1, r6, #4
d03c087a:	b2ea      	uxtb	r2, r5
d03c087c:	b2c9      	uxtb	r1, r1
d03c087e:	4638      	mov	r0, r7
d03c0880:	f7ff fcc4 	bl	d03c020c <sid_write>
d03c0884:	e01a      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c0886:	1d71      	adds	r1, r6, #5
d03c0888:	b2eb      	uxtb	r3, r5
d03c088a:	0a2a      	lsrs	r2, r5, #8
d03c088c:	4638      	mov	r0, r7
d03c088e:	b2c9      	uxtb	r1, r1
d03c0890:	7363      	strb	r3, [r4, #13]
d03c0892:	9301      	str	r3, [sp, #4]
d03c0894:	f7ff fcba 	bl	d03c020c <sid_write>
d03c0898:	9b01      	ldr	r3, [sp, #4]
d03c089a:	1db1      	adds	r1, r6, #6
d03c089c:	4638      	mov	r0, r7
d03c089e:	f005 050f 	and.w	r5, r5, #15
d03c08a2:	461a      	mov	r2, r3
d03c08a4:	b2c9      	uxtb	r1, r1
d03c08a6:	f7ff fcb1 	bl	d03c020c <sid_write>
d03c08aa:	4632      	mov	r2, r6
d03c08ac:	4639      	mov	r1, r7
d03c08ae:	4620      	mov	r0, r4
d03c08b0:	f7ff fcc8 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c08b4:	4b21      	ldr	r3, [pc, #132]	; (d03c093c <sid_midi_isr+0x2c8>)
d03c08b6:	f833 3015 	ldrh.w	r3, [r3, r5, lsl #1]
d03c08ba:	8263      	strh	r3, [r4, #18]
d03c08bc:	6823      	ldr	r3, [r4, #0]
d03c08be:	3304      	adds	r3, #4
d03c08c0:	6023      	str	r3, [r4, #0]
d03c08c2:	7aa3      	ldrb	r3, [r4, #10]
d03c08c4:	2b00      	cmp	r3, #0
d03c08c6:	f43f aeef 	beq.w	d03c06a8 <sid_midi_isr+0x34>
d03c08ca:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d03c08ce:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d03c08d2:	d18b      	bne.n	d03c07ec <sid_midi_isr+0x178>
d03c08d4:	2301      	movs	r3, #1
d03c08d6:	e777      	b.n	d03c07c8 <sid_midi_isr+0x154>
d03c08d8:	f3c5 020b 	ubfx	r2, r5, #0, #12
d03c08dc:	84e2      	strh	r2, [r4, #38]	; 0x26
d03c08de:	1cb1      	adds	r1, r6, #2
d03c08e0:	b2d2      	uxtb	r2, r2
d03c08e2:	e00c      	b.n	d03c08fe <sid_midi_isr+0x28a>
d03c08e4:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c08e6:	1cb1      	adds	r1, r6, #2
d03c08e8:	4415      	add	r5, r2
d03c08ea:	b2ad      	uxth	r5, r5
d03c08ec:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
d03c08f0:	bf2a      	itet	cs
d03c08f2:	f640 73ff 	movwcs	r3, #4095	; 0xfff
d03c08f6:	84e5      	strhcc	r5, [r4, #38]	; 0x26
d03c08f8:	84e3      	strhcs	r3, [r4, #38]	; 0x26
d03c08fa:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d03c08fe:	b2c9      	uxtb	r1, r1
d03c0900:	4638      	mov	r0, r7
d03c0902:	f7ff fc83 	bl	d03c020c <sid_write>
d03c0906:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c0908:	1cf1      	adds	r1, r6, #3
d03c090a:	f3c2 2203 	ubfx	r2, r2, #8, #4
d03c090e:	e7b5      	b.n	d03c087c <sid_midi_isr+0x208>
d03c0910:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
d03c0912:	4295      	cmp	r5, r2
d03c0914:	bf96      	itet	ls
d03c0916:	1b52      	subls	r2, r2, r5
d03c0918:	2200      	movhi	r2, #0
d03c091a:	b292      	uxthls	r2, r2
d03c091c:	e7de      	b.n	d03c08dc <sid_midi_isr+0x268>
d03c091e:	b26b      	sxtb	r3, r5
d03c0920:	4632      	mov	r2, r6
d03c0922:	4639      	mov	r1, r7
d03c0924:	4620      	mov	r0, r4
d03c0926:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
d03c092a:	f7ff fcb9 	bl	d03c02a0 <sid_voice_apply_note_offset>
d03c092e:	e7c5      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c0930:	84a5      	strh	r5, [r4, #36]	; 0x24
d03c0932:	3204      	adds	r2, #4
d03c0934:	e057      	b.n	d03c09e6 <sid_midi_isr+0x372>
d03c0936:	bf00      	nop
d03c0938:	d03cf5a0 	.word	0xd03cf5a0
d03c093c:	d03cb32c 	.word	0xd03cb32c
d03c0940:	b915      	cbnz	r5, d03c0948 <sid_midi_isr+0x2d4>
d03c0942:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d03c0946:	e7f4      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0948:	2301      	movs	r3, #1
d03c094a:	f884 502c 	strb.w	r5, [r4, #44]	; 0x2c
d03c094e:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
d03c0952:	2300      	movs	r3, #0
d03c0954:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
d03c0958:	0a2b      	lsrs	r3, r5, #8
d03c095a:	f884 302b 	strb.w	r3, [r4, #43]	; 0x2b
d03c095e:	e7e8      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0960:	85e5      	strh	r5, [r4, #46]	; 0x2e
d03c0962:	e7e6      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c0964:	0a2b      	lsrs	r3, r5, #8
d03c0966:	f884 5031 	strb.w	r5, [r4, #49]	; 0x31
d03c096a:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
d03c096e:	2300      	movs	r3, #0
d03c0970:	f884 3032 	strb.w	r3, [r4, #50]	; 0x32
d03c0974:	2301      	movs	r3, #1
d03c0976:	f884 3033 	strb.w	r3, [r4, #51]	; 0x33
d03c097a:	e7da      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c097c:	0a2b      	lsrs	r3, r5, #8
d03c097e:	f884 5035 	strb.w	r5, [r4, #53]	; 0x35
d03c0982:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
d03c0986:	2300      	movs	r3, #0
d03c0988:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d03c098c:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
d03c0990:	7b63      	ldrb	r3, [r4, #13]
d03c0992:	2b00      	cmp	r3, #0
d03c0994:	d092      	beq.n	d03c08bc <sid_midi_isr+0x248>
d03c0996:	4632      	mov	r2, r6
d03c0998:	4639      	mov	r1, r7
d03c099a:	4620      	mov	r0, r4
d03c099c:	f7ff fc52 	bl	d03c0244 <sid_voice_write_scaled_sr>
d03c09a0:	e78c      	b.n	d03c08bc <sid_midi_isr+0x248>
d03c09a2:	7ba3      	ldrb	r3, [r4, #14]
d03c09a4:	2b00      	cmp	r3, #0
d03c09a6:	d1c4      	bne.n	d03c0932 <sid_midi_isr+0x2be>
d03c09a8:	2d00      	cmp	r5, #0
d03c09aa:	d093      	beq.n	d03c08d4 <sid_midi_isr+0x260>
d03c09ac:	eba2 0585 	sub.w	r5, r2, r5, lsl #2
d03c09b0:	6025      	str	r5, [r4, #0]
d03c09b2:	e786      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c09b4:	f003 0303 	and.w	r3, r3, #3
d03c09b8:	4453      	add	r3, sl
d03c09ba:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03c09be:	82dd      	strh	r5, [r3, #22]
d03c09c0:	e7b7      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c09c2:	f003 0103 	and.w	r1, r3, #3
d03c09c6:	4451      	add	r1, sl
d03c09c8:	3108      	adds	r1, #8
d03c09ca:	eb0b 0141 	add.w	r1, fp, r1, lsl #1
d03c09ce:	88cb      	ldrh	r3, [r1, #6]
d03c09d0:	441d      	add	r5, r3
d03c09d2:	80cd      	strh	r5, [r1, #6]
d03c09d4:	e7ad      	b.n	d03c0932 <sid_midi_isr+0x2be>
d03c09d6:	7ba3      	ldrb	r3, [r4, #14]
d03c09d8:	2b00      	cmp	r3, #0
d03c09da:	d0aa      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c09dc:	6822      	ldr	r2, [r4, #0]
d03c09de:	2d00      	cmp	r5, #0
d03c09e0:	d0a7      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c09e2:	eb02 0285 	add.w	r2, r2, r5, lsl #2
d03c09e6:	6022      	str	r2, [r4, #0]
d03c09e8:	e76b      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c09ea:	f003 0303 	and.w	r3, r3, #3
d03c09ee:	4453      	add	r3, sl
d03c09f0:	eb0b 0343 	add.w	r3, fp, r3, lsl #1
d03c09f4:	f9b3 1016 	ldrsh.w	r1, [r3, #22]
d03c09f8:	f345 2307 	sbfx	r3, r5, #8, #8
d03c09fc:	4299      	cmp	r1, r3
d03c09fe:	dc98      	bgt.n	d03c0932 <sid_midi_isr+0x2be>
d03c0a00:	6821      	ldr	r1, [r4, #0]
d03c0a02:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
d03c0a06:	bf0c      	ite	eq
d03c0a08:	3104      	addeq	r1, #4
d03c0a0a:	eb01 0185 	addne.w	r1, r1, r5, lsl #2
d03c0a0e:	6021      	str	r1, [r4, #0]
d03c0a10:	e757      	b.n	d03c08c2 <sid_midi_isr+0x24e>
d03c0a12:	6822      	ldr	r2, [r4, #0]
d03c0a14:	2d00      	cmp	r5, #0
d03c0a16:	d08c      	beq.n	d03c0932 <sid_midi_isr+0x2be>
d03c0a18:	eba2 0285 	sub.w	r2, r2, r5, lsl #2
d03c0a1c:	e7e3      	b.n	d03c09e6 <sid_midi_isr+0x372>
d03c0a1e:	f005 0207 	and.w	r2, r5, #7
d03c0a22:	2115      	movs	r1, #21
d03c0a24:	4638      	mov	r0, r7
d03c0a26:	9301      	str	r3, [sp, #4]
d03c0a28:	f7ff fbf0 	bl	d03c020c <sid_write>
d03c0a2c:	f3c5 02c7 	ubfx	r2, r5, #3, #8
d03c0a30:	2116      	movs	r1, #22
d03c0a32:	4638      	mov	r0, r7
d03c0a34:	f7ff fbea 	bl	d03c020c <sid_write>
d03c0a38:	9b01      	ldr	r3, [sp, #4]
d03c0a3a:	2118      	movs	r1, #24
d03c0a3c:	461a      	mov	r2, r3
d03c0a3e:	e71e      	b.n	d03c087e <sid_midi_isr+0x20a>
d03c0a40:	2d00      	cmp	r5, #0
d03c0a42:	f43f af47 	beq.w	d03c08d4 <sid_midi_isr+0x260>
d03c0a46:	2b00      	cmp	r3, #0
d03c0a48:	d0b0      	beq.n	d03c09ac <sid_midi_isr+0x338>
d03c0a4a:	7d21      	ldrb	r1, [r4, #20]
d03c0a4c:	b901      	cbnz	r1, d03c0a50 <sid_midi_isr+0x3dc>
d03c0a4e:	7523      	strb	r3, [r4, #20]
d03c0a50:	7d23      	ldrb	r3, [r4, #20]
d03c0a52:	3b01      	subs	r3, #1
d03c0a54:	b2db      	uxtb	r3, r3
d03c0a56:	7523      	strb	r3, [r4, #20]
d03c0a58:	2b00      	cmp	r3, #0
d03c0a5a:	f43f af6a 	beq.w	d03c0932 <sid_midi_isr+0x2be>
d03c0a5e:	e7a5      	b.n	d03c09ac <sid_midi_isr+0x338>
d03c0a60:	42a8      	cmp	r0, r5
d03c0a62:	f43f af66 	beq.w	d03c0932 <sid_midi_isr+0x2be>
d03c0a66:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d03c0a6a:	e7a1      	b.n	d03c09b0 <sid_midi_isr+0x33c>
d03c0a6c:	2300      	movs	r3, #0
d03c0a6e:	72a3      	strb	r3, [r4, #10]
d03c0a70:	e61a      	b.n	d03c06a8 <sid_midi_isr+0x34>
d03c0a72:	f04f 0a1c 	mov.w	sl, #28
d03c0a76:	f04f 0961 	mov.w	r9, #97	; 0x61
d03c0a7a:	fb0a fa08 	mul.w	sl, sl, r8
d03c0a7e:	e720      	b.n	d03c08c2 <sid_midi_isr+0x24e>

d03c0a80 <midi_out_packet3>:
d03c0a80:	b507      	push	{r0, r1, r2, lr}
d03c0a82:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03c0a86:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03c0a8a:	f88d 0004 	strb.w	r0, [sp, #4]
d03c0a8e:	a801      	add	r0, sp, #4
d03c0a90:	f88d 2006 	strb.w	r2, [sp, #6]
d03c0a94:	4a09      	ldr	r2, [pc, #36]	; (d03c0abc <midi_out_packet3+0x3c>)
d03c0a96:	f88d 1005 	strb.w	r1, [sp, #5]
d03c0a9a:	7d13      	ldrb	r3, [r2, #20]
d03c0a9c:	7d51      	ldrb	r1, [r2, #21]
d03c0a9e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c0aa2:	7d91      	ldrb	r1, [r2, #22]
d03c0aa4:	7dd2      	ldrb	r2, [r2, #23]
d03c0aa6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c0aaa:	2103      	movs	r1, #3
d03c0aac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0ab0:	681b      	ldr	r3, [r3, #0]
d03c0ab2:	695b      	ldr	r3, [r3, #20]
d03c0ab4:	4798      	blx	r3
d03c0ab6:	b003      	add	sp, #12
d03c0ab8:	f85d fb04 	ldr.w	pc, [sp], #4
d03c0abc:	2001f000 	.word	0x2001f000

d03c0ac0 <seq_midi_out_note_on>:
d03c0ac0:	4b04      	ldr	r3, [pc, #16]	; (d03c0ad4 <seq_midi_out_note_on+0x14>)
d03c0ac2:	781b      	ldrb	r3, [r3, #0]
d03c0ac4:	b12b      	cbz	r3, d03c0ad2 <seq_midi_out_note_on+0x12>
d03c0ac6:	280f      	cmp	r0, #15
d03c0ac8:	d803      	bhi.n	d03c0ad2 <seq_midi_out_note_on+0x12>
d03c0aca:	f040 0090 	orr.w	r0, r0, #144	; 0x90
d03c0ace:	f7ff bfd7 	b.w	d03c0a80 <midi_out_packet3>
d03c0ad2:	4770      	bx	lr
d03c0ad4:	d03ccfca 	.word	0xd03ccfca

d03c0ad8 <sid_find_voice_source>:
d03c0ad8:	b570      	push	{r4, r5, r6, lr}
d03c0ada:	4b0a      	ldr	r3, [pc, #40]	; (d03c0b04 <sid_find_voice_source+0x2c>)
d03c0adc:	2400      	movs	r4, #0
d03c0ade:	781e      	ldrb	r6, [r3, #0]
d03c0ae0:	b2e5      	uxtb	r5, r4
d03c0ae2:	b146      	cbz	r6, d03c0af6 <sid_find_voice_source+0x1e>
d03c0ae4:	785e      	ldrb	r6, [r3, #1]
d03c0ae6:	4286      	cmp	r6, r0
d03c0ae8:	d105      	bne.n	d03c0af6 <sid_find_voice_source+0x1e>
d03c0aea:	789e      	ldrb	r6, [r3, #2]
d03c0aec:	428e      	cmp	r6, r1
d03c0aee:	d102      	bne.n	d03c0af6 <sid_find_voice_source+0x1e>
d03c0af0:	795e      	ldrb	r6, [r3, #5]
d03c0af2:	4296      	cmp	r6, r2
d03c0af4:	d004      	beq.n	d03c0b00 <sid_find_voice_source+0x28>
d03c0af6:	3401      	adds	r4, #1
d03c0af8:	3308      	adds	r3, #8
d03c0afa:	2c06      	cmp	r4, #6
d03c0afc:	d1ef      	bne.n	d03c0ade <sid_find_voice_source+0x6>
d03c0afe:	25ff      	movs	r5, #255	; 0xff
d03c0b00:	4628      	mov	r0, r5
d03c0b02:	bd70      	pop	{r4, r5, r6, pc}
d03c0b04:	d03cd108 	.word	0xd03cd108

d03c0b08 <midi_effective_velocity>:
d03c0b08:	4b1c      	ldr	r3, [pc, #112]	; (d03c0b7c <midi_effective_velocity+0x74>)
d03c0b0a:	2809      	cmp	r0, #9
d03c0b0c:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c0b0e:	5c1c      	ldrb	r4, [r3, r0]
d03c0b10:	f04f 067f 	mov.w	r6, #127	; 0x7f
d03c0b14:	4b1a      	ldr	r3, [pc, #104]	; (d03c0b80 <midi_effective_velocity+0x78>)
d03c0b16:	4d1b      	ldr	r5, [pc, #108]	; (d03c0b84 <midi_effective_velocity+0x7c>)
d03c0b18:	5c1a      	ldrb	r2, [r3, r0]
d03c0b1a:	fb14 f301 	smulbb	r3, r4, r1
d03c0b1e:	882d      	ldrh	r5, [r5, #0]
d03c0b20:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03c0b24:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b28:	fb02 f303 	mul.w	r3, r2, r3
d03c0b2c:	f103 033f 	add.w	r3, r3, #63	; 0x3f
d03c0b30:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b34:	fb05 f303 	mul.w	r3, r5, r3
d03c0b38:	f04f 0664 	mov.w	r6, #100	; 0x64
d03c0b3c:	f103 0332 	add.w	r3, r3, #50	; 0x32
d03c0b40:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b44:	d105      	bne.n	d03c0b52 <midi_effective_velocity+0x4a>
d03c0b46:	4f10      	ldr	r7, [pc, #64]	; (d03c0b88 <midi_effective_velocity+0x80>)
d03c0b48:	883f      	ldrh	r7, [r7, #0]
d03c0b4a:	437b      	muls	r3, r7
d03c0b4c:	3332      	adds	r3, #50	; 0x32
d03c0b4e:	fbb3 f3f6 	udiv	r3, r3, r6
d03c0b52:	2bff      	cmp	r3, #255	; 0xff
d03c0b54:	d80d      	bhi.n	d03c0b72 <midi_effective_velocity+0x6a>
d03c0b56:	b953      	cbnz	r3, d03c0b6e <midi_effective_velocity+0x66>
d03c0b58:	b149      	cbz	r1, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5a:	b144      	cbz	r4, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5c:	b13a      	cbz	r2, d03c0b6e <midi_effective_velocity+0x66>
d03c0b5e:	b135      	cbz	r5, d03c0b6e <midi_effective_velocity+0x66>
d03c0b60:	2809      	cmp	r0, #9
d03c0b62:	d108      	bne.n	d03c0b76 <midi_effective_velocity+0x6e>
d03c0b64:	4b08      	ldr	r3, [pc, #32]	; (d03c0b88 <midi_effective_velocity+0x80>)
d03c0b66:	881b      	ldrh	r3, [r3, #0]
d03c0b68:	3b00      	subs	r3, #0
d03c0b6a:	bf18      	it	ne
d03c0b6c:	2301      	movne	r3, #1
d03c0b6e:	b2d8      	uxtb	r0, r3
d03c0b70:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c0b72:	23ff      	movs	r3, #255	; 0xff
d03c0b74:	e7fb      	b.n	d03c0b6e <midi_effective_velocity+0x66>
d03c0b76:	2301      	movs	r3, #1
d03c0b78:	e7f9      	b.n	d03c0b6e <midi_effective_velocity+0x66>
d03c0b7a:	bf00      	nop
d03c0b7c:	d03ccd74 	.word	0xd03ccd74
d03c0b80:	d03ccd54 	.word	0xd03ccd54
d03c0b84:	d03ccf8e 	.word	0xd03ccf8e
d03c0b88:	d03ccd8a 	.word	0xd03ccd8a

d03c0b8c <seq_beat_ticks>:
d03c0b8c:	4b05      	ldr	r3, [pc, #20]	; (d03c0ba4 <seq_beat_ticks+0x18>)
d03c0b8e:	881b      	ldrh	r3, [r3, #0]
d03c0b90:	0858      	lsrs	r0, r3, #1
d03c0b92:	f600 30b8 	addw	r0, r0, #3000	; 0xbb8
d03c0b96:	4298      	cmp	r0, r3
d03c0b98:	bf2c      	ite	cs
d03c0b9a:	fbb0 f0f3 	udivcs	r0, r0, r3
d03c0b9e:	2001      	movcc	r0, #1
d03c0ba0:	4770      	bx	lr
d03c0ba2:	bf00      	nop
d03c0ba4:	d03ccfac 	.word	0xd03ccfac

d03c0ba8 <seq_note_end_tick>:
d03c0ba8:	4b04      	ldr	r3, [pc, #16]	; (d03c0bbc <seq_note_end_tick+0x14>)
d03c0baa:	0102      	lsls	r2, r0, #4
d03c0bac:	681b      	ldr	r3, [r3, #0]
d03c0bae:	eb03 1000 	add.w	r0, r3, r0, lsl #4
d03c0bb2:	589a      	ldr	r2, [r3, r2]
d03c0bb4:	6840      	ldr	r0, [r0, #4]
d03c0bb6:	4410      	add	r0, r2
d03c0bb8:	4770      	bx	lr
d03c0bba:	bf00      	nop
d03c0bbc:	d03ccfd8 	.word	0xd03ccfd8

d03c0bc0 <seq_order_compare_start>:
d03c0bc0:	880b      	ldrh	r3, [r1, #0]
d03c0bc2:	8802      	ldrh	r2, [r0, #0]
d03c0bc4:	490a      	ldr	r1, [pc, #40]	; (d03c0bf0 <seq_order_compare_start+0x30>)
d03c0bc6:	0110      	lsls	r0, r2, #4
d03c0bc8:	6809      	ldr	r1, [r1, #0]
d03c0bca:	b510      	push	{r4, lr}
d03c0bcc:	011c      	lsls	r4, r3, #4
d03c0bce:	5808      	ldr	r0, [r1, r0]
d03c0bd0:	5909      	ldr	r1, [r1, r4]
d03c0bd2:	4288      	cmp	r0, r1
d03c0bd4:	d308      	bcc.n	d03c0be8 <seq_order_compare_start+0x28>
d03c0bd6:	d805      	bhi.n	d03c0be4 <seq_order_compare_start+0x24>
d03c0bd8:	429a      	cmp	r2, r3
d03c0bda:	d305      	bcc.n	d03c0be8 <seq_order_compare_start+0x28>
d03c0bdc:	bf8c      	ite	hi
d03c0bde:	2001      	movhi	r0, #1
d03c0be0:	2000      	movls	r0, #0
d03c0be2:	bd10      	pop	{r4, pc}
d03c0be4:	2001      	movs	r0, #1
d03c0be6:	e7fc      	b.n	d03c0be2 <seq_order_compare_start+0x22>
d03c0be8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c0bec:	e7f9      	b.n	d03c0be2 <seq_order_compare_start+0x22>
d03c0bee:	bf00      	nop
d03c0bf0:	d03ccfd8 	.word	0xd03ccfd8

d03c0bf4 <seq_order_compare_end>:
d03c0bf4:	b538      	push	{r3, r4, r5, lr}
d03c0bf6:	8805      	ldrh	r5, [r0, #0]
d03c0bf8:	880c      	ldrh	r4, [r1, #0]
d03c0bfa:	4628      	mov	r0, r5
d03c0bfc:	f7ff ffd4 	bl	d03c0ba8 <seq_note_end_tick>
d03c0c00:	4601      	mov	r1, r0
d03c0c02:	4620      	mov	r0, r4
d03c0c04:	f7ff ffd0 	bl	d03c0ba8 <seq_note_end_tick>
d03c0c08:	4281      	cmp	r1, r0
d03c0c0a:	d308      	bcc.n	d03c0c1e <seq_order_compare_end+0x2a>
d03c0c0c:	d805      	bhi.n	d03c0c1a <seq_order_compare_end+0x26>
d03c0c0e:	42a5      	cmp	r5, r4
d03c0c10:	d305      	bcc.n	d03c0c1e <seq_order_compare_end+0x2a>
d03c0c12:	bf8c      	ite	hi
d03c0c14:	2001      	movhi	r0, #1
d03c0c16:	2000      	movls	r0, #0
d03c0c18:	bd38      	pop	{r3, r4, r5, pc}
d03c0c1a:	2001      	movs	r0, #1
d03c0c1c:	e7fc      	b.n	d03c0c18 <seq_order_compare_end+0x24>
d03c0c1e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c0c22:	e7f9      	b.n	d03c0c18 <seq_order_compare_end+0x24>

d03c0c24 <seq_playback_mark_dirty>:
d03c0c24:	4b03      	ldr	r3, [pc, #12]	; (d03c0c34 <seq_playback_mark_dirty+0x10>)
d03c0c26:	2201      	movs	r2, #1
d03c0c28:	701a      	strb	r2, [r3, #0]
d03c0c2a:	2200      	movs	r2, #0
d03c0c2c:	4b02      	ldr	r3, [pc, #8]	; (d03c0c38 <seq_playback_mark_dirty+0x14>)
d03c0c2e:	701a      	strb	r2, [r3, #0]
d03c0c30:	4770      	bx	lr
d03c0c32:	bf00      	nop
d03c0c34:	d03ccfe0 	.word	0xd03ccfe0
d03c0c38:	d03cd0ec 	.word	0xd03cd0ec

d03c0c3c <seq_set_bpm>:
d03c0c3c:	28f0      	cmp	r0, #240	; 0xf0
d03c0c3e:	4b06      	ldr	r3, [pc, #24]	; (d03c0c58 <seq_set_bpm+0x1c>)
d03c0c40:	f04f 0201 	mov.w	r2, #1
d03c0c44:	bfa8      	it	ge
d03c0c46:	20f0      	movge	r0, #240	; 0xf0
d03c0c48:	2828      	cmp	r0, #40	; 0x28
d03c0c4a:	bfb8      	it	lt
d03c0c4c:	2028      	movlt	r0, #40	; 0x28
d03c0c4e:	8018      	strh	r0, [r3, #0]
d03c0c50:	4b02      	ldr	r3, [pc, #8]	; (d03c0c5c <seq_set_bpm+0x20>)
d03c0c52:	701a      	strb	r2, [r3, #0]
d03c0c54:	4770      	bx	lr
d03c0c56:	bf00      	nop
d03c0c58:	d03ccfac 	.word	0xd03ccfac
d03c0c5c:	d03cf3cb 	.word	0xd03cf3cb

d03c0c60 <midi_channel_active_count>:
d03c0c60:	2200      	movs	r2, #0
d03c0c62:	4908      	ldr	r1, [pc, #32]	; (d03c0c84 <midi_channel_active_count+0x24>)
d03c0c64:	b510      	push	{r4, lr}
d03c0c66:	4604      	mov	r4, r0
d03c0c68:	4610      	mov	r0, r2
d03c0c6a:	780b      	ldrb	r3, [r1, #0]
d03c0c6c:	b123      	cbz	r3, d03c0c78 <midi_channel_active_count+0x18>
d03c0c6e:	784b      	ldrb	r3, [r1, #1]
d03c0c70:	42a3      	cmp	r3, r4
d03c0c72:	bf04      	itt	eq
d03c0c74:	1c43      	addeq	r3, r0, #1
d03c0c76:	b2d8      	uxtbeq	r0, r3
d03c0c78:	3201      	adds	r2, #1
d03c0c7a:	3108      	adds	r1, #8
d03c0c7c:	2a06      	cmp	r2, #6
d03c0c7e:	d1f4      	bne.n	d03c0c6a <midi_channel_active_count+0xa>
d03c0c80:	bd10      	pop	{r4, pc}
d03c0c82:	bf00      	nop
d03c0c84:	d03cd108 	.word	0xd03cd108

d03c0c88 <ui_box>:
d03c0c88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c0c8c:	4c27      	ldr	r4, [pc, #156]	; (d03c0d2c <ui_box+0xa4>)
d03c0c8e:	4690      	mov	r8, r2
d03c0c90:	4699      	mov	r9, r3
d03c0c92:	4606      	mov	r6, r0
d03c0c94:	7b23      	ldrb	r3, [r4, #12]
d03c0c96:	460f      	mov	r7, r1
d03c0c98:	7b62      	ldrb	r2, [r4, #13]
d03c0c9a:	f89d 0020 	ldrb.w	r0, [sp, #32]
d03c0c9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0ca2:	7ba2      	ldrb	r2, [r4, #14]
d03c0ca4:	f89d 5024 	ldrb.w	r5, [sp, #36]	; 0x24
d03c0ca8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cac:	7be2      	ldrb	r2, [r4, #15]
d03c0cae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cb2:	685b      	ldr	r3, [r3, #4]
d03c0cb4:	68db      	ldr	r3, [r3, #12]
d03c0cb6:	4798      	blx	r3
d03c0cb8:	7b23      	ldrb	r3, [r4, #12]
d03c0cba:	7b62      	ldrb	r2, [r4, #13]
d03c0cbc:	4639      	mov	r1, r7
d03c0cbe:	4630      	mov	r0, r6
d03c0cc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0cc4:	7ba2      	ldrb	r2, [r4, #14]
d03c0cc6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cca:	7be2      	ldrb	r2, [r4, #15]
d03c0ccc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cd0:	4642      	mov	r2, r8
d03c0cd2:	685b      	ldr	r3, [r3, #4]
d03c0cd4:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03c0cd8:	464b      	mov	r3, r9
d03c0cda:	47d0      	blx	sl
d03c0cdc:	7b23      	ldrb	r3, [r4, #12]
d03c0cde:	7b62      	ldrb	r2, [r4, #13]
d03c0ce0:	4628      	mov	r0, r5
d03c0ce2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0ce6:	7ba2      	ldrb	r2, [r4, #14]
d03c0ce8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0cec:	7be2      	ldrb	r2, [r4, #15]
d03c0cee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0cf2:	685b      	ldr	r3, [r3, #4]
d03c0cf4:	68db      	ldr	r3, [r3, #12]
d03c0cf6:	4798      	blx	r3
d03c0cf8:	7b25      	ldrb	r5, [r4, #12]
d03c0cfa:	7b63      	ldrb	r3, [r4, #13]
d03c0cfc:	f1a8 0202 	sub.w	r2, r8, #2
d03c0d00:	1c79      	adds	r1, r7, #1
d03c0d02:	1c70      	adds	r0, r6, #1
d03c0d04:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d03c0d08:	7ba3      	ldrb	r3, [r4, #14]
d03c0d0a:	7be4      	ldrb	r4, [r4, #15]
d03c0d0c:	b212      	sxth	r2, r2
d03c0d0e:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
d03c0d12:	f1a9 0302 	sub.w	r3, r9, #2
d03c0d16:	b209      	sxth	r1, r1
d03c0d18:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d03c0d1c:	b21b      	sxth	r3, r3
d03c0d1e:	6864      	ldr	r4, [r4, #4]
d03c0d20:	b200      	sxth	r0, r0
d03c0d22:	6864      	ldr	r4, [r4, #4]
d03c0d24:	46a4      	mov	ip, r4
d03c0d26:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c0d2a:	4760      	bx	ip
d03c0d2c:	2001f000 	.word	0x2001f000

d03c0d30 <ui_button_register>:
d03c0d30:	b570      	push	{r4, r5, r6, lr}
d03c0d32:	4d0a      	ldr	r5, [pc, #40]	; (d03c0d5c <ui_button_register+0x2c>)
d03c0d34:	782c      	ldrb	r4, [r5, #0]
d03c0d36:	2cbd      	cmp	r4, #189	; 0xbd
d03c0d38:	d80f      	bhi.n	d03c0d5a <ui_button_register+0x2a>
d03c0d3a:	1c66      	adds	r6, r4, #1
d03c0d3c:	702e      	strb	r6, [r5, #0]
d03c0d3e:	250c      	movs	r5, #12
d03c0d40:	4e07      	ldr	r6, [pc, #28]	; (d03c0d60 <ui_button_register+0x30>)
d03c0d42:	4365      	muls	r5, r4
d03c0d44:	1974      	adds	r4, r6, r5
d03c0d46:	5370      	strh	r0, [r6, r5]
d03c0d48:	80e3      	strh	r3, [r4, #6]
d03c0d4a:	f9bd 3010 	ldrsh.w	r3, [sp, #16]
d03c0d4e:	8061      	strh	r1, [r4, #2]
d03c0d50:	8123      	strh	r3, [r4, #8]
d03c0d52:	f89d 3014 	ldrb.w	r3, [sp, #20]
d03c0d56:	80a2      	strh	r2, [r4, #4]
d03c0d58:	72a3      	strb	r3, [r4, #10]
d03c0d5a:	bd70      	pop	{r4, r5, r6, pc}
d03c0d5c:	d03cd148 	.word	0xd03cd148
d03c0d60:	d03cd14a 	.word	0xd03cd14a

d03c0d64 <ui_panel>:
d03c0d64:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
d03c0d68:	f04f 0ee2 	mov.w	lr, #226	; 0xe2
d03c0d6c:	24e1      	movs	r4, #225	; 0xe1
d03c0d6e:	460e      	mov	r6, r1
d03c0d70:	4690      	mov	r8, r2
d03c0d72:	4605      	mov	r5, r0
d03c0d74:	9f08      	ldr	r7, [sp, #32]
d03c0d76:	b2b6      	uxth	r6, r6
d03c0d78:	b2ad      	uxth	r5, r5
d03c0d7a:	e9cd 4e00 	strd	r4, lr, [sp]
d03c0d7e:	4c25      	ldr	r4, [pc, #148]	; (d03c0e14 <ui_panel+0xb0>)
d03c0d80:	f7ff ff82 	bl	d03c0c88 <ui_box>
d03c0d84:	20e3      	movs	r0, #227	; 0xe3
d03c0d86:	7b23      	ldrb	r3, [r4, #12]
d03c0d88:	7b62      	ldrb	r2, [r4, #13]
d03c0d8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0d8e:	7ba2      	ldrb	r2, [r4, #14]
d03c0d90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0d94:	7be2      	ldrb	r2, [r4, #15]
d03c0d96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0d9a:	685b      	ldr	r3, [r3, #4]
d03c0d9c:	68db      	ldr	r3, [r3, #12]
d03c0d9e:	4798      	blx	r3
d03c0da0:	7b23      	ldrb	r3, [r4, #12]
d03c0da2:	7b62      	ldrb	r2, [r4, #13]
d03c0da4:	1c71      	adds	r1, r6, #1
d03c0da6:	1c68      	adds	r0, r5, #1
d03c0da8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0dac:	7ba2      	ldrb	r2, [r4, #14]
d03c0dae:	b209      	sxth	r1, r1
d03c0db0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0db4:	7be2      	ldrb	r2, [r4, #15]
d03c0db6:	b200      	sxth	r0, r0
d03c0db8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0dbc:	f1a8 0202 	sub.w	r2, r8, #2
d03c0dc0:	685b      	ldr	r3, [r3, #4]
d03c0dc2:	b212      	sxth	r2, r2
d03c0dc4:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c0dc8:	2314      	movs	r3, #20
d03c0dca:	47c0      	blx	r8
d03c0dcc:	7b23      	ldrb	r3, [r4, #12]
d03c0dce:	7b62      	ldrb	r2, [r4, #13]
d03c0dd0:	20e7      	movs	r0, #231	; 0xe7
d03c0dd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0dd6:	7ba2      	ldrb	r2, [r4, #14]
d03c0dd8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0ddc:	7be2      	ldrb	r2, [r4, #15]
d03c0dde:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0de2:	685b      	ldr	r3, [r3, #4]
d03c0de4:	68db      	ldr	r3, [r3, #12]
d03c0de6:	4798      	blx	r3
d03c0de8:	7b23      	ldrb	r3, [r4, #12]
d03c0dea:	7b62      	ldrb	r2, [r4, #13]
d03c0dec:	1d31      	adds	r1, r6, #4
d03c0dee:	f105 0008 	add.w	r0, r5, #8
d03c0df2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0df6:	7ba2      	ldrb	r2, [r4, #14]
d03c0df8:	b289      	uxth	r1, r1
d03c0dfa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0dfe:	7be2      	ldrb	r2, [r4, #15]
d03c0e00:	b280      	uxth	r0, r0
d03c0e02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e06:	463a      	mov	r2, r7
d03c0e08:	685b      	ldr	r3, [r3, #4]
d03c0e0a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c0e0c:	b002      	add	sp, #8
d03c0e0e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03c0e12:	4718      	bx	r3
d03c0e14:	2001f000 	.word	0x2001f000

d03c0e18 <ui_value_bar>:
d03c0e18:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c0e1a:	1e97      	subs	r7, r2, #2
d03c0e1c:	f8bd 4020 	ldrh.w	r4, [sp, #32]
d03c0e20:	f04f 0ce1 	mov.w	ip, #225	; 0xe1
d03c0e24:	4605      	mov	r5, r0
d03c0e26:	437b      	muls	r3, r7
d03c0e28:	460e      	mov	r6, r1
d03c0e2a:	fbb3 f7f4 	udiv	r7, r3, r4
d03c0e2e:	23f0      	movs	r3, #240	; 0xf0
d03c0e30:	4c15      	ldr	r4, [pc, #84]	; (d03c0e88 <ui_value_bar+0x70>)
d03c0e32:	e9cd 3c00 	strd	r3, ip, [sp]
d03c0e36:	230a      	movs	r3, #10
d03c0e38:	f7ff ff26 	bl	d03c0c88 <ui_box>
d03c0e3c:	7b23      	ldrb	r3, [r4, #12]
d03c0e3e:	7b62      	ldrb	r2, [r4, #13]
d03c0e40:	20e7      	movs	r0, #231	; 0xe7
d03c0e42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0e46:	7ba2      	ldrb	r2, [r4, #14]
d03c0e48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0e4c:	7be2      	ldrb	r2, [r4, #15]
d03c0e4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e52:	685b      	ldr	r3, [r3, #4]
d03c0e54:	68db      	ldr	r3, [r3, #12]
d03c0e56:	4798      	blx	r3
d03c0e58:	7b23      	ldrb	r3, [r4, #12]
d03c0e5a:	7b62      	ldrb	r2, [r4, #13]
d03c0e5c:	1c71      	adds	r1, r6, #1
d03c0e5e:	1c68      	adds	r0, r5, #1
d03c0e60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c0e64:	7ba2      	ldrb	r2, [r4, #14]
d03c0e66:	b209      	sxth	r1, r1
d03c0e68:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c0e6c:	7be2      	ldrb	r2, [r4, #15]
d03c0e6e:	b200      	sxth	r0, r0
d03c0e70:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c0e74:	b23a      	sxth	r2, r7
d03c0e76:	685b      	ldr	r3, [r3, #4]
d03c0e78:	685c      	ldr	r4, [r3, #4]
d03c0e7a:	2308      	movs	r3, #8
d03c0e7c:	46a4      	mov	ip, r4
d03c0e7e:	b003      	add	sp, #12
d03c0e80:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d03c0e84:	4760      	bx	ip
d03c0e86:	bf00      	nop
d03c0e88:	2001f000 	.word	0x2001f000

d03c0e8c <vm_program_length>:
d03c0e8c:	0603      	lsls	r3, r0, #24
d03c0e8e:	d40e      	bmi.n	d03c0eae <vm_program_length+0x22>
d03c0e90:	4b08      	ldr	r3, [pc, #32]	; (d03c0eb4 <vm_program_length+0x28>)
d03c0e92:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
d03c0e96:	b158      	cbz	r0, d03c0eb0 <vm_program_length+0x24>
d03c0e98:	2301      	movs	r3, #1
d03c0e9a:	1f02      	subs	r2, r0, #4
d03c0e9c:	f812 1023 	ldrb.w	r1, [r2, r3, lsl #2]
d03c0ea0:	b2d8      	uxtb	r0, r3
d03c0ea2:	b129      	cbz	r1, d03c0eb0 <vm_program_length+0x24>
d03c0ea4:	3301      	adds	r3, #1
d03c0ea6:	2b61      	cmp	r3, #97	; 0x61
d03c0ea8:	d1f8      	bne.n	d03c0e9c <vm_program_length+0x10>
d03c0eaa:	2060      	movs	r0, #96	; 0x60
d03c0eac:	4770      	bx	lr
d03c0eae:	2000      	movs	r0, #0
d03c0eb0:	4770      	bx	lr
d03c0eb2:	bf00      	nop
d03c0eb4:	d03cc670 	.word	0xd03cc670

d03c0eb8 <ui_clamp_vm_scroll>:
d03c0eb8:	b508      	push	{r3, lr}
d03c0eba:	4b09      	ldr	r3, [pc, #36]	; (d03c0ee0 <ui_clamp_vm_scroll+0x28>)
d03c0ebc:	4a09      	ldr	r2, [pc, #36]	; (d03c0ee4 <ui_clamp_vm_scroll+0x2c>)
d03c0ebe:	781b      	ldrb	r3, [r3, #0]
d03c0ec0:	5cd0      	ldrb	r0, [r2, r3]
d03c0ec2:	f7ff ffe3 	bl	d03c0e8c <vm_program_length>
d03c0ec6:	2808      	cmp	r0, #8
d03c0ec8:	4b07      	ldr	r3, [pc, #28]	; (d03c0ee8 <ui_clamp_vm_scroll+0x30>)
d03c0eca:	bf8c      	ite	hi
d03c0ecc:	3808      	subhi	r0, #8
d03c0ece:	2000      	movls	r0, #0
d03c0ed0:	781a      	ldrb	r2, [r3, #0]
d03c0ed2:	bf88      	it	hi
d03c0ed4:	b2c0      	uxtbhi	r0, r0
d03c0ed6:	4282      	cmp	r2, r0
d03c0ed8:	bf88      	it	hi
d03c0eda:	7018      	strbhi	r0, [r3, #0]
d03c0edc:	bd08      	pop	{r3, pc}
d03c0ede:	bf00      	nop
d03c0ee0:	d03cf3ca 	.word	0xd03cf3ca
d03c0ee4:	d03ccd64 	.word	0xd03ccd64
d03c0ee8:	d03cf591 	.word	0xd03cf591

d03c0eec <ui_scroll_vm>:
d03c0eec:	b538      	push	{r3, r4, r5, lr}
d03c0eee:	4d0c      	ldr	r5, [pc, #48]	; (d03c0f20 <ui_scroll_vm+0x34>)
d03c0ef0:	4a0c      	ldr	r2, [pc, #48]	; (d03c0f24 <ui_scroll_vm+0x38>)
d03c0ef2:	782b      	ldrb	r3, [r5, #0]
d03c0ef4:	181c      	adds	r4, r3, r0
d03c0ef6:	4b0c      	ldr	r3, [pc, #48]	; (d03c0f28 <ui_scroll_vm+0x3c>)
d03c0ef8:	781b      	ldrb	r3, [r3, #0]
d03c0efa:	5cd0      	ldrb	r0, [r2, r3]
d03c0efc:	f7ff ffc6 	bl	d03c0e8c <vm_program_length>
d03c0f00:	2808      	cmp	r0, #8
d03c0f02:	bf8a      	itet	hi
d03c0f04:	f1a0 0308 	subhi.w	r3, r0, #8
d03c0f08:	2300      	movls	r3, #0
d03c0f0a:	b2db      	uxtbhi	r3, r3
d03c0f0c:	1c62      	adds	r2, r4, #1
d03c0f0e:	d004      	beq.n	d03c0f1a <ui_scroll_vm+0x2e>
d03c0f10:	429c      	cmp	r4, r3
d03c0f12:	dd00      	ble.n	d03c0f16 <ui_scroll_vm+0x2a>
d03c0f14:	b21c      	sxth	r4, r3
d03c0f16:	702c      	strb	r4, [r5, #0]
d03c0f18:	bd38      	pop	{r3, r4, r5, pc}
d03c0f1a:	2400      	movs	r4, #0
d03c0f1c:	e7fb      	b.n	d03c0f16 <ui_scroll_vm+0x2a>
d03c0f1e:	bf00      	nop
d03c0f20:	d03cf591 	.word	0xd03cf591
d03c0f24:	d03ccd64 	.word	0xd03ccd64
d03c0f28:	d03cf3ca 	.word	0xd03cf3ca

d03c0f2c <ui_seq_tick_to_midi_tick>:
d03c0f2c:	b538      	push	{r3, r4, r5, lr}
d03c0f2e:	4601      	mov	r1, r0
d03c0f30:	2500      	movs	r5, #0
d03c0f32:	f7ff fe2b 	bl	d03c0b8c <seq_beat_ticks>
d03c0f36:	2300      	movs	r3, #0
d03c0f38:	0844      	lsrs	r4, r0, #1
d03c0f3a:	b282      	uxth	r2, r0
d03c0f3c:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d03c0f40:	fbe0 4501 	umlal	r4, r5, r0, r1
d03c0f44:	4620      	mov	r0, r4
d03c0f46:	4629      	mov	r1, r5
d03c0f48:	f008 fb84 	bl	d03c9654 <__aeabi_uldivmod>
d03c0f4c:	bd38      	pop	{r3, r4, r5, pc}

d03c0f4e <ui_seq_note_end_midi_tick>:
d03c0f4e:	b570      	push	{r4, r5, r6, lr}
d03c0f50:	6806      	ldr	r6, [r0, #0]
d03c0f52:	4605      	mov	r5, r0
d03c0f54:	4630      	mov	r0, r6
d03c0f56:	f7ff ffe9 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0f5a:	4604      	mov	r4, r0
d03c0f5c:	6868      	ldr	r0, [r5, #4]
d03c0f5e:	4430      	add	r0, r6
d03c0f60:	f7ff ffe4 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0f64:	4284      	cmp	r4, r0
d03c0f66:	bf28      	it	cs
d03c0f68:	1c60      	addcs	r0, r4, #1
d03c0f6a:	bd70      	pop	{r4, r5, r6, pc}

d03c0f6c <ui_midi_find_next_time>:
d03c0f6c:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c0f70:	4b23      	ldr	r3, [pc, #140]	; (d03c1000 <ui_midi_find_next_time+0x94>)
d03c0f72:	4693      	mov	fp, r2
d03c0f74:	f04f 0900 	mov.w	r9, #0
d03c0f78:	4a22      	ldr	r2, [pc, #136]	; (d03c1004 <ui_midi_find_next_time+0x98>)
d03c0f7a:	4606      	mov	r6, r0
d03c0f7c:	468a      	mov	sl, r1
d03c0f7e:	681b      	ldr	r3, [r3, #0]
d03c0f80:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c0f84:	f8d2 8000 	ldr.w	r8, [r2]
d03c0f88:	464f      	mov	r7, r9
d03c0f8a:	454b      	cmp	r3, r9
d03c0f8c:	d106      	bne.n	d03c0f9c <ui_midi_find_next_time+0x30>
d03c0f8e:	b10f      	cbz	r7, d03c0f94 <ui_midi_find_next_time+0x28>
d03c0f90:	f8cb 5000 	str.w	r5, [fp]
d03c0f94:	4638      	mov	r0, r7
d03c0f96:	b003      	add	sp, #12
d03c0f98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c0f9c:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c0fa0:	b1ba      	cbz	r2, d03c0fd2 <ui_midi_find_next_time+0x66>
d03c0fa2:	f8d8 0000 	ldr.w	r0, [r8]
d03c0fa6:	9301      	str	r3, [sp, #4]
d03c0fa8:	f7ff ffc0 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c0fac:	4604      	mov	r4, r0
d03c0fae:	4640      	mov	r0, r8
d03c0fb0:	f7ff ffcd 	bl	d03c0f4e <ui_seq_note_end_midi_tick>
d03c0fb4:	9b01      	ldr	r3, [sp, #4]
d03c0fb6:	f1ba 0f00 	cmp.w	sl, #0
d03c0fba:	d00f      	beq.n	d03c0fdc <ui_midi_find_next_time+0x70>
d03c0fbc:	42b4      	cmp	r4, r6
d03c0fbe:	d214      	bcs.n	d03c0fea <ui_midi_find_next_time+0x7e>
d03c0fc0:	42b0      	cmp	r0, r6
d03c0fc2:	bf34      	ite	cc
d03c0fc4:	2200      	movcc	r2, #0
d03c0fc6:	2201      	movcs	r2, #1
d03c0fc8:	b11a      	cbz	r2, d03c0fd2 <ui_midi_find_next_time+0x66>
d03c0fca:	42a8      	cmp	r0, r5
d03c0fcc:	bf3c      	itt	cc
d03c0fce:	4605      	movcc	r5, r0
d03c0fd0:	2701      	movcc	r7, #1
d03c0fd2:	f109 0901 	add.w	r9, r9, #1
d03c0fd6:	f108 0810 	add.w	r8, r8, #16
d03c0fda:	e7d6      	b.n	d03c0f8a <ui_midi_find_next_time+0x1e>
d03c0fdc:	42b4      	cmp	r4, r6
d03c0fde:	d809      	bhi.n	d03c0ff4 <ui_midi_find_next_time+0x88>
d03c0fe0:	42b0      	cmp	r0, r6
d03c0fe2:	bf94      	ite	ls
d03c0fe4:	2200      	movls	r2, #0
d03c0fe6:	2201      	movhi	r2, #1
d03c0fe8:	e7ee      	b.n	d03c0fc8 <ui_midi_find_next_time+0x5c>
d03c0fea:	42a5      	cmp	r5, r4
d03c0fec:	d9e8      	bls.n	d03c0fc0 <ui_midi_find_next_time+0x54>
d03c0fee:	4625      	mov	r5, r4
d03c0ff0:	4657      	mov	r7, sl
d03c0ff2:	e7e5      	b.n	d03c0fc0 <ui_midi_find_next_time+0x54>
d03c0ff4:	42a5      	cmp	r5, r4
d03c0ff6:	d9f3      	bls.n	d03c0fe0 <ui_midi_find_next_time+0x74>
d03c0ff8:	4625      	mov	r5, r4
d03c0ffa:	2701      	movs	r7, #1
d03c0ffc:	e7f0      	b.n	d03c0fe0 <ui_midi_find_next_time+0x74>
d03c0ffe:	bf00      	nop
d03c1000:	d03ccfd4 	.word	0xd03ccfd4
d03c1004:	d03ccfd8 	.word	0xd03ccfd8

d03c1008 <ui_midi_import_tick_to_seq>:
d03c1008:	b570      	push	{r4, r5, r6, lr}
d03c100a:	4606      	mov	r6, r0
d03c100c:	f7ff fdbe 	bl	d03c0b8c <seq_beat_ticks>
d03c1010:	b20b      	sxth	r3, r1
d03c1012:	2500      	movs	r5, #0
d03c1014:	2b00      	cmp	r3, #0
d03c1016:	f04f 0300 	mov.w	r3, #0
d03c101a:	bfd8      	it	le
d03c101c:	f44f 71f0 	movle.w	r1, #480	; 0x1e0
d03c1020:	084c      	lsrs	r4, r1, #1
d03c1022:	460a      	mov	r2, r1
d03c1024:	b2a4      	uxth	r4, r4
d03c1026:	fbe0 4506 	umlal	r4, r5, r0, r6
d03c102a:	4620      	mov	r0, r4
d03c102c:	4629      	mov	r1, r5
d03c102e:	f008 fb11 	bl	d03c9654 <__aeabi_uldivmod>
d03c1032:	bd70      	pop	{r4, r5, r6, pc}

d03c1034 <ui_midi_import_close_open_notes>:
d03c1034:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c1038:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d03c103c:	4e17      	ldr	r6, [pc, #92]	; (d03c109c <ui_midi_import_close_open_notes+0x68>)
d03c103e:	f7ff ffe3 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c1042:	4b17      	ldr	r3, [pc, #92]	; (d03c10a0 <ui_midi_import_close_open_notes+0x6c>)
d03c1044:	2110      	movs	r1, #16
d03c1046:	f64f 7cff 	movw	ip, #65535	; 0xffff
d03c104a:	f8d3 e000 	ldr.w	lr, [r3]
d03c104e:	4b15      	ldr	r3, [pc, #84]	; (d03c10a4 <ui_midi_import_close_open_notes+0x70>)
d03c1050:	681f      	ldr	r7, [r3, #0]
d03c1052:	4635      	mov	r5, r6
d03c1054:	2200      	movs	r2, #0
d03c1056:	f835 3b02 	ldrh.w	r3, [r5], #2
d03c105a:	4563      	cmp	r3, ip
d03c105c:	d011      	beq.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c105e:	4573      	cmp	r3, lr
d03c1060:	d20f      	bcs.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c1062:	011c      	lsls	r4, r3, #4
d03c1064:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d03c1068:	f893 800d 	ldrb.w	r8, [r3, #13]
d03c106c:	f1b8 0f00 	cmp.w	r8, #0
d03c1070:	d007      	beq.n	d03c1082 <ui_midi_import_close_open_notes+0x4e>
d03c1072:	593c      	ldr	r4, [r7, r4]
d03c1074:	4284      	cmp	r4, r0
d03c1076:	bf34      	ite	cc
d03c1078:	1b04      	subcc	r4, r0, r4
d03c107a:	2401      	movcs	r4, #1
d03c107c:	605c      	str	r4, [r3, #4]
d03c107e:	f825 cc02 	strh.w	ip, [r5, #-2]
d03c1082:	3201      	adds	r2, #1
d03c1084:	b2d2      	uxtb	r2, r2
d03c1086:	2a80      	cmp	r2, #128	; 0x80
d03c1088:	d1e5      	bne.n	d03c1056 <ui_midi_import_close_open_notes+0x22>
d03c108a:	3901      	subs	r1, #1
d03c108c:	f506 7680 	add.w	r6, r6, #256	; 0x100
d03c1090:	f011 01ff 	ands.w	r1, r1, #255	; 0xff
d03c1094:	d1dd      	bne.n	d03c1052 <ui_midi_import_close_open_notes+0x1e>
d03c1096:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c109a:	bf00      	nop
d03c109c:	d03ce31e 	.word	0xd03ce31e
d03c10a0:	d03ccfd4 	.word	0xd03ccfd4
d03c10a4:	d03ccfd8 	.word	0xd03ccfd8

d03c10a8 <ui_draw_cursor>:
d03c10a8:	4b6b      	ldr	r3, [pc, #428]	; (d03c1258 <ui_draw_cursor+0x1b0>)
d03c10aa:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c10ae:	f9b3 8000 	ldrsh.w	r8, [r3]
d03c10b2:	4b6a      	ldr	r3, [pc, #424]	; (d03c125c <ui_draw_cursor+0x1b4>)
d03c10b4:	4c6a      	ldr	r4, [pc, #424]	; (d03c1260 <ui_draw_cursor+0x1b8>)
d03c10b6:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d03c10ba:	f9b3 6000 	ldrsh.w	r6, [r3]
d03c10be:	4b69      	ldr	r3, [pc, #420]	; (d03c1264 <ui_draw_cursor+0x1bc>)
d03c10c0:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d03c10c4:	781b      	ldrb	r3, [r3, #0]
d03c10c6:	2b00      	cmp	r3, #0
d03c10c8:	7b23      	ldrb	r3, [r4, #12]
d03c10ca:	7b62      	ldrb	r2, [r4, #13]
d03c10cc:	bf14      	ite	ne
d03c10ce:	20f2      	movne	r0, #242	; 0xf2
d03c10d0:	20f1      	moveq	r0, #241	; 0xf1
d03c10d2:	f5b8 7fec 	cmp.w	r8, #472	; 0x1d8
d03c10d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c10da:	7ba2      	ldrb	r2, [r4, #14]
d03c10dc:	bfa8      	it	ge
d03c10de:	f44f 78ec 	movge.w	r8, #472	; 0x1d8
d03c10e2:	f5b6 7f9b 	cmp.w	r6, #310	; 0x136
d03c10e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c10ea:	7be2      	ldrb	r2, [r4, #15]
d03c10ec:	bfa8      	it	ge
d03c10ee:	f44f 769b 	movge.w	r6, #310	; 0x136
d03c10f2:	fa1f fa88 	uxth.w	sl, r8
d03c10f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c10fa:	b2b7      	uxth	r7, r6
d03c10fc:	f10a 0514 	add.w	r5, sl, #20
d03c1100:	685b      	ldr	r3, [r3, #4]
d03c1102:	b2ad      	uxth	r5, r5
d03c1104:	46b9      	mov	r9, r7
d03c1106:	68db      	ldr	r3, [r3, #12]
d03c1108:	4798      	blx	r3
d03c110a:	7b22      	ldrb	r2, [r4, #12]
d03c110c:	4640      	mov	r0, r8
d03c110e:	7b63      	ldrb	r3, [r4, #13]
d03c1110:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c1114:	7ba3      	ldrb	r3, [r4, #14]
d03c1116:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c111a:	7be3      	ldrb	r3, [r4, #15]
d03c111c:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c1120:	fa0f f389 	sxth.w	r3, r9
d03c1124:	f109 0901 	add.w	r9, r9, #1
d03c1128:	6852      	ldr	r2, [r2, #4]
d03c112a:	4619      	mov	r1, r3
d03c112c:	fa1f f989 	uxth.w	r9, r9
d03c1130:	f8d2 b040 	ldr.w	fp, [r2, #64]	; 0x40
d03c1134:	b22a      	sxth	r2, r5
d03c1136:	3d01      	subs	r5, #1
d03c1138:	47d8      	blx	fp
d03c113a:	b2ad      	uxth	r5, r5
d03c113c:	4555      	cmp	r5, sl
d03c113e:	d1e4      	bne.n	d03c110a <ui_draw_cursor+0x62>
d03c1140:	7b23      	ldrb	r3, [r4, #12]
d03c1142:	20f0      	movs	r0, #240	; 0xf0
d03c1144:	7b62      	ldrb	r2, [r4, #13]
d03c1146:	f105 0916 	add.w	r9, r5, #22
d03c114a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c114e:	7ba2      	ldrb	r2, [r4, #14]
d03c1150:	fa0f f989 	sxth.w	r9, r9
d03c1154:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1158:	7be2      	ldrb	r2, [r4, #15]
d03c115a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c115e:	685b      	ldr	r3, [r3, #4]
d03c1160:	68db      	ldr	r3, [r3, #12]
d03c1162:	4798      	blx	r3
d03c1164:	7b23      	ldrb	r3, [r4, #12]
d03c1166:	7b62      	ldrb	r2, [r4, #13]
d03c1168:	4631      	mov	r1, r6
d03c116a:	4640      	mov	r0, r8
d03c116c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1170:	7ba2      	ldrb	r2, [r4, #14]
d03c1172:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1176:	7be2      	ldrb	r2, [r4, #15]
d03c1178:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c117c:	464a      	mov	r2, r9
d03c117e:	685b      	ldr	r3, [r3, #4]
d03c1180:	f8d3 a040 	ldr.w	sl, [r3, #64]	; 0x40
d03c1184:	4633      	mov	r3, r6
d03c1186:	47d0      	blx	sl
d03c1188:	7b22      	ldrb	r2, [r4, #12]
d03c118a:	7b63      	ldrb	r3, [r4, #13]
d03c118c:	4640      	mov	r0, r8
d03c118e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c1192:	7ba3      	ldrb	r3, [r4, #14]
d03c1194:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c1198:	7be3      	ldrb	r3, [r4, #15]
d03c119a:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c119e:	1c7b      	adds	r3, r7, #1
d03c11a0:	6852      	ldr	r2, [r2, #4]
d03c11a2:	b21b      	sxth	r3, r3
d03c11a4:	f8d2 a040 	ldr.w	sl, [r2, #64]	; 0x40
d03c11a8:	4619      	mov	r1, r3
d03c11aa:	464a      	mov	r2, r9
d03c11ac:	47d0      	blx	sl
d03c11ae:	7b22      	ldrb	r2, [r4, #12]
d03c11b0:	7b63      	ldrb	r3, [r4, #13]
d03c11b2:	4631      	mov	r1, r6
d03c11b4:	4640      	mov	r0, r8
d03c11b6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c11ba:	7ba3      	ldrb	r3, [r4, #14]
d03c11bc:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c11c0:	7be3      	ldrb	r3, [r4, #15]
d03c11c2:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c11c6:	f107 0316 	add.w	r3, r7, #22
d03c11ca:	6852      	ldr	r2, [r2, #4]
d03c11cc:	b21b      	sxth	r3, r3
d03c11ce:	f8d2 a040 	ldr.w	sl, [r2, #64]	; 0x40
d03c11d2:	4642      	mov	r2, r8
d03c11d4:	9300      	str	r3, [sp, #0]
d03c11d6:	47d0      	blx	sl
d03c11d8:	7b21      	ldrb	r1, [r4, #12]
d03c11da:	7b62      	ldrb	r2, [r4, #13]
d03c11dc:	9b00      	ldr	r3, [sp, #0]
d03c11de:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03c11e2:	7ba2      	ldrb	r2, [r4, #14]
d03c11e4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
d03c11e8:	7be2      	ldrb	r2, [r4, #15]
d03c11ea:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d03c11ee:	1c6a      	adds	r2, r5, #1
d03c11f0:	6849      	ldr	r1, [r1, #4]
d03c11f2:	b212      	sxth	r2, r2
d03c11f4:	f8d1 8040 	ldr.w	r8, [r1, #64]	; 0x40
d03c11f8:	4610      	mov	r0, r2
d03c11fa:	4631      	mov	r1, r6
d03c11fc:	9201      	str	r2, [sp, #4]
d03c11fe:	47c0      	blx	r8
d03c1200:	7b21      	ldrb	r1, [r4, #12]
d03c1202:	7b63      	ldrb	r3, [r4, #13]
d03c1204:	f105 0015 	add.w	r0, r5, #21
d03c1208:	9a01      	ldr	r2, [sp, #4]
d03c120a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d03c120e:	7ba3      	ldrb	r3, [r4, #14]
d03c1210:	b200      	sxth	r0, r0
d03c1212:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c1216:	7be3      	ldrb	r3, [r4, #15]
d03c1218:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d03c121c:	f107 0314 	add.w	r3, r7, #20
d03c1220:	6849      	ldr	r1, [r1, #4]
d03c1222:	b21b      	sxth	r3, r3
d03c1224:	6c0f      	ldr	r7, [r1, #64]	; 0x40
d03c1226:	4631      	mov	r1, r6
d03c1228:	9300      	str	r3, [sp, #0]
d03c122a:	47b8      	blx	r7
d03c122c:	7b21      	ldrb	r1, [r4, #12]
d03c122e:	4648      	mov	r0, r9
d03c1230:	7b62      	ldrb	r2, [r4, #13]
d03c1232:	9b00      	ldr	r3, [sp, #0]
d03c1234:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d03c1238:	7ba2      	ldrb	r2, [r4, #14]
d03c123a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
d03c123e:	7be2      	ldrb	r2, [r4, #15]
d03c1240:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d03c1244:	1caa      	adds	r2, r5, #2
d03c1246:	6849      	ldr	r1, [r1, #4]
d03c1248:	b212      	sxth	r2, r2
d03c124a:	6c0c      	ldr	r4, [r1, #64]	; 0x40
d03c124c:	4631      	mov	r1, r6
d03c124e:	46a4      	mov	ip, r4
d03c1250:	b003      	add	sp, #12
d03c1252:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1256:	4760      	bx	ip
d03c1258:	d03cf394 	.word	0xd03cf394
d03c125c:	d03cf396 	.word	0xd03cf396
d03c1260:	2001f000 	.word	0x2001f000
d03c1264:	d03ce31c 	.word	0xd03ce31c

d03c1268 <ui_hash_step>:
d03c1268:	4b03      	ldr	r3, [pc, #12]	; (d03c1278 <ui_hash_step+0x10>)
d03c126a:	440b      	add	r3, r1
d03c126c:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d03c1270:	eb03 0390 	add.w	r3, r3, r0, lsr #2
d03c1274:	4058      	eors	r0, r3
d03c1276:	4770      	bx	lr
d03c1278:	9e3779b9 	.word	0x9e3779b9

d03c127c <seq_clear_note_storage>:
d03c127c:	b508      	push	{r3, lr}
d03c127e:	4b09      	ldr	r3, [pc, #36]	; (d03c12a4 <seq_clear_note_storage+0x28>)
d03c1280:	6818      	ldr	r0, [r3, #0]
d03c1282:	b130      	cbz	r0, d03c1292 <seq_clear_note_storage+0x16>
d03c1284:	4b08      	ldr	r3, [pc, #32]	; (d03c12a8 <seq_clear_note_storage+0x2c>)
d03c1286:	681a      	ldr	r2, [r3, #0]
d03c1288:	b11a      	cbz	r2, d03c1292 <seq_clear_note_storage+0x16>
d03c128a:	0112      	lsls	r2, r2, #4
d03c128c:	2100      	movs	r1, #0
d03c128e:	f008 fb8f 	bl	d03c99b0 <memset>
d03c1292:	4b06      	ldr	r3, [pc, #24]	; (d03c12ac <seq_clear_note_storage+0x30>)
d03c1294:	2200      	movs	r2, #0
d03c1296:	601a      	str	r2, [r3, #0]
d03c1298:	f7ff fcc4 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c129c:	4b04      	ldr	r3, [pc, #16]	; (d03c12b0 <seq_clear_note_storage+0x34>)
d03c129e:	2201      	movs	r2, #1
d03c12a0:	701a      	strb	r2, [r3, #0]
d03c12a2:	bd08      	pop	{r3, pc}
d03c12a4:	d03ccfd8 	.word	0xd03ccfd8
d03c12a8:	d03ccfd0 	.word	0xd03ccfd0
d03c12ac:	d03ccfdc 	.word	0xd03ccfdc
d03c12b0:	d03cf3cb 	.word	0xd03cf3cb

d03c12b4 <ui_vm_editor_clear_ram_patch>:
d03c12b4:	4b0f      	ldr	r3, [pc, #60]	; (d03c12f4 <ui_vm_editor_clear_ram_patch+0x40>)
d03c12b6:	4810      	ldr	r0, [pc, #64]	; (d03c12f8 <ui_vm_editor_clear_ram_patch+0x44>)
d03c12b8:	b430      	push	{r4, r5}
d03c12ba:	781a      	ldrb	r2, [r3, #0]
d03c12bc:	2aff      	cmp	r2, #255	; 0xff
d03c12be:	d008      	beq.n	d03c12d2 <ui_vm_editor_clear_ram_patch+0x1e>
d03c12c0:	490e      	ldr	r1, [pc, #56]	; (d03c12fc <ui_vm_editor_clear_ram_patch+0x48>)
d03c12c2:	4c0f      	ldr	r4, [pc, #60]	; (d03c1300 <ui_vm_editor_clear_ram_patch+0x4c>)
d03c12c4:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
d03c12c8:	42a5      	cmp	r5, r4
d03c12ca:	bf04      	itt	eq
d03c12cc:	6804      	ldreq	r4, [r0, #0]
d03c12ce:	f841 4022 	streq.w	r4, [r1, r2, lsl #2]
d03c12d2:	2100      	movs	r1, #0
d03c12d4:	4a0b      	ldr	r2, [pc, #44]	; (d03c1304 <ui_vm_editor_clear_ram_patch+0x50>)
d03c12d6:	7011      	strb	r1, [r2, #0]
d03c12d8:	22ff      	movs	r2, #255	; 0xff
d03c12da:	6001      	str	r1, [r0, #0]
d03c12dc:	701a      	strb	r2, [r3, #0]
d03c12de:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c12e2:	4b09      	ldr	r3, [pc, #36]	; (d03c1308 <ui_vm_editor_clear_ram_patch+0x54>)
d03c12e4:	4806      	ldr	r0, [pc, #24]	; (d03c1300 <ui_vm_editor_clear_ram_patch+0x4c>)
d03c12e6:	7019      	strb	r1, [r3, #0]
d03c12e8:	4b08      	ldr	r3, [pc, #32]	; (d03c130c <ui_vm_editor_clear_ram_patch+0x58>)
d03c12ea:	7019      	strb	r1, [r3, #0]
d03c12ec:	bc30      	pop	{r4, r5}
d03c12ee:	f008 bb5f 	b.w	d03c99b0 <memset>
d03c12f2:	bf00      	nop
d03c12f4:	d03cf588 	.word	0xd03cf588
d03c12f8:	d03cf584 	.word	0xd03cf584
d03c12fc:	d03cc670 	.word	0xd03cc670
d03c1300:	d03cf402 	.word	0xd03cf402
d03c1304:	d03cf583 	.word	0xd03cf583
d03c1308:	d03cf589 	.word	0xd03cf589
d03c130c:	d03cf582 	.word	0xd03cf582

d03c1310 <seq_reserve_notes>:
d03c1310:	4b31      	ldr	r3, [pc, #196]	; (d03c13d8 <seq_reserve_notes+0xc8>)
d03c1312:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1316:	681c      	ldr	r4, [r3, #0]
d03c1318:	4698      	mov	r8, r3
d03c131a:	4284      	cmp	r4, r0
d03c131c:	d25a      	bcs.n	d03c13d4 <seq_reserve_notes+0xc4>
d03c131e:	2c00      	cmp	r4, #0
d03c1320:	bf08      	it	eq
d03c1322:	f44f 7400 	moveq.w	r4, #512	; 0x200
d03c1326:	4284      	cmp	r4, r0
d03c1328:	d20e      	bcs.n	d03c1348 <seq_reserve_notes+0x38>
d03c132a:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d03c132e:	d303      	bcc.n	d03c1338 <seq_reserve_notes+0x28>
d03c1330:	2000      	movs	r0, #0
d03c1332:	b003      	add	sp, #12
d03c1334:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c1338:	f504 7400 	add.w	r4, r4, #512	; 0x200
d03c133c:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d03c1340:	bf28      	it	cs
d03c1342:	f44f 5400 	movcs.w	r4, #8192	; 0x2000
d03c1346:	e7ee      	b.n	d03c1326 <seq_reserve_notes+0x16>
d03c1348:	ea4f 1904 	mov.w	r9, r4, lsl #4
d03c134c:	4648      	mov	r0, r9
d03c134e:	f008 fb03 	bl	d03c9958 <malloc>
d03c1352:	4606      	mov	r6, r0
d03c1354:	2800      	cmp	r0, #0
d03c1356:	d0eb      	beq.n	d03c1330 <seq_reserve_notes+0x20>
d03c1358:	0065      	lsls	r5, r4, #1
d03c135a:	4628      	mov	r0, r5
d03c135c:	f008 fafc 	bl	d03c9958 <malloc>
d03c1360:	4607      	mov	r7, r0
d03c1362:	b918      	cbnz	r0, d03c136c <seq_reserve_notes+0x5c>
d03c1364:	4630      	mov	r0, r6
d03c1366:	f008 faff 	bl	d03c9968 <free>
d03c136a:	e7e1      	b.n	d03c1330 <seq_reserve_notes+0x20>
d03c136c:	4628      	mov	r0, r5
d03c136e:	f008 faf3 	bl	d03c9958 <malloc>
d03c1372:	4605      	mov	r5, r0
d03c1374:	b918      	cbnz	r0, d03c137e <seq_reserve_notes+0x6e>
d03c1376:	4638      	mov	r0, r7
d03c1378:	f008 faf6 	bl	d03c9968 <free>
d03c137c:	e7f2      	b.n	d03c1364 <seq_reserve_notes+0x54>
d03c137e:	2100      	movs	r1, #0
d03c1380:	464a      	mov	r2, r9
d03c1382:	4630      	mov	r0, r6
d03c1384:	f008 fb14 	bl	d03c99b0 <memset>
d03c1388:	4b14      	ldr	r3, [pc, #80]	; (d03c13dc <seq_reserve_notes+0xcc>)
d03c138a:	6819      	ldr	r1, [r3, #0]
d03c138c:	469a      	mov	sl, r3
d03c138e:	b159      	cbz	r1, d03c13a8 <seq_reserve_notes+0x98>
d03c1390:	4b13      	ldr	r3, [pc, #76]	; (d03c13e0 <seq_reserve_notes+0xd0>)
d03c1392:	681a      	ldr	r2, [r3, #0]
d03c1394:	b142      	cbz	r2, d03c13a8 <seq_reserve_notes+0x98>
d03c1396:	0112      	lsls	r2, r2, #4
d03c1398:	4630      	mov	r0, r6
d03c139a:	9101      	str	r1, [sp, #4]
d03c139c:	f008 fafa 	bl	d03c9994 <memcpy>
d03c13a0:	9901      	ldr	r1, [sp, #4]
d03c13a2:	4608      	mov	r0, r1
d03c13a4:	f008 fae0 	bl	d03c9968 <free>
d03c13a8:	4b0e      	ldr	r3, [pc, #56]	; (d03c13e4 <seq_reserve_notes+0xd4>)
d03c13aa:	6818      	ldr	r0, [r3, #0]
d03c13ac:	4699      	mov	r9, r3
d03c13ae:	b108      	cbz	r0, d03c13b4 <seq_reserve_notes+0xa4>
d03c13b0:	f008 fada 	bl	d03c9968 <free>
d03c13b4:	4b0c      	ldr	r3, [pc, #48]	; (d03c13e8 <seq_reserve_notes+0xd8>)
d03c13b6:	6818      	ldr	r0, [r3, #0]
d03c13b8:	469b      	mov	fp, r3
d03c13ba:	b108      	cbz	r0, d03c13c0 <seq_reserve_notes+0xb0>
d03c13bc:	f008 fad4 	bl	d03c9968 <free>
d03c13c0:	f8ca 6000 	str.w	r6, [sl]
d03c13c4:	f8c9 7000 	str.w	r7, [r9]
d03c13c8:	f8cb 5000 	str.w	r5, [fp]
d03c13cc:	f8c8 4000 	str.w	r4, [r8]
d03c13d0:	f7ff fc28 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c13d4:	2001      	movs	r0, #1
d03c13d6:	e7ac      	b.n	d03c1332 <seq_reserve_notes+0x22>
d03c13d8:	d03ccfd0 	.word	0xd03ccfd0
d03c13dc:	d03ccfd8 	.word	0xd03ccfd8
d03c13e0:	d03ccfd4 	.word	0xd03ccfd4
d03c13e4:	d03ccfe8 	.word	0xd03ccfe8
d03c13e8:	d03ccfe4 	.word	0xd03ccfe4

d03c13ec <ui_set_status>:
d03c13ec:	4a05      	ldr	r2, [pc, #20]	; (d03c1404 <ui_set_status+0x18>)
d03c13ee:	2128      	movs	r1, #40	; 0x28
d03c13f0:	b508      	push	{r3, lr}
d03c13f2:	4603      	mov	r3, r0
d03c13f4:	4804      	ldr	r0, [pc, #16]	; (d03c1408 <ui_set_status+0x1c>)
d03c13f6:	f008 fde5 	bl	d03c9fc4 <sniprintf>
d03c13fa:	4b04      	ldr	r3, [pc, #16]	; (d03c140c <ui_set_status+0x20>)
d03c13fc:	225a      	movs	r2, #90	; 0x5a
d03c13fe:	701a      	strb	r2, [r3, #0]
d03c1400:	bd08      	pop	{r3, pc}
d03c1402:	bf00      	nop
d03c1404:	d03cb9a4 	.word	0xd03cb9a4
d03c1408:	d03cf3d8 	.word	0xd03cf3d8
d03c140c:	d03cf400 	.word	0xd03cf400

d03c1410 <ui_file_add_entry>:
d03c1410:	b570      	push	{r4, r5, r6, lr}
d03c1412:	4c0a      	ldr	r4, [pc, #40]	; (d03c143c <ui_file_add_entry+0x2c>)
d03c1414:	4603      	mov	r3, r0
d03c1416:	460d      	mov	r5, r1
d03c1418:	7820      	ldrb	r0, [r4, #0]
d03c141a:	283f      	cmp	r0, #63	; 0x3f
d03c141c:	d80d      	bhi.n	d03c143a <ui_file_add_entry+0x2a>
d03c141e:	781a      	ldrb	r2, [r3, #0]
d03c1420:	b15a      	cbz	r2, d03c143a <ui_file_add_entry+0x2a>
d03c1422:	4e07      	ldr	r6, [pc, #28]	; (d03c1440 <ui_file_add_entry+0x30>)
d03c1424:	2120      	movs	r1, #32
d03c1426:	4a07      	ldr	r2, [pc, #28]	; (d03c1444 <ui_file_add_entry+0x34>)
d03c1428:	eb06 1040 	add.w	r0, r6, r0, lsl #5
d03c142c:	f008 fdca 	bl	d03c9fc4 <sniprintf>
d03c1430:	7823      	ldrb	r3, [r4, #0]
d03c1432:	4a05      	ldr	r2, [pc, #20]	; (d03c1448 <ui_file_add_entry+0x38>)
d03c1434:	54d5      	strb	r5, [r2, r3]
d03c1436:	3301      	adds	r3, #1
d03c1438:	7023      	strb	r3, [r4, #0]
d03c143a:	bd70      	pop	{r4, r5, r6, pc}
d03c143c:	d03cda78 	.word	0xd03cda78
d03c1440:	d03cdb19 	.word	0xd03cdb19
d03c1444:	d03cb9a4 	.word	0xd03cb9a4
d03c1448:	d03cdad9 	.word	0xd03cdad9

d03c144c <ui_draw_seq_overlay>:
d03c144c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1450:	f04f 0800 	mov.w	r8, #0
d03c1454:	b091      	sub	sp, #68	; 0x44
d03c1456:	4e90      	ldr	r6, [pc, #576]	; (d03c1698 <ui_draw_seq_overlay+0x24c>)
d03c1458:	f04f 0bb0 	mov.w	fp, #176	; 0xb0
d03c145c:	4647      	mov	r7, r8
d03c145e:	4c8f      	ldr	r4, [pc, #572]	; (d03c169c <ui_draw_seq_overlay+0x250>)
d03c1460:	f8df a250 	ldr.w	sl, [pc, #592]	; d03c16b4 <ui_draw_seq_overlay+0x268>
d03c1464:	7833      	ldrb	r3, [r6, #0]
d03c1466:	2b00      	cmp	r3, #0
d03c1468:	d078      	beq.n	d03c155c <ui_draw_seq_overlay+0x110>
d03c146a:	7973      	ldrb	r3, [r6, #5]
d03c146c:	2b01      	cmp	r3, #1
d03c146e:	d175      	bne.n	d03c155c <ui_draw_seq_overlay+0x110>
d03c1470:	78b5      	ldrb	r5, [r6, #2]
d03c1472:	f04f 0930 	mov.w	r9, #48	; 0x30
d03c1476:	200f      	movs	r0, #15
d03c1478:	2d54      	cmp	r5, #84	; 0x54
d03c147a:	bf28      	it	cs
d03c147c:	2554      	movcs	r5, #84	; 0x54
d03c147e:	2d24      	cmp	r5, #36	; 0x24
d03c1480:	bf38      	it	cc
d03c1482:	2524      	movcc	r5, #36	; 0x24
d03c1484:	3d24      	subs	r5, #36	; 0x24
d03c1486:	b2ad      	uxth	r5, r5
d03c1488:	fb0b f505 	mul.w	r5, fp, r5
d03c148c:	fbb5 f5f9 	udiv	r5, r5, r9
d03c1490:	b2ab      	uxth	r3, r5
d03c1492:	9303      	str	r3, [sp, #12]
d03c1494:	7b23      	ldrb	r3, [r4, #12]
d03c1496:	7b62      	ldrb	r2, [r4, #13]
d03c1498:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c149c:	7ba2      	ldrb	r2, [r4, #14]
d03c149e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14a2:	7be2      	ldrb	r2, [r4, #15]
d03c14a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14a8:	685b      	ldr	r3, [r3, #4]
d03c14aa:	68db      	ldr	r3, [r3, #12]
d03c14ac:	4798      	blx	r3
d03c14ae:	7b23      	ldrb	r3, [r4, #12]
d03c14b0:	7b62      	ldrb	r2, [r4, #13]
d03c14b2:	20e8      	movs	r0, #232	; 0xe8
d03c14b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c14b8:	7ba2      	ldrb	r2, [r4, #14]
d03c14ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14be:	7be2      	ldrb	r2, [r4, #15]
d03c14c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14c4:	9a03      	ldr	r2, [sp, #12]
d03c14c6:	685b      	ldr	r3, [r3, #4]
d03c14c8:	f1c2 01f2 	rsb	r1, r2, #242	; 0xf2
d03c14cc:	685b      	ldr	r3, [r3, #4]
d03c14ce:	b209      	sxth	r1, r1
d03c14d0:	461d      	mov	r5, r3
d03c14d2:	230a      	movs	r3, #10
d03c14d4:	461a      	mov	r2, r3
d03c14d6:	47a8      	blx	r5
d03c14d8:	7b23      	ldrb	r3, [r4, #12]
d03c14da:	7b62      	ldrb	r2, [r4, #13]
d03c14dc:	7870      	ldrb	r0, [r6, #1]
d03c14de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c14e2:	7ba2      	ldrb	r2, [r4, #14]
d03c14e4:	f000 0007 	and.w	r0, r0, #7
d03c14e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c14ec:	7be2      	ldrb	r2, [r4, #15]
d03c14ee:	3020      	adds	r0, #32
d03c14f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c14f4:	685b      	ldr	r3, [r3, #4]
d03c14f6:	68db      	ldr	r3, [r3, #12]
d03c14f8:	4798      	blx	r3
d03c14fa:	7b23      	ldrb	r3, [r4, #12]
d03c14fc:	7b62      	ldrb	r2, [r4, #13]
d03c14fe:	20e9      	movs	r0, #233	; 0xe9
d03c1500:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1504:	7ba2      	ldrb	r2, [r4, #14]
d03c1506:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c150a:	7be2      	ldrb	r2, [r4, #15]
d03c150c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1510:	9a03      	ldr	r2, [sp, #12]
d03c1512:	685b      	ldr	r3, [r3, #4]
d03c1514:	f1c2 01f3 	rsb	r1, r2, #243	; 0xf3
d03c1518:	685d      	ldr	r5, [r3, #4]
d03c151a:	2308      	movs	r3, #8
d03c151c:	b209      	sxth	r1, r1
d03c151e:	461a      	mov	r2, r3
d03c1520:	47a8      	blx	r5
d03c1522:	7873      	ldrb	r3, [r6, #1]
d03c1524:	4652      	mov	r2, sl
d03c1526:	4649      	mov	r1, r9
d03c1528:	3301      	adds	r3, #1
d03c152a:	a804      	add	r0, sp, #16
d03c152c:	9300      	str	r3, [sp, #0]
d03c152e:	78b3      	ldrb	r3, [r6, #2]
d03c1530:	f008 fd48 	bl	d03c9fc4 <sniprintf>
d03c1534:	7b23      	ldrb	r3, [r4, #12]
d03c1536:	7b62      	ldrb	r2, [r4, #13]
d03c1538:	f107 0148 	add.w	r1, r7, #72	; 0x48
d03c153c:	3710      	adds	r7, #16
d03c153e:	f44f 70be 	mov.w	r0, #380	; 0x17c
d03c1542:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1546:	7ba2      	ldrb	r2, [r4, #14]
d03c1548:	b2ff      	uxtb	r7, r7
d03c154a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c154e:	7be2      	ldrb	r2, [r4, #15]
d03c1550:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1554:	aa04      	add	r2, sp, #16
d03c1556:	685b      	ldr	r3, [r3, #4]
d03c1558:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c155a:	4798      	blx	r3
d03c155c:	f108 0801 	add.w	r8, r8, #1
d03c1560:	3608      	adds	r6, #8
d03c1562:	f1b8 0f06 	cmp.w	r8, #6
d03c1566:	f47f af7d 	bne.w	d03c1464 <ui_draw_seq_overlay+0x18>
d03c156a:	4c4c      	ldr	r4, [pc, #304]	; (d03c169c <ui_draw_seq_overlay+0x250>)
d03c156c:	20f2      	movs	r0, #242	; 0xf2
d03c156e:	7b23      	ldrb	r3, [r4, #12]
d03c1570:	7b62      	ldrb	r2, [r4, #13]
d03c1572:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1576:	7ba2      	ldrb	r2, [r4, #14]
d03c1578:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c157c:	7be2      	ldrb	r2, [r4, #15]
d03c157e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c1582:	685b      	ldr	r3, [r3, #4]
d03c1584:	68db      	ldr	r3, [r3, #12]
d03c1586:	4798      	blx	r3
d03c1588:	7b23      	ldrb	r3, [r4, #12]
d03c158a:	7b62      	ldrb	r2, [r4, #13]
d03c158c:	2140      	movs	r1, #64	; 0x40
d03c158e:	20ec      	movs	r0, #236	; 0xec
d03c1590:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1594:	7ba2      	ldrb	r2, [r4, #14]
d03c1596:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c159a:	7be2      	ldrb	r2, [r4, #15]
d03c159c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15a0:	2202      	movs	r2, #2
d03c15a2:	685b      	ldr	r3, [r3, #4]
d03c15a4:	685d      	ldr	r5, [r3, #4]
d03c15a6:	23bc      	movs	r3, #188	; 0xbc
d03c15a8:	47a8      	blx	r5
d03c15aa:	7b23      	ldrb	r3, [r4, #12]
d03c15ac:	7b62      	ldrb	r2, [r4, #13]
d03c15ae:	20e8      	movs	r0, #232	; 0xe8
d03c15b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c15b4:	7ba2      	ldrb	r2, [r4, #14]
d03c15b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c15ba:	7be2      	ldrb	r2, [r4, #15]
d03c15bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15c0:	685b      	ldr	r3, [r3, #4]
d03c15c2:	68db      	ldr	r3, [r3, #12]
d03c15c4:	4798      	blx	r3
d03c15c6:	4b36      	ldr	r3, [pc, #216]	; (d03c16a0 <ui_draw_seq_overlay+0x254>)
d03c15c8:	2232      	movs	r2, #50	; 0x32
d03c15ca:	a804      	add	r0, sp, #16
d03c15cc:	6819      	ldr	r1, [r3, #0]
d03c15ce:	fbb1 f3f2 	udiv	r3, r1, r2
d03c15d2:	fb02 1213 	mls	r2, r2, r3, r1
d03c15d6:	2130      	movs	r1, #48	; 0x30
d03c15d8:	0052      	lsls	r2, r2, #1
d03c15da:	9200      	str	r2, [sp, #0]
d03c15dc:	4a31      	ldr	r2, [pc, #196]	; (d03c16a4 <ui_draw_seq_overlay+0x258>)
d03c15de:	f008 fcf1 	bl	d03c9fc4 <sniprintf>
d03c15e2:	7b23      	ldrb	r3, [r4, #12]
d03c15e4:	7b62      	ldrb	r2, [r4, #13]
d03c15e6:	212e      	movs	r1, #46	; 0x2e
d03c15e8:	20da      	movs	r0, #218	; 0xda
d03c15ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c15ee:	7ba2      	ldrb	r2, [r4, #14]
d03c15f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c15f4:	7be2      	ldrb	r2, [r4, #15]
d03c15f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c15fa:	aa04      	add	r2, sp, #16
d03c15fc:	685b      	ldr	r3, [r3, #4]
d03c15fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c1600:	4798      	blx	r3
d03c1602:	4b29      	ldr	r3, [pc, #164]	; (d03c16a8 <ui_draw_seq_overlay+0x25c>)
d03c1604:	781b      	ldrb	r3, [r3, #0]
d03c1606:	2b00      	cmp	r3, #0
d03c1608:	d043      	beq.n	d03c1692 <ui_draw_seq_overlay+0x246>
d03c160a:	4b28      	ldr	r3, [pc, #160]	; (d03c16ac <ui_draw_seq_overlay+0x260>)
d03c160c:	2130      	movs	r1, #48	; 0x30
d03c160e:	4a28      	ldr	r2, [pc, #160]	; (d03c16b0 <ui_draw_seq_overlay+0x264>)
d03c1610:	a804      	add	r0, sp, #16
d03c1612:	781b      	ldrb	r3, [r3, #0]
d03c1614:	f008 fcd6 	bl	d03c9fc4 <sniprintf>
d03c1618:	7b23      	ldrb	r3, [r4, #12]
d03c161a:	7b62      	ldrb	r2, [r4, #13]
d03c161c:	200d      	movs	r0, #13
d03c161e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1622:	7ba2      	ldrb	r2, [r4, #14]
d03c1624:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1628:	7be2      	ldrb	r2, [r4, #15]
d03c162a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c162e:	685b      	ldr	r3, [r3, #4]
d03c1630:	68db      	ldr	r3, [r3, #12]
d03c1632:	4798      	blx	r3
d03c1634:	7b23      	ldrb	r3, [r4, #12]
d03c1636:	7b62      	ldrb	r2, [r4, #13]
d03c1638:	2186      	movs	r1, #134	; 0x86
d03c163a:	20ca      	movs	r0, #202	; 0xca
d03c163c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1640:	7ba2      	ldrb	r2, [r4, #14]
d03c1642:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1646:	7be2      	ldrb	r2, [r4, #15]
d03c1648:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c164c:	2248      	movs	r2, #72	; 0x48
d03c164e:	685b      	ldr	r3, [r3, #4]
d03c1650:	685d      	ldr	r5, [r3, #4]
d03c1652:	2318      	movs	r3, #24
d03c1654:	47a8      	blx	r5
d03c1656:	7b23      	ldrb	r3, [r4, #12]
d03c1658:	7b62      	ldrb	r2, [r4, #13]
d03c165a:	200f      	movs	r0, #15
d03c165c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c1660:	7ba2      	ldrb	r2, [r4, #14]
d03c1662:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1666:	7be2      	ldrb	r2, [r4, #15]
d03c1668:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c166c:	685b      	ldr	r3, [r3, #4]
d03c166e:	68db      	ldr	r3, [r3, #12]
d03c1670:	4798      	blx	r3
d03c1672:	7b23      	ldrb	r3, [r4, #12]
d03c1674:	7b62      	ldrb	r2, [r4, #13]
d03c1676:	218a      	movs	r1, #138	; 0x8a
d03c1678:	20d0      	movs	r0, #208	; 0xd0
d03c167a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c167e:	7ba2      	ldrb	r2, [r4, #14]
d03c1680:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c1684:	7be2      	ldrb	r2, [r4, #15]
d03c1686:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c168a:	aa04      	add	r2, sp, #16
d03c168c:	685b      	ldr	r3, [r3, #4]
d03c168e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c1690:	4798      	blx	r3
d03c1692:	b011      	add	sp, #68	; 0x44
d03c1694:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c1698:	d03cd108 	.word	0xd03cd108
d03c169c:	2001f000 	.word	0x2001f000
d03c16a0:	d03cd100 	.word	0xd03cd100
d03c16a4:	d03cb359 	.word	0xd03cb359
d03c16a8:	d03ccfb4 	.word	0xd03ccfb4
d03c16ac:	d03ccfb8 	.word	0xd03ccfb8
d03c16b0:	d03cb363 	.word	0xd03cb363
d03c16b4:	d03cb34c 	.word	0xd03cb34c

d03c16b8 <sid_midi_all_notes_off_event>:
d03c16b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c16bc:	2500      	movs	r5, #0
d03c16be:	4606      	mov	r6, r0
d03c16c0:	4c0c      	ldr	r4, [pc, #48]	; (d03c16f4 <sid_midi_all_notes_off_event+0x3c>)
d03c16c2:	462f      	mov	r7, r5
d03c16c4:	f8df 8030 	ldr.w	r8, [pc, #48]	; d03c16f8 <sid_midi_all_notes_off_event+0x40>
d03c16c8:	7823      	ldrb	r3, [r4, #0]
d03c16ca:	b2e8      	uxtb	r0, r5
d03c16cc:	b163      	cbz	r3, d03c16e8 <sid_midi_all_notes_off_event+0x30>
d03c16ce:	7863      	ldrb	r3, [r4, #1]
d03c16d0:	42b3      	cmp	r3, r6
d03c16d2:	d109      	bne.n	d03c16e8 <sid_midi_all_notes_off_event+0x30>
d03c16d4:	f7fe fed4 	bl	d03c0480 <sid_voice_note_off>
d03c16d8:	f8d8 3000 	ldr.w	r3, [r8]
d03c16dc:	7027      	strb	r7, [r4, #0]
d03c16de:	3301      	adds	r3, #1
d03c16e0:	7167      	strb	r7, [r4, #5]
d03c16e2:	80e7      	strh	r7, [r4, #6]
d03c16e4:	f8c8 3000 	str.w	r3, [r8]
d03c16e8:	3501      	adds	r5, #1
d03c16ea:	3408      	adds	r4, #8
d03c16ec:	2d06      	cmp	r5, #6
d03c16ee:	d1eb      	bne.n	d03c16c8 <sid_midi_all_notes_off_event+0x10>
d03c16f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c16f4:	d03cd108 	.word	0xd03cd108
d03c16f8:	d03ccf98 	.word	0xd03ccf98

d03c16fc <midi_process_ui_requests>:
d03c16fc:	b538      	push	{r3, r4, r5, lr}
d03c16fe:	4b09      	ldr	r3, [pc, #36]	; (d03c1724 <midi_process_ui_requests+0x28>)
d03c1700:	681d      	ldr	r5, [r3, #0]
d03c1702:	b175      	cbz	r5, d03c1722 <midi_process_ui_requests+0x26>
d03c1704:	681a      	ldr	r2, [r3, #0]
d03c1706:	2400      	movs	r4, #0
d03c1708:	ea22 0205 	bic.w	r2, r2, r5
d03c170c:	601a      	str	r2, [r3, #0]
d03c170e:	fa25 f304 	lsr.w	r3, r5, r4
d03c1712:	b2e0      	uxtb	r0, r4
d03c1714:	07db      	lsls	r3, r3, #31
d03c1716:	d501      	bpl.n	d03c171c <midi_process_ui_requests+0x20>
d03c1718:	f7ff ffce 	bl	d03c16b8 <sid_midi_all_notes_off_event>
d03c171c:	3401      	adds	r4, #1
d03c171e:	2c10      	cmp	r4, #16
d03c1720:	d1f5      	bne.n	d03c170e <midi_process_ui_requests+0x12>
d03c1722:	bd38      	pop	{r3, r4, r5, pc}
d03c1724:	d03cd13c 	.word	0xd03cd13c

d03c1728 <sid_midi_all_notes_off_source>:
d03c1728:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c172c:	2500      	movs	r5, #0
d03c172e:	4606      	mov	r6, r0
d03c1730:	4c0e      	ldr	r4, [pc, #56]	; (d03c176c <sid_midi_all_notes_off_source+0x44>)
d03c1732:	462f      	mov	r7, r5
d03c1734:	f8df 8038 	ldr.w	r8, [pc, #56]	; d03c1770 <sid_midi_all_notes_off_source+0x48>
d03c1738:	7823      	ldrb	r3, [r4, #0]
d03c173a:	b2e8      	uxtb	r0, r5
d03c173c:	b183      	cbz	r3, d03c1760 <sid_midi_all_notes_off_source+0x38>
d03c173e:	7963      	ldrb	r3, [r4, #5]
d03c1740:	42b3      	cmp	r3, r6
d03c1742:	d10d      	bne.n	d03c1760 <sid_midi_all_notes_off_source+0x38>
d03c1744:	f7fe fe9c 	bl	d03c0480 <sid_voice_note_off>
d03c1748:	2e02      	cmp	r6, #2
d03c174a:	7027      	strb	r7, [r4, #0]
d03c174c:	bf18      	it	ne
d03c174e:	f8d8 3000 	ldrne.w	r3, [r8]
d03c1752:	7167      	strb	r7, [r4, #5]
d03c1754:	bf18      	it	ne
d03c1756:	3301      	addne	r3, #1
d03c1758:	80e7      	strh	r7, [r4, #6]
d03c175a:	bf18      	it	ne
d03c175c:	f8c8 3000 	strne.w	r3, [r8]
d03c1760:	3501      	adds	r5, #1
d03c1762:	3408      	adds	r4, #8
d03c1764:	2d06      	cmp	r5, #6
d03c1766:	d1e7      	bne.n	d03c1738 <sid_midi_all_notes_off_source+0x10>
d03c1768:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c176c:	d03cd108 	.word	0xd03cd108
d03c1770:	d03ccf98 	.word	0xd03ccf98

d03c1774 <midi_update_active_channel_volume>:
d03c1774:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c1776:	4606      	mov	r6, r0
d03c1778:	4c0a      	ldr	r4, [pc, #40]	; (d03c17a4 <midi_update_active_channel_volume+0x30>)
d03c177a:	2500      	movs	r5, #0
d03c177c:	7823      	ldrb	r3, [r4, #0]
d03c177e:	b2ef      	uxtb	r7, r5
d03c1780:	b153      	cbz	r3, d03c1798 <midi_update_active_channel_volume+0x24>
d03c1782:	7863      	ldrb	r3, [r4, #1]
d03c1784:	42b3      	cmp	r3, r6
d03c1786:	d107      	bne.n	d03c1798 <midi_update_active_channel_volume+0x24>
d03c1788:	78e1      	ldrb	r1, [r4, #3]
d03c178a:	4630      	mov	r0, r6
d03c178c:	f7ff f9bc 	bl	d03c0b08 <midi_effective_velocity>
d03c1790:	4601      	mov	r1, r0
d03c1792:	4638      	mov	r0, r7
d03c1794:	f7fe ff14 	bl	d03c05c0 <sid_voice_set_velocity>
d03c1798:	3501      	adds	r5, #1
d03c179a:	3408      	adds	r4, #8
d03c179c:	2d06      	cmp	r5, #6
d03c179e:	d1ed      	bne.n	d03c177c <midi_update_active_channel_volume+0x8>
d03c17a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c17a2:	bf00      	nop
d03c17a4:	d03cd108 	.word	0xd03cd108

d03c17a8 <midi_update_all_active_volume>:
d03c17a8:	b570      	push	{r4, r5, r6, lr}
d03c17aa:	4c09      	ldr	r4, [pc, #36]	; (d03c17d0 <midi_update_all_active_volume+0x28>)
d03c17ac:	2500      	movs	r5, #0
d03c17ae:	7823      	ldrb	r3, [r4, #0]
d03c17b0:	b2ee      	uxtb	r6, r5
d03c17b2:	b13b      	cbz	r3, d03c17c4 <midi_update_all_active_volume+0x1c>
d03c17b4:	78e1      	ldrb	r1, [r4, #3]
d03c17b6:	7860      	ldrb	r0, [r4, #1]
d03c17b8:	f7ff f9a6 	bl	d03c0b08 <midi_effective_velocity>
d03c17bc:	4601      	mov	r1, r0
d03c17be:	4630      	mov	r0, r6
d03c17c0:	f7fe fefe 	bl	d03c05c0 <sid_voice_set_velocity>
d03c17c4:	3501      	adds	r5, #1
d03c17c6:	3408      	adds	r4, #8
d03c17c8:	2d06      	cmp	r5, #6
d03c17ca:	d1f0      	bne.n	d03c17ae <midi_update_all_active_volume+0x6>
d03c17cc:	bd70      	pop	{r4, r5, r6, pc}
d03c17ce:	bf00      	nop
d03c17d0:	d03cd108 	.word	0xd03cd108

d03c17d4 <midi_set_global_gain>:
d03c17d4:	f5b0 7f96 	cmp.w	r0, #300	; 0x12c
d03c17d8:	4b04      	ldr	r3, [pc, #16]	; (d03c17ec <midi_set_global_gain+0x18>)
d03c17da:	bfa8      	it	ge
d03c17dc:	f44f 7096 	movge.w	r0, #300	; 0x12c
d03c17e0:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03c17e4:	8018      	strh	r0, [r3, #0]
d03c17e6:	f7ff bfdf 	b.w	d03c17a8 <midi_update_all_active_volume>
d03c17ea:	bf00      	nop
d03c17ec:	d03ccf8e 	.word	0xd03ccf8e

d03c17f0 <seq_playback_sync>:
d03c17f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c17f2:	4e3e      	ldr	r6, [pc, #248]	; (d03c18ec <seq_playback_sync+0xfc>)
d03c17f4:	4605      	mov	r5, r0
d03c17f6:	7833      	ldrb	r3, [r6, #0]
d03c17f8:	2b00      	cmp	r3, #0
d03c17fa:	d04d      	beq.n	d03c1898 <seq_playback_sync+0xa8>
d03c17fc:	4b3c      	ldr	r3, [pc, #240]	; (d03c18f0 <seq_playback_sync+0x100>)
d03c17fe:	6819      	ldr	r1, [r3, #0]
d03c1800:	4b3c      	ldr	r3, [pc, #240]	; (d03c18f4 <seq_playback_sync+0x104>)
d03c1802:	6818      	ldr	r0, [r3, #0]
d03c1804:	2900      	cmp	r1, #0
d03c1806:	d03e      	beq.n	d03c1886 <seq_playback_sync+0x96>
d03c1808:	b118      	cbz	r0, d03c1812 <seq_playback_sync+0x22>
d03c180a:	4b3b      	ldr	r3, [pc, #236]	; (d03c18f8 <seq_playback_sync+0x108>)
d03c180c:	681b      	ldr	r3, [r3, #0]
d03c180e:	2b00      	cmp	r3, #0
d03c1810:	d139      	bne.n	d03c1886 <seq_playback_sync+0x96>
d03c1812:	f7ff fa07 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c1816:	2000      	movs	r0, #0
d03c1818:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c181a:	ea4f 1c03 	mov.w	ip, r3, lsl #4
d03c181e:	f812 c00c 	ldrb.w	ip, [r2, ip]
d03c1822:	f1bc 0f00 	cmp.w	ip, #0
d03c1826:	d006      	beq.n	d03c1836 <seq_playback_sync+0x46>
d03c1828:	fa1f fc83 	uxth.w	ip, r3
d03c182c:	f820 c014 	strh.w	ip, [r0, r4, lsl #1]
d03c1830:	f82e c014 	strh.w	ip, [lr, r4, lsl #1]
d03c1834:	3401      	adds	r4, #1
d03c1836:	3301      	adds	r3, #1
d03c1838:	4299      	cmp	r1, r3
d03c183a:	d1ee      	bne.n	d03c181a <seq_playback_sync+0x2a>
d03c183c:	2c01      	cmp	r4, #1
d03c183e:	d90a      	bls.n	d03c1856 <seq_playback_sync+0x66>
d03c1840:	4b2e      	ldr	r3, [pc, #184]	; (d03c18fc <seq_playback_sync+0x10c>)
d03c1842:	2202      	movs	r2, #2
d03c1844:	4621      	mov	r1, r4
d03c1846:	f008 f99e 	bl	d03c9b86 <qsort>
d03c184a:	4b2d      	ldr	r3, [pc, #180]	; (d03c1900 <seq_playback_sync+0x110>)
d03c184c:	2202      	movs	r2, #2
d03c184e:	4621      	mov	r1, r4
d03c1850:	6838      	ldr	r0, [r7, #0]
d03c1852:	f008 f998 	bl	d03c9b86 <qsort>
d03c1856:	4b2b      	ldr	r3, [pc, #172]	; (d03c1904 <seq_playback_sync+0x114>)
d03c1858:	601c      	str	r4, [r3, #0]
d03c185a:	2300      	movs	r3, #0
d03c185c:	7033      	strb	r3, [r6, #0]
d03c185e:	4b29      	ldr	r3, [pc, #164]	; (d03c1904 <seq_playback_sync+0x114>)
d03c1860:	681e      	ldr	r6, [r3, #0]
d03c1862:	4b29      	ldr	r3, [pc, #164]	; (d03c1908 <seq_playback_sync+0x118>)
d03c1864:	4631      	mov	r1, r6
d03c1866:	681c      	ldr	r4, [r3, #0]
d03c1868:	4b22      	ldr	r3, [pc, #136]	; (d03c18f4 <seq_playback_sync+0x104>)
d03c186a:	681f      	ldr	r7, [r3, #0]
d03c186c:	2300      	movs	r3, #0
d03c186e:	4299      	cmp	r1, r3
d03c1870:	d823      	bhi.n	d03c18ba <seq_playback_sync+0xca>
d03c1872:	4a26      	ldr	r2, [pc, #152]	; (d03c190c <seq_playback_sync+0x11c>)
d03c1874:	2100      	movs	r1, #0
d03c1876:	6013      	str	r3, [r2, #0]
d03c1878:	4b1f      	ldr	r3, [pc, #124]	; (d03c18f8 <seq_playback_sync+0x108>)
d03c187a:	681f      	ldr	r7, [r3, #0]
d03c187c:	428e      	cmp	r6, r1
d03c187e:	d828      	bhi.n	d03c18d2 <seq_playback_sync+0xe2>
d03c1880:	4b23      	ldr	r3, [pc, #140]	; (d03c1910 <seq_playback_sync+0x120>)
d03c1882:	6019      	str	r1, [r3, #0]
d03c1884:	e013      	b.n	d03c18ae <seq_playback_sync+0xbe>
d03c1886:	4b20      	ldr	r3, [pc, #128]	; (d03c1908 <seq_playback_sync+0x118>)
d03c1888:	4f1b      	ldr	r7, [pc, #108]	; (d03c18f8 <seq_playback_sync+0x108>)
d03c188a:	681a      	ldr	r2, [r3, #0]
d03c188c:	2300      	movs	r3, #0
d03c188e:	f8d7 e000 	ldr.w	lr, [r7]
d03c1892:	461c      	mov	r4, r3
d03c1894:	320d      	adds	r2, #13
d03c1896:	e7cf      	b.n	d03c1838 <seq_playback_sync+0x48>
d03c1898:	4b1e      	ldr	r3, [pc, #120]	; (d03c1914 <seq_playback_sync+0x124>)
d03c189a:	781b      	ldrb	r3, [r3, #0]
d03c189c:	2b00      	cmp	r3, #0
d03c189e:	d0de      	beq.n	d03c185e <seq_playback_sync+0x6e>
d03c18a0:	4b1d      	ldr	r3, [pc, #116]	; (d03c1918 <seq_playback_sync+0x128>)
d03c18a2:	681b      	ldr	r3, [r3, #0]
d03c18a4:	4283      	cmp	r3, r0
d03c18a6:	d8da      	bhi.n	d03c185e <seq_playback_sync+0x6e>
d03c18a8:	3301      	adds	r3, #1
d03c18aa:	4283      	cmp	r3, r0
d03c18ac:	d3d7      	bcc.n	d03c185e <seq_playback_sync+0x6e>
d03c18ae:	4b1a      	ldr	r3, [pc, #104]	; (d03c1918 <seq_playback_sync+0x128>)
d03c18b0:	2001      	movs	r0, #1
d03c18b2:	601d      	str	r5, [r3, #0]
d03c18b4:	4b17      	ldr	r3, [pc, #92]	; (d03c1914 <seq_playback_sync+0x124>)
d03c18b6:	7018      	strb	r0, [r3, #0]
d03c18b8:	e7ae      	b.n	d03c1818 <seq_playback_sync+0x28>
d03c18ba:	1aca      	subs	r2, r1, r3
d03c18bc:	eb03 0252 	add.w	r2, r3, r2, lsr #1
d03c18c0:	f837 0012 	ldrh.w	r0, [r7, r2, lsl #1]
d03c18c4:	0100      	lsls	r0, r0, #4
d03c18c6:	5820      	ldr	r0, [r4, r0]
d03c18c8:	4285      	cmp	r5, r0
d03c18ca:	bf8c      	ite	hi
d03c18cc:	1c53      	addhi	r3, r2, #1
d03c18ce:	4611      	movls	r1, r2
d03c18d0:	e7cd      	b.n	d03c186e <seq_playback_sync+0x7e>
d03c18d2:	1a74      	subs	r4, r6, r1
d03c18d4:	eb01 0454 	add.w	r4, r1, r4, lsr #1
d03c18d8:	f837 0014 	ldrh.w	r0, [r7, r4, lsl #1]
d03c18dc:	f7ff f964 	bl	d03c0ba8 <seq_note_end_tick>
d03c18e0:	4285      	cmp	r5, r0
d03c18e2:	bf8c      	ite	hi
d03c18e4:	1c61      	addhi	r1, r4, #1
d03c18e6:	4626      	movls	r6, r4
d03c18e8:	e7c8      	b.n	d03c187c <seq_playback_sync+0x8c>
d03c18ea:	bf00      	nop
d03c18ec:	d03ccfe0 	.word	0xd03ccfe0
d03c18f0:	d03ccfd4 	.word	0xd03ccfd4
d03c18f4:	d03ccfe8 	.word	0xd03ccfe8
d03c18f8:	d03ccfe4 	.word	0xd03ccfe4
d03c18fc:	d03c0bc1 	.word	0xd03c0bc1
d03c1900:	d03c0bf5 	.word	0xd03c0bf5
d03c1904:	d03ccfdc 	.word	0xd03ccfdc
d03c1908:	d03ccfd8 	.word	0xd03ccfd8
d03c190c:	d03cd0f8 	.word	0xd03cd0f8
d03c1910:	d03cd0f4 	.word	0xd03cd0f4
d03c1914:	d03cd0ec 	.word	0xd03cd0ec
d03c1918:	d03cd0f0 	.word	0xd03cd0f0

d03c191c <ui_name_has_ext>:
d03c191c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c191e:	460c      	mov	r4, r1
d03c1920:	4606      	mov	r6, r0
d03c1922:	f008 fb95 	bl	d03ca050 <strlen>
d03c1926:	4605      	mov	r5, r0
d03c1928:	4620      	mov	r0, r4
d03c192a:	f008 fb91 	bl	d03ca050 <strlen>
d03c192e:	b2ea      	uxtb	r2, r5
d03c1930:	b2c3      	uxtb	r3, r0
d03c1932:	429a      	cmp	r2, r3
d03c1934:	d319      	bcc.n	d03c196a <ui_name_has_ext+0x4e>
d03c1936:	1ad3      	subs	r3, r2, r3
d03c1938:	3c01      	subs	r4, #1
d03c193a:	4432      	add	r2, r6
d03c193c:	4433      	add	r3, r6
d03c193e:	4293      	cmp	r3, r2
d03c1940:	d101      	bne.n	d03c1946 <ui_name_has_ext+0x2a>
d03c1942:	2001      	movs	r0, #1
d03c1944:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c1946:	f813 7b01 	ldrb.w	r7, [r3], #1
d03c194a:	f814 5f01 	ldrb.w	r5, [r4, #1]!
d03c194e:	f1a7 0141 	sub.w	r1, r7, #65	; 0x41
d03c1952:	2919      	cmp	r1, #25
d03c1954:	f1a5 0141 	sub.w	r1, r5, #65	; 0x41
d03c1958:	bf9c      	itt	ls
d03c195a:	3720      	addls	r7, #32
d03c195c:	b2ff      	uxtbls	r7, r7
d03c195e:	2919      	cmp	r1, #25
d03c1960:	bf9c      	itt	ls
d03c1962:	3520      	addls	r5, #32
d03c1964:	b2ed      	uxtbls	r5, r5
d03c1966:	42af      	cmp	r7, r5
d03c1968:	d0e9      	beq.n	d03c193e <ui_name_has_ext+0x22>
d03c196a:	2000      	movs	r0, #0
d03c196c:	e7ea      	b.n	d03c1944 <ui_name_has_ext+0x28>
	...

d03c1970 <ui_keyboard_move_caret>:
d03c1970:	b538      	push	{r3, r4, r5, lr}
d03c1972:	4d0a      	ldr	r5, [pc, #40]	; (d03c199c <ui_keyboard_move_caret+0x2c>)
d03c1974:	782b      	ldrb	r3, [r5, #0]
d03c1976:	181c      	adds	r4, r3, r0
d03c1978:	4809      	ldr	r0, [pc, #36]	; (d03c19a0 <ui_keyboard_move_caret+0x30>)
d03c197a:	f008 fb69 	bl	d03ca050 <strlen>
d03c197e:	1c63      	adds	r3, r4, #1
d03c1980:	d00a      	beq.n	d03c1998 <ui_keyboard_move_caret+0x28>
d03c1982:	4284      	cmp	r4, r0
d03c1984:	dd00      	ble.n	d03c1988 <ui_keyboard_move_caret+0x18>
d03c1986:	b204      	sxth	r4, r0
d03c1988:	4b06      	ldr	r3, [pc, #24]	; (d03c19a4 <ui_keyboard_move_caret+0x34>)
d03c198a:	2200      	movs	r2, #0
d03c198c:	702c      	strb	r4, [r5, #0]
d03c198e:	701a      	strb	r2, [r3, #0]
d03c1990:	2201      	movs	r2, #1
d03c1992:	4b05      	ldr	r3, [pc, #20]	; (d03c19a8 <ui_keyboard_move_caret+0x38>)
d03c1994:	701a      	strb	r2, [r3, #0]
d03c1996:	bd38      	pop	{r3, r4, r5, pc}
d03c1998:	2400      	movs	r4, #0
d03c199a:	e7f5      	b.n	d03c1988 <ui_keyboard_move_caret+0x18>
d03c199c:	d03cf3a8 	.word	0xd03cf3a8
d03c19a0:	d03cf3aa 	.word	0xd03cf3aa
d03c19a4:	d03cf58b 	.word	0xd03cf58b
d03c19a8:	d03cf58a 	.word	0xd03cf58a

d03c19ac <seq_midi_out_program>:
d03c19ac:	4b10      	ldr	r3, [pc, #64]	; (d03c19f0 <seq_midi_out_program+0x44>)
d03c19ae:	b507      	push	{r0, r1, r2, lr}
d03c19b0:	781b      	ldrb	r3, [r3, #0]
d03c19b2:	b1cb      	cbz	r3, d03c19e8 <seq_midi_out_program+0x3c>
d03c19b4:	280f      	cmp	r0, #15
d03c19b6:	d817      	bhi.n	d03c19e8 <seq_midi_out_program+0x3c>
d03c19b8:	060b      	lsls	r3, r1, #24
d03c19ba:	d415      	bmi.n	d03c19e8 <seq_midi_out_program+0x3c>
d03c19bc:	4a0d      	ldr	r2, [pc, #52]	; (d03c19f4 <seq_midi_out_program+0x48>)
d03c19be:	f060 003f 	orn	r0, r0, #63	; 0x3f
d03c19c2:	f88d 1005 	strb.w	r1, [sp, #5]
d03c19c6:	7d13      	ldrb	r3, [r2, #20]
d03c19c8:	7d51      	ldrb	r1, [r2, #21]
d03c19ca:	f88d 0004 	strb.w	r0, [sp, #4]
d03c19ce:	a801      	add	r0, sp, #4
d03c19d0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c19d4:	7d91      	ldrb	r1, [r2, #22]
d03c19d6:	7dd2      	ldrb	r2, [r2, #23]
d03c19d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c19dc:	2102      	movs	r1, #2
d03c19de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c19e2:	681b      	ldr	r3, [r3, #0]
d03c19e4:	695b      	ldr	r3, [r3, #20]
d03c19e6:	4798      	blx	r3
d03c19e8:	b003      	add	sp, #12
d03c19ea:	f85d fb04 	ldr.w	pc, [sp], #4
d03c19ee:	bf00      	nop
d03c19f0:	d03ccfca 	.word	0xd03ccfca
d03c19f4:	2001f000 	.word	0x2001f000

d03c19f8 <seq_midi_out_note_off>:
d03c19f8:	4b05      	ldr	r3, [pc, #20]	; (d03c1a10 <seq_midi_out_note_off+0x18>)
d03c19fa:	781b      	ldrb	r3, [r3, #0]
d03c19fc:	b133      	cbz	r3, d03c1a0c <seq_midi_out_note_off+0x14>
d03c19fe:	280f      	cmp	r0, #15
d03c1a00:	d804      	bhi.n	d03c1a0c <seq_midi_out_note_off+0x14>
d03c1a02:	2200      	movs	r2, #0
d03c1a04:	f040 0080 	orr.w	r0, r0, #128	; 0x80
d03c1a08:	f7ff b83a 	b.w	d03c0a80 <midi_out_packet3>
d03c1a0c:	4770      	bx	lr
d03c1a0e:	bf00      	nop
d03c1a10:	d03ccfca 	.word	0xd03ccfca

d03c1a14 <seq_midi_out_all_notes_off>:
d03c1a14:	4b07      	ldr	r3, [pc, #28]	; (d03c1a34 <seq_midi_out_all_notes_off+0x20>)
d03c1a16:	b510      	push	{r4, lr}
d03c1a18:	781b      	ldrb	r3, [r3, #0]
d03c1a1a:	b153      	cbz	r3, d03c1a32 <seq_midi_out_all_notes_off+0x1e>
d03c1a1c:	2400      	movs	r4, #0
d03c1a1e:	f064 004f 	orn	r0, r4, #79	; 0x4f
d03c1a22:	3401      	adds	r4, #1
d03c1a24:	2200      	movs	r2, #0
d03c1a26:	217b      	movs	r1, #123	; 0x7b
d03c1a28:	b2c0      	uxtb	r0, r0
d03c1a2a:	f7ff f829 	bl	d03c0a80 <midi_out_packet3>
d03c1a2e:	2c10      	cmp	r4, #16
d03c1a30:	d1f5      	bne.n	d03c1a1e <seq_midi_out_all_notes_off+0xa>
d03c1a32:	bd10      	pop	{r4, pc}
d03c1a34:	d03ccfca 	.word	0xd03ccfca

d03c1a38 <sid_midi_all_notes_off>:
d03c1a38:	b570      	push	{r4, r5, r6, lr}
d03c1a3a:	2400      	movs	r4, #0
d03c1a3c:	4d0a      	ldr	r5, [pc, #40]	; (d03c1a68 <sid_midi_all_notes_off+0x30>)
d03c1a3e:	4626      	mov	r6, r4
d03c1a40:	b2e0      	uxtb	r0, r4
d03c1a42:	3401      	adds	r4, #1
d03c1a44:	f7fe fd76 	bl	d03c0534 <sid_voice_note_kill>
d03c1a48:	3508      	adds	r5, #8
d03c1a4a:	2c06      	cmp	r4, #6
d03c1a4c:	f805 6c08 	strb.w	r6, [r5, #-8]
d03c1a50:	f805 6c03 	strb.w	r6, [r5, #-3]
d03c1a54:	f825 6c02 	strh.w	r6, [r5, #-2]
d03c1a58:	d1f2      	bne.n	d03c1a40 <sid_midi_all_notes_off+0x8>
d03c1a5a:	f7ff ffdb 	bl	d03c1a14 <seq_midi_out_all_notes_off>
d03c1a5e:	4a03      	ldr	r2, [pc, #12]	; (d03c1a6c <sid_midi_all_notes_off+0x34>)
d03c1a60:	6813      	ldr	r3, [r2, #0]
d03c1a62:	3301      	adds	r3, #1
d03c1a64:	6013      	str	r3, [r2, #0]
d03c1a66:	bd70      	pop	{r4, r5, r6, pc}
d03c1a68:	d03cd108 	.word	0xd03cd108
d03c1a6c:	d03ccfa0 	.word	0xd03ccfa0

d03c1a70 <seq_stop_playback_notes>:
d03c1a70:	b508      	push	{r3, lr}
d03c1a72:	2001      	movs	r0, #1
d03c1a74:	f7ff fe58 	bl	d03c1728 <sid_midi_all_notes_off_source>
d03c1a78:	2002      	movs	r0, #2
d03c1a7a:	f7ff fe55 	bl	d03c1728 <sid_midi_all_notes_off_source>
d03c1a7e:	f7ff ffc9 	bl	d03c1a14 <seq_midi_out_all_notes_off>
d03c1a82:	2300      	movs	r3, #0
d03c1a84:	4a02      	ldr	r2, [pc, #8]	; (d03c1a90 <seq_stop_playback_notes+0x20>)
d03c1a86:	7013      	strb	r3, [r2, #0]
d03c1a88:	4a02      	ldr	r2, [pc, #8]	; (d03c1a94 <seq_stop_playback_notes+0x24>)
d03c1a8a:	7013      	strb	r3, [r2, #0]
d03c1a8c:	bd08      	pop	{r3, pc}
d03c1a8e:	bf00      	nop
d03c1a90:	d03ccfc9 	.word	0xd03ccfc9
d03c1a94:	d03ccfc8 	.word	0xd03ccfc8

d03c1a98 <seq_stop_transport>:
d03c1a98:	b538      	push	{r3, r4, r5, lr}
d03c1a9a:	2400      	movs	r4, #0
d03c1a9c:	4605      	mov	r5, r0
d03c1a9e:	f7ff ffe7 	bl	d03c1a70 <seq_stop_playback_notes>
d03c1aa2:	4b0e      	ldr	r3, [pc, #56]	; (d03c1adc <seq_stop_transport+0x44>)
d03c1aa4:	701c      	strb	r4, [r3, #0]
d03c1aa6:	4b0e      	ldr	r3, [pc, #56]	; (d03c1ae0 <seq_stop_transport+0x48>)
d03c1aa8:	701c      	strb	r4, [r3, #0]
d03c1aaa:	4b0e      	ldr	r3, [pc, #56]	; (d03c1ae4 <seq_stop_transport+0x4c>)
d03c1aac:	701c      	strb	r4, [r3, #0]
d03c1aae:	4b0e      	ldr	r3, [pc, #56]	; (d03c1ae8 <seq_stop_transport+0x50>)
d03c1ab0:	701c      	strb	r4, [r3, #0]
d03c1ab2:	4b0e      	ldr	r3, [pc, #56]	; (d03c1aec <seq_stop_transport+0x54>)
d03c1ab4:	801c      	strh	r4, [r3, #0]
d03c1ab6:	4b0e      	ldr	r3, [pc, #56]	; (d03c1af0 <seq_stop_transport+0x58>)
d03c1ab8:	681a      	ldr	r2, [r3, #0]
d03c1aba:	4b0e      	ldr	r3, [pc, #56]	; (d03c1af4 <seq_stop_transport+0x5c>)
d03c1abc:	601a      	str	r2, [r3, #0]
d03c1abe:	4b0e      	ldr	r3, [pc, #56]	; (d03c1af8 <seq_stop_transport+0x60>)
d03c1ac0:	6818      	ldr	r0, [r3, #0]
d03c1ac2:	f7ff fe95 	bl	d03c17f0 <seq_playback_sync>
d03c1ac6:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c1aca:	4621      	mov	r1, r4
d03c1acc:	480b      	ldr	r0, [pc, #44]	; (d03c1afc <seq_stop_transport+0x64>)
d03c1ace:	f007 ff6f 	bl	d03c99b0 <memset>
d03c1ad2:	b10d      	cbz	r5, d03c1ad8 <seq_stop_transport+0x40>
d03c1ad4:	4b0a      	ldr	r3, [pc, #40]	; (d03c1b00 <seq_stop_transport+0x68>)
d03c1ad6:	701c      	strb	r4, [r3, #0]
d03c1ad8:	bd38      	pop	{r3, r4, r5, pc}
d03c1ada:	bf00      	nop
d03c1adc:	d03cd0fc 	.word	0xd03cd0fc
d03c1ae0:	d03cd105 	.word	0xd03cd105
d03c1ae4:	d03ccfb4 	.word	0xd03ccfb4
d03c1ae8:	d03ccfb8 	.word	0xd03ccfb8
d03c1aec:	d03ccfb6 	.word	0xd03ccfb6
d03c1af0:	d03ccfb0 	.word	0xd03ccfb0
d03c1af4:	d03ccfc4 	.word	0xd03ccfc4
d03c1af8:	d03cd100 	.word	0xd03cd100
d03c1afc:	d03ccfec 	.word	0xd03ccfec
d03c1b00:	d03cd104 	.word	0xd03cd104

d03c1b04 <midi_queue_event>:
d03c1b04:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c1b06:	4c17      	ldr	r4, [pc, #92]	; (d03c1b64 <midi_queue_event+0x60>)
d03c1b08:	469c      	mov	ip, r3
d03c1b0a:	4e17      	ldr	r6, [pc, #92]	; (d03c1b68 <midi_queue_event+0x64>)
d03c1b0c:	7825      	ldrb	r5, [r4, #0]
d03c1b0e:	7833      	ldrb	r3, [r6, #0]
d03c1b10:	3501      	adds	r5, #1
d03c1b12:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03c1b16:	42ab      	cmp	r3, r5
d03c1b18:	d10d      	bne.n	d03c1b36 <midi_queue_event+0x32>
d03c1b1a:	4f14      	ldr	r7, [pc, #80]	; (d03c1b6c <midi_queue_event+0x68>)
d03c1b1c:	683b      	ldr	r3, [r7, #0]
d03c1b1e:	46be      	mov	lr, r7
d03c1b20:	3301      	adds	r3, #1
d03c1b22:	b108      	cbz	r0, d03c1b28 <midi_queue_event+0x24>
d03c1b24:	2805      	cmp	r0, #5
d03c1b26:	d11a      	bne.n	d03c1b5e <midi_queue_event+0x5a>
d03c1b28:	7837      	ldrb	r7, [r6, #0]
d03c1b2a:	f8ce 3000 	str.w	r3, [lr]
d03c1b2e:	3701      	adds	r7, #1
d03c1b30:	f007 077f 	and.w	r7, r7, #127	; 0x7f
d03c1b34:	7037      	strb	r7, [r6, #0]
d03c1b36:	7823      	ldrb	r3, [r4, #0]
d03c1b38:	4e0d      	ldr	r6, [pc, #52]	; (d03c1b70 <midi_queue_event+0x6c>)
d03c1b3a:	b2db      	uxtb	r3, r3
d03c1b3c:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d03c1b40:	7823      	ldrb	r3, [r4, #0]
d03c1b42:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03c1b46:	7059      	strb	r1, [r3, #1]
d03c1b48:	7823      	ldrb	r3, [r4, #0]
d03c1b4a:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d03c1b4e:	709a      	strb	r2, [r3, #2]
d03c1b50:	7823      	ldrb	r3, [r4, #0]
d03c1b52:	eb06 0683 	add.w	r6, r6, r3, lsl #2
d03c1b56:	f886 c003 	strb.w	ip, [r6, #3]
d03c1b5a:	7025      	strb	r5, [r4, #0]
d03c1b5c:	e000      	b.n	d03c1b60 <midi_queue_event+0x5c>
d03c1b5e:	603b      	str	r3, [r7, #0]
d03c1b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c1b62:	bf00      	nop
d03c1b64:	d03ccd8c 	.word	0xd03ccd8c
d03c1b68:	d03ccf8d 	.word	0xd03ccf8d
d03c1b6c:	d03ccd84 	.word	0xd03ccd84
d03c1b70:	d03ccd8d 	.word	0xd03ccd8d

d03c1b74 <ui_note_channel_used>:
d03c1b74:	280f      	cmp	r0, #15
d03c1b76:	b510      	push	{r4, lr}
d03c1b78:	d811      	bhi.n	d03c1b9e <ui_note_channel_used+0x2a>
d03c1b7a:	4909      	ldr	r1, [pc, #36]	; (d03c1ba0 <ui_note_channel_used+0x2c>)
d03c1b7c:	2204      	movs	r2, #4
d03c1b7e:	460b      	mov	r3, r1
d03c1b80:	f811 4b01 	ldrb.w	r4, [r1], #1
d03c1b84:	4284      	cmp	r4, r0
d03c1b86:	d00a      	beq.n	d03c1b9e <ui_note_channel_used+0x2a>
d03c1b88:	3a01      	subs	r2, #1
d03c1b8a:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
d03c1b8e:	d1f7      	bne.n	d03c1b80 <ui_note_channel_used+0xc>
d03c1b90:	789a      	ldrb	r2, [r3, #2]
d03c1b92:	70da      	strb	r2, [r3, #3]
d03c1b94:	785a      	ldrb	r2, [r3, #1]
d03c1b96:	709a      	strb	r2, [r3, #2]
d03c1b98:	781a      	ldrb	r2, [r3, #0]
d03c1b9a:	7018      	strb	r0, [r3, #0]
d03c1b9c:	705a      	strb	r2, [r3, #1]
d03c1b9e:	bd10      	pop	{r4, pc}
d03c1ba0:	d03cf3a4 	.word	0xd03cf3a4

d03c1ba4 <sid_midi_note_on_program_source>:
d03c1ba4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c1ba8:	f89d 9020 	ldrb.w	r9, [sp, #32]
d03c1bac:	4616      	mov	r6, r2
d03c1bae:	4607      	mov	r7, r0
d03c1bb0:	468a      	mov	sl, r1
d03c1bb2:	464a      	mov	r2, r9
d03c1bb4:	4698      	mov	r8, r3
d03c1bb6:	f7fe ff8f 	bl	d03c0ad8 <sid_find_voice_source>
d03c1bba:	f1b9 0f02 	cmp.w	r9, #2
d03c1bbe:	4604      	mov	r4, r0
d03c1bc0:	d008      	beq.n	d03c1bd4 <sid_midi_note_on_program_source+0x30>
d03c1bc2:	2f09      	cmp	r7, #9
d03c1bc4:	d103      	bne.n	d03c1bce <sid_midi_note_on_program_source+0x2a>
d03c1bc6:	4b35      	ldr	r3, [pc, #212]	; (d03c1c9c <sid_midi_note_on_program_source+0xf8>)
d03c1bc8:	781b      	ldrb	r3, [r3, #0]
d03c1bca:	2b00      	cmp	r3, #0
d03c1bcc:	d04c      	beq.n	d03c1c68 <sid_midi_note_on_program_source+0xc4>
d03c1bce:	4638      	mov	r0, r7
d03c1bd0:	f7ff ffd0 	bl	d03c1b74 <ui_note_channel_used>
d03c1bd4:	2cff      	cmp	r4, #255	; 0xff
d03c1bd6:	4d32      	ldr	r5, [pc, #200]	; (d03c1ca0 <sid_midi_note_on_program_source+0xfc>)
d03c1bd8:	d15b      	bne.n	d03c1c92 <sid_midi_note_on_program_source+0xee>
d03c1bda:	4932      	ldr	r1, [pc, #200]	; (d03c1ca4 <sid_midi_note_on_program_source+0x100>)
d03c1bdc:	2200      	movs	r2, #0
d03c1bde:	2006      	movs	r0, #6
d03c1be0:	780c      	ldrb	r4, [r1, #0]
d03c1be2:	eb02 0c04 	add.w	ip, r2, r4
d03c1be6:	fbbc f3f0 	udiv	r3, ip, r0
d03c1bea:	fb00 c313 	mls	r3, r0, r3, ip
d03c1bee:	f815 c033 	ldrb.w	ip, [r5, r3, lsl #3]
d03c1bf2:	f1bc 0f00 	cmp.w	ip, #0
d03c1bf6:	d139      	bne.n	d03c1c6c <sid_midi_note_on_program_source+0xc8>
d03c1bf8:	b2dc      	uxtb	r4, r3
d03c1bfa:	3301      	adds	r3, #1
d03c1bfc:	fbb3 f2f0 	udiv	r2, r3, r0
d03c1c00:	fb00 3312 	mls	r3, r0, r2, r3
d03c1c04:	700b      	strb	r3, [r1, #0]
d03c1c06:	2301      	movs	r3, #1
d03c1c08:	f1b9 0f02 	cmp.w	r9, #2
d03c1c0c:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03c1c10:	eb05 05c4 	add.w	r5, r5, r4, lsl #3
d03c1c14:	f04f 0300 	mov.w	r3, #0
d03c1c18:	706f      	strb	r7, [r5, #1]
d03c1c1a:	f885 a002 	strb.w	sl, [r5, #2]
d03c1c1e:	70ee      	strb	r6, [r5, #3]
d03c1c20:	f885 8004 	strb.w	r8, [r5, #4]
d03c1c24:	f885 9005 	strb.w	r9, [r5, #5]
d03c1c28:	80eb      	strh	r3, [r5, #6]
d03c1c2a:	d004      	beq.n	d03c1c36 <sid_midi_note_on_program_source+0x92>
d03c1c2c:	4631      	mov	r1, r6
d03c1c2e:	4638      	mov	r0, r7
d03c1c30:	f7fe ff6a 	bl	d03c0b08 <midi_effective_velocity>
d03c1c34:	4606      	mov	r6, r0
d03c1c36:	4633      	mov	r3, r6
d03c1c38:	4652      	mov	r2, sl
d03c1c3a:	4641      	mov	r1, r8
d03c1c3c:	4620      	mov	r0, r4
d03c1c3e:	f7fe fc55 	bl	d03c04ec <sid_voice_note_on>
d03c1c42:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d03c1c46:	d008      	beq.n	d03c1c5a <sid_midi_note_on_program_source+0xb6>
d03c1c48:	f1b8 0f09 	cmp.w	r8, #9
d03c1c4c:	d005      	beq.n	d03c1c5a <sid_midi_note_on_program_source+0xb6>
d03c1c4e:	4b16      	ldr	r3, [pc, #88]	; (d03c1ca8 <sid_midi_note_on_program_source+0x104>)
d03c1c50:	4620      	mov	r0, r4
d03c1c52:	f933 1017 	ldrsh.w	r1, [r3, r7, lsl #1]
d03c1c56:	f7fe fc91 	bl	d03c057c <sid_voice_pitch_bend>
d03c1c5a:	f1b9 0f02 	cmp.w	r9, #2
d03c1c5e:	bf1f      	itttt	ne
d03c1c60:	4a12      	ldrne	r2, [pc, #72]	; (d03c1cac <sid_midi_note_on_program_source+0x108>)
d03c1c62:	6813      	ldrne	r3, [r2, #0]
d03c1c64:	3301      	addne	r3, #1
d03c1c66:	6013      	strne	r3, [r2, #0]
d03c1c68:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c1c6c:	3201      	adds	r2, #1
d03c1c6e:	2a06      	cmp	r2, #6
d03c1c70:	d1b7      	bne.n	d03c1be2 <sid_midi_note_on_program_source+0x3e>
d03c1c72:	1c60      	adds	r0, r4, #1
d03c1c74:	fbb0 f3f2 	udiv	r3, r0, r2
d03c1c78:	fb02 0213 	mls	r2, r2, r3, r0
d03c1c7c:	4620      	mov	r0, r4
d03c1c7e:	700a      	strb	r2, [r1, #0]
d03c1c80:	f7fe fc58 	bl	d03c0534 <sid_voice_note_kill>
d03c1c84:	2300      	movs	r3, #0
d03c1c86:	eb05 02c4 	add.w	r2, r5, r4, lsl #3
d03c1c8a:	f805 3034 	strb.w	r3, [r5, r4, lsl #3]
d03c1c8e:	7153      	strb	r3, [r2, #5]
d03c1c90:	e7b9      	b.n	d03c1c06 <sid_midi_note_on_program_source+0x62>
d03c1c92:	4620      	mov	r0, r4
d03c1c94:	f7fe fbf4 	bl	d03c0480 <sid_voice_note_off>
d03c1c98:	e7b5      	b.n	d03c1c06 <sid_midi_note_on_program_source+0x62>
d03c1c9a:	bf00      	nop
d03c1c9c:	d03ccd88 	.word	0xd03ccd88
d03c1ca0:	d03cd108 	.word	0xd03cd108
d03c1ca4:	d03cd138 	.word	0xd03cd138
d03c1ca8:	d03ccd34 	.word	0xd03ccd34
d03c1cac:	d03ccf9c 	.word	0xd03ccf9c

d03c1cb0 <seq_metronome_click>:
d03c1cb0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c1cb2:	2804      	cmp	r0, #4
d03c1cb4:	4c11      	ldr	r4, [pc, #68]	; (d03c1cfc <seq_metronome_click+0x4c>)
d03c1cb6:	f04f 0002 	mov.w	r0, #2
d03c1cba:	bf0c      	ite	eq
d03c1cbc:	2558      	moveq	r5, #88	; 0x58
d03c1cbe:	254c      	movne	r5, #76	; 0x4c
d03c1cc0:	f7ff fd32 	bl	d03c1728 <sid_midi_all_notes_off_source>
d03c1cc4:	7821      	ldrb	r1, [r4, #0]
d03c1cc6:	b111      	cbz	r1, d03c1cce <seq_metronome_click+0x1e>
d03c1cc8:	200f      	movs	r0, #15
d03c1cca:	f7ff fe95 	bl	d03c19f8 <seq_midi_out_note_off>
d03c1cce:	2302      	movs	r3, #2
d03c1cd0:	227f      	movs	r2, #127	; 0x7f
d03c1cd2:	4629      	mov	r1, r5
d03c1cd4:	200f      	movs	r0, #15
d03c1cd6:	9300      	str	r3, [sp, #0]
d03c1cd8:	2376      	movs	r3, #118	; 0x76
d03c1cda:	f7ff ff63 	bl	d03c1ba4 <sid_midi_note_on_program_source>
d03c1cde:	2176      	movs	r1, #118	; 0x76
d03c1ce0:	200f      	movs	r0, #15
d03c1ce2:	f7ff fe63 	bl	d03c19ac <seq_midi_out_program>
d03c1ce6:	227f      	movs	r2, #127	; 0x7f
d03c1ce8:	4629      	mov	r1, r5
d03c1cea:	200f      	movs	r0, #15
d03c1cec:	f7fe fee8 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c1cf0:	4b03      	ldr	r3, [pc, #12]	; (d03c1d00 <seq_metronome_click+0x50>)
d03c1cf2:	2204      	movs	r2, #4
d03c1cf4:	7025      	strb	r5, [r4, #0]
d03c1cf6:	701a      	strb	r2, [r3, #0]
d03c1cf8:	b003      	add	sp, #12
d03c1cfa:	bd30      	pop	{r4, r5, pc}
d03c1cfc:	d03ccfc8 	.word	0xd03ccfc8
d03c1d00:	d03ccfc9 	.word	0xd03ccfc9

d03c1d04 <seq_begin_count_in>:
d03c1d04:	b538      	push	{r3, r4, r5, lr}
d03c1d06:	f7ff feb3 	bl	d03c1a70 <seq_stop_playback_notes>
d03c1d0a:	2400      	movs	r4, #0
d03c1d0c:	4b11      	ldr	r3, [pc, #68]	; (d03c1d54 <seq_begin_count_in+0x50>)
d03c1d0e:	2201      	movs	r2, #1
d03c1d10:	4d11      	ldr	r5, [pc, #68]	; (d03c1d58 <seq_begin_count_in+0x54>)
d03c1d12:	701c      	strb	r4, [r3, #0]
d03c1d14:	4b11      	ldr	r3, [pc, #68]	; (d03c1d5c <seq_begin_count_in+0x58>)
d03c1d16:	701c      	strb	r4, [r3, #0]
d03c1d18:	4b11      	ldr	r3, [pc, #68]	; (d03c1d60 <seq_begin_count_in+0x5c>)
d03c1d1a:	701a      	strb	r2, [r3, #0]
d03c1d1c:	2304      	movs	r3, #4
d03c1d1e:	702b      	strb	r3, [r5, #0]
d03c1d20:	f7fe ff34 	bl	d03c0b8c <seq_beat_ticks>
d03c1d24:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d64 <seq_begin_count_in+0x60>)
d03c1d26:	8018      	strh	r0, [r3, #0]
d03c1d28:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d68 <seq_begin_count_in+0x64>)
d03c1d2a:	681a      	ldr	r2, [r3, #0]
d03c1d2c:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d6c <seq_begin_count_in+0x68>)
d03c1d2e:	601a      	str	r2, [r3, #0]
d03c1d30:	4b0f      	ldr	r3, [pc, #60]	; (d03c1d70 <seq_begin_count_in+0x6c>)
d03c1d32:	6818      	ldr	r0, [r3, #0]
d03c1d34:	f7ff fd5c 	bl	d03c17f0 <seq_playback_sync>
d03c1d38:	4621      	mov	r1, r4
d03c1d3a:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c1d3e:	480d      	ldr	r0, [pc, #52]	; (d03c1d74 <seq_begin_count_in+0x70>)
d03c1d40:	f007 fe36 	bl	d03c99b0 <memset>
d03c1d44:	7828      	ldrb	r0, [r5, #0]
d03c1d46:	f7ff ffb3 	bl	d03c1cb0 <seq_metronome_click>
d03c1d4a:	480b      	ldr	r0, [pc, #44]	; (d03c1d78 <seq_begin_count_in+0x74>)
d03c1d4c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03c1d50:	f7ff bb4c 	b.w	d03c13ec <ui_set_status>
d03c1d54:	d03cd0fc 	.word	0xd03cd0fc
d03c1d58:	d03ccfb8 	.word	0xd03ccfb8
d03c1d5c:	d03cd105 	.word	0xd03cd105
d03c1d60:	d03ccfb4 	.word	0xd03ccfb4
d03c1d64:	d03ccfb6 	.word	0xd03ccfb6
d03c1d68:	d03ccfb0 	.word	0xd03ccfb0
d03c1d6c:	d03ccfc4 	.word	0xd03ccfc4
d03c1d70:	d03cd100 	.word	0xd03cd100
d03c1d74:	d03ccfec 	.word	0xd03ccfec
d03c1d78:	d03cb36c 	.word	0xd03cb36c

d03c1d7c <sid_midi_pitch_bend_event>:
d03c1d7c:	01d2      	lsls	r2, r2, #7
d03c1d7e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c1d80:	f402 527e 	and.w	r2, r2, #16256	; 0x3f80
d03c1d84:	f001 047f 	and.w	r4, r1, #127	; 0x7f
d03c1d88:	4605      	mov	r5, r0
d03c1d8a:	4314      	orrs	r4, r2
d03c1d8c:	f7ff fef2 	bl	d03c1b74 <ui_note_channel_used>
d03c1d90:	4b0b      	ldr	r3, [pc, #44]	; (d03c1dc0 <sid_midi_pitch_bend_event+0x44>)
d03c1d92:	2809      	cmp	r0, #9
d03c1d94:	f5a4 5400 	sub.w	r4, r4, #8192	; 0x2000
d03c1d98:	b224      	sxth	r4, r4
d03c1d9a:	f823 4010 	strh.w	r4, [r3, r0, lsl #1]
d03c1d9e:	d00e      	beq.n	d03c1dbe <sid_midi_pitch_bend_event+0x42>
d03c1da0:	4f08      	ldr	r7, [pc, #32]	; (d03c1dc4 <sid_midi_pitch_bend_event+0x48>)
d03c1da2:	2600      	movs	r6, #0
d03c1da4:	783b      	ldrb	r3, [r7, #0]
d03c1da6:	b2f0      	uxtb	r0, r6
d03c1da8:	b12b      	cbz	r3, d03c1db6 <sid_midi_pitch_bend_event+0x3a>
d03c1daa:	787b      	ldrb	r3, [r7, #1]
d03c1dac:	42ab      	cmp	r3, r5
d03c1dae:	d102      	bne.n	d03c1db6 <sid_midi_pitch_bend_event+0x3a>
d03c1db0:	4621      	mov	r1, r4
d03c1db2:	f7fe fbe3 	bl	d03c057c <sid_voice_pitch_bend>
d03c1db6:	3601      	adds	r6, #1
d03c1db8:	3708      	adds	r7, #8
d03c1dba:	2e06      	cmp	r6, #6
d03c1dbc:	d1f2      	bne.n	d03c1da4 <sid_midi_pitch_bend_event+0x28>
d03c1dbe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c1dc0:	d03ccd34 	.word	0xd03ccd34
d03c1dc4:	d03cd108 	.word	0xd03cd108

d03c1dc8 <ui_vm_editor_clamp_selection>:
d03c1dc8:	b508      	push	{r3, lr}
d03c1dca:	4b13      	ldr	r3, [pc, #76]	; (d03c1e18 <ui_vm_editor_clamp_selection+0x50>)
d03c1dcc:	4a13      	ldr	r2, [pc, #76]	; (d03c1e1c <ui_vm_editor_clamp_selection+0x54>)
d03c1dce:	781b      	ldrb	r3, [r3, #0]
d03c1dd0:	5cd0      	ldrb	r0, [r2, r3]
d03c1dd2:	f7ff f85b 	bl	d03c0e8c <vm_program_length>
d03c1dd6:	4b12      	ldr	r3, [pc, #72]	; (d03c1e20 <ui_vm_editor_clamp_selection+0x58>)
d03c1dd8:	4912      	ldr	r1, [pc, #72]	; (d03c1e24 <ui_vm_editor_clamp_selection+0x5c>)
d03c1dda:	b910      	cbnz	r0, d03c1de2 <ui_vm_editor_clamp_selection+0x1a>
d03c1ddc:	7018      	strb	r0, [r3, #0]
d03c1dde:	7008      	strb	r0, [r1, #0]
d03c1de0:	bd08      	pop	{r3, pc}
d03c1de2:	781a      	ldrb	r2, [r3, #0]
d03c1de4:	4282      	cmp	r2, r0
d03c1de6:	4a10      	ldr	r2, [pc, #64]	; (d03c1e28 <ui_vm_editor_clamp_selection+0x60>)
d03c1de8:	bf24      	itt	cs
d03c1dea:	f100 30ff 	addcs.w	r0, r0, #4294967295	; 0xffffffff
d03c1dee:	7018      	strbcs	r0, [r3, #0]
d03c1df0:	7810      	ldrb	r0, [r2, #0]
d03c1df2:	781b      	ldrb	r3, [r3, #0]
d03c1df4:	2802      	cmp	r0, #2
d03c1df6:	bf84      	itt	hi
d03c1df8:	2000      	movhi	r0, #0
d03c1dfa:	7010      	strbhi	r0, [r2, #0]
d03c1dfc:	780a      	ldrb	r2, [r1, #0]
d03c1dfe:	4293      	cmp	r3, r2
d03c1e00:	d204      	bcs.n	d03c1e0c <ui_vm_editor_clamp_selection+0x44>
d03c1e02:	700b      	strb	r3, [r1, #0]
d03c1e04:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d03c1e08:	f7ff b856 	b.w	d03c0eb8 <ui_clamp_vm_scroll>
d03c1e0c:	3208      	adds	r2, #8
d03c1e0e:	b2d2      	uxtb	r2, r2
d03c1e10:	4293      	cmp	r3, r2
d03c1e12:	d3f7      	bcc.n	d03c1e04 <ui_vm_editor_clamp_selection+0x3c>
d03c1e14:	3b07      	subs	r3, #7
d03c1e16:	e7f4      	b.n	d03c1e02 <ui_vm_editor_clamp_selection+0x3a>
d03c1e18:	d03cf3ca 	.word	0xd03cf3ca
d03c1e1c:	d03ccd64 	.word	0xd03ccd64
d03c1e20:	d03cf589 	.word	0xd03cf589
d03c1e24:	d03cf591 	.word	0xd03cf591
d03c1e28:	d03cf582 	.word	0xd03cf582

d03c1e2c <ui_vm_editor_adjust>:
d03c1e2c:	4b1d      	ldr	r3, [pc, #116]	; (d03c1ea4 <ui_vm_editor_adjust+0x78>)
d03c1e2e:	b510      	push	{r4, lr}
d03c1e30:	781b      	ldrb	r3, [r3, #0]
d03c1e32:	4604      	mov	r4, r0
d03c1e34:	b32b      	cbz	r3, d03c1e82 <ui_vm_editor_adjust+0x56>
d03c1e36:	4b1c      	ldr	r3, [pc, #112]	; (d03c1ea8 <ui_vm_editor_adjust+0x7c>)
d03c1e38:	781b      	ldrb	r3, [r3, #0]
d03c1e3a:	2bff      	cmp	r3, #255	; 0xff
d03c1e3c:	d021      	beq.n	d03c1e82 <ui_vm_editor_adjust+0x56>
d03c1e3e:	4a1b      	ldr	r2, [pc, #108]	; (d03c1eac <ui_vm_editor_adjust+0x80>)
d03c1e40:	491b      	ldr	r1, [pc, #108]	; (d03c1eb0 <ui_vm_editor_adjust+0x84>)
d03c1e42:	7812      	ldrb	r2, [r2, #0]
d03c1e44:	5c8a      	ldrb	r2, [r1, r2]
d03c1e46:	429a      	cmp	r2, r3
d03c1e48:	d11b      	bne.n	d03c1e82 <ui_vm_editor_adjust+0x56>
d03c1e4a:	f7ff ffbd 	bl	d03c1dc8 <ui_vm_editor_clamp_selection>
d03c1e4e:	4a19      	ldr	r2, [pc, #100]	; (d03c1eb4 <ui_vm_editor_adjust+0x88>)
d03c1e50:	4b19      	ldr	r3, [pc, #100]	; (d03c1eb8 <ui_vm_editor_adjust+0x8c>)
d03c1e52:	7812      	ldrb	r2, [r2, #0]
d03c1e54:	781b      	ldrb	r3, [r3, #0]
d03c1e56:	2a01      	cmp	r2, #1
d03c1e58:	4918      	ldr	r1, [pc, #96]	; (d03c1ebc <ui_vm_editor_adjust+0x90>)
d03c1e5a:	d013      	beq.n	d03c1e84 <ui_vm_editor_adjust+0x58>
d03c1e5c:	2a02      	cmp	r2, #2
d03c1e5e:	d019      	beq.n	d03c1e94 <ui_vm_editor_adjust+0x68>
d03c1e60:	b94a      	cbnz	r2, d03c1e76 <ui_vm_editor_adjust+0x4a>
d03c1e62:	f811 2023 	ldrb.w	r2, [r1, r3, lsl #2]
d03c1e66:	1910      	adds	r0, r2, r4
d03c1e68:	2815      	cmp	r0, #21
d03c1e6a:	bfa8      	it	ge
d03c1e6c:	2015      	movge	r0, #21
d03c1e6e:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d03c1e72:	f801 0023 	strb.w	r0, [r1, r3, lsl #2]
d03c1e76:	2300      	movs	r3, #0
d03c1e78:	2201      	movs	r2, #1
d03c1e7a:	f881 317c 	strb.w	r3, [r1, #380]	; 0x17c
d03c1e7e:	4b10      	ldr	r3, [pc, #64]	; (d03c1ec0 <ui_vm_editor_adjust+0x94>)
d03c1e80:	701a      	strb	r2, [r3, #0]
d03c1e82:	bd10      	pop	{r4, pc}
d03c1e84:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03c1e88:	7858      	ldrb	r0, [r3, #1]
d03c1e8a:	4420      	add	r0, r4
d03c1e8c:	f380 0008 	usat	r0, #8, r0
d03c1e90:	7058      	strb	r0, [r3, #1]
d03c1e92:	e7f0      	b.n	d03c1e76 <ui_vm_editor_adjust+0x4a>
d03c1e94:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d03c1e98:	885a      	ldrh	r2, [r3, #2]
d03c1e9a:	1910      	adds	r0, r2, r4
d03c1e9c:	f380 0010 	usat	r0, #16, r0
d03c1ea0:	8058      	strh	r0, [r3, #2]
d03c1ea2:	e7e8      	b.n	d03c1e76 <ui_vm_editor_adjust+0x4a>
d03c1ea4:	d03cf583 	.word	0xd03cf583
d03c1ea8:	d03cf588 	.word	0xd03cf588
d03c1eac:	d03cf3ca 	.word	0xd03cf3ca
d03c1eb0:	d03ccd64 	.word	0xd03ccd64
d03c1eb4:	d03cf582 	.word	0xd03cf582
d03c1eb8:	d03cf589 	.word	0xd03cf589
d03c1ebc:	d03cf402 	.word	0xd03cf402
d03c1ec0:	d03cd140 	.word	0xd03cd140

d03c1ec4 <ui_midi_import_note_off.part.0>:
d03c1ec4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03c1ec8:	4604      	mov	r4, r0
d03c1eca:	460e      	mov	r6, r1
d03c1ecc:	4d14      	ldr	r5, [pc, #80]	; (d03c1f20 <ui_midi_import_note_off.part.0+0x5c>)
d03c1ece:	4619      	mov	r1, r3
d03c1ed0:	01e7      	lsls	r7, r4, #7
d03c1ed2:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c1ed6:	eb06 14c4 	add.w	r4, r6, r4, lsl #7
d03c1eda:	4610      	mov	r0, r2
d03c1edc:	f835 4014 	ldrh.w	r4, [r5, r4, lsl #1]
d03c1ee0:	429c      	cmp	r4, r3
d03c1ee2:	d01a      	beq.n	d03c1f1a <ui_midi_import_note_off.part.0+0x56>
d03c1ee4:	4b0f      	ldr	r3, [pc, #60]	; (d03c1f24 <ui_midi_import_note_off.part.0+0x60>)
d03c1ee6:	681b      	ldr	r3, [r3, #0]
d03c1ee8:	429c      	cmp	r4, r3
d03c1eea:	d216      	bcs.n	d03c1f1a <ui_midi_import_note_off.part.0+0x56>
d03c1eec:	4b0e      	ldr	r3, [pc, #56]	; (d03c1f28 <ui_midi_import_note_off.part.0+0x64>)
d03c1eee:	ea4f 1904 	mov.w	r9, r4, lsl #4
d03c1ef2:	f8d3 8000 	ldr.w	r8, [r3]
d03c1ef6:	eb08 1404 	add.w	r4, r8, r4, lsl #4
d03c1efa:	7b63      	ldrb	r3, [r4, #13]
d03c1efc:	b16b      	cbz	r3, d03c1f1a <ui_midi_import_note_off.part.0+0x56>
d03c1efe:	f7ff f883 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c1f02:	f858 3009 	ldr.w	r3, [r8, r9]
d03c1f06:	443e      	add	r6, r7
d03c1f08:	4298      	cmp	r0, r3
d03c1f0a:	bf98      	it	ls
d03c1f0c:	1c58      	addls	r0, r3, #1
d03c1f0e:	1ac0      	subs	r0, r0, r3
d03c1f10:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c1f14:	6060      	str	r0, [r4, #4]
d03c1f16:	f825 3016 	strh.w	r3, [r5, r6, lsl #1]
d03c1f1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03c1f1e:	bf00      	nop
d03c1f20:	d03ce31e 	.word	0xd03ce31e
d03c1f24:	d03ccfd4 	.word	0xd03ccfd4
d03c1f28:	d03ccfd8 	.word	0xd03ccfd8

d03c1f2c <flip_front_buffer>:
d03c1f2c:	4b15      	ldr	r3, [pc, #84]	; (d03c1f84 <flip_front_buffer+0x58>)
d03c1f2e:	b410      	push	{r4}
d03c1f30:	781a      	ldrb	r2, [r3, #0]
d03c1f32:	f1c2 0201 	rsb	r2, r2, #1
d03c1f36:	b2d2      	uxtb	r2, r2
d03c1f38:	701a      	strb	r2, [r3, #0]
d03c1f3a:	4b13      	ldr	r3, [pc, #76]	; (d03c1f88 <flip_front_buffer+0x5c>)
d03c1f3c:	6818      	ldr	r0, [r3, #0]
d03c1f3e:	4b13      	ldr	r3, [pc, #76]	; (d03c1f8c <flip_front_buffer+0x60>)
d03c1f40:	681c      	ldr	r4, [r3, #0]
d03c1f42:	4b13      	ldr	r3, [pc, #76]	; (d03c1f90 <flip_front_buffer+0x64>)
d03c1f44:	b182      	cbz	r2, d03c1f68 <flip_front_buffer+0x3c>
d03c1f46:	7b1a      	ldrb	r2, [r3, #12]
d03c1f48:	7b59      	ldrb	r1, [r3, #13]
d03c1f4a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c1f4e:	7b99      	ldrb	r1, [r3, #14]
d03c1f50:	7bdb      	ldrb	r3, [r3, #15]
d03c1f52:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c1f56:	4601      	mov	r1, r0
d03c1f58:	4620      	mov	r0, r4
d03c1f5a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03c1f5e:	681b      	ldr	r3, [r3, #0]
d03c1f60:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c1f62:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c1f66:	4718      	bx	r3
d03c1f68:	7b1a      	ldrb	r2, [r3, #12]
d03c1f6a:	7b59      	ldrb	r1, [r3, #13]
d03c1f6c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c1f70:	7b99      	ldrb	r1, [r3, #14]
d03c1f72:	7bdb      	ldrb	r3, [r3, #15]
d03c1f74:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c1f78:	4621      	mov	r1, r4
d03c1f7a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03c1f7e:	681b      	ldr	r3, [r3, #0]
d03c1f80:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c1f82:	e7ee      	b.n	d03c1f62 <flip_front_buffer+0x36>
d03c1f84:	d03ccd29 	.word	0xd03ccd29
d03c1f88:	d03ccd30 	.word	0xd03ccd30
d03c1f8c:	d03ccd2c 	.word	0xd03ccd2c
d03c1f90:	2001f000 	.word	0x2001f000

d03c1f94 <ui_midi_import_progress_add>:
d03c1f94:	4b9f      	ldr	r3, [pc, #636]	; (d03c2214 <ui_midi_import_progress_add+0x280>)
d03c1f96:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c1f9a:	781b      	ldrb	r3, [r3, #0]
d03c1f9c:	b08f      	sub	sp, #60	; 0x3c
d03c1f9e:	460c      	mov	r4, r1
d03c1fa0:	2b00      	cmp	r3, #0
d03c1fa2:	f000 8131 	beq.w	d03c2208 <ui_midi_import_progress_add+0x274>
d03c1fa6:	4b9c      	ldr	r3, [pc, #624]	; (d03c2218 <ui_midi_import_progress_add+0x284>)
d03c1fa8:	681a      	ldr	r2, [r3, #0]
d03c1faa:	2a00      	cmp	r2, #0
d03c1fac:	f000 812c 	beq.w	d03c2208 <ui_midi_import_progress_add+0x274>
d03c1fb0:	4b9a      	ldr	r3, [pc, #616]	; (d03c221c <ui_midi_import_progress_add+0x288>)
d03c1fb2:	b138      	cbz	r0, d03c1fc4 <ui_midi_import_progress_add+0x30>
d03c1fb4:	6819      	ldr	r1, [r3, #0]
d03c1fb6:	1840      	adds	r0, r0, r1
d03c1fb8:	f080 8129 	bcs.w	d03c220e <ui_midi_import_progress_add+0x27a>
d03c1fbc:	4290      	cmp	r0, r2
d03c1fbe:	bf28      	it	cs
d03c1fc0:	4610      	movcs	r0, r2
d03c1fc2:	6018      	str	r0, [r3, #0]
d03c1fc4:	6818      	ldr	r0, [r3, #0]
d03c1fc6:	2164      	movs	r1, #100	; 0x64
d03c1fc8:	2300      	movs	r3, #0
d03c1fca:	fba0 0101 	umull	r0, r1, r0, r1
d03c1fce:	f007 fb41 	bl	d03c9654 <__aeabi_uldivmod>
d03c1fd2:	4b93      	ldr	r3, [pc, #588]	; (d03c2220 <ui_midi_import_progress_add+0x28c>)
d03c1fd4:	b2c2      	uxtb	r2, r0
d03c1fd6:	b91c      	cbnz	r4, d03c1fe0 <ui_midi_import_progress_add+0x4c>
d03c1fd8:	7819      	ldrb	r1, [r3, #0]
d03c1fda:	4291      	cmp	r1, r2
d03c1fdc:	f000 8114 	beq.w	d03c2208 <ui_midi_import_progress_add+0x274>
d03c1fe0:	701a      	strb	r2, [r3, #0]
d03c1fe2:	2864      	cmp	r0, #100	; 0x64
d03c1fe4:	4b8f      	ldr	r3, [pc, #572]	; (d03c2224 <ui_midi_import_progress_add+0x290>)
d03c1fe6:	f44f 768a 	mov.w	r6, #276	; 0x114
d03c1fea:	4c8f      	ldr	r4, [pc, #572]	; (d03c2228 <ui_midi_import_progress_add+0x294>)
d03c1fec:	bf28      	it	cs
d03c1fee:	2064      	movcs	r0, #100	; 0x64
d03c1ff0:	f8b3 9000 	ldrh.w	r9, [r3]
d03c1ff4:	271a      	movs	r7, #26
d03c1ff6:	4b8d      	ldr	r3, [pc, #564]	; (d03c222c <ui_midi_import_progress_add+0x298>)
d03c1ff8:	4346      	muls	r6, r0
d03c1ffa:	4605      	mov	r5, r0
d03c1ffc:	f8b3 a000 	ldrh.w	sl, [r3]
d03c2000:	4b8b      	ldr	r3, [pc, #556]	; (d03c2230 <ui_midi_import_progress_add+0x29c>)
d03c2002:	f8d3 8000 	ldr.w	r8, [r3]
d03c2006:	7b23      	ldrb	r3, [r4, #12]
d03c2008:	7b62      	ldrb	r2, [r4, #13]
d03c200a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c200e:	7ba2      	ldrb	r2, [r4, #14]
d03c2010:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2014:	7be2      	ldrb	r2, [r4, #15]
d03c2016:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c201a:	681b      	ldr	r3, [r3, #0]
d03c201c:	68db      	ldr	r3, [r3, #12]
d03c201e:	4798      	blx	r3
d03c2020:	f7ff ff84 	bl	d03c1f2c <flip_front_buffer>
d03c2024:	7b23      	ldrb	r3, [r4, #12]
d03c2026:	7b62      	ldrb	r2, [r4, #13]
d03c2028:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c202c:	7ba2      	ldrb	r2, [r4, #14]
d03c202e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2032:	7be2      	ldrb	r2, [r4, #15]
d03c2034:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2038:	685b      	ldr	r3, [r3, #4]
d03c203a:	681b      	ldr	r3, [r3, #0]
d03c203c:	4798      	blx	r3
d03c203e:	231f      	movs	r3, #31
d03c2040:	216a      	movs	r1, #106	; 0x6a
d03c2042:	f44f 72a4 	mov.w	r2, #328	; 0x148
d03c2046:	204c      	movs	r0, #76	; 0x4c
d03c2048:	9301      	str	r3, [sp, #4]
d03c204a:	9700      	str	r7, [sp, #0]
d03c204c:	2370      	movs	r3, #112	; 0x70
d03c204e:	f7fe fe1b 	bl	d03c0c88 <ui_box>
d03c2052:	7b23      	ldrb	r3, [r4, #12]
d03c2054:	7b62      	ldrb	r2, [r4, #13]
d03c2056:	2014      	movs	r0, #20
d03c2058:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c205c:	7ba2      	ldrb	r2, [r4, #14]
d03c205e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2062:	7be2      	ldrb	r2, [r4, #15]
d03c2064:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2068:	685b      	ldr	r3, [r3, #4]
d03c206a:	68db      	ldr	r3, [r3, #12]
d03c206c:	4798      	blx	r3
d03c206e:	7b23      	ldrb	r3, [r4, #12]
d03c2070:	7b62      	ldrb	r2, [r4, #13]
d03c2072:	216b      	movs	r1, #107	; 0x6b
d03c2074:	204d      	movs	r0, #77	; 0x4d
d03c2076:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c207a:	7ba2      	ldrb	r2, [r4, #14]
d03c207c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2080:	7be2      	ldrb	r2, [r4, #15]
d03c2082:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2086:	f44f 72a3 	mov.w	r2, #326	; 0x146
d03c208a:	685b      	ldr	r3, [r3, #4]
d03c208c:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c2090:	2318      	movs	r3, #24
d03c2092:	47d8      	blx	fp
d03c2094:	7b23      	ldrb	r3, [r4, #12]
d03c2096:	7b62      	ldrb	r2, [r4, #13]
d03c2098:	201e      	movs	r0, #30
d03c209a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c209e:	7ba2      	ldrb	r2, [r4, #14]
d03c20a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20a4:	7be2      	ldrb	r2, [r4, #15]
d03c20a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20aa:	685b      	ldr	r3, [r3, #4]
d03c20ac:	68db      	ldr	r3, [r3, #12]
d03c20ae:	4798      	blx	r3
d03c20b0:	7b23      	ldrb	r3, [r4, #12]
d03c20b2:	7b62      	ldrb	r2, [r4, #13]
d03c20b4:	216f      	movs	r1, #111	; 0x6f
d03c20b6:	2060      	movs	r0, #96	; 0x60
d03c20b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c20bc:	7ba2      	ldrb	r2, [r4, #14]
d03c20be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20c2:	7be2      	ldrb	r2, [r4, #15]
d03c20c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20c8:	4a5a      	ldr	r2, [pc, #360]	; (d03c2234 <ui_midi_import_progress_add+0x2a0>)
d03c20ca:	685b      	ldr	r3, [r3, #4]
d03c20cc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c20ce:	4798      	blx	r3
d03c20d0:	2130      	movs	r1, #48	; 0x30
d03c20d2:	464b      	mov	r3, r9
d03c20d4:	4a58      	ldr	r2, [pc, #352]	; (d03c2238 <ui_midi_import_progress_add+0x2a4>)
d03c20d6:	a802      	add	r0, sp, #8
d03c20d8:	f8cd a000 	str.w	sl, [sp]
d03c20dc:	f007 ff72 	bl	d03c9fc4 <sniprintf>
d03c20e0:	7b23      	ldrb	r3, [r4, #12]
d03c20e2:	7b62      	ldrb	r2, [r4, #13]
d03c20e4:	2019      	movs	r0, #25
d03c20e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c20ea:	7ba2      	ldrb	r2, [r4, #14]
d03c20ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c20f0:	7be2      	ldrb	r2, [r4, #15]
d03c20f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c20f6:	685b      	ldr	r3, [r3, #4]
d03c20f8:	68db      	ldr	r3, [r3, #12]
d03c20fa:	4798      	blx	r3
d03c20fc:	7b23      	ldrb	r3, [r4, #12]
d03c20fe:	7b62      	ldrb	r2, [r4, #13]
d03c2100:	2190      	movs	r1, #144	; 0x90
d03c2102:	2068      	movs	r0, #104	; 0x68
d03c2104:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2108:	7ba2      	ldrb	r2, [r4, #14]
d03c210a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c210e:	7be2      	ldrb	r2, [r4, #15]
d03c2110:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2114:	aa02      	add	r2, sp, #8
d03c2116:	685b      	ldr	r3, [r3, #4]
d03c2118:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c211a:	4798      	blx	r3
d03c211c:	4643      	mov	r3, r8
d03c211e:	4a47      	ldr	r2, [pc, #284]	; (d03c223c <ui_midi_import_progress_add+0x2a8>)
d03c2120:	2130      	movs	r1, #48	; 0x30
d03c2122:	a802      	add	r0, sp, #8
d03c2124:	f007 ff4e 	bl	d03c9fc4 <sniprintf>
d03c2128:	7b23      	ldrb	r3, [r4, #12]
d03c212a:	7b62      	ldrb	r2, [r4, #13]
d03c212c:	2190      	movs	r1, #144	; 0x90
d03c212e:	f44f 7082 	mov.w	r0, #260	; 0x104
d03c2132:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2136:	7ba2      	ldrb	r2, [r4, #14]
d03c2138:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c213c:	7be2      	ldrb	r2, [r4, #15]
d03c213e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2142:	aa02      	add	r2, sp, #8
d03c2144:	685b      	ldr	r3, [r3, #4]
d03c2146:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c2148:	4798      	blx	r3
d03c214a:	2311      	movs	r3, #17
d03c214c:	f44f 728c 	mov.w	r2, #280	; 0x118
d03c2150:	21a8      	movs	r1, #168	; 0xa8
d03c2152:	9301      	str	r3, [sp, #4]
d03c2154:	2064      	movs	r0, #100	; 0x64
d03c2156:	2312      	movs	r3, #18
d03c2158:	9700      	str	r7, [sp, #0]
d03c215a:	f7fe fd95 	bl	d03c0c88 <ui_box>
d03c215e:	2e63      	cmp	r6, #99	; 0x63
d03c2160:	d921      	bls.n	d03c21a6 <ui_midi_import_progress_add+0x212>
d03c2162:	7b23      	ldrb	r3, [r4, #12]
d03c2164:	200e      	movs	r0, #14
d03c2166:	7b62      	ldrb	r2, [r4, #13]
d03c2168:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c216c:	7ba2      	ldrb	r2, [r4, #14]
d03c216e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2172:	7be2      	ldrb	r2, [r4, #15]
d03c2174:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2178:	685b      	ldr	r3, [r3, #4]
d03c217a:	68db      	ldr	r3, [r3, #12]
d03c217c:	4798      	blx	r3
d03c217e:	7b23      	ldrb	r3, [r4, #12]
d03c2180:	7b62      	ldrb	r2, [r4, #13]
d03c2182:	21aa      	movs	r1, #170	; 0xaa
d03c2184:	2066      	movs	r0, #102	; 0x66
d03c2186:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c218a:	7ba2      	ldrb	r2, [r4, #14]
d03c218c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2190:	7be2      	ldrb	r2, [r4, #15]
d03c2192:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2196:	2264      	movs	r2, #100	; 0x64
d03c2198:	fbb6 f2f2 	udiv	r2, r6, r2
d03c219c:	685b      	ldr	r3, [r3, #4]
d03c219e:	b212      	sxth	r2, r2
d03c21a0:	685e      	ldr	r6, [r3, #4]
d03c21a2:	230e      	movs	r3, #14
d03c21a4:	47b0      	blx	r6
d03c21a6:	2130      	movs	r1, #48	; 0x30
d03c21a8:	462b      	mov	r3, r5
d03c21aa:	4a25      	ldr	r2, [pc, #148]	; (d03c2240 <ui_midi_import_progress_add+0x2ac>)
d03c21ac:	a802      	add	r0, sp, #8
d03c21ae:	f007 ff09 	bl	d03c9fc4 <sniprintf>
d03c21b2:	7b23      	ldrb	r3, [r4, #12]
d03c21b4:	7b62      	ldrb	r2, [r4, #13]
d03c21b6:	201e      	movs	r0, #30
d03c21b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21bc:	7ba2      	ldrb	r2, [r4, #14]
d03c21be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c21c2:	7be2      	ldrb	r2, [r4, #15]
d03c21c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c21c8:	685b      	ldr	r3, [r3, #4]
d03c21ca:	68db      	ldr	r3, [r3, #12]
d03c21cc:	4798      	blx	r3
d03c21ce:	7b23      	ldrb	r3, [r4, #12]
d03c21d0:	7b62      	ldrb	r2, [r4, #13]
d03c21d2:	21c0      	movs	r1, #192	; 0xc0
d03c21d4:	20dc      	movs	r0, #220	; 0xdc
d03c21d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21da:	7ba2      	ldrb	r2, [r4, #14]
d03c21dc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c21e0:	7be2      	ldrb	r2, [r4, #15]
d03c21e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c21e6:	aa02      	add	r2, sp, #8
d03c21e8:	685b      	ldr	r3, [r3, #4]
d03c21ea:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c21ec:	4798      	blx	r3
d03c21ee:	7b23      	ldrb	r3, [r4, #12]
d03c21f0:	7b62      	ldrb	r2, [r4, #13]
d03c21f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c21f6:	7ba2      	ldrb	r2, [r4, #14]
d03c21f8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c21fc:	7be2      	ldrb	r2, [r4, #15]
d03c21fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2202:	681b      	ldr	r3, [r3, #0]
d03c2204:	681b      	ldr	r3, [r3, #0]
d03c2206:	4798      	blx	r3
d03c2208:	b00f      	add	sp, #60	; 0x3c
d03c220a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c220e:	4610      	mov	r0, r2
d03c2210:	e6d7      	b.n	d03c1fc2 <ui_midi_import_progress_add+0x2e>
d03c2212:	bf00      	nop
d03c2214:	d03cf31e 	.word	0xd03cf31e
d03c2218:	d03cf328 	.word	0xd03cf328
d03c221c:	d03cf320 	.word	0xd03cf320
d03c2220:	d03cf324 	.word	0xd03cf324
d03c2224:	d03cf32c 	.word	0xd03cf32c
d03c2228:	2001f000 	.word	0x2001f000
d03c222c:	d03cf32e 	.word	0xd03cf32e
d03c2230:	d03ccfd4 	.word	0xd03ccfd4
d03c2234:	d03cb377 	.word	0xd03cb377
d03c2238:	d03cb386 	.word	0xd03cb386
d03c223c:	d03cb7f2 	.word	0xd03cb7f2
d03c2240:	d03cb392 	.word	0xd03cb392

d03c2244 <the50hzISR>:
d03c2244:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c2246:	2500      	movs	r5, #0
d03c2248:	4c17      	ldr	r4, [pc, #92]	; (d03c22a8 <the50hzISR+0x64>)
d03c224a:	4f18      	ldr	r7, [pc, #96]	; (d03c22ac <the50hzISR+0x68>)
d03c224c:	f7fe fa12 	bl	d03c0674 <sid_midi_isr>
d03c2250:	462e      	mov	r6, r5
d03c2252:	7823      	ldrb	r3, [r4, #0]
d03c2254:	b2e8      	uxtb	r0, r5
d03c2256:	b12b      	cbz	r3, d03c2264 <the50hzISR+0x20>
d03c2258:	88e3      	ldrh	r3, [r4, #6]
d03c225a:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
d03c225e:	d219      	bcs.n	d03c2294 <the50hzISR+0x50>
d03c2260:	3301      	adds	r3, #1
d03c2262:	80e3      	strh	r3, [r4, #6]
d03c2264:	3501      	adds	r5, #1
d03c2266:	3408      	adds	r4, #8
d03c2268:	2d06      	cmp	r5, #6
d03c226a:	d1f2      	bne.n	d03c2252 <the50hzISR+0xe>
d03c226c:	4a10      	ldr	r2, [pc, #64]	; (d03c22b0 <the50hzISR+0x6c>)
d03c226e:	6813      	ldr	r3, [r2, #0]
d03c2270:	3301      	adds	r3, #1
d03c2272:	6013      	str	r3, [r2, #0]
d03c2274:	4a0f      	ldr	r2, [pc, #60]	; (d03c22b4 <the50hzISR+0x70>)
d03c2276:	7813      	ldrb	r3, [r2, #0]
d03c2278:	3301      	adds	r3, #1
d03c227a:	b2db      	uxtb	r3, r3
d03c227c:	2b0e      	cmp	r3, #14
d03c227e:	7013      	strb	r3, [r2, #0]
d03c2280:	d907      	bls.n	d03c2292 <the50hzISR+0x4e>
d03c2282:	2300      	movs	r3, #0
d03c2284:	7013      	strb	r3, [r2, #0]
d03c2286:	4a0c      	ldr	r2, [pc, #48]	; (d03c22b8 <the50hzISR+0x74>)
d03c2288:	7813      	ldrb	r3, [r2, #0]
d03c228a:	fab3 f383 	clz	r3, r3
d03c228e:	095b      	lsrs	r3, r3, #5
d03c2290:	7013      	strb	r3, [r2, #0]
d03c2292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c2294:	f7fe f94e 	bl	d03c0534 <sid_voice_note_kill>
d03c2298:	683b      	ldr	r3, [r7, #0]
d03c229a:	7026      	strb	r6, [r4, #0]
d03c229c:	3301      	adds	r3, #1
d03c229e:	7166      	strb	r6, [r4, #5]
d03c22a0:	80e6      	strh	r6, [r4, #6]
d03c22a2:	603b      	str	r3, [r7, #0]
d03c22a4:	e7de      	b.n	d03c2264 <the50hzISR+0x20>
d03c22a6:	bf00      	nop
d03c22a8:	d03cd108 	.word	0xd03cd108
d03c22ac:	d03ccfa8 	.word	0xd03ccfa8
d03c22b0:	d03ccfb0 	.word	0xd03ccfb0
d03c22b4:	d03cf58b 	.word	0xd03cf58b
d03c22b8:	d03cf58a 	.word	0xd03cf58a

d03c22bc <ui_project_ensure_dir>:
d03c22bc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c22be:	4d19      	ldr	r5, [pc, #100]	; (d03c2324 <ui_project_ensure_dir+0x68>)
d03c22c0:	2400      	movs	r4, #0
d03c22c2:	4669      	mov	r1, sp
d03c22c4:	4818      	ldr	r0, [pc, #96]	; (d03c2328 <ui_project_ensure_dir+0x6c>)
d03c22c6:	792b      	ldrb	r3, [r5, #4]
d03c22c8:	796a      	ldrb	r2, [r5, #5]
d03c22ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c22ce:	79aa      	ldrb	r2, [r5, #6]
d03c22d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c22d4:	79ea      	ldrb	r2, [r5, #7]
d03c22d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c22da:	aa01      	add	r2, sp, #4
d03c22dc:	681b      	ldr	r3, [r3, #0]
d03c22de:	e9cd 4400 	strd	r4, r4, [sp]
d03c22e2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c22e4:	4798      	blx	r3
d03c22e6:	b920      	cbnz	r0, d03c22f2 <ui_project_ensure_dir+0x36>
d03c22e8:	9800      	ldr	r0, [sp, #0]
d03c22ea:	f000 0001 	and.w	r0, r0, #1
d03c22ee:	b003      	add	sp, #12
d03c22f0:	bd30      	pop	{r4, r5, pc}
d03c22f2:	792b      	ldrb	r3, [r5, #4]
d03c22f4:	796a      	ldrb	r2, [r5, #5]
d03c22f6:	480c      	ldr	r0, [pc, #48]	; (d03c2328 <ui_project_ensure_dir+0x6c>)
d03c22f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c22fc:	79aa      	ldrb	r2, [r5, #6]
d03c22fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2302:	79ea      	ldrb	r2, [r5, #7]
d03c2304:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2308:	681b      	ldr	r3, [r3, #0]
d03c230a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d03c230c:	4798      	blx	r3
d03c230e:	f010 0ff7 	tst.w	r0, #247	; 0xf7
d03c2312:	d004      	beq.n	d03c231e <ui_project_ensure_dir+0x62>
d03c2314:	4805      	ldr	r0, [pc, #20]	; (d03c232c <ui_project_ensure_dir+0x70>)
d03c2316:	f7ff f869 	bl	d03c13ec <ui_set_status>
d03c231a:	4620      	mov	r0, r4
d03c231c:	e7e7      	b.n	d03c22ee <ui_project_ensure_dir+0x32>
d03c231e:	2001      	movs	r0, #1
d03c2320:	e7e5      	b.n	d03c22ee <ui_project_ensure_dir+0x32>
d03c2322:	bf00      	nop
d03c2324:	2001f000 	.word	0x2001f000
d03c2328:	d03cb398 	.word	0xd03cb398
d03c232c:	d03cb3ab 	.word	0xd03cb3ab

d03c2330 <ui_select_program_delta>:
d03c2330:	2809      	cmp	r0, #9
d03c2332:	b410      	push	{r4}
d03c2334:	d107      	bne.n	d03c2346 <ui_select_program_delta+0x16>
d03c2336:	4b0d      	ldr	r3, [pc, #52]	; (d03c236c <ui_select_program_delta+0x3c>)
d03c2338:	2203      	movs	r2, #3
d03c233a:	480d      	ldr	r0, [pc, #52]	; (d03c2370 <ui_select_program_delta+0x40>)
d03c233c:	701a      	strb	r2, [r3, #0]
d03c233e:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c2342:	f7ff b853 	b.w	d03c13ec <ui_set_status>
d03c2346:	280f      	cmp	r0, #15
d03c2348:	d806      	bhi.n	d03c2358 <ui_select_program_delta+0x28>
d03c234a:	4c0a      	ldr	r4, [pc, #40]	; (d03c2374 <ui_select_program_delta+0x44>)
d03c234c:	5c22      	ldrb	r2, [r4, r0]
d03c234e:	4411      	add	r1, r2
d03c2350:	b20b      	sxth	r3, r1
d03c2352:	f383 0307 	usat	r3, #7, r3
d03c2356:	5423      	strb	r3, [r4, r0]
d03c2358:	4a07      	ldr	r2, [pc, #28]	; (d03c2378 <ui_select_program_delta+0x48>)
d03c235a:	2301      	movs	r3, #1
d03c235c:	f85d 4b04 	ldr.w	r4, [sp], #4
d03c2360:	6811      	ldr	r1, [r2, #0]
d03c2362:	fa03 f000 	lsl.w	r0, r3, r0
d03c2366:	4308      	orrs	r0, r1
d03c2368:	6010      	str	r0, [r2, #0]
d03c236a:	4770      	bx	lr
d03c236c:	d03cf330 	.word	0xd03cf330
d03c2370:	d03cb3cb 	.word	0xd03cb3cb
d03c2374:	d03ccd64 	.word	0xd03ccd64
d03c2378:	d03cd13c 	.word	0xd03cd13c

d03c237c <sid_midi_note_off_source>:
d03c237c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03c2380:	4604      	mov	r4, r0
d03c2382:	f7fe fba9 	bl	d03c0ad8 <sid_find_voice_source>
d03c2386:	28ff      	cmp	r0, #255	; 0xff
d03c2388:	4606      	mov	r6, r0
d03c238a:	d00f      	beq.n	d03c23ac <sid_midi_note_off_source+0x30>
d03c238c:	2c09      	cmp	r4, #9
d03c238e:	f04f 0500 	mov.w	r5, #0
d03c2392:	4c09      	ldr	r4, [pc, #36]	; (d03c23b8 <sid_midi_note_off_source+0x3c>)
d03c2394:	ea4f 08c0 	mov.w	r8, r0, lsl #3
d03c2398:	4f08      	ldr	r7, [pc, #32]	; (d03c23bc <sid_midi_note_off_source+0x40>)
d03c239a:	d109      	bne.n	d03c23b0 <sid_midi_note_off_source+0x34>
d03c239c:	683b      	ldr	r3, [r7, #0]
d03c239e:	f804 5036 	strb.w	r5, [r4, r6, lsl #3]
d03c23a2:	4444      	add	r4, r8
d03c23a4:	3301      	adds	r3, #1
d03c23a6:	7165      	strb	r5, [r4, #5]
d03c23a8:	80e5      	strh	r5, [r4, #6]
d03c23aa:	603b      	str	r3, [r7, #0]
d03c23ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03c23b0:	f7fe f866 	bl	d03c0480 <sid_voice_note_off>
d03c23b4:	e7f2      	b.n	d03c239c <sid_midi_note_off_source+0x20>
d03c23b6:	bf00      	nop
d03c23b8:	d03cd108 	.word	0xd03cd108
d03c23bc:	d03ccf98 	.word	0xd03ccf98

d03c23c0 <seq_update_transport>:
d03c23c0:	4b94      	ldr	r3, [pc, #592]	; (d03c2614 <seq_update_transport+0x254>)
d03c23c2:	4895      	ldr	r0, [pc, #596]	; (d03c2618 <seq_update_transport+0x258>)
d03c23c4:	6819      	ldr	r1, [r3, #0]
d03c23c6:	4b95      	ldr	r3, [pc, #596]	; (d03c261c <seq_update_transport+0x25c>)
d03c23c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c23cc:	4c94      	ldr	r4, [pc, #592]	; (d03c2620 <seq_update_transport+0x260>)
d03c23ce:	b089      	sub	sp, #36	; 0x24
d03c23d0:	4e94      	ldr	r6, [pc, #592]	; (d03c2624 <seq_update_transport+0x264>)
d03c23d2:	681d      	ldr	r5, [r3, #0]
d03c23d4:	7822      	ldrb	r2, [r4, #0]
d03c23d6:	6019      	str	r1, [r3, #0]
d03c23d8:	7833      	ldrb	r3, [r6, #0]
d03c23da:	9404      	str	r4, [sp, #16]
d03c23dc:	4313      	orrs	r3, r2
d03c23de:	7802      	ldrb	r2, [r0, #0]
d03c23e0:	9005      	str	r0, [sp, #20]
d03c23e2:	4313      	orrs	r3, r2
d03c23e4:	4a90      	ldr	r2, [pc, #576]	; (d03c2628 <seq_update_transport+0x268>)
d03c23e6:	7817      	ldrb	r7, [r2, #0]
d03c23e8:	433b      	orrs	r3, r7
d03c23ea:	d008      	beq.n	d03c23fe <seq_update_transport+0x3e>
d03c23ec:	1b4b      	subs	r3, r1, r5
d03c23ee:	4d8f      	ldr	r5, [pc, #572]	; (d03c262c <seq_update_transport+0x26c>)
d03c23f0:	9206      	str	r2, [sp, #24]
d03c23f2:	9303      	str	r3, [sp, #12]
d03c23f4:	9b03      	ldr	r3, [sp, #12]
d03c23f6:	3b01      	subs	r3, #1
d03c23f8:	9303      	str	r3, [sp, #12]
d03c23fa:	3301      	adds	r3, #1
d03c23fc:	d102      	bne.n	d03c2404 <seq_update_transport+0x44>
d03c23fe:	b009      	add	sp, #36	; 0x24
d03c2400:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2404:	9b06      	ldr	r3, [sp, #24]
d03c2406:	781c      	ldrb	r4, [r3, #0]
d03c2408:	b16c      	cbz	r4, d03c2426 <seq_update_transport+0x66>
d03c240a:	3c01      	subs	r4, #1
d03c240c:	b2e4      	uxtb	r4, r4
d03c240e:	701c      	strb	r4, [r3, #0]
d03c2410:	b94c      	cbnz	r4, d03c2426 <seq_update_transport+0x66>
d03c2412:	4f87      	ldr	r7, [pc, #540]	; (d03c2630 <seq_update_transport+0x270>)
d03c2414:	2002      	movs	r0, #2
d03c2416:	f7ff f987 	bl	d03c1728 <sid_midi_all_notes_off_source>
d03c241a:	7839      	ldrb	r1, [r7, #0]
d03c241c:	b119      	cbz	r1, d03c2426 <seq_update_transport+0x66>
d03c241e:	200f      	movs	r0, #15
d03c2420:	f7ff faea 	bl	d03c19f8 <seq_midi_out_note_off>
d03c2424:	703c      	strb	r4, [r7, #0]
d03c2426:	9b05      	ldr	r3, [sp, #20]
d03c2428:	781b      	ldrb	r3, [r3, #0]
d03c242a:	b373      	cbz	r3, d03c248a <seq_update_transport+0xca>
d03c242c:	4981      	ldr	r1, [pc, #516]	; (d03c2634 <seq_update_transport+0x274>)
d03c242e:	880b      	ldrh	r3, [r1, #0]
d03c2430:	b9db      	cbnz	r3, d03c246a <seq_update_transport+0xaa>
d03c2432:	4b81      	ldr	r3, [pc, #516]	; (d03c2638 <seq_update_transport+0x278>)
d03c2434:	781a      	ldrb	r2, [r3, #0]
d03c2436:	2a01      	cmp	r2, #1
d03c2438:	d81d      	bhi.n	d03c2476 <seq_update_transport+0xb6>
d03c243a:	2400      	movs	r4, #0
d03c243c:	9a05      	ldr	r2, [sp, #20]
d03c243e:	701c      	strb	r4, [r3, #0]
d03c2440:	2301      	movs	r3, #1
d03c2442:	7014      	strb	r4, [r2, #0]
d03c2444:	9a04      	ldr	r2, [sp, #16]
d03c2446:	7033      	strb	r3, [r6, #0]
d03c2448:	7013      	strb	r3, [r2, #0]
d03c244a:	4a7c      	ldr	r2, [pc, #496]	; (d03c263c <seq_update_transport+0x27c>)
d03c244c:	7013      	strb	r3, [r2, #0]
d03c244e:	4b7c      	ldr	r3, [pc, #496]	; (d03c2640 <seq_update_transport+0x280>)
d03c2450:	6818      	ldr	r0, [r3, #0]
d03c2452:	f7ff f9cd 	bl	d03c17f0 <seq_playback_sync>
d03c2456:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c245a:	4621      	mov	r1, r4
d03c245c:	4879      	ldr	r0, [pc, #484]	; (d03c2644 <seq_update_transport+0x284>)
d03c245e:	f007 faa7 	bl	d03c99b0 <memset>
d03c2462:	4879      	ldr	r0, [pc, #484]	; (d03c2648 <seq_update_transport+0x288>)
d03c2464:	f7fe ffc2 	bl	d03c13ec <ui_set_status>
d03c2468:	e7c4      	b.n	d03c23f4 <seq_update_transport+0x34>
d03c246a:	3b01      	subs	r3, #1
d03c246c:	b29b      	uxth	r3, r3
d03c246e:	800b      	strh	r3, [r1, #0]
d03c2470:	2b00      	cmp	r3, #0
d03c2472:	d1bf      	bne.n	d03c23f4 <seq_update_transport+0x34>
d03c2474:	e7dd      	b.n	d03c2432 <seq_update_transport+0x72>
d03c2476:	3a01      	subs	r2, #1
d03c2478:	b2d2      	uxtb	r2, r2
d03c247a:	701a      	strb	r2, [r3, #0]
d03c247c:	f7fe fb86 	bl	d03c0b8c <seq_beat_ticks>
d03c2480:	8008      	strh	r0, [r1, #0]
d03c2482:	4610      	mov	r0, r2
d03c2484:	f7ff fc14 	bl	d03c1cb0 <seq_metronome_click>
d03c2488:	e7b4      	b.n	d03c23f4 <seq_update_transport+0x34>
d03c248a:	7833      	ldrb	r3, [r6, #0]
d03c248c:	b943      	cbnz	r3, d03c24a0 <seq_update_transport+0xe0>
d03c248e:	9b04      	ldr	r3, [sp, #16]
d03c2490:	781b      	ldrb	r3, [r3, #0]
d03c2492:	2b00      	cmp	r3, #0
d03c2494:	d0ae      	beq.n	d03c23f4 <seq_update_transport+0x34>
d03c2496:	4a6a      	ldr	r2, [pc, #424]	; (d03c2640 <seq_update_transport+0x280>)
d03c2498:	6813      	ldr	r3, [r2, #0]
d03c249a:	3301      	adds	r3, #1
d03c249c:	6013      	str	r3, [r2, #0]
d03c249e:	e7a9      	b.n	d03c23f4 <seq_update_transport+0x34>
d03c24a0:	4b67      	ldr	r3, [pc, #412]	; (d03c2640 <seq_update_transport+0x280>)
d03c24a2:	681f      	ldr	r7, [r3, #0]
d03c24a4:	4638      	mov	r0, r7
d03c24a6:	f7ff f9a3 	bl	d03c17f0 <seq_playback_sync>
d03c24aa:	2800      	cmp	r0, #0
d03c24ac:	d05c      	beq.n	d03c2568 <seq_update_transport+0x1a8>
d03c24ae:	f8df 81ac 	ldr.w	r8, [pc, #428]	; d03c265c <seq_update_transport+0x29c>
d03c24b2:	4a66      	ldr	r2, [pc, #408]	; (d03c264c <seq_update_transport+0x28c>)
d03c24b4:	f8d8 3000 	ldr.w	r3, [r8]
d03c24b8:	f8d2 9000 	ldr.w	r9, [r2]
d03c24bc:	f8d5 b000 	ldr.w	fp, [r5]
d03c24c0:	4c63      	ldr	r4, [pc, #396]	; (d03c2650 <seq_update_transport+0x290>)
d03c24c2:	f8d4 a000 	ldr.w	sl, [r4]
d03c24c6:	9307      	str	r3, [sp, #28]
d03c24c8:	459a      	cmp	sl, r3
d03c24ca:	d207      	bcs.n	d03c24dc <seq_update_transport+0x11c>
d03c24cc:	f839 101a 	ldrh.w	r1, [r9, sl, lsl #1]
d03c24d0:	4608      	mov	r0, r1
d03c24d2:	f7fe fb69 	bl	d03c0ba8 <seq_note_end_tick>
d03c24d6:	4287      	cmp	r7, r0
d03c24d8:	9b07      	ldr	r3, [sp, #28]
d03c24da:	d04b      	beq.n	d03c2574 <seq_update_transport+0x1b4>
d03c24dc:	f8df 9178 	ldr.w	r9, [pc, #376]	; d03c2658 <seq_update_transport+0x298>
d03c24e0:	46cb      	mov	fp, r9
d03c24e2:	e085      	b.n	d03c25f0 <seq_update_transport+0x230>
d03c24e4:	682b      	ldr	r3, [r5, #0]
d03c24e6:	ea4f 1804 	mov.w	r8, r4, lsl #4
d03c24ea:	eb03 1104 	add.w	r1, r3, r4, lsl #4
d03c24ee:	9307      	str	r3, [sp, #28]
d03c24f0:	7b4a      	ldrb	r2, [r1, #13]
d03c24f2:	b382      	cbz	r2, d03c2556 <seq_update_transport+0x196>
d03c24f4:	4620      	mov	r0, r4
d03c24f6:	f7fe fb57 	bl	d03c0ba8 <seq_note_end_tick>
d03c24fa:	9b07      	ldr	r3, [sp, #28]
d03c24fc:	4681      	mov	r9, r0
d03c24fe:	f853 3008 	ldr.w	r3, [r3, r8]
d03c2502:	429f      	cmp	r7, r3
d03c2504:	d116      	bne.n	d03c2534 <seq_update_transport+0x174>
d03c2506:	f891 c008 	ldrb.w	ip, [r1, #8]
d03c250a:	7aca      	ldrb	r2, [r1, #11]
d03c250c:	7a8b      	ldrb	r3, [r1, #10]
d03c250e:	7a48      	ldrb	r0, [r1, #9]
d03c2510:	4661      	mov	r1, ip
d03c2512:	f8cd b000 	str.w	fp, [sp]
d03c2516:	f7ff fb45 	bl	d03c1ba4 <sid_midi_note_on_program_source>
d03c251a:	682b      	ldr	r3, [r5, #0]
d03c251c:	4443      	add	r3, r8
d03c251e:	7a99      	ldrb	r1, [r3, #10]
d03c2520:	7a58      	ldrb	r0, [r3, #9]
d03c2522:	f7ff fa43 	bl	d03c19ac <seq_midi_out_program>
d03c2526:	682b      	ldr	r3, [r5, #0]
d03c2528:	4443      	add	r3, r8
d03c252a:	7ada      	ldrb	r2, [r3, #11]
d03c252c:	7a19      	ldrb	r1, [r3, #8]
d03c252e:	7a58      	ldrb	r0, [r3, #9]
d03c2530:	f7fe fac6 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c2534:	454f      	cmp	r7, r9
d03c2536:	d10e      	bne.n	d03c2556 <seq_update_transport+0x196>
d03c2538:	682b      	ldr	r3, [r5, #0]
d03c253a:	2201      	movs	r2, #1
d03c253c:	4443      	add	r3, r8
d03c253e:	7a19      	ldrb	r1, [r3, #8]
d03c2540:	7a58      	ldrb	r0, [r3, #9]
d03c2542:	f7ff ff1b 	bl	d03c237c <sid_midi_note_off_source>
d03c2546:	682b      	ldr	r3, [r5, #0]
d03c2548:	4498      	add	r8, r3
d03c254a:	f898 1008 	ldrb.w	r1, [r8, #8]
d03c254e:	f898 0009 	ldrb.w	r0, [r8, #9]
d03c2552:	f7ff fa51 	bl	d03c19f8 <seq_midi_out_note_off>
d03c2556:	3401      	adds	r4, #1
d03c2558:	f8da 3000 	ldr.w	r3, [sl]
d03c255c:	429c      	cmp	r4, r3
d03c255e:	d3c1      	bcc.n	d03c24e4 <seq_update_transport+0x124>
d03c2560:	7833      	ldrb	r3, [r6, #0]
d03c2562:	2b00      	cmp	r3, #0
d03c2564:	d197      	bne.n	d03c2496 <seq_update_transport+0xd6>
d03c2566:	e792      	b.n	d03c248e <seq_update_transport+0xce>
d03c2568:	4604      	mov	r4, r0
d03c256a:	f8df a0f4 	ldr.w	sl, [pc, #244]	; d03c2660 <seq_update_transport+0x2a0>
d03c256e:	f04f 0b01 	mov.w	fp, #1
d03c2572:	e7f1      	b.n	d03c2558 <seq_update_transport+0x198>
d03c2574:	f10a 0201 	add.w	r2, sl, #1
d03c2578:	eb0b 1001 	add.w	r0, fp, r1, lsl #4
d03c257c:	ea4f 1a01 	mov.w	sl, r1, lsl #4
d03c2580:	6022      	str	r2, [r4, #0]
d03c2582:	7b42      	ldrb	r2, [r0, #13]
d03c2584:	2a00      	cmp	r2, #0
d03c2586:	d09c      	beq.n	d03c24c2 <seq_update_transport+0x102>
d03c2588:	7a01      	ldrb	r1, [r0, #8]
d03c258a:	2201      	movs	r2, #1
d03c258c:	7a40      	ldrb	r0, [r0, #9]
d03c258e:	f7ff fef5 	bl	d03c237c <sid_midi_note_off_source>
d03c2592:	682b      	ldr	r3, [r5, #0]
d03c2594:	449a      	add	sl, r3
d03c2596:	f89a 1008 	ldrb.w	r1, [sl, #8]
d03c259a:	f89a 0009 	ldrb.w	r0, [sl, #9]
d03c259e:	f7ff fa2b 	bl	d03c19f8 <seq_midi_out_note_off>
d03c25a2:	e786      	b.n	d03c24b2 <seq_update_transport+0xf2>
d03c25a4:	f83e 0013 	ldrh.w	r0, [lr, r3, lsl #1]
d03c25a8:	0104      	lsls	r4, r0, #4
d03c25aa:	eb0c 1000 	add.w	r0, ip, r0, lsl #4
d03c25ae:	f85c 1004 	ldr.w	r1, [ip, r4]
d03c25b2:	428f      	cmp	r7, r1
d03c25b4:	d128      	bne.n	d03c2608 <seq_update_transport+0x248>
d03c25b6:	7b41      	ldrb	r1, [r0, #13]
d03c25b8:	3301      	adds	r3, #1
d03c25ba:	2201      	movs	r2, #1
d03c25bc:	b311      	cbz	r1, d03c2604 <seq_update_transport+0x244>
d03c25be:	f04f 0c01 	mov.w	ip, #1
d03c25c2:	7ac2      	ldrb	r2, [r0, #11]
d03c25c4:	7a01      	ldrb	r1, [r0, #8]
d03c25c6:	f8cb 3000 	str.w	r3, [fp]
d03c25ca:	7a83      	ldrb	r3, [r0, #10]
d03c25cc:	7a40      	ldrb	r0, [r0, #9]
d03c25ce:	f8cd c000 	str.w	ip, [sp]
d03c25d2:	f7ff fae7 	bl	d03c1ba4 <sid_midi_note_on_program_source>
d03c25d6:	682b      	ldr	r3, [r5, #0]
d03c25d8:	4423      	add	r3, r4
d03c25da:	7a99      	ldrb	r1, [r3, #10]
d03c25dc:	7a58      	ldrb	r0, [r3, #9]
d03c25de:	f7ff f9e5 	bl	d03c19ac <seq_midi_out_program>
d03c25e2:	682b      	ldr	r3, [r5, #0]
d03c25e4:	441c      	add	r4, r3
d03c25e6:	7ae2      	ldrb	r2, [r4, #11]
d03c25e8:	7a21      	ldrb	r1, [r4, #8]
d03c25ea:	7a60      	ldrb	r0, [r4, #9]
d03c25ec:	f7fe fa68 	bl	d03c0ac0 <seq_midi_out_note_on>
d03c25f0:	4b18      	ldr	r3, [pc, #96]	; (d03c2654 <seq_update_transport+0x294>)
d03c25f2:	2200      	movs	r2, #0
d03c25f4:	f8d8 a000 	ldr.w	sl, [r8]
d03c25f8:	f8d3 e000 	ldr.w	lr, [r3]
d03c25fc:	f8d5 c000 	ldr.w	ip, [r5]
d03c2600:	f8d9 3000 	ldr.w	r3, [r9]
d03c2604:	4553      	cmp	r3, sl
d03c2606:	d3cd      	bcc.n	d03c25a4 <seq_update_transport+0x1e4>
d03c2608:	2a00      	cmp	r2, #0
d03c260a:	d0a9      	beq.n	d03c2560 <seq_update_transport+0x1a0>
d03c260c:	4a12      	ldr	r2, [pc, #72]	; (d03c2658 <seq_update_transport+0x298>)
d03c260e:	6013      	str	r3, [r2, #0]
d03c2610:	e7a6      	b.n	d03c2560 <seq_update_transport+0x1a0>
d03c2612:	bf00      	nop
d03c2614:	d03ccfb0 	.word	0xd03ccfb0
d03c2618:	d03ccfb4 	.word	0xd03ccfb4
d03c261c:	d03ccfc4 	.word	0xd03ccfc4
d03c2620:	d03cd105 	.word	0xd03cd105
d03c2624:	d03cd0fc 	.word	0xd03cd0fc
d03c2628:	d03ccfc9 	.word	0xd03ccfc9
d03c262c:	d03ccfd8 	.word	0xd03ccfd8
d03c2630:	d03ccfc8 	.word	0xd03ccfc8
d03c2634:	d03ccfb6 	.word	0xd03ccfb6
d03c2638:	d03ccfb8 	.word	0xd03ccfb8
d03c263c:	d03cd104 	.word	0xd03cd104
d03c2640:	d03cd100 	.word	0xd03cd100
d03c2644:	d03ccfec 	.word	0xd03ccfec
d03c2648:	d03cb3eb 	.word	0xd03cb3eb
d03c264c:	d03ccfe4 	.word	0xd03ccfe4
d03c2650:	d03cd0f4 	.word	0xd03cd0f4
d03c2654:	d03ccfe8 	.word	0xd03ccfe8
d03c2658:	d03cd0f8 	.word	0xd03cd0f8
d03c265c:	d03ccfdc 	.word	0xd03ccfdc
d03c2660:	d03ccfd4 	.word	0xd03ccfd4

d03c2664 <ui_file_read_exact.constprop.0>:
d03c2664:	2300      	movs	r3, #0
d03c2666:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c2668:	460c      	mov	r4, r1
d03c266a:	4615      	mov	r5, r2
d03c266c:	9301      	str	r3, [sp, #4]
d03c266e:	b12a      	cbz	r2, d03c267c <ui_file_read_exact.constprop.0+0x18>
d03c2670:	6813      	ldr	r3, [r2, #0]
d03c2672:	428b      	cmp	r3, r1
d03c2674:	d202      	bcs.n	d03c267c <ui_file_read_exact.constprop.0+0x18>
d03c2676:	2000      	movs	r0, #0
d03c2678:	b002      	add	sp, #8
d03c267a:	bd70      	pop	{r4, r5, r6, pc}
d03c267c:	4a10      	ldr	r2, [pc, #64]	; (d03c26c0 <ui_file_read_exact.constprop.0+0x5c>)
d03c267e:	7913      	ldrb	r3, [r2, #4]
d03c2680:	7951      	ldrb	r1, [r2, #5]
d03c2682:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c2686:	7991      	ldrb	r1, [r2, #6]
d03c2688:	79d2      	ldrb	r2, [r2, #7]
d03c268a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c268e:	4601      	mov	r1, r0
d03c2690:	2001      	movs	r0, #1
d03c2692:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2696:	4622      	mov	r2, r4
d03c2698:	681b      	ldr	r3, [r3, #0]
d03c269a:	689e      	ldr	r6, [r3, #8]
d03c269c:	ab01      	add	r3, sp, #4
d03c269e:	47b0      	blx	r6
d03c26a0:	2800      	cmp	r0, #0
d03c26a2:	d1e8      	bne.n	d03c2676 <ui_file_read_exact.constprop.0+0x12>
d03c26a4:	9b01      	ldr	r3, [sp, #4]
d03c26a6:	429c      	cmp	r4, r3
d03c26a8:	d1e5      	bne.n	d03c2676 <ui_file_read_exact.constprop.0+0x12>
d03c26aa:	b115      	cbz	r5, d03c26b2 <ui_file_read_exact.constprop.0+0x4e>
d03c26ac:	682b      	ldr	r3, [r5, #0]
d03c26ae:	1b1b      	subs	r3, r3, r4
d03c26b0:	602b      	str	r3, [r5, #0]
d03c26b2:	4620      	mov	r0, r4
d03c26b4:	2100      	movs	r1, #0
d03c26b6:	f7ff fc6d 	bl	d03c1f94 <ui_midi_import_progress_add>
d03c26ba:	2001      	movs	r0, #1
d03c26bc:	e7dc      	b.n	d03c2678 <ui_file_read_exact.constprop.0+0x14>
d03c26be:	bf00      	nop
d03c26c0:	2001f000 	.word	0x2001f000

d03c26c4 <ui_file_read_be16.constprop.0>:
d03c26c4:	b513      	push	{r0, r1, r4, lr}
d03c26c6:	2200      	movs	r2, #0
d03c26c8:	4604      	mov	r4, r0
d03c26ca:	2102      	movs	r1, #2
d03c26cc:	a801      	add	r0, sp, #4
d03c26ce:	f7ff ffc9 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c26d2:	b138      	cbz	r0, d03c26e4 <ui_file_read_be16.constprop.0+0x20>
d03c26d4:	f89d 2004 	ldrb.w	r2, [sp, #4]
d03c26d8:	2001      	movs	r0, #1
d03c26da:	f89d 3005 	ldrb.w	r3, [sp, #5]
d03c26de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c26e2:	8023      	strh	r3, [r4, #0]
d03c26e4:	b002      	add	sp, #8
d03c26e6:	bd10      	pop	{r4, pc}

d03c26e8 <ui_file_read_be32.constprop.0>:
d03c26e8:	b513      	push	{r0, r1, r4, lr}
d03c26ea:	2104      	movs	r1, #4
d03c26ec:	4604      	mov	r4, r0
d03c26ee:	2200      	movs	r2, #0
d03c26f0:	eb0d 0001 	add.w	r0, sp, r1
d03c26f4:	f7ff ffb6 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c26f8:	b118      	cbz	r0, d03c2702 <ui_file_read_be32.constprop.0+0x1a>
d03c26fa:	9b01      	ldr	r3, [sp, #4]
d03c26fc:	2001      	movs	r0, #1
d03c26fe:	ba1b      	rev	r3, r3
d03c2700:	6023      	str	r3, [r4, #0]
d03c2702:	b002      	add	sp, #8
d03c2704:	bd10      	pop	{r4, pc}

d03c2706 <ui_file_skip.constprop.0>:
d03c2706:	b570      	push	{r4, r5, r6, lr}
d03c2708:	4604      	mov	r4, r0
d03c270a:	b088      	sub	sp, #32
d03c270c:	460d      	mov	r5, r1
d03c270e:	b914      	cbnz	r4, d03c2716 <ui_file_skip.constprop.0+0x10>
d03c2710:	2001      	movs	r0, #1
d03c2712:	b008      	add	sp, #32
d03c2714:	bd70      	pop	{r4, r5, r6, pc}
d03c2716:	2c20      	cmp	r4, #32
d03c2718:	4626      	mov	r6, r4
d03c271a:	462a      	mov	r2, r5
d03c271c:	4668      	mov	r0, sp
d03c271e:	bf28      	it	cs
d03c2720:	2620      	movcs	r6, #32
d03c2722:	4631      	mov	r1, r6
d03c2724:	f7ff ff9e 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c2728:	2800      	cmp	r0, #0
d03c272a:	d0f2      	beq.n	d03c2712 <ui_file_skip.constprop.0+0xc>
d03c272c:	1ba4      	subs	r4, r4, r6
d03c272e:	e7ee      	b.n	d03c270e <ui_file_skip.constprop.0+0x8>

d03c2730 <ui_file_write_exact.constprop.0>:
d03c2730:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d03c2732:	4614      	mov	r4, r2
d03c2734:	4a10      	ldr	r2, [pc, #64]	; (d03c2778 <ui_file_write_exact.constprop.0+0x48>)
d03c2736:	460d      	mov	r5, r1
d03c2738:	2600      	movs	r6, #0
d03c273a:	7913      	ldrb	r3, [r2, #4]
d03c273c:	7951      	ldrb	r1, [r2, #5]
d03c273e:	9601      	str	r6, [sp, #4]
d03c2740:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c2744:	7991      	ldrb	r1, [r2, #6]
d03c2746:	79d2      	ldrb	r2, [r2, #7]
d03c2748:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c274c:	4601      	mov	r1, r0
d03c274e:	2001      	movs	r0, #1
d03c2750:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2754:	462a      	mov	r2, r5
d03c2756:	681b      	ldr	r3, [r3, #0]
d03c2758:	691f      	ldr	r7, [r3, #16]
d03c275a:	ab01      	add	r3, sp, #4
d03c275c:	47b8      	blx	r7
d03c275e:	b940      	cbnz	r0, d03c2772 <ui_file_write_exact.constprop.0+0x42>
d03c2760:	9b01      	ldr	r3, [sp, #4]
d03c2762:	429d      	cmp	r5, r3
d03c2764:	d106      	bne.n	d03c2774 <ui_file_write_exact.constprop.0+0x44>
d03c2766:	b114      	cbz	r4, d03c276e <ui_file_write_exact.constprop.0+0x3e>
d03c2768:	6821      	ldr	r1, [r4, #0]
d03c276a:	4429      	add	r1, r5
d03c276c:	6021      	str	r1, [r4, #0]
d03c276e:	2001      	movs	r0, #1
d03c2770:	e000      	b.n	d03c2774 <ui_file_write_exact.constprop.0+0x44>
d03c2772:	4630      	mov	r0, r6
d03c2774:	b003      	add	sp, #12
d03c2776:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c2778:	2001f000 	.word	0x2001f000

d03c277c <ui_file_write_u8.constprop.0>:
d03c277c:	b507      	push	{r0, r1, r2, lr}
d03c277e:	460a      	mov	r2, r1
d03c2780:	2101      	movs	r1, #1
d03c2782:	f88d 0007 	strb.w	r0, [sp, #7]
d03c2786:	f10d 0007 	add.w	r0, sp, #7
d03c278a:	f7ff ffd1 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c278e:	b003      	add	sp, #12
d03c2790:	f85d fb04 	ldr.w	pc, [sp], #4

d03c2794 <ui_midi_write_varlen.constprop.0>:
d03c2794:	f000 037f 	and.w	r3, r0, #127	; 0x7f
d03c2798:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c279a:	460e      	mov	r6, r1
d03c279c:	f88d 3000 	strb.w	r3, [sp]
d03c27a0:	2301      	movs	r3, #1
d03c27a2:	09c0      	lsrs	r0, r0, #7
d03c27a4:	b2dc      	uxtb	r4, r3
d03c27a6:	d002      	beq.n	d03c27ae <ui_midi_write_varlen.constprop.0+0x1a>
d03c27a8:	2b05      	cmp	r3, #5
d03c27aa:	d10f      	bne.n	d03c27cc <ui_midi_write_varlen.constprop.0+0x38>
d03c27ac:	461c      	mov	r4, r3
d03c27ae:	1e65      	subs	r5, r4, #1
d03c27b0:	446d      	add	r5, sp
d03c27b2:	3c01      	subs	r4, #1
d03c27b4:	4631      	mov	r1, r6
d03c27b6:	f815 0901 	ldrb.w	r0, [r5], #-1
d03c27ba:	b2e4      	uxtb	r4, r4
d03c27bc:	f7ff ffde 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c27c0:	b110      	cbz	r0, d03c27c8 <ui_midi_write_varlen.constprop.0+0x34>
d03c27c2:	2c00      	cmp	r4, #0
d03c27c4:	d1f5      	bne.n	d03c27b2 <ui_midi_write_varlen.constprop.0+0x1e>
d03c27c6:	2001      	movs	r0, #1
d03c27c8:	b002      	add	sp, #8
d03c27ca:	bd70      	pop	{r4, r5, r6, pc}
d03c27cc:	f060 027f 	orn	r2, r0, #127	; 0x7f
d03c27d0:	f80d 2003 	strb.w	r2, [sp, r3]
d03c27d4:	3301      	adds	r3, #1
d03c27d6:	e7e4      	b.n	d03c27a2 <ui_midi_write_varlen.constprop.0+0xe>

d03c27d8 <ui_midi_write_channel_event.constprop.0>:
d03c27d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c27da:	9c06      	ldr	r4, [sp, #24]
d03c27dc:	460f      	mov	r7, r1
d03c27de:	4616      	mov	r6, r2
d03c27e0:	461d      	mov	r5, r3
d03c27e2:	4621      	mov	r1, r4
d03c27e4:	f7ff ffd6 	bl	d03c2794 <ui_midi_write_varlen.constprop.0>
d03c27e8:	b908      	cbnz	r0, d03c27ee <ui_midi_write_channel_event.constprop.0+0x16>
d03c27ea:	2000      	movs	r0, #0
d03c27ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c27ee:	4621      	mov	r1, r4
d03c27f0:	4638      	mov	r0, r7
d03c27f2:	f7ff ffc3 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c27f6:	2800      	cmp	r0, #0
d03c27f8:	d0f7      	beq.n	d03c27ea <ui_midi_write_channel_event.constprop.0+0x12>
d03c27fa:	4621      	mov	r1, r4
d03c27fc:	f006 007f 	and.w	r0, r6, #127	; 0x7f
d03c2800:	f7ff ffbc 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c2804:	2800      	cmp	r0, #0
d03c2806:	d0f0      	beq.n	d03c27ea <ui_midi_write_channel_event.constprop.0+0x12>
d03c2808:	4621      	mov	r1, r4
d03c280a:	f005 007f 	and.w	r0, r5, #127	; 0x7f
d03c280e:	f7ff ffb5 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c2812:	3800      	subs	r0, #0
d03c2814:	bf18      	it	ne
d03c2816:	2001      	movne	r0, #1
d03c2818:	e7e8      	b.n	d03c27ec <ui_midi_write_channel_event.constprop.0+0x14>

d03c281a <ui_file_write_be32.constprop.0>:
d03c281a:	b507      	push	{r0, r1, r2, lr}
d03c281c:	460a      	mov	r2, r1
d03c281e:	ba00      	rev	r0, r0
d03c2820:	2104      	movs	r1, #4
d03c2822:	9001      	str	r0, [sp, #4]
d03c2824:	eb0d 0001 	add.w	r0, sp, r1
d03c2828:	f7ff ff82 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c282c:	b003      	add	sp, #12
d03c282e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

d03c2834 <ui_song_save_path.constprop.0>:
d03c2834:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c2838:	f8df 8164 	ldr.w	r8, [pc, #356]	; d03c29a0 <ui_song_save_path.constprop.0+0x16c>
d03c283c:	f04f 0900 	mov.w	r9, #0
d03c2840:	f8d8 5000 	ldr.w	r5, [r8]
d03c2844:	f8cd 9000 	str.w	r9, [sp]
d03c2848:	b91d      	cbnz	r5, d03c2852 <ui_song_save_path.constprop.0+0x1e>
d03c284a:	4847      	ldr	r0, [pc, #284]	; (d03c2968 <ui_song_save_path.constprop.0+0x134>)
d03c284c:	f7fe fdce 	bl	d03c13ec <ui_set_status>
d03c2850:	e031      	b.n	d03c28b6 <ui_song_save_path.constprop.0+0x82>
d03c2852:	2220      	movs	r2, #32
d03c2854:	4649      	mov	r1, r9
d03c2856:	1d28      	adds	r0, r5, #4
d03c2858:	4f44      	ldr	r7, [pc, #272]	; (d03c296c <ui_song_save_path.constprop.0+0x138>)
d03c285a:	f007 f8a9 	bl	d03c99b0 <memset>
d03c285e:	2207      	movs	r2, #7
d03c2860:	4943      	ldr	r1, [pc, #268]	; (d03c2970 <ui_song_save_path.constprop.0+0x13c>)
d03c2862:	4628      	mov	r0, r5
d03c2864:	f007 f896 	bl	d03c9994 <memcpy>
d03c2868:	4b42      	ldr	r3, [pc, #264]	; (d03c2974 <ui_song_save_path.constprop.0+0x140>)
d03c286a:	4e43      	ldr	r6, [pc, #268]	; (d03c2978 <ui_song_save_path.constprop.0+0x144>)
d03c286c:	2001      	movs	r0, #1
d03c286e:	60ab      	str	r3, [r5, #8]
d03c2870:	4b42      	ldr	r3, [pc, #264]	; (d03c297c <ui_song_save_path.constprop.0+0x148>)
d03c2872:	4943      	ldr	r1, [pc, #268]	; (d03c2980 <ui_song_save_path.constprop.0+0x14c>)
d03c2874:	881b      	ldrh	r3, [r3, #0]
d03c2876:	81ab      	strh	r3, [r5, #12]
d03c2878:	683b      	ldr	r3, [r7, #0]
d03c287a:	612b      	str	r3, [r5, #16]
d03c287c:	4b41      	ldr	r3, [pc, #260]	; (d03c2984 <ui_song_save_path.constprop.0+0x150>)
d03c287e:	681b      	ldr	r3, [r3, #0]
d03c2880:	616b      	str	r3, [r5, #20]
d03c2882:	4b41      	ldr	r3, [pc, #260]	; (d03c2988 <ui_song_save_path.constprop.0+0x154>)
d03c2884:	781b      	ldrb	r3, [r3, #0]
d03c2886:	762b      	strb	r3, [r5, #24]
d03c2888:	4b40      	ldr	r3, [pc, #256]	; (d03c298c <ui_song_save_path.constprop.0+0x158>)
d03c288a:	781b      	ldrb	r3, [r3, #0]
d03c288c:	766b      	strb	r3, [r5, #25]
d03c288e:	7933      	ldrb	r3, [r6, #4]
d03c2890:	7972      	ldrb	r2, [r6, #5]
d03c2892:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2896:	79b2      	ldrb	r2, [r6, #6]
d03c2898:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c289c:	79f2      	ldrb	r2, [r6, #7]
d03c289e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c28a2:	220a      	movs	r2, #10
d03c28a4:	681b      	ldr	r3, [r3, #0]
d03c28a6:	681b      	ldr	r3, [r3, #0]
d03c28a8:	4798      	blx	r3
d03c28aa:	4605      	mov	r5, r0
d03c28ac:	b138      	cbz	r0, d03c28be <ui_song_save_path.constprop.0+0x8a>
d03c28ae:	464d      	mov	r5, r9
d03c28b0:	4837      	ldr	r0, [pc, #220]	; (d03c2990 <ui_song_save_path.constprop.0+0x15c>)
d03c28b2:	f7fe fd9b 	bl	d03c13ec <ui_set_status>
d03c28b6:	4628      	mov	r0, r5
d03c28b8:	b003      	add	sp, #12
d03c28ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c28be:	7933      	ldrb	r3, [r6, #4]
d03c28c0:	2001      	movs	r0, #1
d03c28c2:	7972      	ldrb	r2, [r6, #5]
d03c28c4:	f8d8 1000 	ldr.w	r1, [r8]
d03c28c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c28cc:	79b2      	ldrb	r2, [r6, #6]
d03c28ce:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c28d2:	79f2      	ldrb	r2, [r6, #7]
d03c28d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c28d8:	2224      	movs	r2, #36	; 0x24
d03c28da:	681b      	ldr	r3, [r3, #0]
d03c28dc:	691c      	ldr	r4, [r3, #16]
d03c28de:	466b      	mov	r3, sp
d03c28e0:	47a0      	blx	r4
d03c28e2:	4604      	mov	r4, r0
d03c28e4:	bb18      	cbnz	r0, d03c292e <ui_song_save_path.constprop.0+0xfa>
d03c28e6:	9b00      	ldr	r3, [sp, #0]
d03c28e8:	2b24      	cmp	r3, #36	; 0x24
d03c28ea:	d120      	bne.n	d03c292e <ui_song_save_path.constprop.0+0xfa>
d03c28ec:	683a      	ldr	r2, [r7, #0]
d03c28ee:	b1f2      	cbz	r2, d03c292e <ui_song_save_path.constprop.0+0xfa>
d03c28f0:	7933      	ldrb	r3, [r6, #4]
d03c28f2:	0112      	lsls	r2, r2, #4
d03c28f4:	7971      	ldrb	r1, [r6, #5]
d03c28f6:	9001      	str	r0, [sp, #4]
d03c28f8:	2001      	movs	r0, #1
d03c28fa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c28fe:	79b1      	ldrb	r1, [r6, #6]
d03c2900:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c2904:	79f1      	ldrb	r1, [r6, #7]
d03c2906:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d03c290a:	4922      	ldr	r1, [pc, #136]	; (d03c2994 <ui_song_save_path.constprop.0+0x160>)
d03c290c:	681b      	ldr	r3, [r3, #0]
d03c290e:	6809      	ldr	r1, [r1, #0]
d03c2910:	691c      	ldr	r4, [r3, #16]
d03c2912:	ab01      	add	r3, sp, #4
d03c2914:	47a0      	blx	r4
d03c2916:	4604      	mov	r4, r0
d03c2918:	e9dd 3200 	ldrd	r3, r2, [sp]
d03c291c:	4413      	add	r3, r2
d03c291e:	9300      	str	r3, [sp, #0]
d03c2920:	b928      	cbnz	r0, d03c292e <ui_song_save_path.constprop.0+0xfa>
d03c2922:	683b      	ldr	r3, [r7, #0]
d03c2924:	ebb2 1f03 	cmp.w	r2, r3, lsl #4
d03c2928:	bf14      	ite	ne
d03c292a:	2401      	movne	r4, #1
d03c292c:	2400      	moveq	r4, #0
d03c292e:	7933      	ldrb	r3, [r6, #4]
d03c2930:	2001      	movs	r0, #1
d03c2932:	7972      	ldrb	r2, [r6, #5]
d03c2934:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2938:	79b2      	ldrb	r2, [r6, #6]
d03c293a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c293e:	79f2      	ldrb	r2, [r6, #7]
d03c2940:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2944:	681b      	ldr	r3, [r3, #0]
d03c2946:	68db      	ldr	r3, [r3, #12]
d03c2948:	4798      	blx	r3
d03c294a:	b92c      	cbnz	r4, d03c2958 <ui_song_save_path.constprop.0+0x124>
d03c294c:	683b      	ldr	r3, [r7, #0]
d03c294e:	9a00      	ldr	r2, [sp, #0]
d03c2950:	011b      	lsls	r3, r3, #4
d03c2952:	3324      	adds	r3, #36	; 0x24
d03c2954:	4293      	cmp	r3, r2
d03c2956:	d001      	beq.n	d03c295c <ui_song_save_path.constprop.0+0x128>
d03c2958:	480f      	ldr	r0, [pc, #60]	; (d03c2998 <ui_song_save_path.constprop.0+0x164>)
d03c295a:	e777      	b.n	d03c284c <ui_song_save_path.constprop.0+0x18>
d03c295c:	480f      	ldr	r0, [pc, #60]	; (d03c299c <ui_song_save_path.constprop.0+0x168>)
d03c295e:	2501      	movs	r5, #1
d03c2960:	f7fe fd44 	bl	d03c13ec <ui_set_status>
d03c2964:	e7a7      	b.n	d03c28b6 <ui_song_save_path.constprop.0+0x82>
d03c2966:	bf00      	nop
d03c2968:	d03cb3f5 	.word	0xd03cb3f5
d03c296c:	d03ccfd4 	.word	0xd03ccfd4
d03c2970:	d03cb40e 	.word	0xd03cb40e
d03c2974:	00240001 	.word	0x00240001
d03c2978:	2001f000 	.word	0x2001f000
d03c297c:	d03ccfac 	.word	0xd03ccfac
d03c2980:	d03cf331 	.word	0xd03cf331
d03c2984:	d03cd100 	.word	0xd03cd100
d03c2988:	d03cd106 	.word	0xd03cd106
d03c298c:	d03cd107 	.word	0xd03cd107
d03c2990:	d03cb416 	.word	0xd03cb416
d03c2994:	d03ccfd8 	.word	0xd03ccfd8
d03c2998:	d03cb42c 	.word	0xd03cb42c
d03c299c:	d03cb443 	.word	0xd03cb443
d03c29a0:	d03cf3d4 	.word	0xd03cf3d4

d03c29a4 <ui_project_save_path.constprop.0>:
d03c29a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c29a8:	4e59      	ldr	r6, [pc, #356]	; (d03c2b10 <ui_project_save_path.constprop.0+0x16c>)
d03c29aa:	b085      	sub	sp, #20
d03c29ac:	2700      	movs	r7, #0
d03c29ae:	6834      	ldr	r4, [r6, #0]
d03c29b0:	9703      	str	r7, [sp, #12]
d03c29b2:	b91c      	cbnz	r4, d03c29bc <ui_project_save_path.constprop.0+0x18>
d03c29b4:	4857      	ldr	r0, [pc, #348]	; (d03c2b14 <ui_project_save_path.constprop.0+0x170>)
d03c29b6:	f7fe fd19 	bl	d03c13ec <ui_set_status>
d03c29ba:	e075      	b.n	d03c2aa8 <ui_project_save_path.constprop.0+0x104>
d03c29bc:	f24c 05c2 	movw	r5, #49346	; 0xc0c2
d03c29c0:	4639      	mov	r1, r7
d03c29c2:	4620      	mov	r0, r4
d03c29c4:	f104 0942 	add.w	r9, r4, #66	; 0x42
d03c29c8:	462a      	mov	r2, r5
d03c29ca:	f8df 8180 	ldr.w	r8, [pc, #384]	; d03c2b4c <ui_project_save_path.constprop.0+0x1a8>
d03c29ce:	f006 ffef 	bl	d03c99b0 <memset>
d03c29d2:	2207      	movs	r2, #7
d03c29d4:	4950      	ldr	r1, [pc, #320]	; (d03c2b18 <ui_project_save_path.constprop.0+0x174>)
d03c29d6:	4620      	mov	r0, r4
d03c29d8:	f006 ffdc 	bl	d03c9994 <memcpy>
d03c29dc:	2301      	movs	r3, #1
d03c29de:	2210      	movs	r2, #16
d03c29e0:	494e      	ldr	r1, [pc, #312]	; (d03c2b1c <ui_project_save_path.constprop.0+0x178>)
d03c29e2:	8123      	strh	r3, [r4, #8]
d03c29e4:	f104 000c 	add.w	r0, r4, #12
d03c29e8:	8165      	strh	r5, [r4, #10]
d03c29ea:	46ba      	mov	sl, r7
d03c29ec:	f006 ffd2 	bl	d03c9994 <memcpy>
d03c29f0:	2210      	movs	r2, #16
d03c29f2:	494b      	ldr	r1, [pc, #300]	; (d03c2b20 <ui_project_save_path.constprop.0+0x17c>)
d03c29f4:	f104 001c 	add.w	r0, r4, #28
d03c29f8:	f006 ffcc 	bl	d03c9994 <memcpy>
d03c29fc:	f104 002c 	add.w	r0, r4, #44	; 0x2c
d03c2a00:	2210      	movs	r2, #16
d03c2a02:	4948      	ldr	r1, [pc, #288]	; (d03c2b24 <ui_project_save_path.constprop.0+0x180>)
d03c2a04:	f006 ffc6 	bl	d03c9994 <memcpy>
d03c2a08:	4b47      	ldr	r3, [pc, #284]	; (d03c2b28 <ui_project_save_path.constprop.0+0x184>)
d03c2a0a:	34c2      	adds	r4, #194	; 0xc2
d03c2a0c:	881b      	ldrh	r3, [r3, #0]
d03c2a0e:	f824 3c86 	strh.w	r3, [r4, #-134]
d03c2a12:	4b46      	ldr	r3, [pc, #280]	; (d03c2b2c <ui_project_save_path.constprop.0+0x188>)
d03c2a14:	881b      	ldrh	r3, [r3, #0]
d03c2a16:	f824 3c84 	strh.w	r3, [r4, #-132]
d03c2a1a:	4b45      	ldr	r3, [pc, #276]	; (d03c2b30 <ui_project_save_path.constprop.0+0x18c>)
d03c2a1c:	781b      	ldrb	r3, [r3, #0]
d03c2a1e:	f804 3c82 	strb.w	r3, [r4, #-130]
d03c2a22:	4b44      	ldr	r3, [pc, #272]	; (d03c2b34 <ui_project_save_path.constprop.0+0x190>)
d03c2a24:	781b      	ldrb	r3, [r3, #0]
d03c2a26:	f804 3c81 	strb.w	r3, [r4, #-129]
d03c2a2a:	f858 bb04 	ldr.w	fp, [r8], #4
d03c2a2e:	b2f8      	uxtb	r0, r7
d03c2a30:	f7fe fa2c 	bl	d03c0e8c <vm_program_length>
d03c2a34:	f1bb 0f00 	cmp.w	fp, #0
d03c2a38:	d03a      	beq.n	d03c2ab0 <ui_project_save_path.constprop.0+0x10c>
d03c2a3a:	2800      	cmp	r0, #0
d03c2a3c:	d038      	beq.n	d03c2ab0 <ui_project_save_path.constprop.0+0x10c>
d03c2a3e:	2860      	cmp	r0, #96	; 0x60
d03c2a40:	bf28      	it	cs
d03c2a42:	2060      	movcs	r0, #96	; 0x60
d03c2a44:	b2c5      	uxtb	r5, r0
d03c2a46:	f809 5b01 	strb.w	r5, [r9], #1
d03c2a4a:	f1bb 0f00 	cmp.w	fp, #0
d03c2a4e:	d00d      	beq.n	d03c2a6c <ui_project_save_path.constprop.0+0xc8>
d03c2a50:	2300      	movs	r3, #0
d03c2a52:	2204      	movs	r2, #4
d03c2a54:	eb0b 0183 	add.w	r1, fp, r3, lsl #2
d03c2a58:	eb04 0083 	add.w	r0, r4, r3, lsl #2
d03c2a5c:	9301      	str	r3, [sp, #4]
d03c2a5e:	f006 ff99 	bl	d03c9994 <memcpy>
d03c2a62:	9b01      	ldr	r3, [sp, #4]
d03c2a64:	3301      	adds	r3, #1
d03c2a66:	b2da      	uxtb	r2, r3
d03c2a68:	4295      	cmp	r5, r2
d03c2a6a:	d8f2      	bhi.n	d03c2a52 <ui_project_save_path.constprop.0+0xae>
d03c2a6c:	3701      	adds	r7, #1
d03c2a6e:	f884 a17c 	strb.w	sl, [r4, #380]	; 0x17c
d03c2a72:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03c2a76:	2f80      	cmp	r7, #128	; 0x80
d03c2a78:	d1d7      	bne.n	d03c2a2a <ui_project_save_path.constprop.0+0x86>
d03c2a7a:	4d2f      	ldr	r5, [pc, #188]	; (d03c2b38 <ui_project_save_path.constprop.0+0x194>)
d03c2a7c:	2001      	movs	r0, #1
d03c2a7e:	492f      	ldr	r1, [pc, #188]	; (d03c2b3c <ui_project_save_path.constprop.0+0x198>)
d03c2a80:	792b      	ldrb	r3, [r5, #4]
d03c2a82:	796a      	ldrb	r2, [r5, #5]
d03c2a84:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2a88:	79aa      	ldrb	r2, [r5, #6]
d03c2a8a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2a8e:	79ea      	ldrb	r2, [r5, #7]
d03c2a90:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2a94:	220a      	movs	r2, #10
d03c2a96:	681b      	ldr	r3, [r3, #0]
d03c2a98:	681b      	ldr	r3, [r3, #0]
d03c2a9a:	4798      	blx	r3
d03c2a9c:	4604      	mov	r4, r0
d03c2a9e:	b148      	cbz	r0, d03c2ab4 <ui_project_save_path.constprop.0+0x110>
d03c2aa0:	2400      	movs	r4, #0
d03c2aa2:	4827      	ldr	r0, [pc, #156]	; (d03c2b40 <ui_project_save_path.constprop.0+0x19c>)
d03c2aa4:	f7fe fca2 	bl	d03c13ec <ui_set_status>
d03c2aa8:	4620      	mov	r0, r4
d03c2aaa:	b005      	add	sp, #20
d03c2aac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2ab0:	2560      	movs	r5, #96	; 0x60
d03c2ab2:	e7c8      	b.n	d03c2a46 <ui_project_save_path.constprop.0+0xa2>
d03c2ab4:	792b      	ldrb	r3, [r5, #4]
d03c2ab6:	2001      	movs	r0, #1
d03c2ab8:	796a      	ldrb	r2, [r5, #5]
d03c2aba:	6831      	ldr	r1, [r6, #0]
d03c2abc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2ac0:	79aa      	ldrb	r2, [r5, #6]
d03c2ac2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2ac6:	79ea      	ldrb	r2, [r5, #7]
d03c2ac8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2acc:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c2ad0:	681b      	ldr	r3, [r3, #0]
d03c2ad2:	691f      	ldr	r7, [r3, #16]
d03c2ad4:	ab03      	add	r3, sp, #12
d03c2ad6:	47b8      	blx	r7
d03c2ad8:	792b      	ldrb	r3, [r5, #4]
d03c2ada:	796a      	ldrb	r2, [r5, #5]
d03c2adc:	4606      	mov	r6, r0
d03c2ade:	2001      	movs	r0, #1
d03c2ae0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2ae4:	79aa      	ldrb	r2, [r5, #6]
d03c2ae6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2aea:	79ea      	ldrb	r2, [r5, #7]
d03c2aec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2af0:	681b      	ldr	r3, [r3, #0]
d03c2af2:	68db      	ldr	r3, [r3, #12]
d03c2af4:	4798      	blx	r3
d03c2af6:	b926      	cbnz	r6, d03c2b02 <ui_project_save_path.constprop.0+0x15e>
d03c2af8:	9a03      	ldr	r2, [sp, #12]
d03c2afa:	f24c 03c2 	movw	r3, #49346	; 0xc0c2
d03c2afe:	429a      	cmp	r2, r3
d03c2b00:	d001      	beq.n	d03c2b06 <ui_project_save_path.constprop.0+0x162>
d03c2b02:	4810      	ldr	r0, [pc, #64]	; (d03c2b44 <ui_project_save_path.constprop.0+0x1a0>)
d03c2b04:	e757      	b.n	d03c29b6 <ui_project_save_path.constprop.0+0x12>
d03c2b06:	4810      	ldr	r0, [pc, #64]	; (d03c2b48 <ui_project_save_path.constprop.0+0x1a4>)
d03c2b08:	2401      	movs	r4, #1
d03c2b0a:	f7fe fc6f 	bl	d03c13ec <ui_set_status>
d03c2b0e:	e7cb      	b.n	d03c2aa8 <ui_project_save_path.constprop.0+0x104>
d03c2b10:	d03cf3a0 	.word	0xd03cf3a0
d03c2b14:	d03cb44e 	.word	0xd03cb44e
d03c2b18:	d03cb46a 	.word	0xd03cb46a
d03c2b1c:	d03ccd64 	.word	0xd03ccd64
d03c2b20:	d03ccd74 	.word	0xd03ccd74
d03c2b24:	d03ccd54 	.word	0xd03ccd54
d03c2b28:	d03ccf8e 	.word	0xd03ccf8e
d03c2b2c:	d03ccd8a 	.word	0xd03ccd8a
d03c2b30:	d03ccd88 	.word	0xd03ccd88
d03c2b34:	d03cf3ca 	.word	0xd03cf3ca
d03c2b38:	2001f000 	.word	0x2001f000
d03c2b3c:	d03cf331 	.word	0xd03cf331
d03c2b40:	d03cb472 	.word	0xd03cb472
d03c2b44:	d03cb48b 	.word	0xd03cb48b
d03c2b48:	d03cb4a5 	.word	0xd03cb4a5
d03c2b4c:	d03cc670 	.word	0xd03cc670

d03c2b50 <ui_program_save_path.constprop.0>:
d03c2b50:	4b4d      	ldr	r3, [pc, #308]	; (d03c2c88 <ui_program_save_path.constprop.0+0x138>)
d03c2b52:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c2b56:	4a4d      	ldr	r2, [pc, #308]	; (d03c2c8c <ui_program_save_path.constprop.0+0x13c>)
d03c2b58:	781b      	ldrb	r3, [r3, #0]
d03c2b5a:	5cd4      	ldrb	r4, [r2, r3]
d03c2b5c:	2300      	movs	r3, #0
d03c2b5e:	9301      	str	r3, [sp, #4]
d03c2b60:	4b4b      	ldr	r3, [pc, #300]	; (d03c2c90 <ui_program_save_path.constprop.0+0x140>)
d03c2b62:	781b      	ldrb	r3, [r3, #0]
d03c2b64:	2bff      	cmp	r3, #255	; 0xff
d03c2b66:	d006      	beq.n	d03c2b76 <ui_program_save_path.constprop.0+0x26>
d03c2b68:	4a4a      	ldr	r2, [pc, #296]	; (d03c2c94 <ui_program_save_path.constprop.0+0x144>)
d03c2b6a:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
d03c2b6e:	4a4a      	ldr	r2, [pc, #296]	; (d03c2c98 <ui_program_save_path.constprop.0+0x148>)
d03c2b70:	4291      	cmp	r1, r2
d03c2b72:	bf08      	it	eq
d03c2b74:	461c      	moveq	r4, r3
d03c2b76:	0623      	lsls	r3, r4, #24
d03c2b78:	d507      	bpl.n	d03c2b8a <ui_program_save_path.constprop.0+0x3a>
d03c2b7a:	4848      	ldr	r0, [pc, #288]	; (d03c2c9c <ui_program_save_path.constprop.0+0x14c>)
d03c2b7c:	2500      	movs	r5, #0
d03c2b7e:	f7fe fc35 	bl	d03c13ec <ui_set_status>
d03c2b82:	4628      	mov	r0, r5
d03c2b84:	b003      	add	sp, #12
d03c2b86:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c2b8a:	4e45      	ldr	r6, [pc, #276]	; (d03c2ca0 <ui_program_save_path.constprop.0+0x150>)
d03c2b8c:	6835      	ldr	r5, [r6, #0]
d03c2b8e:	b91d      	cbnz	r5, d03c2b98 <ui_program_save_path.constprop.0+0x48>
d03c2b90:	4844      	ldr	r0, [pc, #272]	; (d03c2ca4 <ui_program_save_path.constprop.0+0x154>)
d03c2b92:	f7fe fc2b 	bl	d03c13ec <ui_set_status>
d03c2b96:	e7f4      	b.n	d03c2b82 <ui_program_save_path.constprop.0+0x32>
d03c2b98:	f44f 77c7 	mov.w	r7, #398	; 0x18e
d03c2b9c:	2100      	movs	r1, #0
d03c2b9e:	4628      	mov	r0, r5
d03c2ba0:	463a      	mov	r2, r7
d03c2ba2:	f006 ff05 	bl	d03c99b0 <memset>
d03c2ba6:	2207      	movs	r2, #7
d03c2ba8:	493f      	ldr	r1, [pc, #252]	; (d03c2ca8 <ui_program_save_path.constprop.0+0x158>)
d03c2baa:	4628      	mov	r0, r5
d03c2bac:	f006 fef2 	bl	d03c9994 <memcpy>
d03c2bb0:	2301      	movs	r3, #1
d03c2bb2:	732c      	strb	r4, [r5, #12]
d03c2bb4:	4620      	mov	r0, r4
d03c2bb6:	812b      	strh	r3, [r5, #8]
d03c2bb8:	4b36      	ldr	r3, [pc, #216]	; (d03c2c94 <ui_program_save_path.constprop.0+0x144>)
d03c2bba:	816f      	strh	r7, [r5, #10]
d03c2bbc:	f853 8024 	ldr.w	r8, [r3, r4, lsl #2]
d03c2bc0:	f7fe f964 	bl	d03c0e8c <vm_program_length>
d03c2bc4:	f1b8 0f00 	cmp.w	r8, #0
d03c2bc8:	d02e      	beq.n	d03c2c28 <ui_program_save_path.constprop.0+0xd8>
d03c2bca:	b368      	cbz	r0, d03c2c28 <ui_program_save_path.constprop.0+0xd8>
d03c2bcc:	2860      	cmp	r0, #96	; 0x60
d03c2bce:	bf28      	it	cs
d03c2bd0:	2060      	movcs	r0, #96	; 0x60
d03c2bd2:	b2c4      	uxtb	r4, r0
d03c2bd4:	736c      	strb	r4, [r5, #13]
d03c2bd6:	f1b8 0f00 	cmp.w	r8, #0
d03c2bda:	d00d      	beq.n	d03c2bf8 <ui_program_save_path.constprop.0+0xa8>
d03c2bdc:	2700      	movs	r7, #0
d03c2bde:	f105 090e 	add.w	r9, r5, #14
d03c2be2:	eb08 0187 	add.w	r1, r8, r7, lsl #2
d03c2be6:	2204      	movs	r2, #4
d03c2be8:	eb09 0087 	add.w	r0, r9, r7, lsl #2
d03c2bec:	3701      	adds	r7, #1
d03c2bee:	f006 fed1 	bl	d03c9994 <memcpy>
d03c2bf2:	b2fb      	uxtb	r3, r7
d03c2bf4:	429c      	cmp	r4, r3
d03c2bf6:	d8f4      	bhi.n	d03c2be2 <ui_program_save_path.constprop.0+0x92>
d03c2bf8:	4c2c      	ldr	r4, [pc, #176]	; (d03c2cac <ui_program_save_path.constprop.0+0x15c>)
d03c2bfa:	2700      	movs	r7, #0
d03c2bfc:	492c      	ldr	r1, [pc, #176]	; (d03c2cb0 <ui_program_save_path.constprop.0+0x160>)
d03c2bfe:	2001      	movs	r0, #1
d03c2c00:	7923      	ldrb	r3, [r4, #4]
d03c2c02:	7962      	ldrb	r2, [r4, #5]
d03c2c04:	f885 718a 	strb.w	r7, [r5, #394]	; 0x18a
d03c2c08:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c0c:	79a2      	ldrb	r2, [r4, #6]
d03c2c0e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c12:	79e2      	ldrb	r2, [r4, #7]
d03c2c14:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c18:	220a      	movs	r2, #10
d03c2c1a:	681b      	ldr	r3, [r3, #0]
d03c2c1c:	681b      	ldr	r3, [r3, #0]
d03c2c1e:	4798      	blx	r3
d03c2c20:	4605      	mov	r5, r0
d03c2c22:	b118      	cbz	r0, d03c2c2c <ui_program_save_path.constprop.0+0xdc>
d03c2c24:	4823      	ldr	r0, [pc, #140]	; (d03c2cb4 <ui_program_save_path.constprop.0+0x164>)
d03c2c26:	e7a9      	b.n	d03c2b7c <ui_program_save_path.constprop.0+0x2c>
d03c2c28:	2460      	movs	r4, #96	; 0x60
d03c2c2a:	e7d3      	b.n	d03c2bd4 <ui_program_save_path.constprop.0+0x84>
d03c2c2c:	7923      	ldrb	r3, [r4, #4]
d03c2c2e:	2001      	movs	r0, #1
d03c2c30:	7962      	ldrb	r2, [r4, #5]
d03c2c32:	6831      	ldr	r1, [r6, #0]
d03c2c34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c38:	79a2      	ldrb	r2, [r4, #6]
d03c2c3a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c3e:	79e2      	ldrb	r2, [r4, #7]
d03c2c40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c44:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c2c48:	681b      	ldr	r3, [r3, #0]
d03c2c4a:	691f      	ldr	r7, [r3, #16]
d03c2c4c:	ab01      	add	r3, sp, #4
d03c2c4e:	47b8      	blx	r7
d03c2c50:	7923      	ldrb	r3, [r4, #4]
d03c2c52:	7962      	ldrb	r2, [r4, #5]
d03c2c54:	4606      	mov	r6, r0
d03c2c56:	2001      	movs	r0, #1
d03c2c58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c2c5c:	79a2      	ldrb	r2, [r4, #6]
d03c2c5e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c2c62:	79e2      	ldrb	r2, [r4, #7]
d03c2c64:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c2c68:	681b      	ldr	r3, [r3, #0]
d03c2c6a:	68db      	ldr	r3, [r3, #12]
d03c2c6c:	4798      	blx	r3
d03c2c6e:	b91e      	cbnz	r6, d03c2c78 <ui_program_save_path.constprop.0+0x128>
d03c2c70:	9b01      	ldr	r3, [sp, #4]
d03c2c72:	f5b3 7fc7 	cmp.w	r3, #398	; 0x18e
d03c2c76:	d001      	beq.n	d03c2c7c <ui_program_save_path.constprop.0+0x12c>
d03c2c78:	480f      	ldr	r0, [pc, #60]	; (d03c2cb8 <ui_program_save_path.constprop.0+0x168>)
d03c2c7a:	e78a      	b.n	d03c2b92 <ui_program_save_path.constprop.0+0x42>
d03c2c7c:	480f      	ldr	r0, [pc, #60]	; (d03c2cbc <ui_program_save_path.constprop.0+0x16c>)
d03c2c7e:	2501      	movs	r5, #1
d03c2c80:	f7fe fbb4 	bl	d03c13ec <ui_set_status>
d03c2c84:	e77d      	b.n	d03c2b82 <ui_program_save_path.constprop.0+0x32>
d03c2c86:	bf00      	nop
d03c2c88:	d03cf3ca 	.word	0xd03cf3ca
d03c2c8c:	d03ccd64 	.word	0xd03ccd64
d03c2c90:	d03cf588 	.word	0xd03cf588
d03c2c94:	d03cc670 	.word	0xd03cc670
d03c2c98:	d03cf402 	.word	0xd03cf402
d03c2c9c:	d03cb4b3 	.word	0xd03cb4b3
d03c2ca0:	d03cf39c 	.word	0xd03cf39c
d03c2ca4:	d03cb4c9 	.word	0xd03cb4c9
d03c2ca8:	d03cb4e5 	.word	0xd03cb4e5
d03c2cac:	2001f000 	.word	0x2001f000
d03c2cb0:	d03cf331 	.word	0xd03cf331
d03c2cb4:	d03cb4ed 	.word	0xd03cb4ed
d03c2cb8:	d03cb506 	.word	0xd03cb506
d03c2cbc:	d03cb520 	.word	0xd03cb520

d03c2cc0 <ui_event_push.constprop.0>:
d03c2cc0:	b530      	push	{r4, r5, lr}
d03c2cc2:	4c09      	ldr	r4, [pc, #36]	; (d03c2ce8 <ui_event_push.constprop.0+0x28>)
d03c2cc4:	4a09      	ldr	r2, [pc, #36]	; (d03c2cec <ui_event_push.constprop.0+0x2c>)
d03c2cc6:	7821      	ldrb	r1, [r4, #0]
d03c2cc8:	7812      	ldrb	r2, [r2, #0]
d03c2cca:	1c4b      	adds	r3, r1, #1
d03c2ccc:	f003 030f 	and.w	r3, r3, #15
d03c2cd0:	429a      	cmp	r2, r3
d03c2cd2:	d007      	beq.n	d03c2ce4 <ui_event_push.constprop.0+0x24>
d03c2cd4:	4a06      	ldr	r2, [pc, #24]	; (d03c2cf0 <ui_event_push.constprop.0+0x30>)
d03c2cd6:	2501      	movs	r5, #1
d03c2cd8:	7023      	strb	r3, [r4, #0]
d03c2cda:	f802 5021 	strb.w	r5, [r2, r1, lsl #2]
d03c2cde:	eb02 0281 	add.w	r2, r2, r1, lsl #2
d03c2ce2:	8050      	strh	r0, [r2, #2]
d03c2ce4:	bd30      	pop	{r4, r5, pc}
d03c2ce6:	bf00      	nop
d03c2ce8:	d03cda35 	.word	0xd03cda35
d03c2cec:	d03cda76 	.word	0xd03cda76
d03c2cf0:	d03cda36 	.word	0xd03cda36

d03c2cf4 <midi_rx_byte>:
d03c2cf4:	b538      	push	{r3, r4, r5, lr}
d03c2cf6:	0603      	lsls	r3, r0, #24
d03c2cf8:	d522      	bpl.n	d03c2d40 <midi_rx_byte+0x4c>
d03c2cfa:	28f7      	cmp	r0, #247	; 0xf7
d03c2cfc:	d81d      	bhi.n	d03c2d3a <midi_rx_byte+0x46>
d03c2cfe:	28f0      	cmp	r0, #240	; 0xf0
d03c2d00:	4c41      	ldr	r4, [pc, #260]	; (d03c2e08 <midi_rx_byte+0x114>)
d03c2d02:	4942      	ldr	r1, [pc, #264]	; (d03c2e0c <midi_rx_byte+0x118>)
d03c2d04:	4a42      	ldr	r2, [pc, #264]	; (d03c2e10 <midi_rx_byte+0x11c>)
d03c2d06:	d106      	bne.n	d03c2d16 <midi_rx_byte+0x22>
d03c2d08:	2301      	movs	r3, #1
d03c2d0a:	4842      	ldr	r0, [pc, #264]	; (d03c2e14 <midi_rx_byte+0x120>)
d03c2d0c:	7023      	strb	r3, [r4, #0]
d03c2d0e:	2300      	movs	r3, #0
d03c2d10:	7003      	strb	r3, [r0, #0]
d03c2d12:	700b      	strb	r3, [r1, #0]
d03c2d14:	e010      	b.n	d03c2d38 <midi_rx_byte+0x44>
d03c2d16:	2300      	movs	r3, #0
d03c2d18:	28f7      	cmp	r0, #247	; 0xf7
d03c2d1a:	7023      	strb	r3, [r4, #0]
d03c2d1c:	d0f9      	beq.n	d03c2d12 <midi_rx_byte+0x1e>
d03c2d1e:	28ef      	cmp	r0, #239	; 0xef
d03c2d20:	4c3c      	ldr	r4, [pc, #240]	; (d03c2e14 <midi_rx_byte+0x120>)
d03c2d22:	d80b      	bhi.n	d03c2d3c <midi_rx_byte+0x48>
d03c2d24:	7008      	strb	r0, [r1, #0]
d03c2d26:	7020      	strb	r0, [r4, #0]
d03c2d28:	f000 00e0 	and.w	r0, r0, #224	; 0xe0
d03c2d2c:	493a      	ldr	r1, [pc, #232]	; (d03c2e18 <midi_rx_byte+0x124>)
d03c2d2e:	28c0      	cmp	r0, #192	; 0xc0
d03c2d30:	bf0c      	ite	eq
d03c2d32:	2001      	moveq	r0, #1
d03c2d34:	2002      	movne	r0, #2
d03c2d36:	7008      	strb	r0, [r1, #0]
d03c2d38:	7013      	strb	r3, [r2, #0]
d03c2d3a:	bd38      	pop	{r3, r4, r5, pc}
d03c2d3c:	7023      	strb	r3, [r4, #0]
d03c2d3e:	e7e8      	b.n	d03c2d12 <midi_rx_byte+0x1e>
d03c2d40:	4b31      	ldr	r3, [pc, #196]	; (d03c2e08 <midi_rx_byte+0x114>)
d03c2d42:	781b      	ldrb	r3, [r3, #0]
d03c2d44:	2b00      	cmp	r3, #0
d03c2d46:	d1f8      	bne.n	d03c2d3a <midi_rx_byte+0x46>
d03c2d48:	4c30      	ldr	r4, [pc, #192]	; (d03c2e0c <midi_rx_byte+0x118>)
d03c2d4a:	7822      	ldrb	r2, [r4, #0]
d03c2d4c:	b962      	cbnz	r2, d03c2d68 <midi_rx_byte+0x74>
d03c2d4e:	4b31      	ldr	r3, [pc, #196]	; (d03c2e14 <midi_rx_byte+0x120>)
d03c2d50:	781b      	ldrb	r3, [r3, #0]
d03c2d52:	7023      	strb	r3, [r4, #0]
d03c2d54:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
d03c2d58:	2bc0      	cmp	r3, #192	; 0xc0
d03c2d5a:	4b2f      	ldr	r3, [pc, #188]	; (d03c2e18 <midi_rx_byte+0x124>)
d03c2d5c:	bf0c      	ite	eq
d03c2d5e:	2101      	moveq	r1, #1
d03c2d60:	2102      	movne	r1, #2
d03c2d62:	7019      	strb	r1, [r3, #0]
d03c2d64:	4b2a      	ldr	r3, [pc, #168]	; (d03c2e10 <midi_rx_byte+0x11c>)
d03c2d66:	701a      	strb	r2, [r3, #0]
d03c2d68:	7821      	ldrb	r1, [r4, #0]
d03c2d6a:	2900      	cmp	r1, #0
d03c2d6c:	d0e5      	beq.n	d03c2d3a <midi_rx_byte+0x46>
d03c2d6e:	4d28      	ldr	r5, [pc, #160]	; (d03c2e10 <midi_rx_byte+0x11c>)
d03c2d70:	782b      	ldrb	r3, [r5, #0]
d03c2d72:	2b01      	cmp	r3, #1
d03c2d74:	bf9f      	itttt	ls
d03c2d76:	1c5a      	addls	r2, r3, #1
d03c2d78:	702a      	strbls	r2, [r5, #0]
d03c2d7a:	4a28      	ldrls	r2, [pc, #160]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2d7c:	54d0      	strbls	r0, [r2, r3]
d03c2d7e:	4b26      	ldr	r3, [pc, #152]	; (d03c2e18 <midi_rx_byte+0x124>)
d03c2d80:	782a      	ldrb	r2, [r5, #0]
d03c2d82:	781b      	ldrb	r3, [r3, #0]
d03c2d84:	429a      	cmp	r2, r3
d03c2d86:	d3d8      	bcc.n	d03c2d3a <midi_rx_byte+0x46>
d03c2d88:	f001 03f0 	and.w	r3, r1, #240	; 0xf0
d03c2d8c:	f001 010f 	and.w	r1, r1, #15
d03c2d90:	2bb0      	cmp	r3, #176	; 0xb0
d03c2d92:	d021      	beq.n	d03c2dd8 <midi_rx_byte+0xe4>
d03c2d94:	d809      	bhi.n	d03c2daa <midi_rx_byte+0xb6>
d03c2d96:	2b80      	cmp	r3, #128	; 0x80
d03c2d98:	d010      	beq.n	d03c2dbc <midi_rx_byte+0xc8>
d03c2d9a:	2b90      	cmp	r3, #144	; 0x90
d03c2d9c:	d015      	beq.n	d03c2dca <midi_rx_byte+0xd6>
d03c2d9e:	2300      	movs	r3, #0
d03c2da0:	702b      	strb	r3, [r5, #0]
d03c2da2:	4b1c      	ldr	r3, [pc, #112]	; (d03c2e14 <midi_rx_byte+0x120>)
d03c2da4:	781b      	ldrb	r3, [r3, #0]
d03c2da6:	7023      	strb	r3, [r4, #0]
d03c2da8:	e7c7      	b.n	d03c2d3a <midi_rx_byte+0x46>
d03c2daa:	2bc0      	cmp	r3, #192	; 0xc0
d03c2dac:	d027      	beq.n	d03c2dfe <midi_rx_byte+0x10a>
d03c2dae:	2be0      	cmp	r3, #224	; 0xe0
d03c2db0:	d1f5      	bne.n	d03c2d9e <midi_rx_byte+0xaa>
d03c2db2:	4a1a      	ldr	r2, [pc, #104]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2db4:	2003      	movs	r0, #3
d03c2db6:	7853      	ldrb	r3, [r2, #1]
d03c2db8:	7812      	ldrb	r2, [r2, #0]
d03c2dba:	e003      	b.n	d03c2dc4 <midi_rx_byte+0xd0>
d03c2dbc:	4a17      	ldr	r2, [pc, #92]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2dbe:	7853      	ldrb	r3, [r2, #1]
d03c2dc0:	7812      	ldrb	r2, [r2, #0]
d03c2dc2:	2000      	movs	r0, #0
d03c2dc4:	f7fe fe9e 	bl	d03c1b04 <midi_queue_event>
d03c2dc8:	e7e9      	b.n	d03c2d9e <midi_rx_byte+0xaa>
d03c2dca:	4a14      	ldr	r2, [pc, #80]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2dcc:	7853      	ldrb	r3, [r2, #1]
d03c2dce:	7812      	ldrb	r2, [r2, #0]
d03c2dd0:	2b00      	cmp	r3, #0
d03c2dd2:	d0f6      	beq.n	d03c2dc2 <midi_rx_byte+0xce>
d03c2dd4:	2001      	movs	r0, #1
d03c2dd6:	e7f5      	b.n	d03c2dc4 <midi_rx_byte+0xd0>
d03c2dd8:	4b10      	ldr	r3, [pc, #64]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2dda:	781a      	ldrb	r2, [r3, #0]
d03c2ddc:	2a78      	cmp	r2, #120	; 0x78
d03c2dde:	d001      	beq.n	d03c2de4 <midi_rx_byte+0xf0>
d03c2de0:	2a7b      	cmp	r2, #123	; 0x7b
d03c2de2:	d103      	bne.n	d03c2dec <midi_rx_byte+0xf8>
d03c2de4:	2300      	movs	r3, #0
d03c2de6:	2005      	movs	r0, #5
d03c2de8:	461a      	mov	r2, r3
d03c2dea:	e7eb      	b.n	d03c2dc4 <midi_rx_byte+0xd0>
d03c2dec:	2a07      	cmp	r2, #7
d03c2dee:	d003      	beq.n	d03c2df8 <midi_rx_byte+0x104>
d03c2df0:	2a0b      	cmp	r2, #11
d03c2df2:	d001      	beq.n	d03c2df8 <midi_rx_byte+0x104>
d03c2df4:	2a79      	cmp	r2, #121	; 0x79
d03c2df6:	d1d2      	bne.n	d03c2d9e <midi_rx_byte+0xaa>
d03c2df8:	785b      	ldrb	r3, [r3, #1]
d03c2dfa:	2004      	movs	r0, #4
d03c2dfc:	e7e2      	b.n	d03c2dc4 <midi_rx_byte+0xd0>
d03c2dfe:	4a07      	ldr	r2, [pc, #28]	; (d03c2e1c <midi_rx_byte+0x128>)
d03c2e00:	2300      	movs	r3, #0
d03c2e02:	2002      	movs	r0, #2
d03c2e04:	7812      	ldrb	r2, [r2, #0]
d03c2e06:	e7dd      	b.n	d03c2dc4 <midi_rx_byte+0xd0>
d03c2e08:	d03ccf90 	.word	0xd03ccf90
d03c2e0c:	d03ccf95 	.word	0xd03ccf95
d03c2e10:	d03ccf91 	.word	0xd03ccf91
d03c2e14:	d03ccfa4 	.word	0xd03ccfa4
d03c2e18:	d03ccf94 	.word	0xd03ccf94
d03c2e1c:	d03ccf92 	.word	0xd03ccf92

d03c2e20 <ui_button_hit>:
d03c2e20:	4b13      	ldr	r3, [pc, #76]	; (d03c2e70 <ui_button_hit+0x50>)
d03c2e22:	b5f0      	push	{r4, r5, r6, r7, lr}
d03c2e24:	781b      	ldrb	r3, [r3, #0]
d03c2e26:	4c13      	ldr	r4, [pc, #76]	; (d03c2e74 <ui_button_hit+0x54>)
d03c2e28:	3b01      	subs	r3, #1
d03c2e2a:	b21a      	sxth	r2, r3
d03c2e2c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d03c2e30:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d03c2e34:	b215      	sxth	r5, r2
d03c2e36:	3501      	adds	r5, #1
d03c2e38:	d101      	bne.n	d03c2e3e <ui_button_hit+0x1e>
d03c2e3a:	2000      	movs	r0, #0
d03c2e3c:	e014      	b.n	d03c2e68 <ui_button_hit+0x48>
d03c2e3e:	f9b3 6002 	ldrsh.w	r6, [r3, #2]
d03c2e42:	f9b3 5004 	ldrsh.w	r5, [r3, #4]
d03c2e46:	4286      	cmp	r6, r0
d03c2e48:	f9b3 c006 	ldrsh.w	ip, [r3, #6]
d03c2e4c:	f9b3 7008 	ldrsh.w	r7, [r3, #8]
d03c2e50:	dc0b      	bgt.n	d03c2e6a <ui_button_hit+0x4a>
d03c2e52:	4466      	add	r6, ip
d03c2e54:	42b0      	cmp	r0, r6
d03c2e56:	da08      	bge.n	d03c2e6a <ui_button_hit+0x4a>
d03c2e58:	428d      	cmp	r5, r1
d03c2e5a:	dc06      	bgt.n	d03c2e6a <ui_button_hit+0x4a>
d03c2e5c:	443d      	add	r5, r7
d03c2e5e:	42a9      	cmp	r1, r5
d03c2e60:	da03      	bge.n	d03c2e6a <ui_button_hit+0x4a>
d03c2e62:	200c      	movs	r0, #12
d03c2e64:	fb00 4002 	mla	r0, r0, r2, r4
d03c2e68:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03c2e6a:	3a01      	subs	r2, #1
d03c2e6c:	3b0c      	subs	r3, #12
d03c2e6e:	e7e1      	b.n	d03c2e34 <ui_button_hit+0x14>
d03c2e70:	d03cd148 	.word	0xd03cd148
d03c2e74:	d03cd14a 	.word	0xd03cd14a

d03c2e78 <ui_midi_read_varlen.constprop.0>:
d03c2e78:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03c2e7a:	2300      	movs	r3, #0
d03c2e7c:	4604      	mov	r4, r0
d03c2e7e:	460e      	mov	r6, r1
d03c2e80:	2505      	movs	r5, #5
d03c2e82:	f88d 3007 	strb.w	r3, [sp, #7]
d03c2e86:	6003      	str	r3, [r0, #0]
d03c2e88:	3d01      	subs	r5, #1
d03c2e8a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
d03c2e8e:	d013      	beq.n	d03c2eb8 <ui_midi_read_varlen.constprop.0+0x40>
d03c2e90:	4632      	mov	r2, r6
d03c2e92:	2101      	movs	r1, #1
d03c2e94:	f10d 0007 	add.w	r0, sp, #7
d03c2e98:	f7ff fbe4 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c2e9c:	b160      	cbz	r0, d03c2eb8 <ui_midi_read_varlen.constprop.0+0x40>
d03c2e9e:	f89d 2007 	ldrb.w	r2, [sp, #7]
d03c2ea2:	6821      	ldr	r1, [r4, #0]
d03c2ea4:	f002 037f 	and.w	r3, r2, #127	; 0x7f
d03c2ea8:	ea43 13c1 	orr.w	r3, r3, r1, lsl #7
d03c2eac:	6023      	str	r3, [r4, #0]
d03c2eae:	0613      	lsls	r3, r2, #24
d03c2eb0:	d4ea      	bmi.n	d03c2e88 <ui_midi_read_varlen.constprop.0+0x10>
d03c2eb2:	2001      	movs	r0, #1
d03c2eb4:	b002      	add	sp, #8
d03c2eb6:	bd70      	pop	{r4, r5, r6, pc}
d03c2eb8:	2000      	movs	r0, #0
d03c2eba:	e7fb      	b.n	d03c2eb4 <ui_midi_read_varlen.constprop.0+0x3c>

d03c2ebc <seq_grid_ticks>:
d03c2ebc:	b508      	push	{r3, lr}
d03c2ebe:	f7fd fe65 	bl	d03c0b8c <seq_beat_ticks>
d03c2ec2:	4a07      	ldr	r2, [pc, #28]	; (d03c2ee0 <seq_grid_ticks+0x24>)
d03c2ec4:	4907      	ldr	r1, [pc, #28]	; (d03c2ee4 <seq_grid_ticks+0x28>)
d03c2ec6:	0083      	lsls	r3, r0, #2
d03c2ec8:	7812      	ldrb	r2, [r2, #0]
d03c2eca:	f002 0203 	and.w	r2, r2, #3
d03c2ece:	5c8a      	ldrb	r2, [r1, r2]
d03c2ed0:	ebb2 0f80 	cmp.w	r2, r0, lsl #2
d03c2ed4:	bf94      	ite	ls
d03c2ed6:	fbb3 f0f2 	udivls	r0, r3, r2
d03c2eda:	2001      	movhi	r0, #1
d03c2edc:	b280      	uxth	r0, r0
d03c2ede:	bd08      	pop	{r3, pc}
d03c2ee0:	d03cd107 	.word	0xd03cd107
d03c2ee4:	d03cc5c4 	.word	0xd03cc5c4

d03c2ee8 <seq_quantize_tick>:
d03c2ee8:	b510      	push	{r4, lr}
d03c2eea:	4604      	mov	r4, r0
d03c2eec:	f7ff ffe6 	bl	d03c2ebc <seq_grid_ticks>
d03c2ef0:	4b05      	ldr	r3, [pc, #20]	; (d03c2f08 <seq_quantize_tick+0x20>)
d03c2ef2:	781b      	ldrb	r3, [r3, #0]
d03c2ef4:	b12b      	cbz	r3, d03c2f02 <seq_quantize_tick+0x1a>
d03c2ef6:	f3c0 034f 	ubfx	r3, r0, #1, #16
d03c2efa:	441c      	add	r4, r3
d03c2efc:	fbb4 f4f0 	udiv	r4, r4, r0
d03c2f00:	4344      	muls	r4, r0
d03c2f02:	4620      	mov	r0, r4
d03c2f04:	bd10      	pop	{r4, pc}
d03c2f06:	bf00      	nop
d03c2f08:	d03cd106 	.word	0xd03cd106

d03c2f0c <midi_process_events>:
d03c2f0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c2f10:	f8df 82a4 	ldr.w	r8, [pc, #676]	; d03c31b8 <midi_process_events+0x2ac>
d03c2f14:	b085      	sub	sp, #20
d03c2f16:	f8df 92a4 	ldr.w	r9, [pc, #676]	; d03c31bc <midi_process_events+0x2b0>
d03c2f1a:	4b9a      	ldr	r3, [pc, #616]	; (d03c3184 <midi_process_events+0x278>)
d03c2f1c:	f898 2000 	ldrb.w	r2, [r8]
d03c2f20:	781b      	ldrb	r3, [r3, #0]
d03c2f22:	429a      	cmp	r2, r3
d03c2f24:	d102      	bne.n	d03c2f2c <midi_process_events+0x20>
d03c2f26:	b005      	add	sp, #20
d03c2f28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c2f2c:	f898 2000 	ldrb.w	r2, [r8]
d03c2f30:	4b95      	ldr	r3, [pc, #596]	; (d03c3188 <midi_process_events+0x27c>)
d03c2f32:	b2d2      	uxtb	r2, r2
d03c2f34:	f813 1022 	ldrb.w	r1, [r3, r2, lsl #2]
d03c2f38:	f898 2000 	ldrb.w	r2, [r8]
d03c2f3c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03c2f40:	7854      	ldrb	r4, [r2, #1]
d03c2f42:	f898 2000 	ldrb.w	r2, [r8]
d03c2f46:	b2e4      	uxtb	r4, r4
d03c2f48:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d03c2f4c:	7895      	ldrb	r5, [r2, #2]
d03c2f4e:	f898 2000 	ldrb.w	r2, [r8]
d03c2f52:	b2ed      	uxtb	r5, r5
d03c2f54:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d03c2f58:	78de      	ldrb	r6, [r3, #3]
d03c2f5a:	f898 3000 	ldrb.w	r3, [r8]
d03c2f5e:	b2f6      	uxtb	r6, r6
d03c2f60:	3301      	adds	r3, #1
d03c2f62:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c2f66:	f888 3000 	strb.w	r3, [r8]
d03c2f6a:	2905      	cmp	r1, #5
d03c2f6c:	d8d5      	bhi.n	d03c2f1a <midi_process_events+0xe>
d03c2f6e:	e8df f011 	tbh	[pc, r1, lsl #1]
d03c2f72:	0091      	.short	0x0091
d03c2f74:	00d10006 	.word	0x00d10006
d03c2f78:	00e200dc 	.word	0x00e200dc
d03c2f7c:	0105      	.short	0x0105
d03c2f7e:	4b83      	ldr	r3, [pc, #524]	; (d03c318c <midi_process_events+0x280>)
d03c2f80:	781b      	ldrb	r3, [r3, #0]
d03c2f82:	2b00      	cmp	r3, #0
d03c2f84:	d063      	beq.n	d03c304e <midi_process_events+0x142>
d03c2f86:	4b82      	ldr	r3, [pc, #520]	; (d03c3190 <midi_process_events+0x284>)
d03c2f88:	2200      	movs	r2, #0
d03c2f8a:	469a      	mov	sl, r3
d03c2f8c:	7819      	ldrb	r1, [r3, #0]
d03c2f8e:	b129      	cbz	r1, d03c2f9c <midi_process_events+0x90>
d03c2f90:	7899      	ldrb	r1, [r3, #2]
d03c2f92:	42a1      	cmp	r1, r4
d03c2f94:	d102      	bne.n	d03c2f9c <midi_process_events+0x90>
d03c2f96:	7859      	ldrb	r1, [r3, #1]
d03c2f98:	42a9      	cmp	r1, r5
d03c2f9a:	d058      	beq.n	d03c304e <midi_process_events+0x142>
d03c2f9c:	3201      	adds	r2, #1
d03c2f9e:	3308      	adds	r3, #8
d03c2fa0:	2a20      	cmp	r2, #32
d03c2fa2:	d1f3      	bne.n	d03c2f8c <midi_process_events+0x80>
d03c2fa4:	f8df b218 	ldr.w	fp, [pc, #536]	; d03c31c0 <midi_process_events+0x2b4>
d03c2fa8:	f8d9 7000 	ldr.w	r7, [r9]
d03c2fac:	f8db 2000 	ldr.w	r2, [fp]
d03c2fb0:	1c7b      	adds	r3, r7, #1
d03c2fb2:	4297      	cmp	r7, r2
d03c2fb4:	d23e      	bcs.n	d03c3034 <midi_process_events+0x128>
d03c2fb6:	f8c9 3000 	str.w	r3, [r9]
d03c2fba:	4b76      	ldr	r3, [pc, #472]	; (d03c3194 <midi_process_events+0x288>)
d03c2fbc:	2100      	movs	r1, #0
d03c2fbe:	2210      	movs	r2, #16
d03c2fc0:	681b      	ldr	r3, [r3, #0]
d03c2fc2:	eb03 1b07 	add.w	fp, r3, r7, lsl #4
d03c2fc6:	9303      	str	r3, [sp, #12]
d03c2fc8:	4658      	mov	r0, fp
d03c2fca:	f006 fcf1 	bl	d03c99b0 <memset>
d03c2fce:	2201      	movs	r2, #1
d03c2fd0:	f88b 200d 	strb.w	r2, [fp, #13]
d03c2fd4:	f7fd fe26 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c2fd8:	496f      	ldr	r1, [pc, #444]	; (d03c3198 <midi_process_events+0x28c>)
d03c2fda:	2201      	movs	r2, #1
d03c2fdc:	1c7b      	adds	r3, r7, #1
d03c2fde:	700a      	strb	r2, [r1, #0]
d03c2fe0:	d032      	beq.n	d03c3048 <midi_process_events+0x13c>
d03c2fe2:	496e      	ldr	r1, [pc, #440]	; (d03c319c <midi_process_events+0x290>)
d03c2fe4:	6808      	ldr	r0, [r1, #0]
d03c2fe6:	f7ff ff7f 	bl	d03c2ee8 <seq_quantize_tick>
d03c2fea:	9b03      	ldr	r3, [sp, #12]
d03c2fec:	013a      	lsls	r2, r7, #4
d03c2fee:	5098      	str	r0, [r3, r2]
d03c2ff0:	2201      	movs	r2, #1
d03c2ff2:	f88b 5008 	strb.w	r5, [fp, #8]
d03c2ff6:	f8cb 2004 	str.w	r2, [fp, #4]
d03c2ffa:	4a69      	ldr	r2, [pc, #420]	; (d03c31a0 <midi_process_events+0x294>)
d03c2ffc:	f88b 4009 	strb.w	r4, [fp, #9]
d03c3000:	5d12      	ldrb	r2, [r2, r4]
d03c3002:	f88b 600b 	strb.w	r6, [fp, #11]
d03c3006:	f88b 200a 	strb.w	r2, [fp, #10]
d03c300a:	f004 0207 	and.w	r2, r4, #7
d03c300e:	3220      	adds	r2, #32
d03c3010:	f88b 200c 	strb.w	r2, [fp, #12]
d03c3014:	2200      	movs	r2, #0
d03c3016:	f81a 1032 	ldrb.w	r1, [sl, r2, lsl #3]
d03c301a:	bb59      	cbnz	r1, d03c3074 <midi_process_events+0x168>
d03c301c:	2301      	movs	r3, #1
d03c301e:	f80a 3032 	strb.w	r3, [sl, r2, lsl #3]
d03c3022:	eb0a 0ac2 	add.w	sl, sl, r2, lsl #3
d03c3026:	f88a 5001 	strb.w	r5, [sl, #1]
d03c302a:	f88a 4002 	strb.w	r4, [sl, #2]
d03c302e:	f8ca 7004 	str.w	r7, [sl, #4]
d03c3032:	e00c      	b.n	d03c304e <midi_process_events+0x142>
d03c3034:	4618      	mov	r0, r3
d03c3036:	9303      	str	r3, [sp, #12]
d03c3038:	f7fe f96a 	bl	d03c1310 <seq_reserve_notes>
d03c303c:	9b03      	ldr	r3, [sp, #12]
d03c303e:	2800      	cmp	r0, #0
d03c3040:	d1b9      	bne.n	d03c2fb6 <midi_process_events+0xaa>
d03c3042:	f8db 2000 	ldr.w	r2, [fp]
d03c3046:	b962      	cbnz	r2, d03c3062 <midi_process_events+0x156>
d03c3048:	4856      	ldr	r0, [pc, #344]	; (d03c31a4 <midi_process_events+0x298>)
d03c304a:	f7fe f9cf 	bl	d03c13ec <ui_set_status>
d03c304e:	2300      	movs	r3, #0
d03c3050:	4632      	mov	r2, r6
d03c3052:	4629      	mov	r1, r5
d03c3054:	4620      	mov	r0, r4
d03c3056:	9300      	str	r3, [sp, #0]
d03c3058:	4b51      	ldr	r3, [pc, #324]	; (d03c31a0 <midi_process_events+0x294>)
d03c305a:	5d1b      	ldrb	r3, [r3, r4]
d03c305c:	f7fe fda2 	bl	d03c1ba4 <sid_midi_note_on_program_source>
d03c3060:	e75b      	b.n	d03c2f1a <midi_process_events+0xe>
d03c3062:	4951      	ldr	r1, [pc, #324]	; (d03c31a8 <midi_process_events+0x29c>)
d03c3064:	680f      	ldr	r7, [r1, #0]
d03c3066:	1c78      	adds	r0, r7, #1
d03c3068:	fbb0 f3f2 	udiv	r3, r0, r2
d03c306c:	fb02 0313 	mls	r3, r2, r3, r0
d03c3070:	600b      	str	r3, [r1, #0]
d03c3072:	e7a2      	b.n	d03c2fba <midi_process_events+0xae>
d03c3074:	3201      	adds	r2, #1
d03c3076:	2a20      	cmp	r2, #32
d03c3078:	d1cd      	bne.n	d03c3016 <midi_process_events+0x10a>
d03c307a:	2200      	movs	r2, #0
d03c307c:	f8d9 3000 	ldr.w	r3, [r9]
d03c3080:	f88b 200d 	strb.w	r2, [fp, #13]
d03c3084:	1c7a      	adds	r2, r7, #1
d03c3086:	429a      	cmp	r2, r3
d03c3088:	bf08      	it	eq
d03c308a:	f8c9 7000 	streq.w	r7, [r9]
d03c308e:	f7fd fdc9 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c3092:	e7dc      	b.n	d03c304e <midi_process_events+0x142>
d03c3094:	4b3d      	ldr	r3, [pc, #244]	; (d03c318c <midi_process_events+0x280>)
d03c3096:	781b      	ldrb	r3, [r3, #0]
d03c3098:	b37b      	cbz	r3, d03c30fa <midi_process_events+0x1ee>
d03c309a:	4b3d      	ldr	r3, [pc, #244]	; (d03c3190 <midi_process_events+0x284>)
d03c309c:	f04f 0a00 	mov.w	sl, #0
d03c30a0:	461e      	mov	r6, r3
d03c30a2:	781a      	ldrb	r2, [r3, #0]
d03c30a4:	b37a      	cbz	r2, d03c3106 <midi_process_events+0x1fa>
d03c30a6:	789a      	ldrb	r2, [r3, #2]
d03c30a8:	42a2      	cmp	r2, r4
d03c30aa:	d12c      	bne.n	d03c3106 <midi_process_events+0x1fa>
d03c30ac:	785a      	ldrb	r2, [r3, #1]
d03c30ae:	42aa      	cmp	r2, r5
d03c30b0:	d129      	bne.n	d03c3106 <midi_process_events+0x1fa>
d03c30b2:	eb06 03ca 	add.w	r3, r6, sl, lsl #3
d03c30b6:	685f      	ldr	r7, [r3, #4]
d03c30b8:	f8d9 3000 	ldr.w	r3, [r9]
d03c30bc:	429f      	cmp	r7, r3
d03c30be:	d219      	bcs.n	d03c30f4 <midi_process_events+0x1e8>
d03c30c0:	4a34      	ldr	r2, [pc, #208]	; (d03c3194 <midi_process_events+0x288>)
d03c30c2:	013b      	lsls	r3, r7, #4
d03c30c4:	f8d2 b000 	ldr.w	fp, [r2]
d03c30c8:	9303      	str	r3, [sp, #12]
d03c30ca:	eb0b 1707 	add.w	r7, fp, r7, lsl #4
d03c30ce:	7b7a      	ldrb	r2, [r7, #13]
d03c30d0:	b182      	cbz	r2, d03c30f4 <midi_process_events+0x1e8>
d03c30d2:	4a32      	ldr	r2, [pc, #200]	; (d03c319c <midi_process_events+0x290>)
d03c30d4:	6810      	ldr	r0, [r2, #0]
d03c30d6:	f7ff ff07 	bl	d03c2ee8 <seq_quantize_tick>
d03c30da:	9b03      	ldr	r3, [sp, #12]
d03c30dc:	f85b 3003 	ldr.w	r3, [fp, r3]
d03c30e0:	4298      	cmp	r0, r3
d03c30e2:	bf98      	it	ls
d03c30e4:	1c58      	addls	r0, r3, #1
d03c30e6:	1ac0      	subs	r0, r0, r3
d03c30e8:	6078      	str	r0, [r7, #4]
d03c30ea:	f7fd fd9b 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c30ee:	4b2a      	ldr	r3, [pc, #168]	; (d03c3198 <midi_process_events+0x28c>)
d03c30f0:	2201      	movs	r2, #1
d03c30f2:	701a      	strb	r2, [r3, #0]
d03c30f4:	2300      	movs	r3, #0
d03c30f6:	f806 303a 	strb.w	r3, [r6, sl, lsl #3]
d03c30fa:	2200      	movs	r2, #0
d03c30fc:	4629      	mov	r1, r5
d03c30fe:	4620      	mov	r0, r4
d03c3100:	f7ff f93c 	bl	d03c237c <sid_midi_note_off_source>
d03c3104:	e709      	b.n	d03c2f1a <midi_process_events+0xe>
d03c3106:	f10a 0a01 	add.w	sl, sl, #1
d03c310a:	3308      	adds	r3, #8
d03c310c:	f1ba 0f20 	cmp.w	sl, #32
d03c3110:	d1c7      	bne.n	d03c30a2 <midi_process_events+0x196>
d03c3112:	e7f2      	b.n	d03c30fa <midi_process_events+0x1ee>
d03c3114:	2c09      	cmp	r4, #9
d03c3116:	f43f af00 	beq.w	d03c2f1a <midi_process_events+0xe>
d03c311a:	4620      	mov	r0, r4
d03c311c:	f005 057f 	and.w	r5, r5, #127	; 0x7f
d03c3120:	f7fe fd28 	bl	d03c1b74 <ui_note_channel_used>
d03c3124:	4b1e      	ldr	r3, [pc, #120]	; (d03c31a0 <midi_process_events+0x294>)
d03c3126:	551d      	strb	r5, [r3, r4]
d03c3128:	e6f7      	b.n	d03c2f1a <midi_process_events+0xe>
d03c312a:	4632      	mov	r2, r6
d03c312c:	4629      	mov	r1, r5
d03c312e:	4620      	mov	r0, r4
d03c3130:	f7fe fe24 	bl	d03c1d7c <sid_midi_pitch_bend_event>
d03c3134:	e6f1      	b.n	d03c2f1a <midi_process_events+0xe>
d03c3136:	4620      	mov	r0, r4
d03c3138:	f7fe fd1c 	bl	d03c1b74 <ui_note_channel_used>
d03c313c:	2d0b      	cmp	r5, #11
d03c313e:	d00c      	beq.n	d03c315a <midi_process_events+0x24e>
d03c3140:	2d79      	cmp	r5, #121	; 0x79
d03c3142:	d00e      	beq.n	d03c3162 <midi_process_events+0x256>
d03c3144:	2d07      	cmp	r5, #7
d03c3146:	f47f aee8 	bne.w	d03c2f1a <midi_process_events+0xe>
d03c314a:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03c314e:	4b17      	ldr	r3, [pc, #92]	; (d03c31ac <midi_process_events+0x2a0>)
d03c3150:	4620      	mov	r0, r4
d03c3152:	551e      	strb	r6, [r3, r4]
d03c3154:	f7fe fb0e 	bl	d03c1774 <midi_update_active_channel_volume>
d03c3158:	e6df      	b.n	d03c2f1a <midi_process_events+0xe>
d03c315a:	f006 067f 	and.w	r6, r6, #127	; 0x7f
d03c315e:	4b14      	ldr	r3, [pc, #80]	; (d03c31b0 <midi_process_events+0x2a4>)
d03c3160:	e7f6      	b.n	d03c3150 <midi_process_events+0x244>
d03c3162:	237f      	movs	r3, #127	; 0x7f
d03c3164:	4a11      	ldr	r2, [pc, #68]	; (d03c31ac <midi_process_events+0x2a0>)
d03c3166:	2500      	movs	r5, #0
d03c3168:	5513      	strb	r3, [r2, r4]
d03c316a:	4a11      	ldr	r2, [pc, #68]	; (d03c31b0 <midi_process_events+0x2a4>)
d03c316c:	5513      	strb	r3, [r2, r4]
d03c316e:	4b11      	ldr	r3, [pc, #68]	; (d03c31b4 <midi_process_events+0x2a8>)
d03c3170:	f823 5014 	strh.w	r5, [r3, r4, lsl #1]
d03c3174:	f7fe fafe 	bl	d03c1774 <midi_update_active_channel_volume>
d03c3178:	2240      	movs	r2, #64	; 0x40
d03c317a:	e7d7      	b.n	d03c312c <midi_process_events+0x220>
d03c317c:	4620      	mov	r0, r4
d03c317e:	f7fe fa9b 	bl	d03c16b8 <sid_midi_all_notes_off_event>
d03c3182:	e6ca      	b.n	d03c2f1a <midi_process_events+0xe>
d03c3184:	d03ccd8c 	.word	0xd03ccd8c
d03c3188:	d03ccd8d 	.word	0xd03ccd8d
d03c318c:	d03cd105 	.word	0xd03cd105
d03c3190:	d03ccfec 	.word	0xd03ccfec
d03c3194:	d03ccfd8 	.word	0xd03ccfd8
d03c3198:	d03cf3cb 	.word	0xd03cf3cb
d03c319c:	d03cd100 	.word	0xd03cd100
d03c31a0:	d03ccd64 	.word	0xd03ccd64
d03c31a4:	d03cb52e 	.word	0xd03cb52e
d03c31a8:	d03ccfcc 	.word	0xd03ccfcc
d03c31ac:	d03ccd74 	.word	0xd03ccd74
d03c31b0:	d03ccd54 	.word	0xd03ccd54
d03c31b4:	d03ccd34 	.word	0xd03ccd34
d03c31b8:	d03ccf8d 	.word	0xd03ccf8d
d03c31bc:	d03ccfd4 	.word	0xd03ccfd4
d03c31c0:	d03ccfd0 	.word	0xd03ccfd0

d03c31c4 <seq_set_position_from_drag>:
d03c31c4:	b508      	push	{r3, lr}
d03c31c6:	4b0f      	ldr	r3, [pc, #60]	; (d03c3204 <seq_set_position_from_drag+0x40>)
d03c31c8:	4a0f      	ldr	r2, [pc, #60]	; (d03c3208 <seq_set_position_from_drag+0x44>)
d03c31ca:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c31ce:	6812      	ldr	r2, [r2, #0]
d03c31d0:	1ac0      	subs	r0, r0, r3
d03c31d2:	ea80 73e0 	eor.w	r3, r0, r0, asr #31
d03c31d6:	2800      	cmp	r0, #0
d03c31d8:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d03c31dc:	db0e      	blt.n	d03c31fc <seq_set_position_from_drag+0x38>
d03c31de:	4293      	cmp	r3, r2
d03c31e0:	d80e      	bhi.n	d03c3200 <seq_set_position_from_drag+0x3c>
d03c31e2:	1ad0      	subs	r0, r2, r3
d03c31e4:	f7ff fe80 	bl	d03c2ee8 <seq_quantize_tick>
d03c31e8:	4b08      	ldr	r3, [pc, #32]	; (d03c320c <seq_set_position_from_drag+0x48>)
d03c31ea:	6018      	str	r0, [r3, #0]
d03c31ec:	4b08      	ldr	r3, [pc, #32]	; (d03c3210 <seq_set_position_from_drag+0x4c>)
d03c31ee:	681a      	ldr	r2, [r3, #0]
d03c31f0:	4b08      	ldr	r3, [pc, #32]	; (d03c3214 <seq_set_position_from_drag+0x50>)
d03c31f2:	601a      	str	r2, [r3, #0]
d03c31f4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d03c31f8:	f7fe bafa 	b.w	d03c17f0 <seq_playback_sync>
d03c31fc:	1898      	adds	r0, r3, r2
d03c31fe:	e7f1      	b.n	d03c31e4 <seq_set_position_from_drag+0x20>
d03c3200:	2000      	movs	r0, #0
d03c3202:	e7ef      	b.n	d03c31e4 <seq_set_position_from_drag+0x20>
d03c3204:	d03ccfc0 	.word	0xd03ccfc0
d03c3208:	d03ccfbc 	.word	0xd03ccfbc
d03c320c:	d03cd100 	.word	0xd03cd100
d03c3210:	d03ccfb0 	.word	0xd03ccfb0
d03c3214:	d03ccfc4 	.word	0xd03ccfc4

d03c3218 <ui_file_make_path.constprop.0>:
d03c3218:	4b16      	ldr	r3, [pc, #88]	; (d03c3274 <ui_file_make_path.constprop.0+0x5c>)
d03c321a:	4a17      	ldr	r2, [pc, #92]	; (d03c3278 <ui_file_make_path.constprop.0+0x60>)
d03c321c:	b530      	push	{r4, r5, lr}
d03c321e:	4605      	mov	r5, r0
d03c3220:	7818      	ldrb	r0, [r3, #0]
d03c3222:	b085      	sub	sp, #20
d03c3224:	2800      	cmp	r0, #0
d03c3226:	bf08      	it	eq
d03c3228:	4613      	moveq	r3, r2
d03c322a:	2902      	cmp	r1, #2
d03c322c:	d015      	beq.n	d03c325a <ui_file_make_path.constprop.0+0x42>
d03c322e:	2903      	cmp	r1, #3
d03c3230:	d015      	beq.n	d03c325e <ui_file_make_path.constprop.0+0x46>
d03c3232:	4a12      	ldr	r2, [pc, #72]	; (d03c327c <ui_file_make_path.constprop.0+0x64>)
d03c3234:	4c12      	ldr	r4, [pc, #72]	; (d03c3280 <ui_file_make_path.constprop.0+0x68>)
d03c3236:	2904      	cmp	r1, #4
d03c3238:	bf18      	it	ne
d03c323a:	4614      	movne	r4, r2
d03c323c:	4621      	mov	r1, r4
d03c323e:	4628      	mov	r0, r5
d03c3240:	9303      	str	r3, [sp, #12]
d03c3242:	f7fe fb6b 	bl	d03c191c <ui_name_has_ext>
d03c3246:	9b03      	ldr	r3, [sp, #12]
d03c3248:	b158      	cbz	r0, d03c3262 <ui_file_make_path.constprop.0+0x4a>
d03c324a:	4a0e      	ldr	r2, [pc, #56]	; (d03c3284 <ui_file_make_path.constprop.0+0x6c>)
d03c324c:	2160      	movs	r1, #96	; 0x60
d03c324e:	480e      	ldr	r0, [pc, #56]	; (d03c3288 <ui_file_make_path.constprop.0+0x70>)
d03c3250:	9500      	str	r5, [sp, #0]
d03c3252:	f006 feb7 	bl	d03c9fc4 <sniprintf>
d03c3256:	b005      	add	sp, #20
d03c3258:	bd30      	pop	{r4, r5, pc}
d03c325a:	4c0c      	ldr	r4, [pc, #48]	; (d03c328c <ui_file_make_path.constprop.0+0x74>)
d03c325c:	e7ee      	b.n	d03c323c <ui_file_make_path.constprop.0+0x24>
d03c325e:	4c0c      	ldr	r4, [pc, #48]	; (d03c3290 <ui_file_make_path.constprop.0+0x78>)
d03c3260:	e7ec      	b.n	d03c323c <ui_file_make_path.constprop.0+0x24>
d03c3262:	4a0c      	ldr	r2, [pc, #48]	; (d03c3294 <ui_file_make_path.constprop.0+0x7c>)
d03c3264:	2160      	movs	r1, #96	; 0x60
d03c3266:	9401      	str	r4, [sp, #4]
d03c3268:	9500      	str	r5, [sp, #0]
d03c326a:	4807      	ldr	r0, [pc, #28]	; (d03c3288 <ui_file_make_path.constprop.0+0x70>)
d03c326c:	f006 feaa 	bl	d03c9fc4 <sniprintf>
d03c3270:	e7f1      	b.n	d03c3256 <ui_file_make_path.constprop.0+0x3e>
d03c3272:	bf00      	nop
d03c3274:	d03cda79 	.word	0xd03cda79
d03c3278:	d03cb398 	.word	0xd03cb398
d03c327c:	d03cb54e 	.word	0xd03cb54e
d03c3280:	d03cb558 	.word	0xd03cb558
d03c3284:	d03cb55d 	.word	0xd03cb55d
d03c3288:	d03cf331 	.word	0xd03cf331
d03c328c:	d03cb553 	.word	0xd03cb553
d03c3290:	d03cb549 	.word	0xd03cb549
d03c3294:	d03cb563 	.word	0xd03cb563

d03c3298 <ui_file_refresh>:
d03c3298:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c329c:	4d78      	ldr	r5, [pc, #480]	; (d03c3480 <ui_file_refresh+0x1e8>)
d03c329e:	2400      	movs	r4, #0
d03c32a0:	4b78      	ldr	r3, [pc, #480]	; (d03c3484 <ui_file_refresh+0x1ec>)
d03c32a2:	b099      	sub	sp, #100	; 0x64
d03c32a4:	782a      	ldrb	r2, [r5, #0]
d03c32a6:	4621      	mov	r1, r4
d03c32a8:	4e77      	ldr	r6, [pc, #476]	; (d03c3488 <ui_file_refresh+0x1f0>)
d03c32aa:	42a2      	cmp	r2, r4
d03c32ac:	bf08      	it	eq
d03c32ae:	461d      	moveq	r5, r3
d03c32b0:	4b76      	ldr	r3, [pc, #472]	; (d03c348c <ui_file_refresh+0x1f4>)
d03c32b2:	f44f 6200 	mov.w	r2, #2048	; 0x800
d03c32b6:	4876      	ldr	r0, [pc, #472]	; (d03c3490 <ui_file_refresh+0x1f8>)
d03c32b8:	701c      	strb	r4, [r3, #0]
d03c32ba:	4b76      	ldr	r3, [pc, #472]	; (d03c3494 <ui_file_refresh+0x1fc>)
d03c32bc:	7034      	strb	r4, [r6, #0]
d03c32be:	701c      	strb	r4, [r3, #0]
d03c32c0:	e9cd 4406 	strd	r4, r4, [sp, #24]
d03c32c4:	f006 fb74 	bl	d03c99b0 <memset>
d03c32c8:	2240      	movs	r2, #64	; 0x40
d03c32ca:	4621      	mov	r1, r4
d03c32cc:	4872      	ldr	r0, [pc, #456]	; (d03c3498 <ui_file_refresh+0x200>)
d03c32ce:	f006 fb6f 	bl	d03c99b0 <memset>
d03c32d2:	4972      	ldr	r1, [pc, #456]	; (d03c349c <ui_file_refresh+0x204>)
d03c32d4:	4628      	mov	r0, r5
d03c32d6:	f006 fea9 	bl	d03ca02c <strcmp>
d03c32da:	9604      	str	r6, [sp, #16]
d03c32dc:	b118      	cbz	r0, d03c32e6 <ui_file_refresh+0x4e>
d03c32de:	2105      	movs	r1, #5
d03c32e0:	486f      	ldr	r0, [pc, #444]	; (d03c34a0 <ui_file_refresh+0x208>)
d03c32e2:	f7fe f895 	bl	d03c1410 <ui_file_add_entry>
d03c32e6:	4c6f      	ldr	r4, [pc, #444]	; (d03c34a4 <ui_file_refresh+0x20c>)
d03c32e8:	4628      	mov	r0, r5
d03c32ea:	7923      	ldrb	r3, [r4, #4]
d03c32ec:	7962      	ldrb	r2, [r4, #5]
d03c32ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c32f2:	79a2      	ldrb	r2, [r4, #6]
d03c32f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c32f8:	79e2      	ldrb	r2, [r4, #7]
d03c32fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c32fe:	681b      	ldr	r3, [r3, #0]
d03c3300:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3302:	4798      	blx	r3
d03c3304:	4605      	mov	r5, r0
d03c3306:	2800      	cmp	r0, #0
d03c3308:	d049      	beq.n	d03c339e <ui_file_refresh+0x106>
d03c330a:	4e67      	ldr	r6, [pc, #412]	; (d03c34a8 <ui_file_refresh+0x210>)
d03c330c:	4f64      	ldr	r7, [pc, #400]	; (d03c34a0 <ui_file_refresh+0x208>)
d03c330e:	f8df 81ac 	ldr.w	r8, [pc, #428]	; d03c34bc <ui_file_refresh+0x224>
d03c3312:	9b04      	ldr	r3, [sp, #16]
d03c3314:	781b      	ldrb	r3, [r3, #0]
d03c3316:	2b3f      	cmp	r3, #63	; 0x3f
d03c3318:	d816      	bhi.n	d03c3348 <ui_file_refresh+0xb0>
d03c331a:	7923      	ldrb	r3, [r4, #4]
d03c331c:	4628      	mov	r0, r5
d03c331e:	7962      	ldrb	r2, [r4, #5]
d03c3320:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3324:	79a2      	ldrb	r2, [r4, #6]
d03c3326:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c332a:	79e2      	ldrb	r2, [r4, #7]
d03c332c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3330:	aa07      	add	r2, sp, #28
d03c3332:	681b      	ldr	r3, [r3, #0]
d03c3334:	9200      	str	r2, [sp, #0]
d03c3336:	2220      	movs	r2, #32
d03c3338:	f8d3 9030 	ldr.w	r9, [r3, #48]	; 0x30
d03c333c:	ab06      	add	r3, sp, #24
d03c333e:	eb0d 0102 	add.w	r1, sp, r2
d03c3342:	47c8      	blx	r9
d03c3344:	2800      	cmp	r0, #0
d03c3346:	dc30      	bgt.n	d03c33aa <ui_file_refresh+0x112>
d03c3348:	7923      	ldrb	r3, [r4, #4]
d03c334a:	2600      	movs	r6, #0
d03c334c:	7962      	ldrb	r2, [r4, #5]
d03c334e:	4628      	mov	r0, r5
d03c3350:	f8df 9144 	ldr.w	r9, [pc, #324]	; d03c3498 <ui_file_refresh+0x200>
d03c3354:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3358:	79a2      	ldrb	r2, [r4, #6]
d03c335a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c335e:	79e2      	ldrb	r2, [r4, #7]
d03c3360:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3364:	681b      	ldr	r3, [r3, #0]
d03c3366:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c3368:	4798      	blx	r3
d03c336a:	9b04      	ldr	r3, [sp, #16]
d03c336c:	781b      	ldrb	r3, [r3, #0]
d03c336e:	42b3      	cmp	r3, r6
d03c3370:	9302      	str	r3, [sp, #8]
d03c3372:	d917      	bls.n	d03c33a4 <ui_file_refresh+0x10c>
d03c3374:	1c74      	adds	r4, r6, #1
d03c3376:	f8df b128 	ldr.w	fp, [pc, #296]	; d03c34a0 <ui_file_refresh+0x208>
d03c337a:	b2e3      	uxtb	r3, r4
d03c337c:	b2e5      	uxtb	r5, r4
d03c337e:	fa59 f484 	uxtab	r4, r9, r4
d03c3382:	9303      	str	r3, [sp, #12]
d03c3384:	4b42      	ldr	r3, [pc, #264]	; (d03c3490 <ui_file_refresh+0x1f8>)
d03c3386:	9f03      	ldr	r7, [sp, #12]
d03c3388:	eb03 1a46 	add.w	sl, r3, r6, lsl #5
d03c338c:	eb03 1545 	add.w	r5, r3, r5, lsl #5
d03c3390:	0173      	lsls	r3, r6, #5
d03c3392:	9305      	str	r3, [sp, #20]
d03c3394:	9b02      	ldr	r3, [sp, #8]
d03c3396:	42bb      	cmp	r3, r7
d03c3398:	d13c      	bne.n	d03c3414 <ui_file_refresh+0x17c>
d03c339a:	9e03      	ldr	r6, [sp, #12]
d03c339c:	e7e5      	b.n	d03c336a <ui_file_refresh+0xd2>
d03c339e:	4843      	ldr	r0, [pc, #268]	; (d03c34ac <ui_file_refresh+0x214>)
d03c33a0:	f7fe f824 	bl	d03c13ec <ui_set_status>
d03c33a4:	b019      	add	sp, #100	; 0x64
d03c33a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c33aa:	f89d 3020 	ldrb.w	r3, [sp, #32]
d03c33ae:	2b00      	cmp	r3, #0
d03c33b0:	d0af      	beq.n	d03c3312 <ui_file_refresh+0x7a>
d03c33b2:	4631      	mov	r1, r6
d03c33b4:	a808      	add	r0, sp, #32
d03c33b6:	f006 fe39 	bl	d03ca02c <strcmp>
d03c33ba:	2800      	cmp	r0, #0
d03c33bc:	d0a9      	beq.n	d03c3312 <ui_file_refresh+0x7a>
d03c33be:	4639      	mov	r1, r7
d03c33c0:	a808      	add	r0, sp, #32
d03c33c2:	f006 fe33 	bl	d03ca02c <strcmp>
d03c33c6:	2800      	cmp	r0, #0
d03c33c8:	d0a3      	beq.n	d03c3312 <ui_file_refresh+0x7a>
d03c33ca:	9b06      	ldr	r3, [sp, #24]
d03c33cc:	07db      	lsls	r3, r3, #31
d03c33ce:	d504      	bpl.n	d03c33da <ui_file_refresh+0x142>
d03c33d0:	2105      	movs	r1, #5
d03c33d2:	a808      	add	r0, sp, #32
d03c33d4:	f7fe f81c 	bl	d03c1410 <ui_file_add_entry>
d03c33d8:	e79b      	b.n	d03c3312 <ui_file_refresh+0x7a>
d03c33da:	4641      	mov	r1, r8
d03c33dc:	a808      	add	r0, sp, #32
d03c33de:	f7fe fa9d 	bl	d03c191c <ui_name_has_ext>
d03c33e2:	b988      	cbnz	r0, d03c3408 <ui_file_refresh+0x170>
d03c33e4:	4932      	ldr	r1, [pc, #200]	; (d03c34b0 <ui_file_refresh+0x218>)
d03c33e6:	a808      	add	r0, sp, #32
d03c33e8:	f7fe fa98 	bl	d03c191c <ui_name_has_ext>
d03c33ec:	b970      	cbnz	r0, d03c340c <ui_file_refresh+0x174>
d03c33ee:	4931      	ldr	r1, [pc, #196]	; (d03c34b4 <ui_file_refresh+0x21c>)
d03c33f0:	a808      	add	r0, sp, #32
d03c33f2:	f7fe fa93 	bl	d03c191c <ui_name_has_ext>
d03c33f6:	b958      	cbnz	r0, d03c3410 <ui_file_refresh+0x178>
d03c33f8:	492f      	ldr	r1, [pc, #188]	; (d03c34b8 <ui_file_refresh+0x220>)
d03c33fa:	a808      	add	r0, sp, #32
d03c33fc:	f7fe fa8e 	bl	d03c191c <ui_name_has_ext>
d03c3400:	2800      	cmp	r0, #0
d03c3402:	d086      	beq.n	d03c3312 <ui_file_refresh+0x7a>
d03c3404:	2104      	movs	r1, #4
d03c3406:	e7e4      	b.n	d03c33d2 <ui_file_refresh+0x13a>
d03c3408:	2102      	movs	r1, #2
d03c340a:	e7e2      	b.n	d03c33d2 <ui_file_refresh+0x13a>
d03c340c:	2101      	movs	r1, #1
d03c340e:	e7e0      	b.n	d03c33d2 <ui_file_refresh+0x13a>
d03c3410:	2103      	movs	r1, #3
d03c3412:	e7de      	b.n	d03c33d2 <ui_file_refresh+0x13a>
d03c3414:	4659      	mov	r1, fp
d03c3416:	4650      	mov	r0, sl
d03c3418:	f006 fe08 	bl	d03ca02c <strcmp>
d03c341c:	b358      	cbz	r0, d03c3476 <ui_file_refresh+0x1de>
d03c341e:	4659      	mov	r1, fp
d03c3420:	4628      	mov	r0, r5
d03c3422:	f006 fe03 	bl	d03ca02c <strcmp>
d03c3426:	f819 8006 	ldrb.w	r8, [r9, r6]
d03c342a:	b158      	cbz	r0, d03c3444 <ui_file_refresh+0x1ac>
d03c342c:	7822      	ldrb	r2, [r4, #0]
d03c342e:	2a05      	cmp	r2, #5
d03c3430:	d11f      	bne.n	d03c3472 <ui_file_refresh+0x1da>
d03c3432:	f1b8 0f05 	cmp.w	r8, #5
d03c3436:	d105      	bne.n	d03c3444 <ui_file_refresh+0x1ac>
d03c3438:	4651      	mov	r1, sl
d03c343a:	4628      	mov	r0, r5
d03c343c:	f006 fdf6 	bl	d03ca02c <strcmp>
d03c3440:	2800      	cmp	r0, #0
d03c3442:	da18      	bge.n	d03c3476 <ui_file_refresh+0x1de>
d03c3444:	4b12      	ldr	r3, [pc, #72]	; (d03c3490 <ui_file_refresh+0x1f8>)
d03c3446:	2220      	movs	r2, #32
d03c3448:	9905      	ldr	r1, [sp, #20]
d03c344a:	a810      	add	r0, sp, #64	; 0x40
d03c344c:	1859      	adds	r1, r3, r1
d03c344e:	f006 faa1 	bl	d03c9994 <memcpy>
d03c3452:	2220      	movs	r2, #32
d03c3454:	4629      	mov	r1, r5
d03c3456:	4650      	mov	r0, sl
d03c3458:	f006 fa9c 	bl	d03c9994 <memcpy>
d03c345c:	7822      	ldrb	r2, [r4, #0]
d03c345e:	a910      	add	r1, sp, #64	; 0x40
d03c3460:	4628      	mov	r0, r5
d03c3462:	f809 2006 	strb.w	r2, [r9, r6]
d03c3466:	2220      	movs	r2, #32
d03c3468:	f006 fa94 	bl	d03c9994 <memcpy>
d03c346c:	f884 8000 	strb.w	r8, [r4]
d03c3470:	e001      	b.n	d03c3476 <ui_file_refresh+0x1de>
d03c3472:	4542      	cmp	r2, r8
d03c3474:	d0e0      	beq.n	d03c3438 <ui_file_refresh+0x1a0>
d03c3476:	3701      	adds	r7, #1
d03c3478:	3520      	adds	r5, #32
d03c347a:	3401      	adds	r4, #1
d03c347c:	b2ff      	uxtb	r7, r7
d03c347e:	e789      	b.n	d03c3394 <ui_file_refresh+0xfc>
d03c3480:	d03cda79 	.word	0xd03cda79
d03c3484:	d03cb398 	.word	0xd03cb398
d03c3488:	d03cda78 	.word	0xd03cda78
d03c348c:	d03ce319 	.word	0xd03ce319
d03c3490:	d03cdb19 	.word	0xd03cdb19
d03c3494:	d03ce31a 	.word	0xd03ce31a
d03c3498:	d03cdad9 	.word	0xd03cdad9
d03c349c:	d03cb56b 	.word	0xd03cb56b
d03c34a0:	d03cb573 	.word	0xd03cb573
d03c34a4:	2001f000 	.word	0x2001f000
d03c34a8:	d03cb574 	.word	0xd03cb574
d03c34ac:	d03cb576 	.word	0xd03cb576
d03c34b0:	d03cb54e 	.word	0xd03cb54e
d03c34b4:	d03cb549 	.word	0xd03cb549
d03c34b8:	d03cb558 	.word	0xd03cb558
d03c34bc:	d03cb553 	.word	0xd03cb553

d03c34c0 <ui_create_button>:
d03c34c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c34c4:	ed2d 8b02 	vpush	{d8}
d03c34c8:	b089      	sub	sp, #36	; 0x24
d03c34ca:	461d      	mov	r5, r3
d03c34cc:	468b      	mov	fp, r1
d03c34ce:	4616      	mov	r6, r2
d03c34d0:	9c15      	ldr	r4, [sp, #84]	; 0x54
d03c34d2:	f9bd a050 	ldrsh.w	sl, [sp, #80]	; 0x50
d03c34d6:	ee08 4a90 	vmov	s17, r4
d03c34da:	f89d 405c 	ldrb.w	r4, [sp, #92]	; 0x5c
d03c34de:	f8cd a000 	str.w	sl, [sp]
d03c34e2:	9401      	str	r4, [sp, #4]
d03c34e4:	f89d 9058 	ldrb.w	r9, [sp, #88]	; 0x58
d03c34e8:	f7fd fc22 	bl	d03c0d30 <ui_button_register>
d03c34ec:	4b87      	ldr	r3, [pc, #540]	; (d03c370c <ui_create_button+0x24c>)
d03c34ee:	781b      	ldrb	r3, [r3, #0]
d03c34f0:	07db      	lsls	r3, r3, #31
d03c34f2:	f140 80fe 	bpl.w	d03c36f2 <ui_create_button+0x232>
d03c34f6:	4b86      	ldr	r3, [pc, #536]	; (d03c3710 <ui_create_button+0x250>)
d03c34f8:	f9b3 2000 	ldrsh.w	r2, [r3]
d03c34fc:	4b85      	ldr	r3, [pc, #532]	; (d03c3714 <ui_create_button+0x254>)
d03c34fe:	4291      	cmp	r1, r2
d03c3500:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c3504:	f300 80f5 	bgt.w	d03c36f2 <ui_create_button+0x232>
d03c3508:	4429      	add	r1, r5
d03c350a:	428a      	cmp	r2, r1
d03c350c:	f280 80f1 	bge.w	d03c36f2 <ui_create_button+0x232>
d03c3510:	429e      	cmp	r6, r3
d03c3512:	f300 80ee 	bgt.w	d03c36f2 <ui_create_button+0x232>
d03c3516:	eb06 020a 	add.w	r2, r6, sl
d03c351a:	4293      	cmp	r3, r2
d03c351c:	f280 80e9 	bge.w	d03c36f2 <ui_create_button+0x232>
d03c3520:	2301      	movs	r3, #1
d03c3522:	24e4      	movs	r4, #228	; 0xe4
d03c3524:	f1b9 0f00 	cmp.w	r9, #0
d03c3528:	9302      	str	r3, [sp, #8]
d03c352a:	bf14      	ite	ne
d03c352c:	23e8      	movne	r3, #232	; 0xe8
d03c352e:	23e7      	moveq	r3, #231	; 0xe7
d03c3530:	ee18 0a90 	vmov	r0, s17
d03c3534:	27e1      	movs	r7, #225	; 0xe1
d03c3536:	9307      	str	r3, [sp, #28]
d03c3538:	f006 fd8a 	bl	d03ca050 <strlen>
d03c353c:	00c0      	lsls	r0, r0, #3
d03c353e:	9401      	str	r4, [sp, #4]
d03c3540:	4c75      	ldr	r4, [pc, #468]	; (d03c3718 <ui_create_button+0x258>)
d03c3542:	462a      	mov	r2, r5
d03c3544:	b203      	sxth	r3, r0
d03c3546:	4631      	mov	r1, r6
d03c3548:	4658      	mov	r0, fp
d03c354a:	9700      	str	r7, [sp, #0]
d03c354c:	9304      	str	r3, [sp, #16]
d03c354e:	4653      	mov	r3, sl
d03c3550:	f7fd fb9a 	bl	d03c0c88 <ui_box>
d03c3554:	7b23      	ldrb	r3, [r4, #12]
d03c3556:	7b62      	ldrb	r2, [r4, #13]
d03c3558:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c355c:	7ba2      	ldrb	r2, [r4, #14]
d03c355e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3562:	7be2      	ldrb	r2, [r4, #15]
d03c3564:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3568:	9a02      	ldr	r2, [sp, #8]
d03c356a:	685b      	ldr	r3, [r3, #4]
d03c356c:	68db      	ldr	r3, [r3, #12]
d03c356e:	2a00      	cmp	r2, #0
d03c3570:	f040 80c6 	bne.w	d03c3700 <ui_create_button+0x240>
d03c3574:	f1b9 0f00 	cmp.w	r9, #0
d03c3578:	bf14      	ite	ne
d03c357a:	20e6      	movne	r0, #230	; 0xe6
d03c357c:	20e7      	moveq	r0, #231	; 0xe7
d03c357e:	4798      	blx	r3
d03c3580:	7b23      	ldrb	r3, [r4, #12]
d03c3582:	7b62      	ldrb	r2, [r4, #13]
d03c3584:	fa1f fb8b 	uxth.w	fp, fp
d03c3588:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c358c:	7ba2      	ldrb	r2, [r4, #14]
d03c358e:	f10b 0701 	add.w	r7, fp, #1
d03c3592:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3596:	7be2      	ldrb	r2, [r4, #15]
d03c3598:	b23f      	sxth	r7, r7
d03c359a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c359e:	b2b2      	uxth	r2, r6
d03c35a0:	4638      	mov	r0, r7
d03c35a2:	685b      	ldr	r3, [r3, #4]
d03c35a4:	1c56      	adds	r6, r2, #1
d03c35a6:	9203      	str	r2, [sp, #12]
d03c35a8:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c35ac:	2302      	movs	r3, #2
d03c35ae:	b232      	sxth	r2, r6
d03c35b0:	ee08 2a10 	vmov	s16, r2
d03c35b4:	b2aa      	uxth	r2, r5
d03c35b6:	f1a2 0902 	sub.w	r9, r2, #2
d03c35ba:	ee18 1a10 	vmov	r1, s16
d03c35be:	9205      	str	r2, [sp, #20]
d03c35c0:	fa0f f989 	sxth.w	r9, r9
d03c35c4:	464a      	mov	r2, r9
d03c35c6:	47c0      	blx	r8
d03c35c8:	7b23      	ldrb	r3, [r4, #12]
d03c35ca:	7b62      	ldrb	r2, [r4, #13]
d03c35cc:	4638      	mov	r0, r7
d03c35ce:	ee18 1a10 	vmov	r1, s16
d03c35d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c35d6:	7ba2      	ldrb	r2, [r4, #14]
d03c35d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c35dc:	7be2      	ldrb	r2, [r4, #15]
d03c35de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c35e2:	fa1f f28a 	uxth.w	r2, sl
d03c35e6:	685b      	ldr	r3, [r3, #4]
d03c35e8:	f1a2 0802 	sub.w	r8, r2, #2
d03c35ec:	9206      	str	r2, [sp, #24]
d03c35ee:	685b      	ldr	r3, [r3, #4]
d03c35f0:	2202      	movs	r2, #2
d03c35f2:	fa0f f888 	sxth.w	r8, r8
d03c35f6:	461e      	mov	r6, r3
d03c35f8:	4643      	mov	r3, r8
d03c35fa:	47b0      	blx	r6
d03c35fc:	7b23      	ldrb	r3, [r4, #12]
d03c35fe:	7b62      	ldrb	r2, [r4, #13]
d03c3600:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3604:	7ba2      	ldrb	r2, [r4, #14]
d03c3606:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c360a:	7be2      	ldrb	r2, [r4, #15]
d03c360c:	4c42      	ldr	r4, [pc, #264]	; (d03c3718 <ui_create_button+0x258>)
d03c360e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3612:	9a02      	ldr	r2, [sp, #8]
d03c3614:	685b      	ldr	r3, [r3, #4]
d03c3616:	2a00      	cmp	r2, #0
d03c3618:	68db      	ldr	r3, [r3, #12]
d03c361a:	bf14      	ite	ne
d03c361c:	20e7      	movne	r0, #231	; 0xe7
d03c361e:	20e1      	moveq	r0, #225	; 0xe1
d03c3620:	4798      	blx	r3
d03c3622:	7b23      	ldrb	r3, [r4, #12]
d03c3624:	7b62      	ldrb	r2, [r4, #13]
d03c3626:	4638      	mov	r0, r7
d03c3628:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c362c:	7ba2      	ldrb	r2, [r4, #14]
d03c362e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3632:	7be2      	ldrb	r2, [r4, #15]
d03c3634:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3638:	9a06      	ldr	r2, [sp, #24]
d03c363a:	685b      	ldr	r3, [r3, #4]
d03c363c:	1ed1      	subs	r1, r2, #3
d03c363e:	9a03      	ldr	r2, [sp, #12]
d03c3640:	685b      	ldr	r3, [r3, #4]
d03c3642:	4411      	add	r1, r2
d03c3644:	464a      	mov	r2, r9
d03c3646:	461e      	mov	r6, r3
d03c3648:	2302      	movs	r3, #2
d03c364a:	b209      	sxth	r1, r1
d03c364c:	47b0      	blx	r6
d03c364e:	7b23      	ldrb	r3, [r4, #12]
d03c3650:	7b62      	ldrb	r2, [r4, #13]
d03c3652:	ee18 1a10 	vmov	r1, s16
d03c3656:	f1aa 0610 	sub.w	r6, sl, #16
d03c365a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c365e:	7ba2      	ldrb	r2, [r4, #14]
d03c3660:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3664:	7be2      	ldrb	r2, [r4, #15]
d03c3666:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c366a:	9a05      	ldr	r2, [sp, #20]
d03c366c:	1ed0      	subs	r0, r2, #3
d03c366e:	685b      	ldr	r3, [r3, #4]
d03c3670:	2202      	movs	r2, #2
d03c3672:	4458      	add	r0, fp
d03c3674:	685f      	ldr	r7, [r3, #4]
d03c3676:	4643      	mov	r3, r8
d03c3678:	b200      	sxth	r0, r0
d03c367a:	47b8      	blx	r7
d03c367c:	1feb      	subs	r3, r5, #7
d03c367e:	9a04      	ldr	r2, [sp, #16]
d03c3680:	4293      	cmp	r3, r2
d03c3682:	bfca      	itet	gt
d03c3684:	9b04      	ldrgt	r3, [sp, #16]
d03c3686:	f10b 0504 	addle.w	r5, fp, #4
d03c368a:	1aed      	subgt	r5, r5, r3
d03c368c:	9b03      	ldr	r3, [sp, #12]
d03c368e:	bfc8      	it	gt
d03c3690:	eb05 75d5 	addgt.w	r5, r5, r5, lsr #31
d03c3694:	eb03 0666 	add.w	r6, r3, r6, asr #1
d03c3698:	9b02      	ldr	r3, [sp, #8]
d03c369a:	bfc8      	it	gt
d03c369c:	eb0b 0565 	addgt.w	r5, fp, r5, asr #1
d03c36a0:	b2b6      	uxth	r6, r6
d03c36a2:	b22d      	sxth	r5, r5
d03c36a4:	2b00      	cmp	r3, #0
d03c36a6:	d12d      	bne.n	d03c3704 <ui_create_button+0x244>
d03c36a8:	7b23      	ldrb	r3, [r4, #12]
d03c36aa:	b236      	sxth	r6, r6
d03c36ac:	7b62      	ldrb	r2, [r4, #13]
d03c36ae:	9807      	ldr	r0, [sp, #28]
d03c36b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c36b4:	7ba2      	ldrb	r2, [r4, #14]
d03c36b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c36ba:	7be2      	ldrb	r2, [r4, #15]
d03c36bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c36c0:	685b      	ldr	r3, [r3, #4]
d03c36c2:	68db      	ldr	r3, [r3, #12]
d03c36c4:	4798      	blx	r3
d03c36c6:	7b23      	ldrb	r3, [r4, #12]
d03c36c8:	7b62      	ldrb	r2, [r4, #13]
d03c36ca:	4631      	mov	r1, r6
d03c36cc:	4628      	mov	r0, r5
d03c36ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c36d2:	7ba2      	ldrb	r2, [r4, #14]
d03c36d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c36d8:	7be2      	ldrb	r2, [r4, #15]
d03c36da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c36de:	ee18 2a90 	vmov	r2, s17
d03c36e2:	685b      	ldr	r3, [r3, #4]
d03c36e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c36e6:	b009      	add	sp, #36	; 0x24
d03c36e8:	ecbd 8b02 	vpop	{d8}
d03c36ec:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c36f0:	4718      	bx	r3
d03c36f2:	2300      	movs	r3, #0
d03c36f4:	4599      	cmp	r9, r3
d03c36f6:	9302      	str	r3, [sp, #8]
d03c36f8:	bf14      	ite	ne
d03c36fa:	24e5      	movne	r4, #229	; 0xe5
d03c36fc:	24e3      	moveq	r4, #227	; 0xe3
d03c36fe:	e714      	b.n	d03c352a <ui_create_button+0x6a>
d03c3700:	4638      	mov	r0, r7
d03c3702:	e73c      	b.n	d03c357e <ui_create_button+0xbe>
d03c3704:	3501      	adds	r5, #1
d03c3706:	3601      	adds	r6, #1
d03c3708:	b22d      	sxth	r5, r5
d03c370a:	e7cd      	b.n	d03c36a8 <ui_create_button+0x1e8>
d03c370c:	d03ce31b 	.word	0xd03ce31b
d03c3710:	d03cf394 	.word	0xd03cf394
d03c3714:	d03cf396 	.word	0xd03cf396
d03c3718:	2001f000 	.word	0x2001f000

d03c371c <ui_draw_home>:
d03c371c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c3720:	4f88      	ldr	r7, [pc, #544]	; (d03c3944 <ui_draw_home+0x228>)
d03c3722:	b09d      	sub	sp, #116	; 0x74
d03c3724:	4b88      	ldr	r3, [pc, #544]	; (d03c3948 <ui_draw_home+0x22c>)
d03c3726:	22c8      	movs	r2, #200	; 0xc8
d03c3728:	783c      	ldrb	r4, [r7, #0]
d03c372a:	2142      	movs	r1, #66	; 0x42
d03c372c:	4e87      	ldr	r6, [pc, #540]	; (d03c394c <ui_draw_home+0x230>)
d03c372e:	200a      	movs	r0, #10
d03c3730:	9300      	str	r3, [sp, #0]
d03c3732:	2360      	movs	r3, #96	; 0x60
d03c3734:	5d35      	ldrb	r5, [r6, r4]
d03c3736:	f7fd fb15 	bl	d03c0d64 <ui_panel>
d03c373a:	4b85      	ldr	r3, [pc, #532]	; (d03c3950 <ui_draw_home+0x234>)
d03c373c:	22fa      	movs	r2, #250	; 0xfa
d03c373e:	2142      	movs	r1, #66	; 0x42
d03c3740:	20dc      	movs	r0, #220	; 0xdc
d03c3742:	9300      	str	r3, [sp, #0]
d03c3744:	2360      	movs	r3, #96	; 0x60
d03c3746:	f7fd fb0d 	bl	d03c0d64 <ui_panel>
d03c374a:	2d80      	cmp	r5, #128	; 0x80
d03c374c:	f104 0301 	add.w	r3, r4, #1
d03c3750:	4c80      	ldr	r4, [pc, #512]	; (d03c3954 <ui_draw_home+0x238>)
d03c3752:	bf98      	it	ls
d03c3754:	4a80      	ldrls	r2, [pc, #512]	; (d03c3958 <ui_draw_home+0x23c>)
d03c3756:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c375a:	bf88      	it	hi
d03c375c:	4a7f      	ldrhi	r2, [pc, #508]	; (d03c395c <ui_draw_home+0x240>)
d03c375e:	a804      	add	r0, sp, #16
d03c3760:	bf98      	it	ls
d03c3762:	f852 2025 	ldrls.w	r2, [r2, r5, lsl #2]
d03c3766:	f04f 0801 	mov.w	r8, #1
d03c376a:	9500      	str	r5, [sp, #0]
d03c376c:	46ba      	mov	sl, r7
d03c376e:	9201      	str	r2, [sp, #4]
d03c3770:	2520      	movs	r5, #32
d03c3772:	4a7b      	ldr	r2, [pc, #492]	; (d03c3960 <ui_draw_home+0x244>)
d03c3774:	2700      	movs	r7, #0
d03c3776:	f006 fc25 	bl	d03c9fc4 <sniprintf>
d03c377a:	7b23      	ldrb	r3, [r4, #12]
d03c377c:	7b62      	ldrb	r2, [r4, #13]
d03c377e:	20e8      	movs	r0, #232	; 0xe8
d03c3780:	f8df b1d4 	ldr.w	fp, [pc, #468]	; d03c3958 <ui_draw_home+0x23c>
d03c3784:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3788:	7ba2      	ldrb	r2, [r4, #14]
d03c378a:	f8df 91fc 	ldr.w	r9, [pc, #508]	; d03c3988 <ui_draw_home+0x26c>
d03c378e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3792:	7be2      	ldrb	r2, [r4, #15]
d03c3794:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3798:	685b      	ldr	r3, [r3, #4]
d03c379a:	68db      	ldr	r3, [r3, #12]
d03c379c:	4798      	blx	r3
d03c379e:	7b23      	ldrb	r3, [r4, #12]
d03c37a0:	7b62      	ldrb	r2, [r4, #13]
d03c37a2:	215c      	movs	r1, #92	; 0x5c
d03c37a4:	20e6      	movs	r0, #230	; 0xe6
d03c37a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c37aa:	7ba2      	ldrb	r2, [r4, #14]
d03c37ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c37b0:	7be2      	ldrb	r2, [r4, #15]
d03c37b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c37b6:	aa04      	add	r2, sp, #16
d03c37b8:	685b      	ldr	r3, [r3, #4]
d03c37ba:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c37bc:	4798      	blx	r3
d03c37be:	4b69      	ldr	r3, [pc, #420]	; (d03c3964 <ui_draw_home+0x248>)
d03c37c0:	2282      	movs	r2, #130	; 0x82
d03c37c2:	21e6      	movs	r1, #230	; 0xe6
d03c37c4:	200a      	movs	r0, #10
d03c37c6:	f8cd 800c 	str.w	r8, [sp, #12]
d03c37ca:	9301      	str	r3, [sp, #4]
d03c37cc:	2330      	movs	r3, #48	; 0x30
d03c37ce:	9500      	str	r5, [sp, #0]
d03c37d0:	9702      	str	r7, [sp, #8]
d03c37d2:	f7ff fe75 	bl	d03c34c0 <ui_create_button>
d03c37d6:	4b64      	ldr	r3, [pc, #400]	; (d03c3968 <ui_draw_home+0x24c>)
d03c37d8:	2282      	movs	r2, #130	; 0x82
d03c37da:	f44f 718d 	mov.w	r1, #282	; 0x11a
d03c37de:	200b      	movs	r0, #11
d03c37e0:	f8cd 800c 	str.w	r8, [sp, #12]
d03c37e4:	9301      	str	r3, [sp, #4]
d03c37e6:	2330      	movs	r3, #48	; 0x30
d03c37e8:	9500      	str	r5, [sp, #0]
d03c37ea:	9702      	str	r7, [sp, #8]
d03c37ec:	f7ff fe68 	bl	d03c34c0 <ui_create_button>
d03c37f0:	4b5e      	ldr	r3, [pc, #376]	; (d03c396c <ui_draw_home+0x250>)
d03c37f2:	2282      	movs	r2, #130	; 0x82
d03c37f4:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03c37f8:	200c      	movs	r0, #12
d03c37fa:	f8cd 800c 	str.w	r8, [sp, #12]
d03c37fe:	9301      	str	r3, [sp, #4]
d03c3800:	2330      	movs	r3, #48	; 0x30
d03c3802:	9500      	str	r5, [sp, #0]
d03c3804:	9702      	str	r7, [sp, #8]
d03c3806:	f7ff fe5b 	bl	d03c34c0 <ui_create_button>
d03c380a:	4b59      	ldr	r3, [pc, #356]	; (d03c3970 <ui_draw_home+0x254>)
d03c380c:	2282      	movs	r2, #130	; 0x82
d03c380e:	f44f 71c5 	mov.w	r1, #394	; 0x18a
d03c3812:	200d      	movs	r0, #13
d03c3814:	f8cd 800c 	str.w	r8, [sp, #12]
d03c3818:	9301      	str	r3, [sp, #4]
d03c381a:	2330      	movs	r3, #48	; 0x30
d03c381c:	9500      	str	r5, [sp, #0]
d03c381e:	25c8      	movs	r5, #200	; 0xc8
d03c3820:	9702      	str	r7, [sp, #8]
d03c3822:	f7ff fe4d 	bl	d03c34c0 <ui_create_button>
d03c3826:	4b53      	ldr	r3, [pc, #332]	; (d03c3974 <ui_draw_home+0x258>)
d03c3828:	f8df 8160 	ldr.w	r8, [pc, #352]	; d03c398c <ui_draw_home+0x270>
d03c382c:	22de      	movs	r2, #222	; 0xde
d03c382e:	9300      	str	r3, [sp, #0]
d03c3830:	21ac      	movs	r1, #172	; 0xac
d03c3832:	2362      	movs	r3, #98	; 0x62
d03c3834:	200a      	movs	r0, #10
d03c3836:	f7fd fa95 	bl	d03c0d64 <ui_panel>
d03c383a:	f818 7b01 	ldrb.w	r7, [r8], #1
d03c383e:	a804      	add	r0, sp, #16
d03c3840:	5df2      	ldrb	r2, [r6, r7]
d03c3842:	1c7b      	adds	r3, r7, #1
d03c3844:	2a80      	cmp	r2, #128	; 0x80
d03c3846:	9200      	str	r2, [sp, #0]
d03c3848:	bf98      	it	ls
d03c384a:	f85b 1022 	ldrls.w	r1, [fp, r2, lsl #2]
d03c384e:	464a      	mov	r2, r9
d03c3850:	bf88      	it	hi
d03c3852:	4942      	ldrhi	r1, [pc, #264]	; (d03c395c <ui_draw_home+0x240>)
d03c3854:	9101      	str	r1, [sp, #4]
d03c3856:	2160      	movs	r1, #96	; 0x60
d03c3858:	f006 fbb4 	bl	d03c9fc4 <sniprintf>
d03c385c:	7b23      	ldrb	r3, [r4, #12]
d03c385e:	7b62      	ldrb	r2, [r4, #13]
d03c3860:	f89a 0000 	ldrb.w	r0, [sl]
d03c3864:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3868:	7ba2      	ldrb	r2, [r4, #14]
d03c386a:	42b8      	cmp	r0, r7
d03c386c:	bf0c      	ite	eq
d03c386e:	20e8      	moveq	r0, #232	; 0xe8
d03c3870:	20e7      	movne	r0, #231	; 0xe7
d03c3872:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3876:	7be2      	ldrb	r2, [r4, #15]
d03c3878:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c387c:	685b      	ldr	r3, [r3, #4]
d03c387e:	68db      	ldr	r3, [r3, #12]
d03c3880:	4798      	blx	r3
d03c3882:	7b23      	ldrb	r3, [r4, #12]
d03c3884:	7b62      	ldrb	r2, [r4, #13]
d03c3886:	4629      	mov	r1, r5
d03c3888:	3510      	adds	r5, #16
d03c388a:	2018      	movs	r0, #24
d03c388c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3890:	7ba2      	ldrb	r2, [r4, #14]
d03c3892:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3896:	7be2      	ldrb	r2, [r4, #15]
d03c3898:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c389c:	aa04      	add	r2, sp, #16
d03c389e:	685b      	ldr	r3, [r3, #4]
d03c38a0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c38a2:	4798      	blx	r3
d03c38a4:	f5b5 7f84 	cmp.w	r5, #264	; 0x108
d03c38a8:	d1c7      	bne.n	d03c383a <ui_draw_home+0x11e>
d03c38aa:	4b33      	ldr	r3, [pc, #204]	; (d03c3978 <ui_draw_home+0x25c>)
d03c38ac:	21ac      	movs	r1, #172	; 0xac
d03c38ae:	22e4      	movs	r2, #228	; 0xe4
d03c38b0:	20f2      	movs	r0, #242	; 0xf2
d03c38b2:	9300      	str	r3, [sp, #0]
d03c38b4:	2362      	movs	r3, #98	; 0x62
d03c38b6:	f7fd fa55 	bl	d03c0d64 <ui_panel>
d03c38ba:	7b23      	ldrb	r3, [r4, #12]
d03c38bc:	7b62      	ldrb	r2, [r4, #13]
d03c38be:	20e7      	movs	r0, #231	; 0xe7
d03c38c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c38c4:	7ba2      	ldrb	r2, [r4, #14]
d03c38c6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c38ca:	7be2      	ldrb	r2, [r4, #15]
d03c38cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c38d0:	685b      	ldr	r3, [r3, #4]
d03c38d2:	68db      	ldr	r3, [r3, #12]
d03c38d4:	4798      	blx	r3
d03c38d6:	7b23      	ldrb	r3, [r4, #12]
d03c38d8:	7b62      	ldrb	r2, [r4, #13]
d03c38da:	21c8      	movs	r1, #200	; 0xc8
d03c38dc:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c38e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c38e4:	7ba2      	ldrb	r2, [r4, #14]
d03c38e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c38ea:	7be2      	ldrb	r2, [r4, #15]
d03c38ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c38f0:	4a22      	ldr	r2, [pc, #136]	; (d03c397c <ui_draw_home+0x260>)
d03c38f2:	685b      	ldr	r3, [r3, #4]
d03c38f4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c38f6:	4798      	blx	r3
d03c38f8:	7b23      	ldrb	r3, [r4, #12]
d03c38fa:	7b62      	ldrb	r2, [r4, #13]
d03c38fc:	21d8      	movs	r1, #216	; 0xd8
d03c38fe:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c3902:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3906:	7ba2      	ldrb	r2, [r4, #14]
d03c3908:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c390c:	7be2      	ldrb	r2, [r4, #15]
d03c390e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3912:	4a1b      	ldr	r2, [pc, #108]	; (d03c3980 <ui_draw_home+0x264>)
d03c3914:	685b      	ldr	r3, [r3, #4]
d03c3916:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3918:	4798      	blx	r3
d03c391a:	7b23      	ldrb	r3, [r4, #12]
d03c391c:	7b62      	ldrb	r2, [r4, #13]
d03c391e:	21ec      	movs	r1, #236	; 0xec
d03c3920:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c3924:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3928:	7ba2      	ldrb	r2, [r4, #14]
d03c392a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c392e:	7be2      	ldrb	r2, [r4, #15]
d03c3930:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3934:	4a13      	ldr	r2, [pc, #76]	; (d03c3984 <ui_draw_home+0x268>)
d03c3936:	685b      	ldr	r3, [r3, #4]
d03c3938:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c393a:	4798      	blx	r3
d03c393c:	b01d      	add	sp, #116	; 0x74
d03c393e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c3942:	bf00      	nop
d03c3944:	d03cf3ca 	.word	0xd03cf3ca
d03c3948:	d03cb592 	.word	0xd03cb592
d03c394c:	d03ccd64 	.word	0xd03ccd64
d03c3950:	d03cb59e 	.word	0xd03cb59e
d03c3954:	2001f000 	.word	0x2001f000
d03c3958:	d03cc2e4 	.word	0xd03cc2e4
d03c395c:	d03cb589 	.word	0xd03cb589
d03c3960:	d03cb5af 	.word	0xd03cb5af
d03c3964:	d03cb5c2 	.word	0xd03cb5c2
d03c3968:	d03cb5c5 	.word	0xd03cb5c5
d03c396c:	d03cb5c8 	.word	0xd03cb5c8
d03c3970:	d03cb5cb 	.word	0xd03cb5cb
d03c3974:	d03cb5ce 	.word	0xd03cb5ce
d03c3978:	d03cb5f3 	.word	0xd03cb5f3
d03c397c:	d03cb5fb 	.word	0xd03cb5fb
d03c3980:	d03cb612 	.word	0xd03cb612
d03c3984:	d03cb625 	.word	0xd03cb625
d03c3988:	d03cb5dd 	.word	0xd03cb5dd
d03c398c:	d03cf3a4 	.word	0xd03cf3a4

d03c3990 <ui_draw_confirm_modal.part.0>:
d03c3990:	b530      	push	{r4, r5, lr}
d03c3992:	211a      	movs	r1, #26
d03c3994:	b085      	sub	sp, #20
d03c3996:	231f      	movs	r3, #31
d03c3998:	4c5c      	ldr	r4, [pc, #368]	; (d03c3b0c <ui_draw_confirm_modal.part.0+0x17c>)
d03c399a:	f44f 7290 	mov.w	r2, #288	; 0x120
d03c399e:	2060      	movs	r0, #96	; 0x60
d03c39a0:	e9cd 1300 	strd	r1, r3, [sp]
d03c39a4:	2170      	movs	r1, #112	; 0x70
d03c39a6:	236c      	movs	r3, #108	; 0x6c
d03c39a8:	f7fd f96e 	bl	d03c0c88 <ui_box>
d03c39ac:	7b23      	ldrb	r3, [r4, #12]
d03c39ae:	7b62      	ldrb	r2, [r4, #13]
d03c39b0:	2014      	movs	r0, #20
d03c39b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c39b6:	7ba2      	ldrb	r2, [r4, #14]
d03c39b8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c39bc:	7be2      	ldrb	r2, [r4, #15]
d03c39be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c39c2:	685b      	ldr	r3, [r3, #4]
d03c39c4:	68db      	ldr	r3, [r3, #12]
d03c39c6:	4798      	blx	r3
d03c39c8:	7b23      	ldrb	r3, [r4, #12]
d03c39ca:	7b62      	ldrb	r2, [r4, #13]
d03c39cc:	2171      	movs	r1, #113	; 0x71
d03c39ce:	2061      	movs	r0, #97	; 0x61
d03c39d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c39d4:	7ba2      	ldrb	r2, [r4, #14]
d03c39d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c39da:	7be2      	ldrb	r2, [r4, #15]
d03c39dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c39e0:	f44f 728f 	mov.w	r2, #286	; 0x11e
d03c39e4:	685b      	ldr	r3, [r3, #4]
d03c39e6:	685d      	ldr	r5, [r3, #4]
d03c39e8:	2314      	movs	r3, #20
d03c39ea:	47a8      	blx	r5
d03c39ec:	7b23      	ldrb	r3, [r4, #12]
d03c39ee:	7b62      	ldrb	r2, [r4, #13]
d03c39f0:	201e      	movs	r0, #30
d03c39f2:	4d47      	ldr	r5, [pc, #284]	; (d03c3b10 <ui_draw_confirm_modal.part.0+0x180>)
d03c39f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c39f8:	7ba2      	ldrb	r2, [r4, #14]
d03c39fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c39fe:	7be2      	ldrb	r2, [r4, #15]
d03c3a00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a04:	685b      	ldr	r3, [r3, #4]
d03c3a06:	68db      	ldr	r3, [r3, #12]
d03c3a08:	4798      	blx	r3
d03c3a0a:	7b23      	ldrb	r3, [r4, #12]
d03c3a0c:	7b62      	ldrb	r2, [r4, #13]
d03c3a0e:	2175      	movs	r1, #117	; 0x75
d03c3a10:	206e      	movs	r0, #110	; 0x6e
d03c3a12:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a16:	7ba2      	ldrb	r2, [r4, #14]
d03c3a18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a1c:	7be2      	ldrb	r2, [r4, #15]
d03c3a1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a22:	4a3c      	ldr	r2, [pc, #240]	; (d03c3b14 <ui_draw_confirm_modal.part.0+0x184>)
d03c3a24:	685b      	ldr	r3, [r3, #4]
d03c3a26:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3a28:	4798      	blx	r3
d03c3a2a:	7b23      	ldrb	r3, [r4, #12]
d03c3a2c:	7b62      	ldrb	r2, [r4, #13]
d03c3a2e:	2019      	movs	r0, #25
d03c3a30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a34:	7ba2      	ldrb	r2, [r4, #14]
d03c3a36:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a3a:	7be2      	ldrb	r2, [r4, #15]
d03c3a3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a40:	685b      	ldr	r3, [r3, #4]
d03c3a42:	68db      	ldr	r3, [r3, #12]
d03c3a44:	4798      	blx	r3
d03c3a46:	782b      	ldrb	r3, [r5, #0]
d03c3a48:	2b01      	cmp	r3, #1
d03c3a4a:	d13d      	bne.n	d03c3ac8 <ui_draw_confirm_modal.part.0+0x138>
d03c3a4c:	7b23      	ldrb	r3, [r4, #12]
d03c3a4e:	2192      	movs	r1, #146	; 0x92
d03c3a50:	7b62      	ldrb	r2, [r4, #13]
d03c3a52:	2074      	movs	r0, #116	; 0x74
d03c3a54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a58:	7ba2      	ldrb	r2, [r4, #14]
d03c3a5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a5e:	7be2      	ldrb	r2, [r4, #15]
d03c3a60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a64:	4a2c      	ldr	r2, [pc, #176]	; (d03c3b18 <ui_draw_confirm_modal.part.0+0x188>)
d03c3a66:	685b      	ldr	r3, [r3, #4]
d03c3a68:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3a6a:	4798      	blx	r3
d03c3a6c:	7b23      	ldrb	r3, [r4, #12]
d03c3a6e:	7b62      	ldrb	r2, [r4, #13]
d03c3a70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3a74:	7ba2      	ldrb	r2, [r4, #14]
d03c3a76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3a7a:	7be2      	ldrb	r2, [r4, #15]
d03c3a7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3a80:	4a26      	ldr	r2, [pc, #152]	; (d03c3b1c <ui_draw_confirm_modal.part.0+0x18c>)
d03c3a82:	685b      	ldr	r3, [r3, #4]
d03c3a84:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3a86:	21a2      	movs	r1, #162	; 0xa2
d03c3a88:	2074      	movs	r0, #116	; 0x74
d03c3a8a:	4798      	blx	r3
d03c3a8c:	782b      	ldrb	r3, [r5, #0]
d03c3a8e:	2b02      	cmp	r3, #2
d03c3a90:	d03a      	beq.n	d03c3b08 <ui_draw_confirm_modal.part.0+0x178>
d03c3a92:	4b23      	ldr	r3, [pc, #140]	; (d03c3b20 <ui_draw_confirm_modal.part.0+0x190>)
d03c3a94:	2400      	movs	r4, #0
d03c3a96:	251c      	movs	r5, #28
d03c3a98:	9301      	str	r3, [sp, #4]
d03c3a9a:	22b2      	movs	r2, #178	; 0xb2
d03c3a9c:	235c      	movs	r3, #92	; 0x5c
d03c3a9e:	2184      	movs	r1, #132	; 0x84
d03c3aa0:	2028      	movs	r0, #40	; 0x28
d03c3aa2:	9403      	str	r4, [sp, #12]
d03c3aa4:	9402      	str	r4, [sp, #8]
d03c3aa6:	9500      	str	r5, [sp, #0]
d03c3aa8:	f7ff fd0a 	bl	d03c34c0 <ui_create_button>
d03c3aac:	4b1d      	ldr	r3, [pc, #116]	; (d03c3b24 <ui_draw_confirm_modal.part.0+0x194>)
d03c3aae:	22b2      	movs	r2, #178	; 0xb2
d03c3ab0:	f44f 7180 	mov.w	r1, #256	; 0x100
d03c3ab4:	9301      	str	r3, [sp, #4]
d03c3ab6:	2029      	movs	r0, #41	; 0x29
d03c3ab8:	235c      	movs	r3, #92	; 0x5c
d03c3aba:	9403      	str	r4, [sp, #12]
d03c3abc:	9402      	str	r4, [sp, #8]
d03c3abe:	9500      	str	r5, [sp, #0]
d03c3ac0:	f7ff fcfe 	bl	d03c34c0 <ui_create_button>
d03c3ac4:	b005      	add	sp, #20
d03c3ac6:	bd30      	pop	{r4, r5, pc}
d03c3ac8:	2b02      	cmp	r3, #2
d03c3aca:	d1e2      	bne.n	d03c3a92 <ui_draw_confirm_modal.part.0+0x102>
d03c3acc:	7b23      	ldrb	r3, [r4, #12]
d03c3ace:	2192      	movs	r1, #146	; 0x92
d03c3ad0:	7b62      	ldrb	r2, [r4, #13]
d03c3ad2:	2074      	movs	r0, #116	; 0x74
d03c3ad4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3ad8:	7ba2      	ldrb	r2, [r4, #14]
d03c3ada:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3ade:	7be2      	ldrb	r2, [r4, #15]
d03c3ae0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3ae4:	4a10      	ldr	r2, [pc, #64]	; (d03c3b28 <ui_draw_confirm_modal.part.0+0x198>)
d03c3ae6:	685b      	ldr	r3, [r3, #4]
d03c3ae8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3aea:	4798      	blx	r3
d03c3aec:	7b23      	ldrb	r3, [r4, #12]
d03c3aee:	7b62      	ldrb	r2, [r4, #13]
d03c3af0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3af4:	7ba2      	ldrb	r2, [r4, #14]
d03c3af6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3afa:	7be2      	ldrb	r2, [r4, #15]
d03c3afc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3b00:	4a0a      	ldr	r2, [pc, #40]	; (d03c3b2c <ui_draw_confirm_modal.part.0+0x19c>)
d03c3b02:	685b      	ldr	r3, [r3, #4]
d03c3b04:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3b06:	e7be      	b.n	d03c3a86 <ui_draw_confirm_modal.part.0+0xf6>
d03c3b08:	4b09      	ldr	r3, [pc, #36]	; (d03c3b30 <ui_draw_confirm_modal.part.0+0x1a0>)
d03c3b0a:	e7c3      	b.n	d03c3a94 <ui_draw_confirm_modal.part.0+0x104>
d03c3b0c:	2001f000 	.word	0x2001f000
d03c3b10:	d03cda33 	.word	0xd03cda33
d03c3b14:	d03cb64a 	.word	0xd03cb64a
d03c3b18:	d03cb659 	.word	0xd03cb659
d03c3b1c:	d03cb675 	.word	0xd03cb675
d03c3b20:	d03cb63c 	.word	0xd03cb63c
d03c3b24:	d03cb6c1 	.word	0xd03cb6c1
d03c3b28:	d03cb68e 	.word	0xd03cb68e
d03c3b2c:	d03cb6a8 	.word	0xd03cb6a8
d03c3b30:	d03cb644 	.word	0xd03cb644

d03c3b34 <ui_draw_dialog>:
d03c3b34:	4baa      	ldr	r3, [pc, #680]	; (d03c3de0 <ui_draw_dialog+0x2ac>)
d03c3b36:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c3b3a:	781e      	ldrb	r6, [r3, #0]
d03c3b3c:	b093      	sub	sp, #76	; 0x4c
d03c3b3e:	2e02      	cmp	r6, #2
d03c3b40:	f000 82b8 	beq.w	d03c40b4 <ui_draw_dialog+0x580>
d03c3b44:	2e03      	cmp	r6, #3
d03c3b46:	f000 845c 	beq.w	d03c4402 <ui_draw_dialog+0x8ce>
d03c3b4a:	2e01      	cmp	r6, #1
d03c3b4c:	f040 8144 	bne.w	d03c3dd8 <ui_draw_dialog+0x2a4>
d03c3b50:	4ba4      	ldr	r3, [pc, #656]	; (d03c3de4 <ui_draw_dialog+0x2b0>)
d03c3b52:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c3b56:	4ca4      	ldr	r4, [pc, #656]	; (d03c3de8 <ui_draw_dialog+0x2b4>)
d03c3b58:	7819      	ldrb	r1, [r3, #0]
d03c3b5a:	469b      	mov	fp, r3
d03c3b5c:	2907      	cmp	r1, #7
d03c3b5e:	bf8a      	itet	hi
d03c3b60:	3907      	subhi	r1, #7
d03c3b62:	2300      	movls	r3, #0
d03c3b64:	b2cb      	uxtbhi	r3, r1
d03c3b66:	211a      	movs	r1, #26
d03c3b68:	9306      	str	r3, [sp, #24]
d03c3b6a:	231f      	movs	r3, #31
d03c3b6c:	e9cd 1300 	strd	r1, r3, [sp]
d03c3b70:	2100      	movs	r1, #0
d03c3b72:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c3b76:	4608      	mov	r0, r1
d03c3b78:	f7fd f886 	bl	d03c0c88 <ui_box>
d03c3b7c:	7b23      	ldrb	r3, [r4, #12]
d03c3b7e:	7b62      	ldrb	r2, [r4, #13]
d03c3b80:	2014      	movs	r0, #20
d03c3b82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3b86:	7ba2      	ldrb	r2, [r4, #14]
d03c3b88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3b8c:	7be2      	ldrb	r2, [r4, #15]
d03c3b8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3b92:	685b      	ldr	r3, [r3, #4]
d03c3b94:	68db      	ldr	r3, [r3, #12]
d03c3b96:	4798      	blx	r3
d03c3b98:	7b23      	ldrb	r3, [r4, #12]
d03c3b9a:	7b62      	ldrb	r2, [r4, #13]
d03c3b9c:	2101      	movs	r1, #1
d03c3b9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3ba2:	7ba2      	ldrb	r2, [r4, #14]
d03c3ba4:	4608      	mov	r0, r1
d03c3ba6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3baa:	7be2      	ldrb	r2, [r4, #15]
d03c3bac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bb0:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03c3bb4:	685b      	ldr	r3, [r3, #4]
d03c3bb6:	685d      	ldr	r5, [r3, #4]
d03c3bb8:	231c      	movs	r3, #28
d03c3bba:	47a8      	blx	r5
d03c3bbc:	7b23      	ldrb	r3, [r4, #12]
d03c3bbe:	7b62      	ldrb	r2, [r4, #13]
d03c3bc0:	201e      	movs	r0, #30
d03c3bc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3bc6:	7ba2      	ldrb	r2, [r4, #14]
d03c3bc8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3bcc:	7be2      	ldrb	r2, [r4, #15]
d03c3bce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bd2:	685b      	ldr	r3, [r3, #4]
d03c3bd4:	68db      	ldr	r3, [r3, #12]
d03c3bd6:	4798      	blx	r3
d03c3bd8:	7b23      	ldrb	r3, [r4, #12]
d03c3bda:	7b62      	ldrb	r2, [r4, #13]
d03c3bdc:	2107      	movs	r1, #7
d03c3bde:	2010      	movs	r0, #16
d03c3be0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3be4:	7ba2      	ldrb	r2, [r4, #14]
d03c3be6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3bea:	7be2      	ldrb	r2, [r4, #15]
d03c3bec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3bf0:	4a7e      	ldr	r2, [pc, #504]	; (d03c3dec <ui_draw_dialog+0x2b8>)
d03c3bf2:	685b      	ldr	r3, [r3, #4]
d03c3bf4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3bf6:	4798      	blx	r3
d03c3bf8:	7b23      	ldrb	r3, [r4, #12]
d03c3bfa:	7b62      	ldrb	r2, [r4, #13]
d03c3bfc:	2018      	movs	r0, #24
d03c3bfe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c02:	7ba2      	ldrb	r2, [r4, #14]
d03c3c04:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c08:	7be2      	ldrb	r2, [r4, #15]
d03c3c0a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c0e:	685b      	ldr	r3, [r3, #4]
d03c3c10:	68db      	ldr	r3, [r3, #12]
d03c3c12:	4798      	blx	r3
d03c3c14:	7b23      	ldrb	r3, [r4, #12]
d03c3c16:	7b62      	ldrb	r2, [r4, #13]
d03c3c18:	2078      	movs	r0, #120	; 0x78
d03c3c1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c1e:	7ba2      	ldrb	r2, [r4, #14]
d03c3c20:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c24:	7be2      	ldrb	r2, [r4, #15]
d03c3c26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c2a:	4a71      	ldr	r2, [pc, #452]	; (d03c3df0 <ui_draw_dialog+0x2bc>)
d03c3c2c:	685b      	ldr	r3, [r3, #4]
d03c3c2e:	6add      	ldr	r5, [r3, #44]	; 0x2c
d03c3c30:	4b70      	ldr	r3, [pc, #448]	; (d03c3df4 <ui_draw_dialog+0x2c0>)
d03c3c32:	7819      	ldrb	r1, [r3, #0]
d03c3c34:	2900      	cmp	r1, #0
d03c3c36:	bf18      	it	ne
d03c3c38:	461a      	movne	r2, r3
d03c3c3a:	2107      	movs	r1, #7
d03c3c3c:	47a8      	blx	r5
d03c3c3e:	f89b 3000 	ldrb.w	r3, [fp]
d03c3c42:	2b00      	cmp	r3, #0
d03c3c44:	f040 80ea 	bne.w	d03c3e1c <ui_draw_dialog+0x2e8>
d03c3c48:	7b23      	ldrb	r3, [r4, #12]
d03c3c4a:	2019      	movs	r0, #25
d03c3c4c:	7b62      	ldrb	r2, [r4, #13]
d03c3c4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c52:	7ba2      	ldrb	r2, [r4, #14]
d03c3c54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c58:	7be2      	ldrb	r2, [r4, #15]
d03c3c5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c5e:	685b      	ldr	r3, [r3, #4]
d03c3c60:	68db      	ldr	r3, [r3, #12]
d03c3c62:	4798      	blx	r3
d03c3c64:	7b23      	ldrb	r3, [r4, #12]
d03c3c66:	7b62      	ldrb	r2, [r4, #13]
d03c3c68:	2188      	movs	r1, #136	; 0x88
d03c3c6a:	2038      	movs	r0, #56	; 0x38
d03c3c6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c70:	7ba2      	ldrb	r2, [r4, #14]
d03c3c72:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c76:	7be2      	ldrb	r2, [r4, #15]
d03c3c78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c7c:	4a5e      	ldr	r2, [pc, #376]	; (d03c3df8 <ui_draw_dialog+0x2c4>)
d03c3c7e:	685b      	ldr	r3, [r3, #4]
d03c3c80:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c3c82:	4798      	blx	r3
d03c3c84:	7b23      	ldrb	r3, [r4, #12]
d03c3c86:	2014      	movs	r0, #20
d03c3c88:	7b62      	ldrb	r2, [r4, #13]
d03c3c8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3c8e:	7ba2      	ldrb	r2, [r4, #14]
d03c3c90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3c94:	7be2      	ldrb	r2, [r4, #15]
d03c3c96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3c9a:	685b      	ldr	r3, [r3, #4]
d03c3c9c:	68db      	ldr	r3, [r3, #12]
d03c3c9e:	4798      	blx	r3
d03c3ca0:	7b23      	ldrb	r3, [r4, #12]
d03c3ca2:	7b62      	ldrb	r2, [r4, #13]
d03c3ca4:	212e      	movs	r1, #46	; 0x2e
d03c3ca6:	f44f 70d2 	mov.w	r0, #420	; 0x1a4
d03c3caa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cae:	7ba2      	ldrb	r2, [r4, #14]
d03c3cb0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cb4:	7be2      	ldrb	r2, [r4, #15]
d03c3cb6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cba:	220c      	movs	r2, #12
d03c3cbc:	685b      	ldr	r3, [r3, #4]
d03c3cbe:	685d      	ldr	r5, [r3, #4]
d03c3cc0:	23e0      	movs	r3, #224	; 0xe0
d03c3cc2:	47a8      	blx	r5
d03c3cc4:	7b23      	ldrb	r3, [r4, #12]
d03c3cc6:	7b62      	ldrb	r2, [r4, #13]
d03c3cc8:	201c      	movs	r0, #28
d03c3cca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cce:	7ba2      	ldrb	r2, [r4, #14]
d03c3cd0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cd4:	7be2      	ldrb	r2, [r4, #15]
d03c3cd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cda:	685b      	ldr	r3, [r3, #4]
d03c3cdc:	68db      	ldr	r3, [r3, #12]
d03c3cde:	4798      	blx	r3
d03c3ce0:	9b06      	ldr	r3, [sp, #24]
d03c3ce2:	2b00      	cmp	r3, #0
d03c3ce4:	f040 81af 	bne.w	d03c4046 <ui_draw_dialog+0x512>
d03c3ce8:	7b23      	ldrb	r3, [r4, #12]
d03c3cea:	212e      	movs	r1, #46	; 0x2e
d03c3cec:	7b62      	ldrb	r2, [r4, #13]
d03c3cee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3cf2:	7ba2      	ldrb	r2, [r4, #14]
d03c3cf4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3cf8:	7be2      	ldrb	r2, [r4, #15]
d03c3cfa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3cfe:	2208      	movs	r2, #8
d03c3d00:	685b      	ldr	r3, [r3, #4]
d03c3d02:	685c      	ldr	r4, [r3, #4]
d03c3d04:	23e0      	movs	r3, #224	; 0xe0
d03c3d06:	f44f 70d3 	mov.w	r0, #422	; 0x1a6
d03c3d0a:	2520      	movs	r5, #32
d03c3d0c:	47a0      	blx	r4
d03c3d0e:	2601      	movs	r6, #1
d03c3d10:	2400      	movs	r4, #0
d03c3d12:	4b3a      	ldr	r3, [pc, #232]	; (d03c3dfc <ui_draw_dialog+0x2c8>)
d03c3d14:	223a      	movs	r2, #58	; 0x3a
d03c3d16:	f44f 71db 	mov.w	r1, #438	; 0x1b6
d03c3d1a:	202a      	movs	r0, #42	; 0x2a
d03c3d1c:	9301      	str	r3, [sp, #4]
d03c3d1e:	9500      	str	r5, [sp, #0]
d03c3d20:	462b      	mov	r3, r5
d03c3d22:	9603      	str	r6, [sp, #12]
d03c3d24:	9402      	str	r4, [sp, #8]
d03c3d26:	f7ff fbcb 	bl	d03c34c0 <ui_create_button>
d03c3d2a:	4b35      	ldr	r3, [pc, #212]	; (d03c3e00 <ui_draw_dialog+0x2cc>)
d03c3d2c:	2260      	movs	r2, #96	; 0x60
d03c3d2e:	f44f 71db 	mov.w	r1, #438	; 0x1b6
d03c3d32:	202b      	movs	r0, #43	; 0x2b
d03c3d34:	9301      	str	r3, [sp, #4]
d03c3d36:	9500      	str	r5, [sp, #0]
d03c3d38:	462b      	mov	r3, r5
d03c3d3a:	9603      	str	r6, [sp, #12]
d03c3d3c:	251e      	movs	r5, #30
d03c3d3e:	9402      	str	r4, [sp, #8]
d03c3d40:	f7ff fbbe 	bl	d03c34c0 <ui_create_button>
d03c3d44:	4b2f      	ldr	r3, [pc, #188]	; (d03c3e04 <ui_draw_dialog+0x2d0>)
d03c3d46:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d4a:	210a      	movs	r1, #10
d03c3d4c:	202c      	movs	r0, #44	; 0x2c
d03c3d4e:	9301      	str	r3, [sp, #4]
d03c3d50:	9403      	str	r4, [sp, #12]
d03c3d52:	2332      	movs	r3, #50	; 0x32
d03c3d54:	9402      	str	r4, [sp, #8]
d03c3d56:	9500      	str	r5, [sp, #0]
d03c3d58:	f7ff fbb2 	bl	d03c34c0 <ui_create_button>
d03c3d5c:	4b2a      	ldr	r3, [pc, #168]	; (d03c3e08 <ui_draw_dialog+0x2d4>)
d03c3d5e:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d62:	2142      	movs	r1, #66	; 0x42
d03c3d64:	202d      	movs	r0, #45	; 0x2d
d03c3d66:	9301      	str	r3, [sp, #4]
d03c3d68:	9403      	str	r4, [sp, #12]
d03c3d6a:	2348      	movs	r3, #72	; 0x48
d03c3d6c:	9402      	str	r4, [sp, #8]
d03c3d6e:	9500      	str	r5, [sp, #0]
d03c3d70:	f7ff fba6 	bl	d03c34c0 <ui_create_button>
d03c3d74:	4b25      	ldr	r3, [pc, #148]	; (d03c3e0c <ui_draw_dialog+0x2d8>)
d03c3d76:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d7a:	2190      	movs	r1, #144	; 0x90
d03c3d7c:	202e      	movs	r0, #46	; 0x2e
d03c3d7e:	9301      	str	r3, [sp, #4]
d03c3d80:	9403      	str	r4, [sp, #12]
d03c3d82:	233e      	movs	r3, #62	; 0x3e
d03c3d84:	9402      	str	r4, [sp, #8]
d03c3d86:	9500      	str	r5, [sp, #0]
d03c3d88:	f7ff fb9a 	bl	d03c34c0 <ui_create_button>
d03c3d8c:	4b20      	ldr	r3, [pc, #128]	; (d03c3e10 <ui_draw_dialog+0x2dc>)
d03c3d8e:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3d92:	21d4      	movs	r1, #212	; 0xd4
d03c3d94:	202f      	movs	r0, #47	; 0x2f
d03c3d96:	9301      	str	r3, [sp, #4]
d03c3d98:	9403      	str	r4, [sp, #12]
d03c3d9a:	2346      	movs	r3, #70	; 0x46
d03c3d9c:	9402      	str	r4, [sp, #8]
d03c3d9e:	9500      	str	r5, [sp, #0]
d03c3da0:	f7ff fb8e 	bl	d03c34c0 <ui_create_button>
d03c3da4:	4b1b      	ldr	r3, [pc, #108]	; (d03c3e14 <ui_draw_dialog+0x2e0>)
d03c3da6:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3daa:	f44f 7190 	mov.w	r1, #288	; 0x120
d03c3dae:	2030      	movs	r0, #48	; 0x30
d03c3db0:	9301      	str	r3, [sp, #4]
d03c3db2:	9403      	str	r4, [sp, #12]
d03c3db4:	233e      	movs	r3, #62	; 0x3e
d03c3db6:	9402      	str	r4, [sp, #8]
d03c3db8:	9500      	str	r5, [sp, #0]
d03c3dba:	f7ff fb81 	bl	d03c34c0 <ui_create_button>
d03c3dbe:	4b16      	ldr	r3, [pc, #88]	; (d03c3e18 <ui_draw_dialog+0x2e4>)
d03c3dc0:	f44f 728d 	mov.w	r2, #282	; 0x11a
d03c3dc4:	f44f 71c0 	mov.w	r1, #384	; 0x180
d03c3dc8:	9301      	str	r3, [sp, #4]
d03c3dca:	2031      	movs	r0, #49	; 0x31
d03c3dcc:	2354      	movs	r3, #84	; 0x54
d03c3dce:	9403      	str	r4, [sp, #12]
d03c3dd0:	9402      	str	r4, [sp, #8]
d03c3dd2:	9500      	str	r5, [sp, #0]
d03c3dd4:	f7ff fb74 	bl	d03c34c0 <ui_create_button>
d03c3dd8:	b013      	add	sp, #76	; 0x4c
d03c3dda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c3dde:	bf00      	nop
d03c3de0:	d03cda34 	.word	0xd03cda34
d03c3de4:	d03cda78 	.word	0xd03cda78
d03c3de8:	2001f000 	.word	0x2001f000
d03c3dec:	d03cb6ca 	.word	0xd03cb6ca
d03c3df0:	d03cb398 	.word	0xd03cb398
d03c3df4:	d03cda79 	.word	0xd03cda79
d03c3df8:	d03cb6d6 	.word	0xd03cb6d6
d03c3dfc:	d03cb701 	.word	0xd03cb701
d03c3e00:	d03cb704 	.word	0xd03cb704
d03c3e04:	d03cb707 	.word	0xd03cb707
d03c3e08:	d03cb70a 	.word	0xd03cb70a
d03c3e0c:	d03cb738 	.word	0xd03cb738
d03c3e10:	d03cb741 	.word	0xd03cb741
d03c3e14:	d03cb70f 	.word	0xd03cb70f
d03c3e18:	d03cb6c1 	.word	0xd03cb6c1
d03c3e1c:	264b      	movs	r6, #75	; 0x4b
d03c3e1e:	2700      	movs	r7, #0
d03c3e20:	4b99      	ldr	r3, [pc, #612]	; (d03c4088 <ui_draw_dialog+0x554>)
d03c3e22:	781d      	ldrb	r5, [r3, #0]
d03c3e24:	f89b 3000 	ldrb.w	r3, [fp]
d03c3e28:	443d      	add	r5, r7
d03c3e2a:	b2ed      	uxtb	r5, r5
d03c3e2c:	42ab      	cmp	r3, r5
d03c3e2e:	f67f af29 	bls.w	d03c3c84 <ui_draw_dialog+0x150>
d03c3e32:	4b96      	ldr	r3, [pc, #600]	; (d03c408c <ui_draw_dialog+0x558>)
d03c3e34:	5d5a      	ldrb	r2, [r3, r5]
d03c3e36:	4b96      	ldr	r3, [pc, #600]	; (d03c4090 <ui_draw_dialog+0x55c>)
d03c3e38:	2a05      	cmp	r2, #5
d03c3e3a:	eb03 1345 	add.w	r3, r3, r5, lsl #5
d03c3e3e:	f040 80ec 	bne.w	d03c401a <ui_draw_dialog+0x4e6>
d03c3e42:	4a94      	ldr	r2, [pc, #592]	; (d03c4094 <ui_draw_dialog+0x560>)
d03c3e44:	2128      	movs	r1, #40	; 0x28
d03c3e46:	a808      	add	r0, sp, #32
d03c3e48:	f006 f8bc 	bl	d03c9fc4 <sniprintf>
d03c3e4c:	4b92      	ldr	r3, [pc, #584]	; (d03c4098 <ui_draw_dialog+0x564>)
d03c3e4e:	f107 00b4 	add.w	r0, r7, #180	; 0xb4
d03c3e52:	f1a6 0a1d 	sub.w	sl, r6, #29
d03c3e56:	781b      	ldrb	r3, [r3, #0]
d03c3e58:	b280      	uxth	r0, r0
d03c3e5a:	9305      	str	r3, [sp, #20]
d03c3e5c:	fa0f fa8a 	sxth.w	sl, sl
d03c3e60:	4b8e      	ldr	r3, [pc, #568]	; (d03c409c <ui_draw_dialog+0x568>)
d03c3e62:	781b      	ldrb	r3, [r3, #0]
d03c3e64:	07db      	lsls	r3, r3, #31
d03c3e66:	f140 80dd 	bpl.w	d03c4024 <ui_draw_dialog+0x4f0>
d03c3e6a:	4b8d      	ldr	r3, [pc, #564]	; (d03c40a0 <ui_draw_dialog+0x56c>)
d03c3e6c:	f9b3 2000 	ldrsh.w	r2, [r3]
d03c3e70:	4b8c      	ldr	r3, [pc, #560]	; (d03c40a4 <ui_draw_dialog+0x570>)
d03c3e72:	881b      	ldrh	r3, [r3, #0]
d03c3e74:	3b0e      	subs	r3, #14
d03c3e76:	b29b      	uxth	r3, r3
d03c3e78:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d03c3e7c:	f080 80d2 	bcs.w	d03c4024 <ui_draw_dialog+0x4f0>
d03c3e80:	4592      	cmp	sl, r2
d03c3e82:	f300 80cf 	bgt.w	d03c4024 <ui_draw_dialog+0x4f0>
d03c3e86:	017b      	lsls	r3, r7, #5
d03c3e88:	334e      	adds	r3, #78	; 0x4e
d03c3e8a:	429a      	cmp	r2, r3
d03c3e8c:	f280 80ca 	bge.w	d03c4024 <ui_draw_dialog+0x4f0>
d03c3e90:	9b05      	ldr	r3, [sp, #20]
d03c3e92:	f04f 0801 	mov.w	r8, #1
d03c3e96:	f04f 09e4 	mov.w	r9, #228	; 0xe4
d03c3e9a:	429d      	cmp	r5, r3
d03c3e9c:	bf0c      	ite	eq
d03c3e9e:	23e8      	moveq	r3, #232	; 0xe8
d03c3ea0:	23e7      	movne	r3, #231	; 0xe7
d03c3ea2:	f04f 0e00 	mov.w	lr, #0
d03c3ea6:	9307      	str	r3, [sp, #28]
d03c3ea8:	2320      	movs	r3, #32
d03c3eaa:	4652      	mov	r2, sl
d03c3eac:	210e      	movs	r1, #14
d03c3eae:	e9cd 3e00 	strd	r3, lr, [sp]
d03c3eb2:	f44f 73c8 	mov.w	r3, #400	; 0x190
d03c3eb6:	f7fc ff3b 	bl	d03c0d30 <ui_button_register>
d03c3eba:	f8cd 9004 	str.w	r9, [sp, #4]
d03c3ebe:	f04f 09e1 	mov.w	r9, #225	; 0xe1
d03c3ec2:	2320      	movs	r3, #32
d03c3ec4:	f44f 72c8 	mov.w	r2, #400	; 0x190
d03c3ec8:	4651      	mov	r1, sl
d03c3eca:	200e      	movs	r0, #14
d03c3ecc:	f8cd 9000 	str.w	r9, [sp]
d03c3ed0:	f7fc feda 	bl	d03c0c88 <ui_box>
d03c3ed4:	4a74      	ldr	r2, [pc, #464]	; (d03c40a8 <ui_draw_dialog+0x574>)
d03c3ed6:	7b13      	ldrb	r3, [r2, #12]
d03c3ed8:	7b51      	ldrb	r1, [r2, #13]
d03c3eda:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c3ede:	7b91      	ldrb	r1, [r2, #14]
d03c3ee0:	7bd2      	ldrb	r2, [r2, #15]
d03c3ee2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c3ee6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3eea:	685b      	ldr	r3, [r3, #4]
d03c3eec:	68db      	ldr	r3, [r3, #12]
d03c3eee:	f1b8 0f00 	cmp.w	r8, #0
d03c3ef2:	f040 80a3 	bne.w	d03c403c <ui_draw_dialog+0x508>
d03c3ef6:	9a05      	ldr	r2, [sp, #20]
d03c3ef8:	4295      	cmp	r5, r2
d03c3efa:	bf0c      	ite	eq
d03c3efc:	20e6      	moveq	r0, #230	; 0xe6
d03c3efe:	20e7      	movne	r0, #231	; 0xe7
d03c3f00:	4798      	blx	r3
d03c3f02:	7b23      	ldrb	r3, [r4, #12]
d03c3f04:	7b62      	ldrb	r2, [r4, #13]
d03c3f06:	f1a6 051c 	sub.w	r5, r6, #28
d03c3f0a:	200f      	movs	r0, #15
d03c3f0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f10:	7ba2      	ldrb	r2, [r4, #14]
d03c3f12:	b22d      	sxth	r5, r5
d03c3f14:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f18:	7be2      	ldrb	r2, [r4, #15]
d03c3f1a:	4629      	mov	r1, r5
d03c3f1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f20:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c3f24:	685b      	ldr	r3, [r3, #4]
d03c3f26:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3f2a:	2302      	movs	r3, #2
d03c3f2c:	47c8      	blx	r9
d03c3f2e:	7b23      	ldrb	r3, [r4, #12]
d03c3f30:	7b62      	ldrb	r2, [r4, #13]
d03c3f32:	200f      	movs	r0, #15
d03c3f34:	4629      	mov	r1, r5
d03c3f36:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f3a:	7ba2      	ldrb	r2, [r4, #14]
d03c3f3c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f40:	7be2      	ldrb	r2, [r4, #15]
d03c3f42:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f46:	2202      	movs	r2, #2
d03c3f48:	685b      	ldr	r3, [r3, #4]
d03c3f4a:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3f4e:	231e      	movs	r3, #30
d03c3f50:	47c8      	blx	r9
d03c3f52:	7b23      	ldrb	r3, [r4, #12]
d03c3f54:	7b62      	ldrb	r2, [r4, #13]
d03c3f56:	f1b8 0f00 	cmp.w	r8, #0
d03c3f5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f5e:	7ba2      	ldrb	r2, [r4, #14]
d03c3f60:	bf14      	ite	ne
d03c3f62:	20e7      	movne	r0, #231	; 0xe7
d03c3f64:	20e1      	moveq	r0, #225	; 0xe1
d03c3f66:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f6a:	7be2      	ldrb	r2, [r4, #15]
d03c3f6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f70:	685b      	ldr	r3, [r3, #4]
d03c3f72:	68db      	ldr	r3, [r3, #12]
d03c3f74:	4798      	blx	r3
d03c3f76:	7b23      	ldrb	r3, [r4, #12]
d03c3f78:	7b62      	ldrb	r2, [r4, #13]
d03c3f7a:	b231      	sxth	r1, r6
d03c3f7c:	200f      	movs	r0, #15
d03c3f7e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3f82:	7ba2      	ldrb	r2, [r4, #14]
d03c3f84:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3f88:	7be2      	ldrb	r2, [r4, #15]
d03c3f8a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3f8e:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c3f92:	685b      	ldr	r3, [r3, #4]
d03c3f94:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3f98:	2302      	movs	r3, #2
d03c3f9a:	47c8      	blx	r9
d03c3f9c:	7b23      	ldrb	r3, [r4, #12]
d03c3f9e:	7b62      	ldrb	r2, [r4, #13]
d03c3fa0:	4629      	mov	r1, r5
d03c3fa2:	f240 109b 	movw	r0, #411	; 0x19b
d03c3fa6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3faa:	7ba2      	ldrb	r2, [r4, #14]
d03c3fac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3fb0:	7be2      	ldrb	r2, [r4, #15]
d03c3fb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3fb6:	2202      	movs	r2, #2
d03c3fb8:	685b      	ldr	r3, [r3, #4]
d03c3fba:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c3fbe:	231e      	movs	r3, #30
d03c3fc0:	47c8      	blx	r9
d03c3fc2:	f1b8 0f00 	cmp.w	r8, #0
d03c3fc6:	d13b      	bne.n	d03c4040 <ui_draw_dialog+0x50c>
d03c3fc8:	f1a6 0515 	sub.w	r5, r6, #21
d03c3fcc:	7b23      	ldrb	r3, [r4, #12]
d03c3fce:	b2ad      	uxth	r5, r5
d03c3fd0:	7b62      	ldrb	r2, [r4, #13]
d03c3fd2:	3701      	adds	r7, #1
d03c3fd4:	9807      	ldr	r0, [sp, #28]
d03c3fd6:	3620      	adds	r6, #32
d03c3fd8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3fdc:	7ba2      	ldrb	r2, [r4, #14]
d03c3fde:	b2b6      	uxth	r6, r6
d03c3fe0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c3fe4:	7be2      	ldrb	r2, [r4, #15]
d03c3fe6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c3fea:	685b      	ldr	r3, [r3, #4]
d03c3fec:	68db      	ldr	r3, [r3, #12]
d03c3fee:	4798      	blx	r3
d03c3ff0:	7b23      	ldrb	r3, [r4, #12]
d03c3ff2:	7b62      	ldrb	r2, [r4, #13]
d03c3ff4:	4629      	mov	r1, r5
d03c3ff6:	f108 0016 	add.w	r0, r8, #22
d03c3ffa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c3ffe:	7ba2      	ldrb	r2, [r4, #14]
d03c4000:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4004:	7be2      	ldrb	r2, [r4, #15]
d03c4006:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c400a:	aa08      	add	r2, sp, #32
d03c400c:	685b      	ldr	r3, [r3, #4]
d03c400e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4010:	4798      	blx	r3
d03c4012:	2f07      	cmp	r7, #7
d03c4014:	f47f af04 	bne.w	d03c3e20 <ui_draw_dialog+0x2ec>
d03c4018:	e634      	b.n	d03c3c84 <ui_draw_dialog+0x150>
d03c401a:	2a04      	cmp	r2, #4
d03c401c:	bf0c      	ite	eq
d03c401e:	4a23      	ldreq	r2, [pc, #140]	; (d03c40ac <ui_draw_dialog+0x578>)
d03c4020:	4a23      	ldrne	r2, [pc, #140]	; (d03c40b0 <ui_draw_dialog+0x57c>)
d03c4022:	e70f      	b.n	d03c3e44 <ui_draw_dialog+0x310>
d03c4024:	9b05      	ldr	r3, [sp, #20]
d03c4026:	f04f 0800 	mov.w	r8, #0
d03c402a:	429d      	cmp	r5, r3
d03c402c:	bf15      	itete	ne
d03c402e:	f04f 09e3 	movne.w	r9, #227	; 0xe3
d03c4032:	f04f 09e5 	moveq.w	r9, #229	; 0xe5
d03c4036:	23e7      	movne	r3, #231	; 0xe7
d03c4038:	23e8      	moveq	r3, #232	; 0xe8
d03c403a:	e732      	b.n	d03c3ea2 <ui_draw_dialog+0x36e>
d03c403c:	4648      	mov	r0, r9
d03c403e:	e75f      	b.n	d03c3f00 <ui_draw_dialog+0x3cc>
d03c4040:	f1a6 0514 	sub.w	r5, r6, #20
d03c4044:	e7c2      	b.n	d03c3fcc <ui_draw_dialog+0x498>
d03c4046:	f89b 2000 	ldrb.w	r2, [fp]
d03c404a:	f44f 63c4 	mov.w	r3, #1568	; 0x620
d03c404e:	fbb3 f3f2 	udiv	r3, r3, r2
d03c4052:	7b22      	ldrb	r2, [r4, #12]
d03c4054:	2b10      	cmp	r3, #16
d03c4056:	7b61      	ldrb	r1, [r4, #13]
d03c4058:	bfb8      	it	lt
d03c405a:	2310      	movlt	r3, #16
d03c405c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d03c4060:	7ba1      	ldrb	r1, [r4, #14]
d03c4062:	f1c3 00e0 	rsb	r0, r3, #224	; 0xe0
d03c4066:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d03c406a:	7be1      	ldrb	r1, [r4, #15]
d03c406c:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d03c4070:	4905      	ldr	r1, [pc, #20]	; (d03c4088 <ui_draw_dialog+0x554>)
d03c4072:	7809      	ldrb	r1, [r1, #0]
d03c4074:	6852      	ldr	r2, [r2, #4]
d03c4076:	4341      	muls	r1, r0
d03c4078:	9806      	ldr	r0, [sp, #24]
d03c407a:	6854      	ldr	r4, [r2, #4]
d03c407c:	2208      	movs	r2, #8
d03c407e:	fb91 f1f0 	sdiv	r1, r1, r0
d03c4082:	312e      	adds	r1, #46	; 0x2e
d03c4084:	b209      	sxth	r1, r1
d03c4086:	e63e      	b.n	d03c3d06 <ui_draw_dialog+0x1d2>
d03c4088:	d03ce319 	.word	0xd03ce319
d03c408c:	d03cdad9 	.word	0xd03cdad9
d03c4090:	d03cdb19 	.word	0xd03cdb19
d03c4094:	d03cb6ef 	.word	0xd03cb6ef
d03c4098:	d03ce31a 	.word	0xd03ce31a
d03c409c:	d03ce31b 	.word	0xd03ce31b
d03c40a0:	d03cf396 	.word	0xd03cf396
d03c40a4:	d03cf394 	.word	0xd03cf394
d03c40a8:	2001f000 	.word	0x2001f000
d03c40ac:	d03cb6f8 	.word	0xd03cb6f8
d03c40b0:	d03cb9a4 	.word	0xd03cb9a4
d03c40b4:	2500      	movs	r5, #0
d03c40b6:	231f      	movs	r3, #31
d03c40b8:	271a      	movs	r7, #26
d03c40ba:	4cb5      	ldr	r4, [pc, #724]	; (d03c4390 <ui_draw_dialog+0x85c>)
d03c40bc:	4629      	mov	r1, r5
d03c40be:	4628      	mov	r0, r5
d03c40c0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c40c4:	9301      	str	r3, [sp, #4]
d03c40c6:	9700      	str	r7, [sp, #0]
d03c40c8:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c40cc:	f8ad 5020 	strh.w	r5, [sp, #32]
d03c40d0:	f7fc fdda 	bl	d03c0c88 <ui_box>
d03c40d4:	7b23      	ldrb	r3, [r4, #12]
d03c40d6:	2014      	movs	r0, #20
d03c40d8:	7b62      	ldrb	r2, [r4, #13]
d03c40da:	f04f 0901 	mov.w	r9, #1
d03c40de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c40e2:	7ba2      	ldrb	r2, [r4, #14]
d03c40e4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c40e8:	7be2      	ldrb	r2, [r4, #15]
d03c40ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c40ee:	685b      	ldr	r3, [r3, #4]
d03c40f0:	68db      	ldr	r3, [r3, #12]
d03c40f2:	4798      	blx	r3
d03c40f4:	7b23      	ldrb	r3, [r4, #12]
d03c40f6:	7b62      	ldrb	r2, [r4, #13]
d03c40f8:	2101      	movs	r1, #1
d03c40fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c40fe:	7ba2      	ldrb	r2, [r4, #14]
d03c4100:	4608      	mov	r0, r1
d03c4102:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4106:	7be2      	ldrb	r2, [r4, #15]
d03c4108:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c410c:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d03c4110:	685b      	ldr	r3, [r3, #4]
d03c4112:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4116:	231c      	movs	r3, #28
d03c4118:	47c0      	blx	r8
d03c411a:	7b23      	ldrb	r3, [r4, #12]
d03c411c:	7b62      	ldrb	r2, [r4, #13]
d03c411e:	201e      	movs	r0, #30
d03c4120:	f04f 0822 	mov.w	r8, #34	; 0x22
d03c4124:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4128:	7ba2      	ldrb	r2, [r4, #14]
d03c412a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c412e:	7be2      	ldrb	r2, [r4, #15]
d03c4130:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4134:	685b      	ldr	r3, [r3, #4]
d03c4136:	68db      	ldr	r3, [r3, #12]
d03c4138:	4798      	blx	r3
d03c413a:	7b23      	ldrb	r3, [r4, #12]
d03c413c:	7b62      	ldrb	r2, [r4, #13]
d03c413e:	2107      	movs	r1, #7
d03c4140:	2010      	movs	r0, #16
d03c4142:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4146:	7ba2      	ldrb	r2, [r4, #14]
d03c4148:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c414c:	7be2      	ldrb	r2, [r4, #15]
d03c414e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4152:	4a90      	ldr	r2, [pc, #576]	; (d03c4394 <ui_draw_dialog+0x860>)
d03c4154:	685b      	ldr	r3, [r3, #4]
d03c4156:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4158:	4798      	blx	r3
d03c415a:	4b8f      	ldr	r3, [pc, #572]	; (d03c4398 <ui_draw_dialog+0x864>)
d03c415c:	2224      	movs	r2, #36	; 0x24
d03c415e:	2114      	movs	r1, #20
d03c4160:	2033      	movs	r0, #51	; 0x33
d03c4162:	9502      	str	r5, [sp, #8]
d03c4164:	9301      	str	r3, [sp, #4]
d03c4166:	2330      	movs	r3, #48	; 0x30
d03c4168:	f8cd 900c 	str.w	r9, [sp, #12]
d03c416c:	f8cd 8000 	str.w	r8, [sp]
d03c4170:	f7ff f9a6 	bl	d03c34c0 <ui_create_button>
d03c4174:	2311      	movs	r3, #17
d03c4176:	f44f 72a6 	mov.w	r2, #332	; 0x14c
d03c417a:	2124      	movs	r1, #36	; 0x24
d03c417c:	204a      	movs	r0, #74	; 0x4a
d03c417e:	9301      	str	r3, [sp, #4]
d03c4180:	9700      	str	r7, [sp, #0]
d03c4182:	4643      	mov	r3, r8
d03c4184:	f7fc fd80 	bl	d03c0c88 <ui_box>
d03c4188:	4b84      	ldr	r3, [pc, #528]	; (d03c439c <ui_draw_dialog+0x868>)
d03c418a:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03c418e:	2224      	movs	r2, #36	; 0x24
d03c4190:	2034      	movs	r0, #52	; 0x34
d03c4192:	9502      	str	r5, [sp, #8]
d03c4194:	9301      	str	r3, [sp, #4]
d03c4196:	2330      	movs	r3, #48	; 0x30
d03c4198:	f8cd 900c 	str.w	r9, [sp, #12]
d03c419c:	f8cd 8000 	str.w	r8, [sp]
d03c41a0:	f7ff f98e 	bl	d03c34c0 <ui_create_button>
d03c41a4:	7b23      	ldrb	r3, [r4, #12]
d03c41a6:	7b62      	ldrb	r2, [r4, #13]
d03c41a8:	201e      	movs	r0, #30
d03c41aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c41ae:	7ba2      	ldrb	r2, [r4, #14]
d03c41b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c41b4:	7be2      	ldrb	r2, [r4, #15]
d03c41b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c41ba:	685b      	ldr	r3, [r3, #4]
d03c41bc:	68db      	ldr	r3, [r3, #12]
d03c41be:	4798      	blx	r3
d03c41c0:	7b23      	ldrb	r3, [r4, #12]
d03c41c2:	7b62      	ldrb	r2, [r4, #13]
d03c41c4:	2054      	movs	r0, #84	; 0x54
d03c41c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c41ca:	7ba2      	ldrb	r2, [r4, #14]
d03c41cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c41d0:	7be2      	ldrb	r2, [r4, #15]
d03c41d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c41d6:	4a72      	ldr	r2, [pc, #456]	; (d03c43a0 <ui_draw_dialog+0x86c>)
d03c41d8:	685b      	ldr	r3, [r3, #4]
d03c41da:	6add      	ldr	r5, [r3, #44]	; 0x2c
d03c41dc:	4b71      	ldr	r3, [pc, #452]	; (d03c43a4 <ui_draw_dialog+0x870>)
d03c41de:	7819      	ldrb	r1, [r3, #0]
d03c41e0:	2900      	cmp	r1, #0
d03c41e2:	bf18      	it	ne
d03c41e4:	461a      	movne	r2, r3
d03c41e6:	212d      	movs	r1, #45	; 0x2d
d03c41e8:	47a8      	blx	r5
d03c41ea:	4b6f      	ldr	r3, [pc, #444]	; (d03c43a8 <ui_draw_dialog+0x874>)
d03c41ec:	781b      	ldrb	r3, [r3, #0]
d03c41ee:	2b00      	cmp	r3, #0
d03c41f0:	d05d      	beq.n	d03c42ae <ui_draw_dialog+0x77a>
d03c41f2:	4b6e      	ldr	r3, [pc, #440]	; (d03c43ac <ui_draw_dialog+0x878>)
d03c41f4:	200d      	movs	r0, #13
d03c41f6:	781d      	ldrb	r5, [r3, #0]
d03c41f8:	7b23      	ldrb	r3, [r4, #12]
d03c41fa:	7b62      	ldrb	r2, [r4, #13]
d03c41fc:	00ed      	lsls	r5, r5, #3
d03c41fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4202:	7ba2      	ldrb	r2, [r4, #14]
d03c4204:	3554      	adds	r5, #84	; 0x54
d03c4206:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c420a:	7be2      	ldrb	r2, [r4, #15]
d03c420c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4210:	685b      	ldr	r3, [r3, #4]
d03c4212:	68db      	ldr	r3, [r3, #12]
d03c4214:	4798      	blx	r3
d03c4216:	7b23      	ldrb	r3, [r4, #12]
d03c4218:	7b62      	ldrb	r2, [r4, #13]
d03c421a:	f5b5 7fc4 	cmp.w	r5, #392	; 0x188
d03c421e:	f04f 012b 	mov.w	r1, #43	; 0x2b
d03c4222:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4226:	7ba2      	ldrb	r2, [r4, #14]
d03c4228:	bfa8      	it	ge
d03c422a:	f44f 75c4 	movge.w	r5, #392	; 0x188
d03c422e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4232:	7be2      	ldrb	r2, [r4, #15]
d03c4234:	1e68      	subs	r0, r5, #1
d03c4236:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c423a:	220a      	movs	r2, #10
d03c423c:	b200      	sxth	r0, r0
d03c423e:	685b      	ldr	r3, [r3, #4]
d03c4240:	9005      	str	r0, [sp, #20]
d03c4242:	685f      	ldr	r7, [r3, #4]
d03c4244:	4633      	mov	r3, r6
d03c4246:	47b8      	blx	r7
d03c4248:	7b23      	ldrb	r3, [r4, #12]
d03c424a:	7b62      	ldrb	r2, [r4, #13]
d03c424c:	213b      	movs	r1, #59	; 0x3b
d03c424e:	9805      	ldr	r0, [sp, #20]
d03c4250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4254:	7ba2      	ldrb	r2, [r4, #14]
d03c4256:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c425a:	7be2      	ldrb	r2, [r4, #15]
d03c425c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4260:	220a      	movs	r2, #10
d03c4262:	685b      	ldr	r3, [r3, #4]
d03c4264:	685f      	ldr	r7, [r3, #4]
d03c4266:	4633      	mov	r3, r6
d03c4268:	47b8      	blx	r7
d03c426a:	7b23      	ldrb	r3, [r4, #12]
d03c426c:	7b62      	ldrb	r2, [r4, #13]
d03c426e:	212b      	movs	r1, #43	; 0x2b
d03c4270:	9805      	ldr	r0, [sp, #20]
d03c4272:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4276:	7ba2      	ldrb	r2, [r4, #14]
d03c4278:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c427c:	7be2      	ldrb	r2, [r4, #15]
d03c427e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4282:	4632      	mov	r2, r6
d03c4284:	685b      	ldr	r3, [r3, #4]
d03c4286:	685f      	ldr	r7, [r3, #4]
d03c4288:	2312      	movs	r3, #18
d03c428a:	47b8      	blx	r7
d03c428c:	7b23      	ldrb	r3, [r4, #12]
d03c428e:	7b62      	ldrb	r2, [r4, #13]
d03c4290:	212b      	movs	r1, #43	; 0x2b
d03c4292:	1de8      	adds	r0, r5, #7
d03c4294:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4298:	7ba2      	ldrb	r2, [r4, #14]
d03c429a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c429e:	7be2      	ldrb	r2, [r4, #15]
d03c42a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c42a4:	4632      	mov	r2, r6
d03c42a6:	685b      	ldr	r3, [r3, #4]
d03c42a8:	685c      	ldr	r4, [r3, #4]
d03c42aa:	2312      	movs	r3, #18
d03c42ac:	47a0      	blx	r4
d03c42ae:	f04f 0800 	mov.w	r8, #0
d03c42b2:	4f3f      	ldr	r7, [pc, #252]	; (d03c43b0 <ui_draw_dialog+0x87c>)
d03c42b4:	2454      	movs	r4, #84	; 0x54
d03c42b6:	46c1      	mov	r9, r8
d03c42b8:	4638      	mov	r0, r7
d03c42ba:	46ba      	mov	sl, r7
d03c42bc:	f005 fec8 	bl	d03ca050 <strlen>
d03c42c0:	2600      	movs	r6, #0
d03c42c2:	b2c5      	uxtb	r5, r0
d03c42c4:	f04f 0b20 	mov.w	fp, #32
d03c42c8:	b222      	sxth	r2, r4
d03c42ca:	b2f3      	uxtb	r3, r6
d03c42cc:	fa58 f086 	uxtab	r0, r8, r6
d03c42d0:	42ab      	cmp	r3, r5
d03c42d2:	b2c0      	uxtb	r0, r0
d03c42d4:	d37d      	bcc.n	d03c43d2 <ui_draw_dialog+0x89e>
d03c42d6:	3424      	adds	r4, #36	; 0x24
d03c42d8:	44a8      	add	r8, r5
d03c42da:	370b      	adds	r7, #11
d03c42dc:	b2a4      	uxth	r4, r4
d03c42de:	fa5f f888 	uxtb.w	r8, r8
d03c42e2:	2ce4      	cmp	r4, #228	; 0xe4
d03c42e4:	d1e8      	bne.n	d03c42b8 <ui_draw_dialog+0x784>
d03c42e6:	2301      	movs	r3, #1
d03c42e8:	2400      	movs	r4, #0
d03c42ea:	2520      	movs	r5, #32
d03c42ec:	22c0      	movs	r2, #192	; 0xc0
d03c42ee:	9303      	str	r3, [sp, #12]
d03c42f0:	f44f 71d8 	mov.w	r1, #432	; 0x1b0
d03c42f4:	4b2f      	ldr	r3, [pc, #188]	; (d03c43b4 <ui_draw_dialog+0x880>)
d03c42f6:	2032      	movs	r0, #50	; 0x32
d03c42f8:	9402      	str	r4, [sp, #8]
d03c42fa:	9301      	str	r3, [sp, #4]
d03c42fc:	2330      	movs	r3, #48	; 0x30
d03c42fe:	9500      	str	r5, [sp, #0]
d03c4300:	f7ff f8de 	bl	d03c34c0 <ui_create_button>
d03c4304:	4b2c      	ldr	r3, [pc, #176]	; (d03c43b8 <ui_draw_dialog+0x884>)
d03c4306:	22e8      	movs	r2, #232	; 0xe8
d03c4308:	210c      	movs	r1, #12
d03c430a:	2036      	movs	r0, #54	; 0x36
d03c430c:	9301      	str	r3, [sp, #4]
d03c430e:	9403      	str	r4, [sp, #12]
d03c4310:	236a      	movs	r3, #106	; 0x6a
d03c4312:	9402      	str	r4, [sp, #8]
d03c4314:	9500      	str	r5, [sp, #0]
d03c4316:	f7ff f8d3 	bl	d03c34c0 <ui_create_button>
d03c431a:	4b28      	ldr	r3, [pc, #160]	; (d03c43bc <ui_draw_dialog+0x888>)
d03c431c:	22e8      	movs	r2, #232	; 0xe8
d03c431e:	2180      	movs	r1, #128	; 0x80
d03c4320:	2037      	movs	r0, #55	; 0x37
d03c4322:	9301      	str	r3, [sp, #4]
d03c4324:	9403      	str	r4, [sp, #12]
d03c4326:	236a      	movs	r3, #106	; 0x6a
d03c4328:	9402      	str	r4, [sp, #8]
d03c432a:	9500      	str	r5, [sp, #0]
d03c432c:	f7ff f8c8 	bl	d03c34c0 <ui_create_button>
d03c4330:	4b23      	ldr	r3, [pc, #140]	; (d03c43c0 <ui_draw_dialog+0x88c>)
d03c4332:	22e8      	movs	r2, #232	; 0xe8
d03c4334:	21f4      	movs	r1, #244	; 0xf4
d03c4336:	2038      	movs	r0, #56	; 0x38
d03c4338:	9301      	str	r3, [sp, #4]
d03c433a:	9403      	str	r4, [sp, #12]
d03c433c:	2370      	movs	r3, #112	; 0x70
d03c433e:	9402      	str	r4, [sp, #8]
d03c4340:	9500      	str	r5, [sp, #0]
d03c4342:	f7ff f8bd 	bl	d03c34c0 <ui_create_button>
d03c4346:	4b1f      	ldr	r3, [pc, #124]	; (d03c43c4 <ui_draw_dialog+0x890>)
d03c4348:	22e8      	movs	r2, #232	; 0xe8
d03c434a:	f44f 71b7 	mov.w	r1, #366	; 0x16e
d03c434e:	2039      	movs	r0, #57	; 0x39
d03c4350:	9301      	str	r3, [sp, #4]
d03c4352:	9403      	str	r4, [sp, #12]
d03c4354:	235e      	movs	r3, #94	; 0x5e
d03c4356:	9402      	str	r4, [sp, #8]
d03c4358:	9500      	str	r5, [sp, #0]
d03c435a:	f7ff f8b1 	bl	d03c34c0 <ui_create_button>
d03c435e:	4b1a      	ldr	r3, [pc, #104]	; (d03c43c8 <ui_draw_dialog+0x894>)
d03c4360:	f44f 728b 	mov.w	r2, #278	; 0x116
d03c4364:	210c      	movs	r1, #12
d03c4366:	2035      	movs	r0, #53	; 0x35
d03c4368:	9301      	str	r3, [sp, #4]
d03c436a:	9403      	str	r4, [sp, #12]
d03c436c:	234e      	movs	r3, #78	; 0x4e
d03c436e:	9402      	str	r4, [sp, #8]
d03c4370:	9500      	str	r5, [sp, #0]
d03c4372:	f7ff f8a5 	bl	d03c34c0 <ui_create_button>
d03c4376:	4b15      	ldr	r3, [pc, #84]	; (d03c43cc <ui_draw_dialog+0x898>)
d03c4378:	f44f 728b 	mov.w	r2, #278	; 0x116
d03c437c:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c4380:	9301      	str	r3, [sp, #4]
d03c4382:	203a      	movs	r0, #58	; 0x3a
d03c4384:	2364      	movs	r3, #100	; 0x64
d03c4386:	9403      	str	r4, [sp, #12]
d03c4388:	9402      	str	r4, [sp, #8]
d03c438a:	9500      	str	r5, [sp, #0]
d03c438c:	e020      	b.n	d03c43d0 <ui_draw_dialog+0x89c>
d03c438e:	bf00      	nop
d03c4390:	2001f000 	.word	0x2001f000
d03c4394:	d03cb713 	.word	0xd03cb713
d03c4398:	d03cb726 	.word	0xd03cb726
d03c439c:	d03cb728 	.word	0xd03cb728
d03c43a0:	d03cb6c8 	.word	0xd03cb6c8
d03c43a4:	d03cf3aa 	.word	0xd03cf3aa
d03c43a8:	d03cf58a 	.word	0xd03cf58a
d03c43ac:	d03cf3a8 	.word	0xd03cf3a8
d03c43b0:	d03cc598 	.word	0xd03cc598
d03c43b4:	d03cc0de 	.word	0xd03cc0de
d03c43b8:	d03cb72a 	.word	0xd03cb72a
d03c43bc:	d03cb733 	.word	0xd03cb733
d03c43c0:	d03cb73c 	.word	0xd03cb73c
d03c43c4:	d03cb70f 	.word	0xd03cb70f
d03c43c8:	d03cb644 	.word	0xd03cb644
d03c43cc:	d03cb6c1 	.word	0xd03cb6c1
d03c43d0:	e500      	b.n	d03c3dd4 <ui_draw_dialog+0x2a0>
d03c43d2:	f81a 3b01 	ldrb.w	r3, [sl], #1
d03c43d6:	eb06 0146 	add.w	r1, r6, r6, lsl #1
d03c43da:	30dc      	adds	r0, #220	; 0xdc
d03c43dc:	f8cd 900c 	str.w	r9, [sp, #12]
d03c43e0:	f88d 3020 	strb.w	r3, [sp, #32]
d03c43e4:	0109      	lsls	r1, r1, #4
d03c43e6:	ab08      	add	r3, sp, #32
d03c43e8:	f8cd 9008 	str.w	r9, [sp, #8]
d03c43ec:	b209      	sxth	r1, r1
d03c43ee:	f8cd b000 	str.w	fp, [sp]
d03c43f2:	9301      	str	r3, [sp, #4]
d03c43f4:	2330      	movs	r3, #48	; 0x30
d03c43f6:	9205      	str	r2, [sp, #20]
d03c43f8:	3601      	adds	r6, #1
d03c43fa:	f7ff f861 	bl	d03c34c0 <ui_create_button>
d03c43fe:	9a05      	ldr	r2, [sp, #20]
d03c4400:	e763      	b.n	d03c42ca <ui_draw_dialog+0x796>
d03c4402:	212f      	movs	r1, #47	; 0x2f
d03c4404:	4853      	ldr	r0, [pc, #332]	; (d03c4554 <ui_draw_dialog+0xa20>)
d03c4406:	f005 fe2b 	bl	d03ca060 <strrchr>
d03c440a:	2800      	cmp	r0, #0
d03c440c:	f000 809f 	beq.w	d03c454e <ui_draw_dialog+0xa1a>
d03c4410:	1c45      	adds	r5, r0, #1
d03c4412:	211a      	movs	r1, #26
d03c4414:	231f      	movs	r3, #31
d03c4416:	4c50      	ldr	r4, [pc, #320]	; (d03c4558 <ui_draw_dialog+0xa24>)
d03c4418:	f44f 72a8 	mov.w	r2, #336	; 0x150
d03c441c:	2048      	movs	r0, #72	; 0x48
d03c441e:	e9cd 1300 	strd	r1, r3, [sp]
d03c4422:	2162      	movs	r1, #98	; 0x62
d03c4424:	2382      	movs	r3, #130	; 0x82
d03c4426:	f7fc fc2f 	bl	d03c0c88 <ui_box>
d03c442a:	7b23      	ldrb	r3, [r4, #12]
d03c442c:	7b62      	ldrb	r2, [r4, #13]
d03c442e:	2014      	movs	r0, #20
d03c4430:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4434:	7ba2      	ldrb	r2, [r4, #14]
d03c4436:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c443a:	7be2      	ldrb	r2, [r4, #15]
d03c443c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4440:	685b      	ldr	r3, [r3, #4]
d03c4442:	68db      	ldr	r3, [r3, #12]
d03c4444:	4798      	blx	r3
d03c4446:	7b23      	ldrb	r3, [r4, #12]
d03c4448:	7b62      	ldrb	r2, [r4, #13]
d03c444a:	2163      	movs	r1, #99	; 0x63
d03c444c:	2049      	movs	r0, #73	; 0x49
d03c444e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4452:	7ba2      	ldrb	r2, [r4, #14]
d03c4454:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4458:	7be2      	ldrb	r2, [r4, #15]
d03c445a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c445e:	f44f 72a7 	mov.w	r2, #334	; 0x14e
d03c4462:	685b      	ldr	r3, [r3, #4]
d03c4464:	685e      	ldr	r6, [r3, #4]
d03c4466:	2318      	movs	r3, #24
d03c4468:	47b0      	blx	r6
d03c446a:	7b23      	ldrb	r3, [r4, #12]
d03c446c:	7b62      	ldrb	r2, [r4, #13]
d03c446e:	201e      	movs	r0, #30
d03c4470:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4474:	7ba2      	ldrb	r2, [r4, #14]
d03c4476:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c447a:	7be2      	ldrb	r2, [r4, #15]
d03c447c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4480:	685b      	ldr	r3, [r3, #4]
d03c4482:	68db      	ldr	r3, [r3, #12]
d03c4484:	4798      	blx	r3
d03c4486:	7b23      	ldrb	r3, [r4, #12]
d03c4488:	7b62      	ldrb	r2, [r4, #13]
d03c448a:	2167      	movs	r1, #103	; 0x67
d03c448c:	2058      	movs	r0, #88	; 0x58
d03c448e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4492:	7ba2      	ldrb	r2, [r4, #14]
d03c4494:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4498:	7be2      	ldrb	r2, [r4, #15]
d03c449a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c449e:	4a2f      	ldr	r2, [pc, #188]	; (d03c455c <ui_draw_dialog+0xa28>)
d03c44a0:	685b      	ldr	r3, [r3, #4]
d03c44a2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c44a4:	4798      	blx	r3
d03c44a6:	7b23      	ldrb	r3, [r4, #12]
d03c44a8:	7b62      	ldrb	r2, [r4, #13]
d03c44aa:	2019      	movs	r0, #25
d03c44ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44b0:	7ba2      	ldrb	r2, [r4, #14]
d03c44b2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44b6:	7be2      	ldrb	r2, [r4, #15]
d03c44b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44bc:	685b      	ldr	r3, [r3, #4]
d03c44be:	68db      	ldr	r3, [r3, #12]
d03c44c0:	4798      	blx	r3
d03c44c2:	7b23      	ldrb	r3, [r4, #12]
d03c44c4:	7b62      	ldrb	r2, [r4, #13]
d03c44c6:	2188      	movs	r1, #136	; 0x88
d03c44c8:	205c      	movs	r0, #92	; 0x5c
d03c44ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44ce:	7ba2      	ldrb	r2, [r4, #14]
d03c44d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44d4:	7be2      	ldrb	r2, [r4, #15]
d03c44d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44da:	4a21      	ldr	r2, [pc, #132]	; (d03c4560 <ui_draw_dialog+0xa2c>)
d03c44dc:	685b      	ldr	r3, [r3, #4]
d03c44de:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c44e0:	4798      	blx	r3
d03c44e2:	7b23      	ldrb	r3, [r4, #12]
d03c44e4:	7b62      	ldrb	r2, [r4, #13]
d03c44e6:	201e      	movs	r0, #30
d03c44e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c44ec:	7ba2      	ldrb	r2, [r4, #14]
d03c44ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c44f2:	7be2      	ldrb	r2, [r4, #15]
d03c44f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c44f8:	685b      	ldr	r3, [r3, #4]
d03c44fa:	68db      	ldr	r3, [r3, #12]
d03c44fc:	4798      	blx	r3
d03c44fe:	7b23      	ldrb	r3, [r4, #12]
d03c4500:	7b62      	ldrb	r2, [r4, #13]
d03c4502:	219a      	movs	r1, #154	; 0x9a
d03c4504:	205c      	movs	r0, #92	; 0x5c
d03c4506:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c450a:	7ba2      	ldrb	r2, [r4, #14]
d03c450c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4510:	7be2      	ldrb	r2, [r4, #15]
d03c4512:	2400      	movs	r4, #0
d03c4514:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4518:	462a      	mov	r2, r5
d03c451a:	2520      	movs	r5, #32
d03c451c:	685b      	ldr	r3, [r3, #4]
d03c451e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4520:	4798      	blx	r3
d03c4522:	4b10      	ldr	r3, [pc, #64]	; (d03c4564 <ui_draw_dialog+0xa30>)
d03c4524:	22b8      	movs	r2, #184	; 0xb8
d03c4526:	2178      	movs	r1, #120	; 0x78
d03c4528:	203b      	movs	r0, #59	; 0x3b
d03c452a:	9301      	str	r3, [sp, #4]
d03c452c:	9403      	str	r4, [sp, #12]
d03c452e:	235c      	movs	r3, #92	; 0x5c
d03c4530:	9402      	str	r4, [sp, #8]
d03c4532:	9500      	str	r5, [sp, #0]
d03c4534:	f7fe ffc4 	bl	d03c34c0 <ui_create_button>
d03c4538:	4b0b      	ldr	r3, [pc, #44]	; (d03c4568 <ui_draw_dialog+0xa34>)
d03c453a:	22b8      	movs	r2, #184	; 0xb8
d03c453c:	f44f 7186 	mov.w	r1, #268	; 0x10c
d03c4540:	9301      	str	r3, [sp, #4]
d03c4542:	203c      	movs	r0, #60	; 0x3c
d03c4544:	235c      	movs	r3, #92	; 0x5c
d03c4546:	9403      	str	r4, [sp, #12]
d03c4548:	9402      	str	r4, [sp, #8]
d03c454a:	9500      	str	r5, [sp, #0]
d03c454c:	e442      	b.n	d03c3dd4 <ui_draw_dialog+0x2a0>
d03c454e:	4d01      	ldr	r5, [pc, #4]	; (d03c4554 <ui_draw_dialog+0xa20>)
d03c4550:	e75f      	b.n	d03c4412 <ui_draw_dialog+0x8de>
d03c4552:	bf00      	nop
d03c4554:	d03cf331 	.word	0xd03cf331
d03c4558:	2001f000 	.word	0x2001f000
d03c455c:	d03cb746 	.word	0xd03cb746
d03c4560:	d03cb756 	.word	0xd03cb756
d03c4564:	d03cb770 	.word	0xd03cb770
d03c4568:	d03cb774 	.word	0xd03cb774

d03c456c <ui_draw_seq>:
d03c456c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c4570:	4fa3      	ldr	r7, [pc, #652]	; (d03c4800 <ui_draw_seq+0x294>)
d03c4572:	b0a1      	sub	sp, #132	; 0x84
d03c4574:	f8df a2c4 	ldr.w	sl, [pc, #708]	; d03c483c <ui_draw_seq+0x2d0>
d03c4578:	783b      	ldrb	r3, [r7, #0]
d03c457a:	4da2      	ldr	r5, [pc, #648]	; (d03c4804 <ui_draw_seq+0x298>)
d03c457c:	2b00      	cmp	r3, #0
d03c457e:	f040 8291 	bne.w	d03c4aa4 <ui_draw_seq+0x538>
d03c4582:	f89a 3000 	ldrb.w	r3, [sl]
d03c4586:	2b00      	cmp	r3, #0
d03c4588:	f040 828e 	bne.w	d03c4aa8 <ui_draw_seq+0x53c>
d03c458c:	782b      	ldrb	r3, [r5, #0]
d03c458e:	2b00      	cmp	r3, #0
d03c4590:	f040 828c 	bne.w	d03c4aac <ui_draw_seq+0x540>
d03c4594:	4b9c      	ldr	r3, [pc, #624]	; (d03c4808 <ui_draw_seq+0x29c>)
d03c4596:	4e9d      	ldr	r6, [pc, #628]	; (d03c480c <ui_draw_seq+0x2a0>)
d03c4598:	781a      	ldrb	r2, [r3, #0]
d03c459a:	4b9d      	ldr	r3, [pc, #628]	; (d03c4810 <ui_draw_seq+0x2a4>)
d03c459c:	2a00      	cmp	r2, #0
d03c459e:	bf18      	it	ne
d03c45a0:	461e      	movne	r6, r3
d03c45a2:	4c9c      	ldr	r4, [pc, #624]	; (d03c4814 <ui_draw_seq+0x2a8>)
d03c45a4:	201a      	movs	r0, #26
d03c45a6:	f8df 9298 	ldr.w	r9, [pc, #664]	; d03c4840 <ui_draw_seq+0x2d4>
d03c45aa:	7b23      	ldrb	r3, [r4, #12]
d03c45ac:	7b62      	ldrb	r2, [r4, #13]
d03c45ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c45b2:	7ba2      	ldrb	r2, [r4, #14]
d03c45b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c45b8:	7be2      	ldrb	r2, [r4, #15]
d03c45ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c45be:	685b      	ldr	r3, [r3, #4]
d03c45c0:	68db      	ldr	r3, [r3, #12]
d03c45c2:	4798      	blx	r3
d03c45c4:	7b23      	ldrb	r3, [r4, #12]
d03c45c6:	7b62      	ldrb	r2, [r4, #13]
d03c45c8:	2140      	movs	r1, #64	; 0x40
d03c45ca:	2000      	movs	r0, #0
d03c45cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c45d0:	7ba2      	ldrb	r2, [r4, #14]
d03c45d2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c45d6:	7be2      	ldrb	r2, [r4, #15]
d03c45d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c45dc:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c45e0:	685b      	ldr	r3, [r3, #4]
d03c45e2:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c45e6:	2301      	movs	r3, #1
d03c45e8:	47c0      	blx	r8
d03c45ea:	7b23      	ldrb	r3, [r4, #12]
d03c45ec:	7b62      	ldrb	r2, [r4, #13]
d03c45ee:	21fb      	movs	r1, #251	; 0xfb
d03c45f0:	2000      	movs	r0, #0
d03c45f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c45f6:	7ba2      	ldrb	r2, [r4, #14]
d03c45f8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c45fc:	7be2      	ldrb	r2, [r4, #15]
d03c45fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4602:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4606:	685b      	ldr	r3, [r3, #4]
d03c4608:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c460c:	2301      	movs	r3, #1
d03c460e:	47c0      	blx	r8
d03c4610:	783b      	ldrb	r3, [r7, #0]
d03c4612:	f8df e230 	ldr.w	lr, [pc, #560]	; d03c4844 <ui_draw_seq+0x2d8>
d03c4616:	4980      	ldr	r1, [pc, #512]	; (d03c4818 <ui_draw_seq+0x2ac>)
d03c4618:	f8df c22c 	ldr.w	ip, [pc, #556]	; d03c4848 <ui_draw_seq+0x2dc>
d03c461c:	2b00      	cmp	r3, #0
d03c461e:	f000 8247 	beq.w	d03c4ab0 <ui_draw_seq+0x544>
d03c4622:	4b7e      	ldr	r3, [pc, #504]	; (d03c481c <ui_draw_seq+0x2b0>)
d03c4624:	f89c c000 	ldrb.w	ip, [ip]
d03c4628:	f893 b000 	ldrb.w	fp, [r3]
d03c462c:	7809      	ldrb	r1, [r1, #0]
d03c462e:	4b7c      	ldr	r3, [pc, #496]	; (d03c4820 <ui_draw_seq+0x2b4>)
d03c4630:	f8df 8218 	ldr.w	r8, [pc, #536]	; d03c484c <ui_draw_seq+0x2e0>
d03c4634:	f001 0103 	and.w	r1, r1, #3
d03c4638:	f899 2000 	ldrb.w	r2, [r9]
d03c463c:	f81e 1001 	ldrb.w	r1, [lr, r1]
d03c4640:	2a00      	cmp	r2, #0
d03c4642:	bf14      	ite	ne
d03c4644:	461a      	movne	r2, r3
d03c4646:	4642      	moveq	r2, r8
d03c4648:	f1bc 0f00 	cmp.w	ip, #0
d03c464c:	bf08      	it	eq
d03c464e:	4643      	moveq	r3, r8
d03c4650:	f8df c1fc 	ldr.w	ip, [pc, #508]	; d03c4850 <ui_draw_seq+0x2e4>
d03c4654:	f8dc 0000 	ldr.w	r0, [ip]
d03c4658:	9304      	str	r3, [sp, #16]
d03c465a:	4b72      	ldr	r3, [pc, #456]	; (d03c4824 <ui_draw_seq+0x2b8>)
d03c465c:	9005      	str	r0, [sp, #20]
d03c465e:	a808      	add	r0, sp, #32
d03c4660:	9103      	str	r1, [sp, #12]
d03c4662:	2160      	movs	r1, #96	; 0x60
d03c4664:	9202      	str	r2, [sp, #8]
d03c4666:	4a70      	ldr	r2, [pc, #448]	; (d03c4828 <ui_draw_seq+0x2bc>)
d03c4668:	e9cd 6b00 	strd	r6, fp, [sp]
d03c466c:	881b      	ldrh	r3, [r3, #0]
d03c466e:	f005 fca9 	bl	d03c9fc4 <sniprintf>
d03c4672:	7b23      	ldrb	r3, [r4, #12]
d03c4674:	20e8      	movs	r0, #232	; 0xe8
d03c4676:	7b62      	ldrb	r2, [r4, #13]
d03c4678:	2600      	movs	r6, #0
d03c467a:	f04f 0820 	mov.w	r8, #32
d03c467e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4682:	7ba2      	ldrb	r2, [r4, #14]
d03c4684:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4688:	7be2      	ldrb	r2, [r4, #15]
d03c468a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c468e:	685b      	ldr	r3, [r3, #4]
d03c4690:	68db      	ldr	r3, [r3, #12]
d03c4692:	4798      	blx	r3
d03c4694:	7b23      	ldrb	r3, [r4, #12]
d03c4696:	7b62      	ldrb	r2, [r4, #13]
d03c4698:	f44f 7183 	mov.w	r1, #262	; 0x106
d03c469c:	200e      	movs	r0, #14
d03c469e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c46a2:	7ba2      	ldrb	r2, [r4, #14]
d03c46a4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c46a8:	7be2      	ldrb	r2, [r4, #15]
d03c46aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c46ae:	aa08      	add	r2, sp, #32
d03c46b0:	685b      	ldr	r3, [r3, #4]
d03c46b2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c46b4:	4798      	blx	r3
d03c46b6:	4b5d      	ldr	r3, [pc, #372]	; (d03c482c <ui_draw_seq+0x2c0>)
d03c46b8:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c46bc:	2106      	movs	r1, #6
d03c46be:	203d      	movs	r0, #61	; 0x3d
d03c46c0:	9301      	str	r3, [sp, #4]
d03c46c2:	9603      	str	r6, [sp, #12]
d03c46c4:	2324      	movs	r3, #36	; 0x24
d03c46c6:	9602      	str	r6, [sp, #8]
d03c46c8:	f8cd 8000 	str.w	r8, [sp]
d03c46cc:	f7fe fef8 	bl	d03c34c0 <ui_create_button>
d03c46d0:	782d      	ldrb	r5, [r5, #0]
d03c46d2:	f89a 3000 	ldrb.w	r3, [sl]
d03c46d6:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c46da:	212e      	movs	r1, #46	; 0x2e
d03c46dc:	203e      	movs	r0, #62	; 0x3e
d03c46de:	431d      	orrs	r5, r3
d03c46e0:	783b      	ldrb	r3, [r7, #0]
d03c46e2:	9601      	str	r6, [sp, #4]
d03c46e4:	431d      	orrs	r5, r3
d03c46e6:	f8cd 8000 	str.w	r8, [sp]
d03c46ea:	2330      	movs	r3, #48	; 0x30
d03c46ec:	f7fc fb20 	bl	d03c0d30 <ui_button_register>
d03c46f0:	4b4f      	ldr	r3, [pc, #316]	; (d03c4830 <ui_draw_seq+0x2c4>)
d03c46f2:	781b      	ldrb	r3, [r3, #0]
d03c46f4:	07db      	lsls	r3, r3, #31
d03c46f6:	f140 8200 	bpl.w	d03c4afa <ui_draw_seq+0x58e>
d03c46fa:	4a4e      	ldr	r2, [pc, #312]	; (d03c4834 <ui_draw_seq+0x2c8>)
d03c46fc:	4b4e      	ldr	r3, [pc, #312]	; (d03c4838 <ui_draw_seq+0x2cc>)
d03c46fe:	8812      	ldrh	r2, [r2, #0]
d03c4700:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c4704:	3a2e      	subs	r2, #46	; 0x2e
d03c4706:	b292      	uxth	r2, r2
d03c4708:	2a2f      	cmp	r2, #47	; 0x2f
d03c470a:	f200 81f6 	bhi.w	d03c4afa <ui_draw_seq+0x58e>
d03c470e:	f5a3 738e 	sub.w	r3, r3, #284	; 0x11c
d03c4712:	b29b      	uxth	r3, r3
d03c4714:	2b1f      	cmp	r3, #31
d03c4716:	f200 81f0 	bhi.w	d03c4afa <ui_draw_seq+0x58e>
d03c471a:	2601      	movs	r6, #1
d03c471c:	2d00      	cmp	r5, #0
d03c471e:	f040 81f2 	bne.w	d03c4b06 <ui_draw_seq+0x59a>
d03c4722:	f04f 0815 	mov.w	r8, #21
d03c4726:	2214      	movs	r2, #20
d03c4728:	231a      	movs	r3, #26
d03c472a:	9201      	str	r2, [sp, #4]
d03c472c:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03c4730:	9300      	str	r3, [sp, #0]
d03c4732:	2230      	movs	r2, #48	; 0x30
d03c4734:	2320      	movs	r3, #32
d03c4736:	202e      	movs	r0, #46	; 0x2e
d03c4738:	f7fc faa6 	bl	d03c0c88 <ui_box>
d03c473c:	2d00      	cmp	r5, #0
d03c473e:	f000 8089 	beq.w	d03c4854 <ui_draw_seq+0x2e8>
d03c4742:	2e00      	cmp	r6, #0
d03c4744:	f040 8086 	bne.w	d03c4854 <ui_draw_seq+0x2e8>
d03c4748:	7b23      	ldrb	r3, [r4, #12]
d03c474a:	2020      	movs	r0, #32
d03c474c:	7b62      	ldrb	r2, [r4, #13]
d03c474e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4752:	7ba2      	ldrb	r2, [r4, #14]
d03c4754:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4758:	7be2      	ldrb	r2, [r4, #15]
d03c475a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c475e:	685b      	ldr	r3, [r3, #4]
d03c4760:	68db      	ldr	r3, [r3, #12]
d03c4762:	4798      	blx	r3
d03c4764:	7b23      	ldrb	r3, [r4, #12]
d03c4766:	7b62      	ldrb	r2, [r4, #13]
d03c4768:	f240 111b 	movw	r1, #283	; 0x11b
d03c476c:	202d      	movs	r0, #45	; 0x2d
d03c476e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4772:	7ba2      	ldrb	r2, [r4, #14]
d03c4774:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4778:	7be2      	ldrb	r2, [r4, #15]
d03c477a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c477e:	2232      	movs	r2, #50	; 0x32
d03c4780:	685b      	ldr	r3, [r3, #4]
d03c4782:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c4786:	2301      	movs	r3, #1
d03c4788:	47d8      	blx	fp
d03c478a:	7b23      	ldrb	r3, [r4, #12]
d03c478c:	7b62      	ldrb	r2, [r4, #13]
d03c478e:	f44f 719e 	mov.w	r1, #316	; 0x13c
d03c4792:	202d      	movs	r0, #45	; 0x2d
d03c4794:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4798:	7ba2      	ldrb	r2, [r4, #14]
d03c479a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c479e:	7be2      	ldrb	r2, [r4, #15]
d03c47a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c47a4:	2232      	movs	r2, #50	; 0x32
d03c47a6:	685b      	ldr	r3, [r3, #4]
d03c47a8:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c47ac:	2301      	movs	r3, #1
d03c47ae:	47d8      	blx	fp
d03c47b0:	7b23      	ldrb	r3, [r4, #12]
d03c47b2:	7b62      	ldrb	r2, [r4, #13]
d03c47b4:	f240 111b 	movw	r1, #283	; 0x11b
d03c47b8:	202d      	movs	r0, #45	; 0x2d
d03c47ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c47be:	7ba2      	ldrb	r2, [r4, #14]
d03c47c0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c47c4:	7be2      	ldrb	r2, [r4, #15]
d03c47c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c47ca:	2201      	movs	r2, #1
d03c47cc:	685b      	ldr	r3, [r3, #4]
d03c47ce:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c47d2:	2322      	movs	r3, #34	; 0x22
d03c47d4:	47d8      	blx	fp
d03c47d6:	7b23      	ldrb	r3, [r4, #12]
d03c47d8:	7b62      	ldrb	r2, [r4, #13]
d03c47da:	f240 111b 	movw	r1, #283	; 0x11b
d03c47de:	205e      	movs	r0, #94	; 0x5e
d03c47e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c47e4:	7ba2      	ldrb	r2, [r4, #14]
d03c47e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c47ea:	7be2      	ldrb	r2, [r4, #15]
d03c47ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c47f0:	2201      	movs	r2, #1
d03c47f2:	685b      	ldr	r3, [r3, #4]
d03c47f4:	f8d3 b004 	ldr.w	fp, [r3, #4]
d03c47f8:	2322      	movs	r3, #34	; 0x22
d03c47fa:	47d8      	blx	fp
d03c47fc:	e02a      	b.n	d03c4854 <ui_draw_seq+0x2e8>
d03c47fe:	bf00      	nop
d03c4800:	d03ccfb4 	.word	0xd03ccfb4
d03c4804:	d03cd104 	.word	0xd03cd104
d03c4808:	d03cd0fc 	.word	0xd03cd0fc
d03c480c:	d03cb785 	.word	0xd03cb785
d03c4810:	d03cb78a 	.word	0xd03cb78a
d03c4814:	2001f000 	.word	0x2001f000
d03c4818:	d03cd107 	.word	0xd03cd107
d03c481c:	d03ccfb8 	.word	0xd03ccfb8
d03c4820:	d03cb929 	.word	0xd03cb929
d03c4824:	d03ccfac 	.word	0xd03ccfac
d03c4828:	d03cb79d 	.word	0xd03cb79d
d03c482c:	d03cb7fc 	.word	0xd03cb7fc
d03c4830:	d03ce31b 	.word	0xd03ce31b
d03c4834:	d03cf394 	.word	0xd03cf394
d03c4838:	d03cf396 	.word	0xd03cf396
d03c483c:	d03cd105 	.word	0xd03cd105
d03c4840:	d03cd106 	.word	0xd03cd106
d03c4844:	d03cc5c4 	.word	0xd03cc5c4
d03c4848:	d03ccfca 	.word	0xd03ccfca
d03c484c:	d03cb78f 	.word	0xd03cb78f
d03c4850:	d03ccfd4 	.word	0xd03ccfd4
d03c4854:	7b23      	ldrb	r3, [r4, #12]
d03c4856:	2e00      	cmp	r6, #0
d03c4858:	7b62      	ldrb	r2, [r4, #13]
d03c485a:	bf0c      	ite	eq
d03c485c:	4640      	moveq	r0, r8
d03c485e:	2010      	movne	r0, #16
d03c4860:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4864:	7ba2      	ldrb	r2, [r4, #14]
d03c4866:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c486a:	7be2      	ldrb	r2, [r4, #15]
d03c486c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4870:	685b      	ldr	r3, [r3, #4]
d03c4872:	68db      	ldr	r3, [r3, #12]
d03c4874:	4798      	blx	r3
d03c4876:	7b23      	ldrb	r3, [r4, #12]
d03c4878:	7b62      	ldrb	r2, [r4, #13]
d03c487a:	f240 111d 	movw	r1, #285	; 0x11d
d03c487e:	202f      	movs	r0, #47	; 0x2f
d03c4880:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4884:	7ba2      	ldrb	r2, [r4, #14]
d03c4886:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c488a:	7be2      	ldrb	r2, [r4, #15]
d03c488c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4890:	222e      	movs	r2, #46	; 0x2e
d03c4892:	685b      	ldr	r3, [r3, #4]
d03c4894:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4898:	2302      	movs	r3, #2
d03c489a:	47c0      	blx	r8
d03c489c:	7b23      	ldrb	r3, [r4, #12]
d03c489e:	7b62      	ldrb	r2, [r4, #13]
d03c48a0:	202f      	movs	r0, #47	; 0x2f
d03c48a2:	f240 111d 	movw	r1, #285	; 0x11d
d03c48a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c48aa:	7ba2      	ldrb	r2, [r4, #14]
d03c48ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c48b0:	7be2      	ldrb	r2, [r4, #15]
d03c48b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c48b6:	2202      	movs	r2, #2
d03c48b8:	685b      	ldr	r3, [r3, #4]
d03c48ba:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c48be:	231e      	movs	r3, #30
d03c48c0:	47c0      	blx	r8
d03c48c2:	7b23      	ldrb	r3, [r4, #12]
d03c48c4:	7b62      	ldrb	r2, [r4, #13]
d03c48c6:	2e00      	cmp	r6, #0
d03c48c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c48cc:	7ba2      	ldrb	r2, [r4, #14]
d03c48ce:	bf14      	ite	ne
d03c48d0:	200d      	movne	r0, #13
d03c48d2:	2010      	moveq	r0, #16
d03c48d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c48d8:	7be2      	ldrb	r2, [r4, #15]
d03c48da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c48de:	685b      	ldr	r3, [r3, #4]
d03c48e0:	68db      	ldr	r3, [r3, #12]
d03c48e2:	4798      	blx	r3
d03c48e4:	7b23      	ldrb	r3, [r4, #12]
d03c48e6:	7b62      	ldrb	r2, [r4, #13]
d03c48e8:	f240 1139 	movw	r1, #313	; 0x139
d03c48ec:	202f      	movs	r0, #47	; 0x2f
d03c48ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c48f2:	7ba2      	ldrb	r2, [r4, #14]
d03c48f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c48f8:	7be2      	ldrb	r2, [r4, #15]
d03c48fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c48fe:	222e      	movs	r2, #46	; 0x2e
d03c4900:	685b      	ldr	r3, [r3, #4]
d03c4902:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c4906:	2302      	movs	r3, #2
d03c4908:	47c0      	blx	r8
d03c490a:	7b23      	ldrb	r3, [r4, #12]
d03c490c:	7b62      	ldrb	r2, [r4, #13]
d03c490e:	205b      	movs	r0, #91	; 0x5b
d03c4910:	f240 111d 	movw	r1, #285	; 0x11d
d03c4914:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4918:	7ba2      	ldrb	r2, [r4, #14]
d03c491a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c491e:	7be2      	ldrb	r2, [r4, #15]
d03c4920:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4924:	2202      	movs	r2, #2
d03c4926:	685b      	ldr	r3, [r3, #4]
d03c4928:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c492c:	231e      	movs	r3, #30
d03c492e:	47c0      	blx	r8
d03c4930:	7b23      	ldrb	r3, [r4, #12]
d03c4932:	7b62      	ldrb	r2, [r4, #13]
d03c4934:	2e00      	cmp	r6, #0
d03c4936:	f240 1125 	movw	r1, #293	; 0x125
d03c493a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c493e:	7ba2      	ldrb	r2, [r4, #14]
d03c4940:	bf04      	itt	eq
d03c4942:	f44f 7192 	moveq.w	r1, #292	; 0x124
d03c4946:	263a      	moveq	r6, #58	; 0x3a
d03c4948:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c494c:	7be2      	ldrb	r2, [r4, #15]
d03c494e:	bf18      	it	ne
d03c4950:	263b      	movne	r6, #59	; 0x3b
d03c4952:	2d00      	cmp	r5, #0
d03c4954:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4958:	9107      	str	r1, [sp, #28]
d03c495a:	bf14      	ite	ne
d03c495c:	200f      	movne	r0, #15
d03c495e:	2019      	moveq	r0, #25
d03c4960:	685b      	ldr	r3, [r3, #4]
d03c4962:	68db      	ldr	r3, [r3, #12]
d03c4964:	4798      	blx	r3
d03c4966:	7b23      	ldrb	r3, [r4, #12]
d03c4968:	7b62      	ldrb	r2, [r4, #13]
d03c496a:	4630      	mov	r0, r6
d03c496c:	9907      	ldr	r1, [sp, #28]
d03c496e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4972:	7ba2      	ldrb	r2, [r4, #14]
d03c4974:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4978:	7be2      	ldrb	r2, [r4, #15]
d03c497a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c497e:	4a68      	ldr	r2, [pc, #416]	; (d03c4b20 <ui_draw_seq+0x5b4>)
d03c4980:	685b      	ldr	r3, [r3, #4]
d03c4982:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4984:	4798      	blx	r3
d03c4986:	4b67      	ldr	r3, [pc, #412]	; (d03c4b24 <ui_draw_seq+0x5b8>)
d03c4988:	781b      	ldrb	r3, [r3, #0]
d03c498a:	2b00      	cmp	r3, #0
d03c498c:	f040 80c5 	bne.w	d03c4b1a <ui_draw_seq+0x5ae>
d03c4990:	783a      	ldrb	r2, [r7, #0]
d03c4992:	f89a 3000 	ldrb.w	r3, [sl]
d03c4996:	4313      	orrs	r3, r2
d03c4998:	4a63      	ldr	r2, [pc, #396]	; (d03c4b28 <ui_draw_seq+0x5bc>)
d03c499a:	2b00      	cmp	r3, #0
d03c499c:	4b63      	ldr	r3, [pc, #396]	; (d03c4b2c <ui_draw_seq+0x5c0>)
d03c499e:	bf12      	itee	ne
d03c49a0:	2201      	movne	r2, #1
d03c49a2:	4613      	moveq	r3, r2
d03c49a4:	2200      	moveq	r2, #0
d03c49a6:	2400      	movs	r4, #0
d03c49a8:	2520      	movs	r5, #32
d03c49aa:	9202      	str	r2, [sp, #8]
d03c49ac:	2162      	movs	r1, #98	; 0x62
d03c49ae:	9301      	str	r3, [sp, #4]
d03c49b0:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c49b4:	2334      	movs	r3, #52	; 0x34
d03c49b6:	203f      	movs	r0, #63	; 0x3f
d03c49b8:	9403      	str	r4, [sp, #12]
d03c49ba:	2601      	movs	r6, #1
d03c49bc:	9500      	str	r5, [sp, #0]
d03c49be:	f7fe fd7f 	bl	d03c34c0 <ui_create_button>
d03c49c2:	4b5b      	ldr	r3, [pc, #364]	; (d03c4b30 <ui_draw_seq+0x5c4>)
d03c49c4:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c49c8:	219a      	movs	r1, #154	; 0x9a
d03c49ca:	9301      	str	r3, [sp, #4]
d03c49cc:	2040      	movs	r0, #64	; 0x40
d03c49ce:	2330      	movs	r3, #48	; 0x30
d03c49d0:	9403      	str	r4, [sp, #12]
d03c49d2:	9402      	str	r4, [sp, #8]
d03c49d4:	9500      	str	r5, [sp, #0]
d03c49d6:	f7fe fd73 	bl	d03c34c0 <ui_create_button>
d03c49da:	4b56      	ldr	r3, [pc, #344]	; (d03c4b34 <ui_draw_seq+0x5c8>)
d03c49dc:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c49e0:	21ce      	movs	r1, #206	; 0xce
d03c49e2:	9301      	str	r3, [sp, #4]
d03c49e4:	2046      	movs	r0, #70	; 0x46
d03c49e6:	2332      	movs	r3, #50	; 0x32
d03c49e8:	9403      	str	r4, [sp, #12]
d03c49ea:	9402      	str	r4, [sp, #8]
d03c49ec:	9500      	str	r5, [sp, #0]
d03c49ee:	f7fe fd67 	bl	d03c34c0 <ui_create_button>
d03c49f2:	4b51      	ldr	r3, [pc, #324]	; (d03c4b38 <ui_draw_seq+0x5cc>)
d03c49f4:	9403      	str	r4, [sp, #12]
d03c49f6:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c49fa:	781b      	ldrb	r3, [r3, #0]
d03c49fc:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c4a00:	2047      	movs	r0, #71	; 0x47
d03c4a02:	9500      	str	r5, [sp, #0]
d03c4a04:	9302      	str	r3, [sp, #8]
d03c4a06:	4b4d      	ldr	r3, [pc, #308]	; (d03c4b3c <ui_draw_seq+0x5d0>)
d03c4a08:	9301      	str	r3, [sp, #4]
d03c4a0a:	2332      	movs	r3, #50	; 0x32
d03c4a0c:	f7fe fd58 	bl	d03c34c0 <ui_create_button>
d03c4a10:	4b4b      	ldr	r3, [pc, #300]	; (d03c4b40 <ui_draw_seq+0x5d4>)
d03c4a12:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a16:	f44f 719d 	mov.w	r1, #314	; 0x13a
d03c4a1a:	9301      	str	r3, [sp, #4]
d03c4a1c:	2041      	movs	r0, #65	; 0x41
d03c4a1e:	231a      	movs	r3, #26
d03c4a20:	9603      	str	r6, [sp, #12]
d03c4a22:	9402      	str	r4, [sp, #8]
d03c4a24:	9500      	str	r5, [sp, #0]
d03c4a26:	f7fe fd4b 	bl	d03c34c0 <ui_create_button>
d03c4a2a:	4b46      	ldr	r3, [pc, #280]	; (d03c4b44 <ui_draw_seq+0x5d8>)
d03c4a2c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a30:	f44f 71ac 	mov.w	r1, #344	; 0x158
d03c4a34:	9301      	str	r3, [sp, #4]
d03c4a36:	2042      	movs	r0, #66	; 0x42
d03c4a38:	231a      	movs	r3, #26
d03c4a3a:	9603      	str	r6, [sp, #12]
d03c4a3c:	9402      	str	r4, [sp, #8]
d03c4a3e:	9500      	str	r5, [sp, #0]
d03c4a40:	f7fe fd3e 	bl	d03c34c0 <ui_create_button>
d03c4a44:	f899 2000 	ldrb.w	r2, [r9]
d03c4a48:	493f      	ldr	r1, [pc, #252]	; (d03c4b48 <ui_draw_seq+0x5dc>)
d03c4a4a:	2043      	movs	r0, #67	; 0x43
d03c4a4c:	4b3f      	ldr	r3, [pc, #252]	; (d03c4b4c <ui_draw_seq+0x5e0>)
d03c4a4e:	9202      	str	r2, [sp, #8]
d03c4a50:	42a2      	cmp	r2, r4
d03c4a52:	bf08      	it	eq
d03c4a54:	460b      	moveq	r3, r1
d03c4a56:	9403      	str	r4, [sp, #12]
d03c4a58:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a5c:	f44f 71bb 	mov.w	r1, #374	; 0x176
d03c4a60:	9301      	str	r3, [sp, #4]
d03c4a62:	2332      	movs	r3, #50	; 0x32
d03c4a64:	9500      	str	r5, [sp, #0]
d03c4a66:	f7fe fd2b 	bl	d03c34c0 <ui_create_button>
d03c4a6a:	4b39      	ldr	r3, [pc, #228]	; (d03c4b50 <ui_draw_seq+0x5e4>)
d03c4a6c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a70:	f44f 71d6 	mov.w	r1, #428	; 0x1ac
d03c4a74:	9301      	str	r3, [sp, #4]
d03c4a76:	2044      	movs	r0, #68	; 0x44
d03c4a78:	2316      	movs	r3, #22
d03c4a7a:	9403      	str	r4, [sp, #12]
d03c4a7c:	9402      	str	r4, [sp, #8]
d03c4a7e:	9500      	str	r5, [sp, #0]
d03c4a80:	f7fe fd1e 	bl	d03c34c0 <ui_create_button>
d03c4a84:	4b33      	ldr	r3, [pc, #204]	; (d03c4b54 <ui_draw_seq+0x5e8>)
d03c4a86:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c4a8a:	f44f 71e3 	mov.w	r1, #454	; 0x1c6
d03c4a8e:	9301      	str	r3, [sp, #4]
d03c4a90:	2045      	movs	r0, #69	; 0x45
d03c4a92:	2316      	movs	r3, #22
d03c4a94:	9403      	str	r4, [sp, #12]
d03c4a96:	9402      	str	r4, [sp, #8]
d03c4a98:	9500      	str	r5, [sp, #0]
d03c4a9a:	f7fe fd11 	bl	d03c34c0 <ui_create_button>
d03c4a9e:	b021      	add	sp, #132	; 0x84
d03c4aa0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c4aa4:	4e2c      	ldr	r6, [pc, #176]	; (d03c4b58 <ui_draw_seq+0x5ec>)
d03c4aa6:	e57c      	b.n	d03c45a2 <ui_draw_seq+0x36>
d03c4aa8:	4e1d      	ldr	r6, [pc, #116]	; (d03c4b20 <ui_draw_seq+0x5b4>)
d03c4aaa:	e57a      	b.n	d03c45a2 <ui_draw_seq+0x36>
d03c4aac:	4e2b      	ldr	r6, [pc, #172]	; (d03c4b5c <ui_draw_seq+0x5f0>)
d03c4aae:	e578      	b.n	d03c45a2 <ui_draw_seq+0x36>
d03c4ab0:	f89c c000 	ldrb.w	ip, [ip]
d03c4ab4:	7809      	ldrb	r1, [r1, #0]
d03c4ab6:	f8df 80b4 	ldr.w	r8, [pc, #180]	; d03c4b6c <ui_draw_seq+0x600>
d03c4aba:	f899 2000 	ldrb.w	r2, [r9]
d03c4abe:	f001 0103 	and.w	r1, r1, #3
d03c4ac2:	4b27      	ldr	r3, [pc, #156]	; (d03c4b60 <ui_draw_seq+0x5f4>)
d03c4ac4:	f81e 1001 	ldrb.w	r1, [lr, r1]
d03c4ac8:	2a00      	cmp	r2, #0
d03c4aca:	bf14      	ite	ne
d03c4acc:	461a      	movne	r2, r3
d03c4ace:	4642      	moveq	r2, r8
d03c4ad0:	f1bc 0f00 	cmp.w	ip, #0
d03c4ad4:	bf08      	it	eq
d03c4ad6:	4643      	moveq	r3, r8
d03c4ad8:	f8df c094 	ldr.w	ip, [pc, #148]	; d03c4b70 <ui_draw_seq+0x604>
d03c4adc:	f8dc 0000 	ldr.w	r0, [ip]
d03c4ae0:	9303      	str	r3, [sp, #12]
d03c4ae2:	4b20      	ldr	r3, [pc, #128]	; (d03c4b64 <ui_draw_seq+0x5f8>)
d03c4ae4:	9004      	str	r0, [sp, #16]
d03c4ae6:	a808      	add	r0, sp, #32
d03c4ae8:	9102      	str	r1, [sp, #8]
d03c4aea:	2160      	movs	r1, #96	; 0x60
d03c4aec:	9201      	str	r2, [sp, #4]
d03c4aee:	9600      	str	r6, [sp, #0]
d03c4af0:	4a1d      	ldr	r2, [pc, #116]	; (d03c4b68 <ui_draw_seq+0x5fc>)
d03c4af2:	881b      	ldrh	r3, [r3, #0]
d03c4af4:	f005 fa66 	bl	d03c9fc4 <sniprintf>
d03c4af8:	e5bb      	b.n	d03c4672 <ui_draw_seq+0x106>
d03c4afa:	b94d      	cbnz	r5, d03c4b10 <ui_draw_seq+0x5a4>
d03c4afc:	462e      	mov	r6, r5
d03c4afe:	f04f 0815 	mov.w	r8, #21
d03c4b02:	221b      	movs	r2, #27
d03c4b04:	e610      	b.n	d03c4728 <ui_draw_seq+0x1bc>
d03c4b06:	f04f 080d 	mov.w	r8, #13
d03c4b0a:	2214      	movs	r2, #20
d03c4b0c:	4643      	mov	r3, r8
d03c4b0e:	e60c      	b.n	d03c472a <ui_draw_seq+0x1be>
d03c4b10:	2600      	movs	r6, #0
d03c4b12:	f04f 080d 	mov.w	r8, #13
d03c4b16:	220c      	movs	r2, #12
d03c4b18:	e7f8      	b.n	d03c4b0c <ui_draw_seq+0x5a0>
d03c4b1a:	4b04      	ldr	r3, [pc, #16]	; (d03c4b2c <ui_draw_seq+0x5c0>)
d03c4b1c:	2201      	movs	r2, #1
d03c4b1e:	e742      	b.n	d03c49a6 <ui_draw_seq+0x43a>
d03c4b20:	d03cb77d 	.word	0xd03cb77d
d03c4b24:	d03cd0fc 	.word	0xd03cd0fc
d03c4b28:	d03cb78a 	.word	0xd03cb78a
d03c4b2c:	d03cb785 	.word	0xd03cb785
d03c4b30:	d03cb7ff 	.word	0xd03cb7ff
d03c4b34:	d03cb804 	.word	0xd03cb804
d03c4b38:	d03ccfca 	.word	0xd03ccfca
d03c4b3c:	d03cb381 	.word	0xd03cb381
d03c4b40:	d03cb808 	.word	0xd03cb808
d03c4b44:	d03cb80a 	.word	0xd03cb80a
d03c4b48:	d03cb798 	.word	0xd03cb798
d03c4b4c:	d03cb793 	.word	0xd03cb793
d03c4b50:	d03cb726 	.word	0xd03cb726
d03c4b54:	d03cb728 	.word	0xd03cb728
d03c4b58:	d03cb777 	.word	0xd03cb777
d03c4b5c:	d03cb781 	.word	0xd03cb781
d03c4b60:	d03cb929 	.word	0xd03cb929
d03c4b64:	d03ccfac 	.word	0xd03ccfac
d03c4b68:	d03cb7ce 	.word	0xd03cb7ce
d03c4b6c:	d03cb78f 	.word	0xd03cb78f
d03c4b70:	d03ccfd4 	.word	0xd03ccfd4

d03c4b74 <ui_redraw_backbuffer>:
d03c4b74:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c4b78:	4c90      	ldr	r4, [pc, #576]	; (d03c4dbc <ui_redraw_backbuffer+0x248>)
d03c4b7a:	2500      	movs	r5, #0
d03c4b7c:	4e90      	ldr	r6, [pc, #576]	; (d03c4dc0 <ui_redraw_backbuffer+0x24c>)
d03c4b7e:	7b23      	ldrb	r3, [r4, #12]
d03c4b80:	7b62      	ldrb	r2, [r4, #13]
d03c4b82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4b86:	7ba2      	ldrb	r2, [r4, #14]
d03c4b88:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4b8c:	7be2      	ldrb	r2, [r4, #15]
d03c4b8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4b92:	681b      	ldr	r3, [r3, #0]
d03c4b94:	ed2d 8b02 	vpush	{d8}
d03c4b98:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c4b9a:	b0a1      	sub	sp, #132	; 0x84
d03c4b9c:	4798      	blx	r3
d03c4b9e:	7b23      	ldrb	r3, [r4, #12]
d03c4ba0:	7b62      	ldrb	r2, [r4, #13]
d03c4ba2:	ee08 0a10 	vmov	s16, r0
d03c4ba6:	4887      	ldr	r0, [pc, #540]	; (d03c4dc4 <ui_redraw_backbuffer+0x250>)
d03c4ba8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4bac:	7ba2      	ldrb	r2, [r4, #14]
d03c4bae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4bb2:	7be2      	ldrb	r2, [r4, #15]
d03c4bb4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4bb8:	681b      	ldr	r3, [r3, #0]
d03c4bba:	6a1b      	ldr	r3, [r3, #32]
d03c4bbc:	4798      	blx	r3
d03c4bbe:	7b23      	ldrb	r3, [r4, #12]
d03c4bc0:	7b62      	ldrb	r2, [r4, #13]
d03c4bc2:	2100      	movs	r1, #0
d03c4bc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4bc8:	7ba2      	ldrb	r2, [r4, #14]
d03c4bca:	4608      	mov	r0, r1
d03c4bcc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4bd0:	7be2      	ldrb	r2, [r4, #15]
d03c4bd2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4bd6:	681b      	ldr	r3, [r3, #0]
d03c4bd8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c4bda:	4798      	blx	r3
d03c4bdc:	7b23      	ldrb	r3, [r4, #12]
d03c4bde:	7b62      	ldrb	r2, [r4, #13]
d03c4be0:	4878      	ldr	r0, [pc, #480]	; (d03c4dc4 <ui_redraw_backbuffer+0x250>)
d03c4be2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4be6:	7ba2      	ldrb	r2, [r4, #14]
d03c4be8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4bec:	7be2      	ldrb	r2, [r4, #15]
d03c4bee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4bf2:	681b      	ldr	r3, [r3, #0]
d03c4bf4:	699b      	ldr	r3, [r3, #24]
d03c4bf6:	4798      	blx	r3
d03c4bf8:	4b73      	ldr	r3, [pc, #460]	; (d03c4dc8 <ui_redraw_backbuffer+0x254>)
d03c4bfa:	701d      	strb	r5, [r3, #0]
d03c4bfc:	7b23      	ldrb	r3, [r4, #12]
d03c4bfe:	7b62      	ldrb	r2, [r4, #13]
d03c4c00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c04:	7ba2      	ldrb	r2, [r4, #14]
d03c4c06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c0a:	7be2      	ldrb	r2, [r4, #15]
d03c4c0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c10:	685b      	ldr	r3, [r3, #4]
d03c4c12:	681b      	ldr	r3, [r3, #0]
d03c4c14:	4798      	blx	r3
d03c4c16:	7b23      	ldrb	r3, [r4, #12]
d03c4c18:	7b62      	ldrb	r2, [r4, #13]
d03c4c1a:	f816 0b01 	ldrb.w	r0, [r6], #1
d03c4c1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c22:	7ba2      	ldrb	r2, [r4, #14]
d03c4c24:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c28:	7be2      	ldrb	r2, [r4, #15]
d03c4c2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c2e:	685b      	ldr	r3, [r3, #4]
d03c4c30:	68db      	ldr	r3, [r3, #12]
d03c4c32:	4798      	blx	r3
d03c4c34:	7b23      	ldrb	r3, [r4, #12]
d03c4c36:	7b62      	ldrb	r2, [r4, #13]
d03c4c38:	b229      	sxth	r1, r5
d03c4c3a:	3528      	adds	r5, #40	; 0x28
d03c4c3c:	2000      	movs	r0, #0
d03c4c3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c42:	7ba2      	ldrb	r2, [r4, #14]
d03c4c44:	b2ad      	uxth	r5, r5
d03c4c46:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c4a:	7be2      	ldrb	r2, [r4, #15]
d03c4c4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c50:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4c54:	685b      	ldr	r3, [r3, #4]
d03c4c56:	685f      	ldr	r7, [r3, #4]
d03c4c58:	2328      	movs	r3, #40	; 0x28
d03c4c5a:	47b8      	blx	r7
d03c4c5c:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d03c4c60:	d1d9      	bne.n	d03c4c16 <ui_redraw_backbuffer+0xa2>
d03c4c62:	7b23      	ldrb	r3, [r4, #12]
d03c4c64:	2015      	movs	r0, #21
d03c4c66:	7b62      	ldrb	r2, [r4, #13]
d03c4c68:	4e58      	ldr	r6, [pc, #352]	; (d03c4dcc <ui_redraw_backbuffer+0x258>)
d03c4c6a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c6e:	7ba2      	ldrb	r2, [r4, #14]
d03c4c70:	f8df 9164 	ldr.w	r9, [pc, #356]	; d03c4dd8 <ui_redraw_backbuffer+0x264>
d03c4c74:	46b2      	mov	sl, r6
d03c4c76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c7a:	7be2      	ldrb	r2, [r4, #15]
d03c4c7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c80:	685b      	ldr	r3, [r3, #4]
d03c4c82:	68db      	ldr	r3, [r3, #12]
d03c4c84:	4798      	blx	r3
d03c4c86:	7b23      	ldrb	r3, [r4, #12]
d03c4c88:	7b62      	ldrb	r2, [r4, #13]
d03c4c8a:	2100      	movs	r1, #0
d03c4c8c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4c90:	7ba2      	ldrb	r2, [r4, #14]
d03c4c92:	4608      	mov	r0, r1
d03c4c94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4c98:	7be2      	ldrb	r2, [r4, #15]
d03c4c9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4c9e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4ca2:	685b      	ldr	r3, [r3, #4]
d03c4ca4:	685d      	ldr	r5, [r3, #4]
d03c4ca6:	2302      	movs	r3, #2
d03c4ca8:	47a8      	blx	r5
d03c4caa:	7b23      	ldrb	r3, [r4, #12]
d03c4cac:	7b62      	ldrb	r2, [r4, #13]
d03c4cae:	201a      	movs	r0, #26
d03c4cb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cb4:	7ba2      	ldrb	r2, [r4, #14]
d03c4cb6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4cba:	7be2      	ldrb	r2, [r4, #15]
d03c4cbc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4cc0:	685b      	ldr	r3, [r3, #4]
d03c4cc2:	68db      	ldr	r3, [r3, #12]
d03c4cc4:	4798      	blx	r3
d03c4cc6:	7b23      	ldrb	r3, [r4, #12]
d03c4cc8:	7b62      	ldrb	r2, [r4, #13]
d03c4cca:	213f      	movs	r1, #63	; 0x3f
d03c4ccc:	2000      	movs	r0, #0
d03c4cce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cd2:	7ba2      	ldrb	r2, [r4, #14]
d03c4cd4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4cd8:	7be2      	ldrb	r2, [r4, #15]
d03c4cda:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4cde:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c4ce2:	685b      	ldr	r3, [r3, #4]
d03c4ce4:	685d      	ldr	r5, [r3, #4]
d03c4ce6:	2301      	movs	r3, #1
d03c4ce8:	47a8      	blx	r5
d03c4cea:	7b23      	ldrb	r3, [r4, #12]
d03c4cec:	7b62      	ldrb	r2, [r4, #13]
d03c4cee:	20e8      	movs	r0, #232	; 0xe8
d03c4cf0:	2508      	movs	r5, #8
d03c4cf2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4cf6:	7ba2      	ldrb	r2, [r4, #14]
d03c4cf8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4cfc:	7be2      	ldrb	r2, [r4, #15]
d03c4cfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d02:	685b      	ldr	r3, [r3, #4]
d03c4d04:	68db      	ldr	r3, [r3, #12]
d03c4d06:	4798      	blx	r3
d03c4d08:	7b23      	ldrb	r3, [r4, #12]
d03c4d0a:	7b62      	ldrb	r2, [r4, #13]
d03c4d0c:	2108      	movs	r1, #8
d03c4d0e:	200c      	movs	r0, #12
d03c4d10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d14:	7ba2      	ldrb	r2, [r4, #14]
d03c4d16:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d1a:	7be2      	ldrb	r2, [r4, #15]
d03c4d1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d20:	4a2b      	ldr	r2, [pc, #172]	; (d03c4dd0 <ui_redraw_backbuffer+0x25c>)
d03c4d22:	685b      	ldr	r3, [r3, #4]
d03c4d24:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4d26:	4798      	blx	r3
d03c4d28:	7b23      	ldrb	r3, [r4, #12]
d03c4d2a:	7b62      	ldrb	r2, [r4, #13]
d03c4d2c:	20e7      	movs	r0, #231	; 0xe7
d03c4d2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d32:	7ba2      	ldrb	r2, [r4, #14]
d03c4d34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d38:	7be2      	ldrb	r2, [r4, #15]
d03c4d3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d3e:	685b      	ldr	r3, [r3, #4]
d03c4d40:	68db      	ldr	r3, [r3, #12]
d03c4d42:	4798      	blx	r3
d03c4d44:	7b23      	ldrb	r3, [r4, #12]
d03c4d46:	7b62      	ldrb	r2, [r4, #13]
d03c4d48:	2108      	movs	r1, #8
d03c4d4a:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03c4d4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4d52:	7ba2      	ldrb	r2, [r4, #14]
d03c4d54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4d58:	7be2      	ldrb	r2, [r4, #15]
d03c4d5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4d5e:	4a1d      	ldr	r2, [pc, #116]	; (d03c4dd4 <ui_redraw_backbuffer+0x260>)
d03c4d60:	685b      	ldr	r3, [r3, #4]
d03c4d62:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4d64:	4798      	blx	r3
d03c4d66:	2300      	movs	r3, #0
d03c4d68:	461f      	mov	r7, r3
d03c4d6a:	f859 1b04 	ldr.w	r1, [r9], #4
d03c4d6e:	f103 0801 	add.w	r8, r3, #1
d03c4d72:	9703      	str	r7, [sp, #12]
d03c4d74:	b2db      	uxtb	r3, r3
d03c4d76:	7832      	ldrb	r2, [r6, #0]
d03c4d78:	fa1f f088 	uxth.w	r0, r8
d03c4d7c:	9101      	str	r1, [sp, #4]
d03c4d7e:	b229      	sxth	r1, r5
d03c4d80:	eba2 0b03 	sub.w	fp, r2, r3
d03c4d84:	2220      	movs	r2, #32
d03c4d86:	354c      	adds	r5, #76	; 0x4c
d03c4d88:	f1db 0300 	rsbs	r3, fp, #0
d03c4d8c:	b2ad      	uxth	r5, r5
d03c4d8e:	eb43 030b 	adc.w	r3, r3, fp
d03c4d92:	9302      	str	r3, [sp, #8]
d03c4d94:	231c      	movs	r3, #28
d03c4d96:	9300      	str	r3, [sp, #0]
d03c4d98:	2344      	movs	r3, #68	; 0x44
d03c4d9a:	f7fe fb91 	bl	d03c34c0 <ui_create_button>
d03c4d9e:	4643      	mov	r3, r8
d03c4da0:	2b06      	cmp	r3, #6
d03c4da2:	d1e2      	bne.n	d03c4d6a <ui_redraw_backbuffer+0x1f6>
d03c4da4:	7833      	ldrb	r3, [r6, #0]
d03c4da6:	2b05      	cmp	r3, #5
d03c4da8:	f201 8025 	bhi.w	d03c5df6 <ui_redraw_backbuffer+0x1282>
d03c4dac:	e8df f013 	tbh	[pc, r3, lsl #1]
d03c4db0:	00160825 	.word	0x00160825
d03c4db4:	02d20198 	.word	0x02d20198
d03c4db8:	081f03e0 	.word	0x081f03e0
d03c4dbc:	2001f000 	.word	0x2001f000
d03c4dc0:	d03cc558 	.word	0xd03cc558
d03c4dc4:	d03cf700 	.word	0xd03cf700
d03c4dc8:	d03cd148 	.word	0xd03cd148
d03c4dcc:	d03cf330 	.word	0xd03cf330
d03c4dd0:	d03cb85d 	.word	0xd03cb85d
d03c4dd4:	d03cb872 	.word	0xd03cb872
d03c4dd8:	d03cc4e8 	.word	0xd03cc4e8
d03c4ddc:	4dac      	ldr	r5, [pc, #688]	; (d03c5090 <ui_redraw_backbuffer+0x51c>)
d03c4dde:	2700      	movs	r7, #0
d03c4de0:	4bac      	ldr	r3, [pc, #688]	; (d03c5094 <ui_redraw_backbuffer+0x520>)
d03c4de2:	f44f 72e6 	mov.w	r2, #460	; 0x1cc
d03c4de6:	f895 8000 	ldrb.w	r8, [r5]
d03c4dea:	2142      	movs	r1, #66	; 0x42
d03c4dec:	200a      	movs	r0, #10
d03c4dee:	9300      	str	r3, [sp, #0]
d03c4df0:	23cc      	movs	r3, #204	; 0xcc
d03c4df2:	2620      	movs	r6, #32
d03c4df4:	f7fb ffb6 	bl	d03c0d64 <ui_panel>
d03c4df8:	9703      	str	r7, [sp, #12]
d03c4dfa:	782b      	ldrb	r3, [r5, #0]
d03c4dfc:	2246      	movs	r2, #70	; 0x46
d03c4dfe:	21f4      	movs	r1, #244	; 0xf4
d03c4e00:	2064      	movs	r0, #100	; 0x64
d03c4e02:	fab3 f383 	clz	r3, r3
d03c4e06:	9600      	str	r6, [sp, #0]
d03c4e08:	ea4f 0888 	mov.w	r8, r8, lsl #2
d03c4e0c:	f8df b2ac 	ldr.w	fp, [pc, #684]	; d03c50bc <ui_redraw_backbuffer+0x548>
d03c4e10:	095b      	lsrs	r3, r3, #5
d03c4e12:	fa5f f888 	uxtb.w	r8, r8
d03c4e16:	9302      	str	r3, [sp, #8]
d03c4e18:	4b9f      	ldr	r3, [pc, #636]	; (d03c5098 <ui_redraw_backbuffer+0x524>)
d03c4e1a:	9301      	str	r3, [sp, #4]
d03c4e1c:	2334      	movs	r3, #52	; 0x34
d03c4e1e:	f7fe fb4f 	bl	d03c34c0 <ui_create_button>
d03c4e22:	9703      	str	r7, [sp, #12]
d03c4e24:	782b      	ldrb	r3, [r5, #0]
d03c4e26:	2246      	movs	r2, #70	; 0x46
d03c4e28:	f44f 7194 	mov.w	r1, #296	; 0x128
d03c4e2c:	2065      	movs	r0, #101	; 0x65
d03c4e2e:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d03c4e32:	9600      	str	r6, [sp, #0]
d03c4e34:	f1dc 0300 	rsbs	r3, ip, #0
d03c4e38:	eb43 030c 	adc.w	r3, r3, ip
d03c4e3c:	9302      	str	r3, [sp, #8]
d03c4e3e:	4b97      	ldr	r3, [pc, #604]	; (d03c509c <ui_redraw_backbuffer+0x528>)
d03c4e40:	9301      	str	r3, [sp, #4]
d03c4e42:	2334      	movs	r3, #52	; 0x34
d03c4e44:	f7fe fb3c 	bl	d03c34c0 <ui_create_button>
d03c4e48:	9703      	str	r7, [sp, #12]
d03c4e4a:	782b      	ldrb	r3, [r5, #0]
d03c4e4c:	2246      	movs	r2, #70	; 0x46
d03c4e4e:	f44f 71ae 	mov.w	r1, #348	; 0x15c
d03c4e52:	2066      	movs	r0, #102	; 0x66
d03c4e54:	f1a3 0e02 	sub.w	lr, r3, #2
d03c4e58:	9600      	str	r6, [sp, #0]
d03c4e5a:	f1de 0300 	rsbs	r3, lr, #0
d03c4e5e:	eb43 030e 	adc.w	r3, r3, lr
d03c4e62:	9302      	str	r3, [sp, #8]
d03c4e64:	4b8e      	ldr	r3, [pc, #568]	; (d03c50a0 <ui_redraw_backbuffer+0x52c>)
d03c4e66:	9301      	str	r3, [sp, #4]
d03c4e68:	2334      	movs	r3, #52	; 0x34
d03c4e6a:	f7fe fb29 	bl	d03c34c0 <ui_create_button>
d03c4e6e:	9703      	str	r7, [sp, #12]
d03c4e70:	782b      	ldrb	r3, [r5, #0]
d03c4e72:	f44f 71c8 	mov.w	r1, #400	; 0x190
d03c4e76:	2246      	movs	r2, #70	; 0x46
d03c4e78:	2067      	movs	r0, #103	; 0x67
d03c4e7a:	f1a3 0903 	sub.w	r9, r3, #3
d03c4e7e:	9600      	str	r6, [sp, #0]
d03c4e80:	2578      	movs	r5, #120	; 0x78
d03c4e82:	267c      	movs	r6, #124	; 0x7c
d03c4e84:	f1d9 0300 	rsbs	r3, r9, #0
d03c4e88:	eb43 0309 	adc.w	r3, r3, r9
d03c4e8c:	9302      	str	r3, [sp, #8]
d03c4e8e:	4b85      	ldr	r3, [pc, #532]	; (d03c50a4 <ui_redraw_backbuffer+0x530>)
d03c4e90:	9301      	str	r3, [sp, #4]
d03c4e92:	2334      	movs	r3, #52	; 0x34
d03c4e94:	f7fe fb14 	bl	d03c34c0 <ui_create_button>
d03c4e98:	7b23      	ldrb	r3, [r4, #12]
d03c4e9a:	7b62      	ldrb	r2, [r4, #13]
d03c4e9c:	20eb      	movs	r0, #235	; 0xeb
d03c4e9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4ea2:	7ba2      	ldrb	r2, [r4, #14]
d03c4ea4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4ea8:	7be2      	ldrb	r2, [r4, #15]
d03c4eaa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4eae:	685b      	ldr	r3, [r3, #4]
d03c4eb0:	68db      	ldr	r3, [r3, #12]
d03c4eb2:	4798      	blx	r3
d03c4eb4:	7b23      	ldrb	r3, [r4, #12]
d03c4eb6:	7b62      	ldrb	r2, [r4, #13]
d03c4eb8:	2160      	movs	r1, #96	; 0x60
d03c4eba:	2036      	movs	r0, #54	; 0x36
d03c4ebc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4ec0:	7ba2      	ldrb	r2, [r4, #14]
d03c4ec2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4ec6:	7be2      	ldrb	r2, [r4, #15]
d03c4ec8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4ecc:	4a76      	ldr	r2, [pc, #472]	; (d03c50a8 <ui_redraw_backbuffer+0x534>)
d03c4ece:	685b      	ldr	r3, [r3, #4]
d03c4ed0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4ed2:	4798      	blx	r3
d03c4ed4:	4b75      	ldr	r3, [pc, #468]	; (d03c50ac <ui_redraw_backbuffer+0x538>)
d03c4ed6:	f813 9008 	ldrb.w	r9, [r3, r8]
d03c4eda:	f89b 3000 	ldrb.w	r3, [fp]
d03c4ede:	4543      	cmp	r3, r8
d03c4ee0:	d120      	bne.n	d03c4f24 <ui_redraw_backbuffer+0x3b0>
d03c4ee2:	7b23      	ldrb	r3, [r4, #12]
d03c4ee4:	20e5      	movs	r0, #229	; 0xe5
d03c4ee6:	7b62      	ldrb	r2, [r4, #13]
d03c4ee8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4eec:	7ba2      	ldrb	r2, [r4, #14]
d03c4eee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4ef2:	7be2      	ldrb	r2, [r4, #15]
d03c4ef4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4ef8:	685b      	ldr	r3, [r3, #4]
d03c4efa:	68db      	ldr	r3, [r3, #12]
d03c4efc:	4798      	blx	r3
d03c4efe:	7b23      	ldrb	r3, [r4, #12]
d03c4f00:	7b62      	ldrb	r2, [r4, #13]
d03c4f02:	1f71      	subs	r1, r6, #5
d03c4f04:	2018      	movs	r0, #24
d03c4f06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f0a:	7ba2      	ldrb	r2, [r4, #14]
d03c4f0c:	b209      	sxth	r1, r1
d03c4f0e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f12:	7be2      	ldrb	r2, [r4, #15]
d03c4f14:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f18:	f44f 72d2 	mov.w	r2, #420	; 0x1a4
d03c4f1c:	685b      	ldr	r3, [r3, #4]
d03c4f1e:	685f      	ldr	r7, [r3, #4]
d03c4f20:	2320      	movs	r3, #32
d03c4f22:	47b8      	blx	r7
d03c4f24:	f1b9 0f80 	cmp.w	r9, #128	; 0x80
d03c4f28:	f108 0701 	add.w	r7, r8, #1
d03c4f2c:	4a60      	ldr	r2, [pc, #384]	; (d03c50b0 <ui_redraw_backbuffer+0x53c>)
d03c4f2e:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c4f32:	bf98      	it	ls
d03c4f34:	4b5f      	ldrls	r3, [pc, #380]	; (d03c50b4 <ui_redraw_backbuffer+0x540>)
d03c4f36:	a808      	add	r0, sp, #32
d03c4f38:	bf8c      	ite	hi
d03c4f3a:	4b5f      	ldrhi	r3, [pc, #380]	; (d03c50b8 <ui_redraw_backbuffer+0x544>)
d03c4f3c:	f853 3029 	ldrls.w	r3, [r3, r9, lsl #2]
d03c4f40:	f8cd 9000 	str.w	r9, [sp]
d03c4f44:	9301      	str	r3, [sp, #4]
d03c4f46:	463b      	mov	r3, r7
d03c4f48:	f005 f83c 	bl	d03c9fc4 <sniprintf>
d03c4f4c:	7b23      	ldrb	r3, [r4, #12]
d03c4f4e:	7b62      	ldrb	r2, [r4, #13]
d03c4f50:	f1b8 0f09 	cmp.w	r8, #9
d03c4f54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f58:	7ba2      	ldrb	r2, [r4, #14]
d03c4f5a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f5e:	7be2      	ldrb	r2, [r4, #15]
d03c4f60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f64:	685b      	ldr	r3, [r3, #4]
d03c4f66:	68db      	ldr	r3, [r3, #12]
d03c4f68:	f000 808f 	beq.w	d03c508a <ui_redraw_backbuffer+0x516>
d03c4f6c:	4a53      	ldr	r2, [pc, #332]	; (d03c50bc <ui_redraw_backbuffer+0x548>)
d03c4f6e:	7810      	ldrb	r0, [r2, #0]
d03c4f70:	4540      	cmp	r0, r8
d03c4f72:	bf14      	ite	ne
d03c4f74:	20e7      	movne	r0, #231	; 0xe7
d03c4f76:	20e8      	moveq	r0, #232	; 0xe8
d03c4f78:	4798      	blx	r3
d03c4f7a:	7b23      	ldrb	r3, [r4, #12]
d03c4f7c:	7b62      	ldrb	r2, [r4, #13]
d03c4f7e:	4631      	mov	r1, r6
d03c4f80:	2034      	movs	r0, #52	; 0x34
d03c4f82:	f04f 0a01 	mov.w	sl, #1
d03c4f86:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c4f8a:	7ba2      	ldrb	r2, [r4, #14]
d03c4f8c:	f04f 081e 	mov.w	r8, #30
d03c4f90:	f04f 0900 	mov.w	r9, #0
d03c4f94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c4f98:	7be2      	ldrb	r2, [r4, #15]
d03c4f9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c4f9e:	aa08      	add	r2, sp, #32
d03c4fa0:	685b      	ldr	r3, [r3, #4]
d03c4fa2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c4fa4:	4798      	blx	r3
d03c4fa6:	1f32      	subs	r2, r6, #4
d03c4fa8:	4b45      	ldr	r3, [pc, #276]	; (d03c50c0 <ui_redraw_backbuffer+0x54c>)
d03c4faa:	4628      	mov	r0, r5
d03c4fac:	b212      	sxth	r2, r2
d03c4fae:	f44f 71ab 	mov.w	r1, #342	; 0x156
d03c4fb2:	9301      	str	r3, [sp, #4]
d03c4fb4:	232a      	movs	r3, #42	; 0x2a
d03c4fb6:	f8cd 8000 	str.w	r8, [sp]
d03c4fba:	3624      	adds	r6, #36	; 0x24
d03c4fbc:	f8cd a00c 	str.w	sl, [sp, #12]
d03c4fc0:	f8cd 9008 	str.w	r9, [sp, #8]
d03c4fc4:	9205      	str	r2, [sp, #20]
d03c4fc6:	f7fe fa7b 	bl	d03c34c0 <ui_create_button>
d03c4fca:	f105 0014 	add.w	r0, r5, #20
d03c4fce:	4455      	add	r5, sl
d03c4fd0:	4b3c      	ldr	r3, [pc, #240]	; (d03c50c4 <ui_redraw_backbuffer+0x550>)
d03c4fd2:	f44f 71c6 	mov.w	r1, #396	; 0x18c
d03c4fd6:	b2ad      	uxth	r5, r5
d03c4fd8:	f8cd 8000 	str.w	r8, [sp]
d03c4fdc:	9301      	str	r3, [sp, #4]
d03c4fde:	b280      	uxth	r0, r0
d03c4fe0:	232a      	movs	r3, #42	; 0x2a
d03c4fe2:	9a05      	ldr	r2, [sp, #20]
d03c4fe4:	f8cd a00c 	str.w	sl, [sp, #12]
d03c4fe8:	fa5f f887 	uxtb.w	r8, r7
d03c4fec:	f8cd 9008 	str.w	r9, [sp, #8]
d03c4ff0:	f7fe fa66 	bl	d03c34c0 <ui_create_button>
d03c4ff4:	2d7c      	cmp	r5, #124	; 0x7c
d03c4ff6:	f47f af6d 	bne.w	d03c4ed4 <ui_redraw_backbuffer+0x360>
d03c4ffa:	4b33      	ldr	r3, [pc, #204]	; (d03c50c8 <ui_redraw_backbuffer+0x554>)
d03c4ffc:	781b      	ldrb	r3, [r3, #0]
d03c4ffe:	2b05      	cmp	r3, #5
d03c5000:	d027      	beq.n	d03c5052 <ui_redraw_backbuffer+0x4de>
d03c5002:	2400      	movs	r4, #0
d03c5004:	2520      	movs	r5, #32
d03c5006:	4b31      	ldr	r3, [pc, #196]	; (d03c50cc <ui_redraw_backbuffer+0x558>)
d03c5008:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c500c:	2108      	movs	r1, #8
d03c500e:	2007      	movs	r0, #7
d03c5010:	9301      	str	r3, [sp, #4]
d03c5012:	2346      	movs	r3, #70	; 0x46
d03c5014:	9403      	str	r4, [sp, #12]
d03c5016:	9402      	str	r4, [sp, #8]
d03c5018:	9500      	str	r5, [sp, #0]
d03c501a:	f7fe fa51 	bl	d03c34c0 <ui_create_button>
d03c501e:	4b2c      	ldr	r3, [pc, #176]	; (d03c50d0 <ui_redraw_backbuffer+0x55c>)
d03c5020:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c5024:	f44f 71b0 	mov.w	r1, #352	; 0x160
d03c5028:	2008      	movs	r0, #8
d03c502a:	9301      	str	r3, [sp, #4]
d03c502c:	9403      	str	r4, [sp, #12]
d03c502e:	2336      	movs	r3, #54	; 0x36
d03c5030:	9402      	str	r4, [sp, #8]
d03c5032:	9500      	str	r5, [sp, #0]
d03c5034:	f7fe fa44 	bl	d03c34c0 <ui_create_button>
d03c5038:	4b26      	ldr	r3, [pc, #152]	; (d03c50d4 <ui_redraw_backbuffer+0x560>)
d03c503a:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c503e:	f44f 71ce 	mov.w	r1, #412	; 0x19c
d03c5042:	9301      	str	r3, [sp, #4]
d03c5044:	2009      	movs	r0, #9
d03c5046:	2336      	movs	r3, #54	; 0x36
d03c5048:	9403      	str	r4, [sp, #12]
d03c504a:	9402      	str	r4, [sp, #8]
d03c504c:	9500      	str	r5, [sp, #0]
d03c504e:	f7fe fa37 	bl	d03c34c0 <ui_create_button>
d03c5052:	4b21      	ldr	r3, [pc, #132]	; (d03c50d8 <ui_redraw_backbuffer+0x564>)
d03c5054:	781b      	ldrb	r3, [r3, #0]
d03c5056:	b10b      	cbz	r3, d03c505c <ui_redraw_backbuffer+0x4e8>
d03c5058:	f7fe fc9a 	bl	d03c3990 <ui_draw_confirm_modal.part.0>
d03c505c:	f7fe fd6a 	bl	d03c3b34 <ui_draw_dialog>
d03c5060:	4a1e      	ldr	r2, [pc, #120]	; (d03c50dc <ui_redraw_backbuffer+0x568>)
d03c5062:	ee18 0a10 	vmov	r0, s16
d03c5066:	7b13      	ldrb	r3, [r2, #12]
d03c5068:	7b51      	ldrb	r1, [r2, #13]
d03c506a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c506e:	7b91      	ldrb	r1, [r2, #14]
d03c5070:	7bd2      	ldrb	r2, [r2, #15]
d03c5072:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c5076:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c507a:	681b      	ldr	r3, [r3, #0]
d03c507c:	699b      	ldr	r3, [r3, #24]
d03c507e:	4798      	blx	r3
d03c5080:	b021      	add	sp, #132	; 0x84
d03c5082:	ecbd 8b02 	vpop	{d8}
d03c5086:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c508a:	20f7      	movs	r0, #247	; 0xf7
d03c508c:	e774      	b.n	d03c4f78 <ui_redraw_backbuffer+0x404>
d03c508e:	bf00      	nop
d03c5090:	d03cda32 	.word	0xd03cda32
d03c5094:	d03cb885 	.word	0xd03cb885
d03c5098:	d03cb899 	.word	0xd03cb899
d03c509c:	d03cb89d 	.word	0xd03cb89d
d03c50a0:	d03cb8a1 	.word	0xd03cb8a1
d03c50a4:	d03cb8a6 	.word	0xd03cb8a6
d03c50a8:	d03cb8ac 	.word	0xd03cb8ac
d03c50ac:	d03ccd64 	.word	0xd03ccd64
d03c50b0:	d03cb8c1 	.word	0xd03cb8c1
d03c50b4:	d03cc2e4 	.word	0xd03cc2e4
d03c50b8:	d03cb589 	.word	0xd03cb589
d03c50bc:	d03cf3ca 	.word	0xd03cf3ca
d03c50c0:	d03cb808 	.word	0xd03cb808
d03c50c4:	d03cb80a 	.word	0xd03cb80a
d03c50c8:	d03cf330 	.word	0xd03cf330
d03c50cc:	d03cbab7 	.word	0xd03cbab7
d03c50d0:	d03cbabd 	.word	0xd03cbabd
d03c50d4:	d03cbac2 	.word	0xd03cbac2
d03c50d8:	d03cda33 	.word	0xd03cda33
d03c50dc:	2001f000 	.word	0x2001f000
d03c50e0:	4b8e      	ldr	r3, [pc, #568]	; (d03c531c <ui_redraw_backbuffer+0x7a8>)
d03c50e2:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c50e6:	4d8e      	ldr	r5, [pc, #568]	; (d03c5320 <ui_redraw_backbuffer+0x7ac>)
d03c50e8:	214e      	movs	r1, #78	; 0x4e
d03c50ea:	f893 8000 	ldrb.w	r8, [r3]
d03c50ee:	2010      	movs	r0, #16
d03c50f0:	4b8c      	ldr	r3, [pc, #560]	; (d03c5324 <ui_redraw_backbuffer+0x7b0>)
d03c50f2:	2701      	movs	r7, #1
d03c50f4:	4c8c      	ldr	r4, [pc, #560]	; (d03c5328 <ui_redraw_backbuffer+0x7b4>)
d03c50f6:	2600      	movs	r6, #0
d03c50f8:	9300      	str	r3, [sp, #0]
d03c50fa:	2334      	movs	r3, #52	; 0x34
d03c50fc:	f7fb fe32 	bl	d03c0d64 <ui_panel>
d03c5100:	882b      	ldrh	r3, [r5, #0]
d03c5102:	2160      	movs	r1, #96	; 0x60
d03c5104:	4a89      	ldr	r2, [pc, #548]	; (d03c532c <ui_redraw_backbuffer+0x7b8>)
d03c5106:	a808      	add	r0, sp, #32
d03c5108:	f8df a238 	ldr.w	sl, [pc, #568]	; d03c5344 <ui_redraw_backbuffer+0x7d0>
d03c510c:	f004 ff5a 	bl	d03c9fc4 <sniprintf>
d03c5110:	7b23      	ldrb	r3, [r4, #12]
d03c5112:	7b62      	ldrb	r2, [r4, #13]
d03c5114:	20e7      	movs	r0, #231	; 0xe7
d03c5116:	f8df 9230 	ldr.w	r9, [pc, #560]	; d03c5348 <ui_redraw_backbuffer+0x7d4>
d03c511a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c511e:	7ba2      	ldrb	r2, [r4, #14]
d03c5120:	f8df b228 	ldr.w	fp, [pc, #552]	; d03c534c <ui_redraw_backbuffer+0x7d8>
d03c5124:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5128:	7be2      	ldrb	r2, [r4, #15]
d03c512a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c512e:	685b      	ldr	r3, [r3, #4]
d03c5130:	68db      	ldr	r3, [r3, #12]
d03c5132:	4798      	blx	r3
d03c5134:	7b23      	ldrb	r3, [r4, #12]
d03c5136:	7b62      	ldrb	r2, [r4, #13]
d03c5138:	216a      	movs	r1, #106	; 0x6a
d03c513a:	2020      	movs	r0, #32
d03c513c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5140:	7ba2      	ldrb	r2, [r4, #14]
d03c5142:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5146:	7be2      	ldrb	r2, [r4, #15]
d03c5148:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c514c:	aa08      	add	r2, sp, #32
d03c514e:	685b      	ldr	r3, [r3, #4]
d03c5150:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5152:	4798      	blx	r3
d03c5154:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03c5158:	22f0      	movs	r2, #240	; 0xf0
d03c515a:	216c      	movs	r1, #108	; 0x6c
d03c515c:	9300      	str	r3, [sp, #0]
d03c515e:	205c      	movs	r0, #92	; 0x5c
d03c5160:	882b      	ldrh	r3, [r5, #0]
d03c5162:	2520      	movs	r5, #32
d03c5164:	f7fb fe58 	bl	d03c0e18 <ui_value_bar>
d03c5168:	2322      	movs	r3, #34	; 0x22
d03c516a:	2258      	movs	r2, #88	; 0x58
d03c516c:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c5170:	200e      	movs	r0, #14
d03c5172:	9703      	str	r7, [sp, #12]
d03c5174:	9602      	str	r6, [sp, #8]
d03c5176:	f8cd a004 	str.w	sl, [sp, #4]
d03c517a:	9500      	str	r5, [sp, #0]
d03c517c:	f7fe f9a0 	bl	d03c34c0 <ui_create_button>
d03c5180:	2322      	movs	r3, #34	; 0x22
d03c5182:	2258      	movs	r2, #88	; 0x58
d03c5184:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c5188:	200f      	movs	r0, #15
d03c518a:	9703      	str	r7, [sp, #12]
d03c518c:	9602      	str	r6, [sp, #8]
d03c518e:	e9cd 5900 	strd	r5, r9, [sp]
d03c5192:	f7fe f995 	bl	d03c34c0 <ui_create_button>
d03c5196:	4b66      	ldr	r3, [pc, #408]	; (d03c5330 <ui_redraw_backbuffer+0x7bc>)
d03c5198:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c519c:	2184      	movs	r1, #132	; 0x84
d03c519e:	2010      	movs	r0, #16
d03c51a0:	9300      	str	r3, [sp, #0]
d03c51a2:	2334      	movs	r3, #52	; 0x34
d03c51a4:	f7fb fdde 	bl	d03c0d64 <ui_panel>
d03c51a8:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c51ac:	2160      	movs	r1, #96	; 0x60
d03c51ae:	4a61      	ldr	r2, [pc, #388]	; (d03c5334 <ui_redraw_backbuffer+0x7c0>)
d03c51b0:	9300      	str	r3, [sp, #0]
d03c51b2:	eb0d 0005 	add.w	r0, sp, r5
d03c51b6:	eb08 0307 	add.w	r3, r8, r7
d03c51ba:	f004 ff03 	bl	d03c9fc4 <sniprintf>
d03c51be:	7b23      	ldrb	r3, [r4, #12]
d03c51c0:	7b62      	ldrb	r2, [r4, #13]
d03c51c2:	20e7      	movs	r0, #231	; 0xe7
d03c51c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c51c8:	7ba2      	ldrb	r2, [r4, #14]
d03c51ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c51ce:	7be2      	ldrb	r2, [r4, #15]
d03c51d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c51d4:	685b      	ldr	r3, [r3, #4]
d03c51d6:	68db      	ldr	r3, [r3, #12]
d03c51d8:	4798      	blx	r3
d03c51da:	7b23      	ldrb	r3, [r4, #12]
d03c51dc:	7b62      	ldrb	r2, [r4, #13]
d03c51de:	21a0      	movs	r1, #160	; 0xa0
d03c51e0:	4628      	mov	r0, r5
d03c51e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c51e6:	7ba2      	ldrb	r2, [r4, #14]
d03c51e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c51ec:	7be2      	ldrb	r2, [r4, #15]
d03c51ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c51f2:	eb0d 0205 	add.w	r2, sp, r5
d03c51f6:	685b      	ldr	r3, [r3, #4]
d03c51f8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c51fa:	4798      	blx	r3
d03c51fc:	237f      	movs	r3, #127	; 0x7f
d03c51fe:	22cc      	movs	r2, #204	; 0xcc
d03c5200:	21a2      	movs	r1, #162	; 0xa2
d03c5202:	2080      	movs	r0, #128	; 0x80
d03c5204:	9300      	str	r3, [sp, #0]
d03c5206:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c520a:	f7fb fe05 	bl	d03c0e18 <ui_value_bar>
d03c520e:	2322      	movs	r3, #34	; 0x22
d03c5210:	228e      	movs	r2, #142	; 0x8e
d03c5212:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c5216:	2010      	movs	r0, #16
d03c5218:	9703      	str	r7, [sp, #12]
d03c521a:	9602      	str	r6, [sp, #8]
d03c521c:	f8df b130 	ldr.w	fp, [pc, #304]	; d03c5350 <ui_redraw_backbuffer+0x7dc>
d03c5220:	e9cd 5a00 	strd	r5, sl, [sp]
d03c5224:	f7fe f94c 	bl	d03c34c0 <ui_create_button>
d03c5228:	2322      	movs	r3, #34	; 0x22
d03c522a:	228e      	movs	r2, #142	; 0x8e
d03c522c:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c5230:	2011      	movs	r0, #17
d03c5232:	9703      	str	r7, [sp, #12]
d03c5234:	9602      	str	r6, [sp, #8]
d03c5236:	e9cd 5900 	strd	r5, r9, [sp]
d03c523a:	f7fe f941 	bl	d03c34c0 <ui_create_button>
d03c523e:	4b3e      	ldr	r3, [pc, #248]	; (d03c5338 <ui_redraw_backbuffer+0x7c4>)
d03c5240:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c5244:	21ba      	movs	r1, #186	; 0xba
d03c5246:	2010      	movs	r0, #16
d03c5248:	9300      	str	r3, [sp, #0]
d03c524a:	2334      	movs	r3, #52	; 0x34
d03c524c:	f7fb fd8a 	bl	d03c0d64 <ui_panel>
d03c5250:	2160      	movs	r1, #96	; 0x60
d03c5252:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c5256:	eb0d 0005 	add.w	r0, sp, r5
d03c525a:	4a38      	ldr	r2, [pc, #224]	; (d03c533c <ui_redraw_backbuffer+0x7c8>)
d03c525c:	f004 feb2 	bl	d03c9fc4 <sniprintf>
d03c5260:	7b23      	ldrb	r3, [r4, #12]
d03c5262:	7b62      	ldrb	r2, [r4, #13]
d03c5264:	20e7      	movs	r0, #231	; 0xe7
d03c5266:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c526a:	7ba2      	ldrb	r2, [r4, #14]
d03c526c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5270:	7be2      	ldrb	r2, [r4, #15]
d03c5272:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5276:	685b      	ldr	r3, [r3, #4]
d03c5278:	68db      	ldr	r3, [r3, #12]
d03c527a:	4798      	blx	r3
d03c527c:	7b23      	ldrb	r3, [r4, #12]
d03c527e:	7b62      	ldrb	r2, [r4, #13]
d03c5280:	21d6      	movs	r1, #214	; 0xd6
d03c5282:	4628      	mov	r0, r5
d03c5284:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5288:	7ba2      	ldrb	r2, [r4, #14]
d03c528a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c528e:	7be2      	ldrb	r2, [r4, #15]
d03c5290:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5294:	eb0d 0205 	add.w	r2, sp, r5
d03c5298:	685b      	ldr	r3, [r3, #4]
d03c529a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c529c:	4798      	blx	r3
d03c529e:	237f      	movs	r3, #127	; 0x7f
d03c52a0:	22cc      	movs	r2, #204	; 0xcc
d03c52a2:	21d8      	movs	r1, #216	; 0xd8
d03c52a4:	2080      	movs	r0, #128	; 0x80
d03c52a6:	9300      	str	r3, [sp, #0]
d03c52a8:	f81b 3008 	ldrb.w	r3, [fp, r8]
d03c52ac:	f7fb fdb4 	bl	d03c0e18 <ui_value_bar>
d03c52b0:	2322      	movs	r3, #34	; 0x22
d03c52b2:	22c4      	movs	r2, #196	; 0xc4
d03c52b4:	f44f 71b2 	mov.w	r1, #356	; 0x164
d03c52b8:	2012      	movs	r0, #18
d03c52ba:	9703      	str	r7, [sp, #12]
d03c52bc:	9602      	str	r6, [sp, #8]
d03c52be:	e9cd 5a00 	strd	r5, sl, [sp]
d03c52c2:	f7fe f8fd 	bl	d03c34c0 <ui_create_button>
d03c52c6:	f44f 71c7 	mov.w	r1, #398	; 0x18e
d03c52ca:	2322      	movs	r3, #34	; 0x22
d03c52cc:	22c4      	movs	r2, #196	; 0xc4
d03c52ce:	2013      	movs	r0, #19
d03c52d0:	9703      	str	r7, [sp, #12]
d03c52d2:	9602      	str	r6, [sp, #8]
d03c52d4:	e9cd 5900 	strd	r5, r9, [sp]
d03c52d8:	f7fe f8f2 	bl	d03c34c0 <ui_create_button>
d03c52dc:	7b23      	ldrb	r3, [r4, #12]
d03c52de:	7b62      	ldrb	r2, [r4, #13]
d03c52e0:	20e5      	movs	r0, #229	; 0xe5
d03c52e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c52e6:	7ba2      	ldrb	r2, [r4, #14]
d03c52e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c52ec:	7be2      	ldrb	r2, [r4, #15]
d03c52ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c52f2:	685b      	ldr	r3, [r3, #4]
d03c52f4:	68db      	ldr	r3, [r3, #12]
d03c52f6:	4798      	blx	r3
d03c52f8:	7b23      	ldrb	r3, [r4, #12]
d03c52fa:	7b62      	ldrb	r2, [r4, #13]
d03c52fc:	21fc      	movs	r1, #252	; 0xfc
d03c52fe:	201a      	movs	r0, #26
d03c5300:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5304:	7ba2      	ldrb	r2, [r4, #14]
d03c5306:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c530a:	7be2      	ldrb	r2, [r4, #15]
d03c530c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5310:	4a0b      	ldr	r2, [pc, #44]	; (d03c5340 <ui_redraw_backbuffer+0x7cc>)
d03c5312:	685b      	ldr	r3, [r3, #4]
d03c5314:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5316:	4798      	blx	r3
d03c5318:	e66f      	b.n	d03c4ffa <ui_redraw_backbuffer+0x486>
d03c531a:	bf00      	nop
d03c531c:	d03cf3ca 	.word	0xd03cf3ca
d03c5320:	d03ccf8e 	.word	0xd03ccf8e
d03c5324:	d03cb8d8 	.word	0xd03cb8d8
d03c5328:	2001f000 	.word	0x2001f000
d03c532c:	d03cb9b1 	.word	0xd03cb9b1
d03c5330:	d03cb8eb 	.word	0xd03cb8eb
d03c5334:	d03cb903 	.word	0xd03cb903
d03c5338:	d03cb910 	.word	0xd03cb910
d03c533c:	d03cb92c 	.word	0xd03cb92c
d03c5340:	d03cb935 	.word	0xd03cb935
d03c5344:	d03cb808 	.word	0xd03cb808
d03c5348:	d03cb80a 	.word	0xd03cb80a
d03c534c:	d03ccd74 	.word	0xd03ccd74
d03c5350:	d03ccd54 	.word	0xd03ccd54
d03c5354:	4b77      	ldr	r3, [pc, #476]	; (d03c5534 <ui_redraw_backbuffer+0x9c0>)
d03c5356:	2142      	movs	r1, #66	; 0x42
d03c5358:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c535c:	2010      	movs	r0, #16
d03c535e:	9300      	str	r3, [sp, #0]
d03c5360:	23ce      	movs	r3, #206	; 0xce
d03c5362:	f7fb fcff 	bl	d03c0d64 <ui_panel>
d03c5366:	7b23      	ldrb	r3, [r4, #12]
d03c5368:	7b62      	ldrb	r2, [r4, #13]
d03c536a:	20e7      	movs	r0, #231	; 0xe7
d03c536c:	4d72      	ldr	r5, [pc, #456]	; (d03c5538 <ui_redraw_backbuffer+0x9c4>)
d03c536e:	2600      	movs	r6, #0
d03c5370:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5374:	7ba2      	ldrb	r2, [r4, #14]
d03c5376:	4f71      	ldr	r7, [pc, #452]	; (d03c553c <ui_redraw_backbuffer+0x9c8>)
d03c5378:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c537c:	7be2      	ldrb	r2, [r4, #15]
d03c537e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5382:	685b      	ldr	r3, [r3, #4]
d03c5384:	68db      	ldr	r3, [r3, #12]
d03c5386:	4798      	blx	r3
d03c5388:	7b23      	ldrb	r3, [r4, #12]
d03c538a:	7b62      	ldrb	r2, [r4, #13]
d03c538c:	2164      	movs	r1, #100	; 0x64
d03c538e:	2020      	movs	r0, #32
d03c5390:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5394:	7ba2      	ldrb	r2, [r4, #14]
d03c5396:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c539a:	7be2      	ldrb	r2, [r4, #15]
d03c539c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c53a0:	4a67      	ldr	r2, [pc, #412]	; (d03c5540 <ui_redraw_backbuffer+0x9cc>)
d03c53a2:	685b      	ldr	r3, [r3, #4]
d03c53a4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c53a6:	4798      	blx	r3
d03c53a8:	7829      	ldrb	r1, [r5, #0]
d03c53aa:	4a66      	ldr	r2, [pc, #408]	; (d03c5544 <ui_redraw_backbuffer+0x9d0>)
d03c53ac:	a808      	add	r0, sp, #32
d03c53ae:	4b66      	ldr	r3, [pc, #408]	; (d03c5548 <ui_redraw_backbuffer+0x9d4>)
d03c53b0:	2900      	cmp	r1, #0
d03c53b2:	bf08      	it	eq
d03c53b4:	4613      	moveq	r3, r2
d03c53b6:	2160      	movs	r1, #96	; 0x60
d03c53b8:	4a64      	ldr	r2, [pc, #400]	; (d03c554c <ui_redraw_backbuffer+0x9d8>)
d03c53ba:	f004 fe03 	bl	d03c9fc4 <sniprintf>
d03c53be:	7b23      	ldrb	r3, [r4, #12]
d03c53c0:	7b62      	ldrb	r2, [r4, #13]
d03c53c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c53c6:	7ba2      	ldrb	r2, [r4, #14]
d03c53c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c53cc:	7be2      	ldrb	r2, [r4, #15]
d03c53ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c53d2:	782a      	ldrb	r2, [r5, #0]
d03c53d4:	685b      	ldr	r3, [r3, #4]
d03c53d6:	2a00      	cmp	r2, #0
d03c53d8:	68db      	ldr	r3, [r3, #12]
d03c53da:	bf14      	ite	ne
d03c53dc:	20f4      	movne	r0, #244	; 0xf4
d03c53de:	20f2      	moveq	r0, #242	; 0xf2
d03c53e0:	4798      	blx	r3
d03c53e2:	7b23      	ldrb	r3, [r4, #12]
d03c53e4:	7b62      	ldrb	r2, [r4, #13]
d03c53e6:	218e      	movs	r1, #142	; 0x8e
d03c53e8:	2020      	movs	r0, #32
d03c53ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c53ee:	7ba2      	ldrb	r2, [r4, #14]
d03c53f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c53f4:	7be2      	ldrb	r2, [r4, #15]
d03c53f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c53fa:	aa08      	add	r2, sp, #32
d03c53fc:	685b      	ldr	r3, [r3, #4]
d03c53fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5400:	4798      	blx	r3
d03c5402:	782a      	ldrb	r2, [r5, #0]
d03c5404:	4952      	ldr	r1, [pc, #328]	; (d03c5550 <ui_redraw_backbuffer+0x9dc>)
d03c5406:	2520      	movs	r5, #32
d03c5408:	4b52      	ldr	r3, [pc, #328]	; (d03c5554 <ui_redraw_backbuffer+0x9e0>)
d03c540a:	2014      	movs	r0, #20
d03c540c:	9202      	str	r2, [sp, #8]
d03c540e:	2a00      	cmp	r2, #0
d03c5410:	bf08      	it	eq
d03c5412:	460b      	moveq	r3, r1
d03c5414:	9603      	str	r6, [sp, #12]
d03c5416:	2284      	movs	r2, #132	; 0x84
d03c5418:	f44f 71a6 	mov.w	r1, #332	; 0x14c
d03c541c:	9301      	str	r3, [sp, #4]
d03c541e:	2358      	movs	r3, #88	; 0x58
d03c5420:	9500      	str	r5, [sp, #0]
d03c5422:	f7fe f84d 	bl	d03c34c0 <ui_create_button>
d03c5426:	883b      	ldrh	r3, [r7, #0]
d03c5428:	2160      	movs	r1, #96	; 0x60
d03c542a:	4a4b      	ldr	r2, [pc, #300]	; (d03c5558 <ui_redraw_backbuffer+0x9e4>)
d03c542c:	eb0d 0005 	add.w	r0, sp, r5
d03c5430:	f004 fdc8 	bl	d03c9fc4 <sniprintf>
d03c5434:	7b23      	ldrb	r3, [r4, #12]
d03c5436:	7b62      	ldrb	r2, [r4, #13]
d03c5438:	20e7      	movs	r0, #231	; 0xe7
d03c543a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c543e:	7ba2      	ldrb	r2, [r4, #14]
d03c5440:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5444:	7be2      	ldrb	r2, [r4, #15]
d03c5446:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c544a:	685b      	ldr	r3, [r3, #4]
d03c544c:	68db      	ldr	r3, [r3, #12]
d03c544e:	4798      	blx	r3
d03c5450:	7b23      	ldrb	r3, [r4, #12]
d03c5452:	7b62      	ldrb	r2, [r4, #13]
d03c5454:	21b2      	movs	r1, #178	; 0xb2
d03c5456:	4628      	mov	r0, r5
d03c5458:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c545c:	7ba2      	ldrb	r2, [r4, #14]
d03c545e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5462:	7be2      	ldrb	r2, [r4, #15]
d03c5464:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5468:	eb0d 0205 	add.w	r2, sp, r5
d03c546c:	685b      	ldr	r3, [r3, #4]
d03c546e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5470:	4798      	blx	r3
d03c5472:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03c5476:	2296      	movs	r2, #150	; 0x96
d03c5478:	21b4      	movs	r1, #180	; 0xb4
d03c547a:	20a0      	movs	r0, #160	; 0xa0
d03c547c:	9300      	str	r3, [sp, #0]
d03c547e:	883b      	ldrh	r3, [r7, #0]
d03c5480:	2701      	movs	r7, #1
d03c5482:	f7fb fcc9 	bl	d03c0e18 <ui_value_bar>
d03c5486:	4b35      	ldr	r3, [pc, #212]	; (d03c555c <ui_redraw_backbuffer+0x9e8>)
d03c5488:	22a8      	movs	r2, #168	; 0xa8
d03c548a:	f44f 71a8 	mov.w	r1, #336	; 0x150
d03c548e:	2015      	movs	r0, #21
d03c5490:	9301      	str	r3, [sp, #4]
d03c5492:	9703      	str	r7, [sp, #12]
d03c5494:	2322      	movs	r3, #34	; 0x22
d03c5496:	9602      	str	r6, [sp, #8]
d03c5498:	9500      	str	r5, [sp, #0]
d03c549a:	f7fe f811 	bl	d03c34c0 <ui_create_button>
d03c549e:	4b30      	ldr	r3, [pc, #192]	; (d03c5560 <ui_redraw_backbuffer+0x9ec>)
d03c54a0:	f44f 71bd 	mov.w	r1, #378	; 0x17a
d03c54a4:	22a8      	movs	r2, #168	; 0xa8
d03c54a6:	2016      	movs	r0, #22
d03c54a8:	9301      	str	r3, [sp, #4]
d03c54aa:	9703      	str	r7, [sp, #12]
d03c54ac:	2322      	movs	r3, #34	; 0x22
d03c54ae:	9602      	str	r6, [sp, #8]
d03c54b0:	9500      	str	r5, [sp, #0]
d03c54b2:	f7fe f805 	bl	d03c34c0 <ui_create_button>
d03c54b6:	7b23      	ldrb	r3, [r4, #12]
d03c54b8:	7b62      	ldrb	r2, [r4, #13]
d03c54ba:	20e5      	movs	r0, #229	; 0xe5
d03c54bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c54c0:	7ba2      	ldrb	r2, [r4, #14]
d03c54c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c54c6:	7be2      	ldrb	r2, [r4, #15]
d03c54c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c54cc:	685b      	ldr	r3, [r3, #4]
d03c54ce:	68db      	ldr	r3, [r3, #12]
d03c54d0:	4798      	blx	r3
d03c54d2:	7b23      	ldrb	r3, [r4, #12]
d03c54d4:	7b62      	ldrb	r2, [r4, #13]
d03c54d6:	21d4      	movs	r1, #212	; 0xd4
d03c54d8:	4628      	mov	r0, r5
d03c54da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c54de:	7ba2      	ldrb	r2, [r4, #14]
d03c54e0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c54e4:	7be2      	ldrb	r2, [r4, #15]
d03c54e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c54ea:	4a1e      	ldr	r2, [pc, #120]	; (d03c5564 <ui_redraw_backbuffer+0x9f0>)
d03c54ec:	685b      	ldr	r3, [r3, #4]
d03c54ee:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c54f0:	4798      	blx	r3
d03c54f2:	7b23      	ldrb	r3, [r4, #12]
d03c54f4:	7b62      	ldrb	r2, [r4, #13]
d03c54f6:	21e4      	movs	r1, #228	; 0xe4
d03c54f8:	4628      	mov	r0, r5
d03c54fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c54fe:	7ba2      	ldrb	r2, [r4, #14]
d03c5500:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5504:	7be2      	ldrb	r2, [r4, #15]
d03c5506:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c550a:	4a17      	ldr	r2, [pc, #92]	; (d03c5568 <ui_redraw_backbuffer+0x9f4>)
d03c550c:	685b      	ldr	r3, [r3, #4]
d03c550e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5510:	4798      	blx	r3
d03c5512:	7b23      	ldrb	r3, [r4, #12]
d03c5514:	7b62      	ldrb	r2, [r4, #13]
d03c5516:	21f4      	movs	r1, #244	; 0xf4
d03c5518:	4628      	mov	r0, r5
d03c551a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c551e:	7ba2      	ldrb	r2, [r4, #14]
d03c5520:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5524:	7be2      	ldrb	r2, [r4, #15]
d03c5526:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c552a:	4a10      	ldr	r2, [pc, #64]	; (d03c556c <ui_redraw_backbuffer+0x9f8>)
d03c552c:	685b      	ldr	r3, [r3, #4]
d03c552e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5530:	e6f1      	b.n	d03c5316 <ui_redraw_backbuffer+0x7a2>
d03c5532:	bf00      	nop
d03c5534:	d03cb95f 	.word	0xd03cb95f
d03c5538:	d03ccd88 	.word	0xd03ccd88
d03c553c:	d03ccd8a 	.word	0xd03ccd8a
d03c5540:	d03cb973 	.word	0xd03cb973
d03c5544:	d03cb814 	.word	0xd03cb814
d03c5548:	d03cb80c 	.word	0xd03cb80c
d03c554c:	d03cb99d 	.word	0xd03cb99d
d03c5550:	d03cb81f 	.word	0xd03cb81f
d03c5554:	d03cb81a 	.word	0xd03cb81a
d03c5558:	d03cb9a7 	.word	0xd03cb9a7
d03c555c:	d03cb808 	.word	0xd03cb808
d03c5560:	d03cb80a 	.word	0xd03cb80a
d03c5564:	d03cb9b6 	.word	0xd03cb9b6
d03c5568:	d03cb9d7 	.word	0xd03cb9d7
d03c556c:	d03cb9f5 	.word	0xd03cb9f5
d03c5570:	4b6a      	ldr	r3, [pc, #424]	; (d03c571c <ui_redraw_backbuffer+0xba8>)
d03c5572:	f8df 81e0 	ldr.w	r8, [pc, #480]	; d03c5754 <ui_redraw_backbuffer+0xbe0>
d03c5576:	781e      	ldrb	r6, [r3, #0]
d03c5578:	4b69      	ldr	r3, [pc, #420]	; (d03c5720 <ui_redraw_backbuffer+0xbac>)
d03c557a:	5d9d      	ldrb	r5, [r3, r6]
d03c557c:	4b69      	ldr	r3, [pc, #420]	; (d03c5724 <ui_redraw_backbuffer+0xbb0>)
d03c557e:	781b      	ldrb	r3, [r3, #0]
d03c5580:	2b00      	cmp	r3, #0
d03c5582:	f040 809c 	bne.w	d03c56be <ui_redraw_backbuffer+0xb4a>
d03c5586:	f888 3000 	strb.w	r3, [r8]
d03c558a:	4b67      	ldr	r3, [pc, #412]	; (d03c5728 <ui_redraw_backbuffer+0xbb4>)
d03c558c:	9300      	str	r3, [sp, #0]
d03c558e:	f44f 72df 	mov.w	r2, #446	; 0x1be
d03c5592:	23ce      	movs	r3, #206	; 0xce
d03c5594:	2142      	movs	r1, #66	; 0x42
d03c5596:	2010      	movs	r0, #16
d03c5598:	f7fb fbe4 	bl	d03c0d64 <ui_panel>
d03c559c:	f898 3000 	ldrb.w	r3, [r8]
d03c55a0:	b1f3      	cbz	r3, d03c55e0 <ui_redraw_backbuffer+0xa6c>
d03c55a2:	7b23      	ldrb	r3, [r4, #12]
d03c55a4:	20f0      	movs	r0, #240	; 0xf0
d03c55a6:	7b62      	ldrb	r2, [r4, #13]
d03c55a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c55ac:	7ba2      	ldrb	r2, [r4, #14]
d03c55ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c55b2:	7be2      	ldrb	r2, [r4, #15]
d03c55b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c55b8:	685b      	ldr	r3, [r3, #4]
d03c55ba:	68db      	ldr	r3, [r3, #12]
d03c55bc:	4798      	blx	r3
d03c55be:	7b22      	ldrb	r2, [r4, #12]
d03c55c0:	7b63      	ldrb	r3, [r4, #13]
d03c55c2:	2183      	movs	r1, #131	; 0x83
d03c55c4:	201a      	movs	r0, #26
d03c55c6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c55ca:	7ba3      	ldrb	r3, [r4, #14]
d03c55cc:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c55d0:	7be3      	ldrb	r3, [r4, #15]
d03c55d2:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c55d6:	6853      	ldr	r3, [r2, #4]
d03c55d8:	22b8      	movs	r2, #184	; 0xb8
d03c55da:	685f      	ldr	r7, [r3, #4]
d03c55dc:	2384      	movs	r3, #132	; 0x84
d03c55de:	47b8      	blx	r7
d03c55e0:	2d80      	cmp	r5, #128	; 0x80
d03c55e2:	f106 0301 	add.w	r3, r6, #1
d03c55e6:	f04f 0160 	mov.w	r1, #96	; 0x60
d03c55ea:	a808      	add	r0, sp, #32
d03c55ec:	bf98      	it	ls
d03c55ee:	4a4f      	ldrls	r2, [pc, #316]	; (d03c572c <ui_redraw_backbuffer+0xbb8>)
d03c55f0:	f04f 0901 	mov.w	r9, #1
d03c55f4:	bf88      	it	hi
d03c55f6:	4a4e      	ldrhi	r2, [pc, #312]	; (d03c5730 <ui_redraw_backbuffer+0xbbc>)
d03c55f8:	f04f 0600 	mov.w	r6, #0
d03c55fc:	bf98      	it	ls
d03c55fe:	f852 2025 	ldrls.w	r2, [r2, r5, lsl #2]
d03c5602:	2720      	movs	r7, #32
d03c5604:	9500      	str	r5, [sp, #0]
d03c5606:	9201      	str	r2, [sp, #4]
d03c5608:	4a4a      	ldr	r2, [pc, #296]	; (d03c5734 <ui_redraw_backbuffer+0xbc0>)
d03c560a:	f004 fcdb 	bl	d03c9fc4 <sniprintf>
d03c560e:	7b23      	ldrb	r3, [r4, #12]
d03c5610:	7b62      	ldrb	r2, [r4, #13]
d03c5612:	20e7      	movs	r0, #231	; 0xe7
d03c5614:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5618:	7ba2      	ldrb	r2, [r4, #14]
d03c561a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c561e:	7be2      	ldrb	r2, [r4, #15]
d03c5620:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5624:	685b      	ldr	r3, [r3, #4]
d03c5626:	68db      	ldr	r3, [r3, #12]
d03c5628:	4798      	blx	r3
d03c562a:	7b23      	ldrb	r3, [r4, #12]
d03c562c:	7b62      	ldrb	r2, [r4, #13]
d03c562e:	215c      	movs	r1, #92	; 0x5c
d03c5630:	201e      	movs	r0, #30
d03c5632:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5636:	7ba2      	ldrb	r2, [r4, #14]
d03c5638:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c563c:	7be2      	ldrb	r2, [r4, #15]
d03c563e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5642:	aa08      	add	r2, sp, #32
d03c5644:	685b      	ldr	r3, [r3, #4]
d03c5646:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5648:	4798      	blx	r3
d03c564a:	4b3b      	ldr	r3, [pc, #236]	; (d03c5738 <ui_redraw_backbuffer+0xbc4>)
d03c564c:	225e      	movs	r2, #94	; 0x5e
d03c564e:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5652:	2017      	movs	r0, #23
d03c5654:	9301      	str	r3, [sp, #4]
d03c5656:	f8cd 900c 	str.w	r9, [sp, #12]
d03c565a:	2348      	movs	r3, #72	; 0x48
d03c565c:	9602      	str	r6, [sp, #8]
d03c565e:	9700      	str	r7, [sp, #0]
d03c5660:	f7fd ff2e 	bl	d03c34c0 <ui_create_button>
d03c5664:	4b35      	ldr	r3, [pc, #212]	; (d03c573c <ui_redraw_backbuffer+0xbc8>)
d03c5666:	2018      	movs	r0, #24
d03c5668:	225e      	movs	r2, #94	; 0x5e
d03c566a:	9301      	str	r3, [sp, #4]
d03c566c:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5670:	2348      	movs	r3, #72	; 0x48
d03c5672:	f8cd 900c 	str.w	r9, [sp, #12]
d03c5676:	9602      	str	r6, [sp, #8]
d03c5678:	9700      	str	r7, [sp, #0]
d03c567a:	f7fd ff21 	bl	d03c34c0 <ui_create_button>
d03c567e:	0628      	lsls	r0, r5, #24
d03c5680:	d529      	bpl.n	d03c56d6 <ui_redraw_backbuffer+0xb62>
d03c5682:	7b23      	ldrb	r3, [r4, #12]
d03c5684:	2018      	movs	r0, #24
d03c5686:	7b62      	ldrb	r2, [r4, #13]
d03c5688:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c568c:	7ba2      	ldrb	r2, [r4, #14]
d03c568e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5692:	7be2      	ldrb	r2, [r4, #15]
d03c5694:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5698:	685b      	ldr	r3, [r3, #4]
d03c569a:	68db      	ldr	r3, [r3, #12]
d03c569c:	4798      	blx	r3
d03c569e:	7b23      	ldrb	r3, [r4, #12]
d03c56a0:	7b62      	ldrb	r2, [r4, #13]
d03c56a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c56a6:	7ba2      	ldrb	r2, [r4, #14]
d03c56a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c56ac:	7be2      	ldrb	r2, [r4, #15]
d03c56ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c56b2:	4a23      	ldr	r2, [pc, #140]	; (d03c5740 <ui_redraw_backbuffer+0xbcc>)
d03c56b4:	685b      	ldr	r3, [r3, #4]
d03c56b6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c56b8:	2186      	movs	r1, #134	; 0x86
d03c56ba:	201e      	movs	r0, #30
d03c56bc:	e62b      	b.n	d03c5316 <ui_redraw_backbuffer+0x7a2>
d03c56be:	4b21      	ldr	r3, [pc, #132]	; (d03c5744 <ui_redraw_backbuffer+0xbd0>)
d03c56c0:	781b      	ldrb	r3, [r3, #0]
d03c56c2:	429d      	cmp	r5, r3
d03c56c4:	bf0c      	ite	eq
d03c56c6:	2301      	moveq	r3, #1
d03c56c8:	2300      	movne	r3, #0
d03c56ca:	f888 3000 	strb.w	r3, [r8]
d03c56ce:	f47f af5c 	bne.w	d03c558a <ui_redraw_backbuffer+0xa16>
d03c56d2:	4b1d      	ldr	r3, [pc, #116]	; (d03c5748 <ui_redraw_backbuffer+0xbd4>)
d03c56d4:	e75a      	b.n	d03c558c <ui_redraw_backbuffer+0xa18>
d03c56d6:	4b1d      	ldr	r3, [pc, #116]	; (d03c574c <ui_redraw_backbuffer+0xbd8>)
d03c56d8:	f853 9025 	ldr.w	r9, [r3, r5, lsl #2]
d03c56dc:	f1b9 0f00 	cmp.w	r9, #0
d03c56e0:	d13a      	bne.n	d03c5758 <ui_redraw_backbuffer+0xbe4>
d03c56e2:	7b23      	ldrb	r3, [r4, #12]
d03c56e4:	20f2      	movs	r0, #242	; 0xf2
d03c56e6:	7b62      	ldrb	r2, [r4, #13]
d03c56e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c56ec:	7ba2      	ldrb	r2, [r4, #14]
d03c56ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c56f2:	7be2      	ldrb	r2, [r4, #15]
d03c56f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c56f8:	685b      	ldr	r3, [r3, #4]
d03c56fa:	68db      	ldr	r3, [r3, #12]
d03c56fc:	4798      	blx	r3
d03c56fe:	7b23      	ldrb	r3, [r4, #12]
d03c5700:	7b62      	ldrb	r2, [r4, #13]
d03c5702:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5706:	7ba2      	ldrb	r2, [r4, #14]
d03c5708:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c570c:	7be2      	ldrb	r2, [r4, #15]
d03c570e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5712:	4a0f      	ldr	r2, [pc, #60]	; (d03c5750 <ui_redraw_backbuffer+0xbdc>)
d03c5714:	685b      	ldr	r3, [r3, #4]
d03c5716:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5718:	e7ce      	b.n	d03c56b8 <ui_redraw_backbuffer+0xb44>
d03c571a:	bf00      	nop
d03c571c:	d03cf3ca 	.word	0xd03cf3ca
d03c5720:	d03ccd64 	.word	0xd03ccd64
d03c5724:	d03cf583 	.word	0xd03cf583
d03c5728:	d03cb826 	.word	0xd03cb826
d03c572c:	d03cc2e4 	.word	0xd03cc2e4
d03c5730:	d03cb589 	.word	0xd03cb589
d03c5734:	d03cba13 	.word	0xd03cba13
d03c5738:	d03cb5c2 	.word	0xd03cb5c2
d03c573c:	d03cb5c5 	.word	0xd03cb5c5
d03c5740:	d03cba26 	.word	0xd03cba26
d03c5744:	d03cf588 	.word	0xd03cf588
d03c5748:	d03cb835 	.word	0xd03cb835
d03c574c:	d03cc670 	.word	0xd03cc670
d03c5750:	d03cba46 	.word	0xd03cba46
d03c5754:	d03ccd2a 	.word	0xd03ccd2a
d03c5758:	f7fb fbae 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c575c:	4628      	mov	r0, r5
d03c575e:	f7fb fb95 	bl	d03c0e8c <vm_program_length>
d03c5762:	7b23      	ldrb	r3, [r4, #12]
d03c5764:	7b62      	ldrb	r2, [r4, #13]
d03c5766:	4683      	mov	fp, r0
d03c5768:	20eb      	movs	r0, #235	; 0xeb
d03c576a:	f8df a34c 	ldr.w	sl, [pc, #844]	; d03c5ab8 <ui_redraw_backbuffer+0xf44>
d03c576e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5772:	7ba2      	ldrb	r2, [r4, #14]
d03c5774:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5778:	7be2      	ldrb	r2, [r4, #15]
d03c577a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c577e:	685b      	ldr	r3, [r3, #4]
d03c5780:	68db      	ldr	r3, [r3, #12]
d03c5782:	4798      	blx	r3
d03c5784:	7b23      	ldrb	r3, [r4, #12]
d03c5786:	7b62      	ldrb	r2, [r4, #13]
d03c5788:	2172      	movs	r1, #114	; 0x72
d03c578a:	201e      	movs	r0, #30
d03c578c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5790:	7ba2      	ldrb	r2, [r4, #14]
d03c5792:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5796:	7be2      	ldrb	r2, [r4, #15]
d03c5798:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c579c:	4ab6      	ldr	r2, [pc, #728]	; (d03c5a78 <ui_redraw_backbuffer+0xf04>)
d03c579e:	685b      	ldr	r3, [r3, #4]
d03c57a0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c57a2:	4798      	blx	r3
d03c57a4:	4bb5      	ldr	r3, [pc, #724]	; (d03c5a7c <ui_redraw_backbuffer+0xf08>)
d03c57a6:	781d      	ldrb	r5, [r3, #0]
d03c57a8:	4435      	add	r5, r6
d03c57aa:	b2ed      	uxtb	r5, r5
d03c57ac:	45ab      	cmp	fp, r5
d03c57ae:	f200 8224 	bhi.w	d03c5bfa <ui_redraw_backbuffer+0x1086>
d03c57b2:	4bb3      	ldr	r3, [pc, #716]	; (d03c5a80 <ui_redraw_backbuffer+0xf0c>)
d03c57b4:	2600      	movs	r6, #0
d03c57b6:	2501      	movs	r5, #1
d03c57b8:	225e      	movs	r2, #94	; 0x5e
d03c57ba:	9301      	str	r3, [sp, #4]
d03c57bc:	2320      	movs	r3, #32
d03c57be:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c57c2:	2019      	movs	r0, #25
d03c57c4:	9300      	str	r3, [sp, #0]
d03c57c6:	2322      	movs	r3, #34	; 0x22
d03c57c8:	9503      	str	r5, [sp, #12]
d03c57ca:	9602      	str	r6, [sp, #8]
d03c57cc:	f7fd fe78 	bl	d03c34c0 <ui_create_button>
d03c57d0:	f898 7000 	ldrb.w	r7, [r8]
d03c57d4:	4aab      	ldr	r2, [pc, #684]	; (d03c5a84 <ui_redraw_backbuffer+0xf10>)
d03c57d6:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c57da:	4bab      	ldr	r3, [pc, #684]	; (d03c5a88 <ui_redraw_backbuffer+0xf14>)
d03c57dc:	201a      	movs	r0, #26
d03c57de:	9601      	str	r6, [sp, #4]
d03c57e0:	42b7      	cmp	r7, r6
d03c57e2:	bf14      	ite	ne
d03c57e4:	4691      	movne	r9, r2
d03c57e6:	4699      	moveq	r9, r3
d03c57e8:	236c      	movs	r3, #108	; 0x6c
d03c57ea:	227c      	movs	r2, #124	; 0x7c
d03c57ec:	9300      	str	r3, [sp, #0]
d03c57ee:	2322      	movs	r3, #34	; 0x22
d03c57f0:	f7fb fa9e 	bl	d03c0d30 <ui_button_register>
d03c57f4:	4ba5      	ldr	r3, [pc, #660]	; (d03c5a8c <ui_redraw_backbuffer+0xf18>)
d03c57f6:	781b      	ldrb	r3, [r3, #0]
d03c57f8:	07d9      	lsls	r1, r3, #31
d03c57fa:	f140 82b5 	bpl.w	d03c5d68 <ui_redraw_backbuffer+0x11f4>
d03c57fe:	4aa4      	ldr	r2, [pc, #656]	; (d03c5a90 <ui_redraw_backbuffer+0xf1c>)
d03c5800:	4ba4      	ldr	r3, [pc, #656]	; (d03c5a94 <ui_redraw_backbuffer+0xf20>)
d03c5802:	8812      	ldrh	r2, [r2, #0]
d03c5804:	f9b3 3000 	ldrsh.w	r3, [r3]
d03c5808:	f5a2 72d1 	sub.w	r2, r2, #418	; 0x1a2
d03c580c:	b292      	uxth	r2, r2
d03c580e:	2a21      	cmp	r2, #33	; 0x21
d03c5810:	f200 82aa 	bhi.w	d03c5d68 <ui_redraw_backbuffer+0x11f4>
d03c5814:	3b7c      	subs	r3, #124	; 0x7c
d03c5816:	b29b      	uxth	r3, r3
d03c5818:	2b6b      	cmp	r3, #107	; 0x6b
d03c581a:	f200 82a5 	bhi.w	d03c5d68 <ui_redraw_backbuffer+0x11f4>
d03c581e:	23e4      	movs	r3, #228	; 0xe4
d03c5820:	2f00      	cmp	r7, #0
d03c5822:	f04f 0200 	mov.w	r2, #0
d03c5826:	f04f 06e1 	mov.w	r6, #225	; 0xe1
d03c582a:	9301      	str	r3, [sp, #4]
d03c582c:	f04f 017c 	mov.w	r1, #124	; 0x7c
d03c5830:	f04f 036c 	mov.w	r3, #108	; 0x6c
d03c5834:	f8ad 201c 	strh.w	r2, [sp, #28]
d03c5838:	f44f 70d1 	mov.w	r0, #418	; 0x1a2
d03c583c:	f04f 0222 	mov.w	r2, #34	; 0x22
d03c5840:	9600      	str	r6, [sp, #0]
d03c5842:	bf14      	ite	ne
d03c5844:	f04f 0ae8 	movne.w	sl, #232	; 0xe8
d03c5848:	f04f 0ae7 	moveq.w	sl, #231	; 0xe7
d03c584c:	f7fb fa1c 	bl	d03c0c88 <ui_box>
d03c5850:	7b23      	ldrb	r3, [r4, #12]
d03c5852:	7b62      	ldrb	r2, [r4, #13]
d03c5854:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5858:	7ba2      	ldrb	r2, [r4, #14]
d03c585a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c585e:	7be2      	ldrb	r2, [r4, #15]
d03c5860:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5864:	685b      	ldr	r3, [r3, #4]
d03c5866:	68db      	ldr	r3, [r3, #12]
d03c5868:	2d00      	cmp	r5, #0
d03c586a:	f040 8283 	bne.w	d03c5d74 <ui_redraw_backbuffer+0x1200>
d03c586e:	2f00      	cmp	r7, #0
d03c5870:	bf14      	ite	ne
d03c5872:	20e6      	movne	r0, #230	; 0xe6
d03c5874:	20e7      	moveq	r0, #231	; 0xe7
d03c5876:	4798      	blx	r3
d03c5878:	7b23      	ldrb	r3, [r4, #12]
d03c587a:	7b62      	ldrb	r2, [r4, #13]
d03c587c:	217d      	movs	r1, #125	; 0x7d
d03c587e:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c5882:	2700      	movs	r7, #0
d03c5884:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5888:	7ba2      	ldrb	r2, [r4, #14]
d03c588a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c588e:	7be2      	ldrb	r2, [r4, #15]
d03c5890:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5894:	2220      	movs	r2, #32
d03c5896:	685b      	ldr	r3, [r3, #4]
d03c5898:	685e      	ldr	r6, [r3, #4]
d03c589a:	2302      	movs	r3, #2
d03c589c:	47b0      	blx	r6
d03c589e:	7b23      	ldrb	r3, [r4, #12]
d03c58a0:	7b62      	ldrb	r2, [r4, #13]
d03c58a2:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c58a6:	217d      	movs	r1, #125	; 0x7d
d03c58a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58ac:	7ba2      	ldrb	r2, [r4, #14]
d03c58ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58b2:	7be2      	ldrb	r2, [r4, #15]
d03c58b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c58b8:	2202      	movs	r2, #2
d03c58ba:	685b      	ldr	r3, [r3, #4]
d03c58bc:	685e      	ldr	r6, [r3, #4]
d03c58be:	236a      	movs	r3, #106	; 0x6a
d03c58c0:	47b0      	blx	r6
d03c58c2:	7b23      	ldrb	r3, [r4, #12]
d03c58c4:	7b62      	ldrb	r2, [r4, #13]
d03c58c6:	2d00      	cmp	r5, #0
d03c58c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58cc:	7ba2      	ldrb	r2, [r4, #14]
d03c58ce:	bf14      	ite	ne
d03c58d0:	20e7      	movne	r0, #231	; 0xe7
d03c58d2:	20e1      	moveq	r0, #225	; 0xe1
d03c58d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58d8:	7be2      	ldrb	r2, [r4, #15]
d03c58da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c58de:	685b      	ldr	r3, [r3, #4]
d03c58e0:	68db      	ldr	r3, [r3, #12]
d03c58e2:	4798      	blx	r3
d03c58e4:	7b23      	ldrb	r3, [r4, #12]
d03c58e6:	7b62      	ldrb	r2, [r4, #13]
d03c58e8:	21e5      	movs	r1, #229	; 0xe5
d03c58ea:	f240 10a3 	movw	r0, #419	; 0x1a3
d03c58ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c58f2:	7ba2      	ldrb	r2, [r4, #14]
d03c58f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c58f8:	7be2      	ldrb	r2, [r4, #15]
d03c58fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c58fe:	2220      	movs	r2, #32
d03c5900:	685b      	ldr	r3, [r3, #4]
d03c5902:	685e      	ldr	r6, [r3, #4]
d03c5904:	2302      	movs	r3, #2
d03c5906:	47b0      	blx	r6
d03c5908:	7b23      	ldrb	r3, [r4, #12]
d03c590a:	7b62      	ldrb	r2, [r4, #13]
d03c590c:	217d      	movs	r1, #125	; 0x7d
d03c590e:	f240 10c1 	movw	r0, #449	; 0x1c1
d03c5912:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5916:	7ba2      	ldrb	r2, [r4, #14]
d03c5918:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c591c:	7be2      	ldrb	r2, [r4, #15]
d03c591e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5922:	2202      	movs	r2, #2
d03c5924:	685b      	ldr	r3, [r3, #4]
d03c5926:	685e      	ldr	r6, [r3, #4]
d03c5928:	236a      	movs	r3, #106	; 0x6a
d03c592a:	47b0      	blx	r6
d03c592c:	7b23      	ldrb	r3, [r4, #12]
d03c592e:	7b62      	ldrb	r2, [r4, #13]
d03c5930:	2d00      	cmp	r5, #0
d03c5932:	4650      	mov	r0, sl
d03c5934:	f240 15af 	movw	r5, #431	; 0x1af
d03c5938:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c593c:	7ba2      	ldrb	r2, [r4, #14]
d03c593e:	bf0c      	ite	eq
d03c5940:	2692      	moveq	r6, #146	; 0x92
d03c5942:	2693      	movne	r6, #147	; 0x93
d03c5944:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5948:	7be2      	ldrb	r2, [r4, #15]
d03c594a:	bf18      	it	ne
d03c594c:	f44f 75d8 	movne.w	r5, #432	; 0x1b0
d03c5950:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5954:	685b      	ldr	r3, [r3, #4]
d03c5956:	68db      	ldr	r3, [r3, #12]
d03c5958:	4798      	blx	r3
d03c595a:	f819 3007 	ldrb.w	r3, [r9, r7]
d03c595e:	eb06 1107 	add.w	r1, r6, r7, lsl #4
d03c5962:	3701      	adds	r7, #1
d03c5964:	4628      	mov	r0, r5
d03c5966:	f88d 301c 	strb.w	r3, [sp, #28]
d03c596a:	7b23      	ldrb	r3, [r4, #12]
d03c596c:	7b62      	ldrb	r2, [r4, #13]
d03c596e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5972:	7ba2      	ldrb	r2, [r4, #14]
d03c5974:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5978:	7be2      	ldrb	r2, [r4, #15]
d03c597a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c597e:	aa07      	add	r2, sp, #28
d03c5980:	685b      	ldr	r3, [r3, #4]
d03c5982:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5984:	4798      	blx	r3
d03c5986:	2f04      	cmp	r7, #4
d03c5988:	d1e7      	bne.n	d03c595a <ui_redraw_backbuffer+0xde6>
d03c598a:	2301      	movs	r3, #1
d03c598c:	22e6      	movs	r2, #230	; 0xe6
d03c598e:	f44f 71d1 	mov.w	r1, #418	; 0x1a2
d03c5992:	201b      	movs	r0, #27
d03c5994:	9303      	str	r3, [sp, #12]
d03c5996:	2300      	movs	r3, #0
d03c5998:	9302      	str	r3, [sp, #8]
d03c599a:	4b3f      	ldr	r3, [pc, #252]	; (d03c5a98 <ui_redraw_backbuffer+0xf24>)
d03c599c:	9301      	str	r3, [sp, #4]
d03c599e:	2320      	movs	r3, #32
d03c59a0:	9300      	str	r3, [sp, #0]
d03c59a2:	2322      	movs	r3, #34	; 0x22
d03c59a4:	f7fd fd8c 	bl	d03c34c0 <ui_create_button>
d03c59a8:	f898 3000 	ldrb.w	r3, [r8]
d03c59ac:	2b00      	cmp	r3, #0
d03c59ae:	f000 81f5 	beq.w	d03c5d9c <ui_redraw_backbuffer+0x1228>
d03c59b2:	4b3a      	ldr	r3, [pc, #232]	; (d03c5a9c <ui_redraw_backbuffer+0xf28>)
d03c59b4:	781b      	ldrb	r3, [r3, #0]
d03c59b6:	2b01      	cmp	r3, #1
d03c59b8:	f000 81de 	beq.w	d03c5d78 <ui_redraw_backbuffer+0x1204>
d03c59bc:	4f38      	ldr	r7, [pc, #224]	; (d03c5aa0 <ui_redraw_backbuffer+0xf2c>)
d03c59be:	4a39      	ldr	r2, [pc, #228]	; (d03c5aa4 <ui_redraw_backbuffer+0xf30>)
d03c59c0:	2b02      	cmp	r3, #2
d03c59c2:	bf08      	it	eq
d03c59c4:	4617      	moveq	r7, r2
d03c59c6:	2500      	movs	r5, #0
d03c59c8:	2620      	movs	r6, #32
d03c59ca:	4b37      	ldr	r3, [pc, #220]	; (d03c5aa8 <ui_redraw_backbuffer+0xf34>)
d03c59cc:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c59d0:	215a      	movs	r1, #90	; 0x5a
d03c59d2:	201c      	movs	r0, #28
d03c59d4:	9301      	str	r3, [sp, #4]
d03c59d6:	2348      	movs	r3, #72	; 0x48
d03c59d8:	9503      	str	r5, [sp, #12]
d03c59da:	9502      	str	r5, [sp, #8]
d03c59dc:	9600      	str	r6, [sp, #0]
d03c59de:	f7fd fd6f 	bl	d03c34c0 <ui_create_button>
d03c59e2:	4b32      	ldr	r3, [pc, #200]	; (d03c5aac <ui_redraw_backbuffer+0xf38>)
d03c59e4:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c59e8:	21a0      	movs	r1, #160	; 0xa0
d03c59ea:	9301      	str	r3, [sp, #4]
d03c59ec:	201d      	movs	r0, #29
d03c59ee:	2348      	movs	r3, #72	; 0x48
d03c59f0:	9503      	str	r5, [sp, #12]
d03c59f2:	9502      	str	r5, [sp, #8]
d03c59f4:	9600      	str	r6, [sp, #0]
d03c59f6:	f7fd fd63 	bl	d03c34c0 <ui_create_button>
d03c59fa:	4b2d      	ldr	r3, [pc, #180]	; (d03c5ab0 <ui_redraw_backbuffer+0xf3c>)
d03c59fc:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c5a00:	21ec      	movs	r1, #236	; 0xec
d03c5a02:	9301      	str	r3, [sp, #4]
d03c5a04:	201e      	movs	r0, #30
d03c5a06:	2338      	movs	r3, #56	; 0x38
d03c5a08:	9503      	str	r5, [sp, #12]
d03c5a0a:	9502      	str	r5, [sp, #8]
d03c5a0c:	9600      	str	r6, [sp, #0]
d03c5a0e:	f7fd fd57 	bl	d03c34c0 <ui_create_button>
d03c5a12:	4b28      	ldr	r3, [pc, #160]	; (d03c5ab4 <ui_redraw_backbuffer+0xf40>)
d03c5a14:	f44f 728e 	mov.w	r2, #284	; 0x11c
d03c5a18:	f44f 7191 	mov.w	r1, #290	; 0x122
d03c5a1c:	9301      	str	r3, [sp, #4]
d03c5a1e:	201f      	movs	r0, #31
d03c5a20:	2338      	movs	r3, #56	; 0x38
d03c5a22:	9503      	str	r5, [sp, #12]
d03c5a24:	9502      	str	r5, [sp, #8]
d03c5a26:	9600      	str	r6, [sp, #0]
d03c5a28:	f7fd fd4a 	bl	d03c34c0 <ui_create_button>
d03c5a2c:	4b22      	ldr	r3, [pc, #136]	; (d03c5ab8 <ui_redraw_backbuffer+0xf44>)
d03c5a2e:	9700      	str	r7, [sp, #0]
d03c5a30:	2160      	movs	r1, #96	; 0x60
d03c5a32:	781b      	ldrb	r3, [r3, #0]
d03c5a34:	eb0d 0006 	add.w	r0, sp, r6
d03c5a38:	4a20      	ldr	r2, [pc, #128]	; (d03c5abc <ui_redraw_backbuffer+0xf48>)
d03c5a3a:	2701      	movs	r7, #1
d03c5a3c:	f004 fac2 	bl	d03c9fc4 <sniprintf>
d03c5a40:	7b23      	ldrb	r3, [r4, #12]
d03c5a42:	7b62      	ldrb	r2, [r4, #13]
d03c5a44:	2018      	movs	r0, #24
d03c5a46:	f8df b078 	ldr.w	fp, [pc, #120]	; d03c5ac0 <ui_redraw_backbuffer+0xf4c>
d03c5a4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5a4e:	7ba2      	ldrb	r2, [r4, #14]
d03c5a50:	f8df a070 	ldr.w	sl, [pc, #112]	; d03c5ac4 <ui_redraw_backbuffer+0xf50>
d03c5a54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5a58:	7be2      	ldrb	r2, [r4, #15]
d03c5a5a:	f8df 906c 	ldr.w	r9, [pc, #108]	; d03c5ac8 <ui_redraw_backbuffer+0xf54>
d03c5a5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5a62:	f8df 8068 	ldr.w	r8, [pc, #104]	; d03c5acc <ui_redraw_backbuffer+0xf58>
d03c5a66:	685b      	ldr	r3, [r3, #4]
d03c5a68:	68db      	ldr	r3, [r3, #12]
d03c5a6a:	4798      	blx	r3
d03c5a6c:	7b23      	ldrb	r3, [r4, #12]
d03c5a6e:	7b62      	ldrb	r2, [r4, #13]
d03c5a70:	2146      	movs	r1, #70	; 0x46
d03c5a72:	20a0      	movs	r0, #160	; 0xa0
d03c5a74:	e02c      	b.n	d03c5ad0 <ui_redraw_backbuffer+0xf5c>
d03c5a76:	bf00      	nop
d03c5a78:	d03cba5e 	.word	0xd03cba5e
d03c5a7c:	d03cf591 	.word	0xd03cf591
d03c5a80:	d03cb701 	.word	0xd03cb701
d03c5a84:	d03cb847 	.word	0xd03cb847
d03c5a88:	d03cb84c 	.word	0xd03cb84c
d03c5a8c:	d03ce31b 	.word	0xd03ce31b
d03c5a90:	d03cf394 	.word	0xd03cf394
d03c5a94:	d03cf396 	.word	0xd03cf396
d03c5a98:	d03cb704 	.word	0xd03cb704
d03c5a9c:	d03cf582 	.word	0xd03cf582
d03c5aa0:	d03cb855 	.word	0xd03cb855
d03c5aa4:	d03cb859 	.word	0xd03cb859
d03c5aa8:	d03cb63c 	.word	0xd03cb63c
d03c5aac:	d03cba8a 	.word	0xd03cba8a
d03c5ab0:	d03cba90 	.word	0xd03cba90
d03c5ab4:	d03cba94 	.word	0xd03cba94
d03c5ab8:	d03cf589 	.word	0xd03cf589
d03c5abc:	d03cba98 	.word	0xd03cba98
d03c5ac0:	d03cb8a8 	.word	0xd03cb8a8
d03c5ac4:	d03cbaa6 	.word	0xd03cbaa6
d03c5ac8:	d03cb808 	.word	0xd03cb808
d03c5acc:	d03cb80a 	.word	0xd03cb80a
d03c5ad0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ad4:	7ba2      	ldrb	r2, [r4, #14]
d03c5ad6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5ada:	7be2      	ldrb	r2, [r4, #15]
d03c5adc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ae0:	eb0d 0206 	add.w	r2, sp, r6
d03c5ae4:	685b      	ldr	r3, [r3, #4]
d03c5ae6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5ae8:	4798      	blx	r3
d03c5aea:	7b23      	ldrb	r3, [r4, #12]
d03c5aec:	7b62      	ldrb	r2, [r4, #13]
d03c5aee:	218a      	movs	r1, #138	; 0x8a
d03c5af0:	20f0      	movs	r0, #240	; 0xf0
d03c5af2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5af6:	7ba2      	ldrb	r2, [r4, #14]
d03c5af8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5afc:	7be2      	ldrb	r2, [r4, #15]
d03c5afe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5b02:	4a9e      	ldr	r2, [pc, #632]	; (d03c5d7c <ui_redraw_backbuffer+0x1208>)
d03c5b04:	685b      	ldr	r3, [r3, #4]
d03c5b06:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5b08:	4798      	blx	r3
d03c5b0a:	4630      	mov	r0, r6
d03c5b0c:	2348      	movs	r3, #72	; 0x48
d03c5b0e:	2288      	movs	r2, #136	; 0x88
d03c5b10:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5b14:	9703      	str	r7, [sp, #12]
d03c5b16:	9502      	str	r5, [sp, #8]
d03c5b18:	e9cd 6b00 	strd	r6, fp, [sp]
d03c5b1c:	f7fd fcd0 	bl	d03c34c0 <ui_create_button>
d03c5b20:	2348      	movs	r3, #72	; 0x48
d03c5b22:	2288      	movs	r2, #136	; 0x88
d03c5b24:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5b28:	2023      	movs	r0, #35	; 0x23
d03c5b2a:	9703      	str	r7, [sp, #12]
d03c5b2c:	9502      	str	r5, [sp, #8]
d03c5b2e:	e9cd 6a00 	strd	r6, sl, [sp]
d03c5b32:	f7fd fcc5 	bl	d03c34c0 <ui_create_button>
d03c5b36:	2348      	movs	r3, #72	; 0x48
d03c5b38:	22a6      	movs	r2, #166	; 0xa6
d03c5b3a:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5b3e:	2021      	movs	r0, #33	; 0x21
d03c5b40:	9703      	str	r7, [sp, #12]
d03c5b42:	9502      	str	r5, [sp, #8]
d03c5b44:	e9cd 6900 	strd	r6, r9, [sp]
d03c5b48:	f7fd fcba 	bl	d03c34c0 <ui_create_button>
d03c5b4c:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5b50:	2348      	movs	r3, #72	; 0x48
d03c5b52:	22a6      	movs	r2, #166	; 0xa6
d03c5b54:	2022      	movs	r0, #34	; 0x22
d03c5b56:	9703      	str	r7, [sp, #12]
d03c5b58:	9502      	str	r5, [sp, #8]
d03c5b5a:	e9cd 6800 	strd	r6, r8, [sp]
d03c5b5e:	f7fd fcaf 	bl	d03c34c0 <ui_create_button>
d03c5b62:	7b23      	ldrb	r3, [r4, #12]
d03c5b64:	7b62      	ldrb	r2, [r4, #13]
d03c5b66:	2018      	movs	r0, #24
d03c5b68:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5b6c:	7ba2      	ldrb	r2, [r4, #14]
d03c5b6e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5b72:	7be2      	ldrb	r2, [r4, #15]
d03c5b74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5b78:	685b      	ldr	r3, [r3, #4]
d03c5b7a:	68db      	ldr	r3, [r3, #12]
d03c5b7c:	4798      	blx	r3
d03c5b7e:	7b23      	ldrb	r3, [r4, #12]
d03c5b80:	7b62      	ldrb	r2, [r4, #13]
d03c5b82:	21ca      	movs	r1, #202	; 0xca
d03c5b84:	20f0      	movs	r0, #240	; 0xf0
d03c5b86:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5b8a:	7ba2      	ldrb	r2, [r4, #14]
d03c5b8c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5b90:	7be2      	ldrb	r2, [r4, #15]
d03c5b92:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5b96:	4a7a      	ldr	r2, [pc, #488]	; (d03c5d80 <ui_redraw_backbuffer+0x120c>)
d03c5b98:	685b      	ldr	r3, [r3, #4]
d03c5b9a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5b9c:	4798      	blx	r3
d03c5b9e:	2348      	movs	r3, #72	; 0x48
d03c5ba0:	22c8      	movs	r2, #200	; 0xc8
d03c5ba2:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5ba6:	2024      	movs	r0, #36	; 0x24
d03c5ba8:	9703      	str	r7, [sp, #12]
d03c5baa:	9502      	str	r5, [sp, #8]
d03c5bac:	e9cd 6b00 	strd	r6, fp, [sp]
d03c5bb0:	f7fd fc86 	bl	d03c34c0 <ui_create_button>
d03c5bb4:	2348      	movs	r3, #72	; 0x48
d03c5bb6:	22c8      	movs	r2, #200	; 0xc8
d03c5bb8:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5bbc:	2027      	movs	r0, #39	; 0x27
d03c5bbe:	9703      	str	r7, [sp, #12]
d03c5bc0:	9502      	str	r5, [sp, #8]
d03c5bc2:	e9cd 6a00 	strd	r6, sl, [sp]
d03c5bc6:	f7fd fc7b 	bl	d03c34c0 <ui_create_button>
d03c5bca:	2348      	movs	r3, #72	; 0x48
d03c5bcc:	22e6      	movs	r2, #230	; 0xe6
d03c5bce:	f44f 7182 	mov.w	r1, #260	; 0x104
d03c5bd2:	2025      	movs	r0, #37	; 0x25
d03c5bd4:	9703      	str	r7, [sp, #12]
d03c5bd6:	9502      	str	r5, [sp, #8]
d03c5bd8:	e9cd 6900 	strd	r6, r9, [sp]
d03c5bdc:	f7fd fc70 	bl	d03c34c0 <ui_create_button>
d03c5be0:	2348      	movs	r3, #72	; 0x48
d03c5be2:	22e6      	movs	r2, #230	; 0xe6
d03c5be4:	f44f 71a9 	mov.w	r1, #338	; 0x152
d03c5be8:	2026      	movs	r0, #38	; 0x26
d03c5bea:	9703      	str	r7, [sp, #12]
d03c5bec:	9502      	str	r5, [sp, #8]
d03c5bee:	e9cd 6800 	strd	r6, r8, [sp]
d03c5bf2:	f7fd fc65 	bl	d03c34c0 <ui_create_button>
d03c5bf6:	f7ff ba00 	b.w	d03c4ffa <ui_redraw_backbuffer+0x486>
d03c5bfa:	f898 3000 	ldrb.w	r3, [r8]
d03c5bfe:	2b00      	cmp	r3, #0
d03c5c00:	d050      	beq.n	d03c5ca4 <ui_redraw_backbuffer+0x1130>
d03c5c02:	f89a 3000 	ldrb.w	r3, [sl]
d03c5c06:	42ab      	cmp	r3, r5
d03c5c08:	d14c      	bne.n	d03c5ca4 <ui_redraw_backbuffer+0x1130>
d03c5c0a:	7b23      	ldrb	r3, [r4, #12]
d03c5c0c:	20e5      	movs	r0, #229	; 0xe5
d03c5c0e:	7b62      	ldrb	r2, [r4, #13]
d03c5c10:	0137      	lsls	r7, r6, #4
d03c5c12:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c16:	7ba2      	ldrb	r2, [r4, #14]
d03c5c18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c1c:	7be2      	ldrb	r2, [r4, #15]
d03c5c1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c22:	685b      	ldr	r3, [r3, #4]
d03c5c24:	68db      	ldr	r3, [r3, #12]
d03c5c26:	4798      	blx	r3
d03c5c28:	7b23      	ldrb	r3, [r4, #12]
d03c5c2a:	7b62      	ldrb	r2, [r4, #13]
d03c5c2c:	201c      	movs	r0, #28
d03c5c2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c32:	7ba2      	ldrb	r2, [r4, #14]
d03c5c34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c38:	7be2      	ldrb	r2, [r4, #15]
d03c5c3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c3e:	b2ba      	uxth	r2, r7
d03c5c40:	685b      	ldr	r3, [r3, #4]
d03c5c42:	f102 0185 	add.w	r1, r2, #133	; 0x85
d03c5c46:	9205      	str	r2, [sp, #20]
d03c5c48:	685b      	ldr	r3, [r3, #4]
d03c5c4a:	22b2      	movs	r2, #178	; 0xb2
d03c5c4c:	b209      	sxth	r1, r1
d03c5c4e:	461f      	mov	r7, r3
d03c5c50:	2310      	movs	r3, #16
d03c5c52:	47b8      	blx	r7
d03c5c54:	4b4b      	ldr	r3, [pc, #300]	; (d03c5d84 <ui_redraw_backbuffer+0x1210>)
d03c5c56:	781b      	ldrb	r3, [r3, #0]
d03c5c58:	b323      	cbz	r3, d03c5ca4 <ui_redraw_backbuffer+0x1130>
d03c5c5a:	7b23      	ldrb	r3, [r4, #12]
d03c5c5c:	20f7      	movs	r0, #247	; 0xf7
d03c5c5e:	7b62      	ldrb	r2, [r4, #13]
d03c5c60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c64:	7ba2      	ldrb	r2, [r4, #14]
d03c5c66:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c6a:	7be2      	ldrb	r2, [r4, #15]
d03c5c6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c70:	685b      	ldr	r3, [r3, #4]
d03c5c72:	68db      	ldr	r3, [r3, #12]
d03c5c74:	4798      	blx	r3
d03c5c76:	4b44      	ldr	r3, [pc, #272]	; (d03c5d88 <ui_redraw_backbuffer+0x1214>)
d03c5c78:	9905      	ldr	r1, [sp, #20]
d03c5c7a:	781b      	ldrb	r3, [r3, #0]
d03c5c7c:	3184      	adds	r1, #132	; 0x84
d03c5c7e:	b209      	sxth	r1, r1
d03c5c80:	2b00      	cmp	r3, #0
d03c5c82:	d15a      	bne.n	d03c5d3a <ui_redraw_backbuffer+0x11c6>
d03c5c84:	7b23      	ldrb	r3, [r4, #12]
d03c5c86:	203a      	movs	r0, #58	; 0x3a
d03c5c88:	7b62      	ldrb	r2, [r4, #13]
d03c5c8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5c8e:	7ba2      	ldrb	r2, [r4, #14]
d03c5c90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5c94:	7be2      	ldrb	r2, [r4, #15]
d03c5c96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5c9a:	2244      	movs	r2, #68	; 0x44
d03c5c9c:	685b      	ldr	r3, [r3, #4]
d03c5c9e:	685f      	ldr	r7, [r3, #4]
d03c5ca0:	2312      	movs	r3, #18
d03c5ca2:	47b8      	blx	r7
d03c5ca4:	f819 3025 	ldrb.w	r3, [r9, r5, lsl #2]
d03c5ca8:	eb09 0285 	add.w	r2, r9, r5, lsl #2
d03c5cac:	a808      	add	r0, sp, #32
d03c5cae:	b22f      	sxth	r7, r5
d03c5cb0:	2b15      	cmp	r3, #21
d03c5cb2:	bf96      	itet	ls
d03c5cb4:	4935      	ldrls	r1, [pc, #212]	; (d03c5d8c <ui_redraw_backbuffer+0x1218>)
d03c5cb6:	4b36      	ldrhi	r3, [pc, #216]	; (d03c5d90 <ui_redraw_backbuffer+0x121c>)
d03c5cb8:	f851 3023 	ldrls.w	r3, [r1, r3, lsl #2]
d03c5cbc:	8851      	ldrh	r1, [r2, #2]
d03c5cbe:	9102      	str	r1, [sp, #8]
d03c5cc0:	2160      	movs	r1, #96	; 0x60
d03c5cc2:	7852      	ldrb	r2, [r2, #1]
d03c5cc4:	9300      	str	r3, [sp, #0]
d03c5cc6:	462b      	mov	r3, r5
d03c5cc8:	9201      	str	r2, [sp, #4]
d03c5cca:	4a32      	ldr	r2, [pc, #200]	; (d03c5d94 <ui_redraw_backbuffer+0x1220>)
d03c5ccc:	f004 f97a 	bl	d03c9fc4 <sniprintf>
d03c5cd0:	7b23      	ldrb	r3, [r4, #12]
d03c5cd2:	7b62      	ldrb	r2, [r4, #13]
d03c5cd4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5cd8:	7ba2      	ldrb	r2, [r4, #14]
d03c5cda:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5cde:	7be2      	ldrb	r2, [r4, #15]
d03c5ce0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ce4:	f898 2000 	ldrb.w	r2, [r8]
d03c5ce8:	685b      	ldr	r3, [r3, #4]
d03c5cea:	68db      	ldr	r3, [r3, #12]
d03c5cec:	b11a      	cbz	r2, d03c5cf6 <ui_redraw_backbuffer+0x1182>
d03c5cee:	f89a 2000 	ldrb.w	r2, [sl]
d03c5cf2:	42aa      	cmp	r2, r5
d03c5cf4:	d036      	beq.n	d03c5d64 <ui_redraw_backbuffer+0x11f0>
d03c5cf6:	f819 2027 	ldrb.w	r2, [r9, r7, lsl #2]
d03c5cfa:	2a00      	cmp	r2, #0
d03c5cfc:	bf0c      	ite	eq
d03c5cfe:	20f7      	moveq	r0, #247	; 0xf7
d03c5d00:	20ec      	movne	r0, #236	; 0xec
d03c5d02:	4798      	blx	r3
d03c5d04:	7b23      	ldrb	r3, [r4, #12]
d03c5d06:	7b62      	ldrb	r2, [r4, #13]
d03c5d08:	0131      	lsls	r1, r6, #4
d03c5d0a:	201e      	movs	r0, #30
d03c5d0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5d10:	7ba2      	ldrb	r2, [r4, #14]
d03c5d12:	3186      	adds	r1, #134	; 0x86
d03c5d14:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5d18:	7be2      	ldrb	r2, [r4, #15]
d03c5d1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5d1e:	aa08      	add	r2, sp, #32
d03c5d20:	685b      	ldr	r3, [r3, #4]
d03c5d22:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5d24:	4798      	blx	r3
d03c5d26:	f819 3027 	ldrb.w	r3, [r9, r7, lsl #2]
d03c5d2a:	2b00      	cmp	r3, #0
d03c5d2c:	f43f ad41 	beq.w	d03c57b2 <ui_redraw_backbuffer+0xc3e>
d03c5d30:	3601      	adds	r6, #1
d03c5d32:	2e08      	cmp	r6, #8
d03c5d34:	f47f ad36 	bne.w	d03c57a4 <ui_redraw_backbuffer+0xc30>
d03c5d38:	e53b      	b.n	d03c57b2 <ui_redraw_backbuffer+0xc3e>
d03c5d3a:	2b01      	cmp	r3, #1
d03c5d3c:	7b23      	ldrb	r3, [r4, #12]
d03c5d3e:	7b62      	ldrb	r2, [r4, #13]
d03c5d40:	bf0c      	ite	eq
d03c5d42:	2082      	moveq	r0, #130	; 0x82
d03c5d44:	20a0      	movne	r0, #160	; 0xa0
d03c5d46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5d4a:	7ba2      	ldrb	r2, [r4, #14]
d03c5d4c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5d50:	7be2      	ldrb	r2, [r4, #15]
d03c5d52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5d56:	bf0c      	ite	eq
d03c5d58:	2218      	moveq	r2, #24
d03c5d5a:	222a      	movne	r2, #42	; 0x2a
d03c5d5c:	685b      	ldr	r3, [r3, #4]
d03c5d5e:	685f      	ldr	r7, [r3, #4]
d03c5d60:	2312      	movs	r3, #18
d03c5d62:	e79e      	b.n	d03c5ca2 <ui_redraw_backbuffer+0x112e>
d03c5d64:	20f0      	movs	r0, #240	; 0xf0
d03c5d66:	e7cc      	b.n	d03c5d02 <ui_redraw_backbuffer+0x118e>
d03c5d68:	2500      	movs	r5, #0
d03c5d6a:	42af      	cmp	r7, r5
d03c5d6c:	bf14      	ite	ne
d03c5d6e:	23e5      	movne	r3, #229	; 0xe5
d03c5d70:	23e3      	moveq	r3, #227	; 0xe3
d03c5d72:	e556      	b.n	d03c5822 <ui_redraw_backbuffer+0xcae>
d03c5d74:	4630      	mov	r0, r6
d03c5d76:	e57e      	b.n	d03c5876 <ui_redraw_backbuffer+0xd02>
d03c5d78:	4f07      	ldr	r7, [pc, #28]	; (d03c5d98 <ui_redraw_backbuffer+0x1224>)
d03c5d7a:	e624      	b.n	d03c59c6 <ui_redraw_backbuffer+0xe52>
d03c5d7c:	d03cbaa3 	.word	0xd03cbaa3
d03c5d80:	d03cbaaa 	.word	0xd03cbaaa
d03c5d84:	d03cf58a 	.word	0xd03cf58a
d03c5d88:	d03cf582 	.word	0xd03cf582
d03c5d8c:	d03cc500 	.word	0xd03cc500
d03c5d90:	d03cb843 	.word	0xd03cb843
d03c5d94:	d03cba74 	.word	0xd03cba74
d03c5d98:	d03cb851 	.word	0xd03cb851
d03c5d9c:	4b19      	ldr	r3, [pc, #100]	; (d03c5e04 <ui_redraw_backbuffer+0x1290>)
d03c5d9e:	2160      	movs	r1, #96	; 0x60
d03c5da0:	4a19      	ldr	r2, [pc, #100]	; (d03c5e08 <ui_redraw_backbuffer+0x1294>)
d03c5da2:	a808      	add	r0, sp, #32
d03c5da4:	f8cd b000 	str.w	fp, [sp]
d03c5da8:	781b      	ldrb	r3, [r3, #0]
d03c5daa:	f004 f90b 	bl	d03c9fc4 <sniprintf>
d03c5dae:	7b23      	ldrb	r3, [r4, #12]
d03c5db0:	7b62      	ldrb	r2, [r4, #13]
d03c5db2:	2018      	movs	r0, #24
d03c5db4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5db8:	7ba2      	ldrb	r2, [r4, #14]
d03c5dba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5dbe:	7be2      	ldrb	r2, [r4, #15]
d03c5dc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5dc4:	685b      	ldr	r3, [r3, #4]
d03c5dc6:	68db      	ldr	r3, [r3, #12]
d03c5dc8:	4798      	blx	r3
d03c5dca:	7b23      	ldrb	r3, [r4, #12]
d03c5dcc:	7b62      	ldrb	r2, [r4, #13]
d03c5dce:	21fa      	movs	r1, #250	; 0xfa
d03c5dd0:	f44f 70b4 	mov.w	r0, #360	; 0x168
d03c5dd4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5dd8:	7ba2      	ldrb	r2, [r4, #14]
d03c5dda:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5dde:	7be2      	ldrb	r2, [r4, #15]
d03c5de0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5de4:	aa08      	add	r2, sp, #32
d03c5de6:	685b      	ldr	r3, [r3, #4]
d03c5de8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c5dea:	f7ff ba94 	b.w	d03c5316 <ui_redraw_backbuffer+0x7a2>
d03c5dee:	f7fe fbbd 	bl	d03c456c <ui_draw_seq>
d03c5df2:	f7ff b902 	b.w	d03c4ffa <ui_redraw_backbuffer+0x486>
d03c5df6:	f88a 7000 	strb.w	r7, [sl]
d03c5dfa:	f7fd fc8f 	bl	d03c371c <ui_draw_home>
d03c5dfe:	f7ff b8fc 	b.w	d03c4ffa <ui_redraw_backbuffer+0x486>
d03c5e02:	bf00      	nop
d03c5e04:	d03cf591 	.word	0xd03cf591
d03c5e08:	d03cbaad 	.word	0xd03cbaad

d03c5e0c <ui_load_selected_file>:
d03c5e0c:	4ba6      	ldr	r3, [pc, #664]	; (d03c60a8 <ui_load_selected_file+0x29c>)
d03c5e0e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c5e12:	781a      	ldrb	r2, [r3, #0]
d03c5e14:	b0a3      	sub	sp, #140	; 0x8c
d03c5e16:	b11a      	cbz	r2, d03c5e20 <ui_load_selected_file+0x14>
d03c5e18:	4ba4      	ldr	r3, [pc, #656]	; (d03c60ac <ui_load_selected_file+0x2a0>)
d03c5e1a:	781b      	ldrb	r3, [r3, #0]
d03c5e1c:	429a      	cmp	r2, r3
d03c5e1e:	d805      	bhi.n	d03c5e2c <ui_load_selected_file+0x20>
d03c5e20:	48a3      	ldr	r0, [pc, #652]	; (d03c60b0 <ui_load_selected_file+0x2a4>)
d03c5e22:	f7fb fae3 	bl	d03c13ec <ui_set_status>
d03c5e26:	b023      	add	sp, #140	; 0x8c
d03c5e28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c5e2c:	4aa1      	ldr	r2, [pc, #644]	; (d03c60b4 <ui_load_selected_file+0x2a8>)
d03c5e2e:	5cd5      	ldrb	r5, [r2, r3]
d03c5e30:	2d05      	cmp	r5, #5
d03c5e32:	d101      	bne.n	d03c5e38 <ui_load_selected_file+0x2c>
d03c5e34:	48a0      	ldr	r0, [pc, #640]	; (d03c60b8 <ui_load_selected_file+0x2ac>)
d03c5e36:	e7f4      	b.n	d03c5e22 <ui_load_selected_file+0x16>
d03c5e38:	4285      	cmp	r5, r0
d03c5e3a:	d00c      	beq.n	d03c5e56 <ui_load_selected_file+0x4a>
d03c5e3c:	2802      	cmp	r0, #2
d03c5e3e:	d101      	bne.n	d03c5e44 <ui_load_selected_file+0x38>
d03c5e40:	489e      	ldr	r0, [pc, #632]	; (d03c60bc <ui_load_selected_file+0x2b0>)
d03c5e42:	e7ee      	b.n	d03c5e22 <ui_load_selected_file+0x16>
d03c5e44:	2801      	cmp	r0, #1
d03c5e46:	d101      	bne.n	d03c5e4c <ui_load_selected_file+0x40>
d03c5e48:	489d      	ldr	r0, [pc, #628]	; (d03c60c0 <ui_load_selected_file+0x2b4>)
d03c5e4a:	e7ea      	b.n	d03c5e22 <ui_load_selected_file+0x16>
d03c5e4c:	2803      	cmp	r0, #3
d03c5e4e:	bf0c      	ite	eq
d03c5e50:	489c      	ldreq	r0, [pc, #624]	; (d03c60c4 <ui_load_selected_file+0x2b8>)
d03c5e52:	489d      	ldrne	r0, [pc, #628]	; (d03c60c8 <ui_load_selected_file+0x2bc>)
d03c5e54:	e7e5      	b.n	d03c5e22 <ui_load_selected_file+0x16>
d03c5e56:	489d      	ldr	r0, [pc, #628]	; (d03c60cc <ui_load_selected_file+0x2c0>)
d03c5e58:	4629      	mov	r1, r5
d03c5e5a:	eb00 1043 	add.w	r0, r0, r3, lsl #5
d03c5e5e:	f7fd f9db 	bl	d03c3218 <ui_file_make_path.constprop.0>
d03c5e62:	2d02      	cmp	r5, #2
d03c5e64:	f040 80ba 	bne.w	d03c5fdc <ui_load_selected_file+0x1d0>
d03c5e68:	4e99      	ldr	r6, [pc, #612]	; (d03c60d0 <ui_load_selected_file+0x2c4>)
d03c5e6a:	2100      	movs	r1, #0
d03c5e6c:	6830      	ldr	r0, [r6, #0]
d03c5e6e:	9118      	str	r1, [sp, #96]	; 0x60
d03c5e70:	b110      	cbz	r0, d03c5e78 <ui_load_selected_file+0x6c>
d03c5e72:	4d98      	ldr	r5, [pc, #608]	; (d03c60d4 <ui_load_selected_file+0x2c8>)
d03c5e74:	682b      	ldr	r3, [r5, #0]
d03c5e76:	b933      	cbnz	r3, d03c5e86 <ui_load_selected_file+0x7a>
d03c5e78:	4897      	ldr	r0, [pc, #604]	; (d03c60d8 <ui_load_selected_file+0x2cc>)
d03c5e7a:	f7fb fab7 	bl	d03c13ec <ui_set_status>
d03c5e7e:	4b97      	ldr	r3, [pc, #604]	; (d03c60dc <ui_load_selected_file+0x2d0>)
d03c5e80:	2201      	movs	r2, #1
d03c5e82:	701a      	strb	r2, [r3, #0]
d03c5e84:	e7cf      	b.n	d03c5e26 <ui_load_selected_file+0x1a>
d03c5e86:	4c96      	ldr	r4, [pc, #600]	; (d03c60e0 <ui_load_selected_file+0x2d4>)
d03c5e88:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c5e8c:	f003 fd90 	bl	d03c99b0 <memset>
d03c5e90:	4994      	ldr	r1, [pc, #592]	; (d03c60e4 <ui_load_selected_file+0x2d8>)
d03c5e92:	7923      	ldrb	r3, [r4, #4]
d03c5e94:	7962      	ldrb	r2, [r4, #5]
d03c5e96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5e9a:	79a2      	ldrb	r2, [r4, #6]
d03c5e9c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5ea0:	79e2      	ldrb	r2, [r4, #7]
d03c5ea2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ea6:	2201      	movs	r2, #1
d03c5ea8:	681b      	ldr	r3, [r3, #0]
d03c5eaa:	4610      	mov	r0, r2
d03c5eac:	681b      	ldr	r3, [r3, #0]
d03c5eae:	4798      	blx	r3
d03c5eb0:	b108      	cbz	r0, d03c5eb6 <ui_load_selected_file+0xaa>
d03c5eb2:	488d      	ldr	r0, [pc, #564]	; (d03c60e8 <ui_load_selected_file+0x2dc>)
d03c5eb4:	e7e1      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c5eb6:	7923      	ldrb	r3, [r4, #4]
d03c5eb8:	2001      	movs	r0, #1
d03c5eba:	7962      	ldrb	r2, [r4, #5]
d03c5ebc:	6831      	ldr	r1, [r6, #0]
d03c5ebe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c5ec2:	79a2      	ldrb	r2, [r4, #6]
d03c5ec4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c5ec8:	79e2      	ldrb	r2, [r4, #7]
d03c5eca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c5ece:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c5ed2:	681b      	ldr	r3, [r3, #0]
d03c5ed4:	689f      	ldr	r7, [r3, #8]
d03c5ed6:	ab18      	add	r3, sp, #96	; 0x60
d03c5ed8:	47b8      	blx	r7
d03c5eda:	7922      	ldrb	r2, [r4, #4]
d03c5edc:	7963      	ldrb	r3, [r4, #5]
d03c5ede:	4607      	mov	r7, r0
d03c5ee0:	2001      	movs	r0, #1
d03c5ee2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03c5ee6:	79a3      	ldrb	r3, [r4, #6]
d03c5ee8:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d03c5eec:	79e3      	ldrb	r3, [r4, #7]
d03c5eee:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d03c5ef2:	6813      	ldr	r3, [r2, #0]
d03c5ef4:	68db      	ldr	r3, [r3, #12]
d03c5ef6:	4798      	blx	r3
d03c5ef8:	b96f      	cbnz	r7, d03c5f16 <ui_load_selected_file+0x10a>
d03c5efa:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c5efc:	2b1f      	cmp	r3, #31
d03c5efe:	d90a      	bls.n	d03c5f16 <ui_load_selected_file+0x10a>
d03c5f00:	6834      	ldr	r4, [r6, #0]
d03c5f02:	2207      	movs	r2, #7
d03c5f04:	4979      	ldr	r1, [pc, #484]	; (d03c60ec <ui_load_selected_file+0x2e0>)
d03c5f06:	4620      	mov	r0, r4
d03c5f08:	f003 fd36 	bl	d03c9978 <memcmp>
d03c5f0c:	4606      	mov	r6, r0
d03c5f0e:	b910      	cbnz	r0, d03c5f16 <ui_load_selected_file+0x10a>
d03c5f10:	8923      	ldrh	r3, [r4, #8]
d03c5f12:	2b01      	cmp	r3, #1
d03c5f14:	d901      	bls.n	d03c5f1a <ui_load_selected_file+0x10e>
d03c5f16:	4876      	ldr	r0, [pc, #472]	; (d03c60f0 <ui_load_selected_file+0x2e4>)
d03c5f18:	e7af      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c5f1a:	f104 010c 	add.w	r1, r4, #12
d03c5f1e:	2210      	movs	r2, #16
d03c5f20:	4874      	ldr	r0, [pc, #464]	; (d03c60f4 <ui_load_selected_file+0x2e8>)
d03c5f22:	f104 0b42 	add.w	fp, r4, #66	; 0x42
d03c5f26:	f003 fd35 	bl	d03c9994 <memcpy>
d03c5f2a:	f104 011c 	add.w	r1, r4, #28
d03c5f2e:	2210      	movs	r2, #16
d03c5f30:	4871      	ldr	r0, [pc, #452]	; (d03c60f8 <ui_load_selected_file+0x2ec>)
d03c5f32:	f003 fd2f 	bl	d03c9994 <memcpy>
d03c5f36:	f104 012c 	add.w	r1, r4, #44	; 0x2c
d03c5f3a:	2210      	movs	r2, #16
d03c5f3c:	486f      	ldr	r0, [pc, #444]	; (d03c60fc <ui_load_selected_file+0x2f0>)
d03c5f3e:	f003 fd29 	bl	d03c9994 <memcpy>
d03c5f42:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
d03c5f44:	4b6e      	ldr	r3, [pc, #440]	; (d03c6100 <ui_load_selected_file+0x2f4>)
d03c5f46:	34c2      	adds	r4, #194	; 0xc2
d03c5f48:	f8df a1e8 	ldr.w	sl, [pc, #488]	; d03c6134 <ui_load_selected_file+0x328>
d03c5f4c:	801a      	strh	r2, [r3, #0]
d03c5f4e:	f834 2c84 	ldrh.w	r2, [r4, #-132]
d03c5f52:	4b6c      	ldr	r3, [pc, #432]	; (d03c6104 <ui_load_selected_file+0x2f8>)
d03c5f54:	801a      	strh	r2, [r3, #0]
d03c5f56:	f814 3c82 	ldrb.w	r3, [r4, #-130]
d03c5f5a:	4a6b      	ldr	r2, [pc, #428]	; (d03c6108 <ui_load_selected_file+0x2fc>)
d03c5f5c:	3b00      	subs	r3, #0
d03c5f5e:	bf18      	it	ne
d03c5f60:	2301      	movne	r3, #1
d03c5f62:	7013      	strb	r3, [r2, #0]
d03c5f64:	f814 3c81 	ldrb.w	r3, [r4, #-129]
d03c5f68:	4a68      	ldr	r2, [pc, #416]	; (d03c610c <ui_load_selected_file+0x300>)
d03c5f6a:	2b0f      	cmp	r3, #15
d03c5f6c:	bf98      	it	ls
d03c5f6e:	461f      	movls	r7, r3
d03c5f70:	4b67      	ldr	r3, [pc, #412]	; (d03c6110 <ui_load_selected_file+0x304>)
d03c5f72:	701f      	strb	r7, [r3, #0]
d03c5f74:	08bb      	lsrs	r3, r7, #2
d03c5f76:	7013      	strb	r3, [r2, #0]
d03c5f78:	f7fb f99c 	bl	d03c12b4 <ui_vm_editor_clear_ram_patch>
d03c5f7c:	f81b 9b01 	ldrb.w	r9, [fp], #1
d03c5f80:	f04f 0800 	mov.w	r8, #0
d03c5f84:	f109 32ff 	add.w	r2, r9, #4294967295	; 0xffffffff
d03c5f88:	2a5f      	cmp	r2, #95	; 0x5f
d03c5f8a:	bf88      	it	hi
d03c5f8c:	f04f 0960 	movhi.w	r9, #96	; 0x60
d03c5f90:	682f      	ldr	r7, [r5, #0]
d03c5f92:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d03c5f96:	2204      	movs	r2, #4
d03c5f98:	4437      	add	r7, r6
d03c5f9a:	eb07 0088 	add.w	r0, r7, r8, lsl #2
d03c5f9e:	f108 0801 	add.w	r8, r8, #1
d03c5fa2:	f003 fcf7 	bl	d03c9994 <memcpy>
d03c5fa6:	2300      	movs	r3, #0
d03c5fa8:	fa5f f288 	uxtb.w	r2, r8
d03c5fac:	4591      	cmp	r9, r2
d03c5fae:	d8ef      	bhi.n	d03c5f90 <ui_load_selected_file+0x184>
d03c5fb0:	f506 76c0 	add.w	r6, r6, #384	; 0x180
d03c5fb4:	f887 317c 	strb.w	r3, [r7, #380]	; 0x17c
d03c5fb8:	f504 74c0 	add.w	r4, r4, #384	; 0x180
d03c5fbc:	f84a 7b04 	str.w	r7, [sl], #4
d03c5fc0:	f5b6 4f40 	cmp.w	r6, #49152	; 0xc000
d03c5fc4:	d1da      	bne.n	d03c5f7c <ui_load_selected_file+0x170>
d03c5fc6:	f7fb fd37 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c5fca:	f7fb fbed 	bl	d03c17a8 <midi_update_all_active_volume>
d03c5fce:	4851      	ldr	r0, [pc, #324]	; (d03c6114 <ui_load_selected_file+0x308>)
d03c5fd0:	f7fb fa0c 	bl	d03c13ec <ui_set_status>
d03c5fd4:	4b50      	ldr	r3, [pc, #320]	; (d03c6118 <ui_load_selected_file+0x30c>)
d03c5fd6:	2200      	movs	r2, #0
d03c5fd8:	701a      	strb	r2, [r3, #0]
d03c5fda:	e750      	b.n	d03c5e7e <ui_load_selected_file+0x72>
d03c5fdc:	2d01      	cmp	r5, #1
d03c5fde:	f040 84ff 	bne.w	d03c69e0 <ui_load_selected_file+0xbd4>
d03c5fe2:	4b4b      	ldr	r3, [pc, #300]	; (d03c6110 <ui_load_selected_file+0x304>)
d03c5fe4:	2100      	movs	r1, #0
d03c5fe6:	4a43      	ldr	r2, [pc, #268]	; (d03c60f4 <ui_load_selected_file+0x2e8>)
d03c5fe8:	781b      	ldrb	r3, [r3, #0]
d03c5fea:	9118      	str	r1, [sp, #96]	; 0x60
d03c5fec:	5cd6      	ldrb	r6, [r2, r3]
d03c5fee:	56d3      	ldrsb	r3, [r2, r3]
d03c5ff0:	428b      	cmp	r3, r1
d03c5ff2:	da01      	bge.n	d03c5ff8 <ui_load_selected_file+0x1ec>
d03c5ff4:	4849      	ldr	r0, [pc, #292]	; (d03c611c <ui_load_selected_file+0x310>)
d03c5ff6:	e740      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c5ff8:	4f49      	ldr	r7, [pc, #292]	; (d03c6120 <ui_load_selected_file+0x314>)
d03c5ffa:	6838      	ldr	r0, [r7, #0]
d03c5ffc:	b908      	cbnz	r0, d03c6002 <ui_load_selected_file+0x1f6>
d03c5ffe:	4849      	ldr	r0, [pc, #292]	; (d03c6124 <ui_load_selected_file+0x318>)
d03c6000:	e73b      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c6002:	4c37      	ldr	r4, [pc, #220]	; (d03c60e0 <ui_load_selected_file+0x2d4>)
d03c6004:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c6008:	f003 fcd2 	bl	d03c99b0 <memset>
d03c600c:	4935      	ldr	r1, [pc, #212]	; (d03c60e4 <ui_load_selected_file+0x2d8>)
d03c600e:	7923      	ldrb	r3, [r4, #4]
d03c6010:	4628      	mov	r0, r5
d03c6012:	7962      	ldrb	r2, [r4, #5]
d03c6014:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6018:	79a2      	ldrb	r2, [r4, #6]
d03c601a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c601e:	79e2      	ldrb	r2, [r4, #7]
d03c6020:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6024:	462a      	mov	r2, r5
d03c6026:	681b      	ldr	r3, [r3, #0]
d03c6028:	681b      	ldr	r3, [r3, #0]
d03c602a:	4798      	blx	r3
d03c602c:	b108      	cbz	r0, d03c6032 <ui_load_selected_file+0x226>
d03c602e:	483e      	ldr	r0, [pc, #248]	; (d03c6128 <ui_load_selected_file+0x31c>)
d03c6030:	e723      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c6032:	7923      	ldrb	r3, [r4, #4]
d03c6034:	4628      	mov	r0, r5
d03c6036:	7962      	ldrb	r2, [r4, #5]
d03c6038:	6839      	ldr	r1, [r7, #0]
d03c603a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c603e:	79a2      	ldrb	r2, [r4, #6]
d03c6040:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6044:	79e2      	ldrb	r2, [r4, #7]
d03c6046:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c604a:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c604e:	681b      	ldr	r3, [r3, #0]
d03c6050:	f8d3 8008 	ldr.w	r8, [r3, #8]
d03c6054:	ab18      	add	r3, sp, #96	; 0x60
d03c6056:	47c0      	blx	r8
d03c6058:	7923      	ldrb	r3, [r4, #4]
d03c605a:	7962      	ldrb	r2, [r4, #5]
d03c605c:	4680      	mov	r8, r0
d03c605e:	4628      	mov	r0, r5
d03c6060:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6064:	79a2      	ldrb	r2, [r4, #6]
d03c6066:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c606a:	79e2      	ldrb	r2, [r4, #7]
d03c606c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6070:	681b      	ldr	r3, [r3, #0]
d03c6072:	68db      	ldr	r3, [r3, #12]
d03c6074:	4798      	blx	r3
d03c6076:	f1b8 0f00 	cmp.w	r8, #0
d03c607a:	d113      	bne.n	d03c60a4 <ui_load_selected_file+0x298>
d03c607c:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c607e:	2b1f      	cmp	r3, #31
d03c6080:	d910      	bls.n	d03c60a4 <ui_load_selected_file+0x298>
d03c6082:	683d      	ldr	r5, [r7, #0]
d03c6084:	2207      	movs	r2, #7
d03c6086:	4929      	ldr	r1, [pc, #164]	; (d03c612c <ui_load_selected_file+0x320>)
d03c6088:	4628      	mov	r0, r5
d03c608a:	f003 fc75 	bl	d03c9978 <memcmp>
d03c608e:	4604      	mov	r4, r0
d03c6090:	b940      	cbnz	r0, d03c60a4 <ui_load_selected_file+0x298>
d03c6092:	892b      	ldrh	r3, [r5, #8]
d03c6094:	2b01      	cmp	r3, #1
d03c6096:	d805      	bhi.n	d03c60a4 <ui_load_selected_file+0x298>
d03c6098:	f895 800d 	ldrb.w	r8, [r5, #13]
d03c609c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
d03c60a0:	2b5f      	cmp	r3, #95	; 0x5f
d03c60a2:	d949      	bls.n	d03c6138 <ui_load_selected_file+0x32c>
d03c60a4:	4822      	ldr	r0, [pc, #136]	; (d03c6130 <ui_load_selected_file+0x324>)
d03c60a6:	e6e8      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c60a8:	d03cda78 	.word	0xd03cda78
d03c60ac:	d03ce31a 	.word	0xd03ce31a
d03c60b0:	d03cbac7 	.word	0xd03cbac7
d03c60b4:	d03cdad9 	.word	0xd03cdad9
d03c60b8:	d03cbad8 	.word	0xd03cbad8
d03c60bc:	d03cbaf0 	.word	0xd03cbaf0
d03c60c0:	d03cbb06 	.word	0xd03cbb06
d03c60c4:	d03cbb1c 	.word	0xd03cbb1c
d03c60c8:	d03cbb2f 	.word	0xd03cbb2f
d03c60cc:	d03cdb19 	.word	0xd03cdb19
d03c60d0:	d03cf3a0 	.word	0xd03cf3a0
d03c60d4:	d03cf398 	.word	0xd03cf398
d03c60d8:	d03cbb42 	.word	0xd03cbb42
d03c60dc:	d03cd140 	.word	0xd03cd140
d03c60e0:	2001f000 	.word	0x2001f000
d03c60e4:	d03cf331 	.word	0xd03cf331
d03c60e8:	d03cbb5e 	.word	0xd03cbb5e
d03c60ec:	d03cb46a 	.word	0xd03cb46a
d03c60f0:	d03cbb77 	.word	0xd03cbb77
d03c60f4:	d03ccd64 	.word	0xd03ccd64
d03c60f8:	d03ccd74 	.word	0xd03ccd74
d03c60fc:	d03ccd54 	.word	0xd03ccd54
d03c6100:	d03ccf8e 	.word	0xd03ccf8e
d03c6104:	d03ccd8a 	.word	0xd03ccd8a
d03c6108:	d03ccd88 	.word	0xd03ccd88
d03c610c:	d03cda32 	.word	0xd03cda32
d03c6110:	d03cf3ca 	.word	0xd03cf3ca
d03c6114:	d03cbb88 	.word	0xd03cbb88
d03c6118:	d03cda34 	.word	0xd03cda34
d03c611c:	d03cbb97 	.word	0xd03cbb97
d03c6120:	d03cf39c 	.word	0xd03cf39c
d03c6124:	d03cbbb1 	.word	0xd03cbbb1
d03c6128:	d03cbbcd 	.word	0xd03cbbcd
d03c612c:	d03cb4e5 	.word	0xd03cb4e5
d03c6130:	d03cbbe6 	.word	0xd03cbbe6
d03c6134:	d03cc670 	.word	0xd03cc670
d03c6138:	4fa3      	ldr	r7, [pc, #652]	; (d03c63c8 <ui_load_selected_file+0x5bc>)
d03c613a:	f7fb f8bb 	bl	d03c12b4 <ui_vm_editor_clear_ram_patch>
d03c613e:	4ba3      	ldr	r3, [pc, #652]	; (d03c63cc <ui_load_selected_file+0x5c0>)
d03c6140:	350e      	adds	r5, #14
d03c6142:	f857 2026 	ldr.w	r2, [r7, r6, lsl #2]
d03c6146:	4621      	mov	r1, r4
d03c6148:	f8df 9284 	ldr.w	r9, [pc, #644]	; d03c63d0 <ui_load_selected_file+0x5c4>
d03c614c:	601a      	str	r2, [r3, #0]
d03c614e:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c6152:	489f      	ldr	r0, [pc, #636]	; (d03c63d0 <ui_load_selected_file+0x5c4>)
d03c6154:	f003 fc2c 	bl	d03c99b0 <memset>
d03c6158:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d03c615c:	2204      	movs	r2, #4
d03c615e:	eb09 0084 	add.w	r0, r9, r4, lsl #2
d03c6162:	3401      	adds	r4, #1
d03c6164:	f003 fc16 	bl	d03c9994 <memcpy>
d03c6168:	b2e3      	uxtb	r3, r4
d03c616a:	4598      	cmp	r8, r3
d03c616c:	d8f4      	bhi.n	d03c6158 <ui_load_selected_file+0x34c>
d03c616e:	4a99      	ldr	r2, [pc, #612]	; (d03c63d4 <ui_load_selected_file+0x5c8>)
d03c6170:	2101      	movs	r1, #1
d03c6172:	2300      	movs	r3, #0
d03c6174:	f847 9026 	str.w	r9, [r7, r6, lsl #2]
d03c6178:	7016      	strb	r6, [r2, #0]
d03c617a:	4a97      	ldr	r2, [pc, #604]	; (d03c63d8 <ui_load_selected_file+0x5cc>)
d03c617c:	f889 317c 	strb.w	r3, [r9, #380]	; 0x17c
d03c6180:	7011      	strb	r1, [r2, #0]
d03c6182:	4a96      	ldr	r2, [pc, #600]	; (d03c63dc <ui_load_selected_file+0x5d0>)
d03c6184:	7013      	strb	r3, [r2, #0]
d03c6186:	4a96      	ldr	r2, [pc, #600]	; (d03c63e0 <ui_load_selected_file+0x5d4>)
d03c6188:	7013      	strb	r3, [r2, #0]
d03c618a:	4a96      	ldr	r2, [pc, #600]	; (d03c63e4 <ui_load_selected_file+0x5d8>)
d03c618c:	7013      	strb	r3, [r2, #0]
d03c618e:	f7fb fc53 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c6192:	4895      	ldr	r0, [pc, #596]	; (d03c63e8 <ui_load_selected_file+0x5dc>)
d03c6194:	e71c      	b.n	d03c5fd0 <ui_load_selected_file+0x1c4>
d03c6196:	4c95      	ldr	r4, [pc, #596]	; (d03c63ec <ui_load_selected_file+0x5e0>)
d03c6198:	2224      	movs	r2, #36	; 0x24
d03c619a:	f003 fc09 	bl	d03c99b0 <memset>
d03c619e:	4994      	ldr	r1, [pc, #592]	; (d03c63f0 <ui_load_selected_file+0x5e4>)
d03c61a0:	7923      	ldrb	r3, [r4, #4]
d03c61a2:	7962      	ldrb	r2, [r4, #5]
d03c61a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c61a8:	79a2      	ldrb	r2, [r4, #6]
d03c61aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c61ae:	79e2      	ldrb	r2, [r4, #7]
d03c61b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c61b4:	2201      	movs	r2, #1
d03c61b6:	681b      	ldr	r3, [r3, #0]
d03c61b8:	4610      	mov	r0, r2
d03c61ba:	681b      	ldr	r3, [r3, #0]
d03c61bc:	4798      	blx	r3
d03c61be:	b108      	cbz	r0, d03c61c4 <ui_load_selected_file+0x3b8>
d03c61c0:	488c      	ldr	r0, [pc, #560]	; (d03c63f4 <ui_load_selected_file+0x5e8>)
d03c61c2:	e65a      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c61c4:	7923      	ldrb	r3, [r4, #4]
d03c61c6:	2001      	movs	r0, #1
d03c61c8:	7962      	ldrb	r2, [r4, #5]
d03c61ca:	6829      	ldr	r1, [r5, #0]
d03c61cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c61d0:	79a2      	ldrb	r2, [r4, #6]
d03c61d2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c61d6:	79e2      	ldrb	r2, [r4, #7]
d03c61d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c61dc:	2224      	movs	r2, #36	; 0x24
d03c61de:	681b      	ldr	r3, [r3, #0]
d03c61e0:	689e      	ldr	r6, [r3, #8]
d03c61e2:	ab14      	add	r3, sp, #80	; 0x50
d03c61e4:	47b0      	blx	r6
d03c61e6:	b988      	cbnz	r0, d03c620c <ui_load_selected_file+0x400>
d03c61e8:	9b14      	ldr	r3, [sp, #80]	; 0x50
d03c61ea:	2b1f      	cmp	r3, #31
d03c61ec:	d90e      	bls.n	d03c620c <ui_load_selected_file+0x400>
d03c61ee:	682f      	ldr	r7, [r5, #0]
d03c61f0:	2207      	movs	r2, #7
d03c61f2:	4981      	ldr	r1, [pc, #516]	; (d03c63f8 <ui_load_selected_file+0x5ec>)
d03c61f4:	4638      	mov	r0, r7
d03c61f6:	f003 fbbf 	bl	d03c9978 <memcmp>
d03c61fa:	4606      	mov	r6, r0
d03c61fc:	b930      	cbnz	r0, d03c620c <ui_load_selected_file+0x400>
d03c61fe:	893b      	ldrh	r3, [r7, #8]
d03c6200:	2b01      	cmp	r3, #1
d03c6202:	d803      	bhi.n	d03c620c <ui_load_selected_file+0x400>
d03c6204:	6938      	ldr	r0, [r7, #16]
d03c6206:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
d03c620a:	d90f      	bls.n	d03c622c <ui_load_selected_file+0x420>
d03c620c:	7923      	ldrb	r3, [r4, #4]
d03c620e:	2001      	movs	r0, #1
d03c6210:	7962      	ldrb	r2, [r4, #5]
d03c6212:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6216:	79a2      	ldrb	r2, [r4, #6]
d03c6218:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c621c:	79e2      	ldrb	r2, [r4, #7]
d03c621e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6222:	681b      	ldr	r3, [r3, #0]
d03c6224:	68db      	ldr	r3, [r3, #12]
d03c6226:	4798      	blx	r3
d03c6228:	4874      	ldr	r0, [pc, #464]	; (d03c63fc <ui_load_selected_file+0x5f0>)
d03c622a:	e626      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c622c:	f7fb f870 	bl	d03c1310 <seq_reserve_notes>
d03c6230:	b978      	cbnz	r0, d03c6252 <ui_load_selected_file+0x446>
d03c6232:	7923      	ldrb	r3, [r4, #4]
d03c6234:	2001      	movs	r0, #1
d03c6236:	7962      	ldrb	r2, [r4, #5]
d03c6238:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c623c:	79a2      	ldrb	r2, [r4, #6]
d03c623e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6242:	79e2      	ldrb	r2, [r4, #7]
d03c6244:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6248:	681b      	ldr	r3, [r3, #0]
d03c624a:	68db      	ldr	r3, [r3, #12]
d03c624c:	4798      	blx	r3
d03c624e:	486c      	ldr	r0, [pc, #432]	; (d03c6400 <ui_load_selected_file+0x5f4>)
d03c6250:	e613      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c6252:	2001      	movs	r0, #1
d03c6254:	4f6b      	ldr	r7, [pc, #428]	; (d03c6404 <ui_load_selected_file+0x5f8>)
d03c6256:	f7fb fc1f 	bl	d03c1a98 <seq_stop_transport>
d03c625a:	f8df 81e0 	ldr.w	r8, [pc, #480]	; d03c643c <ui_load_selected_file+0x630>
d03c625e:	f7fb f80d 	bl	d03c127c <seq_clear_note_storage>
d03c6262:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c6266:	4631      	mov	r1, r6
d03c6268:	4867      	ldr	r0, [pc, #412]	; (d03c6408 <ui_load_selected_file+0x5fc>)
d03c626a:	f003 fba1 	bl	d03c99b0 <memset>
d03c626e:	682e      	ldr	r6, [r5, #0]
d03c6270:	4b66      	ldr	r3, [pc, #408]	; (d03c640c <ui_load_selected_file+0x600>)
d03c6272:	6931      	ldr	r1, [r6, #16]
d03c6274:	681b      	ldr	r3, [r3, #0]
d03c6276:	4d66      	ldr	r5, [pc, #408]	; (d03c6410 <ui_load_selected_file+0x604>)
d03c6278:	4299      	cmp	r1, r3
d03c627a:	bf34      	ite	cc
d03c627c:	460b      	movcc	r3, r1
d03c627e:	2300      	movcs	r3, #0
d03c6280:	f9b6 000c 	ldrsh.w	r0, [r6, #12]
d03c6284:	6029      	str	r1, [r5, #0]
d03c6286:	603b      	str	r3, [r7, #0]
d03c6288:	f7fa fcd8 	bl	d03c0c3c <seq_set_bpm>
d03c628c:	6973      	ldr	r3, [r6, #20]
d03c628e:	4a61      	ldr	r2, [pc, #388]	; (d03c6414 <ui_load_selected_file+0x608>)
d03c6290:	4861      	ldr	r0, [pc, #388]	; (d03c6418 <ui_load_selected_file+0x60c>)
d03c6292:	6013      	str	r3, [r2, #0]
d03c6294:	7e33      	ldrb	r3, [r6, #24]
d03c6296:	3b00      	subs	r3, #0
d03c6298:	bf18      	it	ne
d03c629a:	2301      	movne	r3, #1
d03c629c:	7003      	strb	r3, [r0, #0]
d03c629e:	7e73      	ldrb	r3, [r6, #25]
d03c62a0:	4616      	mov	r6, r2
d03c62a2:	485e      	ldr	r0, [pc, #376]	; (d03c641c <ui_load_selected_file+0x610>)
d03c62a4:	f003 0303 	and.w	r3, r3, #3
d03c62a8:	7003      	strb	r3, [r0, #0]
d03c62aa:	4b5d      	ldr	r3, [pc, #372]	; (d03c6420 <ui_load_selected_file+0x614>)
d03c62ac:	6818      	ldr	r0, [r3, #0]
d03c62ae:	4b5d      	ldr	r3, [pc, #372]	; (d03c6424 <ui_load_selected_file+0x618>)
d03c62b0:	6018      	str	r0, [r3, #0]
d03c62b2:	2900      	cmp	r1, #0
d03c62b4:	d02d      	beq.n	d03c6312 <ui_load_selected_file+0x506>
d03c62b6:	7923      	ldrb	r3, [r4, #4]
d03c62b8:	2001      	movs	r0, #1
d03c62ba:	7962      	ldrb	r2, [r4, #5]
d03c62bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c62c0:	79a2      	ldrb	r2, [r4, #6]
d03c62c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c62c6:	79e2      	ldrb	r2, [r4, #7]
d03c62c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c62cc:	010a      	lsls	r2, r1, #4
d03c62ce:	f8d8 1000 	ldr.w	r1, [r8]
d03c62d2:	681b      	ldr	r3, [r3, #0]
d03c62d4:	f8d3 9008 	ldr.w	r9, [r3, #8]
d03c62d8:	ab18      	add	r3, sp, #96	; 0x60
d03c62da:	47c8      	blx	r9
d03c62dc:	b920      	cbnz	r0, d03c62e8 <ui_load_selected_file+0x4dc>
d03c62de:	682a      	ldr	r2, [r5, #0]
d03c62e0:	9b18      	ldr	r3, [sp, #96]	; 0x60
d03c62e2:	ebb3 1f02 	cmp.w	r3, r2, lsl #4
d03c62e6:	d014      	beq.n	d03c6312 <ui_load_selected_file+0x506>
d03c62e8:	7923      	ldrb	r3, [r4, #4]
d03c62ea:	2001      	movs	r0, #1
d03c62ec:	7962      	ldrb	r2, [r4, #5]
d03c62ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c62f2:	79a2      	ldrb	r2, [r4, #6]
d03c62f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c62f8:	79e2      	ldrb	r2, [r4, #7]
d03c62fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c62fe:	681b      	ldr	r3, [r3, #0]
d03c6300:	68db      	ldr	r3, [r3, #12]
d03c6302:	4798      	blx	r3
d03c6304:	2300      	movs	r3, #0
d03c6306:	602b      	str	r3, [r5, #0]
d03c6308:	603b      	str	r3, [r7, #0]
d03c630a:	f7fa ffb7 	bl	d03c127c <seq_clear_note_storage>
d03c630e:	4846      	ldr	r0, [pc, #280]	; (d03c6428 <ui_load_selected_file+0x61c>)
d03c6310:	e5b3      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c6312:	7923      	ldrb	r3, [r4, #4]
d03c6314:	2001      	movs	r0, #1
d03c6316:	7962      	ldrb	r2, [r4, #5]
d03c6318:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c631c:	79a2      	ldrb	r2, [r4, #6]
d03c631e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6322:	79e2      	ldrb	r2, [r4, #7]
d03c6324:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6328:	681b      	ldr	r3, [r3, #0]
d03c632a:	68db      	ldr	r3, [r3, #12]
d03c632c:	4798      	blx	r3
d03c632e:	2100      	movs	r1, #0
d03c6330:	682c      	ldr	r4, [r5, #0]
d03c6332:	2001      	movs	r0, #1
d03c6334:	f8d8 3000 	ldr.w	r3, [r8]
d03c6338:	460d      	mov	r5, r1
d03c633a:	42a1      	cmp	r1, r4
d03c633c:	d109      	bne.n	d03c6352 <ui_load_selected_file+0x546>
d03c633e:	f7fa fc71 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c6342:	6830      	ldr	r0, [r6, #0]
d03c6344:	f7fb fa54 	bl	d03c17f0 <seq_playback_sync>
d03c6348:	4b38      	ldr	r3, [pc, #224]	; (d03c642c <ui_load_selected_file+0x620>)
d03c634a:	2201      	movs	r2, #1
d03c634c:	4838      	ldr	r0, [pc, #224]	; (d03c6430 <ui_load_selected_file+0x624>)
d03c634e:	701a      	strb	r2, [r3, #0]
d03c6350:	e63e      	b.n	d03c5fd0 <ui_load_selected_file+0x1c4>
d03c6352:	7a5a      	ldrb	r2, [r3, #9]
d03c6354:	2a0f      	cmp	r2, #15
d03c6356:	685a      	ldr	r2, [r3, #4]
d03c6358:	bf88      	it	hi
d03c635a:	725d      	strbhi	r5, [r3, #9]
d03c635c:	b902      	cbnz	r2, d03c6360 <ui_load_selected_file+0x554>
d03c635e:	6058      	str	r0, [r3, #4]
d03c6360:	7a5a      	ldrb	r2, [r3, #9]
d03c6362:	3101      	adds	r1, #1
d03c6364:	7358      	strb	r0, [r3, #13]
d03c6366:	3310      	adds	r3, #16
d03c6368:	f002 0207 	and.w	r2, r2, #7
d03c636c:	3220      	adds	r2, #32
d03c636e:	f803 2c04 	strb.w	r2, [r3, #-4]
d03c6372:	e7e2      	b.n	d03c633a <ui_load_selected_file+0x52e>
d03c6374:	792b      	ldrb	r3, [r5, #4]
d03c6376:	796a      	ldrb	r2, [r5, #5]
d03c6378:	491d      	ldr	r1, [pc, #116]	; (d03c63f0 <ui_load_selected_file+0x5e4>)
d03c637a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c637e:	79aa      	ldrb	r2, [r5, #6]
d03c6380:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6384:	79ea      	ldrb	r2, [r5, #7]
d03c6386:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c638a:	2201      	movs	r2, #1
d03c638c:	681b      	ldr	r3, [r3, #0]
d03c638e:	4610      	mov	r0, r2
d03c6390:	681b      	ldr	r3, [r3, #0]
d03c6392:	4798      	blx	r3
d03c6394:	4602      	mov	r2, r0
d03c6396:	b108      	cbz	r0, d03c639c <ui_load_selected_file+0x590>
d03c6398:	4826      	ldr	r0, [pc, #152]	; (d03c6434 <ui_load_selected_file+0x628>)
d03c639a:	e56e      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c639c:	2104      	movs	r1, #4
d03c639e:	a80d      	add	r0, sp, #52	; 0x34
d03c63a0:	f7fc f960 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c63a4:	2800      	cmp	r0, #0
d03c63a6:	d14b      	bne.n	d03c6440 <ui_load_selected_file+0x634>
d03c63a8:	7923      	ldrb	r3, [r4, #4]
d03c63aa:	2001      	movs	r0, #1
d03c63ac:	7962      	ldrb	r2, [r4, #5]
d03c63ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c63b2:	79a2      	ldrb	r2, [r4, #6]
d03c63b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c63b8:	79e2      	ldrb	r2, [r4, #7]
d03c63ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c63be:	681b      	ldr	r3, [r3, #0]
d03c63c0:	68db      	ldr	r3, [r3, #12]
d03c63c2:	4798      	blx	r3
d03c63c4:	481c      	ldr	r0, [pc, #112]	; (d03c6438 <ui_load_selected_file+0x62c>)
d03c63c6:	e558      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c63c8:	d03cc670 	.word	0xd03cc670
d03c63cc:	d03cf584 	.word	0xd03cf584
d03c63d0:	d03cf402 	.word	0xd03cf402
d03c63d4:	d03cf588 	.word	0xd03cf588
d03c63d8:	d03cf583 	.word	0xd03cf583
d03c63dc:	d03cf589 	.word	0xd03cf589
d03c63e0:	d03cf582 	.word	0xd03cf582
d03c63e4:	d03cf591 	.word	0xd03cf591
d03c63e8:	d03cbbf7 	.word	0xd03cbbf7
d03c63ec:	2001f000 	.word	0x2001f000
d03c63f0:	d03cf331 	.word	0xd03cf331
d03c63f4:	d03cbc27 	.word	0xd03cbc27
d03c63f8:	d03cb40e 	.word	0xd03cb40e
d03c63fc:	d03cbc3d 	.word	0xd03cbc3d
d03c6400:	d03cbc4b 	.word	0xd03cbc4b
d03c6404:	d03ccfcc 	.word	0xd03ccfcc
d03c6408:	d03ccfec 	.word	0xd03ccfec
d03c640c:	d03ccfd0 	.word	0xd03ccfd0
d03c6410:	d03ccfd4 	.word	0xd03ccfd4
d03c6414:	d03cd100 	.word	0xd03cd100
d03c6418:	d03cd106 	.word	0xd03cd106
d03c641c:	d03cd107 	.word	0xd03cd107
d03c6420:	d03ccfb0 	.word	0xd03ccfb0
d03c6424:	d03ccfc4 	.word	0xd03ccfc4
d03c6428:	d03cbc61 	.word	0xd03cbc61
d03c642c:	d03cf3cb 	.word	0xd03cf3cb
d03c6430:	d03cbc74 	.word	0xd03cbc74
d03c6434:	d03cbc8e 	.word	0xd03cbc8e
d03c6438:	d03cbca4 	.word	0xd03cbca4
d03c643c:	d03ccfd8 	.word	0xd03ccfd8
d03c6440:	2204      	movs	r2, #4
d03c6442:	498e      	ldr	r1, [pc, #568]	; (d03c667c <ui_load_selected_file+0x870>)
d03c6444:	a80d      	add	r0, sp, #52	; 0x34
d03c6446:	f003 fa97 	bl	d03c9978 <memcmp>
d03c644a:	4605      	mov	r5, r0
d03c644c:	2800      	cmp	r0, #0
d03c644e:	d1ab      	bne.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c6450:	a80e      	add	r0, sp, #56	; 0x38
d03c6452:	f7fc f949 	bl	d03c26e8 <ui_file_read_be32.constprop.0>
d03c6456:	2800      	cmp	r0, #0
d03c6458:	d0a6      	beq.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c645a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d03c645c:	2b05      	cmp	r3, #5
d03c645e:	d9a3      	bls.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c6460:	f10d 002a 	add.w	r0, sp, #42	; 0x2a
d03c6464:	f7fc f92e 	bl	d03c26c4 <ui_file_read_be16.constprop.0>
d03c6468:	2800      	cmp	r0, #0
d03c646a:	d09d      	beq.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c646c:	a80b      	add	r0, sp, #44	; 0x2c
d03c646e:	f7fc f929 	bl	d03c26c4 <ui_file_read_be16.constprop.0>
d03c6472:	2800      	cmp	r0, #0
d03c6474:	d098      	beq.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c6476:	f10d 002e 	add.w	r0, sp, #46	; 0x2e
d03c647a:	f7fc f923 	bl	d03c26c4 <ui_file_read_be16.constprop.0>
d03c647e:	2800      	cmp	r0, #0
d03c6480:	d092      	beq.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c6482:	980e      	ldr	r0, [sp, #56]	; 0x38
d03c6484:	2806      	cmp	r0, #6
d03c6486:	d905      	bls.n	d03c6494 <ui_load_selected_file+0x688>
d03c6488:	4629      	mov	r1, r5
d03c648a:	3806      	subs	r0, #6
d03c648c:	f7fc f93b 	bl	d03c2706 <ui_file_skip.constprop.0>
d03c6490:	2800      	cmp	r0, #0
d03c6492:	d089      	beq.n	d03c63a8 <ui_load_selected_file+0x59c>
d03c6494:	f8bd 302a 	ldrh.w	r3, [sp, #42]	; 0x2a
d03c6498:	2b01      	cmp	r3, #1
d03c649a:	d806      	bhi.n	d03c64aa <ui_load_selected_file+0x69e>
d03c649c:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
d03c64a0:	b118      	cbz	r0, d03c64aa <ui_load_selected_file+0x69e>
d03c64a2:	f9bd 302e 	ldrsh.w	r3, [sp, #46]	; 0x2e
d03c64a6:	2b00      	cmp	r3, #0
d03c64a8:	da0f      	bge.n	d03c64ca <ui_load_selected_file+0x6be>
d03c64aa:	7923      	ldrb	r3, [r4, #4]
d03c64ac:	2001      	movs	r0, #1
d03c64ae:	7962      	ldrb	r2, [r4, #5]
d03c64b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c64b4:	79a2      	ldrb	r2, [r4, #6]
d03c64b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c64ba:	79e2      	ldrb	r2, [r4, #7]
d03c64bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c64c0:	681b      	ldr	r3, [r3, #0]
d03c64c2:	68db      	ldr	r3, [r3, #12]
d03c64c4:	4798      	blx	r3
d03c64c6:	486e      	ldr	r0, [pc, #440]	; (d03c6680 <ui_load_selected_file+0x874>)
d03c64c8:	e4d7      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c64ca:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d03c64cc:	2701      	movs	r7, #1
d03c64ce:	f04f 08ff 	mov.w	r8, #255	; 0xff
d03c64d2:	496c      	ldr	r1, [pc, #432]	; (d03c6684 <ui_load_selected_file+0x878>)
d03c64d4:	f103 0208 	add.w	r2, r3, #8
d03c64d8:	4b6b      	ldr	r3, [pc, #428]	; (d03c6688 <ui_load_selected_file+0x87c>)
d03c64da:	2500      	movs	r5, #0
d03c64dc:	4e6b      	ldr	r6, [pc, #428]	; (d03c668c <ui_load_selected_file+0x880>)
d03c64de:	701f      	strb	r7, [r3, #0]
d03c64e0:	4b6b      	ldr	r3, [pc, #428]	; (d03c6690 <ui_load_selected_file+0x884>)
d03c64e2:	8035      	strh	r5, [r6, #0]
d03c64e4:	f883 8000 	strb.w	r8, [r3]
d03c64e8:	4b6a      	ldr	r3, [pc, #424]	; (d03c6694 <ui_load_selected_file+0x888>)
d03c64ea:	8018      	strh	r0, [r3, #0]
d03c64ec:	4628      	mov	r0, r5
d03c64ee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03c64f0:	42bb      	cmp	r3, r7
d03c64f2:	bf38      	it	cc
d03c64f4:	463b      	movcc	r3, r7
d03c64f6:	600b      	str	r3, [r1, #0]
d03c64f8:	4967      	ldr	r1, [pc, #412]	; (d03c6698 <ui_load_selected_file+0x88c>)
d03c64fa:	429a      	cmp	r2, r3
d03c64fc:	bf94      	ite	ls
d03c64fe:	600a      	strls	r2, [r1, #0]
d03c6500:	600b      	strhi	r3, [r1, #0]
d03c6502:	4639      	mov	r1, r7
d03c6504:	f7fb fd46 	bl	d03c1f94 <ui_midi_import_progress_add>
d03c6508:	4638      	mov	r0, r7
d03c650a:	f7fb fac5 	bl	d03c1a98 <seq_stop_transport>
d03c650e:	f7fa feb5 	bl	d03c127c <seq_clear_note_storage>
d03c6512:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c6516:	4629      	mov	r1, r5
d03c6518:	4860      	ldr	r0, [pc, #384]	; (d03c669c <ui_load_selected_file+0x890>)
d03c651a:	f003 fa49 	bl	d03c99b0 <memset>
d03c651e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
d03c6522:	4641      	mov	r1, r8
d03c6524:	485e      	ldr	r0, [pc, #376]	; (d03c66a0 <ui_load_selected_file+0x894>)
d03c6526:	f003 fa43 	bl	d03c99b0 <memset>
d03c652a:	2210      	movs	r2, #16
d03c652c:	495d      	ldr	r1, [pc, #372]	; (d03c66a4 <ui_load_selected_file+0x898>)
d03c652e:	a814      	add	r0, sp, #80	; 0x50
d03c6530:	f003 fa30 	bl	d03c9994 <memcpy>
d03c6534:	4a5c      	ldr	r2, [pc, #368]	; (d03c66a8 <ui_load_selected_file+0x89c>)
d03c6536:	4b5d      	ldr	r3, [pc, #372]	; (d03c66ac <ui_load_selected_file+0x8a0>)
d03c6538:	6015      	str	r5, [r2, #0]
d03c653a:	4a5d      	ldr	r2, [pc, #372]	; (d03c66b0 <ui_load_selected_file+0x8a4>)
d03c653c:	601d      	str	r5, [r3, #0]
d03c653e:	6811      	ldr	r1, [r2, #0]
d03c6540:	4b5c      	ldr	r3, [pc, #368]	; (d03c66b4 <ui_load_selected_file+0x8a8>)
d03c6542:	4a5d      	ldr	r2, [pc, #372]	; (d03c66b8 <ui_load_selected_file+0x8ac>)
d03c6544:	601d      	str	r5, [r3, #0]
d03c6546:	6011      	str	r1, [r2, #0]
d03c6548:	9501      	str	r5, [sp, #4]
d03c654a:	9305      	str	r3, [sp, #20]
d03c654c:	9606      	str	r6, [sp, #24]
d03c654e:	f8bd 302c 	ldrh.w	r3, [sp, #44]	; 0x2c
d03c6552:	9a01      	ldr	r2, [sp, #4]
d03c6554:	4293      	cmp	r3, r2
d03c6556:	d83c      	bhi.n	d03c65d2 <ui_load_selected_file+0x7c6>
d03c6558:	f8bd 102e 	ldrh.w	r1, [sp, #46]	; 0x2e
d03c655c:	4608      	mov	r0, r1
d03c655e:	f7fa fd69 	bl	d03c1034 <ui_midi_import_close_open_notes>
d03c6562:	7923      	ldrb	r3, [r4, #4]
d03c6564:	7962      	ldrb	r2, [r4, #5]
d03c6566:	2001      	movs	r0, #1
d03c6568:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c656c:	79a2      	ldrb	r2, [r4, #6]
d03c656e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6572:	79e2      	ldrb	r2, [r4, #7]
d03c6574:	4c44      	ldr	r4, [pc, #272]	; (d03c6688 <ui_load_selected_file+0x87c>)
d03c6576:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c657a:	681b      	ldr	r3, [r3, #0]
d03c657c:	68db      	ldr	r3, [r3, #12]
d03c657e:	4798      	blx	r3
d03c6580:	7822      	ldrb	r2, [r4, #0]
d03c6582:	b13a      	cbz	r2, d03c6594 <ui_load_selected_file+0x788>
d03c6584:	4b3f      	ldr	r3, [pc, #252]	; (d03c6684 <ui_load_selected_file+0x878>)
d03c6586:	2101      	movs	r1, #1
d03c6588:	2000      	movs	r0, #0
d03c658a:	681a      	ldr	r2, [r3, #0]
d03c658c:	4b42      	ldr	r3, [pc, #264]	; (d03c6698 <ui_load_selected_file+0x88c>)
d03c658e:	601a      	str	r2, [r3, #0]
d03c6590:	f7fb fd00 	bl	d03c1f94 <ui_midi_import_progress_add>
d03c6594:	2300      	movs	r3, #0
d03c6596:	4a49      	ldr	r2, [pc, #292]	; (d03c66bc <ui_load_selected_file+0x8b0>)
d03c6598:	7023      	strb	r3, [r4, #0]
d03c659a:	4c44      	ldr	r4, [pc, #272]	; (d03c66ac <ui_load_selected_file+0x8a0>)
d03c659c:	6812      	ldr	r2, [r2, #0]
d03c659e:	6823      	ldr	r3, [r4, #0]
d03c65a0:	4293      	cmp	r3, r2
d03c65a2:	bf28      	it	cs
d03c65a4:	2300      	movcs	r3, #0
d03c65a6:	9a05      	ldr	r2, [sp, #20]
d03c65a8:	6013      	str	r3, [r2, #0]
d03c65aa:	f7fa fb3b 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c65ae:	4b3e      	ldr	r3, [pc, #248]	; (d03c66a8 <ui_load_selected_file+0x89c>)
d03c65b0:	6818      	ldr	r0, [r3, #0]
d03c65b2:	f7fb f91d 	bl	d03c17f0 <seq_playback_sync>
d03c65b6:	4b42      	ldr	r3, [pc, #264]	; (d03c66c0 <ui_load_selected_file+0x8b4>)
d03c65b8:	2201      	movs	r2, #1
d03c65ba:	2128      	movs	r1, #40	; 0x28
d03c65bc:	a818      	add	r0, sp, #96	; 0x60
d03c65be:	701a      	strb	r2, [r3, #0]
d03c65c0:	2205      	movs	r2, #5
d03c65c2:	4b40      	ldr	r3, [pc, #256]	; (d03c66c4 <ui_load_selected_file+0x8b8>)
d03c65c4:	701a      	strb	r2, [r3, #0]
d03c65c6:	6823      	ldr	r3, [r4, #0]
d03c65c8:	4a3f      	ldr	r2, [pc, #252]	; (d03c66c8 <ui_load_selected_file+0x8bc>)
d03c65ca:	f003 fcfb 	bl	d03c9fc4 <sniprintf>
d03c65ce:	a818      	add	r0, sp, #96	; 0x60
d03c65d0:	e4fe      	b.n	d03c5fd0 <ui_load_selected_file+0x1c4>
d03c65d2:	9b01      	ldr	r3, [sp, #4]
d03c65d4:	2600      	movs	r6, #0
d03c65d6:	2101      	movs	r1, #1
d03c65d8:	3301      	adds	r3, #1
d03c65da:	4630      	mov	r0, r6
d03c65dc:	9611      	str	r6, [sp, #68]	; 0x44
d03c65de:	b29b      	uxth	r3, r3
d03c65e0:	9301      	str	r3, [sp, #4]
d03c65e2:	9a01      	ldr	r2, [sp, #4]
d03c65e4:	9b06      	ldr	r3, [sp, #24]
d03c65e6:	801a      	strh	r2, [r3, #0]
d03c65e8:	f7fb fcd4 	bl	d03c1f94 <ui_midi_import_progress_add>
d03c65ec:	4632      	mov	r2, r6
d03c65ee:	2104      	movs	r1, #4
d03c65f0:	a80d      	add	r0, sp, #52	; 0x34
d03c65f2:	f7fc f837 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c65f6:	b990      	cbnz	r0, d03c661e <ui_load_selected_file+0x812>
d03c65f8:	4b23      	ldr	r3, [pc, #140]	; (d03c6688 <ui_load_selected_file+0x87c>)
d03c65fa:	2200      	movs	r2, #0
d03c65fc:	2001      	movs	r0, #1
d03c65fe:	701a      	strb	r2, [r3, #0]
d03c6600:	7923      	ldrb	r3, [r4, #4]
d03c6602:	7962      	ldrb	r2, [r4, #5]
d03c6604:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6608:	79a2      	ldrb	r2, [r4, #6]
d03c660a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c660e:	79e2      	ldrb	r2, [r4, #7]
d03c6610:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6614:	681b      	ldr	r3, [r3, #0]
d03c6616:	68db      	ldr	r3, [r3, #12]
d03c6618:	4798      	blx	r3
d03c661a:	482c      	ldr	r0, [pc, #176]	; (d03c66cc <ui_load_selected_file+0x8c0>)
d03c661c:	e42d      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c661e:	a811      	add	r0, sp, #68	; 0x44
d03c6620:	f7fc f862 	bl	d03c26e8 <ui_file_read_be32.constprop.0>
d03c6624:	2800      	cmp	r0, #0
d03c6626:	d0e7      	beq.n	d03c65f8 <ui_load_selected_file+0x7ec>
d03c6628:	2204      	movs	r2, #4
d03c662a:	4929      	ldr	r1, [pc, #164]	; (d03c66d0 <ui_load_selected_file+0x8c4>)
d03c662c:	a80d      	add	r0, sp, #52	; 0x34
d03c662e:	f003 f9a3 	bl	d03c9978 <memcmp>
d03c6632:	4605      	mov	r5, r0
d03c6634:	9811      	ldr	r0, [sp, #68]	; 0x44
d03c6636:	b1b5      	cbz	r5, d03c6666 <ui_load_selected_file+0x85a>
d03c6638:	4631      	mov	r1, r6
d03c663a:	f7fc f864 	bl	d03c2706 <ui_file_skip.constprop.0>
d03c663e:	2800      	cmp	r0, #0
d03c6640:	d185      	bne.n	d03c654e <ui_load_selected_file+0x742>
d03c6642:	4b11      	ldr	r3, [pc, #68]	; (d03c6688 <ui_load_selected_file+0x87c>)
d03c6644:	7018      	strb	r0, [r3, #0]
d03c6646:	2001      	movs	r0, #1
d03c6648:	7923      	ldrb	r3, [r4, #4]
d03c664a:	7962      	ldrb	r2, [r4, #5]
d03c664c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6650:	79a2      	ldrb	r2, [r4, #6]
d03c6652:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6656:	79e2      	ldrb	r2, [r4, #7]
d03c6658:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c665c:	681b      	ldr	r3, [r3, #0]
d03c665e:	68db      	ldr	r3, [r3, #12]
d03c6660:	4798      	blx	r3
d03c6662:	481c      	ldr	r0, [pc, #112]	; (d03c66d4 <ui_load_selected_file+0x8c8>)
d03c6664:	e409      	b.n	d03c5e7a <ui_load_selected_file+0x6e>
d03c6666:	f8bd 902e 	ldrh.w	r9, [sp, #46]	; 0x2e
d03c666a:	46a8      	mov	r8, r5
d03c666c:	9012      	str	r0, [sp, #72]	; 0x48
d03c666e:	9b12      	ldr	r3, [sp, #72]	; 0x48
d03c6670:	bb93      	cbnz	r3, d03c66d8 <ui_load_selected_file+0x8cc>
d03c6672:	4649      	mov	r1, r9
d03c6674:	4640      	mov	r0, r8
d03c6676:	f7fa fcdd 	bl	d03c1034 <ui_midi_import_close_open_notes>
d03c667a:	e768      	b.n	d03c654e <ui_load_selected_file+0x742>
d03c667c:	d03cbcb4 	.word	0xd03cbcb4
d03c6680:	d03cbcb9 	.word	0xd03cbcb9
d03c6684:	d03cf328 	.word	0xd03cf328
d03c6688:	d03cf31e 	.word	0xd03cf31e
d03c668c:	d03cf32c 	.word	0xd03cf32c
d03c6690:	d03cf324 	.word	0xd03cf324
d03c6694:	d03cf32e 	.word	0xd03cf32e
d03c6698:	d03cf320 	.word	0xd03cf320
d03c669c:	d03ccfec 	.word	0xd03ccfec
d03c66a0:	d03ce31e 	.word	0xd03ce31e
d03c66a4:	d03ccd64 	.word	0xd03ccd64
d03c66a8:	d03cd100 	.word	0xd03cd100
d03c66ac:	d03ccfd4 	.word	0xd03ccfd4
d03c66b0:	d03ccfb0 	.word	0xd03ccfb0
d03c66b4:	d03ccfcc 	.word	0xd03ccfcc
d03c66b8:	d03ccfc4 	.word	0xd03ccfc4
d03c66bc:	d03ccfd0 	.word	0xd03ccfd0
d03c66c0:	d03cf3cb 	.word	0xd03cf3cb
d03c66c4:	d03cf330 	.word	0xd03cf330
d03c66c8:	d03cbd08 	.word	0xd03cbd08
d03c66cc:	d03cbccf 	.word	0xd03cbccf
d03c66d0:	d03cbcde 	.word	0xd03cbcde
d03c66d4:	d03cbce3 	.word	0xd03cbce3
d03c66d8:	2700      	movs	r7, #0
d03c66da:	a912      	add	r1, sp, #72	; 0x48
d03c66dc:	a813      	add	r0, sp, #76	; 0x4c
d03c66de:	9713      	str	r7, [sp, #76]	; 0x4c
d03c66e0:	f88d 7026 	strb.w	r7, [sp, #38]	; 0x26
d03c66e4:	f88d 7027 	strb.w	r7, [sp, #39]	; 0x27
d03c66e8:	f88d 7028 	strb.w	r7, [sp, #40]	; 0x28
d03c66ec:	f7fc fbc4 	bl	d03c2e78 <ui_midi_read_varlen.constprop.0>
d03c66f0:	2800      	cmp	r0, #0
d03c66f2:	d057      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c66f4:	aa12      	add	r2, sp, #72	; 0x48
d03c66f6:	2101      	movs	r1, #1
d03c66f8:	f10d 0026 	add.w	r0, sp, #38	; 0x26
d03c66fc:	f7fb ffb2 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c6700:	2800      	cmp	r0, #0
d03c6702:	d04f      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6704:	f89d 6026 	ldrb.w	r6, [sp, #38]	; 0x26
d03c6708:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d03c670a:	2eff      	cmp	r6, #255	; 0xff
d03c670c:	4498      	add	r8, r3
d03c670e:	d15c      	bne.n	d03c67ca <ui_load_selected_file+0x9be>
d03c6710:	aa12      	add	r2, sp, #72	; 0x48
d03c6712:	2101      	movs	r1, #1
d03c6714:	f10d 0029 	add.w	r0, sp, #41	; 0x29
d03c6718:	f88d 7029 	strb.w	r7, [sp, #41]	; 0x29
d03c671c:	9718      	str	r7, [sp, #96]	; 0x60
d03c671e:	f7fb ffa1 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c6722:	2800      	cmp	r0, #0
d03c6724:	d03e      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6726:	a912      	add	r1, sp, #72	; 0x48
d03c6728:	a818      	add	r0, sp, #96	; 0x60
d03c672a:	f7fc fba5 	bl	d03c2e78 <ui_midi_read_varlen.constprop.0>
d03c672e:	2800      	cmp	r0, #0
d03c6730:	d038      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6732:	f89d 3029 	ldrb.w	r3, [sp, #41]	; 0x29
d03c6736:	9818      	ldr	r0, [sp, #96]	; 0x60
d03c6738:	2b51      	cmp	r3, #81	; 0x51
d03c673a:	d12e      	bne.n	d03c679a <ui_load_selected_file+0x98e>
d03c673c:	2803      	cmp	r0, #3
d03c673e:	d12c      	bne.n	d03c679a <ui_load_selected_file+0x98e>
d03c6740:	4601      	mov	r1, r0
d03c6742:	aa12      	add	r2, sp, #72	; 0x48
d03c6744:	a80c      	add	r0, sp, #48	; 0x30
d03c6746:	f7fb ff8d 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c674a:	b358      	cbz	r0, d03c67a4 <ui_load_selected_file+0x998>
d03c674c:	f89d 0031 	ldrb.w	r0, [sp, #49]	; 0x31
d03c6750:	f89d 3030 	ldrb.w	r3, [sp, #48]	; 0x30
d03c6754:	0200      	lsls	r0, r0, #8
d03c6756:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
d03c675a:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
d03c675e:	4303      	orrs	r3, r0
d03c6760:	d019      	beq.n	d03c6796 <ui_load_selected_file+0x98a>
d03c6762:	48a6      	ldr	r0, [pc, #664]	; (d03c69fc <ui_load_selected_file+0xbf0>)
d03c6764:	eb00 0053 	add.w	r0, r0, r3, lsr #1
d03c6768:	fbb0 f0f3 	udiv	r0, r0, r3
d03c676c:	b280      	uxth	r0, r0
d03c676e:	f1a0 0314 	sub.w	r3, r0, #20
d03c6772:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d03c6776:	d802      	bhi.n	d03c677e <ui_load_selected_file+0x972>
d03c6778:	b200      	sxth	r0, r0
d03c677a:	f7fa fa5f 	bl	d03c0c3c <seq_set_bpm>
d03c677e:	f89d 3029 	ldrb.w	r3, [sp, #41]	; 0x29
d03c6782:	2b2f      	cmp	r3, #47	; 0x2f
d03c6784:	d133      	bne.n	d03c67ee <ui_load_selected_file+0x9e2>
d03c6786:	a912      	add	r1, sp, #72	; 0x48
d03c6788:	9812      	ldr	r0, [sp, #72]	; 0x48
d03c678a:	f7fb ffbc 	bl	d03c2706 <ui_file_skip.constprop.0>
d03c678e:	2800      	cmp	r0, #0
d03c6790:	f47f aedd 	bne.w	d03c654e <ui_load_selected_file+0x742>
d03c6794:	e006      	b.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6796:	2078      	movs	r0, #120	; 0x78
d03c6798:	e7ee      	b.n	d03c6778 <ui_load_selected_file+0x96c>
d03c679a:	a912      	add	r1, sp, #72	; 0x48
d03c679c:	f7fb ffb3 	bl	d03c2706 <ui_file_skip.constprop.0>
d03c67a0:	2800      	cmp	r0, #0
d03c67a2:	d1ec      	bne.n	d03c677e <ui_load_selected_file+0x972>
d03c67a4:	4b96      	ldr	r3, [pc, #600]	; (d03c6a00 <ui_load_selected_file+0xbf4>)
d03c67a6:	2200      	movs	r2, #0
d03c67a8:	2001      	movs	r0, #1
d03c67aa:	701a      	strb	r2, [r3, #0]
d03c67ac:	7923      	ldrb	r3, [r4, #4]
d03c67ae:	7962      	ldrb	r2, [r4, #5]
d03c67b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c67b4:	79a2      	ldrb	r2, [r4, #6]
d03c67b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c67ba:	79e2      	ldrb	r2, [r4, #7]
d03c67bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c67c0:	681b      	ldr	r3, [r3, #0]
d03c67c2:	68db      	ldr	r3, [r3, #12]
d03c67c4:	4798      	blx	r3
d03c67c6:	f7ff bb5a 	b.w	d03c5e7e <ui_load_selected_file+0x72>
d03c67ca:	2ef0      	cmp	r6, #240	; 0xf0
d03c67cc:	d001      	beq.n	d03c67d2 <ui_load_selected_file+0x9c6>
d03c67ce:	2ef7      	cmp	r6, #247	; 0xf7
d03c67d0:	d10f      	bne.n	d03c67f2 <ui_load_selected_file+0x9e6>
d03c67d2:	2300      	movs	r3, #0
d03c67d4:	a912      	add	r1, sp, #72	; 0x48
d03c67d6:	a818      	add	r0, sp, #96	; 0x60
d03c67d8:	9318      	str	r3, [sp, #96]	; 0x60
d03c67da:	f7fc fb4d 	bl	d03c2e78 <ui_midi_read_varlen.constprop.0>
d03c67de:	2800      	cmp	r0, #0
d03c67e0:	d0e0      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c67e2:	a912      	add	r1, sp, #72	; 0x48
d03c67e4:	9818      	ldr	r0, [sp, #96]	; 0x60
d03c67e6:	f7fb ff8e 	bl	d03c2706 <ui_file_skip.constprop.0>
d03c67ea:	2800      	cmp	r0, #0
d03c67ec:	d0da      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c67ee:	462e      	mov	r6, r5
d03c67f0:	e024      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c67f2:	0632      	lsls	r2, r6, #24
d03c67f4:	d524      	bpl.n	d03c6840 <ui_load_selected_file+0xa34>
d03c67f6:	aa12      	add	r2, sp, #72	; 0x48
d03c67f8:	2101      	movs	r1, #1
d03c67fa:	f10d 0027 	add.w	r0, sp, #39	; 0x27
d03c67fe:	f7fb ff31 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c6802:	2800      	cmp	r0, #0
d03c6804:	d0ce      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6806:	f006 07f0 	and.w	r7, r6, #240	; 0xf0
d03c680a:	f006 050f 	and.w	r5, r6, #15
d03c680e:	2fc0      	cmp	r7, #192	; 0xc0
d03c6810:	f000 8085 	beq.w	d03c691e <ui_load_selected_file+0xb12>
d03c6814:	2fd0      	cmp	r7, #208	; 0xd0
d03c6816:	d011      	beq.n	d03c683c <ui_load_selected_file+0xa30>
d03c6818:	aa12      	add	r2, sp, #72	; 0x48
d03c681a:	2101      	movs	r1, #1
d03c681c:	a80a      	add	r0, sp, #40	; 0x28
d03c681e:	f7fb ff21 	bl	d03c2664 <ui_file_read_exact.constprop.0>
d03c6822:	2800      	cmp	r0, #0
d03c6824:	d0be      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6826:	2f80      	cmp	r7, #128	; 0x80
d03c6828:	d110      	bne.n	d03c684c <ui_load_selected_file+0xa40>
d03c682a:	f89d 1027 	ldrb.w	r1, [sp, #39]	; 0x27
d03c682e:	464b      	mov	r3, r9
d03c6830:	4642      	mov	r2, r8
d03c6832:	4628      	mov	r0, r5
d03c6834:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d03c6838:	f7fb fb44 	bl	d03c1ec4 <ui_midi_import_note_off.part.0>
d03c683c:	4635      	mov	r5, r6
d03c683e:	e716      	b.n	d03c666e <ui_load_selected_file+0x862>
d03c6840:	f88d 6027 	strb.w	r6, [sp, #39]	; 0x27
d03c6844:	2d00      	cmp	r5, #0
d03c6846:	d0ad      	beq.n	d03c67a4 <ui_load_selected_file+0x998>
d03c6848:	462e      	mov	r6, r5
d03c684a:	e7dc      	b.n	d03c6806 <ui_load_selected_file+0x9fa>
d03c684c:	2f90      	cmp	r7, #144	; 0x90
d03c684e:	d171      	bne.n	d03c6934 <ui_load_selected_file+0xb28>
d03c6850:	f89d 3028 	ldrb.w	r3, [sp, #40]	; 0x28
d03c6854:	9304      	str	r3, [sp, #16]
d03c6856:	2b00      	cmp	r3, #0
d03c6858:	d0e7      	beq.n	d03c682a <ui_load_selected_file+0xa1e>
d03c685a:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c685e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6862:	9302      	str	r3, [sp, #8]
d03c6864:	ab22      	add	r3, sp, #136	; 0x88
d03c6866:	442b      	add	r3, r5
d03c6868:	f813 3c38 	ldrb.w	r3, [r3, #-56]
d03c686c:	9303      	str	r3, [sp, #12]
d03c686e:	9b02      	ldr	r3, [sp, #8]
d03c6870:	eb03 12c5 	add.w	r2, r3, r5, lsl #7
d03c6874:	4b63      	ldr	r3, [pc, #396]	; (d03c6a04 <ui_load_selected_file+0xbf8>)
d03c6876:	f833 2012 	ldrh.w	r2, [r3, r2, lsl #1]
d03c687a:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c687e:	429a      	cmp	r2, r3
d03c6880:	d005      	beq.n	d03c688e <ui_load_selected_file+0xa82>
d03c6882:	464b      	mov	r3, r9
d03c6884:	4642      	mov	r2, r8
d03c6886:	9902      	ldr	r1, [sp, #8]
d03c6888:	4628      	mov	r0, r5
d03c688a:	f7fb fb1b 	bl	d03c1ec4 <ui_midi_import_note_off.part.0>
d03c688e:	4f5e      	ldr	r7, [pc, #376]	; (d03c6a08 <ui_load_selected_file+0xbfc>)
d03c6890:	f8d7 a000 	ldr.w	sl, [r7]
d03c6894:	f5ba 5f00 	cmp.w	sl, #8192	; 0x2000
d03c6898:	d23d      	bcs.n	d03c6916 <ui_load_selected_file+0xb0a>
d03c689a:	f10a 0b01 	add.w	fp, sl, #1
d03c689e:	4658      	mov	r0, fp
d03c68a0:	f7fa fd36 	bl	d03c1310 <seq_reserve_notes>
d03c68a4:	2800      	cmp	r0, #0
d03c68a6:	d036      	beq.n	d03c6916 <ui_load_selected_file+0xb0a>
d03c68a8:	4a58      	ldr	r2, [pc, #352]	; (d03c6a0c <ui_load_selected_file+0xc00>)
d03c68aa:	ea4f 130a 	mov.w	r3, sl, lsl #4
d03c68ae:	f8c7 b000 	str.w	fp, [r7]
d03c68b2:	2100      	movs	r1, #0
d03c68b4:	f8d2 b000 	ldr.w	fp, [r2]
d03c68b8:	2210      	movs	r2, #16
d03c68ba:	9307      	str	r3, [sp, #28]
d03c68bc:	eb0b 170a 	add.w	r7, fp, sl, lsl #4
d03c68c0:	4638      	mov	r0, r7
d03c68c2:	f003 f875 	bl	d03c99b0 <memset>
d03c68c6:	2201      	movs	r2, #1
d03c68c8:	4649      	mov	r1, r9
d03c68ca:	4640      	mov	r0, r8
d03c68cc:	737a      	strb	r2, [r7, #13]
d03c68ce:	f7fa fb9b 	bl	d03c1008 <ui_midi_import_tick_to_seq>
d03c68d2:	9b07      	ldr	r3, [sp, #28]
d03c68d4:	f84b 0003 	str.w	r0, [fp, r3]
d03c68d8:	2300      	movs	r3, #0
d03c68da:	727d      	strb	r5, [r7, #9]
d03c68dc:	607b      	str	r3, [r7, #4]
d03c68de:	9b02      	ldr	r3, [sp, #8]
d03c68e0:	723b      	strb	r3, [r7, #8]
d03c68e2:	9b03      	ldr	r3, [sp, #12]
d03c68e4:	061b      	lsls	r3, r3, #24
d03c68e6:	d502      	bpl.n	d03c68ee <ui_load_selected_file+0xae2>
d03c68e8:	4b49      	ldr	r3, [pc, #292]	; (d03c6a10 <ui_load_selected_file+0xc04>)
d03c68ea:	5d5b      	ldrb	r3, [r3, r5]
d03c68ec:	9303      	str	r3, [sp, #12]
d03c68ee:	9b03      	ldr	r3, [sp, #12]
d03c68f0:	72bb      	strb	r3, [r7, #10]
d03c68f2:	9b04      	ldr	r3, [sp, #16]
d03c68f4:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c68f8:	2b01      	cmp	r3, #1
d03c68fa:	bf38      	it	cc
d03c68fc:	2301      	movcc	r3, #1
d03c68fe:	72fb      	strb	r3, [r7, #11]
d03c6900:	f006 0307 	and.w	r3, r6, #7
d03c6904:	3320      	adds	r3, #32
d03c6906:	733b      	strb	r3, [r7, #12]
d03c6908:	9b02      	ldr	r3, [sp, #8]
d03c690a:	eb03 15c5 	add.w	r5, r3, r5, lsl #7
d03c690e:	4b3d      	ldr	r3, [pc, #244]	; (d03c6a04 <ui_load_selected_file+0xbf8>)
d03c6910:	f823 a015 	strh.w	sl, [r3, r5, lsl #1]
d03c6914:	e792      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c6916:	483f      	ldr	r0, [pc, #252]	; (d03c6a14 <ui_load_selected_file+0xc08>)
d03c6918:	f7fa fd68 	bl	d03c13ec <ui_set_status>
d03c691c:	e742      	b.n	d03c67a4 <ui_load_selected_file+0x998>
d03c691e:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c6922:	aa22      	add	r2, sp, #136	; 0x88
d03c6924:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6928:	442a      	add	r2, r5
d03c692a:	f802 3c38 	strb.w	r3, [r2, #-56]
d03c692e:	4a3a      	ldr	r2, [pc, #232]	; (d03c6a18 <ui_load_selected_file+0xc0c>)
d03c6930:	5553      	strb	r3, [r2, r5]
d03c6932:	e783      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c6934:	2fb0      	cmp	r7, #176	; 0xb0
d03c6936:	d181      	bne.n	d03c683c <ui_load_selected_file+0xa30>
d03c6938:	f89d 3027 	ldrb.w	r3, [sp, #39]	; 0x27
d03c693c:	f89d 2028 	ldrb.w	r2, [sp, #40]	; 0x28
d03c6940:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d03c6944:	f002 027f 	and.w	r2, r2, #127	; 0x7f
d03c6948:	2b07      	cmp	r3, #7
d03c694a:	d102      	bne.n	d03c6952 <ui_load_selected_file+0xb46>
d03c694c:	4b33      	ldr	r3, [pc, #204]	; (d03c6a1c <ui_load_selected_file+0xc10>)
d03c694e:	555a      	strb	r2, [r3, r5]
d03c6950:	e774      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c6952:	2b0b      	cmp	r3, #11
d03c6954:	d101      	bne.n	d03c695a <ui_load_selected_file+0xb4e>
d03c6956:	4b32      	ldr	r3, [pc, #200]	; (d03c6a20 <ui_load_selected_file+0xc14>)
d03c6958:	e7f9      	b.n	d03c694e <ui_load_selected_file+0xb42>
d03c695a:	2b78      	cmp	r3, #120	; 0x78
d03c695c:	d001      	beq.n	d03c6962 <ui_load_selected_file+0xb56>
d03c695e:	2b7b      	cmp	r3, #123	; 0x7b
d03c6960:	d10a      	bne.n	d03c6978 <ui_load_selected_file+0xb6c>
d03c6962:	2700      	movs	r7, #0
d03c6964:	b2f9      	uxtb	r1, r7
d03c6966:	3701      	adds	r7, #1
d03c6968:	464b      	mov	r3, r9
d03c696a:	4642      	mov	r2, r8
d03c696c:	4628      	mov	r0, r5
d03c696e:	f7fb faa9 	bl	d03c1ec4 <ui_midi_import_note_off.part.0>
d03c6972:	2f80      	cmp	r7, #128	; 0x80
d03c6974:	d1f6      	bne.n	d03c6964 <ui_load_selected_file+0xb58>
d03c6976:	e761      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c6978:	2b79      	cmp	r3, #121	; 0x79
d03c697a:	f47f af5f 	bne.w	d03c683c <ui_load_selected_file+0xa30>
d03c697e:	237f      	movs	r3, #127	; 0x7f
d03c6980:	4a26      	ldr	r2, [pc, #152]	; (d03c6a1c <ui_load_selected_file+0xc10>)
d03c6982:	5553      	strb	r3, [r2, r5]
d03c6984:	4a26      	ldr	r2, [pc, #152]	; (d03c6a20 <ui_load_selected_file+0xc14>)
d03c6986:	5553      	strb	r3, [r2, r5]
d03c6988:	2200      	movs	r2, #0
d03c698a:	4b26      	ldr	r3, [pc, #152]	; (d03c6a24 <ui_load_selected_file+0xc18>)
d03c698c:	f823 2015 	strh.w	r2, [r3, r5, lsl #1]
d03c6990:	e754      	b.n	d03c683c <ui_load_selected_file+0xa30>
d03c6992:	2d04      	cmp	r5, #4
d03c6994:	f47f aa73 	bne.w	d03c5e7e <ui_load_selected_file+0x72>
d03c6998:	2300      	movs	r3, #0
d03c699a:	4d23      	ldr	r5, [pc, #140]	; (d03c6a28 <ui_load_selected_file+0xc1c>)
d03c699c:	a910      	add	r1, sp, #64	; 0x40
d03c699e:	4823      	ldr	r0, [pc, #140]	; (d03c6a2c <ui_load_selected_file+0xc20>)
d03c69a0:	930e      	str	r3, [sp, #56]	; 0x38
d03c69a2:	462c      	mov	r4, r5
d03c69a4:	f8ad 302a 	strh.w	r3, [sp, #42]	; 0x2a
d03c69a8:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
d03c69ac:	f8ad 302e 	strh.w	r3, [sp, #46]	; 0x2e
d03c69b0:	930f      	str	r3, [sp, #60]	; 0x3c
d03c69b2:	9310      	str	r3, [sp, #64]	; 0x40
d03c69b4:	792b      	ldrb	r3, [r5, #4]
d03c69b6:	796a      	ldrb	r2, [r5, #5]
d03c69b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c69bc:	79aa      	ldrb	r2, [r5, #6]
d03c69be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c69c2:	79ea      	ldrb	r2, [r5, #7]
d03c69c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c69c8:	aa0f      	add	r2, sp, #60	; 0x3c
d03c69ca:	681b      	ldr	r3, [r3, #0]
d03c69cc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c69ce:	4798      	blx	r3
d03c69d0:	b918      	cbnz	r0, d03c69da <ui_load_selected_file+0xbce>
d03c69d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d03c69d4:	2b0d      	cmp	r3, #13
d03c69d6:	f63f accd 	bhi.w	d03c6374 <ui_load_selected_file+0x568>
d03c69da:	4815      	ldr	r0, [pc, #84]	; (d03c6a30 <ui_load_selected_file+0xc24>)
d03c69dc:	f7ff ba4d 	b.w	d03c5e7a <ui_load_selected_file+0x6e>
d03c69e0:	2d03      	cmp	r5, #3
d03c69e2:	d1d6      	bne.n	d03c6992 <ui_load_selected_file+0xb86>
d03c69e4:	4d13      	ldr	r5, [pc, #76]	; (d03c6a34 <ui_load_selected_file+0xc28>)
d03c69e6:	2100      	movs	r1, #0
d03c69e8:	6828      	ldr	r0, [r5, #0]
d03c69ea:	9114      	str	r1, [sp, #80]	; 0x50
d03c69ec:	9118      	str	r1, [sp, #96]	; 0x60
d03c69ee:	2800      	cmp	r0, #0
d03c69f0:	f47f abd1 	bne.w	d03c6196 <ui_load_selected_file+0x38a>
d03c69f4:	4810      	ldr	r0, [pc, #64]	; (d03c6a38 <ui_load_selected_file+0xc2c>)
d03c69f6:	f7ff ba40 	b.w	d03c5e7a <ui_load_selected_file+0x6e>
d03c69fa:	bf00      	nop
d03c69fc:	03938700 	.word	0x03938700
d03c6a00:	d03cf31e 	.word	0xd03cf31e
d03c6a04:	d03ce31e 	.word	0xd03ce31e
d03c6a08:	d03ccfd4 	.word	0xd03ccfd4
d03c6a0c:	d03ccfd8 	.word	0xd03ccfd8
d03c6a10:	d03cc588 	.word	0xd03cc588
d03c6a14:	d03cbcf2 	.word	0xd03cbcf2
d03c6a18:	d03ccd64 	.word	0xd03ccd64
d03c6a1c:	d03ccd74 	.word	0xd03ccd74
d03c6a20:	d03ccd54 	.word	0xd03ccd54
d03c6a24:	d03ccd34 	.word	0xd03ccd34
d03c6a28:	2001f000 	.word	0x2001f000
d03c6a2c:	d03cf331 	.word	0xd03cf331
d03c6a30:	d03cbc80 	.word	0xd03cbc80
d03c6a34:	d03cf3d4 	.word	0xd03cf3d4
d03c6a38:	d03cbc0e 	.word	0xd03cbc0e

d03c6a3c <ui_midi_export_path.constprop.0>:
d03c6a3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c6a40:	4bae      	ldr	r3, [pc, #696]	; (d03c6cfc <ui_midi_export_path.constprop.0+0x2c0>)
d03c6a42:	2700      	movs	r7, #0
d03c6a44:	4cae      	ldr	r4, [pc, #696]	; (d03c6d00 <ui_midi_export_path.constprop.0+0x2c4>)
d03c6a46:	b08d      	sub	sp, #52	; 0x34
d03c6a48:	881e      	ldrh	r6, [r3, #0]
d03c6a4a:	2001      	movs	r0, #1
d03c6a4c:	7923      	ldrb	r3, [r4, #4]
d03c6a4e:	7962      	ldrb	r2, [r4, #5]
d03c6a50:	42be      	cmp	r6, r7
d03c6a52:	49ac      	ldr	r1, [pc, #688]	; (d03c6d04 <ui_midi_export_path.constprop.0+0x2c8>)
d03c6a54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6a58:	79a2      	ldrb	r2, [r4, #6]
d03c6a5a:	9705      	str	r7, [sp, #20]
d03c6a5c:	bf08      	it	eq
d03c6a5e:	2678      	moveq	r6, #120	; 0x78
d03c6a60:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6a64:	79e2      	ldrb	r2, [r4, #7]
d03c6a66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6a6a:	220a      	movs	r2, #10
d03c6a6c:	681b      	ldr	r3, [r3, #0]
d03c6a6e:	e9cd 7706 	strd	r7, r7, [sp, #24]
d03c6a72:	681b      	ldr	r3, [r3, #0]
d03c6a74:	4798      	blx	r3
d03c6a76:	4605      	mov	r5, r0
d03c6a78:	b120      	cbz	r0, d03c6a84 <ui_midi_export_path.constprop.0+0x48>
d03c6a7a:	48a3      	ldr	r0, [pc, #652]	; (d03c6d08 <ui_midi_export_path.constprop.0+0x2cc>)
d03c6a7c:	2500      	movs	r5, #0
d03c6a7e:	f7fa fcb5 	bl	d03c13ec <ui_set_status>
d03c6a82:	e016      	b.n	d03c6ab2 <ui_midi_export_path.constprop.0+0x76>
d03c6a84:	aa06      	add	r2, sp, #24
d03c6a86:	2104      	movs	r1, #4
d03c6a88:	48a0      	ldr	r0, [pc, #640]	; (d03c6d0c <ui_midi_export_path.constprop.0+0x2d0>)
d03c6a8a:	f7fb fe51 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6a8e:	b9a0      	cbnz	r0, d03c6aba <ui_midi_export_path.constprop.0+0x7e>
d03c6a90:	7923      	ldrb	r3, [r4, #4]
d03c6a92:	2001      	movs	r0, #1
d03c6a94:	7962      	ldrb	r2, [r4, #5]
d03c6a96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6a9a:	79a2      	ldrb	r2, [r4, #6]
d03c6a9c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6aa0:	79e2      	ldrb	r2, [r4, #7]
d03c6aa2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6aa6:	681b      	ldr	r3, [r3, #0]
d03c6aa8:	68db      	ldr	r3, [r3, #12]
d03c6aaa:	4798      	blx	r3
d03c6aac:	4898      	ldr	r0, [pc, #608]	; (d03c6d10 <ui_midi_export_path.constprop.0+0x2d4>)
d03c6aae:	f7fa fc9d 	bl	d03c13ec <ui_set_status>
d03c6ab2:	4628      	mov	r0, r5
d03c6ab4:	b00d      	add	sp, #52	; 0x34
d03c6ab6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c6aba:	a906      	add	r1, sp, #24
d03c6abc:	2006      	movs	r0, #6
d03c6abe:	f7fb feac 	bl	d03c281a <ui_file_write_be32.constprop.0>
d03c6ac2:	2800      	cmp	r0, #0
d03c6ac4:	d0e4      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6ac6:	aa06      	add	r2, sp, #24
d03c6ac8:	2102      	movs	r1, #2
d03c6aca:	a808      	add	r0, sp, #32
d03c6acc:	f8ad 5020 	strh.w	r5, [sp, #32]
d03c6ad0:	f7fb fe2e 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6ad4:	2800      	cmp	r0, #0
d03c6ad6:	d0db      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6ad8:	f44f 7380 	mov.w	r3, #256	; 0x100
d03c6adc:	aa06      	add	r2, sp, #24
d03c6ade:	2102      	movs	r1, #2
d03c6ae0:	a808      	add	r0, sp, #32
d03c6ae2:	f8ad 3020 	strh.w	r3, [sp, #32]
d03c6ae6:	f7fb fe23 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6aea:	2800      	cmp	r0, #0
d03c6aec:	d0d0      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6aee:	f24e 0301 	movw	r3, #57345	; 0xe001
d03c6af2:	aa06      	add	r2, sp, #24
d03c6af4:	2102      	movs	r1, #2
d03c6af6:	a808      	add	r0, sp, #32
d03c6af8:	f8ad 3020 	strh.w	r3, [sp, #32]
d03c6afc:	f7fb fe18 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6b00:	2800      	cmp	r0, #0
d03c6b02:	d0c5      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6b04:	aa06      	add	r2, sp, #24
d03c6b06:	2104      	movs	r1, #4
d03c6b08:	4882      	ldr	r0, [pc, #520]	; (d03c6d14 <ui_midi_export_path.constprop.0+0x2d8>)
d03c6b0a:	f7fb fe11 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6b0e:	2800      	cmp	r0, #0
d03c6b10:	d0be      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6b12:	a906      	add	r1, sp, #24
d03c6b14:	4628      	mov	r0, r5
d03c6b16:	f7fb fe80 	bl	d03c281a <ui_file_write_be32.constprop.0>
d03c6b1a:	2800      	cmp	r0, #0
d03c6b1c:	d0b8      	beq.n	d03c6a90 <ui_midi_export_path.constprop.0+0x54>
d03c6b1e:	a905      	add	r1, sp, #20
d03c6b20:	4628      	mov	r0, r5
d03c6b22:	f7fb fe37 	bl	d03c2794 <ui_midi_write_varlen.constprop.0>
d03c6b26:	b978      	cbnz	r0, d03c6b48 <ui_midi_export_path.constprop.0+0x10c>
d03c6b28:	7923      	ldrb	r3, [r4, #4]
d03c6b2a:	2001      	movs	r0, #1
d03c6b2c:	7962      	ldrb	r2, [r4, #5]
d03c6b2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6b32:	79a2      	ldrb	r2, [r4, #6]
d03c6b34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6b38:	79e2      	ldrb	r2, [r4, #7]
d03c6b3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6b3e:	681b      	ldr	r3, [r3, #0]
d03c6b40:	68db      	ldr	r3, [r3, #12]
d03c6b42:	4798      	blx	r3
d03c6b44:	4874      	ldr	r0, [pc, #464]	; (d03c6d18 <ui_midi_export_path.constprop.0+0x2dc>)
d03c6b46:	e7b2      	b.n	d03c6aae <ui_midi_export_path.constprop.0+0x72>
d03c6b48:	a905      	add	r1, sp, #20
d03c6b4a:	20ff      	movs	r0, #255	; 0xff
d03c6b4c:	f7fb fe16 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6b50:	2800      	cmp	r0, #0
d03c6b52:	d0e9      	beq.n	d03c6b28 <ui_midi_export_path.constprop.0+0xec>
d03c6b54:	a905      	add	r1, sp, #20
d03c6b56:	2051      	movs	r0, #81	; 0x51
d03c6b58:	f7fb fe10 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6b5c:	2800      	cmp	r0, #0
d03c6b5e:	d0e3      	beq.n	d03c6b28 <ui_midi_export_path.constprop.0+0xec>
d03c6b60:	a905      	add	r1, sp, #20
d03c6b62:	2003      	movs	r0, #3
d03c6b64:	f7fb fe0a 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6b68:	2800      	cmp	r0, #0
d03c6b6a:	d0dd      	beq.n	d03c6b28 <ui_midi_export_path.constprop.0+0xec>
d03c6b6c:	4b6b      	ldr	r3, [pc, #428]	; (d03c6d1c <ui_midi_export_path.constprop.0+0x2e0>)
d03c6b6e:	2103      	movs	r1, #3
d03c6b70:	a808      	add	r0, sp, #32
d03c6b72:	fbb3 f3f6 	udiv	r3, r3, r6
d03c6b76:	0c1a      	lsrs	r2, r3, #16
d03c6b78:	f88d 3022 	strb.w	r3, [sp, #34]	; 0x22
d03c6b7c:	f88d 2020 	strb.w	r2, [sp, #32]
d03c6b80:	0a1a      	lsrs	r2, r3, #8
d03c6b82:	f88d 2021 	strb.w	r2, [sp, #33]	; 0x21
d03c6b86:	aa05      	add	r2, sp, #20
d03c6b88:	f7fb fdd2 	bl	d03c2730 <ui_file_write_exact.constprop.0>
d03c6b8c:	2800      	cmp	r0, #0
d03c6b8e:	d0cb      	beq.n	d03c6b28 <ui_midi_export_path.constprop.0+0xec>
d03c6b90:	2210      	movs	r2, #16
d03c6b92:	21ff      	movs	r1, #255	; 0xff
d03c6b94:	a808      	add	r0, sp, #32
d03c6b96:	f04f 0800 	mov.w	r8, #0
d03c6b9a:	f002 ff09 	bl	d03c99b0 <memset>
d03c6b9e:	aa07      	add	r2, sp, #28
d03c6ba0:	2101      	movs	r1, #1
d03c6ba2:	2000      	movs	r0, #0
d03c6ba4:	f7fa f9e2 	bl	d03c0f6c <ui_midi_find_next_time>
d03c6ba8:	f8df 9184 	ldr.w	r9, [pc, #388]	; d03c6d30 <ui_midi_export_path.constprop.0+0x2f4>
d03c6bac:	4606      	mov	r6, r0
d03c6bae:	b9b6      	cbnz	r6, d03c6bde <ui_midi_export_path.constprop.0+0x1a2>
d03c6bb0:	a905      	add	r1, sp, #20
d03c6bb2:	4630      	mov	r0, r6
d03c6bb4:	f7fb fdee 	bl	d03c2794 <ui_midi_write_varlen.constprop.0>
d03c6bb8:	2800      	cmp	r0, #0
d03c6bba:	f040 80fa 	bne.w	d03c6db2 <ui_midi_export_path.constprop.0+0x376>
d03c6bbe:	7923      	ldrb	r3, [r4, #4]
d03c6bc0:	2001      	movs	r0, #1
d03c6bc2:	7962      	ldrb	r2, [r4, #5]
d03c6bc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6bc8:	79a2      	ldrb	r2, [r4, #6]
d03c6bca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6bce:	79e2      	ldrb	r2, [r4, #7]
d03c6bd0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6bd4:	681b      	ldr	r3, [r3, #0]
d03c6bd6:	68db      	ldr	r3, [r3, #12]
d03c6bd8:	4798      	blx	r3
d03c6bda:	4851      	ldr	r0, [pc, #324]	; (d03c6d20 <ui_midi_export_path.constprop.0+0x2e4>)
d03c6bdc:	e74e      	b.n	d03c6a7c <ui_midi_export_path.constprop.0+0x40>
d03c6bde:	9f07      	ldr	r7, [sp, #28]
d03c6be0:	f04f 0b00 	mov.w	fp, #0
d03c6be4:	f8df a13c 	ldr.w	sl, [pc, #316]	; d03c6d24 <ui_midi_export_path.constprop.0+0x2e8>
d03c6be8:	eba7 0708 	sub.w	r7, r7, r8
d03c6bec:	465e      	mov	r6, fp
d03c6bee:	f8da 2000 	ldr.w	r2, [sl]
d03c6bf2:	4296      	cmp	r6, r2
d03c6bf4:	d30d      	bcc.n	d03c6c12 <ui_midi_export_path.constprop.0+0x1d6>
d03c6bf6:	2600      	movs	r6, #0
d03c6bf8:	4b4a      	ldr	r3, [pc, #296]	; (d03c6d24 <ui_midi_export_path.constprop.0+0x2e8>)
d03c6bfa:	f8dd 801c 	ldr.w	r8, [sp, #28]
d03c6bfe:	681a      	ldr	r2, [r3, #0]
d03c6c00:	4296      	cmp	r6, r2
d03c6c02:	d33c      	bcc.n	d03c6c7e <ui_midi_export_path.constprop.0+0x242>
d03c6c04:	aa07      	add	r2, sp, #28
d03c6c06:	2100      	movs	r1, #0
d03c6c08:	4640      	mov	r0, r8
d03c6c0a:	f7fa f9af 	bl	d03c0f6c <ui_midi_find_next_time>
d03c6c0e:	4606      	mov	r6, r0
d03c6c10:	e7cd      	b.n	d03c6bae <ui_midi_export_path.constprop.0+0x172>
d03c6c12:	f8d9 2000 	ldr.w	r2, [r9]
d03c6c16:	eb02 1806 	add.w	r8, r2, r6, lsl #4
d03c6c1a:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c6c1e:	b362      	cbz	r2, d03c6c7a <ui_midi_export_path.constprop.0+0x23e>
d03c6c20:	4640      	mov	r0, r8
d03c6c22:	f7fa f994 	bl	d03c0f4e <ui_seq_note_end_midi_tick>
d03c6c26:	9a07      	ldr	r2, [sp, #28]
d03c6c28:	4290      	cmp	r0, r2
d03c6c2a:	d126      	bne.n	d03c6c7a <ui_midi_export_path.constprop.0+0x23e>
d03c6c2c:	f898 1009 	ldrb.w	r1, [r8, #9]
d03c6c30:	ab05      	add	r3, sp, #20
d03c6c32:	f1bb 0f00 	cmp.w	fp, #0
d03c6c36:	f898 2008 	ldrb.w	r2, [r8, #8]
d03c6c3a:	f001 010f 	and.w	r1, r1, #15
d03c6c3e:	9300      	str	r3, [sp, #0]
d03c6c40:	f04f 0300 	mov.w	r3, #0
d03c6c44:	bf08      	it	eq
d03c6c46:	4638      	moveq	r0, r7
d03c6c48:	f041 0180 	orr.w	r1, r1, #128	; 0x80
d03c6c4c:	bf18      	it	ne
d03c6c4e:	4618      	movne	r0, r3
d03c6c50:	f7fb fdc2 	bl	d03c27d8 <ui_midi_write_channel_event.constprop.0>
d03c6c54:	b978      	cbnz	r0, d03c6c76 <ui_midi_export_path.constprop.0+0x23a>
d03c6c56:	7923      	ldrb	r3, [r4, #4]
d03c6c58:	2001      	movs	r0, #1
d03c6c5a:	7962      	ldrb	r2, [r4, #5]
d03c6c5c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6c60:	79a2      	ldrb	r2, [r4, #6]
d03c6c62:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6c66:	79e2      	ldrb	r2, [r4, #7]
d03c6c68:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6c6c:	681b      	ldr	r3, [r3, #0]
d03c6c6e:	68db      	ldr	r3, [r3, #12]
d03c6c70:	4798      	blx	r3
d03c6c72:	482d      	ldr	r0, [pc, #180]	; (d03c6d28 <ui_midi_export_path.constprop.0+0x2ec>)
d03c6c74:	e702      	b.n	d03c6a7c <ui_midi_export_path.constprop.0+0x40>
d03c6c76:	f04f 0b01 	mov.w	fp, #1
d03c6c7a:	3601      	adds	r6, #1
d03c6c7c:	e7b7      	b.n	d03c6bee <ui_midi_export_path.constprop.0+0x1b2>
d03c6c7e:	f8d9 1000 	ldr.w	r1, [r9]
d03c6c82:	ea4f 1a06 	mov.w	sl, r6, lsl #4
d03c6c86:	eb01 1206 	add.w	r2, r1, r6, lsl #4
d03c6c8a:	7b50      	ldrb	r0, [r2, #13]
d03c6c8c:	9202      	str	r2, [sp, #8]
d03c6c8e:	2800      	cmp	r0, #0
d03c6c90:	f000 808d 	beq.w	d03c6dae <ui_midi_export_path.constprop.0+0x372>
d03c6c94:	f851 000a 	ldr.w	r0, [r1, sl]
d03c6c98:	f7fa f948 	bl	d03c0f2c <ui_seq_tick_to_midi_tick>
d03c6c9c:	4580      	cmp	r8, r0
d03c6c9e:	9a02      	ldr	r2, [sp, #8]
d03c6ca0:	f040 8085 	bne.w	d03c6dae <ui_midi_export_path.constprop.0+0x372>
d03c6ca4:	f892 8009 	ldrb.w	r8, [r2, #9]
d03c6ca8:	7a93      	ldrb	r3, [r2, #10]
d03c6caa:	f992 200a 	ldrsb.w	r2, [r2, #10]
d03c6cae:	f008 080f 	and.w	r8, r8, #15
d03c6cb2:	9302      	str	r3, [sp, #8]
d03c6cb4:	2a00      	cmp	r2, #0
d03c6cb6:	db72      	blt.n	d03c6d9e <ui_midi_export_path.constprop.0+0x362>
d03c6cb8:	ab0c      	add	r3, sp, #48	; 0x30
d03c6cba:	4443      	add	r3, r8
d03c6cbc:	f813 2c10 	ldrb.w	r2, [r3, #-16]
d03c6cc0:	9303      	str	r3, [sp, #12]
d03c6cc2:	9b02      	ldr	r3, [sp, #8]
d03c6cc4:	429a      	cmp	r2, r3
d03c6cc6:	d06a      	beq.n	d03c6d9e <ui_midi_export_path.constprop.0+0x362>
d03c6cc8:	f1bb 0f00 	cmp.w	fp, #0
d03c6ccc:	a905      	add	r1, sp, #20
d03c6cce:	bf0c      	ite	eq
d03c6cd0:	4638      	moveq	r0, r7
d03c6cd2:	2000      	movne	r0, #0
d03c6cd4:	f7fb fd5e 	bl	d03c2794 <ui_midi_write_varlen.constprop.0>
d03c6cd8:	bb60      	cbnz	r0, d03c6d34 <ui_midi_export_path.constprop.0+0x2f8>
d03c6cda:	7923      	ldrb	r3, [r4, #4]
d03c6cdc:	2001      	movs	r0, #1
d03c6cde:	7962      	ldrb	r2, [r4, #5]
d03c6ce0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6ce4:	79a2      	ldrb	r2, [r4, #6]
d03c6ce6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6cea:	79e2      	ldrb	r2, [r4, #7]
d03c6cec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6cf0:	681b      	ldr	r3, [r3, #0]
d03c6cf2:	68db      	ldr	r3, [r3, #12]
d03c6cf4:	4798      	blx	r3
d03c6cf6:	480d      	ldr	r0, [pc, #52]	; (d03c6d2c <ui_midi_export_path.constprop.0+0x2f0>)
d03c6cf8:	e6d9      	b.n	d03c6aae <ui_midi_export_path.constprop.0+0x72>
d03c6cfa:	bf00      	nop
d03c6cfc:	d03ccfac 	.word	0xd03ccfac
d03c6d00:	2001f000 	.word	0x2001f000
d03c6d04:	d03cf331 	.word	0xd03cf331
d03c6d08:	d03cbd1f 	.word	0xd03cbd1f
d03c6d0c:	d03cbcb4 	.word	0xd03cbcb4
d03c6d10:	d03cbd37 	.word	0xd03cbd37
d03c6d14:	d03cbcde 	.word	0xd03cbcde
d03c6d18:	d03cbd51 	.word	0xd03cbd51
d03c6d1c:	03938700 	.word	0x03938700
d03c6d20:	d03cbdbc 	.word	0xd03cbdbc
d03c6d24:	d03ccfd4 	.word	0xd03ccfd4
d03c6d28:	d03cbd6a 	.word	0xd03cbd6a
d03c6d2c:	d03cbd86 	.word	0xd03cbd86
d03c6d30:	d03ccfd8 	.word	0xd03ccfd8
d03c6d34:	a905      	add	r1, sp, #20
d03c6d36:	f048 00c0 	orr.w	r0, r8, #192	; 0xc0
d03c6d3a:	f7fb fd1f 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6d3e:	2800      	cmp	r0, #0
d03c6d40:	d0cb      	beq.n	d03c6cda <ui_midi_export_path.constprop.0+0x29e>
d03c6d42:	9b02      	ldr	r3, [sp, #8]
d03c6d44:	a905      	add	r1, sp, #20
d03c6d46:	f003 007f 	and.w	r0, r3, #127	; 0x7f
d03c6d4a:	f7fb fd17 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6d4e:	2800      	cmp	r0, #0
d03c6d50:	d0c3      	beq.n	d03c6cda <ui_midi_export_path.constprop.0+0x29e>
d03c6d52:	f8d9 3000 	ldr.w	r3, [r9]
d03c6d56:	2000      	movs	r0, #0
d03c6d58:	9a03      	ldr	r2, [sp, #12]
d03c6d5a:	4453      	add	r3, sl
d03c6d5c:	7a9b      	ldrb	r3, [r3, #10]
d03c6d5e:	f802 3c10 	strb.w	r3, [r2, #-16]
d03c6d62:	f8d9 3000 	ldr.w	r3, [r9]
d03c6d66:	a905      	add	r1, sp, #20
d03c6d68:	449a      	add	sl, r3
d03c6d6a:	f89a 300b 	ldrb.w	r3, [sl, #11]
d03c6d6e:	f89a 2008 	ldrb.w	r2, [sl, #8]
d03c6d72:	9100      	str	r1, [sp, #0]
d03c6d74:	f048 0190 	orr.w	r1, r8, #144	; 0x90
d03c6d78:	f7fb fd2e 	bl	d03c27d8 <ui_midi_write_channel_event.constprop.0>
d03c6d7c:	b9a8      	cbnz	r0, d03c6daa <ui_midi_export_path.constprop.0+0x36e>
d03c6d7e:	7923      	ldrb	r3, [r4, #4]
d03c6d80:	2001      	movs	r0, #1
d03c6d82:	7962      	ldrb	r2, [r4, #5]
d03c6d84:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6d88:	79a2      	ldrb	r2, [r4, #6]
d03c6d8a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6d8e:	79e2      	ldrb	r2, [r4, #7]
d03c6d90:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6d94:	681b      	ldr	r3, [r3, #0]
d03c6d96:	68db      	ldr	r3, [r3, #12]
d03c6d98:	4798      	blx	r3
d03c6d9a:	482d      	ldr	r0, [pc, #180]	; (d03c6e50 <ui_midi_export_path.constprop.0+0x414>)
d03c6d9c:	e66e      	b.n	d03c6a7c <ui_midi_export_path.constprop.0+0x40>
d03c6d9e:	f1bb 0f00 	cmp.w	fp, #0
d03c6da2:	bf0c      	ite	eq
d03c6da4:	4638      	moveq	r0, r7
d03c6da6:	2000      	movne	r0, #0
d03c6da8:	e7db      	b.n	d03c6d62 <ui_midi_export_path.constprop.0+0x326>
d03c6daa:	f04f 0b01 	mov.w	fp, #1
d03c6dae:	3601      	adds	r6, #1
d03c6db0:	e722      	b.n	d03c6bf8 <ui_midi_export_path.constprop.0+0x1bc>
d03c6db2:	a905      	add	r1, sp, #20
d03c6db4:	20ff      	movs	r0, #255	; 0xff
d03c6db6:	f7fb fce1 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6dba:	2800      	cmp	r0, #0
d03c6dbc:	f43f aeff 	beq.w	d03c6bbe <ui_midi_export_path.constprop.0+0x182>
d03c6dc0:	a905      	add	r1, sp, #20
d03c6dc2:	202f      	movs	r0, #47	; 0x2f
d03c6dc4:	f7fb fcda 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6dc8:	2800      	cmp	r0, #0
d03c6dca:	f43f aef8 	beq.w	d03c6bbe <ui_midi_export_path.constprop.0+0x182>
d03c6dce:	a905      	add	r1, sp, #20
d03c6dd0:	4630      	mov	r0, r6
d03c6dd2:	f7fb fcd3 	bl	d03c277c <ui_file_write_u8.constprop.0>
d03c6dd6:	2800      	cmp	r0, #0
d03c6dd8:	f43f aef1 	beq.w	d03c6bbe <ui_midi_export_path.constprop.0+0x182>
d03c6ddc:	7923      	ldrb	r3, [r4, #4]
d03c6dde:	2112      	movs	r1, #18
d03c6de0:	7962      	ldrb	r2, [r4, #5]
d03c6de2:	2001      	movs	r0, #1
d03c6de4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6de8:	79a2      	ldrb	r2, [r4, #6]
d03c6dea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6dee:	79e2      	ldrb	r2, [r4, #7]
d03c6df0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6df4:	681b      	ldr	r3, [r3, #0]
d03c6df6:	695b      	ldr	r3, [r3, #20]
d03c6df8:	4798      	blx	r3
d03c6dfa:	b178      	cbz	r0, d03c6e1c <ui_midi_export_path.constprop.0+0x3e0>
d03c6dfc:	7923      	ldrb	r3, [r4, #4]
d03c6dfe:	2001      	movs	r0, #1
d03c6e00:	7962      	ldrb	r2, [r4, #5]
d03c6e02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6e06:	79a2      	ldrb	r2, [r4, #6]
d03c6e08:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6e0c:	79e2      	ldrb	r2, [r4, #7]
d03c6e0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e12:	681b      	ldr	r3, [r3, #0]
d03c6e14:	68db      	ldr	r3, [r3, #12]
d03c6e16:	4798      	blx	r3
d03c6e18:	480e      	ldr	r0, [pc, #56]	; (d03c6e54 <ui_midi_export_path.constprop.0+0x418>)
d03c6e1a:	e62f      	b.n	d03c6a7c <ui_midi_export_path.constprop.0+0x40>
d03c6e1c:	4631      	mov	r1, r6
d03c6e1e:	9805      	ldr	r0, [sp, #20]
d03c6e20:	f7fb fcfb 	bl	d03c281a <ui_file_write_be32.constprop.0>
d03c6e24:	2800      	cmp	r0, #0
d03c6e26:	d0e9      	beq.n	d03c6dfc <ui_midi_export_path.constprop.0+0x3c0>
d03c6e28:	7923      	ldrb	r3, [r4, #4]
d03c6e2a:	2001      	movs	r0, #1
d03c6e2c:	7962      	ldrb	r2, [r4, #5]
d03c6e2e:	2501      	movs	r5, #1
d03c6e30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6e34:	79a2      	ldrb	r2, [r4, #6]
d03c6e36:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6e3a:	79e2      	ldrb	r2, [r4, #7]
d03c6e3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e40:	681b      	ldr	r3, [r3, #0]
d03c6e42:	68db      	ldr	r3, [r3, #12]
d03c6e44:	4798      	blx	r3
d03c6e46:	4804      	ldr	r0, [pc, #16]	; (d03c6e58 <ui_midi_export_path.constprop.0+0x41c>)
d03c6e48:	f7fa fad0 	bl	d03c13ec <ui_set_status>
d03c6e4c:	e631      	b.n	d03c6ab2 <ui_midi_export_path.constprop.0+0x76>
d03c6e4e:	bf00      	nop
d03c6e50:	d03cbda1 	.word	0xd03cbda1
d03c6e54:	d03cbdd3 	.word	0xd03cbdd3
d03c6e58:	d03cbded 	.word	0xd03cbded

d03c6e5c <ui_keyboard_commit_save>:
d03c6e5c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c6e5e:	4604      	mov	r4, r0
d03c6e60:	4823      	ldr	r0, [pc, #140]	; (d03c6ef0 <ui_keyboard_commit_save+0x94>)
d03c6e62:	7803      	ldrb	r3, [r0, #0]
d03c6e64:	b923      	cbnz	r3, d03c6e70 <ui_keyboard_commit_save+0x14>
d03c6e66:	4823      	ldr	r0, [pc, #140]	; (d03c6ef4 <ui_keyboard_commit_save+0x98>)
d03c6e68:	f7fa fac0 	bl	d03c13ec <ui_set_status>
d03c6e6c:	b003      	add	sp, #12
d03c6e6e:	bd30      	pop	{r4, r5, pc}
d03c6e70:	4b21      	ldr	r3, [pc, #132]	; (d03c6ef8 <ui_keyboard_commit_save+0x9c>)
d03c6e72:	4621      	mov	r1, r4
d03c6e74:	4d21      	ldr	r5, [pc, #132]	; (d03c6efc <ui_keyboard_commit_save+0xa0>)
d03c6e76:	701c      	strb	r4, [r3, #0]
d03c6e78:	f7fc f9ce 	bl	d03c3218 <ui_file_make_path.constprop.0>
d03c6e7c:	4a20      	ldr	r2, [pc, #128]	; (d03c6f00 <ui_keyboard_commit_save+0xa4>)
d03c6e7e:	2300      	movs	r3, #0
d03c6e80:	4820      	ldr	r0, [pc, #128]	; (d03c6f04 <ui_keyboard_commit_save+0xa8>)
d03c6e82:	e9cd 3300 	strd	r3, r3, [sp]
d03c6e86:	7913      	ldrb	r3, [r2, #4]
d03c6e88:	7951      	ldrb	r1, [r2, #5]
d03c6e8a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c6e8e:	7991      	ldrb	r1, [r2, #6]
d03c6e90:	79d2      	ldrb	r2, [r2, #7]
d03c6e92:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c6e96:	4669      	mov	r1, sp
d03c6e98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6e9c:	aa01      	add	r2, sp, #4
d03c6e9e:	681b      	ldr	r3, [r3, #0]
d03c6ea0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d03c6ea2:	4798      	blx	r3
d03c6ea4:	b940      	cbnz	r0, d03c6eb8 <ui_keyboard_commit_save+0x5c>
d03c6ea6:	9b00      	ldr	r3, [sp, #0]
d03c6ea8:	07db      	lsls	r3, r3, #31
d03c6eaa:	d405      	bmi.n	d03c6eb8 <ui_keyboard_commit_save+0x5c>
d03c6eac:	4b16      	ldr	r3, [pc, #88]	; (d03c6f08 <ui_keyboard_commit_save+0xac>)
d03c6eae:	2203      	movs	r2, #3
d03c6eb0:	701a      	strb	r2, [r3, #0]
d03c6eb2:	2301      	movs	r3, #1
d03c6eb4:	702b      	strb	r3, [r5, #0]
d03c6eb6:	e7d9      	b.n	d03c6e6c <ui_keyboard_commit_save+0x10>
d03c6eb8:	2c02      	cmp	r4, #2
d03c6eba:	d109      	bne.n	d03c6ed0 <ui_keyboard_commit_save+0x74>
d03c6ebc:	f7fb fd72 	bl	d03c29a4 <ui_project_save_path.constprop.0>
d03c6ec0:	2800      	cmp	r0, #0
d03c6ec2:	d0f6      	beq.n	d03c6eb2 <ui_keyboard_commit_save+0x56>
d03c6ec4:	4b10      	ldr	r3, [pc, #64]	; (d03c6f08 <ui_keyboard_commit_save+0xac>)
d03c6ec6:	2200      	movs	r2, #0
d03c6ec8:	701a      	strb	r2, [r3, #0]
d03c6eca:	f7fc f9e5 	bl	d03c3298 <ui_file_refresh>
d03c6ece:	e7f0      	b.n	d03c6eb2 <ui_keyboard_commit_save+0x56>
d03c6ed0:	2c01      	cmp	r4, #1
d03c6ed2:	d004      	beq.n	d03c6ede <ui_keyboard_commit_save+0x82>
d03c6ed4:	2c03      	cmp	r4, #3
d03c6ed6:	d105      	bne.n	d03c6ee4 <ui_keyboard_commit_save+0x88>
d03c6ed8:	f7fb fcac 	bl	d03c2834 <ui_song_save_path.constprop.0>
d03c6edc:	e7f0      	b.n	d03c6ec0 <ui_keyboard_commit_save+0x64>
d03c6ede:	f7fb fe37 	bl	d03c2b50 <ui_program_save_path.constprop.0>
d03c6ee2:	e7ed      	b.n	d03c6ec0 <ui_keyboard_commit_save+0x64>
d03c6ee4:	2c04      	cmp	r4, #4
d03c6ee6:	d1e4      	bne.n	d03c6eb2 <ui_keyboard_commit_save+0x56>
d03c6ee8:	f7ff fda8 	bl	d03c6a3c <ui_midi_export_path.constprop.0>
d03c6eec:	e7e8      	b.n	d03c6ec0 <ui_keyboard_commit_save+0x64>
d03c6eee:	bf00      	nop
d03c6ef0:	d03cf3aa 	.word	0xd03cf3aa
d03c6ef4:	d03cbdfb 	.word	0xd03cbdfb
d03c6ef8:	d03cf3a9 	.word	0xd03cf3a9
d03c6efc:	d03cd140 	.word	0xd03cd140
d03c6f00:	2001f000 	.word	0x2001f000
d03c6f04:	d03cf331 	.word	0xd03cf331
d03c6f08:	d03cda34 	.word	0xd03cda34

d03c6f0c <main>:
d03c6f0c:	2201      	movs	r2, #1
d03c6f0e:	4bb3      	ldr	r3, [pc, #716]	; (d03c71dc <main+0x2d0>)
d03c6f10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c6f14:	4fb2      	ldr	r7, [pc, #712]	; (d03c71e0 <main+0x2d4>)
d03c6f16:	ed2d 8b02 	vpush	{d8}
d03c6f1a:	b0ad      	sub	sp, #180	; 0xb4
d03c6f1c:	701a      	strb	r2, [r3, #0]
d03c6f1e:	f7f9 f88d 	bl	d03c003c <initMalloc>
d03c6f22:	f44f 4040 	mov.w	r0, #49152	; 0xc000
d03c6f26:	f002 fd17 	bl	d03c9958 <malloc>
d03c6f2a:	6038      	str	r0, [r7, #0]
d03c6f2c:	4680      	mov	r8, r0
d03c6f2e:	f24c 00c2 	movw	r0, #49346	; 0xc0c2
d03c6f32:	f002 fd11 	bl	d03c9958 <malloc>
d03c6f36:	4bab      	ldr	r3, [pc, #684]	; (d03c71e4 <main+0x2d8>)
d03c6f38:	4606      	mov	r6, r0
d03c6f3a:	6018      	str	r0, [r3, #0]
d03c6f3c:	f44f 70c7 	mov.w	r0, #398	; 0x18e
d03c6f40:	f002 fd0a 	bl	d03c9958 <malloc>
d03c6f44:	4ba8      	ldr	r3, [pc, #672]	; (d03c71e8 <main+0x2dc>)
d03c6f46:	4605      	mov	r5, r0
d03c6f48:	6018      	str	r0, [r3, #0]
d03c6f4a:	2024      	movs	r0, #36	; 0x24
d03c6f4c:	f002 fd04 	bl	d03c9958 <malloc>
d03c6f50:	4ba6      	ldr	r3, [pc, #664]	; (d03c71ec <main+0x2e0>)
d03c6f52:	4604      	mov	r4, r0
d03c6f54:	6018      	str	r0, [r3, #0]
d03c6f56:	f1b8 0f00 	cmp.w	r8, #0
d03c6f5a:	d005      	beq.n	d03c6f68 <main+0x5c>
d03c6f5c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03c6f60:	2100      	movs	r1, #0
d03c6f62:	4640      	mov	r0, r8
d03c6f64:	f002 fd24 	bl	d03c99b0 <memset>
d03c6f68:	b12e      	cbz	r6, d03c6f76 <main+0x6a>
d03c6f6a:	f24c 02c2 	movw	r2, #49346	; 0xc0c2
d03c6f6e:	2100      	movs	r1, #0
d03c6f70:	4630      	mov	r0, r6
d03c6f72:	f002 fd1d 	bl	d03c99b0 <memset>
d03c6f76:	b12d      	cbz	r5, d03c6f84 <main+0x78>
d03c6f78:	f44f 72c7 	mov.w	r2, #398	; 0x18e
d03c6f7c:	2100      	movs	r1, #0
d03c6f7e:	4628      	mov	r0, r5
d03c6f80:	f002 fd16 	bl	d03c99b0 <memset>
d03c6f84:	b124      	cbz	r4, d03c6f90 <main+0x84>
d03c6f86:	2224      	movs	r2, #36	; 0x24
d03c6f88:	2100      	movs	r1, #0
d03c6f8a:	4620      	mov	r0, r4
d03c6f8c:	f002 fd10 	bl	d03c99b0 <memset>
d03c6f90:	4c97      	ldr	r4, [pc, #604]	; (d03c71f0 <main+0x2e4>)
d03c6f92:	f44f 7000 	mov.w	r0, #512	; 0x200
d03c6f96:	f7fa f9bb 	bl	d03c1310 <seq_reserve_notes>
d03c6f9a:	2000      	movs	r0, #0
d03c6f9c:	7823      	ldrb	r3, [r4, #0]
d03c6f9e:	2601      	movs	r6, #1
d03c6fa0:	7862      	ldrb	r2, [r4, #1]
d03c6fa2:	46a3      	mov	fp, r4
d03c6fa4:	f8df 825c 	ldr.w	r8, [pc, #604]	; d03c7204 <main+0x2f8>
d03c6fa8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6fac:	78a2      	ldrb	r2, [r4, #2]
d03c6fae:	f8df 9258 	ldr.w	r9, [pc, #600]	; d03c7208 <main+0x2fc>
d03c6fb2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6fb6:	78e2      	ldrb	r2, [r4, #3]
d03c6fb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6fbc:	681b      	ldr	r3, [r3, #0]
d03c6fbe:	4798      	blx	r3
d03c6fc0:	7923      	ldrb	r3, [r4, #4]
d03c6fc2:	7962      	ldrb	r2, [r4, #5]
d03c6fc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6fc8:	79a2      	ldrb	r2, [r4, #6]
d03c6fca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6fce:	79e2      	ldrb	r2, [r4, #7]
d03c6fd0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6fd4:	689b      	ldr	r3, [r3, #8]
d03c6fd6:	4798      	blx	r3
d03c6fd8:	7d23      	ldrb	r3, [r4, #20]
d03c6fda:	7d62      	ldrb	r2, [r4, #21]
d03c6fdc:	2080      	movs	r0, #128	; 0x80
d03c6fde:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6fe2:	7da2      	ldrb	r2, [r4, #22]
d03c6fe4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c6fe8:	7de2      	ldrb	r2, [r4, #23]
d03c6fea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c6fee:	681b      	ldr	r3, [r3, #0]
d03c6ff0:	681b      	ldr	r3, [r3, #0]
d03c6ff2:	4798      	blx	r3
d03c6ff4:	7d23      	ldrb	r3, [r4, #20]
d03c6ff6:	7d62      	ldrb	r2, [r4, #21]
d03c6ff8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c6ffc:	7da2      	ldrb	r2, [r4, #22]
d03c6ffe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7002:	7de2      	ldrb	r2, [r4, #23]
d03c7004:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7008:	681b      	ldr	r3, [r3, #0]
d03c700a:	685b      	ldr	r3, [r3, #4]
d03c700c:	701e      	strb	r6, [r3, #0]
d03c700e:	7d23      	ldrb	r3, [r4, #20]
d03c7010:	7d62      	ldrb	r2, [r4, #21]
d03c7012:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7016:	7da2      	ldrb	r2, [r4, #22]
d03c7018:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c701c:	7de2      	ldrb	r2, [r4, #23]
d03c701e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7022:	681b      	ldr	r3, [r3, #0]
d03c7024:	699b      	ldr	r3, [r3, #24]
d03c7026:	4798      	blx	r3
d03c7028:	7b23      	ldrb	r3, [r4, #12]
d03c702a:	7b62      	ldrb	r2, [r4, #13]
d03c702c:	2190      	movs	r1, #144	; 0x90
d03c702e:	20dc      	movs	r0, #220	; 0xdc
d03c7030:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7034:	7ba2      	ldrb	r2, [r4, #14]
d03c7036:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c703a:	7be2      	ldrb	r2, [r4, #15]
d03c703c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7040:	681b      	ldr	r3, [r3, #0]
d03c7042:	691b      	ldr	r3, [r3, #16]
d03c7044:	4798      	blx	r3
d03c7046:	7b23      	ldrb	r3, [r4, #12]
d03c7048:	7b62      	ldrb	r2, [r4, #13]
d03c704a:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d03c704e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7052:	7ba2      	ldrb	r2, [r4, #14]
d03c7054:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7058:	7be2      	ldrb	r2, [r4, #15]
d03c705a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c705e:	2206      	movs	r2, #6
d03c7060:	681b      	ldr	r3, [r3, #0]
d03c7062:	9200      	str	r2, [sp, #0]
d03c7064:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c7068:	695d      	ldr	r5, [r3, #20]
d03c706a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c706e:	4619      	mov	r1, r3
d03c7070:	47a8      	blx	r5
d03c7072:	7b23      	ldrb	r3, [r4, #12]
d03c7074:	7b62      	ldrb	r2, [r4, #13]
d03c7076:	485f      	ldr	r0, [pc, #380]	; (d03c71f4 <main+0x2e8>)
d03c7078:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c707c:	7ba2      	ldrb	r2, [r4, #14]
d03c707e:	4d5e      	ldr	r5, [pc, #376]	; (d03c71f8 <main+0x2ec>)
d03c7080:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7084:	7be2      	ldrb	r2, [r4, #15]
d03c7086:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c708a:	681b      	ldr	r3, [r3, #0]
d03c708c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d03c708e:	4798      	blx	r3
d03c7090:	7b23      	ldrb	r3, [r4, #12]
d03c7092:	7b62      	ldrb	r2, [r4, #13]
d03c7094:	4857      	ldr	r0, [pc, #348]	; (d03c71f4 <main+0x2e8>)
d03c7096:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c709a:	7ba2      	ldrb	r2, [r4, #14]
d03c709c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70a0:	7be2      	ldrb	r2, [r4, #15]
d03c70a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70a6:	681b      	ldr	r3, [r3, #0]
d03c70a8:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d03c70aa:	4798      	blx	r3
d03c70ac:	7b23      	ldrb	r3, [r4, #12]
d03c70ae:	7b62      	ldrb	r2, [r4, #13]
d03c70b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c70b4:	7ba2      	ldrb	r2, [r4, #14]
d03c70b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70ba:	7be2      	ldrb	r2, [r4, #15]
d03c70bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70c0:	681b      	ldr	r3, [r3, #0]
d03c70c2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c70c4:	4798      	blx	r3
d03c70c6:	7b23      	ldrb	r3, [r4, #12]
d03c70c8:	7b62      	ldrb	r2, [r4, #13]
d03c70ca:	f8c8 0000 	str.w	r0, [r8]
d03c70ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c70d2:	7ba2      	ldrb	r2, [r4, #14]
d03c70d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c70d8:	7be2      	ldrb	r2, [r4, #15]
d03c70da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c70de:	681b      	ldr	r3, [r3, #0]
d03c70e0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d03c70e2:	4798      	blx	r3
d03c70e4:	4b45      	ldr	r3, [pc, #276]	; (d03c71fc <main+0x2f0>)
d03c70e6:	6028      	str	r0, [r5, #0]
d03c70e8:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d03c70ec:	f8c9 000c 	str.w	r0, [r9, #12]
d03c70f0:	f8c9 3004 	str.w	r3, [r9, #4]
d03c70f4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c70f8:	f8a9 3008 	strh.w	r3, [r9, #8]
d03c70fc:	f002 fc2c 	bl	d03c9958 <malloc>
d03c7100:	f8c9 0000 	str.w	r0, [r9]
d03c7104:	7b23      	ldrb	r3, [r4, #12]
d03c7106:	4648      	mov	r0, r9
d03c7108:	7b62      	ldrb	r2, [r4, #13]
d03c710a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c710e:	7ba2      	ldrb	r2, [r4, #14]
d03c7110:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7114:	7be2      	ldrb	r2, [r4, #15]
d03c7116:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c711a:	681b      	ldr	r3, [r3, #0]
d03c711c:	6a1b      	ldr	r3, [r3, #32]
d03c711e:	4798      	blx	r3
d03c7120:	7b23      	ldrb	r3, [r4, #12]
d03c7122:	7b62      	ldrb	r2, [r4, #13]
d03c7124:	f8d8 0000 	ldr.w	r0, [r8]
d03c7128:	f04f 0802 	mov.w	r8, #2
d03c712c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7130:	7ba2      	ldrb	r2, [r4, #14]
d03c7132:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7136:	7be2      	ldrb	r2, [r4, #15]
d03c7138:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c713c:	681b      	ldr	r3, [r3, #0]
d03c713e:	69db      	ldr	r3, [r3, #28]
d03c7140:	4798      	blx	r3
d03c7142:	7b23      	ldrb	r3, [r4, #12]
d03c7144:	7b62      	ldrb	r2, [r4, #13]
d03c7146:	2100      	movs	r1, #0
d03c7148:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c714c:	7ba2      	ldrb	r2, [r4, #14]
d03c714e:	4608      	mov	r0, r1
d03c7150:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7154:	7be2      	ldrb	r2, [r4, #15]
d03c7156:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c715a:	681b      	ldr	r3, [r3, #0]
d03c715c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c715e:	4798      	blx	r3
d03c7160:	7b23      	ldrb	r3, [r4, #12]
d03c7162:	7b62      	ldrb	r2, [r4, #13]
d03c7164:	6828      	ldr	r0, [r5, #0]
d03c7166:	2500      	movs	r5, #0
d03c7168:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c716c:	7ba2      	ldrb	r2, [r4, #14]
d03c716e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7172:	7be2      	ldrb	r2, [r4, #15]
d03c7174:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7178:	681b      	ldr	r3, [r3, #0]
d03c717a:	699b      	ldr	r3, [r3, #24]
d03c717c:	4798      	blx	r3
d03c717e:	4b20      	ldr	r3, [pc, #128]	; (d03c7200 <main+0x2f4>)
d03c7180:	701d      	strb	r5, [r3, #0]
d03c7182:	7e23      	ldrb	r3, [r4, #24]
d03c7184:	7e62      	ldrb	r2, [r4, #25]
d03c7186:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c718a:	7ea2      	ldrb	r2, [r4, #26]
d03c718c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7190:	7ee2      	ldrb	r2, [r4, #27]
d03c7192:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7196:	681b      	ldr	r3, [r3, #0]
d03c7198:	4798      	blx	r3
d03c719a:	7d23      	ldrb	r3, [r4, #20]
d03c719c:	7d62      	ldrb	r2, [r4, #21]
d03c719e:	2118      	movs	r1, #24
d03c71a0:	4628      	mov	r0, r5
d03c71a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c71a6:	7da2      	ldrb	r2, [r4, #22]
d03c71a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c71ac:	7de2      	ldrb	r2, [r4, #23]
d03c71ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c71b2:	220f      	movs	r2, #15
d03c71b4:	681b      	ldr	r3, [r3, #0]
d03c71b6:	69db      	ldr	r3, [r3, #28]
d03c71b8:	4798      	blx	r3
d03c71ba:	7d23      	ldrb	r3, [r4, #20]
d03c71bc:	7d62      	ldrb	r2, [r4, #21]
d03c71be:	2118      	movs	r1, #24
d03c71c0:	4630      	mov	r0, r6
d03c71c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c71c6:	7da2      	ldrb	r2, [r4, #22]
d03c71c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c71cc:	7de2      	ldrb	r2, [r4, #23]
d03c71ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c71d2:	220f      	movs	r2, #15
d03c71d4:	681b      	ldr	r3, [r3, #0]
d03c71d6:	69db      	ldr	r3, [r3, #28]
d03c71d8:	e018      	b.n	d03c720c <main+0x300>
d03c71da:	bf00      	nop
d03c71dc:	d03ccd28 	.word	0xd03ccd28
d03c71e0:	d03cf398 	.word	0xd03cf398
d03c71e4:	d03cf3a0 	.word	0xd03cf3a0
d03c71e8:	d03cf39c 	.word	0xd03cf39c
d03c71ec:	d03cf3d4 	.word	0xd03cf3d4
d03c71f0:	2001f000 	.word	0x2001f000
d03c71f4:	d03cc870 	.word	0xd03cc870
d03c71f8:	d03ccd30 	.word	0xd03ccd30
d03c71fc:	014003c0 	.word	0x014003c0
d03c7200:	d03ccd29 	.word	0xd03ccd29
d03c7204:	d03ccd2c 	.word	0xd03ccd2c
d03c7208:	d03cf700 	.word	0xd03cf700
d03c720c:	4798      	blx	r3
d03c720e:	f7f9 fa1d 	bl	d03c064c <sid_soundfont_init>
d03c7212:	f44f 7200 	mov.w	r2, #512	; 0x200
d03c7216:	4629      	mov	r1, r5
d03c7218:	48ae      	ldr	r0, [pc, #696]	; (d03c74d4 <main+0x5c8>)
d03c721a:	f002 fbc9 	bl	d03c99b0 <memset>
d03c721e:	2230      	movs	r2, #48	; 0x30
d03c7220:	4629      	mov	r1, r5
d03c7222:	48ad      	ldr	r0, [pc, #692]	; (d03c74d8 <main+0x5cc>)
d03c7224:	f002 fbc4 	bl	d03c99b0 <memset>
d03c7228:	2210      	movs	r2, #16
d03c722a:	49ac      	ldr	r1, [pc, #688]	; (d03c74dc <main+0x5d0>)
d03c722c:	48ac      	ldr	r0, [pc, #688]	; (d03c74e0 <main+0x5d4>)
d03c722e:	f002 fbb1 	bl	d03c9994 <memcpy>
d03c7232:	2210      	movs	r2, #16
d03c7234:	217f      	movs	r1, #127	; 0x7f
d03c7236:	48ab      	ldr	r0, [pc, #684]	; (d03c74e4 <main+0x5d8>)
d03c7238:	f002 fbba 	bl	d03c99b0 <memset>
d03c723c:	2210      	movs	r2, #16
d03c723e:	217f      	movs	r1, #127	; 0x7f
d03c7240:	48a9      	ldr	r0, [pc, #676]	; (d03c74e8 <main+0x5dc>)
d03c7242:	f002 fbb5 	bl	d03c99b0 <memset>
d03c7246:	4ba9      	ldr	r3, [pc, #676]	; (d03c74ec <main+0x5e0>)
d03c7248:	22c8      	movs	r2, #200	; 0xc8
d03c724a:	4629      	mov	r1, r5
d03c724c:	48a8      	ldr	r0, [pc, #672]	; (d03c74f0 <main+0x5e4>)
d03c724e:	801a      	strh	r2, [r3, #0]
d03c7250:	22b4      	movs	r2, #180	; 0xb4
d03c7252:	4ba8      	ldr	r3, [pc, #672]	; (d03c74f4 <main+0x5e8>)
d03c7254:	801a      	strh	r2, [r3, #0]
d03c7256:	2220      	movs	r2, #32
d03c7258:	4ba7      	ldr	r3, [pc, #668]	; (d03c74f8 <main+0x5ec>)
d03c725a:	701e      	strb	r6, [r3, #0]
d03c725c:	f002 fba8 	bl	d03c99b0 <memset>
d03c7260:	4ba6      	ldr	r3, [pc, #664]	; (d03c74fc <main+0x5f0>)
d03c7262:	2203      	movs	r2, #3
d03c7264:	4629      	mov	r1, r5
d03c7266:	48a6      	ldr	r0, [pc, #664]	; (d03c7500 <main+0x5f4>)
d03c7268:	701d      	strb	r5, [r3, #0]
d03c726a:	4ba6      	ldr	r3, [pc, #664]	; (d03c7504 <main+0x5f8>)
d03c726c:	701d      	strb	r5, [r3, #0]
d03c726e:	4ba6      	ldr	r3, [pc, #664]	; (d03c7508 <main+0x5fc>)
d03c7270:	601d      	str	r5, [r3, #0]
d03c7272:	4ba6      	ldr	r3, [pc, #664]	; (d03c750c <main+0x600>)
d03c7274:	701d      	strb	r5, [r3, #0]
d03c7276:	4ba6      	ldr	r3, [pc, #664]	; (d03c7510 <main+0x604>)
d03c7278:	701d      	strb	r5, [r3, #0]
d03c727a:	4ba6      	ldr	r3, [pc, #664]	; (d03c7514 <main+0x608>)
d03c727c:	701d      	strb	r5, [r3, #0]
d03c727e:	4ba6      	ldr	r3, [pc, #664]	; (d03c7518 <main+0x60c>)
d03c7280:	701d      	strb	r5, [r3, #0]
d03c7282:	4ba6      	ldr	r3, [pc, #664]	; (d03c751c <main+0x610>)
d03c7284:	701d      	strb	r5, [r3, #0]
d03c7286:	4ba6      	ldr	r3, [pc, #664]	; (d03c7520 <main+0x614>)
d03c7288:	701d      	strb	r5, [r3, #0]
d03c728a:	4ba6      	ldr	r3, [pc, #664]	; (d03c7524 <main+0x618>)
d03c728c:	701d      	strb	r5, [r3, #0]
d03c728e:	4ba6      	ldr	r3, [pc, #664]	; (d03c7528 <main+0x61c>)
d03c7290:	701d      	strb	r5, [r3, #0]
d03c7292:	705e      	strb	r6, [r3, #1]
d03c7294:	70da      	strb	r2, [r3, #3]
d03c7296:	22f0      	movs	r2, #240	; 0xf0
d03c7298:	f883 8002 	strb.w	r8, [r3, #2]
d03c729c:	4ba3      	ldr	r3, [pc, #652]	; (d03c752c <main+0x620>)
d03c729e:	701d      	strb	r5, [r3, #0]
d03c72a0:	4ba3      	ldr	r3, [pc, #652]	; (d03c7530 <main+0x624>)
d03c72a2:	701d      	strb	r5, [r3, #0]
d03c72a4:	4ba3      	ldr	r3, [pc, #652]	; (d03c7534 <main+0x628>)
d03c72a6:	701d      	strb	r5, [r3, #0]
d03c72a8:	4ba3      	ldr	r3, [pc, #652]	; (d03c7538 <main+0x62c>)
d03c72aa:	701d      	strb	r5, [r3, #0]
d03c72ac:	4ba3      	ldr	r3, [pc, #652]	; (d03c753c <main+0x630>)
d03c72ae:	701d      	strb	r5, [r3, #0]
d03c72b0:	4ba3      	ldr	r3, [pc, #652]	; (d03c7540 <main+0x634>)
d03c72b2:	701d      	strb	r5, [r3, #0]
d03c72b4:	4ba3      	ldr	r3, [pc, #652]	; (d03c7544 <main+0x638>)
d03c72b6:	701d      	strb	r5, [r3, #0]
d03c72b8:	4ba3      	ldr	r3, [pc, #652]	; (d03c7548 <main+0x63c>)
d03c72ba:	701d      	strb	r5, [r3, #0]
d03c72bc:	4ba3      	ldr	r3, [pc, #652]	; (d03c754c <main+0x640>)
d03c72be:	801a      	strh	r2, [r3, #0]
d03c72c0:	22a0      	movs	r2, #160	; 0xa0
d03c72c2:	4ba3      	ldr	r3, [pc, #652]	; (d03c7550 <main+0x644>)
d03c72c4:	801a      	strh	r2, [r3, #0]
d03c72c6:	4ba3      	ldr	r3, [pc, #652]	; (d03c7554 <main+0x648>)
d03c72c8:	4aa3      	ldr	r2, [pc, #652]	; (d03c7558 <main+0x64c>)
d03c72ca:	701d      	strb	r5, [r3, #0]
d03c72cc:	4ba3      	ldr	r3, [pc, #652]	; (d03c755c <main+0x650>)
d03c72ce:	701d      	strb	r5, [r3, #0]
d03c72d0:	4ba3      	ldr	r3, [pc, #652]	; (d03c7560 <main+0x654>)
d03c72d2:	701e      	strb	r6, [r3, #0]
d03c72d4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d03c72d8:	6013      	str	r3, [r2, #0]
d03c72da:	4aa2      	ldr	r2, [pc, #648]	; (d03c7564 <main+0x658>)
d03c72dc:	7015      	strb	r5, [r2, #0]
d03c72de:	4aa2      	ldr	r2, [pc, #648]	; (d03c7568 <main+0x65c>)
d03c72e0:	7015      	strb	r5, [r2, #0]
d03c72e2:	4aa2      	ldr	r2, [pc, #648]	; (d03c756c <main+0x660>)
d03c72e4:	7015      	strb	r5, [r2, #0]
d03c72e6:	4aa2      	ldr	r2, [pc, #648]	; (d03c7570 <main+0x664>)
d03c72e8:	7015      	strb	r5, [r2, #0]
d03c72ea:	4aa2      	ldr	r2, [pc, #648]	; (d03c7574 <main+0x668>)
d03c72ec:	7015      	strb	r5, [r2, #0]
d03c72ee:	4aa2      	ldr	r2, [pc, #648]	; (d03c7578 <main+0x66c>)
d03c72f0:	7015      	strb	r5, [r2, #0]
d03c72f2:	4aa2      	ldr	r2, [pc, #648]	; (d03c757c <main+0x670>)
d03c72f4:	7013      	strb	r3, [r2, #0]
d03c72f6:	f44f 6200 	mov.w	r2, #2048	; 0x800
d03c72fa:	4ba1      	ldr	r3, [pc, #644]	; (d03c7580 <main+0x674>)
d03c72fc:	701d      	strb	r5, [r3, #0]
d03c72fe:	4ba1      	ldr	r3, [pc, #644]	; (d03c7584 <main+0x678>)
d03c7300:	701d      	strb	r5, [r3, #0]
d03c7302:	4ba1      	ldr	r3, [pc, #644]	; (d03c7588 <main+0x67c>)
d03c7304:	701d      	strb	r5, [r3, #0]
d03c7306:	4ba1      	ldr	r3, [pc, #644]	; (d03c758c <main+0x680>)
d03c7308:	701e      	strb	r6, [r3, #0]
d03c730a:	4ba1      	ldr	r3, [pc, #644]	; (d03c7590 <main+0x684>)
d03c730c:	4ea1      	ldr	r6, [pc, #644]	; (d03c7594 <main+0x688>)
d03c730e:	701d      	strb	r5, [r3, #0]
d03c7310:	4ba1      	ldr	r3, [pc, #644]	; (d03c7598 <main+0x68c>)
d03c7312:	7035      	strb	r5, [r6, #0]
d03c7314:	701d      	strb	r5, [r3, #0]
d03c7316:	4ba1      	ldr	r3, [pc, #644]	; (d03c759c <main+0x690>)
d03c7318:	701d      	strb	r5, [r3, #0]
d03c731a:	4ba1      	ldr	r3, [pc, #644]	; (d03c75a0 <main+0x694>)
d03c731c:	701d      	strb	r5, [r3, #0]
d03c731e:	f002 fb47 	bl	d03c99b0 <memset>
d03c7322:	4ba0      	ldr	r3, [pc, #640]	; (d03c75a4 <main+0x698>)
d03c7324:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c7328:	4629      	mov	r1, r5
d03c732a:	489f      	ldr	r0, [pc, #636]	; (d03c75a8 <main+0x69c>)
d03c732c:	701d      	strb	r5, [r3, #0]
d03c732e:	4b9f      	ldr	r3, [pc, #636]	; (d03c75ac <main+0x6a0>)
d03c7330:	701d      	strb	r5, [r3, #0]
d03c7332:	4b9f      	ldr	r3, [pc, #636]	; (d03c75b0 <main+0x6a4>)
d03c7334:	701d      	strb	r5, [r3, #0]
d03c7336:	4b9f      	ldr	r3, [pc, #636]	; (d03c75b4 <main+0x6a8>)
d03c7338:	701d      	strb	r5, [r3, #0]
d03c733a:	4b9f      	ldr	r3, [pc, #636]	; (d03c75b8 <main+0x6ac>)
d03c733c:	701d      	strb	r5, [r3, #0]
d03c733e:	4b9f      	ldr	r3, [pc, #636]	; (d03c75bc <main+0x6b0>)
d03c7340:	f883 8000 	strb.w	r8, [r3]
d03c7344:	4b9e      	ldr	r3, [pc, #632]	; (d03c75c0 <main+0x6b4>)
d03c7346:	701d      	strb	r5, [r3, #0]
d03c7348:	4b9e      	ldr	r3, [pc, #632]	; (d03c75c4 <main+0x6b8>)
d03c734a:	601d      	str	r5, [r3, #0]
d03c734c:	f002 fb30 	bl	d03c99b0 <memset>
d03c7350:	6838      	ldr	r0, [r7, #0]
d03c7352:	960d      	str	r6, [sp, #52]	; 0x34
d03c7354:	b120      	cbz	r0, d03c7360 <main+0x454>
d03c7356:	f44f 4240 	mov.w	r2, #49152	; 0xc000
d03c735a:	4629      	mov	r1, r5
d03c735c:	f002 fb28 	bl	d03c99b0 <memset>
d03c7360:	2400      	movs	r4, #0
d03c7362:	4b99      	ldr	r3, [pc, #612]	; (d03c75c8 <main+0x6bc>)
d03c7364:	2501      	movs	r5, #1
d03c7366:	2278      	movs	r2, #120	; 0x78
d03c7368:	601c      	str	r4, [r3, #0]
d03c736a:	4b98      	ldr	r3, [pc, #608]	; (d03c75cc <main+0x6c0>)
d03c736c:	601c      	str	r4, [r3, #0]
d03c736e:	4b98      	ldr	r3, [pc, #608]	; (d03c75d0 <main+0x6c4>)
d03c7370:	601c      	str	r4, [r3, #0]
d03c7372:	4b98      	ldr	r3, [pc, #608]	; (d03c75d4 <main+0x6c8>)
d03c7374:	601c      	str	r4, [r3, #0]
d03c7376:	4b98      	ldr	r3, [pc, #608]	; (d03c75d8 <main+0x6cc>)
d03c7378:	601c      	str	r4, [r3, #0]
d03c737a:	4b98      	ldr	r3, [pc, #608]	; (d03c75dc <main+0x6d0>)
d03c737c:	601c      	str	r4, [r3, #0]
d03c737e:	4b98      	ldr	r3, [pc, #608]	; (d03c75e0 <main+0x6d4>)
d03c7380:	601c      	str	r4, [r3, #0]
d03c7382:	4b98      	ldr	r3, [pc, #608]	; (d03c75e4 <main+0x6d8>)
d03c7384:	601c      	str	r4, [r3, #0]
d03c7386:	4b98      	ldr	r3, [pc, #608]	; (d03c75e8 <main+0x6dc>)
d03c7388:	601c      	str	r4, [r3, #0]
d03c738a:	4b98      	ldr	r3, [pc, #608]	; (d03c75ec <main+0x6e0>)
d03c738c:	601c      	str	r4, [r3, #0]
d03c738e:	4b98      	ldr	r3, [pc, #608]	; (d03c75f0 <main+0x6e4>)
d03c7390:	601c      	str	r4, [r3, #0]
d03c7392:	4b98      	ldr	r3, [pc, #608]	; (d03c75f4 <main+0x6e8>)
d03c7394:	601c      	str	r4, [r3, #0]
d03c7396:	4b98      	ldr	r3, [pc, #608]	; (d03c75f8 <main+0x6ec>)
d03c7398:	601c      	str	r4, [r3, #0]
d03c739a:	4b98      	ldr	r3, [pc, #608]	; (d03c75fc <main+0x6f0>)
d03c739c:	601c      	str	r4, [r3, #0]
d03c739e:	4b98      	ldr	r3, [pc, #608]	; (d03c7600 <main+0x6f4>)
d03c73a0:	701d      	strb	r5, [r3, #0]
d03c73a2:	4b98      	ldr	r3, [pc, #608]	; (d03c7604 <main+0x6f8>)
d03c73a4:	701c      	strb	r4, [r3, #0]
d03c73a6:	4b98      	ldr	r3, [pc, #608]	; (d03c7608 <main+0x6fc>)
d03c73a8:	801a      	strh	r2, [r3, #0]
d03c73aa:	2202      	movs	r2, #2
d03c73ac:	4b97      	ldr	r3, [pc, #604]	; (d03c760c <main+0x700>)
d03c73ae:	701c      	strb	r4, [r3, #0]
d03c73b0:	4b97      	ldr	r3, [pc, #604]	; (d03c7610 <main+0x704>)
d03c73b2:	701c      	strb	r4, [r3, #0]
d03c73b4:	4b97      	ldr	r3, [pc, #604]	; (d03c7614 <main+0x708>)
d03c73b6:	701c      	strb	r4, [r3, #0]
d03c73b8:	4b97      	ldr	r3, [pc, #604]	; (d03c7618 <main+0x70c>)
d03c73ba:	701c      	strb	r4, [r3, #0]
d03c73bc:	4b97      	ldr	r3, [pc, #604]	; (d03c761c <main+0x710>)
d03c73be:	701c      	strb	r4, [r3, #0]
d03c73c0:	4b97      	ldr	r3, [pc, #604]	; (d03c7620 <main+0x714>)
d03c73c2:	801c      	strh	r4, [r3, #0]
d03c73c4:	4b97      	ldr	r3, [pc, #604]	; (d03c7624 <main+0x718>)
d03c73c6:	701c      	strb	r4, [r3, #0]
d03c73c8:	4b97      	ldr	r3, [pc, #604]	; (d03c7628 <main+0x71c>)
d03c73ca:	701c      	strb	r4, [r3, #0]
d03c73cc:	4b97      	ldr	r3, [pc, #604]	; (d03c762c <main+0x720>)
d03c73ce:	701d      	strb	r5, [r3, #0]
d03c73d0:	4b97      	ldr	r3, [pc, #604]	; (d03c7630 <main+0x724>)
d03c73d2:	701a      	strb	r2, [r3, #0]
d03c73d4:	4b97      	ldr	r3, [pc, #604]	; (d03c7634 <main+0x728>)
d03c73d6:	701c      	strb	r4, [r3, #0]
d03c73d8:	4b97      	ldr	r3, [pc, #604]	; (d03c7638 <main+0x72c>)
d03c73da:	701c      	strb	r4, [r3, #0]
d03c73dc:	4b97      	ldr	r3, [pc, #604]	; (d03c763c <main+0x730>)
d03c73de:	801c      	strh	r4, [r3, #0]
d03c73e0:	4b97      	ldr	r3, [pc, #604]	; (d03c7640 <main+0x734>)
d03c73e2:	601c      	str	r4, [r3, #0]
d03c73e4:	f7f9 ff4a 	bl	d03c127c <seq_clear_note_storage>
d03c73e8:	4b96      	ldr	r3, [pc, #600]	; (d03c7644 <main+0x738>)
d03c73ea:	4621      	mov	r1, r4
d03c73ec:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c73f0:	4895      	ldr	r0, [pc, #596]	; (d03c7648 <main+0x73c>)
d03c73f2:	701d      	strb	r5, [r3, #0]
d03c73f4:	4b95      	ldr	r3, [pc, #596]	; (d03c764c <main+0x740>)
d03c73f6:	701c      	strb	r4, [r3, #0]
d03c73f8:	4b95      	ldr	r3, [pc, #596]	; (d03c7650 <main+0x744>)
d03c73fa:	601c      	str	r4, [r3, #0]
d03c73fc:	f002 fad8 	bl	d03c99b0 <memset>
d03c7400:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03c7404:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03c7408:	4892      	ldr	r0, [pc, #584]	; (d03c7654 <main+0x748>)
d03c740a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c740e:	f89b 2022 	ldrb.w	r2, [fp, #34]	; 0x22
d03c7412:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7416:	f89b 2023 	ldrb.w	r2, [fp, #35]	; 0x23
d03c741a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c741e:	681b      	ldr	r3, [r3, #0]
d03c7420:	4798      	blx	r3
d03c7422:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03c7426:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03c742a:	488b      	ldr	r0, [pc, #556]	; (d03c7658 <main+0x74c>)
d03c742c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c7430:	f89b 2022 	ldrb.w	r2, [fp, #34]	; 0x22
d03c7434:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7438:	f89b 2023 	ldrb.w	r2, [fp, #35]	; 0x23
d03c743c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c7440:	685b      	ldr	r3, [r3, #4]
d03c7442:	4798      	blx	r3
d03c7444:	f7fd fb96 	bl	d03c4b74 <ui_redraw_backbuffer>
d03c7448:	4c84      	ldr	r4, [pc, #528]	; (d03c765c <main+0x750>)
d03c744a:	f7fb fd5f 	bl	d03c2f0c <midi_process_events>
d03c744e:	f7fa f955 	bl	d03c16fc <midi_process_ui_requests>
d03c7452:	f7fa ffb5 	bl	d03c23c0 <seq_update_transport>
d03c7456:	7b23      	ldrb	r3, [r4, #12]
d03c7458:	7b62      	ldrb	r2, [r4, #13]
d03c745a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c745e:	7ba2      	ldrb	r2, [r4, #14]
d03c7460:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7464:	7be2      	ldrb	r2, [r4, #15]
d03c7466:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c746a:	681b      	ldr	r3, [r3, #0]
d03c746c:	68db      	ldr	r3, [r3, #12]
d03c746e:	4798      	blx	r3
d03c7470:	f7fb fd4c 	bl	d03c2f0c <midi_process_events>
d03c7474:	f7fa f942 	bl	d03c16fc <midi_process_ui_requests>
d03c7478:	f7fa ffa2 	bl	d03c23c0 <seq_update_transport>
d03c747c:	4b30      	ldr	r3, [pc, #192]	; (d03c7540 <main+0x634>)
d03c747e:	781b      	ldrb	r3, [r3, #0]
d03c7480:	930c      	str	r3, [sp, #48]	; 0x30
d03c7482:	4b32      	ldr	r3, [pc, #200]	; (d03c754c <main+0x640>)
d03c7484:	f9b3 8000 	ldrsh.w	r8, [r3]
d03c7488:	4b31      	ldr	r3, [pc, #196]	; (d03c7550 <main+0x644>)
d03c748a:	f8ad 8038 	strh.w	r8, [sp, #56]	; 0x38
d03c748e:	4647      	mov	r7, r8
d03c7490:	f9b3 6000 	ldrsh.w	r6, [r3]
d03c7494:	2300      	movs	r3, #0
d03c7496:	f8ad 803c 	strh.w	r8, [sp, #60]	; 0x3c
d03c749a:	9310      	str	r3, [sp, #64]	; 0x40
d03c749c:	4635      	mov	r5, r6
d03c749e:	9314      	str	r3, [sp, #80]	; 0x50
d03c74a0:	7e23      	ldrb	r3, [r4, #24]
d03c74a2:	7e62      	ldrb	r2, [r4, #25]
d03c74a4:	f8ad 603a 	strh.w	r6, [sp, #58]	; 0x3a
d03c74a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c74ac:	7ea2      	ldrb	r2, [r4, #26]
d03c74ae:	f8ad 603e 	strh.w	r6, [sp, #62]	; 0x3e
d03c74b2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c74b6:	7ee2      	ldrb	r2, [r4, #27]
d03c74b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c74bc:	685b      	ldr	r3, [r3, #4]
d03c74be:	4798      	blx	r3
d03c74c0:	7e23      	ldrb	r3, [r4, #24]
d03c74c2:	7e62      	ldrb	r2, [r4, #25]
d03c74c4:	4681      	mov	r9, r0
d03c74c6:	f10d 013a 	add.w	r1, sp, #58	; 0x3a
d03c74ca:	a80e      	add	r0, sp, #56	; 0x38
d03c74cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c74d0:	7ea2      	ldrb	r2, [r4, #26]
d03c74d2:	e0c5      	b.n	d03c7660 <main+0x754>
d03c74d4:	d03ccd8d 	.word	0xd03ccd8d
d03c74d8:	d03cd108 	.word	0xd03cd108
d03c74dc:	d03cc2d3 	.word	0xd03cc2d3
d03c74e0:	d03ccd64 	.word	0xd03ccd64
d03c74e4:	d03ccd74 	.word	0xd03ccd74
d03c74e8:	d03ccd54 	.word	0xd03ccd54
d03c74ec:	d03ccf8e 	.word	0xd03ccf8e
d03c74f0:	d03ccd34 	.word	0xd03ccd34
d03c74f4:	d03ccd8a 	.word	0xd03ccd8a
d03c74f8:	d03ccd88 	.word	0xd03ccd88
d03c74fc:	d03ccd8c 	.word	0xd03ccd8c
d03c7500:	d03cdb19 	.word	0xd03cdb19
d03c7504:	d03ccf8d 	.word	0xd03ccf8d
d03c7508:	d03cd13c 	.word	0xd03cd13c
d03c750c:	d03cd138 	.word	0xd03cd138
d03c7510:	d03ccfa4 	.word	0xd03ccfa4
d03c7514:	d03ccf95 	.word	0xd03ccf95
d03c7518:	d03ccf91 	.word	0xd03ccf91
d03c751c:	d03ccf94 	.word	0xd03ccf94
d03c7520:	d03ccf90 	.word	0xd03ccf90
d03c7524:	d03cf3ca 	.word	0xd03cf3ca
d03c7528:	d03cf3a4 	.word	0xd03cf3a4
d03c752c:	d03cf330 	.word	0xd03cf330
d03c7530:	d03cda32 	.word	0xd03cda32
d03c7534:	d03cf591 	.word	0xd03cf591
d03c7538:	d03cda77 	.word	0xd03cda77
d03c753c:	d03ce31c 	.word	0xd03ce31c
d03c7540:	d03ce31b 	.word	0xd03ce31b
d03c7544:	d03cf391 	.word	0xd03cf391
d03c7548:	d03cf392 	.word	0xd03cf392
d03c754c:	d03cf394 	.word	0xd03cf394
d03c7550:	d03cf396 	.word	0xd03cf396
d03c7554:	d03cf3d8 	.word	0xd03cf3d8
d03c7558:	d03cd144 	.word	0xd03cd144
d03c755c:	d03cf400 	.word	0xd03cf400
d03c7560:	d03cd140 	.word	0xd03cd140
d03c7564:	d03cf58c 	.word	0xd03cf58c
d03c7568:	d03cf58d 	.word	0xd03cf58d
d03c756c:	d03cf58f 	.word	0xd03cf58f
d03c7570:	d03cf58e 	.word	0xd03cf58e
d03c7574:	d03cf590 	.word	0xd03cf590
d03c7578:	d03cf583 	.word	0xd03cf583
d03c757c:	d03cf588 	.word	0xd03cf588
d03c7580:	d03cf589 	.word	0xd03cf589
d03c7584:	d03cf582 	.word	0xd03cf582
d03c7588:	d03cf58b 	.word	0xd03cf58b
d03c758c:	d03cf58a 	.word	0xd03cf58a
d03c7590:	d03cda33 	.word	0xd03cda33
d03c7594:	d03cd148 	.word	0xd03cd148
d03c7598:	d03cda35 	.word	0xd03cda35
d03c759c:	d03cda76 	.word	0xd03cda76
d03c75a0:	d03cda34 	.word	0xd03cda34
d03c75a4:	d03cda78 	.word	0xd03cda78
d03c75a8:	d03cf402 	.word	0xd03cf402
d03c75ac:	d03ce319 	.word	0xd03ce319
d03c75b0:	d03ce31a 	.word	0xd03ce31a
d03c75b4:	d03cf3aa 	.word	0xd03cf3aa
d03c75b8:	d03cf3a8 	.word	0xd03cf3a8
d03c75bc:	d03cf3a9 	.word	0xd03cf3a9
d03c75c0:	d03cf331 	.word	0xd03cf331
d03c75c4:	d03cf584 	.word	0xd03cf584
d03c75c8:	d03ccf9c 	.word	0xd03ccf9c
d03c75cc:	d03ccf98 	.word	0xd03ccf98
d03c75d0:	d03ccd84 	.word	0xd03ccd84
d03c75d4:	d03ccfa0 	.word	0xd03ccfa0
d03c75d8:	d03ccfa8 	.word	0xd03ccfa8
d03c75dc:	d03ccfb0 	.word	0xd03ccfb0
d03c75e0:	d03ccfc4 	.word	0xd03ccfc4
d03c75e4:	d03cd100 	.word	0xd03cd100
d03c75e8:	d03ccfd4 	.word	0xd03ccfd4
d03c75ec:	d03ccfcc 	.word	0xd03ccfcc
d03c75f0:	d03ccfdc 	.word	0xd03ccfdc
d03c75f4:	d03cd0f8 	.word	0xd03cd0f8
d03c75f8:	d03cd0f4 	.word	0xd03cd0f4
d03c75fc:	d03cd0f0 	.word	0xd03cd0f0
d03c7600:	d03ccfe0 	.word	0xd03ccfe0
d03c7604:	d03cd0ec 	.word	0xd03cd0ec
d03c7608:	d03ccfac 	.word	0xd03ccfac
d03c760c:	d03cd0fc 	.word	0xd03cd0fc
d03c7610:	d03cd105 	.word	0xd03cd105
d03c7614:	d03cd104 	.word	0xd03cd104
d03c7618:	d03ccfb4 	.word	0xd03ccfb4
d03c761c:	d03ccfb8 	.word	0xd03ccfb8
d03c7620:	d03ccfb6 	.word	0xd03ccfb6
d03c7624:	d03ccfc9 	.word	0xd03ccfc9
d03c7628:	d03ccfc8 	.word	0xd03ccfc8
d03c762c:	d03cd106 	.word	0xd03cd106
d03c7630:	d03cd107 	.word	0xd03cd107
d03c7634:	d03ccfca 	.word	0xd03ccfca
d03c7638:	d03ccfc2 	.word	0xd03ccfc2
d03c763c:	d03ccfc0 	.word	0xd03ccfc0
d03c7640:	d03ccfbc 	.word	0xd03ccfbc
d03c7644:	d03cf3cb 	.word	0xd03cf3cb
d03c7648:	d03ccfec 	.word	0xd03ccfec
d03c764c:	d03cf3d0 	.word	0xd03cf3d0
d03c7650:	d03cf3cc 	.word	0xd03cf3cc
d03c7654:	d03c2245 	.word	0xd03c2245
d03c7658:	d03c2cf5 	.word	0xd03c2cf5
d03c765c:	2001f000 	.word	0x2001f000
d03c7660:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c7664:	7ee2      	ldrb	r2, [r4, #27]
d03c7666:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c766a:	689b      	ldr	r3, [r3, #8]
d03c766c:	4798      	blx	r3
d03c766e:	2800      	cmp	r0, #0
d03c7670:	f000 8089 	beq.w	d03c7786 <main+0x87a>
d03c7674:	f04f 0a01 	mov.w	sl, #1
d03c7678:	f9bd 8038 	ldrsh.w	r8, [sp, #56]	; 0x38
d03c767c:	f9bd 603a 	ldrsh.w	r6, [sp, #58]	; 0x3a
d03c7680:	4650      	mov	r0, sl
d03c7682:	f240 13df 	movw	r3, #479	; 0x1df
d03c7686:	ea28 75e8 	bic.w	r5, r8, r8, asr #31
d03c768a:	ea26 71e6 	bic.w	r1, r6, r6, asr #31
d03c768e:	429d      	cmp	r5, r3
d03c7690:	bfa8      	it	ge
d03c7692:	461d      	movge	r5, r3
d03c7694:	f240 133f 	movw	r3, #319	; 0x13f
d03c7698:	4299      	cmp	r1, r3
d03c769a:	bfa8      	it	ge
d03c769c:	4619      	movge	r1, r3
d03c769e:	2800      	cmp	r0, #0
d03c76a0:	f000 80ac 	beq.w	d03c77fc <main+0x8f0>
d03c76a4:	4ba8      	ldr	r3, [pc, #672]	; (d03c7948 <main+0xa3c>)
d03c76a6:	781a      	ldrb	r2, [r3, #0]
d03c76a8:	fab2 f282 	clz	r2, r2
d03c76ac:	0952      	lsrs	r2, r2, #5
d03c76ae:	f01a 0901 	ands.w	r9, sl, #1
d03c76b2:	b2d3      	uxtb	r3, r2
d03c76b4:	4aa5      	ldr	r2, [pc, #660]	; (d03c794c <main+0xa40>)
d03c76b6:	9304      	str	r3, [sp, #16]
d03c76b8:	bf0c      	ite	eq
d03c76ba:	464f      	moveq	r7, r9
d03c76bc:	4ba3      	ldrne	r3, [pc, #652]	; (d03c794c <main+0xa40>)
d03c76be:	f8df e288 	ldr.w	lr, [pc, #648]	; d03c7948 <main+0xa3c>
d03c76c2:	bf18      	it	ne
d03c76c4:	781f      	ldrbne	r7, [r3, #0]
d03c76c6:	f88e 0000 	strb.w	r0, [lr]
d03c76ca:	bf18      	it	ne
d03c76cc:	f007 0701 	andne.w	r7, r7, #1
d03c76d0:	f8df e2cc 	ldr.w	lr, [pc, #716]	; d03c79a0 <main+0xa94>
d03c76d4:	f8ad 5044 	strh.w	r5, [sp, #68]	; 0x44
d03c76d8:	bf18      	it	ne
d03c76da:	f1c7 0701 	rsbne	r7, r7, #1
d03c76de:	f01a 0302 	ands.w	r3, sl, #2
d03c76e2:	f8ae 1000 	strh.w	r1, [lr]
d03c76e6:	bf18      	it	ne
d03c76e8:	4b98      	ldrne	r3, [pc, #608]	; (d03c794c <main+0xa40>)
d03c76ea:	fa5f fc87 	uxtb.w	ip, r7
d03c76ee:	f8ad 1046 	strh.w	r1, [sp, #70]	; 0x46
d03c76f2:	bf18      	it	ne
d03c76f4:	781b      	ldrbne	r3, [r3, #0]
d03c76f6:	f882 a000 	strb.w	sl, [r2]
d03c76fa:	bf18      	it	ne
d03c76fc:	f083 0302 	eorne.w	r3, r3, #2
d03c7700:	4a93      	ldr	r2, [pc, #588]	; (d03c7950 <main+0xa44>)
d03c7702:	f88d 0048 	strb.w	r0, [sp, #72]	; 0x48
d03c7706:	bf18      	it	ne
d03c7708:	f3c3 0340 	ubfxne	r3, r3, #1, #1
d03c770c:	8015      	strh	r5, [r2, #0]
d03c770e:	9a04      	ldr	r2, [sp, #16]
d03c7710:	f88d a04a 	strb.w	sl, [sp, #74]	; 0x4a
d03c7714:	f88d 2049 	strb.w	r2, [sp, #73]	; 0x49
d03c7718:	f88d c04b 	strb.w	ip, [sp, #75]	; 0x4b
d03c771c:	f88d 304c 	strb.w	r3, [sp, #76]	; 0x4c
d03c7720:	f1b9 0f00 	cmp.w	r9, #0
d03c7724:	d06c      	beq.n	d03c7800 <main+0x8f4>
d03c7726:	f1c7 0201 	rsb	r2, r7, #1
d03c772a:	f00a 0a03 	and.w	sl, sl, #3
d03c772e:	f1ba 0f03 	cmp.w	sl, #3
d03c7732:	d167      	bne.n	d03c7804 <main+0x8f8>
d03c7734:	2300      	movs	r3, #0
d03c7736:	4a87      	ldr	r2, [pc, #540]	; (d03c7954 <main+0xa48>)
d03c7738:	7013      	strb	r3, [r2, #0]
d03c773a:	2201      	movs	r2, #1
d03c773c:	4b86      	ldr	r3, [pc, #536]	; (d03c7958 <main+0xa4c>)
d03c773e:	701a      	strb	r2, [r3, #0]
d03c7740:	4e86      	ldr	r6, [pc, #536]	; (d03c795c <main+0xa50>)
d03c7742:	4b87      	ldr	r3, [pc, #540]	; (d03c7960 <main+0xa54>)
d03c7744:	781d      	ldrb	r5, [r3, #0]
d03c7746:	7833      	ldrb	r3, [r6, #0]
d03c7748:	42ab      	cmp	r3, r5
d03c774a:	f000 87a3 	beq.w	d03c8694 <main+0x1788>
d03c774e:	4b85      	ldr	r3, [pc, #532]	; (d03c7964 <main+0xa58>)
d03c7750:	2204      	movs	r2, #4
d03c7752:	a810      	add	r0, sp, #64	; 0x40
d03c7754:	461f      	mov	r7, r3
d03c7756:	eb03 0185 	add.w	r1, r3, r5, lsl #2
d03c775a:	f002 f91b 	bl	d03c9994 <memcpy>
d03c775e:	eb07 0385 	add.w	r3, r7, r5, lsl #2
d03c7762:	f817 1025 	ldrb.w	r1, [r7, r5, lsl #2]
d03c7766:	3501      	adds	r5, #1
d03c7768:	8858      	ldrh	r0, [r3, #2]
d03c776a:	2901      	cmp	r1, #1
d03c776c:	f005 050f 	and.w	r5, r5, #15
d03c7770:	4b7b      	ldr	r3, [pc, #492]	; (d03c7960 <main+0xa54>)
d03c7772:	701d      	strb	r5, [r3, #0]
d03c7774:	d1e5      	bne.n	d03c7742 <main+0x836>
d03c7776:	1e43      	subs	r3, r0, #1
d03c7778:	b29a      	uxth	r2, r3
d03c777a:	2a05      	cmp	r2, #5
d03c777c:	f200 81a2 	bhi.w	d03c7ac4 <main+0xbb8>
d03c7780:	4a79      	ldr	r2, [pc, #484]	; (d03c7968 <main+0xa5c>)
d03c7782:	7013      	strb	r3, [r2, #0]
d03c7784:	e7dc      	b.n	d03c7740 <main+0x834>
d03c7786:	f1b9 0f00 	cmp.w	r9, #0
d03c778a:	d135      	bne.n	d03c77f8 <main+0x8ec>
d03c778c:	7823      	ldrb	r3, [r4, #0]
d03c778e:	f10d 013e 	add.w	r1, sp, #62	; 0x3e
d03c7792:	7862      	ldrb	r2, [r4, #1]
d03c7794:	a80f      	add	r0, sp, #60	; 0x3c
d03c7796:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c779a:	78a2      	ldrb	r2, [r4, #2]
d03c779c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c77a0:	78e2      	ldrb	r2, [r4, #3]
d03c77a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c77a6:	691b      	ldr	r3, [r3, #16]
d03c77a8:	4798      	blx	r3
d03c77aa:	7823      	ldrb	r3, [r4, #0]
d03c77ac:	7862      	ldrb	r2, [r4, #1]
d03c77ae:	4682      	mov	sl, r0
d03c77b0:	a914      	add	r1, sp, #80	; 0x50
d03c77b2:	a810      	add	r0, sp, #64	; 0x40
d03c77b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c77b8:	78a2      	ldrb	r2, [r4, #2]
d03c77ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c77be:	78e2      	ldrb	r2, [r4, #3]
d03c77c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c77c4:	699b      	ldr	r3, [r3, #24]
d03c77c6:	4798      	blx	r3
d03c77c8:	7823      	ldrb	r3, [r4, #0]
d03c77ca:	7862      	ldrb	r2, [r4, #1]
d03c77cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c77d0:	78a2      	ldrb	r2, [r4, #2]
d03c77d2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c77d6:	78e2      	ldrb	r2, [r4, #3]
d03c77d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c77dc:	69db      	ldr	r3, [r3, #28]
d03c77de:	4798      	blx	r3
d03c77e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
d03c77e2:	9e14      	ldr	r6, [sp, #80]	; 0x50
d03c77e4:	f1ba 0000 	subs.w	r0, sl, #0
d03c77e8:	441f      	add	r7, r3
d03c77ea:	442e      	add	r6, r5
d03c77ec:	bf18      	it	ne
d03c77ee:	2001      	movne	r0, #1
d03c77f0:	fa0f f887 	sxth.w	r8, r7
d03c77f4:	b236      	sxth	r6, r6
d03c77f6:	e744      	b.n	d03c7682 <main+0x776>
d03c77f8:	4682      	mov	sl, r0
d03c77fa:	e742      	b.n	d03c7682 <main+0x776>
d03c77fc:	4602      	mov	r2, r0
d03c77fe:	e756      	b.n	d03c76ae <main+0x7a2>
d03c7800:	464a      	mov	r2, r9
d03c7802:	e792      	b.n	d03c772a <main+0x81e>
d03c7804:	f8df a19c 	ldr.w	sl, [pc, #412]	; d03c79a4 <main+0xa98>
d03c7808:	b153      	cbz	r3, d03c7820 <main+0x914>
d03c780a:	4b52      	ldr	r3, [pc, #328]	; (d03c7954 <main+0xa48>)
d03c780c:	2500      	movs	r5, #0
d03c780e:	701d      	strb	r5, [r3, #0]
d03c7810:	f7fa f912 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c7814:	4855      	ldr	r0, [pc, #340]	; (d03c796c <main+0xa60>)
d03c7816:	f7f9 fde9 	bl	d03c13ec <ui_set_status>
d03c781a:	f88a 5000 	strb.w	r5, [sl]
d03c781e:	e78f      	b.n	d03c7740 <main+0x834>
d03c7820:	f89a 0000 	ldrb.w	r0, [sl]
d03c7824:	b320      	cbz	r0, d03c7870 <main+0x964>
d03c7826:	4a4b      	ldr	r2, [pc, #300]	; (d03c7954 <main+0xa48>)
d03c7828:	7013      	strb	r3, [r2, #0]
d03c782a:	4a51      	ldr	r2, [pc, #324]	; (d03c7970 <main+0xa64>)
d03c782c:	7013      	strb	r3, [r2, #0]
d03c782e:	4a51      	ldr	r2, [pc, #324]	; (d03c7974 <main+0xa68>)
d03c7830:	7013      	strb	r3, [r2, #0]
d03c7832:	2f00      	cmp	r7, #0
d03c7834:	d084      	beq.n	d03c7740 <main+0x834>
d03c7836:	4628      	mov	r0, r5
d03c7838:	f7fb faf2 	bl	d03c2e20 <ui_button_hit>
d03c783c:	b138      	cbz	r0, d03c784e <main+0x942>
d03c783e:	8800      	ldrh	r0, [r0, #0]
d03c7840:	f1a0 0328 	sub.w	r3, r0, #40	; 0x28
d03c7844:	2b01      	cmp	r3, #1
d03c7846:	d802      	bhi.n	d03c784e <main+0x942>
d03c7848:	f7fb fa3a 	bl	d03c2cc0 <ui_event_push.constprop.0>
d03c784c:	e778      	b.n	d03c7740 <main+0x834>
d03c784e:	3d60      	subs	r5, #96	; 0x60
d03c7850:	b2ad      	uxth	r5, r5
d03c7852:	f5b5 7f90 	cmp.w	r5, #288	; 0x120
d03c7856:	d204      	bcs.n	d03c7862 <main+0x956>
d03c7858:	3970      	subs	r1, #112	; 0x70
d03c785a:	b289      	uxth	r1, r1
d03c785c:	296b      	cmp	r1, #107	; 0x6b
d03c785e:	f67f af6f 	bls.w	d03c7740 <main+0x834>
d03c7862:	2300      	movs	r3, #0
d03c7864:	4844      	ldr	r0, [pc, #272]	; (d03c7978 <main+0xa6c>)
d03c7866:	f88a 3000 	strb.w	r3, [sl]
d03c786a:	f7f9 fdbf 	bl	d03c13ec <ui_set_status>
d03c786e:	e767      	b.n	d03c7740 <main+0x834>
d03c7870:	4842      	ldr	r0, [pc, #264]	; (d03c797c <main+0xa70>)
d03c7872:	fa5f fc82 	uxtb.w	ip, r2
d03c7876:	7800      	ldrb	r0, [r0, #0]
d03c7878:	b378      	cbz	r0, d03c78da <main+0x9ce>
d03c787a:	4836      	ldr	r0, [pc, #216]	; (d03c7954 <main+0xa48>)
d03c787c:	7003      	strb	r3, [r0, #0]
d03c787e:	483c      	ldr	r0, [pc, #240]	; (d03c7970 <main+0xa64>)
d03c7880:	f880 c000 	strb.w	ip, [r0]
d03c7884:	483b      	ldr	r0, [pc, #236]	; (d03c7974 <main+0xa68>)
d03c7886:	b1ef      	cbz	r7, d03c78c4 <main+0x9b8>
d03c7888:	7003      	strb	r3, [r0, #0]
d03c788a:	4628      	mov	r0, r5
d03c788c:	f7fb fac8 	bl	d03c2e20 <ui_button_hit>
d03c7890:	2800      	cmp	r0, #0
d03c7892:	f43f af55 	beq.w	d03c7740 <main+0x834>
d03c7896:	8803      	ldrh	r3, [r0, #0]
d03c7898:	f1a3 02b4 	sub.w	r2, r3, #180	; 0xb4
d03c789c:	2a06      	cmp	r2, #6
d03c789e:	d908      	bls.n	d03c78b2 <main+0x9a6>
d03c78a0:	f1a3 02dc 	sub.w	r2, r3, #220	; 0xdc
d03c78a4:	2a27      	cmp	r2, #39	; 0x27
d03c78a6:	d904      	bls.n	d03c78b2 <main+0x9a6>
d03c78a8:	f1a3 022a 	sub.w	r2, r3, #42	; 0x2a
d03c78ac:	2a12      	cmp	r2, #18
d03c78ae:	f63f af47 	bhi.w	d03c7740 <main+0x834>
d03c78b2:	b91f      	cbnz	r7, d03c78bc <main+0x9b0>
d03c78b4:	7a82      	ldrb	r2, [r0, #10]
d03c78b6:	2a00      	cmp	r2, #0
d03c78b8:	f43f af42 	beq.w	d03c7740 <main+0x834>
d03c78bc:	4618      	mov	r0, r3
d03c78be:	f7fb f9ff 	bl	d03c2cc0 <ui_event_push.constprop.0>
d03c78c2:	e73d      	b.n	d03c7740 <main+0x834>
d03c78c4:	b12a      	cbz	r2, d03c78d2 <main+0x9c6>
d03c78c6:	7803      	ldrb	r3, [r0, #0]
d03c78c8:	2b0e      	cmp	r3, #14
d03c78ca:	d8de      	bhi.n	d03c788a <main+0x97e>
d03c78cc:	3301      	adds	r3, #1
d03c78ce:	7003      	strb	r3, [r0, #0]
d03c78d0:	e736      	b.n	d03c7740 <main+0x834>
d03c78d2:	4b28      	ldr	r3, [pc, #160]	; (d03c7974 <main+0xa68>)
d03c78d4:	2200      	movs	r2, #0
d03c78d6:	701a      	strb	r2, [r3, #0]
d03c78d8:	e732      	b.n	d03c7740 <main+0x834>
d03c78da:	4823      	ldr	r0, [pc, #140]	; (d03c7968 <main+0xa5c>)
d03c78dc:	f890 a000 	ldrb.w	sl, [r0]
d03c78e0:	f1ba 0f05 	cmp.w	sl, #5
d03c78e4:	d160      	bne.n	d03c79a8 <main+0xa9c>
d03c78e6:	b1f7      	cbz	r7, d03c7926 <main+0xa1a>
d03c78e8:	f1a1 0040 	sub.w	r0, r1, #64	; 0x40
d03c78ec:	b280      	uxth	r0, r0
d03c78ee:	28bb      	cmp	r0, #187	; 0xbb
d03c78f0:	d819      	bhi.n	d03c7926 <main+0xa1a>
d03c78f2:	2201      	movs	r2, #1
d03c78f4:	4917      	ldr	r1, [pc, #92]	; (d03c7954 <main+0xa48>)
d03c78f6:	700a      	strb	r2, [r1, #0]
d03c78f8:	4a21      	ldr	r2, [pc, #132]	; (d03c7980 <main+0xa74>)
d03c78fa:	8015      	strh	r5, [r2, #0]
d03c78fc:	4a21      	ldr	r2, [pc, #132]	; (d03c7984 <main+0xa78>)
d03c78fe:	6811      	ldr	r1, [r2, #0]
d03c7900:	4a21      	ldr	r2, [pc, #132]	; (d03c7988 <main+0xa7c>)
d03c7902:	6011      	str	r1, [r2, #0]
d03c7904:	4a21      	ldr	r2, [pc, #132]	; (d03c798c <main+0xa80>)
d03c7906:	4922      	ldr	r1, [pc, #136]	; (d03c7990 <main+0xa84>)
d03c7908:	7812      	ldrb	r2, [r2, #0]
d03c790a:	7809      	ldrb	r1, [r1, #0]
d03c790c:	430a      	orrs	r2, r1
d03c790e:	4921      	ldr	r1, [pc, #132]	; (d03c7994 <main+0xa88>)
d03c7910:	7809      	ldrb	r1, [r1, #0]
d03c7912:	430a      	orrs	r2, r1
d03c7914:	d002      	beq.n	d03c791c <main+0xa10>
d03c7916:	4618      	mov	r0, r3
d03c7918:	f7fa f8be 	bl	d03c1a98 <seq_stop_transport>
d03c791c:	4b1e      	ldr	r3, [pc, #120]	; (d03c7998 <main+0xa8c>)
d03c791e:	681a      	ldr	r2, [r3, #0]
d03c7920:	4b1e      	ldr	r3, [pc, #120]	; (d03c799c <main+0xa90>)
d03c7922:	601a      	str	r2, [r3, #0]
d03c7924:	e70c      	b.n	d03c7740 <main+0x834>
d03c7926:	4b0b      	ldr	r3, [pc, #44]	; (d03c7954 <main+0xa48>)
d03c7928:	781b      	ldrb	r3, [r3, #0]
d03c792a:	2b00      	cmp	r3, #0
d03c792c:	d03e      	beq.n	d03c79ac <main+0xaa0>
d03c792e:	4628      	mov	r0, r5
d03c7930:	f1b9 0f00 	cmp.w	r9, #0
d03c7934:	d002      	beq.n	d03c793c <main+0xa30>
d03c7936:	f7fb fc45 	bl	d03c31c4 <seq_set_position_from_drag>
d03c793a:	e701      	b.n	d03c7740 <main+0x834>
d03c793c:	f7fb fc42 	bl	d03c31c4 <seq_set_position_from_drag>
d03c7940:	4b04      	ldr	r3, [pc, #16]	; (d03c7954 <main+0xa48>)
d03c7942:	f883 9000 	strb.w	r9, [r3]
d03c7946:	e6fb      	b.n	d03c7740 <main+0x834>
d03c7948:	d03ce31c 	.word	0xd03ce31c
d03c794c:	d03ce31b 	.word	0xd03ce31b
d03c7950:	d03cf394 	.word	0xd03cf394
d03c7954:	d03ccfc2 	.word	0xd03ccfc2
d03c7958:	d03cda77 	.word	0xd03cda77
d03c795c:	d03cda35 	.word	0xd03cda35
d03c7960:	d03cda76 	.word	0xd03cda76
d03c7964:	d03cda36 	.word	0xd03cda36
d03c7968:	d03cf330 	.word	0xd03cf330
d03c796c:	d03cbe41 	.word	0xd03cbe41
d03c7970:	d03cf391 	.word	0xd03cf391
d03c7974:	d03cf392 	.word	0xd03cf392
d03c7978:	d03cbe53 	.word	0xd03cbe53
d03c797c:	d03cda34 	.word	0xd03cda34
d03c7980:	d03ccfc0 	.word	0xd03ccfc0
d03c7984:	d03cd100 	.word	0xd03cd100
d03c7988:	d03ccfbc 	.word	0xd03ccfbc
d03c798c:	d03cd0fc 	.word	0xd03cd0fc
d03c7990:	d03cd105 	.word	0xd03cd105
d03c7994:	d03ccfb4 	.word	0xd03ccfb4
d03c7998:	d03ccfb0 	.word	0xd03ccfb0
d03c799c:	d03ccfc4 	.word	0xd03ccfc4
d03c79a0:	d03cf396 	.word	0xd03cf396
d03c79a4:	d03cda33 	.word	0xd03cda33
d03c79a8:	48c1      	ldr	r0, [pc, #772]	; (d03c7cb0 <main+0xda4>)
d03c79aa:	7003      	strb	r3, [r0, #0]
d03c79ac:	4bc1      	ldr	r3, [pc, #772]	; (d03c7cb4 <main+0xda8>)
d03c79ae:	48c2      	ldr	r0, [pc, #776]	; (d03c7cb8 <main+0xdac>)
d03c79b0:	f883 c000 	strb.w	ip, [r3]
d03c79b4:	b187      	cbz	r7, d03c79d8 <main+0xacc>
d03c79b6:	2300      	movs	r3, #0
d03c79b8:	7003      	strb	r3, [r0, #0]
d03c79ba:	4628      	mov	r0, r5
d03c79bc:	f7fb fa30 	bl	d03c2e20 <ui_button_hit>
d03c79c0:	4681      	mov	r9, r0
d03c79c2:	b190      	cbz	r0, d03c79ea <main+0xade>
d03c79c4:	b91f      	cbnz	r7, d03c79ce <main+0xac2>
d03c79c6:	7a83      	ldrb	r3, [r0, #10]
d03c79c8:	2b00      	cmp	r3, #0
d03c79ca:	f43f aeb9 	beq.w	d03c7740 <main+0x834>
d03c79ce:	f8b9 0000 	ldrh.w	r0, [r9]
d03c79d2:	f7fb f975 	bl	d03c2cc0 <ui_event_push.constprop.0>
d03c79d6:	e6b3      	b.n	d03c7740 <main+0x834>
d03c79d8:	2a00      	cmp	r2, #0
d03c79da:	f43f af7a 	beq.w	d03c78d2 <main+0x9c6>
d03c79de:	7803      	ldrb	r3, [r0, #0]
d03c79e0:	2b0e      	cmp	r3, #14
d03c79e2:	d8ea      	bhi.n	d03c79ba <main+0xaae>
d03c79e4:	3301      	adds	r3, #1
d03c79e6:	7003      	strb	r3, [r0, #0]
d03c79e8:	e6aa      	b.n	d03c7740 <main+0x834>
d03c79ea:	2f00      	cmp	r7, #0
d03c79ec:	f43f aea8 	beq.w	d03c7740 <main+0x834>
d03c79f0:	f1ba 0f01 	cmp.w	sl, #1
d03c79f4:	d037      	beq.n	d03c7a66 <main+0xb5a>
d03c79f6:	f1ba 0f04 	cmp.w	sl, #4
d03c79fa:	f47f aea1 	bne.w	d03c7740 <main+0x834>
d03c79fe:	4baf      	ldr	r3, [pc, #700]	; (d03c7cbc <main+0xdb0>)
d03c7a00:	781b      	ldrb	r3, [r3, #0]
d03c7a02:	2b00      	cmp	r3, #0
d03c7a04:	f43f ae9c 	beq.w	d03c7740 <main+0x834>
d03c7a08:	4bad      	ldr	r3, [pc, #692]	; (d03c7cc0 <main+0xdb4>)
d03c7a0a:	4aae      	ldr	r2, [pc, #696]	; (d03c7cc4 <main+0xdb8>)
d03c7a0c:	781b      	ldrb	r3, [r3, #0]
d03c7a0e:	5cd3      	ldrb	r3, [r2, r3]
d03c7a10:	4aad      	ldr	r2, [pc, #692]	; (d03c7cc8 <main+0xdbc>)
d03c7a12:	7810      	ldrb	r0, [r2, #0]
d03c7a14:	4298      	cmp	r0, r3
d03c7a16:	f47f ae93 	bne.w	d03c7740 <main+0x834>
d03c7a1a:	3d1e      	subs	r5, #30
d03c7a1c:	b2ad      	uxth	r5, r5
d03c7a1e:	2db3      	cmp	r5, #179	; 0xb3
d03c7a20:	f63f ae8e 	bhi.w	d03c7740 <main+0x834>
d03c7a24:	3e86      	subs	r6, #134	; 0x86
d03c7a26:	b2b6      	uxth	r6, r6
d03c7a28:	2e7f      	cmp	r6, #127	; 0x7f
d03c7a2a:	f63f ae89 	bhi.w	d03c7740 <main+0x834>
d03c7a2e:	4ba7      	ldr	r3, [pc, #668]	; (d03c7ccc <main+0xdc0>)
d03c7a30:	3986      	subs	r1, #134	; 0x86
d03c7a32:	781d      	ldrb	r5, [r3, #0]
d03c7a34:	eb05 1121 	add.w	r1, r5, r1, asr #4
d03c7a38:	b2cd      	uxtb	r5, r1
d03c7a3a:	f7f9 fa27 	bl	d03c0e8c <vm_program_length>
d03c7a3e:	4285      	cmp	r5, r0
d03c7a40:	f4bf ae7e 	bcs.w	d03c7740 <main+0x834>
d03c7a44:	4ba2      	ldr	r3, [pc, #648]	; (d03c7cd0 <main+0xdc4>)
d03c7a46:	701d      	strb	r5, [r3, #0]
d03c7a48:	2501      	movs	r5, #1
d03c7a4a:	4ba2      	ldr	r3, [pc, #648]	; (d03c7cd4 <main+0xdc8>)
d03c7a4c:	f883 9000 	strb.w	r9, [r3]
d03c7a50:	4ba1      	ldr	r3, [pc, #644]	; (d03c7cd8 <main+0xdcc>)
d03c7a52:	701d      	strb	r5, [r3, #0]
d03c7a54:	f7fa f9b8 	bl	d03c1dc8 <ui_vm_editor_clamp_selection>
d03c7a58:	f1b8 0f9d 	cmp.w	r8, #157	; 0x9d
d03c7a5c:	dd24      	ble.n	d03c7aa8 <main+0xb9c>
d03c7a5e:	4b9f      	ldr	r3, [pc, #636]	; (d03c7cdc <main+0xdd0>)
d03c7a60:	2202      	movs	r2, #2
d03c7a62:	701a      	strb	r2, [r3, #0]
d03c7a64:	e66c      	b.n	d03c7740 <main+0x834>
d03c7a66:	3d18      	subs	r5, #24
d03c7a68:	2024      	movs	r0, #36	; 0x24
d03c7a6a:	b2ad      	uxth	r5, r5
d03c7a6c:	f5b5 7fd2 	cmp.w	r5, #420	; 0x1a4
d03c7a70:	fa5f f289 	uxtb.w	r2, r9
d03c7a74:	d20b      	bcs.n	d03c7a8e <main+0xb82>
d03c7a76:	eb09 03c9 	add.w	r3, r9, r9, lsl #3
d03c7a7a:	009b      	lsls	r3, r3, #2
d03c7a7c:	3377      	adds	r3, #119	; 0x77
d03c7a7e:	b21b      	sxth	r3, r3
d03c7a80:	4299      	cmp	r1, r3
d03c7a82:	db04      	blt.n	d03c7a8e <main+0xb82>
d03c7a84:	fb00 f309 	mul.w	r3, r0, r9
d03c7a88:	3397      	adds	r3, #151	; 0x97
d03c7a8a:	4299      	cmp	r1, r3
d03c7a8c:	db05      	blt.n	d03c7a9a <main+0xb8e>
d03c7a8e:	f109 0901 	add.w	r9, r9, #1
d03c7a92:	f1b9 0f04 	cmp.w	r9, #4
d03c7a96:	d1e9      	bne.n	d03c7a6c <main+0xb60>
d03c7a98:	e652      	b.n	d03c7740 <main+0x834>
d03c7a9a:	4b91      	ldr	r3, [pc, #580]	; (d03c7ce0 <main+0xdd4>)
d03c7a9c:	781b      	ldrb	r3, [r3, #0]
d03c7a9e:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d03c7aa2:	4b87      	ldr	r3, [pc, #540]	; (d03c7cc0 <main+0xdb4>)
d03c7aa4:	701a      	strb	r2, [r3, #0]
d03c7aa6:	e64b      	b.n	d03c7740 <main+0x834>
d03c7aa8:	f1b8 0f85 	cmp.w	r8, #133	; 0x85
d03c7aac:	dd02      	ble.n	d03c7ab4 <main+0xba8>
d03c7aae:	4b8b      	ldr	r3, [pc, #556]	; (d03c7cdc <main+0xdd0>)
d03c7ab0:	701d      	strb	r5, [r3, #0]
d03c7ab2:	e645      	b.n	d03c7740 <main+0x834>
d03c7ab4:	f1b8 0f3d 	cmp.w	r8, #61	; 0x3d
d03c7ab8:	f77f ae42 	ble.w	d03c7740 <main+0x834>
d03c7abc:	4b87      	ldr	r3, [pc, #540]	; (d03c7cdc <main+0xdd0>)
d03c7abe:	2200      	movs	r2, #0
d03c7ac0:	701a      	strb	r2, [r3, #0]
d03c7ac2:	e63d      	b.n	d03c7740 <main+0x834>
d03c7ac4:	f1a0 0364 	sub.w	r3, r0, #100	; 0x64
d03c7ac8:	b29a      	uxth	r2, r3
d03c7aca:	2a03      	cmp	r2, #3
d03c7acc:	d802      	bhi.n	d03c7ad4 <main+0xbc8>
d03c7ace:	4a84      	ldr	r2, [pc, #528]	; (d03c7ce0 <main+0xdd4>)
d03c7ad0:	7013      	strb	r3, [r2, #0]
d03c7ad2:	e635      	b.n	d03c7740 <main+0x834>
d03c7ad4:	f1a0 0378 	sub.w	r3, r0, #120	; 0x78
d03c7ad8:	2b03      	cmp	r3, #3
d03c7ada:	d80c      	bhi.n	d03c7af6 <main+0xbea>
d03c7adc:	4b80      	ldr	r3, [pc, #512]	; (d03c7ce0 <main+0xdd4>)
d03c7ade:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7ae2:	781b      	ldrb	r3, [r3, #0]
d03c7ae4:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03c7ae8:	4b75      	ldr	r3, [pc, #468]	; (d03c7cc0 <main+0xdb4>)
d03c7aea:	3878      	subs	r0, #120	; 0x78
d03c7aec:	b2c0      	uxtb	r0, r0
d03c7aee:	7018      	strb	r0, [r3, #0]
d03c7af0:	f7fa fc1e 	bl	d03c2330 <ui_select_program_delta>
d03c7af4:	e624      	b.n	d03c7740 <main+0x834>
d03c7af6:	f1a0 038c 	sub.w	r3, r0, #140	; 0x8c
d03c7afa:	2b03      	cmp	r3, #3
d03c7afc:	d80a      	bhi.n	d03c7b14 <main+0xc08>
d03c7afe:	4b78      	ldr	r3, [pc, #480]	; (d03c7ce0 <main+0xdd4>)
d03c7b00:	781b      	ldrb	r3, [r3, #0]
d03c7b02:	eb00 0083 	add.w	r0, r0, r3, lsl #2
d03c7b06:	4b6e      	ldr	r3, [pc, #440]	; (d03c7cc0 <main+0xdb4>)
d03c7b08:	3074      	adds	r0, #116	; 0x74
d03c7b0a:	b2c0      	uxtb	r0, r0
d03c7b0c:	7018      	strb	r0, [r3, #0]
d03c7b0e:	f7fa fc0f 	bl	d03c2330 <ui_select_program_delta>
d03c7b12:	e615      	b.n	d03c7740 <main+0x834>
d03c7b14:	f1a0 03b4 	sub.w	r3, r0, #180	; 0xb4
d03c7b18:	2b06      	cmp	r3, #6
d03c7b1a:	d80e      	bhi.n	d03c7b3a <main+0xc2e>
d03c7b1c:	4b71      	ldr	r3, [pc, #452]	; (d03c7ce4 <main+0xdd8>)
d03c7b1e:	781b      	ldrb	r3, [r3, #0]
d03c7b20:	334c      	adds	r3, #76	; 0x4c
d03c7b22:	4418      	add	r0, r3
d03c7b24:	4b70      	ldr	r3, [pc, #448]	; (d03c7ce8 <main+0xddc>)
d03c7b26:	b2c0      	uxtb	r0, r0
d03c7b28:	781b      	ldrb	r3, [r3, #0]
d03c7b2a:	4283      	cmp	r3, r0
d03c7b2c:	f67f ae08 	bls.w	d03c7740 <main+0x834>
d03c7b30:	4b6e      	ldr	r3, [pc, #440]	; (d03c7cec <main+0xde0>)
d03c7b32:	7018      	strb	r0, [r3, #0]
d03c7b34:	4b6e      	ldr	r3, [pc, #440]	; (d03c7cf0 <main+0xde4>)
d03c7b36:	7019      	strb	r1, [r3, #0]
d03c7b38:	e602      	b.n	d03c7740 <main+0x834>
d03c7b3a:	f1a0 03dc 	sub.w	r3, r0, #220	; 0xdc
d03c7b3e:	2b27      	cmp	r3, #39	; 0x27
d03c7b40:	d827      	bhi.n	d03c7b92 <main+0xc86>
d03c7b42:	3024      	adds	r0, #36	; 0x24
d03c7b44:	b2c5      	uxtb	r5, r0
d03c7b46:	2d27      	cmp	r5, #39	; 0x27
d03c7b48:	f43f adfa 	beq.w	d03c7740 <main+0x834>
d03c7b4c:	4869      	ldr	r0, [pc, #420]	; (d03c7cf4 <main+0xde8>)
d03c7b4e:	f002 fa7f 	bl	d03ca050 <strlen>
d03c7b52:	281a      	cmp	r0, #26
d03c7b54:	f63f adf4 	bhi.w	d03c7740 <main+0x834>
d03c7b58:	4b67      	ldr	r3, [pc, #412]	; (d03c7cf8 <main+0xdec>)
d03c7b5a:	b2c2      	uxtb	r2, r0
d03c7b5c:	b200      	sxth	r0, r0
d03c7b5e:	5d5d      	ldrb	r5, [r3, r5]
d03c7b60:	4b66      	ldr	r3, [pc, #408]	; (d03c7cfc <main+0xdf0>)
d03c7b62:	7819      	ldrb	r1, [r3, #0]
d03c7b64:	4291      	cmp	r1, r2
d03c7b66:	4963      	ldr	r1, [pc, #396]	; (d03c7cf4 <main+0xde8>)
d03c7b68:	bf88      	it	hi
d03c7b6a:	701a      	strbhi	r2, [r3, #0]
d03c7b6c:	781a      	ldrb	r2, [r3, #0]
d03c7b6e:	4290      	cmp	r0, r2
d03c7b70:	da09      	bge.n	d03c7b86 <main+0xc7a>
d03c7b72:	1c50      	adds	r0, r2, #1
d03c7b74:	548d      	strb	r5, [r1, r2]
d03c7b76:	2200      	movs	r2, #0
d03c7b78:	7018      	strb	r0, [r3, #0]
d03c7b7a:	4b56      	ldr	r3, [pc, #344]	; (d03c7cd4 <main+0xdc8>)
d03c7b7c:	701a      	strb	r2, [r3, #0]
d03c7b7e:	2201      	movs	r2, #1
d03c7b80:	4b55      	ldr	r3, [pc, #340]	; (d03c7cd8 <main+0xdcc>)
d03c7b82:	701a      	strb	r2, [r3, #0]
d03c7b84:	e5dc      	b.n	d03c7740 <main+0x834>
d03c7b86:	5c0f      	ldrb	r7, [r1, r0]
d03c7b88:	180e      	adds	r6, r1, r0
d03c7b8a:	3801      	subs	r0, #1
d03c7b8c:	7077      	strb	r7, [r6, #1]
d03c7b8e:	b200      	sxth	r0, r0
d03c7b90:	e7ed      	b.n	d03c7b6e <main+0xc62>
d03c7b92:	3807      	subs	r0, #7
d03c7b94:	2840      	cmp	r0, #64	; 0x40
d03c7b96:	f63f add3 	bhi.w	d03c7740 <main+0x834>
d03c7b9a:	a301      	add	r3, pc, #4	; (adr r3, d03c7ba0 <main+0xc94>)
d03c7b9c:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
d03c7ba0:	d03c7ca5 	.word	0xd03c7ca5
d03c7ba4:	d03c7d05 	.word	0xd03c7d05
d03c7ba8:	d03c7d39 	.word	0xd03c7d39
d03c7bac:	d03c7d59 	.word	0xd03c7d59
d03c7bb0:	d03c7d67 	.word	0xd03c7d67
d03c7bb4:	d03c7d73 	.word	0xd03c7d73
d03c7bb8:	d03c7d81 	.word	0xd03c7d81
d03c7bbc:	d03c7d73 	.word	0xd03c7d73
d03c7bc0:	d03c7d81 	.word	0xd03c7d81
d03c7bc4:	d03c7d8f 	.word	0xd03c7d8f
d03c7bc8:	d03c7dab 	.word	0xd03c7dab
d03c7bcc:	d03c7dc9 	.word	0xd03c7dc9
d03c7bd0:	d03c7de5 	.word	0xd03c7de5
d03c7bd4:	d03c7e03 	.word	0xd03c7e03
d03c7bd8:	d03c7e17 	.word	0xd03c7e17
d03c7bdc:	d03c7e37 	.word	0xd03c7e37
d03c7be0:	d03c7e57 	.word	0xd03c7e57
d03c7be4:	d03c7e6f 	.word	0xd03c7e6f
d03c7be8:	d03c7e85 	.word	0xd03c7e85
d03c7bec:	d03c7e8f 	.word	0xd03c7e8f
d03c7bf0:	d03c7f6f 	.word	0xd03c7f6f
d03c7bf4:	d03c7f79 	.word	0xd03c7f79
d03c7bf8:	d03c7f83 	.word	0xd03c7f83
d03c7bfc:	d03c7741 	.word	0xd03c7741
d03c7c00:	d03c7741 	.word	0xd03c7741
d03c7c04:	d03c7fab 	.word	0xd03c7fab
d03c7c08:	d03c7fb5 	.word	0xd03c7fb5
d03c7c0c:	d03c7fc1 	.word	0xd03c7fc1
d03c7c10:	d03c7fcd 	.word	0xd03c7fcd
d03c7c14:	d03c7fd9 	.word	0xd03c7fd9
d03c7c18:	d03c7fe5 	.word	0xd03c7fe5
d03c7c1c:	d03c7ff1 	.word	0xd03c7ff1
d03c7c20:	d03c807d 	.word	0xd03c807d
d03c7c24:	d03c8087 	.word	0xd03c8087
d03c7c28:	d03c8179 	.word	0xd03c8179
d03c7c2c:	d03c8189 	.word	0xd03c8189
d03c7c30:	d03c819b 	.word	0xd03c819b
d03c7c34:	d03c81b3 	.word	0xd03c81b3
d03c7c38:	d03c823f 	.word	0xd03c823f
d03c7c3c:	d03c8249 	.word	0xd03c8249
d03c7c40:	d03c8253 	.word	0xd03c8253
d03c7c44:	d03c825d 	.word	0xd03c825d
d03c7c48:	d03c8267 	.word	0xd03c8267
d03c7c4c:	d03c8277 	.word	0xd03c8277
d03c7c50:	d03c82c5 	.word	0xd03c82c5
d03c7c54:	d03c82d1 	.word	0xd03c82d1
d03c7c58:	d03c82db 	.word	0xd03c82db
d03c7c5c:	d03c82f3 	.word	0xd03c82f3
d03c7c60:	d03c82fd 	.word	0xd03c82fd
d03c7c64:	d03c8307 	.word	0xd03c8307
d03c7c68:	d03c8311 	.word	0xd03c8311
d03c7c6c:	d03c831b 	.word	0xd03c831b
d03c7c70:	d03c832b 	.word	0xd03c832b
d03c7c74:	d03c8447 	.word	0xd03c8447
d03c7c78:	d03c8457 	.word	0xd03c8457
d03c7c7c:	d03c8497 	.word	0xd03c8497
d03c7c80:	d03c8505 	.word	0xd03c8505
d03c7c84:	d03c8559 	.word	0xd03c8559
d03c7c88:	d03c8589 	.word	0xd03c8589
d03c7c8c:	d03c8599 	.word	0xd03c8599
d03c7c90:	d03c85a9 	.word	0xd03c85a9
d03c7c94:	d03c85bf 	.word	0xd03c85bf
d03c7c98:	d03c85d7 	.word	0xd03c85d7
d03c7c9c:	d03c85ef 	.word	0xd03c85ef
d03c7ca0:	d03c85f9 	.word	0xd03c85f9
d03c7ca4:	f7f9 fec8 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c7ca8:	4815      	ldr	r0, [pc, #84]	; (d03c7d00 <main+0xdf4>)
d03c7caa:	f7f9 fb9f 	bl	d03c13ec <ui_set_status>
d03c7cae:	e547      	b.n	d03c7740 <main+0x834>
d03c7cb0:	d03ccfc2 	.word	0xd03ccfc2
d03c7cb4:	d03cf391 	.word	0xd03cf391
d03c7cb8:	d03cf392 	.word	0xd03cf392
d03c7cbc:	d03cf583 	.word	0xd03cf583
d03c7cc0:	d03cf3ca 	.word	0xd03cf3ca
d03c7cc4:	d03ccd64 	.word	0xd03ccd64
d03c7cc8:	d03cf588 	.word	0xd03cf588
d03c7ccc:	d03cf591 	.word	0xd03cf591
d03c7cd0:	d03cf589 	.word	0xd03cf589
d03c7cd4:	d03cf58b 	.word	0xd03cf58b
d03c7cd8:	d03cf58a 	.word	0xd03cf58a
d03c7cdc:	d03cf582 	.word	0xd03cf582
d03c7ce0:	d03cda32 	.word	0xd03cda32
d03c7ce4:	d03ce319 	.word	0xd03ce319
d03c7ce8:	d03cda78 	.word	0xd03cda78
d03c7cec:	d03ce31a 	.word	0xd03ce31a
d03c7cf0:	d03cd140 	.word	0xd03cd140
d03c7cf4:	d03cf3aa 	.word	0xd03cf3aa
d03c7cf8:	d03cc560 	.word	0xd03cc560
d03c7cfc:	d03cf3a8 	.word	0xd03cf3a8
d03c7d00:	d03cbe64 	.word	0xd03cbe64
d03c7d04:	f7fa fada 	bl	d03c22bc <ui_project_ensure_dir>
d03c7d08:	2800      	cmp	r0, #0
d03c7d0a:	f43f ad19 	beq.w	d03c7740 <main+0x834>
d03c7d0e:	49bb      	ldr	r1, [pc, #748]	; (d03c7ffc <main+0x10f0>)
d03c7d10:	2502      	movs	r5, #2
d03c7d12:	48bb      	ldr	r0, [pc, #748]	; (d03c8000 <main+0x10f4>)
d03c7d14:	f002 f994 	bl	d03ca040 <strcpy>
d03c7d18:	4bba      	ldr	r3, [pc, #744]	; (d03c8004 <main+0x10f8>)
d03c7d1a:	48b9      	ldr	r0, [pc, #740]	; (d03c8000 <main+0x10f4>)
d03c7d1c:	701d      	strb	r5, [r3, #0]
d03c7d1e:	f002 f997 	bl	d03ca050 <strlen>
d03c7d22:	4bb9      	ldr	r3, [pc, #740]	; (d03c8008 <main+0x10fc>)
d03c7d24:	2200      	movs	r2, #0
d03c7d26:	7018      	strb	r0, [r3, #0]
d03c7d28:	4bb8      	ldr	r3, [pc, #736]	; (d03c800c <main+0x1100>)
d03c7d2a:	701a      	strb	r2, [r3, #0]
d03c7d2c:	2201      	movs	r2, #1
d03c7d2e:	4bb8      	ldr	r3, [pc, #736]	; (d03c8010 <main+0x1104>)
d03c7d30:	701d      	strb	r5, [r3, #0]
d03c7d32:	4bb8      	ldr	r3, [pc, #736]	; (d03c8014 <main+0x1108>)
d03c7d34:	701a      	strb	r2, [r3, #0]
d03c7d36:	e503      	b.n	d03c7740 <main+0x834>
d03c7d38:	f7fa fac0 	bl	d03c22bc <ui_project_ensure_dir>
d03c7d3c:	48b6      	ldr	r0, [pc, #728]	; (d03c8018 <main+0x110c>)
d03c7d3e:	7803      	ldrb	r3, [r0, #0]
d03c7d40:	b913      	cbnz	r3, d03c7d48 <main+0xe3c>
d03c7d42:	49b6      	ldr	r1, [pc, #728]	; (d03c801c <main+0x1110>)
d03c7d44:	f002 f97c 	bl	d03ca040 <strcpy>
d03c7d48:	f7fb faa6 	bl	d03c3298 <ui_file_refresh>
d03c7d4c:	2301      	movs	r3, #1
d03c7d4e:	4ab0      	ldr	r2, [pc, #704]	; (d03c8010 <main+0x1104>)
d03c7d50:	7013      	strb	r3, [r2, #0]
d03c7d52:	4ab0      	ldr	r2, [pc, #704]	; (d03c8014 <main+0x1108>)
d03c7d54:	7013      	strb	r3, [r2, #0]
d03c7d56:	e4f3      	b.n	d03c7740 <main+0x834>
d03c7d58:	4bb1      	ldr	r3, [pc, #708]	; (d03c8020 <main+0x1114>)
d03c7d5a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7d5e:	7818      	ldrb	r0, [r3, #0]
d03c7d60:	f7fa fae6 	bl	d03c2330 <ui_select_program_delta>
d03c7d64:	e4ec      	b.n	d03c7740 <main+0x834>
d03c7d66:	4bae      	ldr	r3, [pc, #696]	; (d03c8020 <main+0x1114>)
d03c7d68:	2101      	movs	r1, #1
d03c7d6a:	7818      	ldrb	r0, [r3, #0]
d03c7d6c:	f7fa fae0 	bl	d03c2330 <ui_select_program_delta>
d03c7d70:	e4e6      	b.n	d03c7740 <main+0x834>
d03c7d72:	4bac      	ldr	r3, [pc, #688]	; (d03c8024 <main+0x1118>)
d03c7d74:	8818      	ldrh	r0, [r3, #0]
d03c7d76:	380a      	subs	r0, #10
d03c7d78:	b200      	sxth	r0, r0
d03c7d7a:	f7f9 fd2b 	bl	d03c17d4 <midi_set_global_gain>
d03c7d7e:	e4df      	b.n	d03c7740 <main+0x834>
d03c7d80:	4ba8      	ldr	r3, [pc, #672]	; (d03c8024 <main+0x1118>)
d03c7d82:	8818      	ldrh	r0, [r3, #0]
d03c7d84:	300a      	adds	r0, #10
d03c7d86:	b200      	sxth	r0, r0
d03c7d88:	f7f9 fd24 	bl	d03c17d4 <midi_set_global_gain>
d03c7d8c:	e4d8      	b.n	d03c7740 <main+0x834>
d03c7d8e:	4ba4      	ldr	r3, [pc, #656]	; (d03c8020 <main+0x1114>)
d03c7d90:	7818      	ldrb	r0, [r3, #0]
d03c7d92:	280f      	cmp	r0, #15
d03c7d94:	f63f acd4 	bhi.w	d03c7740 <main+0x834>
d03c7d98:	4aa3      	ldr	r2, [pc, #652]	; (d03c8028 <main+0x111c>)
d03c7d9a:	5c13      	ldrb	r3, [r2, r0]
d03c7d9c:	3b08      	subs	r3, #8
d03c7d9e:	f383 0307 	usat	r3, #7, r3
d03c7da2:	5413      	strb	r3, [r2, r0]
d03c7da4:	f7f9 fce6 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7da8:	e4ca      	b.n	d03c7740 <main+0x834>
d03c7daa:	4b9d      	ldr	r3, [pc, #628]	; (d03c8020 <main+0x1114>)
d03c7dac:	7818      	ldrb	r0, [r3, #0]
d03c7dae:	280f      	cmp	r0, #15
d03c7db0:	f63f acc6 	bhi.w	d03c7740 <main+0x834>
d03c7db4:	4a9c      	ldr	r2, [pc, #624]	; (d03c8028 <main+0x111c>)
d03c7db6:	5c13      	ldrb	r3, [r2, r0]
d03c7db8:	3308      	adds	r3, #8
d03c7dba:	2b7f      	cmp	r3, #127	; 0x7f
d03c7dbc:	bfa8      	it	ge
d03c7dbe:	237f      	movge	r3, #127	; 0x7f
d03c7dc0:	5413      	strb	r3, [r2, r0]
d03c7dc2:	f7f9 fcd7 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7dc6:	e4bb      	b.n	d03c7740 <main+0x834>
d03c7dc8:	4b95      	ldr	r3, [pc, #596]	; (d03c8020 <main+0x1114>)
d03c7dca:	7818      	ldrb	r0, [r3, #0]
d03c7dcc:	280f      	cmp	r0, #15
d03c7dce:	f63f acb7 	bhi.w	d03c7740 <main+0x834>
d03c7dd2:	4a96      	ldr	r2, [pc, #600]	; (d03c802c <main+0x1120>)
d03c7dd4:	5c13      	ldrb	r3, [r2, r0]
d03c7dd6:	3b08      	subs	r3, #8
d03c7dd8:	f383 0307 	usat	r3, #7, r3
d03c7ddc:	5413      	strb	r3, [r2, r0]
d03c7dde:	f7f9 fcc9 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7de2:	e4ad      	b.n	d03c7740 <main+0x834>
d03c7de4:	4b8e      	ldr	r3, [pc, #568]	; (d03c8020 <main+0x1114>)
d03c7de6:	7818      	ldrb	r0, [r3, #0]
d03c7de8:	280f      	cmp	r0, #15
d03c7dea:	f63f aca9 	bhi.w	d03c7740 <main+0x834>
d03c7dee:	4a8f      	ldr	r2, [pc, #572]	; (d03c802c <main+0x1120>)
d03c7df0:	5c13      	ldrb	r3, [r2, r0]
d03c7df2:	3308      	adds	r3, #8
d03c7df4:	2b7f      	cmp	r3, #127	; 0x7f
d03c7df6:	bfa8      	it	ge
d03c7df8:	237f      	movge	r3, #127	; 0x7f
d03c7dfa:	5413      	strb	r3, [r2, r0]
d03c7dfc:	f7f9 fcba 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7e00:	e49e      	b.n	d03c7740 <main+0x834>
d03c7e02:	4a8b      	ldr	r2, [pc, #556]	; (d03c8030 <main+0x1124>)
d03c7e04:	2009      	movs	r0, #9
d03c7e06:	7813      	ldrb	r3, [r2, #0]
d03c7e08:	fab3 f383 	clz	r3, r3
d03c7e0c:	095b      	lsrs	r3, r3, #5
d03c7e0e:	7013      	strb	r3, [r2, #0]
d03c7e10:	f7f9 fc52 	bl	d03c16b8 <sid_midi_all_notes_off_event>
d03c7e14:	e494      	b.n	d03c7740 <main+0x834>
d03c7e16:	4a87      	ldr	r2, [pc, #540]	; (d03c8034 <main+0x1128>)
d03c7e18:	2009      	movs	r0, #9
d03c7e1a:	8813      	ldrh	r3, [r2, #0]
d03c7e1c:	3b0a      	subs	r3, #10
d03c7e1e:	b21b      	sxth	r3, r3
d03c7e20:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03c7e24:	bfa8      	it	ge
d03c7e26:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03c7e2a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03c7e2e:	8013      	strh	r3, [r2, #0]
d03c7e30:	f7f9 fca0 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7e34:	e484      	b.n	d03c7740 <main+0x834>
d03c7e36:	4a7f      	ldr	r2, [pc, #508]	; (d03c8034 <main+0x1128>)
d03c7e38:	2009      	movs	r0, #9
d03c7e3a:	8813      	ldrh	r3, [r2, #0]
d03c7e3c:	330a      	adds	r3, #10
d03c7e3e:	b21b      	sxth	r3, r3
d03c7e40:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d03c7e44:	bfa8      	it	ge
d03c7e46:	f44f 7396 	movge.w	r3, #300	; 0x12c
d03c7e4a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d03c7e4e:	8013      	strh	r3, [r2, #0]
d03c7e50:	f7f9 fc90 	bl	d03c1774 <midi_update_active_channel_volume>
d03c7e54:	e474      	b.n	d03c7740 <main+0x834>
d03c7e56:	4b72      	ldr	r3, [pc, #456]	; (d03c8020 <main+0x1114>)
d03c7e58:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d03c7e5c:	7818      	ldrb	r0, [r3, #0]
d03c7e5e:	f7fa fa67 	bl	d03c2330 <ui_select_program_delta>
d03c7e62:	4b75      	ldr	r3, [pc, #468]	; (d03c8038 <main+0x112c>)
d03c7e64:	2200      	movs	r2, #0
d03c7e66:	701a      	strb	r2, [r3, #0]
d03c7e68:	f7f9 f826 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c7e6c:	e468      	b.n	d03c7740 <main+0x834>
d03c7e6e:	4b6c      	ldr	r3, [pc, #432]	; (d03c8020 <main+0x1114>)
d03c7e70:	2101      	movs	r1, #1
d03c7e72:	7818      	ldrb	r0, [r3, #0]
d03c7e74:	f7fa fa5c 	bl	d03c2330 <ui_select_program_delta>
d03c7e78:	4b6f      	ldr	r3, [pc, #444]	; (d03c8038 <main+0x112c>)
d03c7e7a:	2200      	movs	r2, #0
d03c7e7c:	701a      	strb	r2, [r3, #0]
d03c7e7e:	f7f9 f81b 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c7e82:	e45d      	b.n	d03c7740 <main+0x834>
d03c7e84:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c7e88:	f7f9 f830 	bl	d03c0eec <ui_scroll_vm>
d03c7e8c:	e458      	b.n	d03c7740 <main+0x834>
d03c7e8e:	4b64      	ldr	r3, [pc, #400]	; (d03c8020 <main+0x1114>)
d03c7e90:	4a6a      	ldr	r2, [pc, #424]	; (d03c803c <main+0x1130>)
d03c7e92:	781b      	ldrb	r3, [r3, #0]
d03c7e94:	f8df 91a0 	ldr.w	r9, [pc, #416]	; d03c8038 <main+0x112c>
d03c7e98:	5cd5      	ldrb	r5, [r2, r3]
d03c7e9a:	f899 3000 	ldrb.w	r3, [r9]
d03c7e9e:	b153      	cbz	r3, d03c7eb6 <main+0xfaa>
d03c7ea0:	4b67      	ldr	r3, [pc, #412]	; (d03c8040 <main+0x1134>)
d03c7ea2:	781b      	ldrb	r3, [r3, #0]
d03c7ea4:	42ab      	cmp	r3, r5
d03c7ea6:	d106      	bne.n	d03c7eb6 <main+0xfaa>
d03c7ea8:	2300      	movs	r3, #0
d03c7eaa:	4866      	ldr	r0, [pc, #408]	; (d03c8044 <main+0x1138>)
d03c7eac:	f889 3000 	strb.w	r3, [r9]
d03c7eb0:	f7f9 fa9c 	bl	d03c13ec <ui_set_status>
d03c7eb4:	e444      	b.n	d03c7740 <main+0x834>
d03c7eb6:	0629      	lsls	r1, r5, #24
d03c7eb8:	d503      	bpl.n	d03c7ec2 <main+0xfb6>
d03c7eba:	4863      	ldr	r0, [pc, #396]	; (d03c8048 <main+0x113c>)
d03c7ebc:	f7f9 fa96 	bl	d03c13ec <ui_set_status>
d03c7ec0:	e43e      	b.n	d03c7740 <main+0x834>
d03c7ec2:	f8df 81b4 	ldr.w	r8, [pc, #436]	; d03c8078 <main+0x116c>
d03c7ec6:	f858 3025 	ldr.w	r3, [r8, r5, lsl #2]
d03c7eca:	b91b      	cbnz	r3, d03c7ed4 <main+0xfc8>
d03c7ecc:	485f      	ldr	r0, [pc, #380]	; (d03c804c <main+0x1140>)
d03c7ece:	f7f9 fa8d 	bl	d03c13ec <ui_set_status>
d03c7ed2:	e435      	b.n	d03c7740 <main+0x834>
d03c7ed4:	4a5a      	ldr	r2, [pc, #360]	; (d03c8040 <main+0x1134>)
d03c7ed6:	7812      	ldrb	r2, [r2, #0]
d03c7ed8:	4295      	cmp	r5, r2
d03c7eda:	d039      	beq.n	d03c7f50 <main+0x1044>
d03c7edc:	2aff      	cmp	r2, #255	; 0xff
d03c7ede:	495c      	ldr	r1, [pc, #368]	; (d03c8050 <main+0x1144>)
d03c7ee0:	d007      	beq.n	d03c7ef2 <main+0xfe6>
d03c7ee2:	f858 0022 	ldr.w	r0, [r8, r2, lsl #2]
d03c7ee6:	4e5b      	ldr	r6, [pc, #364]	; (d03c8054 <main+0x1148>)
d03c7ee8:	42b0      	cmp	r0, r6
d03c7eea:	bf04      	itt	eq
d03c7eec:	6808      	ldreq	r0, [r1, #0]
d03c7eee:	f848 0022 	streq.w	r0, [r8, r2, lsl #2]
d03c7ef2:	4628      	mov	r0, r5
d03c7ef4:	600b      	str	r3, [r1, #0]
d03c7ef6:	9304      	str	r3, [sp, #16]
d03c7ef8:	f7f8 ffc8 	bl	d03c0e8c <vm_program_length>
d03c7efc:	1e42      	subs	r2, r0, #1
d03c7efe:	4606      	mov	r6, r0
d03c7f00:	2100      	movs	r1, #0
d03c7f02:	4854      	ldr	r0, [pc, #336]	; (d03c8054 <main+0x1148>)
d03c7f04:	b2d2      	uxtb	r2, r2
d03c7f06:	2700      	movs	r7, #0
d03c7f08:	f8df a148 	ldr.w	sl, [pc, #328]	; d03c8054 <main+0x1148>
d03c7f0c:	2a60      	cmp	r2, #96	; 0x60
d03c7f0e:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c7f12:	bf28      	it	cs
d03c7f14:	2660      	movcs	r6, #96	; 0x60
d03c7f16:	f001 fd4b 	bl	d03c99b0 <memset>
d03c7f1a:	9b04      	ldr	r3, [sp, #16]
d03c7f1c:	eb03 0187 	add.w	r1, r3, r7, lsl #2
d03c7f20:	2204      	movs	r2, #4
d03c7f22:	eb0a 0087 	add.w	r0, sl, r7, lsl #2
d03c7f26:	3701      	adds	r7, #1
d03c7f28:	9304      	str	r3, [sp, #16]
d03c7f2a:	f001 fd33 	bl	d03c9994 <memcpy>
d03c7f2e:	b2fa      	uxtb	r2, r7
d03c7f30:	9b04      	ldr	r3, [sp, #16]
d03c7f32:	4296      	cmp	r6, r2
d03c7f34:	d8f2      	bhi.n	d03c7f1c <main+0x1010>
d03c7f36:	4a42      	ldr	r2, [pc, #264]	; (d03c8040 <main+0x1134>)
d03c7f38:	2300      	movs	r3, #0
d03c7f3a:	f848 a025 	str.w	sl, [r8, r5, lsl #2]
d03c7f3e:	7015      	strb	r5, [r2, #0]
d03c7f40:	4a45      	ldr	r2, [pc, #276]	; (d03c8058 <main+0x114c>)
d03c7f42:	f88a 317c 	strb.w	r3, [sl, #380]	; 0x17c
d03c7f46:	7013      	strb	r3, [r2, #0]
d03c7f48:	4a44      	ldr	r2, [pc, #272]	; (d03c805c <main+0x1150>)
d03c7f4a:	7013      	strb	r3, [r2, #0]
d03c7f4c:	4a44      	ldr	r2, [pc, #272]	; (d03c8060 <main+0x1154>)
d03c7f4e:	7013      	strb	r3, [r2, #0]
d03c7f50:	2100      	movs	r1, #0
d03c7f52:	4a44      	ldr	r2, [pc, #272]	; (d03c8064 <main+0x1158>)
d03c7f54:	2301      	movs	r3, #1
d03c7f56:	7011      	strb	r1, [r2, #0]
d03c7f58:	4a43      	ldr	r2, [pc, #268]	; (d03c8068 <main+0x115c>)
d03c7f5a:	f889 3000 	strb.w	r3, [r9]
d03c7f5e:	7013      	strb	r3, [r2, #0]
d03c7f60:	f7f9 ff32 	bl	d03c1dc8 <ui_vm_editor_clamp_selection>
d03c7f64:	4841      	ldr	r0, [pc, #260]	; (d03c806c <main+0x1160>)
d03c7f66:	f7f9 fa41 	bl	d03c13ec <ui_set_status>
d03c7f6a:	f7ff bbe9 	b.w	d03c7740 <main+0x834>
d03c7f6e:	2001      	movs	r0, #1
d03c7f70:	f7f8 ffbc 	bl	d03c0eec <ui_scroll_vm>
d03c7f74:	f7ff bbe4 	b.w	d03c7740 <main+0x834>
d03c7f78:	4b3d      	ldr	r3, [pc, #244]	; (d03c8070 <main+0x1164>)
d03c7f7a:	2201      	movs	r2, #1
d03c7f7c:	701a      	strb	r2, [r3, #0]
d03c7f7e:	f7ff bbdf 	b.w	d03c7740 <main+0x834>
d03c7f82:	4a36      	ldr	r2, [pc, #216]	; (d03c805c <main+0x1150>)
d03c7f84:	7813      	ldrb	r3, [r2, #0]
d03c7f86:	3301      	adds	r3, #1
d03c7f88:	b25b      	sxtb	r3, r3
d03c7f8a:	2b00      	cmp	r3, #0
d03c7f8c:	db0b      	blt.n	d03c7fa6 <main+0x109a>
d03c7f8e:	2b03      	cmp	r3, #3
d03c7f90:	bfa8      	it	ge
d03c7f92:	2300      	movge	r3, #0
d03c7f94:	7013      	strb	r3, [r2, #0]
d03c7f96:	2200      	movs	r2, #0
d03c7f98:	4b32      	ldr	r3, [pc, #200]	; (d03c8064 <main+0x1158>)
d03c7f9a:	701a      	strb	r2, [r3, #0]
d03c7f9c:	2201      	movs	r2, #1
d03c7f9e:	4b32      	ldr	r3, [pc, #200]	; (d03c8068 <main+0x115c>)
d03c7fa0:	701a      	strb	r2, [r3, #0]
d03c7fa2:	f7ff bbcd 	b.w	d03c7740 <main+0x834>
d03c7fa6:	2302      	movs	r3, #2
d03c7fa8:	e7f4      	b.n	d03c7f94 <main+0x1088>
d03c7faa:	4832      	ldr	r0, [pc, #200]	; (d03c8074 <main+0x1168>)
d03c7fac:	f7f9 ff3e 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fb0:	f7ff bbc6 	b.w	d03c7740 <main+0x834>
d03c7fb4:	f06f 00ff 	mvn.w	r0, #255	; 0xff
d03c7fb8:	f7f9 ff38 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fbc:	f7ff bbc0 	b.w	d03c7740 <main+0x834>
d03c7fc0:	f44f 7080 	mov.w	r0, #256	; 0x100
d03c7fc4:	f7f9 ff32 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fc8:	f7ff bbba 	b.w	d03c7740 <main+0x834>
d03c7fcc:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d03c7fd0:	f7f9 ff2c 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fd4:	f7ff bbb4 	b.w	d03c7740 <main+0x834>
d03c7fd8:	f06f 000f 	mvn.w	r0, #15
d03c7fdc:	f7f9 ff26 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fe0:	f7ff bbae 	b.w	d03c7740 <main+0x834>
d03c7fe4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c7fe8:	f7f9 ff20 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7fec:	f7ff bba8 	b.w	d03c7740 <main+0x834>
d03c7ff0:	2001      	movs	r0, #1
d03c7ff2:	f7f9 ff1b 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c7ff6:	f7ff bba3 	b.w	d03c7740 <main+0x834>
d03c7ffa:	bf00      	nop
d03c7ffc:	d03cb5f3 	.word	0xd03cb5f3
d03c8000:	d03cf3aa 	.word	0xd03cf3aa
d03c8004:	d03cf3a9 	.word	0xd03cf3a9
d03c8008:	d03cf3a8 	.word	0xd03cf3a8
d03c800c:	d03cf331 	.word	0xd03cf331
d03c8010:	d03cda34 	.word	0xd03cda34
d03c8014:	d03cd140 	.word	0xd03cd140
d03c8018:	d03cda79 	.word	0xd03cda79
d03c801c:	d03cb398 	.word	0xd03cb398
d03c8020:	d03cf3ca 	.word	0xd03cf3ca
d03c8024:	d03ccf8e 	.word	0xd03ccf8e
d03c8028:	d03ccd74 	.word	0xd03ccd74
d03c802c:	d03ccd54 	.word	0xd03ccd54
d03c8030:	d03ccd88 	.word	0xd03ccd88
d03c8034:	d03ccd8a 	.word	0xd03ccd8a
d03c8038:	d03cf583 	.word	0xd03cf583
d03c803c:	d03ccd64 	.word	0xd03ccd64
d03c8040:	d03cf588 	.word	0xd03cf588
d03c8044:	d03cbe7c 	.word	0xd03cbe7c
d03c8048:	d03cbe90 	.word	0xd03cbe90
d03c804c:	d03cbeb1 	.word	0xd03cbeb1
d03c8050:	d03cf584 	.word	0xd03cf584
d03c8054:	d03cf402 	.word	0xd03cf402
d03c8058:	d03cf589 	.word	0xd03cf589
d03c805c:	d03cf582 	.word	0xd03cf582
d03c8060:	d03cf591 	.word	0xd03cf591
d03c8064:	d03cf58b 	.word	0xd03cf58b
d03c8068:	d03cf58a 	.word	0xd03cf58a
d03c806c:	d03cbec7 	.word	0xd03cbec7
d03c8070:	d03cda33 	.word	0xd03cda33
d03c8074:	fffff000 	.word	0xfffff000
d03c8078:	d03cc670 	.word	0xd03cc670
d03c807c:	2010      	movs	r0, #16
d03c807e:	f7f9 fed5 	bl	d03c1e2c <ui_vm_editor_adjust>
d03c8082:	f7ff bb5d 	b.w	d03c7740 <main+0x834>
d03c8086:	4fb9      	ldr	r7, [pc, #740]	; (d03c836c <main+0x1460>)
d03c8088:	783b      	ldrb	r3, [r7, #0]
d03c808a:	2b01      	cmp	r3, #1
d03c808c:	d148      	bne.n	d03c8120 <main+0x1214>
d03c808e:	4bb8      	ldr	r3, [pc, #736]	; (d03c8370 <main+0x1464>)
d03c8090:	4ab8      	ldr	r2, [pc, #736]	; (d03c8374 <main+0x1468>)
d03c8092:	f893 9000 	ldrb.w	r9, [r3]
d03c8096:	f993 3000 	ldrsb.w	r3, [r3]
d03c809a:	f8d2 a000 	ldr.w	sl, [r2]
d03c809e:	2b00      	cmp	r3, #0
d03c80a0:	db02      	blt.n	d03c80a8 <main+0x119c>
d03c80a2:	f1ba 0f00 	cmp.w	sl, #0
d03c80a6:	d103      	bne.n	d03c80b0 <main+0x11a4>
d03c80a8:	48b3      	ldr	r0, [pc, #716]	; (d03c8378 <main+0x146c>)
d03c80aa:	f7f9 f99f 	bl	d03c13ec <ui_set_status>
d03c80ae:	e033      	b.n	d03c8118 <main+0x120c>
d03c80b0:	2300      	movs	r3, #0
d03c80b2:	1c5a      	adds	r2, r3, #1
d03c80b4:	f81a 3023 	ldrb.w	r3, [sl, r3, lsl #2]
d03c80b8:	fa5f f882 	uxtb.w	r8, r2
d03c80bc:	b11b      	cbz	r3, d03c80c6 <main+0x11ba>
d03c80be:	2a60      	cmp	r2, #96	; 0x60
d03c80c0:	4613      	mov	r3, r2
d03c80c2:	d1f6      	bne.n	d03c80b2 <main+0x11a6>
d03c80c4:	4690      	mov	r8, r2
d03c80c6:	2500      	movs	r5, #0
d03c80c8:	4eac      	ldr	r6, [pc, #688]	; (d03c837c <main+0x1470>)
d03c80ca:	f44f 72c0 	mov.w	r2, #384	; 0x180
d03c80ce:	2100      	movs	r1, #0
d03c80d0:	48aa      	ldr	r0, [pc, #680]	; (d03c837c <main+0x1470>)
d03c80d2:	f001 fc6d 	bl	d03c99b0 <memset>
d03c80d6:	eb0a 0185 	add.w	r1, sl, r5, lsl #2
d03c80da:	2204      	movs	r2, #4
d03c80dc:	eb06 0085 	add.w	r0, r6, r5, lsl #2
d03c80e0:	3501      	adds	r5, #1
d03c80e2:	f001 fc57 	bl	d03c9994 <memcpy>
d03c80e6:	b2eb      	uxtb	r3, r5
d03c80e8:	4598      	cmp	r8, r3
d03c80ea:	d8f4      	bhi.n	d03c80d6 <main+0x11ca>
d03c80ec:	4aa4      	ldr	r2, [pc, #656]	; (d03c8380 <main+0x1474>)
d03c80ee:	2300      	movs	r3, #0
d03c80f0:	2501      	movs	r5, #1
d03c80f2:	f842 6029 	str.w	r6, [r2, r9, lsl #2]
d03c80f6:	4aa3      	ldr	r2, [pc, #652]	; (d03c8384 <main+0x1478>)
d03c80f8:	f886 317c 	strb.w	r3, [r6, #380]	; 0x17c
d03c80fc:	7013      	strb	r3, [r2, #0]
d03c80fe:	4aa2      	ldr	r2, [pc, #648]	; (d03c8388 <main+0x147c>)
d03c8100:	7013      	strb	r3, [r2, #0]
d03c8102:	4aa2      	ldr	r2, [pc, #648]	; (d03c838c <main+0x1480>)
d03c8104:	7013      	strb	r3, [r2, #0]
d03c8106:	4ba2      	ldr	r3, [pc, #648]	; (d03c8390 <main+0x1484>)
d03c8108:	701d      	strb	r5, [r3, #0]
d03c810a:	f7f9 fc95 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c810e:	48a1      	ldr	r0, [pc, #644]	; (d03c8394 <main+0x1488>)
d03c8110:	f7f9 f96c 	bl	d03c13ec <ui_set_status>
d03c8114:	4ba0      	ldr	r3, [pc, #640]	; (d03c8398 <main+0x148c>)
d03c8116:	701d      	strb	r5, [r3, #0]
d03c8118:	2300      	movs	r3, #0
d03c811a:	703b      	strb	r3, [r7, #0]
d03c811c:	f7ff bb10 	b.w	d03c7740 <main+0x834>
d03c8120:	2b02      	cmp	r3, #2
d03c8122:	d1f9      	bne.n	d03c8118 <main+0x120c>
d03c8124:	f7f9 fca4 	bl	d03c1a70 <seq_stop_playback_notes>
d03c8128:	2500      	movs	r5, #0
d03c812a:	4b9c      	ldr	r3, [pc, #624]	; (d03c839c <main+0x1490>)
d03c812c:	701d      	strb	r5, [r3, #0]
d03c812e:	4b9c      	ldr	r3, [pc, #624]	; (d03c83a0 <main+0x1494>)
d03c8130:	701d      	strb	r5, [r3, #0]
d03c8132:	4b9c      	ldr	r3, [pc, #624]	; (d03c83a4 <main+0x1498>)
d03c8134:	701d      	strb	r5, [r3, #0]
d03c8136:	4b9c      	ldr	r3, [pc, #624]	; (d03c83a8 <main+0x149c>)
d03c8138:	701d      	strb	r5, [r3, #0]
d03c813a:	4b9c      	ldr	r3, [pc, #624]	; (d03c83ac <main+0x14a0>)
d03c813c:	701d      	strb	r5, [r3, #0]
d03c813e:	4b9c      	ldr	r3, [pc, #624]	; (d03c83b0 <main+0x14a4>)
d03c8140:	801d      	strh	r5, [r3, #0]
d03c8142:	4b9c      	ldr	r3, [pc, #624]	; (d03c83b4 <main+0x14a8>)
d03c8144:	601d      	str	r5, [r3, #0]
d03c8146:	4b9c      	ldr	r3, [pc, #624]	; (d03c83b8 <main+0x14ac>)
d03c8148:	681a      	ldr	r2, [r3, #0]
d03c814a:	4b9c      	ldr	r3, [pc, #624]	; (d03c83bc <main+0x14b0>)
d03c814c:	601a      	str	r2, [r3, #0]
d03c814e:	4b9c      	ldr	r3, [pc, #624]	; (d03c83c0 <main+0x14b4>)
d03c8150:	701d      	strb	r5, [r3, #0]
d03c8152:	4b9c      	ldr	r3, [pc, #624]	; (d03c83c4 <main+0x14b8>)
d03c8154:	601d      	str	r5, [r3, #0]
d03c8156:	4b9c      	ldr	r3, [pc, #624]	; (d03c83c8 <main+0x14bc>)
d03c8158:	601d      	str	r5, [r3, #0]
d03c815a:	f7f9 f88f 	bl	d03c127c <seq_clear_note_storage>
d03c815e:	f7f8 fd61 	bl	d03c0c24 <seq_playback_mark_dirty>
d03c8162:	4b9a      	ldr	r3, [pc, #616]	; (d03c83cc <main+0x14c0>)
d03c8164:	2201      	movs	r2, #1
d03c8166:	4629      	mov	r1, r5
d03c8168:	4899      	ldr	r0, [pc, #612]	; (d03c83d0 <main+0x14c4>)
d03c816a:	701a      	strb	r2, [r3, #0]
d03c816c:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c8170:	f001 fc1e 	bl	d03c99b0 <memset>
d03c8174:	4897      	ldr	r0, [pc, #604]	; (d03c83d4 <main+0x14c8>)
d03c8176:	e798      	b.n	d03c80aa <main+0x119e>
d03c8178:	4b7c      	ldr	r3, [pc, #496]	; (d03c836c <main+0x1460>)
d03c817a:	2200      	movs	r2, #0
d03c817c:	4896      	ldr	r0, [pc, #600]	; (d03c83d8 <main+0x14cc>)
d03c817e:	701a      	strb	r2, [r3, #0]
d03c8180:	f7f9 f934 	bl	d03c13ec <ui_set_status>
d03c8184:	f7ff badc 	b.w	d03c7740 <main+0x834>
d03c8188:	4a94      	ldr	r2, [pc, #592]	; (d03c83dc <main+0x14d0>)
d03c818a:	7813      	ldrb	r3, [r2, #0]
d03c818c:	2b00      	cmp	r3, #0
d03c818e:	f43f aad7 	beq.w	d03c7740 <main+0x834>
d03c8192:	3b01      	subs	r3, #1
d03c8194:	7013      	strb	r3, [r2, #0]
d03c8196:	f7ff bad3 	b.w	d03c7740 <main+0x834>
d03c819a:	4a90      	ldr	r2, [pc, #576]	; (d03c83dc <main+0x14d0>)
d03c819c:	4990      	ldr	r1, [pc, #576]	; (d03c83e0 <main+0x14d4>)
d03c819e:	7813      	ldrb	r3, [r2, #0]
d03c81a0:	7809      	ldrb	r1, [r1, #0]
d03c81a2:	1dd8      	adds	r0, r3, #7
d03c81a4:	4288      	cmp	r0, r1
d03c81a6:	f4bf aacb 	bcs.w	d03c7740 <main+0x834>
d03c81aa:	3301      	adds	r3, #1
d03c81ac:	7013      	strb	r3, [r2, #0]
d03c81ae:	f7ff bac7 	b.w	d03c7740 <main+0x834>
d03c81b2:	4b8b      	ldr	r3, [pc, #556]	; (d03c83e0 <main+0x14d4>)
d03c81b4:	781a      	ldrb	r2, [r3, #0]
d03c81b6:	b13a      	cbz	r2, d03c81c8 <main+0x12bc>
d03c81b8:	4b8a      	ldr	r3, [pc, #552]	; (d03c83e4 <main+0x14d8>)
d03c81ba:	781b      	ldrb	r3, [r3, #0]
d03c81bc:	429a      	cmp	r2, r3
d03c81be:	d903      	bls.n	d03c81c8 <main+0x12bc>
d03c81c0:	4a89      	ldr	r2, [pc, #548]	; (d03c83e8 <main+0x14dc>)
d03c81c2:	5cd2      	ldrb	r2, [r2, r3]
d03c81c4:	2a05      	cmp	r2, #5
d03c81c6:	d004      	beq.n	d03c81d2 <main+0x12c6>
d03c81c8:	4888      	ldr	r0, [pc, #544]	; (d03c83ec <main+0x14e0>)
d03c81ca:	f7f9 f90f 	bl	d03c13ec <ui_set_status>
d03c81ce:	f7ff bab7 	b.w	d03c7740 <main+0x834>
d03c81d2:	4f87      	ldr	r7, [pc, #540]	; (d03c83f0 <main+0x14e4>)
d03c81d4:	4987      	ldr	r1, [pc, #540]	; (d03c83f4 <main+0x14e8>)
d03c81d6:	eb07 1743 	add.w	r7, r7, r3, lsl #5
d03c81da:	4d87      	ldr	r5, [pc, #540]	; (d03c83f8 <main+0x14ec>)
d03c81dc:	4638      	mov	r0, r7
d03c81de:	f001 ff25 	bl	d03ca02c <strcmp>
d03c81e2:	4606      	mov	r6, r0
d03c81e4:	b9c8      	cbnz	r0, d03c821a <main+0x130e>
d03c81e6:	4985      	ldr	r1, [pc, #532]	; (d03c83fc <main+0x14f0>)
d03c81e8:	4628      	mov	r0, r5
d03c81ea:	f001 ff1f 	bl	d03ca02c <strcmp>
d03c81ee:	b158      	cbz	r0, d03c8208 <main+0x12fc>
d03c81f0:	212f      	movs	r1, #47	; 0x2f
d03c81f2:	4628      	mov	r0, r5
d03c81f4:	f001 ff34 	bl	d03ca060 <strrchr>
d03c81f8:	b110      	cbz	r0, d03c8200 <main+0x12f4>
d03c81fa:	3507      	adds	r5, #7
d03c81fc:	42a8      	cmp	r0, r5
d03c81fe:	d80a      	bhi.n	d03c8216 <main+0x130a>
d03c8200:	497e      	ldr	r1, [pc, #504]	; (d03c83fc <main+0x14f0>)
d03c8202:	487d      	ldr	r0, [pc, #500]	; (d03c83f8 <main+0x14ec>)
d03c8204:	f001 ff1c 	bl	d03ca040 <strcpy>
d03c8208:	f7fb f846 	bl	d03c3298 <ui_file_refresh>
d03c820c:	4b62      	ldr	r3, [pc, #392]	; (d03c8398 <main+0x148c>)
d03c820e:	2201      	movs	r2, #1
d03c8210:	701a      	strb	r2, [r3, #0]
d03c8212:	f7ff ba95 	b.w	d03c7740 <main+0x834>
d03c8216:	7006      	strb	r6, [r0, #0]
d03c8218:	e7f6      	b.n	d03c8208 <main+0x12fc>
d03c821a:	782a      	ldrb	r2, [r5, #0]
d03c821c:	2160      	movs	r1, #96	; 0x60
d03c821e:	4b78      	ldr	r3, [pc, #480]	; (d03c8400 <main+0x14f4>)
d03c8220:	a814      	add	r0, sp, #80	; 0x50
d03c8222:	9700      	str	r7, [sp, #0]
d03c8224:	2a00      	cmp	r2, #0
d03c8226:	bf18      	it	ne
d03c8228:	462b      	movne	r3, r5
d03c822a:	4a76      	ldr	r2, [pc, #472]	; (d03c8404 <main+0x14f8>)
d03c822c:	f001 feca 	bl	d03c9fc4 <sniprintf>
d03c8230:	ab14      	add	r3, sp, #80	; 0x50
d03c8232:	4a75      	ldr	r2, [pc, #468]	; (d03c8408 <main+0x14fc>)
d03c8234:	2160      	movs	r1, #96	; 0x60
d03c8236:	4628      	mov	r0, r5
d03c8238:	f001 fec4 	bl	d03c9fc4 <sniprintf>
d03c823c:	e7e4      	b.n	d03c8208 <main+0x12fc>
d03c823e:	2002      	movs	r0, #2
d03c8240:	f7fd fde4 	bl	d03c5e0c <ui_load_selected_file>
d03c8244:	f7ff ba7c 	b.w	d03c7740 <main+0x834>
d03c8248:	2001      	movs	r0, #1
d03c824a:	f7fd fddf 	bl	d03c5e0c <ui_load_selected_file>
d03c824e:	f7ff ba77 	b.w	d03c7740 <main+0x834>
d03c8252:	2003      	movs	r0, #3
d03c8254:	f7fd fdda 	bl	d03c5e0c <ui_load_selected_file>
d03c8258:	f7ff ba72 	b.w	d03c7740 <main+0x834>
d03c825c:	2004      	movs	r0, #4
d03c825e:	f7fd fdd5 	bl	d03c5e0c <ui_load_selected_file>
d03c8262:	f7ff ba6d 	b.w	d03c7740 <main+0x834>
d03c8266:	4b69      	ldr	r3, [pc, #420]	; (d03c840c <main+0x1500>)
d03c8268:	2200      	movs	r2, #0
d03c826a:	4869      	ldr	r0, [pc, #420]	; (d03c8410 <main+0x1504>)
d03c826c:	701a      	strb	r2, [r3, #0]
d03c826e:	f7f9 f8bd 	bl	d03c13ec <ui_set_status>
d03c8272:	f7ff ba65 	b.w	d03c7740 <main+0x834>
d03c8276:	4867      	ldr	r0, [pc, #412]	; (d03c8414 <main+0x1508>)
d03c8278:	f001 feea 	bl	d03ca050 <strlen>
d03c827c:	4966      	ldr	r1, [pc, #408]	; (d03c8418 <main+0x150c>)
d03c827e:	b2c5      	uxtb	r5, r0
d03c8280:	780b      	ldrb	r3, [r1, #0]
d03c8282:	42ab      	cmp	r3, r5
d03c8284:	bf88      	it	hi
d03c8286:	700d      	strbhi	r5, [r1, #0]
d03c8288:	2800      	cmp	r0, #0
d03c828a:	f43f aa59 	beq.w	d03c7740 <main+0x834>
d03c828e:	780b      	ldrb	r3, [r1, #0]
d03c8290:	2b00      	cmp	r3, #0
d03c8292:	f43f aa55 	beq.w	d03c7740 <main+0x834>
d03c8296:	3b01      	subs	r3, #1
d03c8298:	4a5e      	ldr	r2, [pc, #376]	; (d03c8414 <main+0x1508>)
d03c829a:	b2d8      	uxtb	r0, r3
d03c829c:	fa52 f383 	uxtab	r3, r2, r3
d03c82a0:	4602      	mov	r2, r0
d03c82a2:	4295      	cmp	r5, r2
d03c82a4:	d808      	bhi.n	d03c82b8 <main+0x13ac>
d03c82a6:	4b5d      	ldr	r3, [pc, #372]	; (d03c841c <main+0x1510>)
d03c82a8:	2200      	movs	r2, #0
d03c82aa:	7008      	strb	r0, [r1, #0]
d03c82ac:	701a      	strb	r2, [r3, #0]
d03c82ae:	2201      	movs	r2, #1
d03c82b0:	4b5b      	ldr	r3, [pc, #364]	; (d03c8420 <main+0x1514>)
d03c82b2:	701a      	strb	r2, [r3, #0]
d03c82b4:	f7ff ba44 	b.w	d03c7740 <main+0x834>
d03c82b8:	785e      	ldrb	r6, [r3, #1]
d03c82ba:	3201      	adds	r2, #1
d03c82bc:	f803 6b01 	strb.w	r6, [r3], #1
d03c82c0:	b2d2      	uxtb	r2, r2
d03c82c2:	e7ee      	b.n	d03c82a2 <main+0x1396>
d03c82c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c82c8:	f7f9 fb52 	bl	d03c1970 <ui_keyboard_move_caret>
d03c82cc:	f7ff ba38 	b.w	d03c7740 <main+0x834>
d03c82d0:	2001      	movs	r0, #1
d03c82d2:	f7f9 fb4d 	bl	d03c1970 <ui_keyboard_move_caret>
d03c82d6:	f7ff ba33 	b.w	d03c7740 <main+0x834>
d03c82da:	2300      	movs	r3, #0
d03c82dc:	4a4d      	ldr	r2, [pc, #308]	; (d03c8414 <main+0x1508>)
d03c82de:	7013      	strb	r3, [r2, #0]
d03c82e0:	4a4d      	ldr	r2, [pc, #308]	; (d03c8418 <main+0x150c>)
d03c82e2:	7013      	strb	r3, [r2, #0]
d03c82e4:	4a4d      	ldr	r2, [pc, #308]	; (d03c841c <main+0x1510>)
d03c82e6:	7013      	strb	r3, [r2, #0]
d03c82e8:	2201      	movs	r2, #1
d03c82ea:	4b4d      	ldr	r3, [pc, #308]	; (d03c8420 <main+0x1514>)
d03c82ec:	701a      	strb	r2, [r3, #0]
d03c82ee:	f7ff ba27 	b.w	d03c7740 <main+0x834>
d03c82f2:	2002      	movs	r0, #2
d03c82f4:	f7fe fdb2 	bl	d03c6e5c <ui_keyboard_commit_save>
d03c82f8:	f7ff ba22 	b.w	d03c7740 <main+0x834>
d03c82fc:	2001      	movs	r0, #1
d03c82fe:	f7fe fdad 	bl	d03c6e5c <ui_keyboard_commit_save>
d03c8302:	f7ff ba1d 	b.w	d03c7740 <main+0x834>
d03c8306:	2003      	movs	r0, #3
d03c8308:	f7fe fda8 	bl	d03c6e5c <ui_keyboard_commit_save>
d03c830c:	f7ff ba18 	b.w	d03c7740 <main+0x834>
d03c8310:	2004      	movs	r0, #4
d03c8312:	f7fe fda3 	bl	d03c6e5c <ui_keyboard_commit_save>
d03c8316:	f7ff ba13 	b.w	d03c7740 <main+0x834>
d03c831a:	4b3c      	ldr	r3, [pc, #240]	; (d03c840c <main+0x1500>)
d03c831c:	2200      	movs	r2, #0
d03c831e:	4841      	ldr	r0, [pc, #260]	; (d03c8424 <main+0x1518>)
d03c8320:	701a      	strb	r2, [r3, #0]
d03c8322:	f7f9 f863 	bl	d03c13ec <ui_set_status>
d03c8326:	f7ff ba0b 	b.w	d03c7740 <main+0x834>
d03c832a:	4b3f      	ldr	r3, [pc, #252]	; (d03c8428 <main+0x151c>)
d03c832c:	781b      	ldrb	r3, [r3, #0]
d03c832e:	2b00      	cmp	r3, #0
d03c8330:	f43f aa06 	beq.w	d03c7740 <main+0x834>
d03c8334:	4d3d      	ldr	r5, [pc, #244]	; (d03c842c <main+0x1520>)
d03c8336:	782b      	ldrb	r3, [r5, #0]
d03c8338:	2b02      	cmp	r3, #2
d03c833a:	d079      	beq.n	d03c8430 <main+0x1524>
d03c833c:	782b      	ldrb	r3, [r5, #0]
d03c833e:	2b01      	cmp	r3, #1
d03c8340:	d103      	bne.n	d03c834a <main+0x143e>
d03c8342:	f7fa fc05 	bl	d03c2b50 <ui_program_save_path.constprop.0>
d03c8346:	2800      	cmp	r0, #0
d03c8348:	d176      	bne.n	d03c8438 <main+0x152c>
d03c834a:	782b      	ldrb	r3, [r5, #0]
d03c834c:	2b03      	cmp	r3, #3
d03c834e:	d103      	bne.n	d03c8358 <main+0x144c>
d03c8350:	f7fa fa70 	bl	d03c2834 <ui_song_save_path.constprop.0>
d03c8354:	2800      	cmp	r0, #0
d03c8356:	d16f      	bne.n	d03c8438 <main+0x152c>
d03c8358:	782b      	ldrb	r3, [r5, #0]
d03c835a:	2b04      	cmp	r3, #4
d03c835c:	f47f a9f0 	bne.w	d03c7740 <main+0x834>
d03c8360:	f7fe fb6c 	bl	d03c6a3c <ui_midi_export_path.constprop.0>
d03c8364:	2800      	cmp	r0, #0
d03c8366:	d167      	bne.n	d03c8438 <main+0x152c>
d03c8368:	f7ff b9ea 	b.w	d03c7740 <main+0x834>
d03c836c:	d03cda33 	.word	0xd03cda33
d03c8370:	d03cf588 	.word	0xd03cf588
d03c8374:	d03cf584 	.word	0xd03cf584
d03c8378:	d03cbee0 	.word	0xd03cbee0
d03c837c:	d03cf402 	.word	0xd03cf402
d03c8380:	d03cc670 	.word	0xd03cc670
d03c8384:	d03cf589 	.word	0xd03cf589
d03c8388:	d03cf582 	.word	0xd03cf582
d03c838c:	d03cf591 	.word	0xd03cf591
d03c8390:	d03cf583 	.word	0xd03cf583
d03c8394:	d03cbef9 	.word	0xd03cbef9
d03c8398:	d03cd140 	.word	0xd03cd140
d03c839c:	d03cd0fc 	.word	0xd03cd0fc
d03c83a0:	d03cd105 	.word	0xd03cd105
d03c83a4:	d03cd104 	.word	0xd03cd104
d03c83a8:	d03ccfb4 	.word	0xd03ccfb4
d03c83ac:	d03ccfb8 	.word	0xd03ccfb8
d03c83b0:	d03ccfb6 	.word	0xd03ccfb6
d03c83b4:	d03cd100 	.word	0xd03cd100
d03c83b8:	d03ccfb0 	.word	0xd03ccfb0
d03c83bc:	d03ccfc4 	.word	0xd03ccfc4
d03c83c0:	d03ccfc2 	.word	0xd03ccfc2
d03c83c4:	d03ccfd4 	.word	0xd03ccfd4
d03c83c8:	d03ccfcc 	.word	0xd03ccfcc
d03c83cc:	d03cf3cb 	.word	0xd03cf3cb
d03c83d0:	d03ccfec 	.word	0xd03ccfec
d03c83d4:	d03cbf11 	.word	0xd03cbf11
d03c83d8:	d03cbe53 	.word	0xd03cbe53
d03c83dc:	d03ce319 	.word	0xd03ce319
d03c83e0:	d03cda78 	.word	0xd03cda78
d03c83e4:	d03ce31a 	.word	0xd03ce31a
d03c83e8:	d03cdad9 	.word	0xd03cdad9
d03c83ec:	d03cbf23 	.word	0xd03cbf23
d03c83f0:	d03cdb19 	.word	0xd03cdb19
d03c83f4:	d03cb573 	.word	0xd03cb573
d03c83f8:	d03cda79 	.word	0xd03cda79
d03c83fc:	d03cb56b 	.word	0xd03cb56b
d03c8400:	d03cb398 	.word	0xd03cb398
d03c8404:	d03cb55d 	.word	0xd03cb55d
d03c8408:	d03cb9a4 	.word	0xd03cb9a4
d03c840c:	d03cda34 	.word	0xd03cda34
d03c8410:	d03cbf33 	.word	0xd03cbf33
d03c8414:	d03cf3aa 	.word	0xd03cf3aa
d03c8418:	d03cf3a8 	.word	0xd03cf3a8
d03c841c:	d03cf58b 	.word	0xd03cf58b
d03c8420:	d03cf58a 	.word	0xd03cf58a
d03c8424:	d03cbf42 	.word	0xd03cbf42
d03c8428:	d03cf331 	.word	0xd03cf331
d03c842c:	d03cf3a9 	.word	0xd03cf3a9
d03c8430:	f7fa fab8 	bl	d03c29a4 <ui_project_save_path.constprop.0>
d03c8434:	2800      	cmp	r0, #0
d03c8436:	d081      	beq.n	d03c833c <main+0x1430>
d03c8438:	4b79      	ldr	r3, [pc, #484]	; (d03c8620 <main+0x1714>)
d03c843a:	2200      	movs	r2, #0
d03c843c:	701a      	strb	r2, [r3, #0]
d03c843e:	f7fa ff2b 	bl	d03c3298 <ui_file_refresh>
d03c8442:	f7ff b97d 	b.w	d03c7740 <main+0x834>
d03c8446:	4b76      	ldr	r3, [pc, #472]	; (d03c8620 <main+0x1714>)
d03c8448:	2202      	movs	r2, #2
d03c844a:	4876      	ldr	r0, [pc, #472]	; (d03c8624 <main+0x1718>)
d03c844c:	701a      	strb	r2, [r3, #0]
d03c844e:	f7f8 ffcd 	bl	d03c13ec <ui_set_status>
d03c8452:	f7ff b975 	b.w	d03c7740 <main+0x834>
d03c8456:	f7f9 fb0b 	bl	d03c1a70 <seq_stop_playback_notes>
d03c845a:	2500      	movs	r5, #0
d03c845c:	4b72      	ldr	r3, [pc, #456]	; (d03c8628 <main+0x171c>)
d03c845e:	4628      	mov	r0, r5
d03c8460:	701d      	strb	r5, [r3, #0]
d03c8462:	4b72      	ldr	r3, [pc, #456]	; (d03c862c <main+0x1720>)
d03c8464:	701d      	strb	r5, [r3, #0]
d03c8466:	4b72      	ldr	r3, [pc, #456]	; (d03c8630 <main+0x1724>)
d03c8468:	801d      	strh	r5, [r3, #0]
d03c846a:	4b72      	ldr	r3, [pc, #456]	; (d03c8634 <main+0x1728>)
d03c846c:	601d      	str	r5, [r3, #0]
d03c846e:	4b72      	ldr	r3, [pc, #456]	; (d03c8638 <main+0x172c>)
d03c8470:	681a      	ldr	r2, [r3, #0]
d03c8472:	4b72      	ldr	r3, [pc, #456]	; (d03c863c <main+0x1730>)
d03c8474:	601a      	str	r2, [r3, #0]
d03c8476:	f7f9 f9bb 	bl	d03c17f0 <seq_playback_sync>
d03c847a:	4b71      	ldr	r3, [pc, #452]	; (d03c8640 <main+0x1734>)
d03c847c:	2201      	movs	r2, #1
d03c847e:	4629      	mov	r1, r5
d03c8480:	4870      	ldr	r0, [pc, #448]	; (d03c8644 <main+0x1738>)
d03c8482:	701a      	strb	r2, [r3, #0]
d03c8484:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c8488:	f001 fa92 	bl	d03c99b0 <memset>
d03c848c:	486e      	ldr	r0, [pc, #440]	; (d03c8648 <main+0x173c>)
d03c848e:	f7f8 ffad 	bl	d03c13ec <ui_set_status>
d03c8492:	f7ff b955 	b.w	d03c7740 <main+0x834>
d03c8496:	4b6d      	ldr	r3, [pc, #436]	; (d03c864c <main+0x1740>)
d03c8498:	781a      	ldrb	r2, [r3, #0]
d03c849a:	b1a2      	cbz	r2, d03c84c6 <main+0x15ba>
d03c849c:	2100      	movs	r1, #0
d03c849e:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c84a2:	4868      	ldr	r0, [pc, #416]	; (d03c8644 <main+0x1738>)
d03c84a4:	7019      	strb	r1, [r3, #0]
d03c84a6:	4b6a      	ldr	r3, [pc, #424]	; (d03c8650 <main+0x1744>)
d03c84a8:	7019      	strb	r1, [r3, #0]
d03c84aa:	f001 fa81 	bl	d03c99b0 <memset>
d03c84ae:	4b69      	ldr	r3, [pc, #420]	; (d03c8654 <main+0x1748>)
d03c84b0:	4a69      	ldr	r2, [pc, #420]	; (d03c8658 <main+0x174c>)
d03c84b2:	7818      	ldrb	r0, [r3, #0]
d03c84b4:	4b69      	ldr	r3, [pc, #420]	; (d03c865c <main+0x1750>)
d03c84b6:	2800      	cmp	r0, #0
d03c84b8:	bf14      	ite	ne
d03c84ba:	4610      	movne	r0, r2
d03c84bc:	4618      	moveq	r0, r3
d03c84be:	f7f8 ff95 	bl	d03c13ec <ui_set_status>
d03c84c2:	f7ff b93d 	b.w	d03c7740 <main+0x834>
d03c84c6:	4b58      	ldr	r3, [pc, #352]	; (d03c8628 <main+0x171c>)
d03c84c8:	7819      	ldrb	r1, [r3, #0]
d03c84ca:	b139      	cbz	r1, d03c84dc <main+0x15d0>
d03c84cc:	2001      	movs	r0, #1
d03c84ce:	f7f9 fae3 	bl	d03c1a98 <seq_stop_transport>
d03c84d2:	4863      	ldr	r0, [pc, #396]	; (d03c8660 <main+0x1754>)
d03c84d4:	f7f8 ff8a 	bl	d03c13ec <ui_set_status>
d03c84d8:	f7ff b932 	b.w	d03c7740 <main+0x834>
d03c84dc:	4a5c      	ldr	r2, [pc, #368]	; (d03c8650 <main+0x1744>)
d03c84de:	4859      	ldr	r0, [pc, #356]	; (d03c8644 <main+0x1738>)
d03c84e0:	7815      	ldrb	r5, [r2, #0]
d03c84e2:	fab5 f385 	clz	r3, r5
d03c84e6:	095b      	lsrs	r3, r3, #5
d03c84e8:	7013      	strb	r3, [r2, #0]
d03c84ea:	f44f 7280 	mov.w	r2, #256	; 0x100
d03c84ee:	f001 fa5f 	bl	d03c99b0 <memset>
d03c84f2:	4b5c      	ldr	r3, [pc, #368]	; (d03c8664 <main+0x1758>)
d03c84f4:	485c      	ldr	r0, [pc, #368]	; (d03c8668 <main+0x175c>)
d03c84f6:	2d00      	cmp	r5, #0
d03c84f8:	bf18      	it	ne
d03c84fa:	4618      	movne	r0, r3
d03c84fc:	f7f8 ff76 	bl	d03c13ec <ui_set_status>
d03c8500:	f7ff b91e 	b.w	d03c7740 <main+0x834>
d03c8504:	4e53      	ldr	r6, [pc, #332]	; (d03c8654 <main+0x1748>)
d03c8506:	4d51      	ldr	r5, [pc, #324]	; (d03c864c <main+0x1740>)
d03c8508:	7833      	ldrb	r3, [r6, #0]
d03c850a:	782a      	ldrb	r2, [r5, #0]
d03c850c:	4313      	orrs	r3, r2
d03c850e:	4a46      	ldr	r2, [pc, #280]	; (d03c8628 <main+0x171c>)
d03c8510:	7812      	ldrb	r2, [r2, #0]
d03c8512:	4313      	orrs	r3, r2
d03c8514:	d007      	beq.n	d03c8526 <main+0x161a>
d03c8516:	2001      	movs	r0, #1
d03c8518:	f7f9 fabe 	bl	d03c1a98 <seq_stop_transport>
d03c851c:	4853      	ldr	r0, [pc, #332]	; (d03c866c <main+0x1760>)
d03c851e:	f7f8 ff65 	bl	d03c13ec <ui_set_status>
d03c8522:	f7ff b90d 	b.w	d03c7740 <main+0x834>
d03c8526:	4b4a      	ldr	r3, [pc, #296]	; (d03c8650 <main+0x1744>)
d03c8528:	781f      	ldrb	r7, [r3, #0]
d03c852a:	b11f      	cbz	r7, d03c8534 <main+0x1628>
d03c852c:	f7f9 fbea 	bl	d03c1d04 <seq_begin_count_in>
d03c8530:	f7ff b906 	b.w	d03c7740 <main+0x834>
d03c8534:	f7f9 fa9c 	bl	d03c1a70 <seq_stop_playback_notes>
d03c8538:	2301      	movs	r3, #1
d03c853a:	702f      	strb	r7, [r5, #0]
d03c853c:	7033      	strb	r3, [r6, #0]
d03c853e:	4b3e      	ldr	r3, [pc, #248]	; (d03c8638 <main+0x172c>)
d03c8540:	681a      	ldr	r2, [r3, #0]
d03c8542:	4b3e      	ldr	r3, [pc, #248]	; (d03c863c <main+0x1730>)
d03c8544:	601a      	str	r2, [r3, #0]
d03c8546:	4b3b      	ldr	r3, [pc, #236]	; (d03c8634 <main+0x1728>)
d03c8548:	6818      	ldr	r0, [r3, #0]
d03c854a:	f7f9 f951 	bl	d03c17f0 <seq_playback_sync>
d03c854e:	4848      	ldr	r0, [pc, #288]	; (d03c8670 <main+0x1764>)
d03c8550:	f7f8 ff4c 	bl	d03c13ec <ui_set_status>
d03c8554:	f7ff b8f4 	b.w	d03c7740 <main+0x834>
d03c8558:	4b3d      	ldr	r3, [pc, #244]	; (d03c8650 <main+0x1744>)
d03c855a:	781d      	ldrb	r5, [r3, #0]
d03c855c:	2d00      	cmp	r5, #0
d03c855e:	d1e5      	bne.n	d03c852c <main+0x1620>
d03c8560:	f7f9 fa86 	bl	d03c1a70 <seq_stop_playback_notes>
d03c8564:	4b3b      	ldr	r3, [pc, #236]	; (d03c8654 <main+0x1748>)
d03c8566:	2201      	movs	r2, #1
d03c8568:	701a      	strb	r2, [r3, #0]
d03c856a:	4b38      	ldr	r3, [pc, #224]	; (d03c864c <main+0x1740>)
d03c856c:	701d      	strb	r5, [r3, #0]
d03c856e:	4b32      	ldr	r3, [pc, #200]	; (d03c8638 <main+0x172c>)
d03c8570:	681a      	ldr	r2, [r3, #0]
d03c8572:	4b32      	ldr	r3, [pc, #200]	; (d03c863c <main+0x1730>)
d03c8574:	601a      	str	r2, [r3, #0]
d03c8576:	4b2f      	ldr	r3, [pc, #188]	; (d03c8634 <main+0x1728>)
d03c8578:	6818      	ldr	r0, [r3, #0]
d03c857a:	f7f9 f939 	bl	d03c17f0 <seq_playback_sync>
d03c857e:	483d      	ldr	r0, [pc, #244]	; (d03c8674 <main+0x1768>)
d03c8580:	f7f8 ff34 	bl	d03c13ec <ui_set_status>
d03c8584:	f7ff b8dc 	b.w	d03c7740 <main+0x834>
d03c8588:	4b3b      	ldr	r3, [pc, #236]	; (d03c8678 <main+0x176c>)
d03c858a:	8818      	ldrh	r0, [r3, #0]
d03c858c:	3801      	subs	r0, #1
d03c858e:	b200      	sxth	r0, r0
d03c8590:	f7f8 fb54 	bl	d03c0c3c <seq_set_bpm>
d03c8594:	f7ff b8d4 	b.w	d03c7740 <main+0x834>
d03c8598:	4b37      	ldr	r3, [pc, #220]	; (d03c8678 <main+0x176c>)
d03c859a:	8818      	ldrh	r0, [r3, #0]
d03c859c:	3001      	adds	r0, #1
d03c859e:	b200      	sxth	r0, r0
d03c85a0:	f7f8 fb4c 	bl	d03c0c3c <seq_set_bpm>
d03c85a4:	f7ff b8cc 	b.w	d03c7740 <main+0x834>
d03c85a8:	4a34      	ldr	r2, [pc, #208]	; (d03c867c <main+0x1770>)
d03c85aa:	7813      	ldrb	r3, [r2, #0]
d03c85ac:	fab3 f383 	clz	r3, r3
d03c85b0:	095b      	lsrs	r3, r3, #5
d03c85b2:	7013      	strb	r3, [r2, #0]
d03c85b4:	2201      	movs	r2, #1
d03c85b6:	4b22      	ldr	r3, [pc, #136]	; (d03c8640 <main+0x1734>)
d03c85b8:	701a      	strb	r2, [r3, #0]
d03c85ba:	f7ff b8c1 	b.w	d03c7740 <main+0x834>
d03c85be:	4a30      	ldr	r2, [pc, #192]	; (d03c8680 <main+0x1774>)
d03c85c0:	7813      	ldrb	r3, [r2, #0]
d03c85c2:	2b00      	cmp	r3, #0
d03c85c4:	f43f a8bc 	beq.w	d03c7740 <main+0x834>
d03c85c8:	3b01      	subs	r3, #1
d03c85ca:	7013      	strb	r3, [r2, #0]
d03c85cc:	2201      	movs	r2, #1
d03c85ce:	4b1c      	ldr	r3, [pc, #112]	; (d03c8640 <main+0x1734>)
d03c85d0:	701a      	strb	r2, [r3, #0]
d03c85d2:	f7ff b8b5 	b.w	d03c7740 <main+0x834>
d03c85d6:	4a2a      	ldr	r2, [pc, #168]	; (d03c8680 <main+0x1774>)
d03c85d8:	7813      	ldrb	r3, [r2, #0]
d03c85da:	2b02      	cmp	r3, #2
d03c85dc:	f63f a8b0 	bhi.w	d03c7740 <main+0x834>
d03c85e0:	3301      	adds	r3, #1
d03c85e2:	7013      	strb	r3, [r2, #0]
d03c85e4:	2201      	movs	r2, #1
d03c85e6:	4b16      	ldr	r3, [pc, #88]	; (d03c8640 <main+0x1734>)
d03c85e8:	701a      	strb	r2, [r3, #0]
d03c85ea:	f7ff b8a9 	b.w	d03c7740 <main+0x834>
d03c85ee:	4b25      	ldr	r3, [pc, #148]	; (d03c8684 <main+0x1778>)
d03c85f0:	2202      	movs	r2, #2
d03c85f2:	701a      	strb	r2, [r3, #0]
d03c85f4:	f7ff b8a4 	b.w	d03c7740 <main+0x834>
d03c85f8:	4d23      	ldr	r5, [pc, #140]	; (d03c8688 <main+0x177c>)
d03c85fa:	782b      	ldrb	r3, [r5, #0]
d03c85fc:	b143      	cbz	r3, d03c8610 <main+0x1704>
d03c85fe:	f7f9 fa09 	bl	d03c1a14 <seq_midi_out_all_notes_off>
d03c8602:	2300      	movs	r3, #0
d03c8604:	4821      	ldr	r0, [pc, #132]	; (d03c868c <main+0x1780>)
d03c8606:	702b      	strb	r3, [r5, #0]
d03c8608:	f7f8 fef0 	bl	d03c13ec <ui_set_status>
d03c860c:	f7ff b898 	b.w	d03c7740 <main+0x834>
d03c8610:	2301      	movs	r3, #1
d03c8612:	481f      	ldr	r0, [pc, #124]	; (d03c8690 <main+0x1784>)
d03c8614:	702b      	strb	r3, [r5, #0]
d03c8616:	f7f8 fee9 	bl	d03c13ec <ui_set_status>
d03c861a:	f7ff b891 	b.w	d03c7740 <main+0x834>
d03c861e:	bf00      	nop
d03c8620:	d03cda34 	.word	0xd03cda34
d03c8624:	d03cbf51 	.word	0xd03cbf51
d03c8628:	d03ccfb4 	.word	0xd03ccfb4
d03c862c:	d03ccfb8 	.word	0xd03ccfb8
d03c8630:	d03ccfb6 	.word	0xd03ccfb6
d03c8634:	d03cd100 	.word	0xd03cd100
d03c8638:	d03ccfb0 	.word	0xd03ccfb0
d03c863c:	d03ccfc4 	.word	0xd03ccfc4
d03c8640:	d03cf3cb 	.word	0xd03cf3cb
d03c8644:	d03ccfec 	.word	0xd03ccfec
d03c8648:	d03cbf65 	.word	0xd03cbf65
d03c864c:	d03cd105 	.word	0xd03cd105
d03c8650:	d03cd104 	.word	0xd03cd104
d03c8654:	d03cd0fc 	.word	0xd03cd0fc
d03c8658:	d03cbe0d 	.word	0xd03cbe0d
d03c865c:	d03cbe19 	.word	0xd03cbe19
d03c8660:	d03cbf77 	.word	0xd03cbf77
d03c8664:	d03cbe31 	.word	0xd03cbe31
d03c8668:	d03cbe24 	.word	0xd03cbe24
d03c866c:	d03cbf88 	.word	0xd03cbf88
d03c8670:	d03cbf9a 	.word	0xd03cbf9a
d03c8674:	d03cbfac 	.word	0xd03cbfac
d03c8678:	d03ccfac 	.word	0xd03ccfac
d03c867c:	d03cd106 	.word	0xd03cd106
d03c8680:	d03cd107 	.word	0xd03cd107
d03c8684:	d03cda33 	.word	0xd03cda33
d03c8688:	d03ccfca 	.word	0xd03ccfca
d03c868c:	d03cbfbd 	.word	0xd03cbfbd
d03c8690:	d03cbfd4 	.word	0xd03cbfd4
d03c8694:	4ab4      	ldr	r2, [pc, #720]	; (d03c8968 <main+0x1a5c>)
d03c8696:	7813      	ldrb	r3, [r2, #0]
d03c8698:	b12b      	cbz	r3, d03c86a6 <main+0x179a>
d03c869a:	3b01      	subs	r3, #1
d03c869c:	b2db      	uxtb	r3, r3
d03c869e:	7013      	strb	r3, [r2, #0]
d03c86a0:	b90b      	cbnz	r3, d03c86a6 <main+0x179a>
d03c86a2:	4ab2      	ldr	r2, [pc, #712]	; (d03c896c <main+0x1a60>)
d03c86a4:	7013      	strb	r3, [r2, #0]
d03c86a6:	4bb2      	ldr	r3, [pc, #712]	; (d03c8970 <main+0x1a64>)
d03c86a8:	781f      	ldrb	r7, [r3, #0]
d03c86aa:	2f00      	cmp	r7, #0
d03c86ac:	f040 86e3 	bne.w	d03c9476 <main+0x256a>
d03c86b0:	4eb0      	ldr	r6, [pc, #704]	; (d03c8974 <main+0x1a68>)
d03c86b2:	4bb1      	ldr	r3, [pc, #708]	; (d03c8978 <main+0x1a6c>)
d03c86b4:	f896 9000 	ldrb.w	r9, [r6]
d03c86b8:	f88d 7044 	strb.w	r7, [sp, #68]	; 0x44
d03c86bc:	f813 a009 	ldrb.w	sl, [r3, r9]
d03c86c0:	f88d 7050 	strb.w	r7, [sp, #80]	; 0x50
d03c86c4:	4650      	mov	r0, sl
d03c86c6:	f7f8 fbe1 	bl	d03c0e8c <vm_program_length>
d03c86ca:	4bac      	ldr	r3, [pc, #688]	; (d03c897c <main+0x1a70>)
d03c86cc:	4605      	mov	r5, r0
d03c86ce:	701f      	strb	r7, [r3, #0]
d03c86d0:	4fab      	ldr	r7, [pc, #684]	; (d03c8980 <main+0x1a74>)
d03c86d2:	783b      	ldrb	r3, [r7, #0]
d03c86d4:	2b04      	cmp	r3, #4
d03c86d6:	d105      	bne.n	d03c86e4 <main+0x17d8>
d03c86d8:	f01a 0f80 	tst.w	sl, #128	; 0x80
d03c86dc:	d102      	bne.n	d03c86e4 <main+0x17d8>
d03c86de:	2800      	cmp	r0, #0
d03c86e0:	f040 82ab 	bne.w	d03c8c3a <main+0x1d2e>
d03c86e4:	4da7      	ldr	r5, [pc, #668]	; (d03c8984 <main+0x1a78>)
d03c86e6:	782b      	ldrb	r3, [r5, #0]
d03c86e8:	b13b      	cbz	r3, d03c86fa <main+0x17ee>
d03c86ea:	4ba7      	ldr	r3, [pc, #668]	; (d03c8988 <main+0x1a7c>)
d03c86ec:	781a      	ldrb	r2, [r3, #0]
d03c86ee:	4ba7      	ldr	r3, [pc, #668]	; (d03c898c <main+0x1a80>)
d03c86f0:	701a      	strb	r2, [r3, #0]
d03c86f2:	f7f8 fbe1 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c86f6:	2300      	movs	r3, #0
d03c86f8:	702b      	strb	r3, [r5, #0]
d03c86fa:	f897 8000 	ldrb.w	r8, [r7]
d03c86fe:	4ba4      	ldr	r3, [pc, #656]	; (d03c8990 <main+0x1a84>)
d03c8700:	48a4      	ldr	r0, [pc, #656]	; (d03c8994 <main+0x1a88>)
d03c8702:	4443      	add	r3, r8
d03c8704:	7831      	ldrb	r1, [r6, #0]
d03c8706:	4058      	eors	r0, r3
d03c8708:	f7f8 fdae 	bl	d03c1268 <ui_hash_step>
d03c870c:	4ba2      	ldr	r3, [pc, #648]	; (d03c8998 <main+0x1a8c>)
d03c870e:	7819      	ldrb	r1, [r3, #0]
d03c8710:	f7f8 fdaa 	bl	d03c1268 <ui_hash_step>
d03c8714:	4aa1      	ldr	r2, [pc, #644]	; (d03c899c <main+0x1a90>)
d03c8716:	4603      	mov	r3, r0
d03c8718:	4615      	mov	r5, r2
d03c871a:	920b      	str	r2, [sp, #44]	; 0x2c
d03c871c:	2200      	movs	r2, #0
d03c871e:	4618      	mov	r0, r3
d03c8720:	f815 1b01 	ldrb.w	r1, [r5], #1
d03c8724:	f7f8 fda0 	bl	d03c1268 <ui_hash_step>
d03c8728:	3201      	adds	r2, #1
d03c872a:	4603      	mov	r3, r0
d03c872c:	b2d2      	uxtb	r2, r2
d03c872e:	2a04      	cmp	r2, #4
d03c8730:	d1f5      	bne.n	d03c871e <main+0x1812>
d03c8732:	4b96      	ldr	r3, [pc, #600]	; (d03c898c <main+0x1a80>)
d03c8734:	f893 9000 	ldrb.w	r9, [r3]
d03c8738:	4649      	mov	r1, r9
d03c873a:	f7f8 fd95 	bl	d03c1268 <ui_hash_step>
d03c873e:	4b98      	ldr	r3, [pc, #608]	; (d03c89a0 <main+0x1a94>)
d03c8740:	781a      	ldrb	r2, [r3, #0]
d03c8742:	4611      	mov	r1, r2
d03c8744:	f7f8 fd90 	bl	d03c1268 <ui_hash_step>
d03c8748:	4b96      	ldr	r3, [pc, #600]	; (d03c89a4 <main+0x1a98>)
d03c874a:	781b      	ldrb	r3, [r3, #0]
d03c874c:	4619      	mov	r1, r3
d03c874e:	9304      	str	r3, [sp, #16]
d03c8750:	f7f8 fd8a 	bl	d03c1268 <ui_hash_step>
d03c8754:	4b94      	ldr	r3, [pc, #592]	; (d03c89a8 <main+0x1a9c>)
d03c8756:	7819      	ldrb	r1, [r3, #0]
d03c8758:	f7f8 fd86 	bl	d03c1268 <ui_hash_step>
d03c875c:	4b93      	ldr	r3, [pc, #588]	; (d03c89ac <main+0x1aa0>)
d03c875e:	7819      	ldrb	r1, [r3, #0]
d03c8760:	f7f8 fd82 	bl	d03c1268 <ui_hash_step>
d03c8764:	f1b8 0f04 	cmp.w	r8, #4
d03c8768:	f040 8289 	bne.w	d03c8c7e <main+0x1d72>
d03c876c:	2a00      	cmp	r2, #0
d03c876e:	f000 8288 	beq.w	d03c8c82 <main+0x1d76>
d03c8772:	4b8f      	ldr	r3, [pc, #572]	; (d03c89b0 <main+0x1aa4>)
d03c8774:	7819      	ldrb	r1, [r3, #0]
d03c8776:	b2c9      	uxtb	r1, r1
d03c8778:	f7f8 fd76 	bl	d03c1268 <ui_hash_step>
d03c877c:	4b8d      	ldr	r3, [pc, #564]	; (d03c89b4 <main+0x1aa8>)
d03c877e:	7819      	ldrb	r1, [r3, #0]
d03c8780:	f7f8 fd72 	bl	d03c1268 <ui_hash_step>
d03c8784:	4b8c      	ldr	r3, [pc, #560]	; (d03c89b8 <main+0x1aac>)
d03c8786:	781a      	ldrb	r2, [r3, #0]
d03c8788:	4611      	mov	r1, r2
d03c878a:	f7f8 fd6d 	bl	d03c1268 <ui_hash_step>
d03c878e:	4b8b      	ldr	r3, [pc, #556]	; (d03c89bc <main+0x1ab0>)
d03c8790:	f893 a000 	ldrb.w	sl, [r3]
d03c8794:	4651      	mov	r1, sl
d03c8796:	f7f8 fd67 	bl	d03c1268 <ui_hash_step>
d03c879a:	4b89      	ldr	r3, [pc, #548]	; (d03c89c0 <main+0x1ab4>)
d03c879c:	781f      	ldrb	r7, [r3, #0]
d03c879e:	4639      	mov	r1, r7
d03c87a0:	f7f8 fd62 	bl	d03c1268 <ui_hash_step>
d03c87a4:	4b87      	ldr	r3, [pc, #540]	; (d03c89c4 <main+0x1ab8>)
d03c87a6:	7819      	ldrb	r1, [r3, #0]
d03c87a8:	f7f8 fd5e 	bl	d03c1268 <ui_hash_step>
d03c87ac:	4b86      	ldr	r3, [pc, #536]	; (d03c89c8 <main+0x1abc>)
d03c87ae:	7819      	ldrb	r1, [r3, #0]
d03c87b0:	f7f8 fd5a 	bl	d03c1268 <ui_hash_step>
d03c87b4:	4b85      	ldr	r3, [pc, #532]	; (d03c89cc <main+0x1ac0>)
d03c87b6:	7819      	ldrb	r1, [r3, #0]
d03c87b8:	f7f8 fd56 	bl	d03c1268 <ui_hash_step>
d03c87bc:	2a02      	cmp	r2, #2
d03c87be:	f040 8262 	bne.w	d03c8c86 <main+0x1d7a>
d03c87c2:	4b7b      	ldr	r3, [pc, #492]	; (d03c89b0 <main+0x1aa4>)
d03c87c4:	7819      	ldrb	r1, [r3, #0]
d03c87c6:	b2c9      	uxtb	r1, r1
d03c87c8:	f7f8 fd4e 	bl	d03c1268 <ui_hash_step>
d03c87cc:	4b80      	ldr	r3, [pc, #512]	; (d03c89d0 <main+0x1ac4>)
d03c87ce:	4d81      	ldr	r5, [pc, #516]	; (d03c89d4 <main+0x1ac8>)
d03c87d0:	7819      	ldrb	r1, [r3, #0]
d03c87d2:	f7f8 fd49 	bl	d03c1268 <ui_hash_step>
d03c87d6:	4b80      	ldr	r3, [pc, #512]	; (d03c89d8 <main+0x1acc>)
d03c87d8:	8819      	ldrh	r1, [r3, #0]
d03c87da:	f7f8 fd45 	bl	d03c1268 <ui_hash_step>
d03c87de:	4b7f      	ldr	r3, [pc, #508]	; (d03c89dc <main+0x1ad0>)
d03c87e0:	8819      	ldrh	r1, [r3, #0]
d03c87e2:	f7f8 fd41 	bl	d03c1268 <ui_hash_step>
d03c87e6:	4b7e      	ldr	r3, [pc, #504]	; (d03c89e0 <main+0x1ad4>)
d03c87e8:	7819      	ldrb	r1, [r3, #0]
d03c87ea:	f7f8 fd3d 	bl	d03c1268 <ui_hash_step>
d03c87ee:	4b7d      	ldr	r3, [pc, #500]	; (d03c89e4 <main+0x1ad8>)
d03c87f0:	7819      	ldrb	r1, [r3, #0]
d03c87f2:	f7f8 fd39 	bl	d03c1268 <ui_hash_step>
d03c87f6:	4b7c      	ldr	r3, [pc, #496]	; (d03c89e8 <main+0x1adc>)
d03c87f8:	7819      	ldrb	r1, [r3, #0]
d03c87fa:	f7f8 fd35 	bl	d03c1268 <ui_hash_step>
d03c87fe:	4b7b      	ldr	r3, [pc, #492]	; (d03c89ec <main+0x1ae0>)
d03c8800:	7819      	ldrb	r1, [r3, #0]
d03c8802:	f7f8 fd31 	bl	d03c1268 <ui_hash_step>
d03c8806:	4b7a      	ldr	r3, [pc, #488]	; (d03c89f0 <main+0x1ae4>)
d03c8808:	7819      	ldrb	r1, [r3, #0]
d03c880a:	f7f8 fd2d 	bl	d03c1268 <ui_hash_step>
d03c880e:	4b79      	ldr	r3, [pc, #484]	; (d03c89f4 <main+0x1ae8>)
d03c8810:	7819      	ldrb	r1, [r3, #0]
d03c8812:	f7f8 fd29 	bl	d03c1268 <ui_hash_step>
d03c8816:	4b78      	ldr	r3, [pc, #480]	; (d03c89f8 <main+0x1aec>)
d03c8818:	8819      	ldrh	r1, [r3, #0]
d03c881a:	f7f8 fd25 	bl	d03c1268 <ui_hash_step>
d03c881e:	4b77      	ldr	r3, [pc, #476]	; (d03c89fc <main+0x1af0>)
d03c8820:	7819      	ldrb	r1, [r3, #0]
d03c8822:	f7f8 fd21 	bl	d03c1268 <ui_hash_step>
d03c8826:	4b76      	ldr	r3, [pc, #472]	; (d03c8a00 <main+0x1af4>)
d03c8828:	7819      	ldrb	r1, [r3, #0]
d03c882a:	f7f8 fd1d 	bl	d03c1268 <ui_hash_step>
d03c882e:	4b75      	ldr	r3, [pc, #468]	; (d03c8a04 <main+0x1af8>)
d03c8830:	7819      	ldrb	r1, [r3, #0]
d03c8832:	f7f8 fd19 	bl	d03c1268 <ui_hash_step>
d03c8836:	4b74      	ldr	r3, [pc, #464]	; (d03c8a08 <main+0x1afc>)
d03c8838:	6819      	ldr	r1, [r3, #0]
d03c883a:	f7f8 fd15 	bl	d03c1268 <ui_hash_step>
d03c883e:	2200      	movs	r2, #0
d03c8840:	4603      	mov	r3, r0
d03c8842:	f815 1b01 	ldrb.w	r1, [r5], #1
d03c8846:	4618      	mov	r0, r3
d03c8848:	f7f8 fd0e 	bl	d03c1268 <ui_hash_step>
d03c884c:	4603      	mov	r3, r0
d03c884e:	b119      	cbz	r1, d03c8858 <main+0x194c>
d03c8850:	3201      	adds	r2, #1
d03c8852:	b2d2      	uxtb	r2, r2
d03c8854:	2a20      	cmp	r2, #32
d03c8856:	d1f4      	bne.n	d03c8842 <main+0x1936>
d03c8858:	4d6c      	ldr	r5, [pc, #432]	; (d03c8a0c <main+0x1b00>)
d03c885a:	2200      	movs	r2, #0
d03c885c:	f815 1b01 	ldrb.w	r1, [r5], #1
d03c8860:	4618      	mov	r0, r3
d03c8862:	f7f8 fd01 	bl	d03c1268 <ui_hash_step>
d03c8866:	4603      	mov	r3, r0
d03c8868:	b119      	cbz	r1, d03c8872 <main+0x1966>
d03c886a:	3201      	adds	r2, #1
d03c886c:	b2d2      	uxtb	r2, r2
d03c886e:	2a60      	cmp	r2, #96	; 0x60
d03c8870:	d1f4      	bne.n	d03c885c <main+0x1950>
d03c8872:	4a67      	ldr	r2, [pc, #412]	; (d03c8a10 <main+0x1b04>)
d03c8874:	2600      	movs	r6, #0
d03c8876:	4967      	ldr	r1, [pc, #412]	; (d03c8a14 <main+0x1b08>)
d03c8878:	eb02 1247 	add.w	r2, r2, r7, lsl #5
d03c887c:	4439      	add	r1, r7
d03c887e:	9109      	str	r1, [sp, #36]	; 0x24
d03c8880:	19b9      	adds	r1, r7, r6
d03c8882:	b2c9      	uxtb	r1, r1
d03c8884:	458a      	cmp	sl, r1
d03c8886:	d91a      	bls.n	d03c88be <main+0x19b2>
d03c8888:	9809      	ldr	r0, [sp, #36]	; 0x24
d03c888a:	2500      	movs	r5, #0
d03c888c:	f810 1b01 	ldrb.w	r1, [r0], #1
d03c8890:	9009      	str	r0, [sp, #36]	; 0x24
d03c8892:	4618      	mov	r0, r3
d03c8894:	f7f8 fce8 	bl	d03c1268 <ui_hash_step>
d03c8898:	4603      	mov	r3, r0
d03c889a:	920a      	str	r2, [sp, #40]	; 0x28
d03c889c:	980a      	ldr	r0, [sp, #40]	; 0x28
d03c889e:	f810 1b01 	ldrb.w	r1, [r0], #1
d03c88a2:	900a      	str	r0, [sp, #40]	; 0x28
d03c88a4:	4618      	mov	r0, r3
d03c88a6:	f7f8 fcdf 	bl	d03c1268 <ui_hash_step>
d03c88aa:	4603      	mov	r3, r0
d03c88ac:	b119      	cbz	r1, d03c88b6 <main+0x19aa>
d03c88ae:	3501      	adds	r5, #1
d03c88b0:	b2ed      	uxtb	r5, r5
d03c88b2:	2d20      	cmp	r5, #32
d03c88b4:	d1f2      	bne.n	d03c889c <main+0x1990>
d03c88b6:	3601      	adds	r6, #1
d03c88b8:	3220      	adds	r2, #32
d03c88ba:	2e07      	cmp	r6, #7
d03c88bc:	d1e0      	bne.n	d03c8880 <main+0x1974>
d03c88be:	9a04      	ldr	r2, [sp, #16]
d03c88c0:	2aff      	cmp	r2, #255	; 0xff
d03c88c2:	d018      	beq.n	d03c88f6 <main+0x19ea>
d03c88c4:	4a54      	ldr	r2, [pc, #336]	; (d03c8a18 <main+0x1b0c>)
d03c88c6:	2500      	movs	r5, #0
d03c88c8:	eb02 0289 	add.w	r2, r2, r9, lsl #2
d03c88cc:	eb09 0105 	add.w	r1, r9, r5
d03c88d0:	b2c9      	uxtb	r1, r1
d03c88d2:	295f      	cmp	r1, #95	; 0x5f
d03c88d4:	d80f      	bhi.n	d03c88f6 <main+0x19ea>
d03c88d6:	7811      	ldrb	r1, [r2, #0]
d03c88d8:	4618      	mov	r0, r3
d03c88da:	f7f8 fcc5 	bl	d03c1268 <ui_hash_step>
d03c88de:	3501      	adds	r5, #1
d03c88e0:	7851      	ldrb	r1, [r2, #1]
d03c88e2:	f7f8 fcc1 	bl	d03c1268 <ui_hash_step>
d03c88e6:	8851      	ldrh	r1, [r2, #2]
d03c88e8:	f7f8 fcbe 	bl	d03c1268 <ui_hash_step>
d03c88ec:	2d08      	cmp	r5, #8
d03c88ee:	4603      	mov	r3, r0
d03c88f0:	f102 0204 	add.w	r2, r2, #4
d03c88f4:	d1ea      	bne.n	d03c88cc <main+0x19c0>
d03c88f6:	4a20      	ldr	r2, [pc, #128]	; (d03c8978 <main+0x1a6c>)
d03c88f8:	4e48      	ldr	r6, [pc, #288]	; (d03c8a1c <main+0x1b10>)
d03c88fa:	4d49      	ldr	r5, [pc, #292]	; (d03c8a20 <main+0x1b14>)
d03c88fc:	f102 0710 	add.w	r7, r2, #16
d03c8900:	f812 1b01 	ldrb.w	r1, [r2], #1
d03c8904:	4618      	mov	r0, r3
d03c8906:	f7f8 fcaf 	bl	d03c1268 <ui_hash_step>
d03c890a:	f816 1b01 	ldrb.w	r1, [r6], #1
d03c890e:	f7f8 fcab 	bl	d03c1268 <ui_hash_step>
d03c8912:	f815 1b01 	ldrb.w	r1, [r5], #1
d03c8916:	f7f8 fca7 	bl	d03c1268 <ui_hash_step>
d03c891a:	4297      	cmp	r7, r2
d03c891c:	4603      	mov	r3, r0
d03c891e:	d1ef      	bne.n	d03c8900 <main+0x19f4>
d03c8920:	4b40      	ldr	r3, [pc, #256]	; (d03c8a24 <main+0x1b18>)
d03c8922:	4d41      	ldr	r5, [pc, #260]	; (d03c8a28 <main+0x1b1c>)
d03c8924:	781a      	ldrb	r2, [r3, #0]
d03c8926:	4e41      	ldr	r6, [pc, #260]	; (d03c8a2c <main+0x1b20>)
d03c8928:	f002 0101 	and.w	r1, r2, #1
d03c892c:	f7f8 fc9c 	bl	d03c1268 <ui_hash_step>
d03c8930:	493f      	ldr	r1, [pc, #252]	; (d03c8a30 <main+0x1b24>)
d03c8932:	680b      	ldr	r3, [r1, #0]
d03c8934:	4283      	cmp	r3, r0
d03c8936:	d107      	bne.n	d03c8948 <main+0x1a3c>
d03c8938:	f1b8 0f05 	cmp.w	r8, #5
d03c893c:	f000 81b8 	beq.w	d03c8cb0 <main+0x1da4>
d03c8940:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d03c8942:	4293      	cmp	r3, r2
d03c8944:	f000 8386 	beq.w	d03c9054 <main+0x2148>
d03c8948:	2301      	movs	r3, #1
d03c894a:	f1b8 0f05 	cmp.w	r8, #5
d03c894e:	6008      	str	r0, [r1, #0]
d03c8950:	7033      	strb	r3, [r6, #0]
d03c8952:	f000 81af 	beq.w	d03c8cb4 <main+0x1da8>
d03c8956:	f7fc f90d 	bl	d03c4b74 <ui_redraw_backbuffer>
d03c895a:	2300      	movs	r3, #0
d03c895c:	7033      	strb	r3, [r6, #0]
d03c895e:	4c32      	ldr	r4, [pc, #200]	; (d03c8a28 <main+0x1b1c>)
d03c8960:	f7f9 fae4 	bl	d03c1f2c <flip_front_buffer>
d03c8964:	e066      	b.n	d03c8a34 <main+0x1b28>
d03c8966:	bf00      	nop
d03c8968:	d03cf400 	.word	0xd03cf400
d03c896c:	d03cf3d8 	.word	0xd03cf3d8
d03c8970:	d03cda77 	.word	0xd03cda77
d03c8974:	d03cf3ca 	.word	0xd03cf3ca
d03c8978:	d03ccd64 	.word	0xd03ccd64
d03c897c:	d03cf58f 	.word	0xd03cf58f
d03c8980:	d03cf330 	.word	0xd03cf330
d03c8984:	d03cf58c 	.word	0xd03cf58c
d03c8988:	d03cf58d 	.word	0xd03cf58d
d03c898c:	d03cf591 	.word	0xd03cf591
d03c8990:	05a6126a 	.word	0x05a6126a
d03c8994:	811c9dc5 	.word	0x811c9dc5
d03c8998:	d03cda32 	.word	0xd03cda32
d03c899c:	d03cf3a4 	.word	0xd03cf3a4
d03c89a0:	d03cf583 	.word	0xd03cf583
d03c89a4:	d03cf588 	.word	0xd03cf588
d03c89a8:	d03cf589 	.word	0xd03cf589
d03c89ac:	d03cf582 	.word	0xd03cf582
d03c89b0:	d03cf58a 	.word	0xd03cf58a
d03c89b4:	d03cda33 	.word	0xd03cda33
d03c89b8:	d03cda34 	.word	0xd03cda34
d03c89bc:	d03cda78 	.word	0xd03cda78
d03c89c0:	d03ce319 	.word	0xd03ce319
d03c89c4:	d03ce31a 	.word	0xd03ce31a
d03c89c8:	d03cf3a8 	.word	0xd03cf3a8
d03c89cc:	d03cf3a9 	.word	0xd03cf3a9
d03c89d0:	d03cf391 	.word	0xd03cf391
d03c89d4:	d03cf3aa 	.word	0xd03cf3aa
d03c89d8:	d03ccf8e 	.word	0xd03ccf8e
d03c89dc:	d03ccd8a 	.word	0xd03ccd8a
d03c89e0:	d03ccd88 	.word	0xd03ccd88
d03c89e4:	d03cd0fc 	.word	0xd03cd0fc
d03c89e8:	d03cd105 	.word	0xd03cd105
d03c89ec:	d03cd104 	.word	0xd03cd104
d03c89f0:	d03ccfb4 	.word	0xd03ccfb4
d03c89f4:	d03ccfb8 	.word	0xd03ccfb8
d03c89f8:	d03ccfac 	.word	0xd03ccfac
d03c89fc:	d03cd106 	.word	0xd03cd106
d03c8a00:	d03cd107 	.word	0xd03cd107
d03c8a04:	d03ccfca 	.word	0xd03ccfca
d03c8a08:	d03ccfd4 	.word	0xd03ccfd4
d03c8a0c:	d03cda79 	.word	0xd03cda79
d03c8a10:	d03cdb19 	.word	0xd03cdb19
d03c8a14:	d03cdad9 	.word	0xd03cdad9
d03c8a18:	d03cf402 	.word	0xd03cf402
d03c8a1c:	d03ccd74 	.word	0xd03ccd74
d03c8a20:	d03ccd54 	.word	0xd03ccd54
d03c8a24:	d03ce31b 	.word	0xd03ce31b
d03c8a28:	2001f000 	.word	0x2001f000
d03c8a2c:	d03cd140 	.word	0xd03cd140
d03c8a30:	d03cd144 	.word	0xd03cd144
d03c8a34:	4f95      	ldr	r7, [pc, #596]	; (d03c8c8c <main+0x1d80>)
d03c8a36:	7b23      	ldrb	r3, [r4, #12]
d03c8a38:	4626      	mov	r6, r4
d03c8a3a:	7b62      	ldrb	r2, [r4, #13]
d03c8a3c:	46b8      	mov	r8, r7
d03c8a3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a42:	7ba2      	ldrb	r2, [r4, #14]
d03c8a44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a48:	7be2      	ldrb	r2, [r4, #15]
d03c8a4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a4e:	685b      	ldr	r3, [r3, #4]
d03c8a50:	681b      	ldr	r3, [r3, #0]
d03c8a52:	4798      	blx	r3
d03c8a54:	783b      	ldrb	r3, [r7, #0]
d03c8a56:	2b05      	cmp	r3, #5
d03c8a58:	f040 8320 	bne.w	d03c909c <main+0x2190>
d03c8a5c:	2600      	movs	r6, #0
d03c8a5e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d03c8a60:	20e0      	movs	r0, #224	; 0xe0
d03c8a62:	4f8b      	ldr	r7, [pc, #556]	; (d03c8c90 <main+0x1d84>)
d03c8a64:	701e      	strb	r6, [r3, #0]
d03c8a66:	46b2      	mov	sl, r6
d03c8a68:	7b23      	ldrb	r3, [r4, #12]
d03c8a6a:	f04f 091c 	mov.w	r9, #28
d03c8a6e:	7b62      	ldrb	r2, [r4, #13]
d03c8a70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a74:	7ba2      	ldrb	r2, [r4, #14]
d03c8a76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a7a:	7be2      	ldrb	r2, [r4, #15]
d03c8a7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a80:	685b      	ldr	r3, [r3, #4]
d03c8a82:	68db      	ldr	r3, [r3, #12]
d03c8a84:	4798      	blx	r3
d03c8a86:	7b23      	ldrb	r3, [r4, #12]
d03c8a88:	7b62      	ldrb	r2, [r4, #13]
d03c8a8a:	4631      	mov	r1, r6
d03c8a8c:	4630      	mov	r0, r6
d03c8a8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8a92:	7ba2      	ldrb	r2, [r4, #14]
d03c8a94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8a98:	7be2      	ldrb	r2, [r4, #15]
d03c8a9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8a9e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8aa2:	685b      	ldr	r3, [r3, #4]
d03c8aa4:	685d      	ldr	r5, [r3, #4]
d03c8aa6:	2340      	movs	r3, #64	; 0x40
d03c8aa8:	47a8      	blx	r5
d03c8aaa:	7b23      	ldrb	r3, [r4, #12]
d03c8aac:	7b62      	ldrb	r2, [r4, #13]
d03c8aae:	2015      	movs	r0, #21
d03c8ab0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ab4:	7ba2      	ldrb	r2, [r4, #14]
d03c8ab6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8aba:	7be2      	ldrb	r2, [r4, #15]
d03c8abc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ac0:	685b      	ldr	r3, [r3, #4]
d03c8ac2:	68db      	ldr	r3, [r3, #12]
d03c8ac4:	4798      	blx	r3
d03c8ac6:	7b23      	ldrb	r3, [r4, #12]
d03c8ac8:	7b62      	ldrb	r2, [r4, #13]
d03c8aca:	4631      	mov	r1, r6
d03c8acc:	4630      	mov	r0, r6
d03c8ace:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ad2:	7ba2      	ldrb	r2, [r4, #14]
d03c8ad4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8ad8:	7be2      	ldrb	r2, [r4, #15]
d03c8ada:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ade:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8ae2:	685b      	ldr	r3, [r3, #4]
d03c8ae4:	685d      	ldr	r5, [r3, #4]
d03c8ae6:	2302      	movs	r3, #2
d03c8ae8:	47a8      	blx	r5
d03c8aea:	7b23      	ldrb	r3, [r4, #12]
d03c8aec:	7b62      	ldrb	r2, [r4, #13]
d03c8aee:	201a      	movs	r0, #26
d03c8af0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8af4:	7ba2      	ldrb	r2, [r4, #14]
d03c8af6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8afa:	7be2      	ldrb	r2, [r4, #15]
d03c8afc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b00:	685b      	ldr	r3, [r3, #4]
d03c8b02:	68db      	ldr	r3, [r3, #12]
d03c8b04:	4798      	blx	r3
d03c8b06:	7b23      	ldrb	r3, [r4, #12]
d03c8b08:	7b62      	ldrb	r2, [r4, #13]
d03c8b0a:	213f      	movs	r1, #63	; 0x3f
d03c8b0c:	4630      	mov	r0, r6
d03c8b0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b12:	7ba2      	ldrb	r2, [r4, #14]
d03c8b14:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b18:	7be2      	ldrb	r2, [r4, #15]
d03c8b1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b1e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8b22:	685b      	ldr	r3, [r3, #4]
d03c8b24:	685d      	ldr	r5, [r3, #4]
d03c8b26:	2301      	movs	r3, #1
d03c8b28:	47a8      	blx	r5
d03c8b2a:	7b23      	ldrb	r3, [r4, #12]
d03c8b2c:	7b62      	ldrb	r2, [r4, #13]
d03c8b2e:	20e8      	movs	r0, #232	; 0xe8
d03c8b30:	2508      	movs	r5, #8
d03c8b32:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b36:	7ba2      	ldrb	r2, [r4, #14]
d03c8b38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b3c:	7be2      	ldrb	r2, [r4, #15]
d03c8b3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b42:	685b      	ldr	r3, [r3, #4]
d03c8b44:	68db      	ldr	r3, [r3, #12]
d03c8b46:	4798      	blx	r3
d03c8b48:	7b23      	ldrb	r3, [r4, #12]
d03c8b4a:	7b62      	ldrb	r2, [r4, #13]
d03c8b4c:	2108      	movs	r1, #8
d03c8b4e:	200c      	movs	r0, #12
d03c8b50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b54:	7ba2      	ldrb	r2, [r4, #14]
d03c8b56:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b5a:	7be2      	ldrb	r2, [r4, #15]
d03c8b5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b60:	4a4c      	ldr	r2, [pc, #304]	; (d03c8c94 <main+0x1d88>)
d03c8b62:	685b      	ldr	r3, [r3, #4]
d03c8b64:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c8b66:	4798      	blx	r3
d03c8b68:	7b23      	ldrb	r3, [r4, #12]
d03c8b6a:	7b62      	ldrb	r2, [r4, #13]
d03c8b6c:	20e7      	movs	r0, #231	; 0xe7
d03c8b6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b72:	7ba2      	ldrb	r2, [r4, #14]
d03c8b74:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b78:	7be2      	ldrb	r2, [r4, #15]
d03c8b7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b7e:	685b      	ldr	r3, [r3, #4]
d03c8b80:	68db      	ldr	r3, [r3, #12]
d03c8b82:	4798      	blx	r3
d03c8b84:	7b23      	ldrb	r3, [r4, #12]
d03c8b86:	7b62      	ldrb	r2, [r4, #13]
d03c8b88:	2108      	movs	r1, #8
d03c8b8a:	f44f 7087 	mov.w	r0, #270	; 0x10e
d03c8b8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8b92:	7ba2      	ldrb	r2, [r4, #14]
d03c8b94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8b98:	7be2      	ldrb	r2, [r4, #15]
d03c8b9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8b9e:	4a3e      	ldr	r2, [pc, #248]	; (d03c8c98 <main+0x1d8c>)
d03c8ba0:	685b      	ldr	r3, [r3, #4]
d03c8ba2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c8ba4:	4798      	blx	r3
d03c8ba6:	4633      	mov	r3, r6
d03c8ba8:	f857 1b04 	ldr.w	r1, [r7], #4
d03c8bac:	1c5e      	adds	r6, r3, #1
d03c8bae:	f8cd a00c 	str.w	sl, [sp, #12]
d03c8bb2:	b2db      	uxtb	r3, r3
d03c8bb4:	f898 2000 	ldrb.w	r2, [r8]
d03c8bb8:	b2b0      	uxth	r0, r6
d03c8bba:	9101      	str	r1, [sp, #4]
d03c8bbc:	b229      	sxth	r1, r5
d03c8bbe:	1ad2      	subs	r2, r2, r3
d03c8bc0:	f8cd 9000 	str.w	r9, [sp]
d03c8bc4:	354c      	adds	r5, #76	; 0x4c
d03c8bc6:	4253      	negs	r3, r2
d03c8bc8:	b2ad      	uxth	r5, r5
d03c8bca:	4153      	adcs	r3, r2
d03c8bcc:	2220      	movs	r2, #32
d03c8bce:	9302      	str	r3, [sp, #8]
d03c8bd0:	2344      	movs	r3, #68	; 0x44
d03c8bd2:	f7fa fc75 	bl	d03c34c0 <ui_create_button>
d03c8bd6:	2e06      	cmp	r6, #6
d03c8bd8:	4633      	mov	r3, r6
d03c8bda:	d1e5      	bne.n	d03c8ba8 <main+0x1c9c>
d03c8bdc:	7b23      	ldrb	r3, [r4, #12]
d03c8bde:	20e0      	movs	r0, #224	; 0xe0
d03c8be0:	7b62      	ldrb	r2, [r4, #13]
d03c8be2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8be6:	7ba2      	ldrb	r2, [r4, #14]
d03c8be8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8bec:	7be2      	ldrb	r2, [r4, #15]
d03c8bee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8bf2:	685b      	ldr	r3, [r3, #4]
d03c8bf4:	68db      	ldr	r3, [r3, #12]
d03c8bf6:	4798      	blx	r3
d03c8bf8:	7b23      	ldrb	r3, [r4, #12]
d03c8bfa:	7b62      	ldrb	r2, [r4, #13]
d03c8bfc:	21fc      	movs	r1, #252	; 0xfc
d03c8bfe:	2000      	movs	r0, #0
d03c8c00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8c04:	7ba2      	ldrb	r2, [r4, #14]
d03c8c06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8c0a:	7be2      	ldrb	r2, [r4, #15]
d03c8c0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8c10:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c8c14:	685b      	ldr	r3, [r3, #4]
d03c8c16:	685d      	ldr	r5, [r3, #4]
d03c8c18:	2344      	movs	r3, #68	; 0x44
d03c8c1a:	47a8      	blx	r5
d03c8c1c:	f7fb fca6 	bl	d03c456c <ui_draw_seq>
d03c8c20:	4b1e      	ldr	r3, [pc, #120]	; (d03c8c9c <main+0x1d90>)
d03c8c22:	781b      	ldrb	r3, [r3, #0]
d03c8c24:	2b00      	cmp	r3, #0
d03c8c26:	f040 821a 	bne.w	d03c905e <main+0x2152>
d03c8c2a:	4b1d      	ldr	r3, [pc, #116]	; (d03c8ca0 <main+0x1d94>)
d03c8c2c:	781b      	ldrb	r3, [r3, #0]
d03c8c2e:	2b00      	cmp	r3, #0
d03c8c30:	f040 8217 	bne.w	d03c9062 <main+0x2156>
d03c8c34:	f7f8 fc0a 	bl	d03c144c <ui_draw_seq_overlay>
d03c8c38:	e215      	b.n	d03c9066 <main+0x215a>
d03c8c3a:	4b1a      	ldr	r3, [pc, #104]	; (d03c8ca4 <main+0x1d98>)
d03c8c3c:	781b      	ldrb	r3, [r3, #0]
d03c8c3e:	b123      	cbz	r3, d03c8c4a <main+0x1d3e>
d03c8c40:	4b19      	ldr	r3, [pc, #100]	; (d03c8ca8 <main+0x1d9c>)
d03c8c42:	781b      	ldrb	r3, [r3, #0]
d03c8c44:	4553      	cmp	r3, sl
d03c8c46:	f43f ad4d 	beq.w	d03c86e4 <main+0x17d8>
d03c8c4a:	4b18      	ldr	r3, [pc, #96]	; (d03c8cac <main+0x1da0>)
d03c8c4c:	2200      	movs	r2, #0
d03c8c4e:	7819      	ldrb	r1, [r3, #0]
d03c8c50:	fa5f f882 	uxtb.w	r8, r2
d03c8c54:	b131      	cbz	r1, d03c8c64 <main+0x1d58>
d03c8c56:	7859      	ldrb	r1, [r3, #1]
d03c8c58:	4549      	cmp	r1, r9
d03c8c5a:	d103      	bne.n	d03c8c64 <main+0x1d58>
d03c8c5c:	7919      	ldrb	r1, [r3, #4]
d03c8c5e:	4551      	cmp	r1, sl
d03c8c60:	f000 84b4 	beq.w	d03c95cc <main+0x26c0>
d03c8c64:	3201      	adds	r2, #1
d03c8c66:	3308      	adds	r3, #8
d03c8c68:	2a06      	cmp	r2, #6
d03c8c6a:	d1f0      	bne.n	d03c8c4e <main+0x1d42>
d03c8c6c:	e53a      	b.n	d03c86e4 <main+0x17d8>
d03c8c6e:	3208      	adds	r2, #8
d03c8c70:	b2d2      	uxtb	r2, r2
d03c8c72:	4293      	cmp	r3, r2
d03c8c74:	f0c0 84d8 	bcc.w	d03c9628 <main+0x271c>
d03c8c78:	3b07      	subs	r3, #7
d03c8c7a:	f000 bcd4 	b.w	d03c9626 <main+0x271a>
d03c8c7e:	2100      	movs	r1, #0
d03c8c80:	e57a      	b.n	d03c8778 <main+0x186c>
d03c8c82:	4611      	mov	r1, r2
d03c8c84:	e578      	b.n	d03c8778 <main+0x186c>
d03c8c86:	2100      	movs	r1, #0
d03c8c88:	e59e      	b.n	d03c87c8 <main+0x18bc>
d03c8c8a:	bf00      	nop
d03c8c8c:	d03cf330 	.word	0xd03cf330
d03c8c90:	d03cc4e8 	.word	0xd03cc4e8
d03c8c94:	d03cb85d 	.word	0xd03cb85d
d03c8c98:	d03cb872 	.word	0xd03cb872
d03c8c9c:	d03cda33 	.word	0xd03cda33
d03c8ca0:	d03cda34 	.word	0xd03cda34
d03c8ca4:	d03cf583 	.word	0xd03cf583
d03c8ca8:	d03cf588 	.word	0xd03cf588
d03c8cac:	d03cd108 	.word	0xd03cd108
d03c8cb0:	7833      	ldrb	r3, [r6, #0]
d03c8cb2:	b123      	cbz	r3, d03c8cbe <main+0x1db2>
d03c8cb4:	4b92      	ldr	r3, [pc, #584]	; (d03c8f00 <main+0x1ff4>)
d03c8cb6:	2201      	movs	r2, #1
d03c8cb8:	701a      	strb	r2, [r3, #0]
d03c8cba:	2300      	movs	r3, #0
d03c8cbc:	7033      	strb	r3, [r6, #0]
d03c8cbe:	7b2b      	ldrb	r3, [r5, #12]
d03c8cc0:	7b6a      	ldrb	r2, [r5, #13]
d03c8cc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8cc6:	7baa      	ldrb	r2, [r5, #14]
d03c8cc8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8ccc:	7bea      	ldrb	r2, [r5, #15]
d03c8cce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8cd2:	681b      	ldr	r3, [r3, #0]
d03c8cd4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d03c8cd6:	4798      	blx	r3
d03c8cd8:	4b8a      	ldr	r3, [pc, #552]	; (d03c8f04 <main+0x1ff8>)
d03c8cda:	ee08 0a10 	vmov	s16, r0
d03c8cde:	681b      	ldr	r3, [r3, #0]
d03c8ce0:	2b00      	cmp	r3, #0
d03c8ce2:	f43f ae3c 	beq.w	d03c895e <main+0x1a52>
d03c8ce6:	4b88      	ldr	r3, [pc, #544]	; (d03c8f08 <main+0x1ffc>)
d03c8ce8:	4885      	ldr	r0, [pc, #532]	; (d03c8f00 <main+0x1ff4>)
d03c8cea:	681f      	ldr	r7, [r3, #0]
d03c8cec:	4b87      	ldr	r3, [pc, #540]	; (d03c8f0c <main+0x2000>)
d03c8cee:	4e88      	ldr	r6, [pc, #544]	; (d03c8f10 <main+0x2004>)
d03c8cf0:	781b      	ldrb	r3, [r3, #0]
d03c8cf2:	b13b      	cbz	r3, d03c8d04 <main+0x1df8>
d03c8cf4:	6831      	ldr	r1, [r6, #0]
d03c8cf6:	1a7a      	subs	r2, r7, r1
d03c8cf8:	f5a2 71ae 	sub.w	r1, r2, #348	; 0x15c
d03c8cfc:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d03c8d00:	f240 80c8 	bls.w	d03c8e94 <main+0x1f88>
d03c8d04:	2301      	movs	r3, #1
d03c8d06:	f5a7 77f0 	sub.w	r7, r7, #480	; 0x1e0
d03c8d0a:	7003      	strb	r3, [r0, #0]
d03c8d0c:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d03c8d10:	6037      	str	r7, [r6, #0]
d03c8d12:	930a      	str	r3, [sp, #40]	; 0x28
d03c8d14:	7b23      	ldrb	r3, [r4, #12]
d03c8d16:	f04f 0a06 	mov.w	sl, #6
d03c8d1a:	7b62      	ldrb	r2, [r4, #13]
d03c8d1c:	4879      	ldr	r0, [pc, #484]	; (d03c8f04 <main+0x1ff8>)
d03c8d1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d22:	7ba2      	ldrb	r2, [r4, #14]
d03c8d24:	f8df 81ec 	ldr.w	r8, [pc, #492]	; d03c8f14 <main+0x2008>
d03c8d28:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8d2c:	7be2      	ldrb	r2, [r4, #15]
d03c8d2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8d32:	681b      	ldr	r3, [r3, #0]
d03c8d34:	6a1b      	ldr	r3, [r3, #32]
d03c8d36:	4798      	blx	r3
d03c8d38:	7b23      	ldrb	r3, [r4, #12]
d03c8d3a:	7b62      	ldrb	r2, [r4, #13]
d03c8d3c:	4871      	ldr	r0, [pc, #452]	; (d03c8f04 <main+0x1ff8>)
d03c8d3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d42:	7ba2      	ldrb	r2, [r4, #14]
d03c8d44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8d48:	7be2      	ldrb	r2, [r4, #15]
d03c8d4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8d4e:	681b      	ldr	r3, [r3, #0]
d03c8d50:	699b      	ldr	r3, [r3, #24]
d03c8d52:	4798      	blx	r3
d03c8d54:	6836      	ldr	r6, [r6, #0]
d03c8d56:	f7fa f8b1 	bl	d03c2ebc <seq_grid_ticks>
d03c8d5a:	4604      	mov	r4, r0
d03c8d5c:	4632      	mov	r2, r6
d03c8d5e:	17f3      	asrs	r3, r6, #31
d03c8d60:	2e00      	cmp	r6, #0
d03c8d62:	f04f 0000 	mov.w	r0, #0
d03c8d66:	e9cd 2304 	strd	r2, r3, [sp, #16]
d03c8d6a:	9b04      	ldr	r3, [sp, #16]
d03c8d6c:	bfd8      	it	le
d03c8d6e:	2600      	movle	r6, #0
d03c8d70:	f513 7370 	adds.w	r3, r3, #960	; 0x3c0
d03c8d74:	9306      	str	r3, [sp, #24]
d03c8d76:	9b05      	ldr	r3, [sp, #20]
d03c8d78:	f143 0300 	adc.w	r3, r3, #0
d03c8d7c:	9307      	str	r3, [sp, #28]
d03c8d7e:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
d03c8d82:	2a00      	cmp	r2, #0
d03c8d84:	f173 0300 	sbcs.w	r3, r3, #0
d03c8d88:	bfbe      	ittt	lt
d03c8d8a:	2200      	movlt	r2, #0
d03c8d8c:	2300      	movlt	r3, #0
d03c8d8e:	e9cd 2306 	strdlt	r2, r3, [sp, #24]
d03c8d92:	9b06      	ldr	r3, [sp, #24]
d03c8d94:	9309      	str	r3, [sp, #36]	; 0x24
d03c8d96:	7b2b      	ldrb	r3, [r5, #12]
d03c8d98:	7b6a      	ldrb	r2, [r5, #13]
d03c8d9a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8d9e:	7baa      	ldrb	r2, [r5, #14]
d03c8da0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8da4:	7bea      	ldrb	r2, [r5, #15]
d03c8da6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8daa:	685b      	ldr	r3, [r3, #4]
d03c8dac:	68db      	ldr	r3, [r3, #12]
d03c8dae:	4798      	blx	r3
d03c8db0:	7b2b      	ldrb	r3, [r5, #12]
d03c8db2:	7b6a      	ldrb	r2, [r5, #13]
d03c8db4:	2100      	movs	r1, #0
d03c8db6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8dba:	7baa      	ldrb	r2, [r5, #14]
d03c8dbc:	4608      	mov	r0, r1
d03c8dbe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8dc2:	7bea      	ldrb	r2, [r5, #15]
d03c8dc4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8dc8:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8dcc:	685b      	ldr	r3, [r3, #4]
d03c8dce:	685f      	ldr	r7, [r3, #4]
d03c8dd0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c8dd4:	47b8      	blx	r7
d03c8dd6:	7b2b      	ldrb	r3, [r5, #12]
d03c8dd8:	7b6a      	ldrb	r2, [r5, #13]
d03c8dda:	20e1      	movs	r0, #225	; 0xe1
d03c8ddc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8de0:	7baa      	ldrb	r2, [r5, #14]
d03c8de2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8de6:	7bea      	ldrb	r2, [r5, #15]
d03c8de8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8dec:	685b      	ldr	r3, [r3, #4]
d03c8dee:	68db      	ldr	r3, [r3, #12]
d03c8df0:	4798      	blx	r3
d03c8df2:	7b2b      	ldrb	r3, [r5, #12]
d03c8df4:	7b6a      	ldrb	r2, [r5, #13]
d03c8df6:	2140      	movs	r1, #64	; 0x40
d03c8df8:	2000      	movs	r0, #0
d03c8dfa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8dfe:	7baa      	ldrb	r2, [r5, #14]
d03c8e00:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8e04:	7bea      	ldrb	r2, [r5, #15]
d03c8e06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e0a:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8e0e:	685b      	ldr	r3, [r3, #4]
d03c8e10:	685f      	ldr	r7, [r3, #4]
d03c8e12:	23bc      	movs	r3, #188	; 0xbc
d03c8e14:	47b8      	blx	r7
d03c8e16:	7b2b      	ldrb	r3, [r5, #12]
d03c8e18:	7b6a      	ldrb	r2, [r5, #13]
d03c8e1a:	27bc      	movs	r7, #188	; 0xbc
d03c8e1c:	2015      	movs	r0, #21
d03c8e1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8e22:	7baa      	ldrb	r2, [r5, #14]
d03c8e24:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8e28:	7bea      	ldrb	r2, [r5, #15]
d03c8e2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e2e:	685b      	ldr	r3, [r3, #4]
d03c8e30:	68db      	ldr	r3, [r3, #12]
d03c8e32:	4798      	blx	r3
d03c8e34:	f898 300c 	ldrb.w	r3, [r8, #12]
d03c8e38:	2000      	movs	r0, #0
d03c8e3a:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c8e3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8e42:	f898 200e 	ldrb.w	r2, [r8, #14]
d03c8e46:	fbb7 f1fa 	udiv	r1, r7, sl
d03c8e4a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8e4e:	f898 200f 	ldrb.w	r2, [r8, #15]
d03c8e52:	3140      	adds	r1, #64	; 0x40
d03c8e54:	37bc      	adds	r7, #188	; 0xbc
d03c8e56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8e5a:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d03c8e5e:	b209      	sxth	r1, r1
d03c8e60:	685b      	ldr	r3, [r3, #4]
d03c8e62:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c8e66:	2301      	movs	r3, #1
d03c8e68:	47c8      	blx	r9
d03c8e6a:	f5b7 6f8d 	cmp.w	r7, #1128	; 0x468
d03c8e6e:	d1e1      	bne.n	d03c8e34 <main+0x1f28>
d03c8e70:	b164      	cbz	r4, d03c8e8c <main+0x1f80>
d03c8e72:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03c8e74:	429e      	cmp	r6, r3
d03c8e76:	d809      	bhi.n	d03c8e8c <main+0x1f80>
d03c8e78:	1e67      	subs	r7, r4, #1
d03c8e7a:	f8df 8098 	ldr.w	r8, [pc, #152]	; d03c8f14 <main+0x2008>
d03c8e7e:	4437      	add	r7, r6
d03c8e80:	fbb7 f7f4 	udiv	r7, r7, r4
d03c8e84:	4367      	muls	r7, r4
d03c8e86:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03c8e88:	42bb      	cmp	r3, r7
d03c8e8a:	d21b      	bcs.n	d03c8ec4 <main+0x1fb8>
d03c8e8c:	f04f 0800 	mov.w	r8, #0
d03c8e90:	4c20      	ldr	r4, [pc, #128]	; (d03c8f14 <main+0x2008>)
d03c8e92:	e0c3      	b.n	d03c901c <main+0x2110>
d03c8e94:	7803      	ldrb	r3, [r0, #0]
d03c8e96:	920a      	str	r2, [sp, #40]	; 0x28
d03c8e98:	2b00      	cmp	r3, #0
d03c8e9a:	f47f af3b 	bne.w	d03c8d14 <main+0x1e08>
d03c8e9e:	4a1d      	ldr	r2, [pc, #116]	; (d03c8f14 <main+0x2008>)
d03c8ea0:	7b13      	ldrb	r3, [r2, #12]
d03c8ea2:	7b51      	ldrb	r1, [r2, #13]
d03c8ea4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c8ea8:	7b91      	ldrb	r1, [r2, #14]
d03c8eaa:	7bd2      	ldrb	r2, [r2, #15]
d03c8eac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c8eb0:	2100      	movs	r1, #0
d03c8eb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8eb6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d03c8eb8:	681b      	ldr	r3, [r3, #0]
d03c8eba:	f1a2 00ec 	sub.w	r0, r2, #236	; 0xec
d03c8ebe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c8ec0:	4798      	blx	r3
d03c8ec2:	e54c      	b.n	d03c895e <main+0x1a52>
d03c8ec4:	9b04      	ldr	r3, [sp, #16]
d03c8ec6:	1af8      	subs	r0, r7, r3
d03c8ec8:	b283      	uxth	r3, r0
d03c8eca:	f5b3 7f70 	cmp.w	r3, #960	; 0x3c0
d03c8ece:	d215      	bcs.n	d03c8efc <main+0x1ff0>
d03c8ed0:	f898 300c 	ldrb.w	r3, [r8, #12]
d03c8ed4:	2140      	movs	r1, #64	; 0x40
d03c8ed6:	f898 200d 	ldrb.w	r2, [r8, #13]
d03c8eda:	b200      	sxth	r0, r0
d03c8edc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c8ee0:	f898 200e 	ldrb.w	r2, [r8, #14]
d03c8ee4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c8ee8:	f898 200f 	ldrb.w	r2, [r8, #15]
d03c8eec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c8ef0:	2201      	movs	r2, #1
d03c8ef2:	685b      	ldr	r3, [r3, #4]
d03c8ef4:	f8d3 9004 	ldr.w	r9, [r3, #4]
d03c8ef8:	23bc      	movs	r3, #188	; 0xbc
d03c8efa:	47c8      	blx	r9
d03c8efc:	4427      	add	r7, r4
d03c8efe:	e7c2      	b.n	d03c8e86 <main+0x1f7a>
d03c8f00:	d03cf3cb 	.word	0xd03cf3cb
d03c8f04:	d03cf700 	.word	0xd03cf700
d03c8f08:	d03cd100 	.word	0xd03cd100
d03c8f0c:	d03cf3d0 	.word	0xd03cf3d0
d03c8f10:	d03cf3cc 	.word	0xd03cf3cc
d03c8f14:	2001f000 	.word	0x2001f000
d03c8f18:	4b5b      	ldr	r3, [pc, #364]	; (d03c9088 <main+0x217c>)
d03c8f1a:	ea4f 1208 	mov.w	r2, r8, lsl #4
d03c8f1e:	681b      	ldr	r3, [r3, #0]
d03c8f20:	eb03 1008 	add.w	r0, r3, r8, lsl #4
d03c8f24:	7b41      	ldrb	r1, [r0, #13]
d03c8f26:	2900      	cmp	r1, #0
d03c8f28:	d076      	beq.n	d03c9018 <main+0x210c>
d03c8f2a:	589b      	ldr	r3, [r3, r2]
d03c8f2c:	6842      	ldr	r2, [r0, #4]
d03c8f2e:	1899      	adds	r1, r3, r2
d03c8f30:	428e      	cmp	r6, r1
d03c8f32:	d871      	bhi.n	d03c9018 <main+0x210c>
d03c8f34:	9909      	ldr	r1, [sp, #36]	; 0x24
d03c8f36:	4299      	cmp	r1, r3
d03c8f38:	d36e      	bcc.n	d03c9018 <main+0x210c>
d03c8f3a:	9904      	ldr	r1, [sp, #16]
d03c8f3c:	b212      	sxth	r2, r2
d03c8f3e:	1a5b      	subs	r3, r3, r1
d03c8f40:	2a04      	cmp	r2, #4
d03c8f42:	b21f      	sxth	r7, r3
d03c8f44:	bfb8      	it	lt
d03c8f46:	2204      	movlt	r2, #4
d03c8f48:	2f00      	cmp	r7, #0
d03c8f4a:	4691      	mov	r9, r2
d03c8f4c:	bfbe      	ittt	lt
d03c8f4e:	18d2      	addlt	r2, r2, r3
d03c8f50:	2700      	movlt	r7, #0
d03c8f52:	fa0f f982 	sxthlt.w	r9, r2
d03c8f56:	eb07 0309 	add.w	r3, r7, r9
d03c8f5a:	f5b3 7f70 	cmp.w	r3, #960	; 0x3c0
d03c8f5e:	bfc4      	itt	gt
d03c8f60:	f5c7 7270 	rsbgt	r2, r7, #960	; 0x3c0
d03c8f64:	fa0f f982 	sxthgt.w	r9, r2
d03c8f68:	f1b9 0f00 	cmp.w	r9, #0
d03c8f6c:	dd54      	ble.n	d03c9018 <main+0x210c>
d03c8f6e:	7a03      	ldrb	r3, [r0, #8]
d03c8f70:	21b0      	movs	r1, #176	; 0xb0
d03c8f72:	7b00      	ldrb	r0, [r0, #12]
d03c8f74:	2b54      	cmp	r3, #84	; 0x54
d03c8f76:	bf28      	it	cs
d03c8f78:	2354      	movcs	r3, #84	; 0x54
d03c8f7a:	2b24      	cmp	r3, #36	; 0x24
d03c8f7c:	bf38      	it	cc
d03c8f7e:	2324      	movcc	r3, #36	; 0x24
d03c8f80:	3b24      	subs	r3, #36	; 0x24
d03c8f82:	b29b      	uxth	r3, r3
d03c8f84:	4359      	muls	r1, r3
d03c8f86:	2330      	movs	r3, #48	; 0x30
d03c8f88:	fbb1 f1f3 	udiv	r1, r1, r3
d03c8f8c:	7b23      	ldrb	r3, [r4, #12]
d03c8f8e:	f1c1 01f4 	rsb	r1, r1, #244	; 0xf4
d03c8f92:	f894 c00d 	ldrb.w	ip, [r4, #13]
d03c8f96:	b209      	sxth	r1, r1
d03c8f98:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03c8f9c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d03c8fa0:	910c      	str	r1, [sp, #48]	; 0x30
d03c8fa2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03c8fa6:	f894 c00f 	ldrb.w	ip, [r4, #15]
d03c8faa:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d03c8fae:	685b      	ldr	r3, [r3, #4]
d03c8fb0:	68db      	ldr	r3, [r3, #12]
d03c8fb2:	4798      	blx	r3
d03c8fb4:	7b23      	ldrb	r3, [r4, #12]
d03c8fb6:	7b60      	ldrb	r0, [r4, #13]
d03c8fb8:	464a      	mov	r2, r9
d03c8fba:	990c      	ldr	r1, [sp, #48]	; 0x30
d03c8fbc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c8fc0:	7ba0      	ldrb	r0, [r4, #14]
d03c8fc2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c8fc6:	7be0      	ldrb	r0, [r4, #15]
d03c8fc8:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c8fcc:	4638      	mov	r0, r7
d03c8fce:	685b      	ldr	r3, [r3, #4]
d03c8fd0:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03c8fd4:	2306      	movs	r3, #6
d03c8fd6:	47d0      	blx	sl
d03c8fd8:	7b23      	ldrb	r3, [r4, #12]
d03c8fda:	7b60      	ldrb	r0, [r4, #13]
d03c8fdc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c8fe0:	7ba0      	ldrb	r0, [r4, #14]
d03c8fe2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c8fe6:	7be0      	ldrb	r0, [r4, #15]
d03c8fe8:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c8fec:	2010      	movs	r0, #16
d03c8fee:	685b      	ldr	r3, [r3, #4]
d03c8ff0:	68db      	ldr	r3, [r3, #12]
d03c8ff2:	4798      	blx	r3
d03c8ff4:	7b23      	ldrb	r3, [r4, #12]
d03c8ff6:	7b60      	ldrb	r0, [r4, #13]
d03c8ff8:	464a      	mov	r2, r9
d03c8ffa:	990c      	ldr	r1, [sp, #48]	; 0x30
d03c8ffc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03c9000:	7ba0      	ldrb	r0, [r4, #14]
d03c9002:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03c9006:	7be0      	ldrb	r0, [r4, #15]
d03c9008:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d03c900c:	4638      	mov	r0, r7
d03c900e:	685b      	ldr	r3, [r3, #4]
d03c9010:	f8d3 a004 	ldr.w	sl, [r3, #4]
d03c9014:	2301      	movs	r3, #1
d03c9016:	47d0      	blx	sl
d03c9018:	f108 0801 	add.w	r8, r8, #1
d03c901c:	4b1b      	ldr	r3, [pc, #108]	; (d03c908c <main+0x2180>)
d03c901e:	681b      	ldr	r3, [r3, #0]
d03c9020:	4598      	cmp	r8, r3
d03c9022:	f4ff af79 	bcc.w	d03c8f18 <main+0x200c>
d03c9026:	4a1a      	ldr	r2, [pc, #104]	; (d03c9090 <main+0x2184>)
d03c9028:	ee18 0a10 	vmov	r0, s16
d03c902c:	7b13      	ldrb	r3, [r2, #12]
d03c902e:	7b51      	ldrb	r1, [r2, #13]
d03c9030:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d03c9034:	7b91      	ldrb	r1, [r2, #14]
d03c9036:	7bd2      	ldrb	r2, [r2, #15]
d03c9038:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c903c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9040:	681b      	ldr	r3, [r3, #0]
d03c9042:	699b      	ldr	r3, [r3, #24]
d03c9044:	4798      	blx	r3
d03c9046:	4b13      	ldr	r3, [pc, #76]	; (d03c9094 <main+0x2188>)
d03c9048:	2200      	movs	r2, #0
d03c904a:	701a      	strb	r2, [r3, #0]
d03c904c:	2201      	movs	r2, #1
d03c904e:	4b12      	ldr	r3, [pc, #72]	; (d03c9098 <main+0x218c>)
d03c9050:	701a      	strb	r2, [r3, #0]
d03c9052:	e724      	b.n	d03c8e9e <main+0x1f92>
d03c9054:	7833      	ldrb	r3, [r6, #0]
d03c9056:	2b00      	cmp	r3, #0
d03c9058:	f43f ac81 	beq.w	d03c895e <main+0x1a52>
d03c905c:	e47b      	b.n	d03c8956 <main+0x1a4a>
d03c905e:	f7fa fc97 	bl	d03c3990 <ui_draw_confirm_modal.part.0>
d03c9062:	f7fa fd67 	bl	d03c3b34 <ui_draw_dialog>
d03c9066:	f7f8 f81f 	bl	d03c10a8 <ui_draw_cursor>
d03c906a:	7b23      	ldrb	r3, [r4, #12]
d03c906c:	7b62      	ldrb	r2, [r4, #13]
d03c906e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9072:	7ba2      	ldrb	r2, [r4, #14]
d03c9074:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9078:	7be2      	ldrb	r2, [r4, #15]
d03c907a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c907e:	681b      	ldr	r3, [r3, #0]
d03c9080:	681b      	ldr	r3, [r3, #0]
d03c9082:	4798      	blx	r3
d03c9084:	f7fe b9e0 	b.w	d03c7448 <main+0x53c>
d03c9088:	d03ccfd8 	.word	0xd03ccfd8
d03c908c:	d03ccfd4 	.word	0xd03ccfd4
d03c9090:	2001f000 	.word	0x2001f000
d03c9094:	d03cf3cb 	.word	0xd03cf3cb
d03c9098:	d03cf3d0 	.word	0xd03cf3d0
d03c909c:	4b9d      	ldr	r3, [pc, #628]	; (d03c9314 <main+0x2408>)
d03c909e:	781a      	ldrb	r2, [r3, #0]
d03c90a0:	4b9d      	ldr	r3, [pc, #628]	; (d03c9318 <main+0x240c>)
d03c90a2:	781b      	ldrb	r3, [r3, #0]
d03c90a4:	4313      	orrs	r3, r2
d03c90a6:	d1de      	bne.n	d03c9066 <main+0x215a>
d03c90a8:	7b23      	ldrb	r3, [r4, #12]
d03c90aa:	2018      	movs	r0, #24
d03c90ac:	7b62      	ldrb	r2, [r4, #13]
d03c90ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c90b2:	7ba2      	ldrb	r2, [r4, #14]
d03c90b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c90b8:	7be2      	ldrb	r2, [r4, #15]
d03c90ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c90be:	685b      	ldr	r3, [r3, #4]
d03c90c0:	68db      	ldr	r3, [r3, #12]
d03c90c2:	4798      	blx	r3
d03c90c4:	4b95      	ldr	r3, [pc, #596]	; (d03c931c <main+0x2410>)
d03c90c6:	781a      	ldrb	r2, [r3, #0]
d03c90c8:	4b95      	ldr	r3, [pc, #596]	; (d03c9320 <main+0x2414>)
d03c90ca:	781b      	ldrb	r3, [r3, #0]
d03c90cc:	2a00      	cmp	r2, #0
d03c90ce:	f000 810f 	beq.w	d03c92f0 <main+0x23e4>
d03c90d2:	2b00      	cmp	r3, #0
d03c90d4:	d02f      	beq.n	d03c9136 <main+0x222a>
d03c90d6:	7b23      	ldrb	r3, [r4, #12]
d03c90d8:	20e0      	movs	r0, #224	; 0xe0
d03c90da:	7b62      	ldrb	r2, [r4, #13]
d03c90dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c90e0:	7ba2      	ldrb	r2, [r4, #14]
d03c90e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c90e6:	7be2      	ldrb	r2, [r4, #15]
d03c90e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c90ec:	685b      	ldr	r3, [r3, #4]
d03c90ee:	68db      	ldr	r3, [r3, #12]
d03c90f0:	4798      	blx	r3
d03c90f2:	7b23      	ldrb	r3, [r4, #12]
d03c90f4:	7b62      	ldrb	r2, [r4, #13]
d03c90f6:	2050      	movs	r0, #80	; 0x50
d03c90f8:	f44f 718e 	mov.w	r1, #284	; 0x11c
d03c90fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9100:	7ba2      	ldrb	r2, [r4, #14]
d03c9102:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9106:	7be2      	ldrb	r2, [r4, #15]
d03c9108:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c910c:	f44f 7287 	mov.w	r2, #270	; 0x10e
d03c9110:	685b      	ldr	r3, [r3, #4]
d03c9112:	f8d3 8004 	ldr.w	r8, [r3, #4]
d03c9116:	2328      	movs	r3, #40	; 0x28
d03c9118:	47c0      	blx	r8
d03c911a:	7b23      	ldrb	r3, [r4, #12]
d03c911c:	7b62      	ldrb	r2, [r4, #13]
d03c911e:	2018      	movs	r0, #24
d03c9120:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9124:	7ba2      	ldrb	r2, [r4, #14]
d03c9126:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c912a:	7be2      	ldrb	r2, [r4, #15]
d03c912c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9130:	685b      	ldr	r3, [r3, #4]
d03c9132:	68db      	ldr	r3, [r3, #12]
d03c9134:	4798      	blx	r3
d03c9136:	7b23      	ldrb	r3, [r4, #12]
d03c9138:	7b62      	ldrb	r2, [r4, #13]
d03c913a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c913e:	7ba2      	ldrb	r2, [r4, #14]
d03c9140:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9144:	7be2      	ldrb	r2, [r4, #15]
d03c9146:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c914a:	4a74      	ldr	r2, [pc, #464]	; (d03c931c <main+0x2410>)
d03c914c:	685b      	ldr	r3, [r3, #4]
d03c914e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9150:	f44f 7192 	mov.w	r1, #292	; 0x124
d03c9154:	2058      	movs	r0, #88	; 0x58
d03c9156:	4798      	blx	r3
d03c9158:	783b      	ldrb	r3, [r7, #0]
d03c915a:	2b01      	cmp	r3, #1
d03c915c:	f000 8100 	beq.w	d03c9360 <main+0x2454>
d03c9160:	2b04      	cmp	r3, #4
d03c9162:	f000 8130 	beq.w	d03c93c6 <main+0x24ba>
d03c9166:	2b00      	cmp	r3, #0
d03c9168:	f47f af7d 	bne.w	d03c9066 <main+0x215a>
d03c916c:	4a6d      	ldr	r2, [pc, #436]	; (d03c9324 <main+0x2418>)
d03c916e:	496e      	ldr	r1, [pc, #440]	; (d03c9328 <main+0x241c>)
d03c9170:	7817      	ldrb	r7, [r2, #0]
d03c9172:	461a      	mov	r2, r3
d03c9174:	f811 0032 	ldrb.w	r0, [r1, r2, lsl #3]
d03c9178:	b108      	cbz	r0, d03c917e <main+0x2272>
d03c917a:	3301      	adds	r3, #1
d03c917c:	b2db      	uxtb	r3, r3
d03c917e:	3201      	adds	r2, #1
d03c9180:	2a06      	cmp	r2, #6
d03c9182:	d1f7      	bne.n	d03c9174 <main+0x2268>
d03c9184:	2160      	movs	r1, #96	; 0x60
d03c9186:	9200      	str	r2, [sp, #0]
d03c9188:	a814      	add	r0, sp, #80	; 0x50
d03c918a:	4a68      	ldr	r2, [pc, #416]	; (d03c932c <main+0x2420>)
d03c918c:	f000 ff1a 	bl	d03c9fc4 <sniprintf>
d03c9190:	7b2b      	ldrb	r3, [r5, #12]
d03c9192:	7b6a      	ldrb	r2, [r5, #13]
d03c9194:	201e      	movs	r0, #30
d03c9196:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c919a:	7baa      	ldrb	r2, [r5, #14]
d03c919c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91a0:	7bea      	ldrb	r2, [r5, #15]
d03c91a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91a6:	685b      	ldr	r3, [r3, #4]
d03c91a8:	68db      	ldr	r3, [r3, #12]
d03c91aa:	4798      	blx	r3
d03c91ac:	7b2b      	ldrb	r3, [r5, #12]
d03c91ae:	7b6a      	ldrb	r2, [r5, #13]
d03c91b0:	215c      	movs	r1, #92	; 0x5c
d03c91b2:	2018      	movs	r0, #24
d03c91b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c91b8:	7baa      	ldrb	r2, [r5, #14]
d03c91ba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91be:	7bea      	ldrb	r2, [r5, #15]
d03c91c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91c4:	aa14      	add	r2, sp, #80	; 0x50
d03c91c6:	685b      	ldr	r3, [r3, #4]
d03c91c8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c91ca:	4798      	blx	r3
d03c91cc:	4b58      	ldr	r3, [pc, #352]	; (d03c9330 <main+0x2424>)
d03c91ce:	2160      	movs	r1, #96	; 0x60
d03c91d0:	4a58      	ldr	r2, [pc, #352]	; (d03c9334 <main+0x2428>)
d03c91d2:	681b      	ldr	r3, [r3, #0]
d03c91d4:	a814      	add	r0, sp, #80	; 0x50
d03c91d6:	9300      	str	r3, [sp, #0]
d03c91d8:	4b57      	ldr	r3, [pc, #348]	; (d03c9338 <main+0x242c>)
d03c91da:	681b      	ldr	r3, [r3, #0]
d03c91dc:	f000 fef2 	bl	d03c9fc4 <sniprintf>
d03c91e0:	7b2b      	ldrb	r3, [r5, #12]
d03c91e2:	7b6a      	ldrb	r2, [r5, #13]
d03c91e4:	2018      	movs	r0, #24
d03c91e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c91ea:	7baa      	ldrb	r2, [r5, #14]
d03c91ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c91f0:	7bea      	ldrb	r2, [r5, #15]
d03c91f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c91f6:	685b      	ldr	r3, [r3, #4]
d03c91f8:	68db      	ldr	r3, [r3, #12]
d03c91fa:	4798      	blx	r3
d03c91fc:	7b2b      	ldrb	r3, [r5, #12]
d03c91fe:	7b6a      	ldrb	r2, [r5, #13]
d03c9200:	2170      	movs	r1, #112	; 0x70
d03c9202:	2018      	movs	r0, #24
d03c9204:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9208:	7baa      	ldrb	r2, [r5, #14]
d03c920a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c920e:	7bea      	ldrb	r2, [r5, #15]
d03c9210:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9214:	aa14      	add	r2, sp, #80	; 0x50
d03c9216:	685b      	ldr	r3, [r3, #4]
d03c9218:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c921a:	4798      	blx	r3
d03c921c:	4b47      	ldr	r3, [pc, #284]	; (d03c933c <main+0x2430>)
d03c921e:	4a48      	ldr	r2, [pc, #288]	; (d03c9340 <main+0x2434>)
d03c9220:	2160      	movs	r1, #96	; 0x60
d03c9222:	881b      	ldrh	r3, [r3, #0]
d03c9224:	a814      	add	r0, sp, #80	; 0x50
d03c9226:	9300      	str	r3, [sp, #0]
d03c9228:	4b46      	ldr	r3, [pc, #280]	; (d03c9344 <main+0x2438>)
d03c922a:	881b      	ldrh	r3, [r3, #0]
d03c922c:	f000 feca 	bl	d03c9fc4 <sniprintf>
d03c9230:	7b2b      	ldrb	r3, [r5, #12]
d03c9232:	7b6a      	ldrb	r2, [r5, #13]
d03c9234:	2184      	movs	r1, #132	; 0x84
d03c9236:	2018      	movs	r0, #24
d03c9238:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c923c:	7baa      	ldrb	r2, [r5, #14]
d03c923e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9242:	7bea      	ldrb	r2, [r5, #15]
d03c9244:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9248:	aa14      	add	r2, sp, #80	; 0x50
d03c924a:	685b      	ldr	r3, [r3, #4]
d03c924c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c924e:	4798      	blx	r3
d03c9250:	4b3d      	ldr	r3, [pc, #244]	; (d03c9348 <main+0x243c>)
d03c9252:	4a3e      	ldr	r2, [pc, #248]	; (d03c934c <main+0x2440>)
d03c9254:	2160      	movs	r1, #96	; 0x60
d03c9256:	f933 3017 	ldrsh.w	r3, [r3, r7, lsl #1]
d03c925a:	a814      	add	r0, sp, #80	; 0x50
d03c925c:	9301      	str	r3, [sp, #4]
d03c925e:	4b3c      	ldr	r3, [pc, #240]	; (d03c9350 <main+0x2444>)
d03c9260:	5ddb      	ldrb	r3, [r3, r7]
d03c9262:	9300      	str	r3, [sp, #0]
d03c9264:	4b3b      	ldr	r3, [pc, #236]	; (d03c9354 <main+0x2448>)
d03c9266:	5ddb      	ldrb	r3, [r3, r7]
d03c9268:	f000 feac 	bl	d03c9fc4 <sniprintf>
d03c926c:	7b2b      	ldrb	r3, [r5, #12]
d03c926e:	7b6a      	ldrb	r2, [r5, #13]
d03c9270:	2170      	movs	r1, #112	; 0x70
d03c9272:	4f39      	ldr	r7, [pc, #228]	; (d03c9358 <main+0x244c>)
d03c9274:	20e6      	movs	r0, #230	; 0xe6
d03c9276:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c927a:	7baa      	ldrb	r2, [r5, #14]
d03c927c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9280:	7bea      	ldrb	r2, [r5, #15]
d03c9282:	25c8      	movs	r5, #200	; 0xc8
d03c9284:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9288:	aa14      	add	r2, sp, #80	; 0x50
d03c928a:	685b      	ldr	r3, [r3, #4]
d03c928c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c928e:	4798      	blx	r3
d03c9290:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d03c9292:	f813 0b01 	ldrb.w	r0, [r3], #1
d03c9296:	930b      	str	r3, [sp, #44]	; 0x2c
d03c9298:	f7f7 fce2 	bl	d03c0c60 <midi_channel_active_count>
d03c929c:	4603      	mov	r3, r0
d03c929e:	b310      	cbz	r0, d03c92e6 <main+0x23da>
d03c92a0:	2160      	movs	r1, #96	; 0x60
d03c92a2:	463a      	mov	r2, r7
d03c92a4:	a814      	add	r0, sp, #80	; 0x50
d03c92a6:	f000 fe8d 	bl	d03c9fc4 <sniprintf>
d03c92aa:	7b33      	ldrb	r3, [r6, #12]
d03c92ac:	7b72      	ldrb	r2, [r6, #13]
d03c92ae:	200e      	movs	r0, #14
d03c92b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c92b4:	7bb2      	ldrb	r2, [r6, #14]
d03c92b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c92ba:	7bf2      	ldrb	r2, [r6, #15]
d03c92bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c92c0:	685b      	ldr	r3, [r3, #4]
d03c92c2:	68db      	ldr	r3, [r3, #12]
d03c92c4:	4798      	blx	r3
d03c92c6:	7b33      	ldrb	r3, [r6, #12]
d03c92c8:	7b72      	ldrb	r2, [r6, #13]
d03c92ca:	4629      	mov	r1, r5
d03c92cc:	20cc      	movs	r0, #204	; 0xcc
d03c92ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c92d2:	7bb2      	ldrb	r2, [r6, #14]
d03c92d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c92d8:	7bf2      	ldrb	r2, [r6, #15]
d03c92da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c92de:	aa14      	add	r2, sp, #80	; 0x50
d03c92e0:	685b      	ldr	r3, [r3, #4]
d03c92e2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c92e4:	4798      	blx	r3
d03c92e6:	3510      	adds	r5, #16
d03c92e8:	f5b5 7f84 	cmp.w	r5, #264	; 0x108
d03c92ec:	d1d0      	bne.n	d03c9290 <main+0x2384>
d03c92ee:	e6ba      	b.n	d03c9066 <main+0x215a>
d03c92f0:	2b00      	cmp	r3, #0
d03c92f2:	f47f af31 	bne.w	d03c9158 <main+0x224c>
d03c92f6:	7b23      	ldrb	r3, [r4, #12]
d03c92f8:	7b62      	ldrb	r2, [r4, #13]
d03c92fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c92fe:	7ba2      	ldrb	r2, [r4, #14]
d03c9300:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9304:	7be2      	ldrb	r2, [r4, #15]
d03c9306:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c930a:	4a14      	ldr	r2, [pc, #80]	; (d03c935c <main+0x2450>)
d03c930c:	685b      	ldr	r3, [r3, #4]
d03c930e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9310:	e71e      	b.n	d03c9150 <main+0x2244>
d03c9312:	bf00      	nop
d03c9314:	d03cda34 	.word	0xd03cda34
d03c9318:	d03cda33 	.word	0xd03cda33
d03c931c:	d03cf3d8 	.word	0xd03cf3d8
d03c9320:	d03ccd2a 	.word	0xd03ccd2a
d03c9324:	d03cf3ca 	.word	0xd03cf3ca
d03c9328:	d03cd108 	.word	0xd03cd108
d03c932c:	d03cc007 	.word	0xd03cc007
d03c9330:	d03ccfa8 	.word	0xd03ccfa8
d03c9334:	d03cc014 	.word	0xd03cc014
d03c9338:	d03ccfa0 	.word	0xd03ccfa0
d03c933c:	d03ccd8a 	.word	0xd03ccd8a
d03c9340:	d03cc027 	.word	0xd03cc027
d03c9344:	d03ccf8e 	.word	0xd03ccf8e
d03c9348:	d03ccd34 	.word	0xd03ccd34
d03c934c:	d03cc03d 	.word	0xd03cc03d
d03c9350:	d03ccd54 	.word	0xd03ccd54
d03c9354:	d03ccd74 	.word	0xd03ccd74
d03c9358:	d03cb369 	.word	0xd03cb369
d03c935c:	d03cbfea 	.word	0xd03cbfea
d03c9360:	4bb3      	ldr	r3, [pc, #716]	; (d03c9630 <main+0x2724>)
d03c9362:	2500      	movs	r5, #0
d03c9364:	f04f 0824 	mov.w	r8, #36	; 0x24
d03c9368:	781f      	ldrb	r7, [r3, #0]
d03c936a:	230e      	movs	r3, #14
d03c936c:	00bf      	lsls	r7, r7, #2
d03c936e:	f8ad 3050 	strh.w	r3, [sp, #80]	; 0x50
d03c9372:	b2ff      	uxtb	r7, r7
d03c9374:	1978      	adds	r0, r7, r5
d03c9376:	b2c0      	uxtb	r0, r0
d03c9378:	f7f7 fc72 	bl	d03c0c60 <midi_channel_active_count>
d03c937c:	b1f8      	cbz	r0, d03c93be <main+0x24b2>
d03c937e:	7b33      	ldrb	r3, [r6, #12]
d03c9380:	200e      	movs	r0, #14
d03c9382:	7b72      	ldrb	r2, [r6, #13]
d03c9384:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9388:	7bb2      	ldrb	r2, [r6, #14]
d03c938a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c938e:	7bf2      	ldrb	r2, [r6, #15]
d03c9390:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9394:	685b      	ldr	r3, [r3, #4]
d03c9396:	68db      	ldr	r3, [r3, #12]
d03c9398:	4798      	blx	r3
d03c939a:	7b33      	ldrb	r3, [r6, #12]
d03c939c:	7b72      	ldrb	r2, [r6, #13]
d03c939e:	fb08 f105 	mul.w	r1, r8, r5
d03c93a2:	2020      	movs	r0, #32
d03c93a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c93a8:	7bb2      	ldrb	r2, [r6, #14]
d03c93aa:	317c      	adds	r1, #124	; 0x7c
d03c93ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c93b0:	7bf2      	ldrb	r2, [r6, #15]
d03c93b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c93b6:	aa14      	add	r2, sp, #80	; 0x50
d03c93b8:	685b      	ldr	r3, [r3, #4]
d03c93ba:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c93bc:	4798      	blx	r3
d03c93be:	3501      	adds	r5, #1
d03c93c0:	2d04      	cmp	r5, #4
d03c93c2:	d1d7      	bne.n	d03c9374 <main+0x2468>
d03c93c4:	e64f      	b.n	d03c9066 <main+0x215a>
d03c93c6:	4b9b      	ldr	r3, [pc, #620]	; (d03c9634 <main+0x2728>)
d03c93c8:	781b      	ldrb	r3, [r3, #0]
d03c93ca:	2b00      	cmp	r3, #0
d03c93cc:	f43f ae4b 	beq.w	d03c9066 <main+0x215a>
d03c93d0:	4f99      	ldr	r7, [pc, #612]	; (d03c9638 <main+0x272c>)
d03c93d2:	4b9a      	ldr	r3, [pc, #616]	; (d03c963c <main+0x2730>)
d03c93d4:	783d      	ldrb	r5, [r7, #0]
d03c93d6:	781e      	ldrb	r6, [r3, #0]
d03c93d8:	42b5      	cmp	r5, r6
d03c93da:	d324      	bcc.n	d03c9426 <main+0x251a>
d03c93dc:	f106 0308 	add.w	r3, r6, #8
d03c93e0:	b2db      	uxtb	r3, r3
d03c93e2:	429d      	cmp	r5, r3
d03c93e4:	d21f      	bcs.n	d03c9426 <main+0x251a>
d03c93e6:	7b23      	ldrb	r3, [r4, #12]
d03c93e8:	200e      	movs	r0, #14
d03c93ea:	7b62      	ldrb	r2, [r4, #13]
d03c93ec:	1bad      	subs	r5, r5, r6
d03c93ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c93f2:	7ba2      	ldrb	r2, [r4, #14]
d03c93f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c93f8:	7be2      	ldrb	r2, [r4, #15]
d03c93fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c93fe:	685b      	ldr	r3, [r3, #4]
d03c9400:	68db      	ldr	r3, [r3, #12]
d03c9402:	4798      	blx	r3
d03c9404:	7b23      	ldrb	r3, [r4, #12]
d03c9406:	7b62      	ldrb	r2, [r4, #13]
d03c9408:	0129      	lsls	r1, r5, #4
d03c940a:	2014      	movs	r0, #20
d03c940c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9410:	7ba2      	ldrb	r2, [r4, #14]
d03c9412:	3186      	adds	r1, #134	; 0x86
d03c9414:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9418:	7be2      	ldrb	r2, [r4, #15]
d03c941a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c941e:	4a88      	ldr	r2, [pc, #544]	; (d03c9640 <main+0x2734>)
d03c9420:	685b      	ldr	r3, [r3, #4]
d03c9422:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9424:	4798      	blx	r3
d03c9426:	4b87      	ldr	r3, [pc, #540]	; (d03c9644 <main+0x2738>)
d03c9428:	2118      	movs	r1, #24
d03c942a:	4a87      	ldr	r2, [pc, #540]	; (d03c9648 <main+0x273c>)
d03c942c:	a814      	add	r0, sp, #80	; 0x50
d03c942e:	781b      	ldrb	r3, [r3, #0]
d03c9430:	9300      	str	r3, [sp, #0]
d03c9432:	783b      	ldrb	r3, [r7, #0]
d03c9434:	f000 fdc6 	bl	d03c9fc4 <sniprintf>
d03c9438:	7b23      	ldrb	r3, [r4, #12]
d03c943a:	7b62      	ldrb	r2, [r4, #13]
d03c943c:	200e      	movs	r0, #14
d03c943e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9442:	7ba2      	ldrb	r2, [r4, #14]
d03c9444:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9448:	7be2      	ldrb	r2, [r4, #15]
d03c944a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c944e:	685b      	ldr	r3, [r3, #4]
d03c9450:	68db      	ldr	r3, [r3, #12]
d03c9452:	4798      	blx	r3
d03c9454:	7b23      	ldrb	r3, [r4, #12]
d03c9456:	7b62      	ldrb	r2, [r4, #13]
d03c9458:	21fa      	movs	r1, #250	; 0xfa
d03c945a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c945e:	7ba2      	ldrb	r2, [r4, #14]
d03c9460:	4608      	mov	r0, r1
d03c9462:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9466:	7be2      	ldrb	r2, [r4, #15]
d03c9468:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c946c:	aa14      	add	r2, sp, #80	; 0x50
d03c946e:	685b      	ldr	r3, [r3, #4]
d03c9470:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d03c9472:	4798      	blx	r3
d03c9474:	e5f7      	b.n	d03c9066 <main+0x215a>
d03c9476:	f89b 300c 	ldrb.w	r3, [fp, #12]
d03c947a:	f89b 200d 	ldrb.w	r2, [fp, #13]
d03c947e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9482:	f89b 200e 	ldrb.w	r2, [fp, #14]
d03c9486:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c948a:	f89b 200f 	ldrb.w	r2, [fp, #15]
d03c948e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9492:	2202      	movs	r2, #2
d03c9494:	681b      	ldr	r3, [r3, #0]
d03c9496:	9200      	str	r2, [sp, #0]
d03c9498:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d03c949c:	695c      	ldr	r4, [r3, #20]
d03c949e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d03c94a2:	4610      	mov	r0, r2
d03c94a4:	4619      	mov	r1, r3
d03c94a6:	47a0      	blx	r4
d03c94a8:	f89b 300c 	ldrb.w	r3, [fp, #12]
d03c94ac:	f89b 200d 	ldrb.w	r2, [fp, #13]
d03c94b0:	2100      	movs	r1, #0
d03c94b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94b6:	f89b 200e 	ldrb.w	r2, [fp, #14]
d03c94ba:	4608      	mov	r0, r1
d03c94bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c94c0:	f89b 200f 	ldrb.w	r2, [fp, #15]
d03c94c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c94c8:	681b      	ldr	r3, [r3, #0]
d03c94ca:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d03c94cc:	4798      	blx	r3
d03c94ce:	f89b 3004 	ldrb.w	r3, [fp, #4]
d03c94d2:	f89b 2005 	ldrb.w	r2, [fp, #5]
d03c94d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94da:	f89b 2006 	ldrb.w	r2, [fp, #6]
d03c94de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c94e2:	f89b 2007 	ldrb.w	r2, [fp, #7]
d03c94e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c94ea:	685b      	ldr	r3, [r3, #4]
d03c94ec:	4798      	blx	r3
d03c94ee:	f89b 3000 	ldrb.w	r3, [fp]
d03c94f2:	f89b 2001 	ldrb.w	r2, [fp, #1]
d03c94f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c94fa:	f89b 2002 	ldrb.w	r2, [fp, #2]
d03c94fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9502:	f89b 2003 	ldrb.w	r2, [fp, #3]
d03c9506:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c950a:	685b      	ldr	r3, [r3, #4]
d03c950c:	4798      	blx	r3
d03c950e:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03c9512:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03c9516:	2000      	movs	r0, #0
d03c9518:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c951c:	f89b 2022 	ldrb.w	r2, [fp, #34]	; 0x22
d03c9520:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9524:	f89b 2023 	ldrb.w	r2, [fp, #35]	; 0x23
d03c9528:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c952c:	685b      	ldr	r3, [r3, #4]
d03c952e:	4798      	blx	r3
d03c9530:	f89b 3020 	ldrb.w	r3, [fp, #32]
d03c9534:	f89b 2021 	ldrb.w	r2, [fp, #33]	; 0x21
d03c9538:	2000      	movs	r0, #0
d03c953a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c953e:	f89b 2022 	ldrb.w	r2, [fp, #34]	; 0x22
d03c9542:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9546:	f89b 2023 	ldrb.w	r2, [fp, #35]	; 0x23
d03c954a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c954e:	681b      	ldr	r3, [r3, #0]
d03c9550:	4798      	blx	r3
d03c9552:	f7f8 fa71 	bl	d03c1a38 <sid_midi_all_notes_off>
d03c9556:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03c955a:	f89b 2015 	ldrb.w	r2, [fp, #21]
d03c955e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9562:	f89b 2016 	ldrb.w	r2, [fp, #22]
d03c9566:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c956a:	f89b 2017 	ldrb.w	r2, [fp, #23]
d03c956e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9572:	685b      	ldr	r3, [r3, #4]
d03c9574:	68db      	ldr	r3, [r3, #12]
d03c9576:	4798      	blx	r3
d03c9578:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03c957c:	f89b 2015 	ldrb.w	r2, [fp, #21]
d03c9580:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d03c9584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c9588:	f89b 2016 	ldrb.w	r2, [fp, #22]
d03c958c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c9590:	f89b 2017 	ldrb.w	r2, [fp, #23]
d03c9594:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c9598:	681b      	ldr	r3, [r3, #0]
d03c959a:	681b      	ldr	r3, [r3, #0]
d03c959c:	4798      	blx	r3
d03c959e:	f89b 3014 	ldrb.w	r3, [fp, #20]
d03c95a2:	f89b 2015 	ldrb.w	r2, [fp, #21]
d03c95a6:	2000      	movs	r0, #0
d03c95a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03c95ac:	f89b 2016 	ldrb.w	r2, [fp, #22]
d03c95b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d03c95b4:	f89b 2017 	ldrb.w	r2, [fp, #23]
d03c95b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03c95bc:	681b      	ldr	r3, [r3, #0]
d03c95be:	685b      	ldr	r3, [r3, #4]
d03c95c0:	7018      	strb	r0, [r3, #0]
d03c95c2:	b02d      	add	sp, #180	; 0xb4
d03c95c4:	ecbd 8b02 	vpop	{d8}
d03c95c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c95cc:	aa14      	add	r2, sp, #80	; 0x50
d03c95ce:	a911      	add	r1, sp, #68	; 0x44
d03c95d0:	4640      	mov	r0, r8
d03c95d2:	f7f7 f817 	bl	d03c0604 <sid_voice_get_vm_debug>
d03c95d6:	2800      	cmp	r0, #0
d03c95d8:	f43f a884 	beq.w	d03c86e4 <main+0x17d8>
d03c95dc:	f89d 3050 	ldrb.w	r3, [sp, #80]	; 0x50
d03c95e0:	2b00      	cmp	r3, #0
d03c95e2:	f43f a87f 	beq.w	d03c86e4 <main+0x17d8>
d03c95e6:	4b19      	ldr	r3, [pc, #100]	; (d03c964c <main+0x2740>)
d03c95e8:	4914      	ldr	r1, [pc, #80]	; (d03c963c <main+0x2730>)
d03c95ea:	7818      	ldrb	r0, [r3, #0]
d03c95ec:	780a      	ldrb	r2, [r1, #0]
d03c95ee:	b918      	cbnz	r0, d03c95f8 <main+0x26ec>
d03c95f0:	4817      	ldr	r0, [pc, #92]	; (d03c9650 <main+0x2744>)
d03c95f2:	7002      	strb	r2, [r0, #0]
d03c95f4:	2001      	movs	r0, #1
d03c95f6:	7018      	strb	r0, [r3, #0]
d03c95f8:	f89d 3044 	ldrb.w	r3, [sp, #68]	; 0x44
d03c95fc:	480d      	ldr	r0, [pc, #52]	; (d03c9634 <main+0x2728>)
d03c95fe:	42ab      	cmp	r3, r5
d03c9600:	f04f 0301 	mov.w	r3, #1
d03c9604:	bf28      	it	cs
d03c9606:	f105 35ff 	addcs.w	r5, r5, #4294967295	; 0xffffffff
d03c960a:	7003      	strb	r3, [r0, #0]
d03c960c:	480a      	ldr	r0, [pc, #40]	; (d03c9638 <main+0x272c>)
d03c960e:	bf28      	it	cs
d03c9610:	f88d 5044 	strbcs.w	r5, [sp, #68]	; 0x44
d03c9614:	f89d 3044 	ldrb.w	r3, [sp, #68]	; 0x44
d03c9618:	7003      	strb	r3, [r0, #0]
d03c961a:	4293      	cmp	r3, r2
d03c961c:	4809      	ldr	r0, [pc, #36]	; (d03c9644 <main+0x2738>)
d03c961e:	f880 8000 	strb.w	r8, [r0]
d03c9622:	f4bf ab24 	bcs.w	d03c8c6e <main+0x1d62>
d03c9626:	700b      	strb	r3, [r1, #0]
d03c9628:	f7f7 fc46 	bl	d03c0eb8 <ui_clamp_vm_scroll>
d03c962c:	f7ff b865 	b.w	d03c86fa <main+0x17ee>
d03c9630:	d03cda32 	.word	0xd03cda32
d03c9634:	d03cf58f 	.word	0xd03cf58f
d03c9638:	d03cf58e 	.word	0xd03cf58e
d03c963c:	d03cf591 	.word	0xd03cf591
d03c9640:	d03cb728 	.word	0xd03cb728
d03c9644:	d03cf590 	.word	0xd03cf590
d03c9648:	d03cc059 	.word	0xd03cc059
d03c964c:	d03cf58c 	.word	0xd03cf58c
d03c9650:	d03cf58d 	.word	0xd03cf58d

d03c9654 <__aeabi_uldivmod>:
d03c9654:	b953      	cbnz	r3, d03c966c <__aeabi_uldivmod+0x18>
d03c9656:	b94a      	cbnz	r2, d03c966c <__aeabi_uldivmod+0x18>
d03c9658:	2900      	cmp	r1, #0
d03c965a:	bf08      	it	eq
d03c965c:	2800      	cmpeq	r0, #0
d03c965e:	bf1c      	itt	ne
d03c9660:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d03c9664:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d03c9668:	f000 b96e 	b.w	d03c9948 <__aeabi_idiv0>
d03c966c:	f1ad 0c08 	sub.w	ip, sp, #8
d03c9670:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d03c9674:	f000 f806 	bl	d03c9684 <__udivmoddi4>
d03c9678:	f8dd e004 	ldr.w	lr, [sp, #4]
d03c967c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d03c9680:	b004      	add	sp, #16
d03c9682:	4770      	bx	lr

d03c9684 <__udivmoddi4>:
d03c9684:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03c9688:	9d08      	ldr	r5, [sp, #32]
d03c968a:	4604      	mov	r4, r0
d03c968c:	468c      	mov	ip, r1
d03c968e:	2b00      	cmp	r3, #0
d03c9690:	f040 8083 	bne.w	d03c979a <__udivmoddi4+0x116>
d03c9694:	428a      	cmp	r2, r1
d03c9696:	4617      	mov	r7, r2
d03c9698:	d947      	bls.n	d03c972a <__udivmoddi4+0xa6>
d03c969a:	fab2 f282 	clz	r2, r2
d03c969e:	b142      	cbz	r2, d03c96b2 <__udivmoddi4+0x2e>
d03c96a0:	f1c2 0020 	rsb	r0, r2, #32
d03c96a4:	fa24 f000 	lsr.w	r0, r4, r0
d03c96a8:	4091      	lsls	r1, r2
d03c96aa:	4097      	lsls	r7, r2
d03c96ac:	ea40 0c01 	orr.w	ip, r0, r1
d03c96b0:	4094      	lsls	r4, r2
d03c96b2:	ea4f 4817 	mov.w	r8, r7, lsr #16
d03c96b6:	0c23      	lsrs	r3, r4, #16
d03c96b8:	fbbc f6f8 	udiv	r6, ip, r8
d03c96bc:	fa1f fe87 	uxth.w	lr, r7
d03c96c0:	fb08 c116 	mls	r1, r8, r6, ip
d03c96c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c96c8:	fb06 f10e 	mul.w	r1, r6, lr
d03c96cc:	4299      	cmp	r1, r3
d03c96ce:	d909      	bls.n	d03c96e4 <__udivmoddi4+0x60>
d03c96d0:	18fb      	adds	r3, r7, r3
d03c96d2:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d03c96d6:	f080 8119 	bcs.w	d03c990c <__udivmoddi4+0x288>
d03c96da:	4299      	cmp	r1, r3
d03c96dc:	f240 8116 	bls.w	d03c990c <__udivmoddi4+0x288>
d03c96e0:	3e02      	subs	r6, #2
d03c96e2:	443b      	add	r3, r7
d03c96e4:	1a5b      	subs	r3, r3, r1
d03c96e6:	b2a4      	uxth	r4, r4
d03c96e8:	fbb3 f0f8 	udiv	r0, r3, r8
d03c96ec:	fb08 3310 	mls	r3, r8, r0, r3
d03c96f0:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d03c96f4:	fb00 fe0e 	mul.w	lr, r0, lr
d03c96f8:	45a6      	cmp	lr, r4
d03c96fa:	d909      	bls.n	d03c9710 <__udivmoddi4+0x8c>
d03c96fc:	193c      	adds	r4, r7, r4
d03c96fe:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c9702:	f080 8105 	bcs.w	d03c9910 <__udivmoddi4+0x28c>
d03c9706:	45a6      	cmp	lr, r4
d03c9708:	f240 8102 	bls.w	d03c9910 <__udivmoddi4+0x28c>
d03c970c:	3802      	subs	r0, #2
d03c970e:	443c      	add	r4, r7
d03c9710:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d03c9714:	eba4 040e 	sub.w	r4, r4, lr
d03c9718:	2600      	movs	r6, #0
d03c971a:	b11d      	cbz	r5, d03c9724 <__udivmoddi4+0xa0>
d03c971c:	40d4      	lsrs	r4, r2
d03c971e:	2300      	movs	r3, #0
d03c9720:	e9c5 4300 	strd	r4, r3, [r5]
d03c9724:	4631      	mov	r1, r6
d03c9726:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c972a:	b902      	cbnz	r2, d03c972e <__udivmoddi4+0xaa>
d03c972c:	deff      	udf	#255	; 0xff
d03c972e:	fab2 f282 	clz	r2, r2
d03c9732:	2a00      	cmp	r2, #0
d03c9734:	d150      	bne.n	d03c97d8 <__udivmoddi4+0x154>
d03c9736:	1bcb      	subs	r3, r1, r7
d03c9738:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d03c973c:	fa1f f887 	uxth.w	r8, r7
d03c9740:	2601      	movs	r6, #1
d03c9742:	fbb3 fcfe 	udiv	ip, r3, lr
d03c9746:	0c21      	lsrs	r1, r4, #16
d03c9748:	fb0e 331c 	mls	r3, lr, ip, r3
d03c974c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c9750:	fb08 f30c 	mul.w	r3, r8, ip
d03c9754:	428b      	cmp	r3, r1
d03c9756:	d907      	bls.n	d03c9768 <__udivmoddi4+0xe4>
d03c9758:	1879      	adds	r1, r7, r1
d03c975a:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d03c975e:	d202      	bcs.n	d03c9766 <__udivmoddi4+0xe2>
d03c9760:	428b      	cmp	r3, r1
d03c9762:	f200 80e9 	bhi.w	d03c9938 <__udivmoddi4+0x2b4>
d03c9766:	4684      	mov	ip, r0
d03c9768:	1ac9      	subs	r1, r1, r3
d03c976a:	b2a3      	uxth	r3, r4
d03c976c:	fbb1 f0fe 	udiv	r0, r1, lr
d03c9770:	fb0e 1110 	mls	r1, lr, r0, r1
d03c9774:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d03c9778:	fb08 f800 	mul.w	r8, r8, r0
d03c977c:	45a0      	cmp	r8, r4
d03c977e:	d907      	bls.n	d03c9790 <__udivmoddi4+0x10c>
d03c9780:	193c      	adds	r4, r7, r4
d03c9782:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c9786:	d202      	bcs.n	d03c978e <__udivmoddi4+0x10a>
d03c9788:	45a0      	cmp	r8, r4
d03c978a:	f200 80d9 	bhi.w	d03c9940 <__udivmoddi4+0x2bc>
d03c978e:	4618      	mov	r0, r3
d03c9790:	eba4 0408 	sub.w	r4, r4, r8
d03c9794:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d03c9798:	e7bf      	b.n	d03c971a <__udivmoddi4+0x96>
d03c979a:	428b      	cmp	r3, r1
d03c979c:	d909      	bls.n	d03c97b2 <__udivmoddi4+0x12e>
d03c979e:	2d00      	cmp	r5, #0
d03c97a0:	f000 80b1 	beq.w	d03c9906 <__udivmoddi4+0x282>
d03c97a4:	2600      	movs	r6, #0
d03c97a6:	e9c5 0100 	strd	r0, r1, [r5]
d03c97aa:	4630      	mov	r0, r6
d03c97ac:	4631      	mov	r1, r6
d03c97ae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c97b2:	fab3 f683 	clz	r6, r3
d03c97b6:	2e00      	cmp	r6, #0
d03c97b8:	d14a      	bne.n	d03c9850 <__udivmoddi4+0x1cc>
d03c97ba:	428b      	cmp	r3, r1
d03c97bc:	d302      	bcc.n	d03c97c4 <__udivmoddi4+0x140>
d03c97be:	4282      	cmp	r2, r0
d03c97c0:	f200 80b8 	bhi.w	d03c9934 <__udivmoddi4+0x2b0>
d03c97c4:	1a84      	subs	r4, r0, r2
d03c97c6:	eb61 0103 	sbc.w	r1, r1, r3
d03c97ca:	2001      	movs	r0, #1
d03c97cc:	468c      	mov	ip, r1
d03c97ce:	2d00      	cmp	r5, #0
d03c97d0:	d0a8      	beq.n	d03c9724 <__udivmoddi4+0xa0>
d03c97d2:	e9c5 4c00 	strd	r4, ip, [r5]
d03c97d6:	e7a5      	b.n	d03c9724 <__udivmoddi4+0xa0>
d03c97d8:	f1c2 0320 	rsb	r3, r2, #32
d03c97dc:	fa20 f603 	lsr.w	r6, r0, r3
d03c97e0:	4097      	lsls	r7, r2
d03c97e2:	fa01 f002 	lsl.w	r0, r1, r2
d03c97e6:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d03c97ea:	40d9      	lsrs	r1, r3
d03c97ec:	4330      	orrs	r0, r6
d03c97ee:	0c03      	lsrs	r3, r0, #16
d03c97f0:	fbb1 f6fe 	udiv	r6, r1, lr
d03c97f4:	fa1f f887 	uxth.w	r8, r7
d03c97f8:	fb0e 1116 	mls	r1, lr, r6, r1
d03c97fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03c9800:	fb06 f108 	mul.w	r1, r6, r8
d03c9804:	4299      	cmp	r1, r3
d03c9806:	fa04 f402 	lsl.w	r4, r4, r2
d03c980a:	d909      	bls.n	d03c9820 <__udivmoddi4+0x19c>
d03c980c:	18fb      	adds	r3, r7, r3
d03c980e:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d03c9812:	f080 808d 	bcs.w	d03c9930 <__udivmoddi4+0x2ac>
d03c9816:	4299      	cmp	r1, r3
d03c9818:	f240 808a 	bls.w	d03c9930 <__udivmoddi4+0x2ac>
d03c981c:	3e02      	subs	r6, #2
d03c981e:	443b      	add	r3, r7
d03c9820:	1a5b      	subs	r3, r3, r1
d03c9822:	b281      	uxth	r1, r0
d03c9824:	fbb3 f0fe 	udiv	r0, r3, lr
d03c9828:	fb0e 3310 	mls	r3, lr, r0, r3
d03c982c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d03c9830:	fb00 f308 	mul.w	r3, r0, r8
d03c9834:	428b      	cmp	r3, r1
d03c9836:	d907      	bls.n	d03c9848 <__udivmoddi4+0x1c4>
d03c9838:	1879      	adds	r1, r7, r1
d03c983a:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d03c983e:	d273      	bcs.n	d03c9928 <__udivmoddi4+0x2a4>
d03c9840:	428b      	cmp	r3, r1
d03c9842:	d971      	bls.n	d03c9928 <__udivmoddi4+0x2a4>
d03c9844:	3802      	subs	r0, #2
d03c9846:	4439      	add	r1, r7
d03c9848:	1acb      	subs	r3, r1, r3
d03c984a:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d03c984e:	e778      	b.n	d03c9742 <__udivmoddi4+0xbe>
d03c9850:	f1c6 0c20 	rsb	ip, r6, #32
d03c9854:	fa03 f406 	lsl.w	r4, r3, r6
d03c9858:	fa22 f30c 	lsr.w	r3, r2, ip
d03c985c:	431c      	orrs	r4, r3
d03c985e:	fa20 f70c 	lsr.w	r7, r0, ip
d03c9862:	fa01 f306 	lsl.w	r3, r1, r6
d03c9866:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d03c986a:	fa21 f10c 	lsr.w	r1, r1, ip
d03c986e:	431f      	orrs	r7, r3
d03c9870:	0c3b      	lsrs	r3, r7, #16
d03c9872:	fbb1 f9fe 	udiv	r9, r1, lr
d03c9876:	fa1f f884 	uxth.w	r8, r4
d03c987a:	fb0e 1119 	mls	r1, lr, r9, r1
d03c987e:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d03c9882:	fb09 fa08 	mul.w	sl, r9, r8
d03c9886:	458a      	cmp	sl, r1
d03c9888:	fa02 f206 	lsl.w	r2, r2, r6
d03c988c:	fa00 f306 	lsl.w	r3, r0, r6
d03c9890:	d908      	bls.n	d03c98a4 <__udivmoddi4+0x220>
d03c9892:	1861      	adds	r1, r4, r1
d03c9894:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d03c9898:	d248      	bcs.n	d03c992c <__udivmoddi4+0x2a8>
d03c989a:	458a      	cmp	sl, r1
d03c989c:	d946      	bls.n	d03c992c <__udivmoddi4+0x2a8>
d03c989e:	f1a9 0902 	sub.w	r9, r9, #2
d03c98a2:	4421      	add	r1, r4
d03c98a4:	eba1 010a 	sub.w	r1, r1, sl
d03c98a8:	b2bf      	uxth	r7, r7
d03c98aa:	fbb1 f0fe 	udiv	r0, r1, lr
d03c98ae:	fb0e 1110 	mls	r1, lr, r0, r1
d03c98b2:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d03c98b6:	fb00 f808 	mul.w	r8, r0, r8
d03c98ba:	45b8      	cmp	r8, r7
d03c98bc:	d907      	bls.n	d03c98ce <__udivmoddi4+0x24a>
d03c98be:	19e7      	adds	r7, r4, r7
d03c98c0:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d03c98c4:	d22e      	bcs.n	d03c9924 <__udivmoddi4+0x2a0>
d03c98c6:	45b8      	cmp	r8, r7
d03c98c8:	d92c      	bls.n	d03c9924 <__udivmoddi4+0x2a0>
d03c98ca:	3802      	subs	r0, #2
d03c98cc:	4427      	add	r7, r4
d03c98ce:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d03c98d2:	eba7 0708 	sub.w	r7, r7, r8
d03c98d6:	fba0 8902 	umull	r8, r9, r0, r2
d03c98da:	454f      	cmp	r7, r9
d03c98dc:	46c6      	mov	lr, r8
d03c98de:	4649      	mov	r1, r9
d03c98e0:	d31a      	bcc.n	d03c9918 <__udivmoddi4+0x294>
d03c98e2:	d017      	beq.n	d03c9914 <__udivmoddi4+0x290>
d03c98e4:	b15d      	cbz	r5, d03c98fe <__udivmoddi4+0x27a>
d03c98e6:	ebb3 020e 	subs.w	r2, r3, lr
d03c98ea:	eb67 0701 	sbc.w	r7, r7, r1
d03c98ee:	fa07 fc0c 	lsl.w	ip, r7, ip
d03c98f2:	40f2      	lsrs	r2, r6
d03c98f4:	ea4c 0202 	orr.w	r2, ip, r2
d03c98f8:	40f7      	lsrs	r7, r6
d03c98fa:	e9c5 2700 	strd	r2, r7, [r5]
d03c98fe:	2600      	movs	r6, #0
d03c9900:	4631      	mov	r1, r6
d03c9902:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03c9906:	462e      	mov	r6, r5
d03c9908:	4628      	mov	r0, r5
d03c990a:	e70b      	b.n	d03c9724 <__udivmoddi4+0xa0>
d03c990c:	4606      	mov	r6, r0
d03c990e:	e6e9      	b.n	d03c96e4 <__udivmoddi4+0x60>
d03c9910:	4618      	mov	r0, r3
d03c9912:	e6fd      	b.n	d03c9710 <__udivmoddi4+0x8c>
d03c9914:	4543      	cmp	r3, r8
d03c9916:	d2e5      	bcs.n	d03c98e4 <__udivmoddi4+0x260>
d03c9918:	ebb8 0e02 	subs.w	lr, r8, r2
d03c991c:	eb69 0104 	sbc.w	r1, r9, r4
d03c9920:	3801      	subs	r0, #1
d03c9922:	e7df      	b.n	d03c98e4 <__udivmoddi4+0x260>
d03c9924:	4608      	mov	r0, r1
d03c9926:	e7d2      	b.n	d03c98ce <__udivmoddi4+0x24a>
d03c9928:	4660      	mov	r0, ip
d03c992a:	e78d      	b.n	d03c9848 <__udivmoddi4+0x1c4>
d03c992c:	4681      	mov	r9, r0
d03c992e:	e7b9      	b.n	d03c98a4 <__udivmoddi4+0x220>
d03c9930:	4666      	mov	r6, ip
d03c9932:	e775      	b.n	d03c9820 <__udivmoddi4+0x19c>
d03c9934:	4630      	mov	r0, r6
d03c9936:	e74a      	b.n	d03c97ce <__udivmoddi4+0x14a>
d03c9938:	f1ac 0c02 	sub.w	ip, ip, #2
d03c993c:	4439      	add	r1, r7
d03c993e:	e713      	b.n	d03c9768 <__udivmoddi4+0xe4>
d03c9940:	3802      	subs	r0, #2
d03c9942:	443c      	add	r4, r7
d03c9944:	e724      	b.n	d03c9790 <__udivmoddi4+0x10c>
d03c9946:	bf00      	nop

d03c9948 <__aeabi_idiv0>:
d03c9948:	4770      	bx	lr
d03c994a:	bf00      	nop

d03c994c <__errno>:
d03c994c:	4b01      	ldr	r3, [pc, #4]	; (d03c9954 <__errno+0x8>)
d03c994e:	6818      	ldr	r0, [r3, #0]
d03c9950:	4770      	bx	lr
d03c9952:	bf00      	nop
d03c9954:	d03ccc70 	.word	0xd03ccc70

d03c9958 <malloc>:
d03c9958:	4b02      	ldr	r3, [pc, #8]	; (d03c9964 <malloc+0xc>)
d03c995a:	4601      	mov	r1, r0
d03c995c:	6818      	ldr	r0, [r3, #0]
d03c995e:	f000 b87f 	b.w	d03c9a60 <_malloc_r>
d03c9962:	bf00      	nop
d03c9964:	d03ccc70 	.word	0xd03ccc70

d03c9968 <free>:
d03c9968:	4b02      	ldr	r3, [pc, #8]	; (d03c9974 <free+0xc>)
d03c996a:	4601      	mov	r1, r0
d03c996c:	6818      	ldr	r0, [r3, #0]
d03c996e:	f000 b827 	b.w	d03c99c0 <_free_r>
d03c9972:	bf00      	nop
d03c9974:	d03ccc70 	.word	0xd03ccc70

d03c9978 <memcmp>:
d03c9978:	b530      	push	{r4, r5, lr}
d03c997a:	3901      	subs	r1, #1
d03c997c:	2400      	movs	r4, #0
d03c997e:	42a2      	cmp	r2, r4
d03c9980:	d101      	bne.n	d03c9986 <memcmp+0xe>
d03c9982:	2000      	movs	r0, #0
d03c9984:	e005      	b.n	d03c9992 <memcmp+0x1a>
d03c9986:	5d03      	ldrb	r3, [r0, r4]
d03c9988:	3401      	adds	r4, #1
d03c998a:	5d0d      	ldrb	r5, [r1, r4]
d03c998c:	42ab      	cmp	r3, r5
d03c998e:	d0f6      	beq.n	d03c997e <memcmp+0x6>
d03c9990:	1b58      	subs	r0, r3, r5
d03c9992:	bd30      	pop	{r4, r5, pc}

d03c9994 <memcpy>:
d03c9994:	440a      	add	r2, r1
d03c9996:	4291      	cmp	r1, r2
d03c9998:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d03c999c:	d100      	bne.n	d03c99a0 <memcpy+0xc>
d03c999e:	4770      	bx	lr
d03c99a0:	b510      	push	{r4, lr}
d03c99a2:	f811 4b01 	ldrb.w	r4, [r1], #1
d03c99a6:	f803 4f01 	strb.w	r4, [r3, #1]!
d03c99aa:	4291      	cmp	r1, r2
d03c99ac:	d1f9      	bne.n	d03c99a2 <memcpy+0xe>
d03c99ae:	bd10      	pop	{r4, pc}

d03c99b0 <memset>:
d03c99b0:	4402      	add	r2, r0
d03c99b2:	4603      	mov	r3, r0
d03c99b4:	4293      	cmp	r3, r2
d03c99b6:	d100      	bne.n	d03c99ba <memset+0xa>
d03c99b8:	4770      	bx	lr
d03c99ba:	f803 1b01 	strb.w	r1, [r3], #1
d03c99be:	e7f9      	b.n	d03c99b4 <memset+0x4>

d03c99c0 <_free_r>:
d03c99c0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03c99c2:	2900      	cmp	r1, #0
d03c99c4:	d048      	beq.n	d03c9a58 <_free_r+0x98>
d03c99c6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03c99ca:	9001      	str	r0, [sp, #4]
d03c99cc:	2b00      	cmp	r3, #0
d03c99ce:	f1a1 0404 	sub.w	r4, r1, #4
d03c99d2:	bfb8      	it	lt
d03c99d4:	18e4      	addlt	r4, r4, r3
d03c99d6:	f000 fd35 	bl	d03ca444 <__malloc_lock>
d03c99da:	4a20      	ldr	r2, [pc, #128]	; (d03c9a5c <_free_r+0x9c>)
d03c99dc:	9801      	ldr	r0, [sp, #4]
d03c99de:	6813      	ldr	r3, [r2, #0]
d03c99e0:	4615      	mov	r5, r2
d03c99e2:	b933      	cbnz	r3, d03c99f2 <_free_r+0x32>
d03c99e4:	6063      	str	r3, [r4, #4]
d03c99e6:	6014      	str	r4, [r2, #0]
d03c99e8:	b003      	add	sp, #12
d03c99ea:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03c99ee:	f000 bd2f 	b.w	d03ca450 <__malloc_unlock>
d03c99f2:	42a3      	cmp	r3, r4
d03c99f4:	d90b      	bls.n	d03c9a0e <_free_r+0x4e>
d03c99f6:	6821      	ldr	r1, [r4, #0]
d03c99f8:	1862      	adds	r2, r4, r1
d03c99fa:	4293      	cmp	r3, r2
d03c99fc:	bf04      	itt	eq
d03c99fe:	681a      	ldreq	r2, [r3, #0]
d03c9a00:	685b      	ldreq	r3, [r3, #4]
d03c9a02:	6063      	str	r3, [r4, #4]
d03c9a04:	bf04      	itt	eq
d03c9a06:	1852      	addeq	r2, r2, r1
d03c9a08:	6022      	streq	r2, [r4, #0]
d03c9a0a:	602c      	str	r4, [r5, #0]
d03c9a0c:	e7ec      	b.n	d03c99e8 <_free_r+0x28>
d03c9a0e:	461a      	mov	r2, r3
d03c9a10:	685b      	ldr	r3, [r3, #4]
d03c9a12:	b10b      	cbz	r3, d03c9a18 <_free_r+0x58>
d03c9a14:	42a3      	cmp	r3, r4
d03c9a16:	d9fa      	bls.n	d03c9a0e <_free_r+0x4e>
d03c9a18:	6811      	ldr	r1, [r2, #0]
d03c9a1a:	1855      	adds	r5, r2, r1
d03c9a1c:	42a5      	cmp	r5, r4
d03c9a1e:	d10b      	bne.n	d03c9a38 <_free_r+0x78>
d03c9a20:	6824      	ldr	r4, [r4, #0]
d03c9a22:	4421      	add	r1, r4
d03c9a24:	1854      	adds	r4, r2, r1
d03c9a26:	42a3      	cmp	r3, r4
d03c9a28:	6011      	str	r1, [r2, #0]
d03c9a2a:	d1dd      	bne.n	d03c99e8 <_free_r+0x28>
d03c9a2c:	681c      	ldr	r4, [r3, #0]
d03c9a2e:	685b      	ldr	r3, [r3, #4]
d03c9a30:	6053      	str	r3, [r2, #4]
d03c9a32:	4421      	add	r1, r4
d03c9a34:	6011      	str	r1, [r2, #0]
d03c9a36:	e7d7      	b.n	d03c99e8 <_free_r+0x28>
d03c9a38:	d902      	bls.n	d03c9a40 <_free_r+0x80>
d03c9a3a:	230c      	movs	r3, #12
d03c9a3c:	6003      	str	r3, [r0, #0]
d03c9a3e:	e7d3      	b.n	d03c99e8 <_free_r+0x28>
d03c9a40:	6825      	ldr	r5, [r4, #0]
d03c9a42:	1961      	adds	r1, r4, r5
d03c9a44:	428b      	cmp	r3, r1
d03c9a46:	bf04      	itt	eq
d03c9a48:	6819      	ldreq	r1, [r3, #0]
d03c9a4a:	685b      	ldreq	r3, [r3, #4]
d03c9a4c:	6063      	str	r3, [r4, #4]
d03c9a4e:	bf04      	itt	eq
d03c9a50:	1949      	addeq	r1, r1, r5
d03c9a52:	6021      	streq	r1, [r4, #0]
d03c9a54:	6054      	str	r4, [r2, #4]
d03c9a56:	e7c7      	b.n	d03c99e8 <_free_r+0x28>
d03c9a58:	b003      	add	sp, #12
d03c9a5a:	bd30      	pop	{r4, r5, pc}
d03c9a5c:	d03cf594 	.word	0xd03cf594

d03c9a60 <_malloc_r>:
d03c9a60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c9a62:	1ccd      	adds	r5, r1, #3
d03c9a64:	f025 0503 	bic.w	r5, r5, #3
d03c9a68:	3508      	adds	r5, #8
d03c9a6a:	2d0c      	cmp	r5, #12
d03c9a6c:	bf38      	it	cc
d03c9a6e:	250c      	movcc	r5, #12
d03c9a70:	2d00      	cmp	r5, #0
d03c9a72:	4606      	mov	r6, r0
d03c9a74:	db01      	blt.n	d03c9a7a <_malloc_r+0x1a>
d03c9a76:	42a9      	cmp	r1, r5
d03c9a78:	d903      	bls.n	d03c9a82 <_malloc_r+0x22>
d03c9a7a:	230c      	movs	r3, #12
d03c9a7c:	6033      	str	r3, [r6, #0]
d03c9a7e:	2000      	movs	r0, #0
d03c9a80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c9a82:	f000 fcdf 	bl	d03ca444 <__malloc_lock>
d03c9a86:	4921      	ldr	r1, [pc, #132]	; (d03c9b0c <_malloc_r+0xac>)
d03c9a88:	680a      	ldr	r2, [r1, #0]
d03c9a8a:	4614      	mov	r4, r2
d03c9a8c:	b99c      	cbnz	r4, d03c9ab6 <_malloc_r+0x56>
d03c9a8e:	4f20      	ldr	r7, [pc, #128]	; (d03c9b10 <_malloc_r+0xb0>)
d03c9a90:	683b      	ldr	r3, [r7, #0]
d03c9a92:	b923      	cbnz	r3, d03c9a9e <_malloc_r+0x3e>
d03c9a94:	4621      	mov	r1, r4
d03c9a96:	4630      	mov	r0, r6
d03c9a98:	f7f6 fb22 	bl	d03c00e0 <_sbrk_r>
d03c9a9c:	6038      	str	r0, [r7, #0]
d03c9a9e:	4629      	mov	r1, r5
d03c9aa0:	4630      	mov	r0, r6
d03c9aa2:	f7f6 fb1d 	bl	d03c00e0 <_sbrk_r>
d03c9aa6:	1c43      	adds	r3, r0, #1
d03c9aa8:	d123      	bne.n	d03c9af2 <_malloc_r+0x92>
d03c9aaa:	230c      	movs	r3, #12
d03c9aac:	6033      	str	r3, [r6, #0]
d03c9aae:	4630      	mov	r0, r6
d03c9ab0:	f000 fcce 	bl	d03ca450 <__malloc_unlock>
d03c9ab4:	e7e3      	b.n	d03c9a7e <_malloc_r+0x1e>
d03c9ab6:	6823      	ldr	r3, [r4, #0]
d03c9ab8:	1b5b      	subs	r3, r3, r5
d03c9aba:	d417      	bmi.n	d03c9aec <_malloc_r+0x8c>
d03c9abc:	2b0b      	cmp	r3, #11
d03c9abe:	d903      	bls.n	d03c9ac8 <_malloc_r+0x68>
d03c9ac0:	6023      	str	r3, [r4, #0]
d03c9ac2:	441c      	add	r4, r3
d03c9ac4:	6025      	str	r5, [r4, #0]
d03c9ac6:	e004      	b.n	d03c9ad2 <_malloc_r+0x72>
d03c9ac8:	6863      	ldr	r3, [r4, #4]
d03c9aca:	42a2      	cmp	r2, r4
d03c9acc:	bf0c      	ite	eq
d03c9ace:	600b      	streq	r3, [r1, #0]
d03c9ad0:	6053      	strne	r3, [r2, #4]
d03c9ad2:	4630      	mov	r0, r6
d03c9ad4:	f000 fcbc 	bl	d03ca450 <__malloc_unlock>
d03c9ad8:	f104 000b 	add.w	r0, r4, #11
d03c9adc:	1d23      	adds	r3, r4, #4
d03c9ade:	f020 0007 	bic.w	r0, r0, #7
d03c9ae2:	1ac2      	subs	r2, r0, r3
d03c9ae4:	d0cc      	beq.n	d03c9a80 <_malloc_r+0x20>
d03c9ae6:	1a1b      	subs	r3, r3, r0
d03c9ae8:	50a3      	str	r3, [r4, r2]
d03c9aea:	e7c9      	b.n	d03c9a80 <_malloc_r+0x20>
d03c9aec:	4622      	mov	r2, r4
d03c9aee:	6864      	ldr	r4, [r4, #4]
d03c9af0:	e7cc      	b.n	d03c9a8c <_malloc_r+0x2c>
d03c9af2:	1cc4      	adds	r4, r0, #3
d03c9af4:	f024 0403 	bic.w	r4, r4, #3
d03c9af8:	42a0      	cmp	r0, r4
d03c9afa:	d0e3      	beq.n	d03c9ac4 <_malloc_r+0x64>
d03c9afc:	1a21      	subs	r1, r4, r0
d03c9afe:	4630      	mov	r0, r6
d03c9b00:	f7f6 faee 	bl	d03c00e0 <_sbrk_r>
d03c9b04:	3001      	adds	r0, #1
d03c9b06:	d1dd      	bne.n	d03c9ac4 <_malloc_r+0x64>
d03c9b08:	e7cf      	b.n	d03c9aaa <_malloc_r+0x4a>
d03c9b0a:	bf00      	nop
d03c9b0c:	d03cf594 	.word	0xd03cf594
d03c9b10:	d03cf598 	.word	0xd03cf598

d03c9b14 <swapfunc>:
d03c9b14:	2b02      	cmp	r3, #2
d03c9b16:	b510      	push	{r4, lr}
d03c9b18:	d00a      	beq.n	d03c9b30 <swapfunc+0x1c>
d03c9b1a:	0892      	lsrs	r2, r2, #2
d03c9b1c:	3a01      	subs	r2, #1
d03c9b1e:	6803      	ldr	r3, [r0, #0]
d03c9b20:	680c      	ldr	r4, [r1, #0]
d03c9b22:	f840 4b04 	str.w	r4, [r0], #4
d03c9b26:	2a00      	cmp	r2, #0
d03c9b28:	f841 3b04 	str.w	r3, [r1], #4
d03c9b2c:	dcf6      	bgt.n	d03c9b1c <swapfunc+0x8>
d03c9b2e:	bd10      	pop	{r4, pc}
d03c9b30:	4402      	add	r2, r0
d03c9b32:	780c      	ldrb	r4, [r1, #0]
d03c9b34:	7803      	ldrb	r3, [r0, #0]
d03c9b36:	f800 4b01 	strb.w	r4, [r0], #1
d03c9b3a:	f801 3b01 	strb.w	r3, [r1], #1
d03c9b3e:	1a13      	subs	r3, r2, r0
d03c9b40:	2b00      	cmp	r3, #0
d03c9b42:	dcf6      	bgt.n	d03c9b32 <swapfunc+0x1e>
d03c9b44:	e7f3      	b.n	d03c9b2e <swapfunc+0x1a>

d03c9b46 <med3.isra.0>:
d03c9b46:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03c9b48:	460f      	mov	r7, r1
d03c9b4a:	4614      	mov	r4, r2
d03c9b4c:	4606      	mov	r6, r0
d03c9b4e:	461d      	mov	r5, r3
d03c9b50:	4798      	blx	r3
d03c9b52:	2800      	cmp	r0, #0
d03c9b54:	4621      	mov	r1, r4
d03c9b56:	4638      	mov	r0, r7
d03c9b58:	da0c      	bge.n	d03c9b74 <med3.isra.0+0x2e>
d03c9b5a:	47a8      	blx	r5
d03c9b5c:	2800      	cmp	r0, #0
d03c9b5e:	da02      	bge.n	d03c9b66 <med3.isra.0+0x20>
d03c9b60:	463c      	mov	r4, r7
d03c9b62:	4620      	mov	r0, r4
d03c9b64:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03c9b66:	4621      	mov	r1, r4
d03c9b68:	4630      	mov	r0, r6
d03c9b6a:	47a8      	blx	r5
d03c9b6c:	2800      	cmp	r0, #0
d03c9b6e:	dbf8      	blt.n	d03c9b62 <med3.isra.0+0x1c>
d03c9b70:	4634      	mov	r4, r6
d03c9b72:	e7f6      	b.n	d03c9b62 <med3.isra.0+0x1c>
d03c9b74:	47a8      	blx	r5
d03c9b76:	2800      	cmp	r0, #0
d03c9b78:	dcf2      	bgt.n	d03c9b60 <med3.isra.0+0x1a>
d03c9b7a:	4621      	mov	r1, r4
d03c9b7c:	4630      	mov	r0, r6
d03c9b7e:	47a8      	blx	r5
d03c9b80:	2800      	cmp	r0, #0
d03c9b82:	daee      	bge.n	d03c9b62 <med3.isra.0+0x1c>
d03c9b84:	e7f4      	b.n	d03c9b70 <med3.isra.0+0x2a>

d03c9b86 <qsort>:
d03c9b86:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03c9b8a:	469a      	mov	sl, r3
d03c9b8c:	ea40 0302 	orr.w	r3, r0, r2
d03c9b90:	079b      	lsls	r3, r3, #30
d03c9b92:	b097      	sub	sp, #92	; 0x5c
d03c9b94:	4606      	mov	r6, r0
d03c9b96:	4614      	mov	r4, r2
d03c9b98:	d11a      	bne.n	d03c9bd0 <qsort+0x4a>
d03c9b9a:	f1b2 0804 	subs.w	r8, r2, #4
d03c9b9e:	bf18      	it	ne
d03c9ba0:	f04f 0801 	movne.w	r8, #1
d03c9ba4:	2300      	movs	r3, #0
d03c9ba6:	9302      	str	r3, [sp, #8]
d03c9ba8:	1933      	adds	r3, r6, r4
d03c9baa:	fb04 f701 	mul.w	r7, r4, r1
d03c9bae:	9301      	str	r3, [sp, #4]
d03c9bb0:	2906      	cmp	r1, #6
d03c9bb2:	eb06 0307 	add.w	r3, r6, r7
d03c9bb6:	9303      	str	r3, [sp, #12]
d03c9bb8:	d82a      	bhi.n	d03c9c10 <qsort+0x8a>
d03c9bba:	9b01      	ldr	r3, [sp, #4]
d03c9bbc:	9a03      	ldr	r2, [sp, #12]
d03c9bbe:	4293      	cmp	r3, r2
d03c9bc0:	d310      	bcc.n	d03c9be4 <qsort+0x5e>
d03c9bc2:	9b02      	ldr	r3, [sp, #8]
d03c9bc4:	2b00      	cmp	r3, #0
d03c9bc6:	f040 811f 	bne.w	d03c9e08 <qsort+0x282>
d03c9bca:	b017      	add	sp, #92	; 0x5c
d03c9bcc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03c9bd0:	f04f 0802 	mov.w	r8, #2
d03c9bd4:	e7e6      	b.n	d03c9ba4 <qsort+0x1e>
d03c9bd6:	4643      	mov	r3, r8
d03c9bd8:	4622      	mov	r2, r4
d03c9bda:	4639      	mov	r1, r7
d03c9bdc:	4628      	mov	r0, r5
d03c9bde:	f7ff ff99 	bl	d03c9b14 <swapfunc>
d03c9be2:	e00e      	b.n	d03c9c02 <qsort+0x7c>
d03c9be4:	9d01      	ldr	r5, [sp, #4]
d03c9be6:	e00d      	b.n	d03c9c04 <qsort+0x7e>
d03c9be8:	1b2f      	subs	r7, r5, r4
d03c9bea:	4629      	mov	r1, r5
d03c9bec:	4638      	mov	r0, r7
d03c9bee:	47d0      	blx	sl
d03c9bf0:	2800      	cmp	r0, #0
d03c9bf2:	dd09      	ble.n	d03c9c08 <qsort+0x82>
d03c9bf4:	f1b8 0f00 	cmp.w	r8, #0
d03c9bf8:	d1ed      	bne.n	d03c9bd6 <qsort+0x50>
d03c9bfa:	682b      	ldr	r3, [r5, #0]
d03c9bfc:	683a      	ldr	r2, [r7, #0]
d03c9bfe:	602a      	str	r2, [r5, #0]
d03c9c00:	603b      	str	r3, [r7, #0]
d03c9c02:	463d      	mov	r5, r7
d03c9c04:	42ae      	cmp	r6, r5
d03c9c06:	d3ef      	bcc.n	d03c9be8 <qsort+0x62>
d03c9c08:	9b01      	ldr	r3, [sp, #4]
d03c9c0a:	4423      	add	r3, r4
d03c9c0c:	9301      	str	r3, [sp, #4]
d03c9c0e:	e7d4      	b.n	d03c9bba <qsort+0x34>
d03c9c10:	ea4f 0951 	mov.w	r9, r1, lsr #1
d03c9c14:	1b3f      	subs	r7, r7, r4
d03c9c16:	2907      	cmp	r1, #7
d03c9c18:	fb04 6909 	mla	r9, r4, r9, r6
d03c9c1c:	4437      	add	r7, r6
d03c9c1e:	d022      	beq.n	d03c9c66 <qsort+0xe0>
d03c9c20:	2928      	cmp	r1, #40	; 0x28
d03c9c22:	d945      	bls.n	d03c9cb0 <qsort+0x12a>
d03c9c24:	08c9      	lsrs	r1, r1, #3
d03c9c26:	fb04 f501 	mul.w	r5, r4, r1
d03c9c2a:	4653      	mov	r3, sl
d03c9c2c:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d03c9c30:	1971      	adds	r1, r6, r5
d03c9c32:	4630      	mov	r0, r6
d03c9c34:	f7ff ff87 	bl	d03c9b46 <med3.isra.0>
d03c9c38:	4649      	mov	r1, r9
d03c9c3a:	eb09 0205 	add.w	r2, r9, r5
d03c9c3e:	4653      	mov	r3, sl
d03c9c40:	4683      	mov	fp, r0
d03c9c42:	1b48      	subs	r0, r1, r5
d03c9c44:	f7ff ff7f 	bl	d03c9b46 <med3.isra.0>
d03c9c48:	463a      	mov	r2, r7
d03c9c4a:	4681      	mov	r9, r0
d03c9c4c:	4653      	mov	r3, sl
d03c9c4e:	1b79      	subs	r1, r7, r5
d03c9c50:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d03c9c54:	f7ff ff77 	bl	d03c9b46 <med3.isra.0>
d03c9c58:	4602      	mov	r2, r0
d03c9c5a:	4649      	mov	r1, r9
d03c9c5c:	4653      	mov	r3, sl
d03c9c5e:	4658      	mov	r0, fp
d03c9c60:	f7ff ff71 	bl	d03c9b46 <med3.isra.0>
d03c9c64:	4681      	mov	r9, r0
d03c9c66:	f1b8 0f00 	cmp.w	r8, #0
d03c9c6a:	d124      	bne.n	d03c9cb6 <qsort+0x130>
d03c9c6c:	6833      	ldr	r3, [r6, #0]
d03c9c6e:	f8d9 2000 	ldr.w	r2, [r9]
d03c9c72:	6032      	str	r2, [r6, #0]
d03c9c74:	f8c9 3000 	str.w	r3, [r9]
d03c9c78:	eb06 0b04 	add.w	fp, r6, r4
d03c9c7c:	46b9      	mov	r9, r7
d03c9c7e:	465d      	mov	r5, fp
d03c9c80:	2300      	movs	r3, #0
d03c9c82:	45bb      	cmp	fp, r7
d03c9c84:	d835      	bhi.n	d03c9cf2 <qsort+0x16c>
d03c9c86:	4631      	mov	r1, r6
d03c9c88:	4658      	mov	r0, fp
d03c9c8a:	9304      	str	r3, [sp, #16]
d03c9c8c:	47d0      	blx	sl
d03c9c8e:	2800      	cmp	r0, #0
d03c9c90:	9b04      	ldr	r3, [sp, #16]
d03c9c92:	dc3e      	bgt.n	d03c9d12 <qsort+0x18c>
d03c9c94:	d10a      	bne.n	d03c9cac <qsort+0x126>
d03c9c96:	f1b8 0f00 	cmp.w	r8, #0
d03c9c9a:	d113      	bne.n	d03c9cc4 <qsort+0x13e>
d03c9c9c:	682b      	ldr	r3, [r5, #0]
d03c9c9e:	f8db 2000 	ldr.w	r2, [fp]
d03c9ca2:	602a      	str	r2, [r5, #0]
d03c9ca4:	f8cb 3000 	str.w	r3, [fp]
d03c9ca8:	4425      	add	r5, r4
d03c9caa:	2301      	movs	r3, #1
d03c9cac:	44a3      	add	fp, r4
d03c9cae:	e7e8      	b.n	d03c9c82 <qsort+0xfc>
d03c9cb0:	463a      	mov	r2, r7
d03c9cb2:	46b3      	mov	fp, r6
d03c9cb4:	e7d1      	b.n	d03c9c5a <qsort+0xd4>
d03c9cb6:	4643      	mov	r3, r8
d03c9cb8:	4622      	mov	r2, r4
d03c9cba:	4649      	mov	r1, r9
d03c9cbc:	4630      	mov	r0, r6
d03c9cbe:	f7ff ff29 	bl	d03c9b14 <swapfunc>
d03c9cc2:	e7d9      	b.n	d03c9c78 <qsort+0xf2>
d03c9cc4:	4643      	mov	r3, r8
d03c9cc6:	4622      	mov	r2, r4
d03c9cc8:	4659      	mov	r1, fp
d03c9cca:	4628      	mov	r0, r5
d03c9ccc:	f7ff ff22 	bl	d03c9b14 <swapfunc>
d03c9cd0:	e7ea      	b.n	d03c9ca8 <qsort+0x122>
d03c9cd2:	d10b      	bne.n	d03c9cec <qsort+0x166>
d03c9cd4:	f1b8 0f00 	cmp.w	r8, #0
d03c9cd8:	d114      	bne.n	d03c9d04 <qsort+0x17e>
d03c9cda:	683b      	ldr	r3, [r7, #0]
d03c9cdc:	f8d9 2000 	ldr.w	r2, [r9]
d03c9ce0:	603a      	str	r2, [r7, #0]
d03c9ce2:	f8c9 3000 	str.w	r3, [r9]
d03c9ce6:	eba9 0904 	sub.w	r9, r9, r4
d03c9cea:	2301      	movs	r3, #1
d03c9cec:	9f04      	ldr	r7, [sp, #16]
d03c9cee:	45bb      	cmp	fp, r7
d03c9cf0:	d90f      	bls.n	d03c9d12 <qsort+0x18c>
d03c9cf2:	2b00      	cmp	r3, #0
d03c9cf4:	d143      	bne.n	d03c9d7e <qsort+0x1f8>
d03c9cf6:	9b01      	ldr	r3, [sp, #4]
d03c9cf8:	9a03      	ldr	r2, [sp, #12]
d03c9cfa:	4293      	cmp	r3, r2
d03c9cfc:	f4bf af61 	bcs.w	d03c9bc2 <qsort+0x3c>
d03c9d00:	9d01      	ldr	r5, [sp, #4]
d03c9d02:	e036      	b.n	d03c9d72 <qsort+0x1ec>
d03c9d04:	4643      	mov	r3, r8
d03c9d06:	4622      	mov	r2, r4
d03c9d08:	4649      	mov	r1, r9
d03c9d0a:	4638      	mov	r0, r7
d03c9d0c:	f7ff ff02 	bl	d03c9b14 <swapfunc>
d03c9d10:	e7e9      	b.n	d03c9ce6 <qsort+0x160>
d03c9d12:	4631      	mov	r1, r6
d03c9d14:	4638      	mov	r0, r7
d03c9d16:	9305      	str	r3, [sp, #20]
d03c9d18:	47d0      	blx	sl
d03c9d1a:	1b3b      	subs	r3, r7, r4
d03c9d1c:	2800      	cmp	r0, #0
d03c9d1e:	9304      	str	r3, [sp, #16]
d03c9d20:	9b05      	ldr	r3, [sp, #20]
d03c9d22:	dad6      	bge.n	d03c9cd2 <qsort+0x14c>
d03c9d24:	f1b8 0f00 	cmp.w	r8, #0
d03c9d28:	d006      	beq.n	d03c9d38 <qsort+0x1b2>
d03c9d2a:	4643      	mov	r3, r8
d03c9d2c:	4622      	mov	r2, r4
d03c9d2e:	4639      	mov	r1, r7
d03c9d30:	4658      	mov	r0, fp
d03c9d32:	f7ff feef 	bl	d03c9b14 <swapfunc>
d03c9d36:	e005      	b.n	d03c9d44 <qsort+0x1be>
d03c9d38:	f8db 3000 	ldr.w	r3, [fp]
d03c9d3c:	683a      	ldr	r2, [r7, #0]
d03c9d3e:	f8cb 2000 	str.w	r2, [fp]
d03c9d42:	603b      	str	r3, [r7, #0]
d03c9d44:	9f04      	ldr	r7, [sp, #16]
d03c9d46:	e7b0      	b.n	d03c9caa <qsort+0x124>
d03c9d48:	4643      	mov	r3, r8
d03c9d4a:	4622      	mov	r2, r4
d03c9d4c:	4639      	mov	r1, r7
d03c9d4e:	4628      	mov	r0, r5
d03c9d50:	f7ff fee0 	bl	d03c9b14 <swapfunc>
d03c9d54:	e00c      	b.n	d03c9d70 <qsort+0x1ea>
d03c9d56:	1b2f      	subs	r7, r5, r4
d03c9d58:	4629      	mov	r1, r5
d03c9d5a:	4638      	mov	r0, r7
d03c9d5c:	47d0      	blx	sl
d03c9d5e:	2800      	cmp	r0, #0
d03c9d60:	dd09      	ble.n	d03c9d76 <qsort+0x1f0>
d03c9d62:	f1b8 0f00 	cmp.w	r8, #0
d03c9d66:	d1ef      	bne.n	d03c9d48 <qsort+0x1c2>
d03c9d68:	682b      	ldr	r3, [r5, #0]
d03c9d6a:	683a      	ldr	r2, [r7, #0]
d03c9d6c:	602a      	str	r2, [r5, #0]
d03c9d6e:	603b      	str	r3, [r7, #0]
d03c9d70:	463d      	mov	r5, r7
d03c9d72:	42ae      	cmp	r6, r5
d03c9d74:	d3ef      	bcc.n	d03c9d56 <qsort+0x1d0>
d03c9d76:	9b01      	ldr	r3, [sp, #4]
d03c9d78:	4423      	add	r3, r4
d03c9d7a:	9301      	str	r3, [sp, #4]
d03c9d7c:	e7bb      	b.n	d03c9cf6 <qsort+0x170>
d03c9d7e:	ebab 0305 	sub.w	r3, fp, r5
d03c9d82:	1baa      	subs	r2, r5, r6
d03c9d84:	429a      	cmp	r2, r3
d03c9d86:	bfa8      	it	ge
d03c9d88:	461a      	movge	r2, r3
d03c9d8a:	9301      	str	r3, [sp, #4]
d03c9d8c:	b12a      	cbz	r2, d03c9d9a <qsort+0x214>
d03c9d8e:	4643      	mov	r3, r8
d03c9d90:	ebab 0102 	sub.w	r1, fp, r2
d03c9d94:	4630      	mov	r0, r6
d03c9d96:	f7ff febd 	bl	d03c9b14 <swapfunc>
d03c9d9a:	9b03      	ldr	r3, [sp, #12]
d03c9d9c:	eba3 0209 	sub.w	r2, r3, r9
d03c9da0:	eba9 0707 	sub.w	r7, r9, r7
d03c9da4:	1b12      	subs	r2, r2, r4
d03c9da6:	42ba      	cmp	r2, r7
d03c9da8:	bf28      	it	cs
d03c9daa:	463a      	movcs	r2, r7
d03c9dac:	b12a      	cbz	r2, d03c9dba <qsort+0x234>
d03c9dae:	9903      	ldr	r1, [sp, #12]
d03c9db0:	4643      	mov	r3, r8
d03c9db2:	1a89      	subs	r1, r1, r2
d03c9db4:	4658      	mov	r0, fp
d03c9db6:	f7ff fead 	bl	d03c9b14 <swapfunc>
d03c9dba:	f8dd 9004 	ldr.w	r9, [sp, #4]
d03c9dbe:	9b03      	ldr	r3, [sp, #12]
d03c9dc0:	454f      	cmp	r7, r9
d03c9dc2:	eba3 0007 	sub.w	r0, r3, r7
d03c9dc6:	d904      	bls.n	d03c9dd2 <qsort+0x24c>
d03c9dc8:	4633      	mov	r3, r6
d03c9dca:	46b9      	mov	r9, r7
d03c9dcc:	9f01      	ldr	r7, [sp, #4]
d03c9dce:	4606      	mov	r6, r0
d03c9dd0:	4618      	mov	r0, r3
d03c9dd2:	42a7      	cmp	r7, r4
d03c9dd4:	d921      	bls.n	d03c9e1a <qsort+0x294>
d03c9dd6:	fbb7 f1f4 	udiv	r1, r7, r4
d03c9dda:	9b02      	ldr	r3, [sp, #8]
d03c9ddc:	2b07      	cmp	r3, #7
d03c9dde:	d80d      	bhi.n	d03c9dfc <qsort+0x276>
d03c9de0:	fbb9 f7f4 	udiv	r7, r9, r4
d03c9de4:	aa16      	add	r2, sp, #88	; 0x58
d03c9de6:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d03c9dea:	f843 6c40 	str.w	r6, [r3, #-64]
d03c9dee:	f843 7c3c 	str.w	r7, [r3, #-60]
d03c9df2:	9b02      	ldr	r3, [sp, #8]
d03c9df4:	3301      	adds	r3, #1
d03c9df6:	9302      	str	r3, [sp, #8]
d03c9df8:	4606      	mov	r6, r0
d03c9dfa:	e6d5      	b.n	d03c9ba8 <qsort+0x22>
d03c9dfc:	4653      	mov	r3, sl
d03c9dfe:	4622      	mov	r2, r4
d03c9e00:	f7ff fec1 	bl	d03c9b86 <qsort>
d03c9e04:	45a1      	cmp	r9, r4
d03c9e06:	d80b      	bhi.n	d03c9e20 <qsort+0x29a>
d03c9e08:	9b02      	ldr	r3, [sp, #8]
d03c9e0a:	aa16      	add	r2, sp, #88	; 0x58
d03c9e0c:	3b01      	subs	r3, #1
d03c9e0e:	9302      	str	r3, [sp, #8]
d03c9e10:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d03c9e14:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d03c9e18:	e7ee      	b.n	d03c9df8 <qsort+0x272>
d03c9e1a:	45a1      	cmp	r9, r4
d03c9e1c:	f67f aed1 	bls.w	d03c9bc2 <qsort+0x3c>
d03c9e20:	fbb9 f1f4 	udiv	r1, r9, r4
d03c9e24:	4630      	mov	r0, r6
d03c9e26:	e7e7      	b.n	d03c9df8 <qsort+0x272>

d03c9e28 <setbuf>:
d03c9e28:	2900      	cmp	r1, #0
d03c9e2a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03c9e2e:	bf0c      	ite	eq
d03c9e30:	2202      	moveq	r2, #2
d03c9e32:	2200      	movne	r2, #0
d03c9e34:	f000 b800 	b.w	d03c9e38 <setvbuf>

d03c9e38 <setvbuf>:
d03c9e38:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03c9e3c:	461d      	mov	r5, r3
d03c9e3e:	4b5d      	ldr	r3, [pc, #372]	; (d03c9fb4 <setvbuf+0x17c>)
d03c9e40:	681f      	ldr	r7, [r3, #0]
d03c9e42:	4604      	mov	r4, r0
d03c9e44:	460e      	mov	r6, r1
d03c9e46:	4690      	mov	r8, r2
d03c9e48:	b127      	cbz	r7, d03c9e54 <setvbuf+0x1c>
d03c9e4a:	69bb      	ldr	r3, [r7, #24]
d03c9e4c:	b913      	cbnz	r3, d03c9e54 <setvbuf+0x1c>
d03c9e4e:	4638      	mov	r0, r7
d03c9e50:	f000 fa34 	bl	d03ca2bc <__sinit>
d03c9e54:	4b58      	ldr	r3, [pc, #352]	; (d03c9fb8 <setvbuf+0x180>)
d03c9e56:	429c      	cmp	r4, r3
d03c9e58:	d167      	bne.n	d03c9f2a <setvbuf+0xf2>
d03c9e5a:	687c      	ldr	r4, [r7, #4]
d03c9e5c:	f1b8 0f02 	cmp.w	r8, #2
d03c9e60:	d006      	beq.n	d03c9e70 <setvbuf+0x38>
d03c9e62:	f1b8 0f01 	cmp.w	r8, #1
d03c9e66:	f200 809f 	bhi.w	d03c9fa8 <setvbuf+0x170>
d03c9e6a:	2d00      	cmp	r5, #0
d03c9e6c:	f2c0 809c 	blt.w	d03c9fa8 <setvbuf+0x170>
d03c9e70:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03c9e72:	07db      	lsls	r3, r3, #31
d03c9e74:	d405      	bmi.n	d03c9e82 <setvbuf+0x4a>
d03c9e76:	89a3      	ldrh	r3, [r4, #12]
d03c9e78:	0598      	lsls	r0, r3, #22
d03c9e7a:	d402      	bmi.n	d03c9e82 <setvbuf+0x4a>
d03c9e7c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03c9e7e:	f000 fabb 	bl	d03ca3f8 <__retarget_lock_acquire_recursive>
d03c9e82:	4621      	mov	r1, r4
d03c9e84:	4638      	mov	r0, r7
d03c9e86:	f000 f985 	bl	d03ca194 <_fflush_r>
d03c9e8a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03c9e8c:	b141      	cbz	r1, d03c9ea0 <setvbuf+0x68>
d03c9e8e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03c9e92:	4299      	cmp	r1, r3
d03c9e94:	d002      	beq.n	d03c9e9c <setvbuf+0x64>
d03c9e96:	4638      	mov	r0, r7
d03c9e98:	f7ff fd92 	bl	d03c99c0 <_free_r>
d03c9e9c:	2300      	movs	r3, #0
d03c9e9e:	6363      	str	r3, [r4, #52]	; 0x34
d03c9ea0:	2300      	movs	r3, #0
d03c9ea2:	61a3      	str	r3, [r4, #24]
d03c9ea4:	6063      	str	r3, [r4, #4]
d03c9ea6:	89a3      	ldrh	r3, [r4, #12]
d03c9ea8:	0619      	lsls	r1, r3, #24
d03c9eaa:	d503      	bpl.n	d03c9eb4 <setvbuf+0x7c>
d03c9eac:	6921      	ldr	r1, [r4, #16]
d03c9eae:	4638      	mov	r0, r7
d03c9eb0:	f7ff fd86 	bl	d03c99c0 <_free_r>
d03c9eb4:	89a3      	ldrh	r3, [r4, #12]
d03c9eb6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03c9eba:	f023 0303 	bic.w	r3, r3, #3
d03c9ebe:	f1b8 0f02 	cmp.w	r8, #2
d03c9ec2:	81a3      	strh	r3, [r4, #12]
d03c9ec4:	d06c      	beq.n	d03c9fa0 <setvbuf+0x168>
d03c9ec6:	ab01      	add	r3, sp, #4
d03c9ec8:	466a      	mov	r2, sp
d03c9eca:	4621      	mov	r1, r4
d03c9ecc:	4638      	mov	r0, r7
d03c9ece:	f000 fa95 	bl	d03ca3fc <__swhatbuf_r>
d03c9ed2:	89a3      	ldrh	r3, [r4, #12]
d03c9ed4:	4318      	orrs	r0, r3
d03c9ed6:	81a0      	strh	r0, [r4, #12]
d03c9ed8:	2d00      	cmp	r5, #0
d03c9eda:	d130      	bne.n	d03c9f3e <setvbuf+0x106>
d03c9edc:	9d00      	ldr	r5, [sp, #0]
d03c9ede:	4628      	mov	r0, r5
d03c9ee0:	f7ff fd3a 	bl	d03c9958 <malloc>
d03c9ee4:	4606      	mov	r6, r0
d03c9ee6:	2800      	cmp	r0, #0
d03c9ee8:	d155      	bne.n	d03c9f96 <setvbuf+0x15e>
d03c9eea:	f8dd 9000 	ldr.w	r9, [sp]
d03c9eee:	45a9      	cmp	r9, r5
d03c9ef0:	d14a      	bne.n	d03c9f88 <setvbuf+0x150>
d03c9ef2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c9ef6:	2200      	movs	r2, #0
d03c9ef8:	60a2      	str	r2, [r4, #8]
d03c9efa:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03c9efe:	6022      	str	r2, [r4, #0]
d03c9f00:	6122      	str	r2, [r4, #16]
d03c9f02:	2201      	movs	r2, #1
d03c9f04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03c9f08:	6162      	str	r2, [r4, #20]
d03c9f0a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03c9f0c:	f043 0302 	orr.w	r3, r3, #2
d03c9f10:	07d2      	lsls	r2, r2, #31
d03c9f12:	81a3      	strh	r3, [r4, #12]
d03c9f14:	d405      	bmi.n	d03c9f22 <setvbuf+0xea>
d03c9f16:	f413 7f00 	tst.w	r3, #512	; 0x200
d03c9f1a:	d102      	bne.n	d03c9f22 <setvbuf+0xea>
d03c9f1c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03c9f1e:	f000 fa6c 	bl	d03ca3fa <__retarget_lock_release_recursive>
d03c9f22:	4628      	mov	r0, r5
d03c9f24:	b003      	add	sp, #12
d03c9f26:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03c9f2a:	4b24      	ldr	r3, [pc, #144]	; (d03c9fbc <setvbuf+0x184>)
d03c9f2c:	429c      	cmp	r4, r3
d03c9f2e:	d101      	bne.n	d03c9f34 <setvbuf+0xfc>
d03c9f30:	68bc      	ldr	r4, [r7, #8]
d03c9f32:	e793      	b.n	d03c9e5c <setvbuf+0x24>
d03c9f34:	4b22      	ldr	r3, [pc, #136]	; (d03c9fc0 <setvbuf+0x188>)
d03c9f36:	429c      	cmp	r4, r3
d03c9f38:	bf08      	it	eq
d03c9f3a:	68fc      	ldreq	r4, [r7, #12]
d03c9f3c:	e78e      	b.n	d03c9e5c <setvbuf+0x24>
d03c9f3e:	2e00      	cmp	r6, #0
d03c9f40:	d0cd      	beq.n	d03c9ede <setvbuf+0xa6>
d03c9f42:	69bb      	ldr	r3, [r7, #24]
d03c9f44:	b913      	cbnz	r3, d03c9f4c <setvbuf+0x114>
d03c9f46:	4638      	mov	r0, r7
d03c9f48:	f000 f9b8 	bl	d03ca2bc <__sinit>
d03c9f4c:	f1b8 0f01 	cmp.w	r8, #1
d03c9f50:	bf08      	it	eq
d03c9f52:	89a3      	ldrheq	r3, [r4, #12]
d03c9f54:	6026      	str	r6, [r4, #0]
d03c9f56:	bf04      	itt	eq
d03c9f58:	f043 0301 	orreq.w	r3, r3, #1
d03c9f5c:	81a3      	strheq	r3, [r4, #12]
d03c9f5e:	89a2      	ldrh	r2, [r4, #12]
d03c9f60:	f012 0308 	ands.w	r3, r2, #8
d03c9f64:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03c9f68:	d01c      	beq.n	d03c9fa4 <setvbuf+0x16c>
d03c9f6a:	07d3      	lsls	r3, r2, #31
d03c9f6c:	bf41      	itttt	mi
d03c9f6e:	2300      	movmi	r3, #0
d03c9f70:	426d      	negmi	r5, r5
d03c9f72:	60a3      	strmi	r3, [r4, #8]
d03c9f74:	61a5      	strmi	r5, [r4, #24]
d03c9f76:	bf58      	it	pl
d03c9f78:	60a5      	strpl	r5, [r4, #8]
d03c9f7a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03c9f7c:	f015 0501 	ands.w	r5, r5, #1
d03c9f80:	d115      	bne.n	d03c9fae <setvbuf+0x176>
d03c9f82:	f412 7f00 	tst.w	r2, #512	; 0x200
d03c9f86:	e7c8      	b.n	d03c9f1a <setvbuf+0xe2>
d03c9f88:	4648      	mov	r0, r9
d03c9f8a:	f7ff fce5 	bl	d03c9958 <malloc>
d03c9f8e:	4606      	mov	r6, r0
d03c9f90:	2800      	cmp	r0, #0
d03c9f92:	d0ae      	beq.n	d03c9ef2 <setvbuf+0xba>
d03c9f94:	464d      	mov	r5, r9
d03c9f96:	89a3      	ldrh	r3, [r4, #12]
d03c9f98:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03c9f9c:	81a3      	strh	r3, [r4, #12]
d03c9f9e:	e7d0      	b.n	d03c9f42 <setvbuf+0x10a>
d03c9fa0:	2500      	movs	r5, #0
d03c9fa2:	e7a8      	b.n	d03c9ef6 <setvbuf+0xbe>
d03c9fa4:	60a3      	str	r3, [r4, #8]
d03c9fa6:	e7e8      	b.n	d03c9f7a <setvbuf+0x142>
d03c9fa8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03c9fac:	e7b9      	b.n	d03c9f22 <setvbuf+0xea>
d03c9fae:	2500      	movs	r5, #0
d03c9fb0:	e7b7      	b.n	d03c9f22 <setvbuf+0xea>
d03c9fb2:	bf00      	nop
d03c9fb4:	d03ccc70 	.word	0xd03ccc70
d03c9fb8:	d03cc5ec 	.word	0xd03cc5ec
d03c9fbc:	d03cc60c 	.word	0xd03cc60c
d03c9fc0:	d03cc5cc 	.word	0xd03cc5cc

d03c9fc4 <sniprintf>:
d03c9fc4:	b40c      	push	{r2, r3}
d03c9fc6:	b530      	push	{r4, r5, lr}
d03c9fc8:	4b17      	ldr	r3, [pc, #92]	; (d03ca028 <sniprintf+0x64>)
d03c9fca:	1e0c      	subs	r4, r1, #0
d03c9fcc:	681d      	ldr	r5, [r3, #0]
d03c9fce:	b09d      	sub	sp, #116	; 0x74
d03c9fd0:	da08      	bge.n	d03c9fe4 <sniprintf+0x20>
d03c9fd2:	238b      	movs	r3, #139	; 0x8b
d03c9fd4:	602b      	str	r3, [r5, #0]
d03c9fd6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03c9fda:	b01d      	add	sp, #116	; 0x74
d03c9fdc:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03c9fe0:	b002      	add	sp, #8
d03c9fe2:	4770      	bx	lr
d03c9fe4:	f44f 7302 	mov.w	r3, #520	; 0x208
d03c9fe8:	f8ad 3014 	strh.w	r3, [sp, #20]
d03c9fec:	bf14      	ite	ne
d03c9fee:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d03c9ff2:	4623      	moveq	r3, r4
d03c9ff4:	9304      	str	r3, [sp, #16]
d03c9ff6:	9307      	str	r3, [sp, #28]
d03c9ff8:	f64f 73ff 	movw	r3, #65535	; 0xffff
d03c9ffc:	9002      	str	r0, [sp, #8]
d03c9ffe:	9006      	str	r0, [sp, #24]
d03ca000:	f8ad 3016 	strh.w	r3, [sp, #22]
d03ca004:	9a20      	ldr	r2, [sp, #128]	; 0x80
d03ca006:	ab21      	add	r3, sp, #132	; 0x84
d03ca008:	a902      	add	r1, sp, #8
d03ca00a:	4628      	mov	r0, r5
d03ca00c:	9301      	str	r3, [sp, #4]
d03ca00e:	f000 fa81 	bl	d03ca514 <_svfiprintf_r>
d03ca012:	1c43      	adds	r3, r0, #1
d03ca014:	bfbc      	itt	lt
d03ca016:	238b      	movlt	r3, #139	; 0x8b
d03ca018:	602b      	strlt	r3, [r5, #0]
d03ca01a:	2c00      	cmp	r4, #0
d03ca01c:	d0dd      	beq.n	d03c9fda <sniprintf+0x16>
d03ca01e:	9b02      	ldr	r3, [sp, #8]
d03ca020:	2200      	movs	r2, #0
d03ca022:	701a      	strb	r2, [r3, #0]
d03ca024:	e7d9      	b.n	d03c9fda <sniprintf+0x16>
d03ca026:	bf00      	nop
d03ca028:	d03ccc70 	.word	0xd03ccc70

d03ca02c <strcmp>:
d03ca02c:	f810 2b01 	ldrb.w	r2, [r0], #1
d03ca030:	f811 3b01 	ldrb.w	r3, [r1], #1
d03ca034:	2a01      	cmp	r2, #1
d03ca036:	bf28      	it	cs
d03ca038:	429a      	cmpcs	r2, r3
d03ca03a:	d0f7      	beq.n	d03ca02c <strcmp>
d03ca03c:	1ad0      	subs	r0, r2, r3
d03ca03e:	4770      	bx	lr

d03ca040 <strcpy>:
d03ca040:	4603      	mov	r3, r0
d03ca042:	f811 2b01 	ldrb.w	r2, [r1], #1
d03ca046:	f803 2b01 	strb.w	r2, [r3], #1
d03ca04a:	2a00      	cmp	r2, #0
d03ca04c:	d1f9      	bne.n	d03ca042 <strcpy+0x2>
d03ca04e:	4770      	bx	lr

d03ca050 <strlen>:
d03ca050:	4603      	mov	r3, r0
d03ca052:	f813 2b01 	ldrb.w	r2, [r3], #1
d03ca056:	2a00      	cmp	r2, #0
d03ca058:	d1fb      	bne.n	d03ca052 <strlen+0x2>
d03ca05a:	1a18      	subs	r0, r3, r0
d03ca05c:	3801      	subs	r0, #1
d03ca05e:	4770      	bx	lr

d03ca060 <strrchr>:
d03ca060:	b538      	push	{r3, r4, r5, lr}
d03ca062:	4603      	mov	r3, r0
d03ca064:	460c      	mov	r4, r1
d03ca066:	b969      	cbnz	r1, d03ca084 <strrchr+0x24>
d03ca068:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d03ca06c:	f000 bd29 	b.w	d03caac2 <strchr>
d03ca070:	1c43      	adds	r3, r0, #1
d03ca072:	4605      	mov	r5, r0
d03ca074:	4621      	mov	r1, r4
d03ca076:	4618      	mov	r0, r3
d03ca078:	f000 fd23 	bl	d03caac2 <strchr>
d03ca07c:	2800      	cmp	r0, #0
d03ca07e:	d1f7      	bne.n	d03ca070 <strrchr+0x10>
d03ca080:	4628      	mov	r0, r5
d03ca082:	bd38      	pop	{r3, r4, r5, pc}
d03ca084:	2500      	movs	r5, #0
d03ca086:	e7f5      	b.n	d03ca074 <strrchr+0x14>

d03ca088 <__sflush_r>:
d03ca088:	898a      	ldrh	r2, [r1, #12]
d03ca08a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03ca08e:	4605      	mov	r5, r0
d03ca090:	0710      	lsls	r0, r2, #28
d03ca092:	460c      	mov	r4, r1
d03ca094:	d458      	bmi.n	d03ca148 <__sflush_r+0xc0>
d03ca096:	684b      	ldr	r3, [r1, #4]
d03ca098:	2b00      	cmp	r3, #0
d03ca09a:	dc05      	bgt.n	d03ca0a8 <__sflush_r+0x20>
d03ca09c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03ca09e:	2b00      	cmp	r3, #0
d03ca0a0:	dc02      	bgt.n	d03ca0a8 <__sflush_r+0x20>
d03ca0a2:	2000      	movs	r0, #0
d03ca0a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03ca0a8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03ca0aa:	2e00      	cmp	r6, #0
d03ca0ac:	d0f9      	beq.n	d03ca0a2 <__sflush_r+0x1a>
d03ca0ae:	2300      	movs	r3, #0
d03ca0b0:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03ca0b4:	682f      	ldr	r7, [r5, #0]
d03ca0b6:	602b      	str	r3, [r5, #0]
d03ca0b8:	d032      	beq.n	d03ca120 <__sflush_r+0x98>
d03ca0ba:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03ca0bc:	89a3      	ldrh	r3, [r4, #12]
d03ca0be:	075a      	lsls	r2, r3, #29
d03ca0c0:	d505      	bpl.n	d03ca0ce <__sflush_r+0x46>
d03ca0c2:	6863      	ldr	r3, [r4, #4]
d03ca0c4:	1ac0      	subs	r0, r0, r3
d03ca0c6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03ca0c8:	b10b      	cbz	r3, d03ca0ce <__sflush_r+0x46>
d03ca0ca:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03ca0cc:	1ac0      	subs	r0, r0, r3
d03ca0ce:	2300      	movs	r3, #0
d03ca0d0:	4602      	mov	r2, r0
d03ca0d2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03ca0d4:	6a21      	ldr	r1, [r4, #32]
d03ca0d6:	4628      	mov	r0, r5
d03ca0d8:	47b0      	blx	r6
d03ca0da:	1c43      	adds	r3, r0, #1
d03ca0dc:	89a3      	ldrh	r3, [r4, #12]
d03ca0de:	d106      	bne.n	d03ca0ee <__sflush_r+0x66>
d03ca0e0:	6829      	ldr	r1, [r5, #0]
d03ca0e2:	291d      	cmp	r1, #29
d03ca0e4:	d82c      	bhi.n	d03ca140 <__sflush_r+0xb8>
d03ca0e6:	4a2a      	ldr	r2, [pc, #168]	; (d03ca190 <__sflush_r+0x108>)
d03ca0e8:	40ca      	lsrs	r2, r1
d03ca0ea:	07d6      	lsls	r6, r2, #31
d03ca0ec:	d528      	bpl.n	d03ca140 <__sflush_r+0xb8>
d03ca0ee:	2200      	movs	r2, #0
d03ca0f0:	6062      	str	r2, [r4, #4]
d03ca0f2:	04d9      	lsls	r1, r3, #19
d03ca0f4:	6922      	ldr	r2, [r4, #16]
d03ca0f6:	6022      	str	r2, [r4, #0]
d03ca0f8:	d504      	bpl.n	d03ca104 <__sflush_r+0x7c>
d03ca0fa:	1c42      	adds	r2, r0, #1
d03ca0fc:	d101      	bne.n	d03ca102 <__sflush_r+0x7a>
d03ca0fe:	682b      	ldr	r3, [r5, #0]
d03ca100:	b903      	cbnz	r3, d03ca104 <__sflush_r+0x7c>
d03ca102:	6560      	str	r0, [r4, #84]	; 0x54
d03ca104:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03ca106:	602f      	str	r7, [r5, #0]
d03ca108:	2900      	cmp	r1, #0
d03ca10a:	d0ca      	beq.n	d03ca0a2 <__sflush_r+0x1a>
d03ca10c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03ca110:	4299      	cmp	r1, r3
d03ca112:	d002      	beq.n	d03ca11a <__sflush_r+0x92>
d03ca114:	4628      	mov	r0, r5
d03ca116:	f7ff fc53 	bl	d03c99c0 <_free_r>
d03ca11a:	2000      	movs	r0, #0
d03ca11c:	6360      	str	r0, [r4, #52]	; 0x34
d03ca11e:	e7c1      	b.n	d03ca0a4 <__sflush_r+0x1c>
d03ca120:	6a21      	ldr	r1, [r4, #32]
d03ca122:	2301      	movs	r3, #1
d03ca124:	4628      	mov	r0, r5
d03ca126:	47b0      	blx	r6
d03ca128:	1c41      	adds	r1, r0, #1
d03ca12a:	d1c7      	bne.n	d03ca0bc <__sflush_r+0x34>
d03ca12c:	682b      	ldr	r3, [r5, #0]
d03ca12e:	2b00      	cmp	r3, #0
d03ca130:	d0c4      	beq.n	d03ca0bc <__sflush_r+0x34>
d03ca132:	2b1d      	cmp	r3, #29
d03ca134:	d001      	beq.n	d03ca13a <__sflush_r+0xb2>
d03ca136:	2b16      	cmp	r3, #22
d03ca138:	d101      	bne.n	d03ca13e <__sflush_r+0xb6>
d03ca13a:	602f      	str	r7, [r5, #0]
d03ca13c:	e7b1      	b.n	d03ca0a2 <__sflush_r+0x1a>
d03ca13e:	89a3      	ldrh	r3, [r4, #12]
d03ca140:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca144:	81a3      	strh	r3, [r4, #12]
d03ca146:	e7ad      	b.n	d03ca0a4 <__sflush_r+0x1c>
d03ca148:	690f      	ldr	r7, [r1, #16]
d03ca14a:	2f00      	cmp	r7, #0
d03ca14c:	d0a9      	beq.n	d03ca0a2 <__sflush_r+0x1a>
d03ca14e:	0793      	lsls	r3, r2, #30
d03ca150:	680e      	ldr	r6, [r1, #0]
d03ca152:	bf08      	it	eq
d03ca154:	694b      	ldreq	r3, [r1, #20]
d03ca156:	600f      	str	r7, [r1, #0]
d03ca158:	bf18      	it	ne
d03ca15a:	2300      	movne	r3, #0
d03ca15c:	eba6 0807 	sub.w	r8, r6, r7
d03ca160:	608b      	str	r3, [r1, #8]
d03ca162:	f1b8 0f00 	cmp.w	r8, #0
d03ca166:	dd9c      	ble.n	d03ca0a2 <__sflush_r+0x1a>
d03ca168:	6a21      	ldr	r1, [r4, #32]
d03ca16a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03ca16c:	4643      	mov	r3, r8
d03ca16e:	463a      	mov	r2, r7
d03ca170:	4628      	mov	r0, r5
d03ca172:	47b0      	blx	r6
d03ca174:	2800      	cmp	r0, #0
d03ca176:	dc06      	bgt.n	d03ca186 <__sflush_r+0xfe>
d03ca178:	89a3      	ldrh	r3, [r4, #12]
d03ca17a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca17e:	81a3      	strh	r3, [r4, #12]
d03ca180:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca184:	e78e      	b.n	d03ca0a4 <__sflush_r+0x1c>
d03ca186:	4407      	add	r7, r0
d03ca188:	eba8 0800 	sub.w	r8, r8, r0
d03ca18c:	e7e9      	b.n	d03ca162 <__sflush_r+0xda>
d03ca18e:	bf00      	nop
d03ca190:	20400001 	.word	0x20400001

d03ca194 <_fflush_r>:
d03ca194:	b538      	push	{r3, r4, r5, lr}
d03ca196:	690b      	ldr	r3, [r1, #16]
d03ca198:	4605      	mov	r5, r0
d03ca19a:	460c      	mov	r4, r1
d03ca19c:	b913      	cbnz	r3, d03ca1a4 <_fflush_r+0x10>
d03ca19e:	2500      	movs	r5, #0
d03ca1a0:	4628      	mov	r0, r5
d03ca1a2:	bd38      	pop	{r3, r4, r5, pc}
d03ca1a4:	b118      	cbz	r0, d03ca1ae <_fflush_r+0x1a>
d03ca1a6:	6983      	ldr	r3, [r0, #24]
d03ca1a8:	b90b      	cbnz	r3, d03ca1ae <_fflush_r+0x1a>
d03ca1aa:	f000 f887 	bl	d03ca2bc <__sinit>
d03ca1ae:	4b14      	ldr	r3, [pc, #80]	; (d03ca200 <_fflush_r+0x6c>)
d03ca1b0:	429c      	cmp	r4, r3
d03ca1b2:	d11b      	bne.n	d03ca1ec <_fflush_r+0x58>
d03ca1b4:	686c      	ldr	r4, [r5, #4]
d03ca1b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03ca1ba:	2b00      	cmp	r3, #0
d03ca1bc:	d0ef      	beq.n	d03ca19e <_fflush_r+0xa>
d03ca1be:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03ca1c0:	07d0      	lsls	r0, r2, #31
d03ca1c2:	d404      	bmi.n	d03ca1ce <_fflush_r+0x3a>
d03ca1c4:	0599      	lsls	r1, r3, #22
d03ca1c6:	d402      	bmi.n	d03ca1ce <_fflush_r+0x3a>
d03ca1c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03ca1ca:	f000 f915 	bl	d03ca3f8 <__retarget_lock_acquire_recursive>
d03ca1ce:	4628      	mov	r0, r5
d03ca1d0:	4621      	mov	r1, r4
d03ca1d2:	f7ff ff59 	bl	d03ca088 <__sflush_r>
d03ca1d6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03ca1d8:	07da      	lsls	r2, r3, #31
d03ca1da:	4605      	mov	r5, r0
d03ca1dc:	d4e0      	bmi.n	d03ca1a0 <_fflush_r+0xc>
d03ca1de:	89a3      	ldrh	r3, [r4, #12]
d03ca1e0:	059b      	lsls	r3, r3, #22
d03ca1e2:	d4dd      	bmi.n	d03ca1a0 <_fflush_r+0xc>
d03ca1e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03ca1e6:	f000 f908 	bl	d03ca3fa <__retarget_lock_release_recursive>
d03ca1ea:	e7d9      	b.n	d03ca1a0 <_fflush_r+0xc>
d03ca1ec:	4b05      	ldr	r3, [pc, #20]	; (d03ca204 <_fflush_r+0x70>)
d03ca1ee:	429c      	cmp	r4, r3
d03ca1f0:	d101      	bne.n	d03ca1f6 <_fflush_r+0x62>
d03ca1f2:	68ac      	ldr	r4, [r5, #8]
d03ca1f4:	e7df      	b.n	d03ca1b6 <_fflush_r+0x22>
d03ca1f6:	4b04      	ldr	r3, [pc, #16]	; (d03ca208 <_fflush_r+0x74>)
d03ca1f8:	429c      	cmp	r4, r3
d03ca1fa:	bf08      	it	eq
d03ca1fc:	68ec      	ldreq	r4, [r5, #12]
d03ca1fe:	e7da      	b.n	d03ca1b6 <_fflush_r+0x22>
d03ca200:	d03cc5ec 	.word	0xd03cc5ec
d03ca204:	d03cc60c 	.word	0xd03cc60c
d03ca208:	d03cc5cc 	.word	0xd03cc5cc

d03ca20c <std>:
d03ca20c:	2300      	movs	r3, #0
d03ca20e:	b510      	push	{r4, lr}
d03ca210:	4604      	mov	r4, r0
d03ca212:	e9c0 3300 	strd	r3, r3, [r0]
d03ca216:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03ca21a:	6083      	str	r3, [r0, #8]
d03ca21c:	8181      	strh	r1, [r0, #12]
d03ca21e:	6643      	str	r3, [r0, #100]	; 0x64
d03ca220:	81c2      	strh	r2, [r0, #14]
d03ca222:	6183      	str	r3, [r0, #24]
d03ca224:	4619      	mov	r1, r3
d03ca226:	2208      	movs	r2, #8
d03ca228:	305c      	adds	r0, #92	; 0x5c
d03ca22a:	f7ff fbc1 	bl	d03c99b0 <memset>
d03ca22e:	4b05      	ldr	r3, [pc, #20]	; (d03ca244 <std+0x38>)
d03ca230:	6263      	str	r3, [r4, #36]	; 0x24
d03ca232:	4b05      	ldr	r3, [pc, #20]	; (d03ca248 <std+0x3c>)
d03ca234:	62a3      	str	r3, [r4, #40]	; 0x28
d03ca236:	4b05      	ldr	r3, [pc, #20]	; (d03ca24c <std+0x40>)
d03ca238:	62e3      	str	r3, [r4, #44]	; 0x2c
d03ca23a:	4b05      	ldr	r3, [pc, #20]	; (d03ca250 <std+0x44>)
d03ca23c:	6224      	str	r4, [r4, #32]
d03ca23e:	6323      	str	r3, [r4, #48]	; 0x30
d03ca240:	bd10      	pop	{r4, pc}
d03ca242:	bf00      	nop
d03ca244:	d03caa3d 	.word	0xd03caa3d
d03ca248:	d03caa5f 	.word	0xd03caa5f
d03ca24c:	d03caa97 	.word	0xd03caa97
d03ca250:	d03caabb 	.word	0xd03caabb

d03ca254 <_cleanup_r>:
d03ca254:	4901      	ldr	r1, [pc, #4]	; (d03ca25c <_cleanup_r+0x8>)
d03ca256:	f000 b8af 	b.w	d03ca3b8 <_fwalk_reent>
d03ca25a:	bf00      	nop
d03ca25c:	d03ca195 	.word	0xd03ca195

d03ca260 <__sfmoreglue>:
d03ca260:	b570      	push	{r4, r5, r6, lr}
d03ca262:	1e4a      	subs	r2, r1, #1
d03ca264:	2568      	movs	r5, #104	; 0x68
d03ca266:	4355      	muls	r5, r2
d03ca268:	460e      	mov	r6, r1
d03ca26a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03ca26e:	f7ff fbf7 	bl	d03c9a60 <_malloc_r>
d03ca272:	4604      	mov	r4, r0
d03ca274:	b140      	cbz	r0, d03ca288 <__sfmoreglue+0x28>
d03ca276:	2100      	movs	r1, #0
d03ca278:	e9c0 1600 	strd	r1, r6, [r0]
d03ca27c:	300c      	adds	r0, #12
d03ca27e:	60a0      	str	r0, [r4, #8]
d03ca280:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03ca284:	f7ff fb94 	bl	d03c99b0 <memset>
d03ca288:	4620      	mov	r0, r4
d03ca28a:	bd70      	pop	{r4, r5, r6, pc}

d03ca28c <__sfp_lock_acquire>:
d03ca28c:	4801      	ldr	r0, [pc, #4]	; (d03ca294 <__sfp_lock_acquire+0x8>)
d03ca28e:	f000 b8b3 	b.w	d03ca3f8 <__retarget_lock_acquire_recursive>
d03ca292:	bf00      	nop
d03ca294:	d03cf728 	.word	0xd03cf728

d03ca298 <__sfp_lock_release>:
d03ca298:	4801      	ldr	r0, [pc, #4]	; (d03ca2a0 <__sfp_lock_release+0x8>)
d03ca29a:	f000 b8ae 	b.w	d03ca3fa <__retarget_lock_release_recursive>
d03ca29e:	bf00      	nop
d03ca2a0:	d03cf728 	.word	0xd03cf728

d03ca2a4 <__sinit_lock_acquire>:
d03ca2a4:	4801      	ldr	r0, [pc, #4]	; (d03ca2ac <__sinit_lock_acquire+0x8>)
d03ca2a6:	f000 b8a7 	b.w	d03ca3f8 <__retarget_lock_acquire_recursive>
d03ca2aa:	bf00      	nop
d03ca2ac:	d03cf723 	.word	0xd03cf723

d03ca2b0 <__sinit_lock_release>:
d03ca2b0:	4801      	ldr	r0, [pc, #4]	; (d03ca2b8 <__sinit_lock_release+0x8>)
d03ca2b2:	f000 b8a2 	b.w	d03ca3fa <__retarget_lock_release_recursive>
d03ca2b6:	bf00      	nop
d03ca2b8:	d03cf723 	.word	0xd03cf723

d03ca2bc <__sinit>:
d03ca2bc:	b510      	push	{r4, lr}
d03ca2be:	4604      	mov	r4, r0
d03ca2c0:	f7ff fff0 	bl	d03ca2a4 <__sinit_lock_acquire>
d03ca2c4:	69a3      	ldr	r3, [r4, #24]
d03ca2c6:	b11b      	cbz	r3, d03ca2d0 <__sinit+0x14>
d03ca2c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03ca2cc:	f7ff bff0 	b.w	d03ca2b0 <__sinit_lock_release>
d03ca2d0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03ca2d4:	6523      	str	r3, [r4, #80]	; 0x50
d03ca2d6:	4b13      	ldr	r3, [pc, #76]	; (d03ca324 <__sinit+0x68>)
d03ca2d8:	4a13      	ldr	r2, [pc, #76]	; (d03ca328 <__sinit+0x6c>)
d03ca2da:	681b      	ldr	r3, [r3, #0]
d03ca2dc:	62a2      	str	r2, [r4, #40]	; 0x28
d03ca2de:	42a3      	cmp	r3, r4
d03ca2e0:	bf04      	itt	eq
d03ca2e2:	2301      	moveq	r3, #1
d03ca2e4:	61a3      	streq	r3, [r4, #24]
d03ca2e6:	4620      	mov	r0, r4
d03ca2e8:	f000 f820 	bl	d03ca32c <__sfp>
d03ca2ec:	6060      	str	r0, [r4, #4]
d03ca2ee:	4620      	mov	r0, r4
d03ca2f0:	f000 f81c 	bl	d03ca32c <__sfp>
d03ca2f4:	60a0      	str	r0, [r4, #8]
d03ca2f6:	4620      	mov	r0, r4
d03ca2f8:	f000 f818 	bl	d03ca32c <__sfp>
d03ca2fc:	2200      	movs	r2, #0
d03ca2fe:	60e0      	str	r0, [r4, #12]
d03ca300:	2104      	movs	r1, #4
d03ca302:	6860      	ldr	r0, [r4, #4]
d03ca304:	f7ff ff82 	bl	d03ca20c <std>
d03ca308:	68a0      	ldr	r0, [r4, #8]
d03ca30a:	2201      	movs	r2, #1
d03ca30c:	2109      	movs	r1, #9
d03ca30e:	f7ff ff7d 	bl	d03ca20c <std>
d03ca312:	68e0      	ldr	r0, [r4, #12]
d03ca314:	2202      	movs	r2, #2
d03ca316:	2112      	movs	r1, #18
d03ca318:	f7ff ff78 	bl	d03ca20c <std>
d03ca31c:	2301      	movs	r3, #1
d03ca31e:	61a3      	str	r3, [r4, #24]
d03ca320:	e7d2      	b.n	d03ca2c8 <__sinit+0xc>
d03ca322:	bf00      	nop
d03ca324:	d03cc5c8 	.word	0xd03cc5c8
d03ca328:	d03ca255 	.word	0xd03ca255

d03ca32c <__sfp>:
d03ca32c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03ca32e:	4607      	mov	r7, r0
d03ca330:	f7ff ffac 	bl	d03ca28c <__sfp_lock_acquire>
d03ca334:	4b1e      	ldr	r3, [pc, #120]	; (d03ca3b0 <__sfp+0x84>)
d03ca336:	681e      	ldr	r6, [r3, #0]
d03ca338:	69b3      	ldr	r3, [r6, #24]
d03ca33a:	b913      	cbnz	r3, d03ca342 <__sfp+0x16>
d03ca33c:	4630      	mov	r0, r6
d03ca33e:	f7ff ffbd 	bl	d03ca2bc <__sinit>
d03ca342:	3648      	adds	r6, #72	; 0x48
d03ca344:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03ca348:	3b01      	subs	r3, #1
d03ca34a:	d503      	bpl.n	d03ca354 <__sfp+0x28>
d03ca34c:	6833      	ldr	r3, [r6, #0]
d03ca34e:	b30b      	cbz	r3, d03ca394 <__sfp+0x68>
d03ca350:	6836      	ldr	r6, [r6, #0]
d03ca352:	e7f7      	b.n	d03ca344 <__sfp+0x18>
d03ca354:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03ca358:	b9d5      	cbnz	r5, d03ca390 <__sfp+0x64>
d03ca35a:	4b16      	ldr	r3, [pc, #88]	; (d03ca3b4 <__sfp+0x88>)
d03ca35c:	60e3      	str	r3, [r4, #12]
d03ca35e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03ca362:	6665      	str	r5, [r4, #100]	; 0x64
d03ca364:	f000 f847 	bl	d03ca3f6 <__retarget_lock_init_recursive>
d03ca368:	f7ff ff96 	bl	d03ca298 <__sfp_lock_release>
d03ca36c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03ca370:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03ca374:	6025      	str	r5, [r4, #0]
d03ca376:	61a5      	str	r5, [r4, #24]
d03ca378:	2208      	movs	r2, #8
d03ca37a:	4629      	mov	r1, r5
d03ca37c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03ca380:	f7ff fb16 	bl	d03c99b0 <memset>
d03ca384:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03ca388:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03ca38c:	4620      	mov	r0, r4
d03ca38e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03ca390:	3468      	adds	r4, #104	; 0x68
d03ca392:	e7d9      	b.n	d03ca348 <__sfp+0x1c>
d03ca394:	2104      	movs	r1, #4
d03ca396:	4638      	mov	r0, r7
d03ca398:	f7ff ff62 	bl	d03ca260 <__sfmoreglue>
d03ca39c:	4604      	mov	r4, r0
d03ca39e:	6030      	str	r0, [r6, #0]
d03ca3a0:	2800      	cmp	r0, #0
d03ca3a2:	d1d5      	bne.n	d03ca350 <__sfp+0x24>
d03ca3a4:	f7ff ff78 	bl	d03ca298 <__sfp_lock_release>
d03ca3a8:	230c      	movs	r3, #12
d03ca3aa:	603b      	str	r3, [r7, #0]
d03ca3ac:	e7ee      	b.n	d03ca38c <__sfp+0x60>
d03ca3ae:	bf00      	nop
d03ca3b0:	d03cc5c8 	.word	0xd03cc5c8
d03ca3b4:	ffff0001 	.word	0xffff0001

d03ca3b8 <_fwalk_reent>:
d03ca3b8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03ca3bc:	4606      	mov	r6, r0
d03ca3be:	4688      	mov	r8, r1
d03ca3c0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03ca3c4:	2700      	movs	r7, #0
d03ca3c6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03ca3ca:	f1b9 0901 	subs.w	r9, r9, #1
d03ca3ce:	d505      	bpl.n	d03ca3dc <_fwalk_reent+0x24>
d03ca3d0:	6824      	ldr	r4, [r4, #0]
d03ca3d2:	2c00      	cmp	r4, #0
d03ca3d4:	d1f7      	bne.n	d03ca3c6 <_fwalk_reent+0xe>
d03ca3d6:	4638      	mov	r0, r7
d03ca3d8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03ca3dc:	89ab      	ldrh	r3, [r5, #12]
d03ca3de:	2b01      	cmp	r3, #1
d03ca3e0:	d907      	bls.n	d03ca3f2 <_fwalk_reent+0x3a>
d03ca3e2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03ca3e6:	3301      	adds	r3, #1
d03ca3e8:	d003      	beq.n	d03ca3f2 <_fwalk_reent+0x3a>
d03ca3ea:	4629      	mov	r1, r5
d03ca3ec:	4630      	mov	r0, r6
d03ca3ee:	47c0      	blx	r8
d03ca3f0:	4307      	orrs	r7, r0
d03ca3f2:	3568      	adds	r5, #104	; 0x68
d03ca3f4:	e7e9      	b.n	d03ca3ca <_fwalk_reent+0x12>

d03ca3f6 <__retarget_lock_init_recursive>:
d03ca3f6:	4770      	bx	lr

d03ca3f8 <__retarget_lock_acquire_recursive>:
d03ca3f8:	4770      	bx	lr

d03ca3fa <__retarget_lock_release_recursive>:
d03ca3fa:	4770      	bx	lr

d03ca3fc <__swhatbuf_r>:
d03ca3fc:	b570      	push	{r4, r5, r6, lr}
d03ca3fe:	460e      	mov	r6, r1
d03ca400:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03ca404:	2900      	cmp	r1, #0
d03ca406:	b096      	sub	sp, #88	; 0x58
d03ca408:	4614      	mov	r4, r2
d03ca40a:	461d      	mov	r5, r3
d03ca40c:	da07      	bge.n	d03ca41e <__swhatbuf_r+0x22>
d03ca40e:	2300      	movs	r3, #0
d03ca410:	602b      	str	r3, [r5, #0]
d03ca412:	89b3      	ldrh	r3, [r6, #12]
d03ca414:	061a      	lsls	r2, r3, #24
d03ca416:	d410      	bmi.n	d03ca43a <__swhatbuf_r+0x3e>
d03ca418:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03ca41c:	e00e      	b.n	d03ca43c <__swhatbuf_r+0x40>
d03ca41e:	466a      	mov	r2, sp
d03ca420:	f000 fb6c 	bl	d03caafc <_fstat_r>
d03ca424:	2800      	cmp	r0, #0
d03ca426:	dbf2      	blt.n	d03ca40e <__swhatbuf_r+0x12>
d03ca428:	9a01      	ldr	r2, [sp, #4]
d03ca42a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03ca42e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03ca432:	425a      	negs	r2, r3
d03ca434:	415a      	adcs	r2, r3
d03ca436:	602a      	str	r2, [r5, #0]
d03ca438:	e7ee      	b.n	d03ca418 <__swhatbuf_r+0x1c>
d03ca43a:	2340      	movs	r3, #64	; 0x40
d03ca43c:	2000      	movs	r0, #0
d03ca43e:	6023      	str	r3, [r4, #0]
d03ca440:	b016      	add	sp, #88	; 0x58
d03ca442:	bd70      	pop	{r4, r5, r6, pc}

d03ca444 <__malloc_lock>:
d03ca444:	4801      	ldr	r0, [pc, #4]	; (d03ca44c <__malloc_lock+0x8>)
d03ca446:	f7ff bfd7 	b.w	d03ca3f8 <__retarget_lock_acquire_recursive>
d03ca44a:	bf00      	nop
d03ca44c:	d03cf724 	.word	0xd03cf724

d03ca450 <__malloc_unlock>:
d03ca450:	4801      	ldr	r0, [pc, #4]	; (d03ca458 <__malloc_unlock+0x8>)
d03ca452:	f7ff bfd2 	b.w	d03ca3fa <__retarget_lock_release_recursive>
d03ca456:	bf00      	nop
d03ca458:	d03cf724 	.word	0xd03cf724

d03ca45c <__ssputs_r>:
d03ca45c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03ca460:	688e      	ldr	r6, [r1, #8]
d03ca462:	429e      	cmp	r6, r3
d03ca464:	4682      	mov	sl, r0
d03ca466:	460c      	mov	r4, r1
d03ca468:	4690      	mov	r8, r2
d03ca46a:	461f      	mov	r7, r3
d03ca46c:	d838      	bhi.n	d03ca4e0 <__ssputs_r+0x84>
d03ca46e:	898a      	ldrh	r2, [r1, #12]
d03ca470:	f412 6f90 	tst.w	r2, #1152	; 0x480
d03ca474:	d032      	beq.n	d03ca4dc <__ssputs_r+0x80>
d03ca476:	6825      	ldr	r5, [r4, #0]
d03ca478:	6909      	ldr	r1, [r1, #16]
d03ca47a:	eba5 0901 	sub.w	r9, r5, r1
d03ca47e:	6965      	ldr	r5, [r4, #20]
d03ca480:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d03ca484:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d03ca488:	3301      	adds	r3, #1
d03ca48a:	444b      	add	r3, r9
d03ca48c:	106d      	asrs	r5, r5, #1
d03ca48e:	429d      	cmp	r5, r3
d03ca490:	bf38      	it	cc
d03ca492:	461d      	movcc	r5, r3
d03ca494:	0553      	lsls	r3, r2, #21
d03ca496:	d531      	bpl.n	d03ca4fc <__ssputs_r+0xa0>
d03ca498:	4629      	mov	r1, r5
d03ca49a:	f7ff fae1 	bl	d03c9a60 <_malloc_r>
d03ca49e:	4606      	mov	r6, r0
d03ca4a0:	b950      	cbnz	r0, d03ca4b8 <__ssputs_r+0x5c>
d03ca4a2:	230c      	movs	r3, #12
d03ca4a4:	f8ca 3000 	str.w	r3, [sl]
d03ca4a8:	89a3      	ldrh	r3, [r4, #12]
d03ca4aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03ca4ae:	81a3      	strh	r3, [r4, #12]
d03ca4b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca4b4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca4b8:	6921      	ldr	r1, [r4, #16]
d03ca4ba:	464a      	mov	r2, r9
d03ca4bc:	f7ff fa6a 	bl	d03c9994 <memcpy>
d03ca4c0:	89a3      	ldrh	r3, [r4, #12]
d03ca4c2:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d03ca4c6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03ca4ca:	81a3      	strh	r3, [r4, #12]
d03ca4cc:	6126      	str	r6, [r4, #16]
d03ca4ce:	6165      	str	r5, [r4, #20]
d03ca4d0:	444e      	add	r6, r9
d03ca4d2:	eba5 0509 	sub.w	r5, r5, r9
d03ca4d6:	6026      	str	r6, [r4, #0]
d03ca4d8:	60a5      	str	r5, [r4, #8]
d03ca4da:	463e      	mov	r6, r7
d03ca4dc:	42be      	cmp	r6, r7
d03ca4de:	d900      	bls.n	d03ca4e2 <__ssputs_r+0x86>
d03ca4e0:	463e      	mov	r6, r7
d03ca4e2:	4632      	mov	r2, r6
d03ca4e4:	6820      	ldr	r0, [r4, #0]
d03ca4e6:	4641      	mov	r1, r8
d03ca4e8:	f000 fb82 	bl	d03cabf0 <memmove>
d03ca4ec:	68a3      	ldr	r3, [r4, #8]
d03ca4ee:	6822      	ldr	r2, [r4, #0]
d03ca4f0:	1b9b      	subs	r3, r3, r6
d03ca4f2:	4432      	add	r2, r6
d03ca4f4:	60a3      	str	r3, [r4, #8]
d03ca4f6:	6022      	str	r2, [r4, #0]
d03ca4f8:	2000      	movs	r0, #0
d03ca4fa:	e7db      	b.n	d03ca4b4 <__ssputs_r+0x58>
d03ca4fc:	462a      	mov	r2, r5
d03ca4fe:	f000 fb91 	bl	d03cac24 <_realloc_r>
d03ca502:	4606      	mov	r6, r0
d03ca504:	2800      	cmp	r0, #0
d03ca506:	d1e1      	bne.n	d03ca4cc <__ssputs_r+0x70>
d03ca508:	6921      	ldr	r1, [r4, #16]
d03ca50a:	4650      	mov	r0, sl
d03ca50c:	f7ff fa58 	bl	d03c99c0 <_free_r>
d03ca510:	e7c7      	b.n	d03ca4a2 <__ssputs_r+0x46>
	...

d03ca514 <_svfiprintf_r>:
d03ca514:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d03ca518:	4698      	mov	r8, r3
d03ca51a:	898b      	ldrh	r3, [r1, #12]
d03ca51c:	061b      	lsls	r3, r3, #24
d03ca51e:	b09d      	sub	sp, #116	; 0x74
d03ca520:	4607      	mov	r7, r0
d03ca522:	460d      	mov	r5, r1
d03ca524:	4614      	mov	r4, r2
d03ca526:	d50e      	bpl.n	d03ca546 <_svfiprintf_r+0x32>
d03ca528:	690b      	ldr	r3, [r1, #16]
d03ca52a:	b963      	cbnz	r3, d03ca546 <_svfiprintf_r+0x32>
d03ca52c:	2140      	movs	r1, #64	; 0x40
d03ca52e:	f7ff fa97 	bl	d03c9a60 <_malloc_r>
d03ca532:	6028      	str	r0, [r5, #0]
d03ca534:	6128      	str	r0, [r5, #16]
d03ca536:	b920      	cbnz	r0, d03ca542 <_svfiprintf_r+0x2e>
d03ca538:	230c      	movs	r3, #12
d03ca53a:	603b      	str	r3, [r7, #0]
d03ca53c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca540:	e0d1      	b.n	d03ca6e6 <_svfiprintf_r+0x1d2>
d03ca542:	2340      	movs	r3, #64	; 0x40
d03ca544:	616b      	str	r3, [r5, #20]
d03ca546:	2300      	movs	r3, #0
d03ca548:	9309      	str	r3, [sp, #36]	; 0x24
d03ca54a:	2320      	movs	r3, #32
d03ca54c:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d03ca550:	f8cd 800c 	str.w	r8, [sp, #12]
d03ca554:	2330      	movs	r3, #48	; 0x30
d03ca556:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d03ca700 <_svfiprintf_r+0x1ec>
d03ca55a:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d03ca55e:	f04f 0901 	mov.w	r9, #1
d03ca562:	4623      	mov	r3, r4
d03ca564:	469a      	mov	sl, r3
d03ca566:	f813 2b01 	ldrb.w	r2, [r3], #1
d03ca56a:	b10a      	cbz	r2, d03ca570 <_svfiprintf_r+0x5c>
d03ca56c:	2a25      	cmp	r2, #37	; 0x25
d03ca56e:	d1f9      	bne.n	d03ca564 <_svfiprintf_r+0x50>
d03ca570:	ebba 0b04 	subs.w	fp, sl, r4
d03ca574:	d00b      	beq.n	d03ca58e <_svfiprintf_r+0x7a>
d03ca576:	465b      	mov	r3, fp
d03ca578:	4622      	mov	r2, r4
d03ca57a:	4629      	mov	r1, r5
d03ca57c:	4638      	mov	r0, r7
d03ca57e:	f7ff ff6d 	bl	d03ca45c <__ssputs_r>
d03ca582:	3001      	adds	r0, #1
d03ca584:	f000 80aa 	beq.w	d03ca6dc <_svfiprintf_r+0x1c8>
d03ca588:	9a09      	ldr	r2, [sp, #36]	; 0x24
d03ca58a:	445a      	add	r2, fp
d03ca58c:	9209      	str	r2, [sp, #36]	; 0x24
d03ca58e:	f89a 3000 	ldrb.w	r3, [sl]
d03ca592:	2b00      	cmp	r3, #0
d03ca594:	f000 80a2 	beq.w	d03ca6dc <_svfiprintf_r+0x1c8>
d03ca598:	2300      	movs	r3, #0
d03ca59a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d03ca59e:	e9cd 2305 	strd	r2, r3, [sp, #20]
d03ca5a2:	f10a 0a01 	add.w	sl, sl, #1
d03ca5a6:	9304      	str	r3, [sp, #16]
d03ca5a8:	9307      	str	r3, [sp, #28]
d03ca5aa:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d03ca5ae:	931a      	str	r3, [sp, #104]	; 0x68
d03ca5b0:	4654      	mov	r4, sl
d03ca5b2:	2205      	movs	r2, #5
d03ca5b4:	f814 1b01 	ldrb.w	r1, [r4], #1
d03ca5b8:	4851      	ldr	r0, [pc, #324]	; (d03ca700 <_svfiprintf_r+0x1ec>)
d03ca5ba:	f000 fac9 	bl	d03cab50 <memchr>
d03ca5be:	9a04      	ldr	r2, [sp, #16]
d03ca5c0:	b9d8      	cbnz	r0, d03ca5fa <_svfiprintf_r+0xe6>
d03ca5c2:	06d0      	lsls	r0, r2, #27
d03ca5c4:	bf44      	itt	mi
d03ca5c6:	2320      	movmi	r3, #32
d03ca5c8:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03ca5cc:	0711      	lsls	r1, r2, #28
d03ca5ce:	bf44      	itt	mi
d03ca5d0:	232b      	movmi	r3, #43	; 0x2b
d03ca5d2:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d03ca5d6:	f89a 3000 	ldrb.w	r3, [sl]
d03ca5da:	2b2a      	cmp	r3, #42	; 0x2a
d03ca5dc:	d015      	beq.n	d03ca60a <_svfiprintf_r+0xf6>
d03ca5de:	9a07      	ldr	r2, [sp, #28]
d03ca5e0:	4654      	mov	r4, sl
d03ca5e2:	2000      	movs	r0, #0
d03ca5e4:	f04f 0c0a 	mov.w	ip, #10
d03ca5e8:	4621      	mov	r1, r4
d03ca5ea:	f811 3b01 	ldrb.w	r3, [r1], #1
d03ca5ee:	3b30      	subs	r3, #48	; 0x30
d03ca5f0:	2b09      	cmp	r3, #9
d03ca5f2:	d94e      	bls.n	d03ca692 <_svfiprintf_r+0x17e>
d03ca5f4:	b1b0      	cbz	r0, d03ca624 <_svfiprintf_r+0x110>
d03ca5f6:	9207      	str	r2, [sp, #28]
d03ca5f8:	e014      	b.n	d03ca624 <_svfiprintf_r+0x110>
d03ca5fa:	eba0 0308 	sub.w	r3, r0, r8
d03ca5fe:	fa09 f303 	lsl.w	r3, r9, r3
d03ca602:	4313      	orrs	r3, r2
d03ca604:	9304      	str	r3, [sp, #16]
d03ca606:	46a2      	mov	sl, r4
d03ca608:	e7d2      	b.n	d03ca5b0 <_svfiprintf_r+0x9c>
d03ca60a:	9b03      	ldr	r3, [sp, #12]
d03ca60c:	1d19      	adds	r1, r3, #4
d03ca60e:	681b      	ldr	r3, [r3, #0]
d03ca610:	9103      	str	r1, [sp, #12]
d03ca612:	2b00      	cmp	r3, #0
d03ca614:	bfbb      	ittet	lt
d03ca616:	425b      	neglt	r3, r3
d03ca618:	f042 0202 	orrlt.w	r2, r2, #2
d03ca61c:	9307      	strge	r3, [sp, #28]
d03ca61e:	9307      	strlt	r3, [sp, #28]
d03ca620:	bfb8      	it	lt
d03ca622:	9204      	strlt	r2, [sp, #16]
d03ca624:	7823      	ldrb	r3, [r4, #0]
d03ca626:	2b2e      	cmp	r3, #46	; 0x2e
d03ca628:	d10c      	bne.n	d03ca644 <_svfiprintf_r+0x130>
d03ca62a:	7863      	ldrb	r3, [r4, #1]
d03ca62c:	2b2a      	cmp	r3, #42	; 0x2a
d03ca62e:	d135      	bne.n	d03ca69c <_svfiprintf_r+0x188>
d03ca630:	9b03      	ldr	r3, [sp, #12]
d03ca632:	1d1a      	adds	r2, r3, #4
d03ca634:	681b      	ldr	r3, [r3, #0]
d03ca636:	9203      	str	r2, [sp, #12]
d03ca638:	2b00      	cmp	r3, #0
d03ca63a:	bfb8      	it	lt
d03ca63c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d03ca640:	3402      	adds	r4, #2
d03ca642:	9305      	str	r3, [sp, #20]
d03ca644:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d03ca710 <_svfiprintf_r+0x1fc>
d03ca648:	7821      	ldrb	r1, [r4, #0]
d03ca64a:	2203      	movs	r2, #3
d03ca64c:	4650      	mov	r0, sl
d03ca64e:	f000 fa7f 	bl	d03cab50 <memchr>
d03ca652:	b140      	cbz	r0, d03ca666 <_svfiprintf_r+0x152>
d03ca654:	2340      	movs	r3, #64	; 0x40
d03ca656:	eba0 000a 	sub.w	r0, r0, sl
d03ca65a:	fa03 f000 	lsl.w	r0, r3, r0
d03ca65e:	9b04      	ldr	r3, [sp, #16]
d03ca660:	4303      	orrs	r3, r0
d03ca662:	3401      	adds	r4, #1
d03ca664:	9304      	str	r3, [sp, #16]
d03ca666:	f814 1b01 	ldrb.w	r1, [r4], #1
d03ca66a:	4826      	ldr	r0, [pc, #152]	; (d03ca704 <_svfiprintf_r+0x1f0>)
d03ca66c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d03ca670:	2206      	movs	r2, #6
d03ca672:	f000 fa6d 	bl	d03cab50 <memchr>
d03ca676:	2800      	cmp	r0, #0
d03ca678:	d038      	beq.n	d03ca6ec <_svfiprintf_r+0x1d8>
d03ca67a:	4b23      	ldr	r3, [pc, #140]	; (d03ca708 <_svfiprintf_r+0x1f4>)
d03ca67c:	bb1b      	cbnz	r3, d03ca6c6 <_svfiprintf_r+0x1b2>
d03ca67e:	9b03      	ldr	r3, [sp, #12]
d03ca680:	3307      	adds	r3, #7
d03ca682:	f023 0307 	bic.w	r3, r3, #7
d03ca686:	3308      	adds	r3, #8
d03ca688:	9303      	str	r3, [sp, #12]
d03ca68a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d03ca68c:	4433      	add	r3, r6
d03ca68e:	9309      	str	r3, [sp, #36]	; 0x24
d03ca690:	e767      	b.n	d03ca562 <_svfiprintf_r+0x4e>
d03ca692:	fb0c 3202 	mla	r2, ip, r2, r3
d03ca696:	460c      	mov	r4, r1
d03ca698:	2001      	movs	r0, #1
d03ca69a:	e7a5      	b.n	d03ca5e8 <_svfiprintf_r+0xd4>
d03ca69c:	2300      	movs	r3, #0
d03ca69e:	3401      	adds	r4, #1
d03ca6a0:	9305      	str	r3, [sp, #20]
d03ca6a2:	4619      	mov	r1, r3
d03ca6a4:	f04f 0c0a 	mov.w	ip, #10
d03ca6a8:	4620      	mov	r0, r4
d03ca6aa:	f810 2b01 	ldrb.w	r2, [r0], #1
d03ca6ae:	3a30      	subs	r2, #48	; 0x30
d03ca6b0:	2a09      	cmp	r2, #9
d03ca6b2:	d903      	bls.n	d03ca6bc <_svfiprintf_r+0x1a8>
d03ca6b4:	2b00      	cmp	r3, #0
d03ca6b6:	d0c5      	beq.n	d03ca644 <_svfiprintf_r+0x130>
d03ca6b8:	9105      	str	r1, [sp, #20]
d03ca6ba:	e7c3      	b.n	d03ca644 <_svfiprintf_r+0x130>
d03ca6bc:	fb0c 2101 	mla	r1, ip, r1, r2
d03ca6c0:	4604      	mov	r4, r0
d03ca6c2:	2301      	movs	r3, #1
d03ca6c4:	e7f0      	b.n	d03ca6a8 <_svfiprintf_r+0x194>
d03ca6c6:	ab03      	add	r3, sp, #12
d03ca6c8:	9300      	str	r3, [sp, #0]
d03ca6ca:	462a      	mov	r2, r5
d03ca6cc:	4b0f      	ldr	r3, [pc, #60]	; (d03ca70c <_svfiprintf_r+0x1f8>)
d03ca6ce:	a904      	add	r1, sp, #16
d03ca6d0:	4638      	mov	r0, r7
d03ca6d2:	f3af 8000 	nop.w
d03ca6d6:	1c42      	adds	r2, r0, #1
d03ca6d8:	4606      	mov	r6, r0
d03ca6da:	d1d6      	bne.n	d03ca68a <_svfiprintf_r+0x176>
d03ca6dc:	89ab      	ldrh	r3, [r5, #12]
d03ca6de:	065b      	lsls	r3, r3, #25
d03ca6e0:	f53f af2c 	bmi.w	d03ca53c <_svfiprintf_r+0x28>
d03ca6e4:	9809      	ldr	r0, [sp, #36]	; 0x24
d03ca6e6:	b01d      	add	sp, #116	; 0x74
d03ca6e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d03ca6ec:	ab03      	add	r3, sp, #12
d03ca6ee:	9300      	str	r3, [sp, #0]
d03ca6f0:	462a      	mov	r2, r5
d03ca6f2:	4b06      	ldr	r3, [pc, #24]	; (d03ca70c <_svfiprintf_r+0x1f8>)
d03ca6f4:	a904      	add	r1, sp, #16
d03ca6f6:	4638      	mov	r0, r7
d03ca6f8:	f000 f87a 	bl	d03ca7f0 <_printf_i>
d03ca6fc:	e7eb      	b.n	d03ca6d6 <_svfiprintf_r+0x1c2>
d03ca6fe:	bf00      	nop
d03ca700:	d03cc62c 	.word	0xd03cc62c
d03ca704:	d03cc636 	.word	0xd03cc636
d03ca708:	00000000 	.word	0x00000000
d03ca70c:	d03ca45d 	.word	0xd03ca45d
d03ca710:	d03cc632 	.word	0xd03cc632

d03ca714 <_printf_common>:
d03ca714:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d03ca718:	4616      	mov	r6, r2
d03ca71a:	4699      	mov	r9, r3
d03ca71c:	688a      	ldr	r2, [r1, #8]
d03ca71e:	690b      	ldr	r3, [r1, #16]
d03ca720:	f8dd 8020 	ldr.w	r8, [sp, #32]
d03ca724:	4293      	cmp	r3, r2
d03ca726:	bfb8      	it	lt
d03ca728:	4613      	movlt	r3, r2
d03ca72a:	6033      	str	r3, [r6, #0]
d03ca72c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d03ca730:	4607      	mov	r7, r0
d03ca732:	460c      	mov	r4, r1
d03ca734:	b10a      	cbz	r2, d03ca73a <_printf_common+0x26>
d03ca736:	3301      	adds	r3, #1
d03ca738:	6033      	str	r3, [r6, #0]
d03ca73a:	6823      	ldr	r3, [r4, #0]
d03ca73c:	0699      	lsls	r1, r3, #26
d03ca73e:	bf42      	ittt	mi
d03ca740:	6833      	ldrmi	r3, [r6, #0]
d03ca742:	3302      	addmi	r3, #2
d03ca744:	6033      	strmi	r3, [r6, #0]
d03ca746:	6825      	ldr	r5, [r4, #0]
d03ca748:	f015 0506 	ands.w	r5, r5, #6
d03ca74c:	d106      	bne.n	d03ca75c <_printf_common+0x48>
d03ca74e:	f104 0a19 	add.w	sl, r4, #25
d03ca752:	68e3      	ldr	r3, [r4, #12]
d03ca754:	6832      	ldr	r2, [r6, #0]
d03ca756:	1a9b      	subs	r3, r3, r2
d03ca758:	42ab      	cmp	r3, r5
d03ca75a:	dc26      	bgt.n	d03ca7aa <_printf_common+0x96>
d03ca75c:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d03ca760:	1e13      	subs	r3, r2, #0
d03ca762:	6822      	ldr	r2, [r4, #0]
d03ca764:	bf18      	it	ne
d03ca766:	2301      	movne	r3, #1
d03ca768:	0692      	lsls	r2, r2, #26
d03ca76a:	d42b      	bmi.n	d03ca7c4 <_printf_common+0xb0>
d03ca76c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03ca770:	4649      	mov	r1, r9
d03ca772:	4638      	mov	r0, r7
d03ca774:	47c0      	blx	r8
d03ca776:	3001      	adds	r0, #1
d03ca778:	d01e      	beq.n	d03ca7b8 <_printf_common+0xa4>
d03ca77a:	6823      	ldr	r3, [r4, #0]
d03ca77c:	68e5      	ldr	r5, [r4, #12]
d03ca77e:	6832      	ldr	r2, [r6, #0]
d03ca780:	f003 0306 	and.w	r3, r3, #6
d03ca784:	2b04      	cmp	r3, #4
d03ca786:	bf08      	it	eq
d03ca788:	1aad      	subeq	r5, r5, r2
d03ca78a:	68a3      	ldr	r3, [r4, #8]
d03ca78c:	6922      	ldr	r2, [r4, #16]
d03ca78e:	bf0c      	ite	eq
d03ca790:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d03ca794:	2500      	movne	r5, #0
d03ca796:	4293      	cmp	r3, r2
d03ca798:	bfc4      	itt	gt
d03ca79a:	1a9b      	subgt	r3, r3, r2
d03ca79c:	18ed      	addgt	r5, r5, r3
d03ca79e:	2600      	movs	r6, #0
d03ca7a0:	341a      	adds	r4, #26
d03ca7a2:	42b5      	cmp	r5, r6
d03ca7a4:	d11a      	bne.n	d03ca7dc <_printf_common+0xc8>
d03ca7a6:	2000      	movs	r0, #0
d03ca7a8:	e008      	b.n	d03ca7bc <_printf_common+0xa8>
d03ca7aa:	2301      	movs	r3, #1
d03ca7ac:	4652      	mov	r2, sl
d03ca7ae:	4649      	mov	r1, r9
d03ca7b0:	4638      	mov	r0, r7
d03ca7b2:	47c0      	blx	r8
d03ca7b4:	3001      	adds	r0, #1
d03ca7b6:	d103      	bne.n	d03ca7c0 <_printf_common+0xac>
d03ca7b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca7bc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca7c0:	3501      	adds	r5, #1
d03ca7c2:	e7c6      	b.n	d03ca752 <_printf_common+0x3e>
d03ca7c4:	18e1      	adds	r1, r4, r3
d03ca7c6:	1c5a      	adds	r2, r3, #1
d03ca7c8:	2030      	movs	r0, #48	; 0x30
d03ca7ca:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d03ca7ce:	4422      	add	r2, r4
d03ca7d0:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d03ca7d4:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d03ca7d8:	3302      	adds	r3, #2
d03ca7da:	e7c7      	b.n	d03ca76c <_printf_common+0x58>
d03ca7dc:	2301      	movs	r3, #1
d03ca7de:	4622      	mov	r2, r4
d03ca7e0:	4649      	mov	r1, r9
d03ca7e2:	4638      	mov	r0, r7
d03ca7e4:	47c0      	blx	r8
d03ca7e6:	3001      	adds	r0, #1
d03ca7e8:	d0e6      	beq.n	d03ca7b8 <_printf_common+0xa4>
d03ca7ea:	3601      	adds	r6, #1
d03ca7ec:	e7d9      	b.n	d03ca7a2 <_printf_common+0x8e>
	...

d03ca7f0 <_printf_i>:
d03ca7f0:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d03ca7f4:	460c      	mov	r4, r1
d03ca7f6:	4691      	mov	r9, r2
d03ca7f8:	7e27      	ldrb	r7, [r4, #24]
d03ca7fa:	990c      	ldr	r1, [sp, #48]	; 0x30
d03ca7fc:	2f78      	cmp	r7, #120	; 0x78
d03ca7fe:	4680      	mov	r8, r0
d03ca800:	469a      	mov	sl, r3
d03ca802:	f104 0243 	add.w	r2, r4, #67	; 0x43
d03ca806:	d807      	bhi.n	d03ca818 <_printf_i+0x28>
d03ca808:	2f62      	cmp	r7, #98	; 0x62
d03ca80a:	d80a      	bhi.n	d03ca822 <_printf_i+0x32>
d03ca80c:	2f00      	cmp	r7, #0
d03ca80e:	f000 80d8 	beq.w	d03ca9c2 <_printf_i+0x1d2>
d03ca812:	2f58      	cmp	r7, #88	; 0x58
d03ca814:	f000 80a3 	beq.w	d03ca95e <_printf_i+0x16e>
d03ca818:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03ca81c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d03ca820:	e03a      	b.n	d03ca898 <_printf_i+0xa8>
d03ca822:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d03ca826:	2b15      	cmp	r3, #21
d03ca828:	d8f6      	bhi.n	d03ca818 <_printf_i+0x28>
d03ca82a:	a001      	add	r0, pc, #4	; (adr r0, d03ca830 <_printf_i+0x40>)
d03ca82c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d03ca830:	d03ca889 	.word	0xd03ca889
d03ca834:	d03ca89d 	.word	0xd03ca89d
d03ca838:	d03ca819 	.word	0xd03ca819
d03ca83c:	d03ca819 	.word	0xd03ca819
d03ca840:	d03ca819 	.word	0xd03ca819
d03ca844:	d03ca819 	.word	0xd03ca819
d03ca848:	d03ca89d 	.word	0xd03ca89d
d03ca84c:	d03ca819 	.word	0xd03ca819
d03ca850:	d03ca819 	.word	0xd03ca819
d03ca854:	d03ca819 	.word	0xd03ca819
d03ca858:	d03ca819 	.word	0xd03ca819
d03ca85c:	d03ca9a9 	.word	0xd03ca9a9
d03ca860:	d03ca8cd 	.word	0xd03ca8cd
d03ca864:	d03ca98b 	.word	0xd03ca98b
d03ca868:	d03ca819 	.word	0xd03ca819
d03ca86c:	d03ca819 	.word	0xd03ca819
d03ca870:	d03ca9cb 	.word	0xd03ca9cb
d03ca874:	d03ca819 	.word	0xd03ca819
d03ca878:	d03ca8cd 	.word	0xd03ca8cd
d03ca87c:	d03ca819 	.word	0xd03ca819
d03ca880:	d03ca819 	.word	0xd03ca819
d03ca884:	d03ca993 	.word	0xd03ca993
d03ca888:	680b      	ldr	r3, [r1, #0]
d03ca88a:	1d1a      	adds	r2, r3, #4
d03ca88c:	681b      	ldr	r3, [r3, #0]
d03ca88e:	600a      	str	r2, [r1, #0]
d03ca890:	f104 0642 	add.w	r6, r4, #66	; 0x42
d03ca894:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d03ca898:	2301      	movs	r3, #1
d03ca89a:	e0a3      	b.n	d03ca9e4 <_printf_i+0x1f4>
d03ca89c:	6825      	ldr	r5, [r4, #0]
d03ca89e:	6808      	ldr	r0, [r1, #0]
d03ca8a0:	062e      	lsls	r6, r5, #24
d03ca8a2:	f100 0304 	add.w	r3, r0, #4
d03ca8a6:	d50a      	bpl.n	d03ca8be <_printf_i+0xce>
d03ca8a8:	6805      	ldr	r5, [r0, #0]
d03ca8aa:	600b      	str	r3, [r1, #0]
d03ca8ac:	2d00      	cmp	r5, #0
d03ca8ae:	da03      	bge.n	d03ca8b8 <_printf_i+0xc8>
d03ca8b0:	232d      	movs	r3, #45	; 0x2d
d03ca8b2:	426d      	negs	r5, r5
d03ca8b4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03ca8b8:	485e      	ldr	r0, [pc, #376]	; (d03caa34 <_printf_i+0x244>)
d03ca8ba:	230a      	movs	r3, #10
d03ca8bc:	e019      	b.n	d03ca8f2 <_printf_i+0x102>
d03ca8be:	f015 0f40 	tst.w	r5, #64	; 0x40
d03ca8c2:	6805      	ldr	r5, [r0, #0]
d03ca8c4:	600b      	str	r3, [r1, #0]
d03ca8c6:	bf18      	it	ne
d03ca8c8:	b22d      	sxthne	r5, r5
d03ca8ca:	e7ef      	b.n	d03ca8ac <_printf_i+0xbc>
d03ca8cc:	680b      	ldr	r3, [r1, #0]
d03ca8ce:	6825      	ldr	r5, [r4, #0]
d03ca8d0:	1d18      	adds	r0, r3, #4
d03ca8d2:	6008      	str	r0, [r1, #0]
d03ca8d4:	0628      	lsls	r0, r5, #24
d03ca8d6:	d501      	bpl.n	d03ca8dc <_printf_i+0xec>
d03ca8d8:	681d      	ldr	r5, [r3, #0]
d03ca8da:	e002      	b.n	d03ca8e2 <_printf_i+0xf2>
d03ca8dc:	0669      	lsls	r1, r5, #25
d03ca8de:	d5fb      	bpl.n	d03ca8d8 <_printf_i+0xe8>
d03ca8e0:	881d      	ldrh	r5, [r3, #0]
d03ca8e2:	4854      	ldr	r0, [pc, #336]	; (d03caa34 <_printf_i+0x244>)
d03ca8e4:	2f6f      	cmp	r7, #111	; 0x6f
d03ca8e6:	bf0c      	ite	eq
d03ca8e8:	2308      	moveq	r3, #8
d03ca8ea:	230a      	movne	r3, #10
d03ca8ec:	2100      	movs	r1, #0
d03ca8ee:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d03ca8f2:	6866      	ldr	r6, [r4, #4]
d03ca8f4:	60a6      	str	r6, [r4, #8]
d03ca8f6:	2e00      	cmp	r6, #0
d03ca8f8:	bfa2      	ittt	ge
d03ca8fa:	6821      	ldrge	r1, [r4, #0]
d03ca8fc:	f021 0104 	bicge.w	r1, r1, #4
d03ca900:	6021      	strge	r1, [r4, #0]
d03ca902:	b90d      	cbnz	r5, d03ca908 <_printf_i+0x118>
d03ca904:	2e00      	cmp	r6, #0
d03ca906:	d04d      	beq.n	d03ca9a4 <_printf_i+0x1b4>
d03ca908:	4616      	mov	r6, r2
d03ca90a:	fbb5 f1f3 	udiv	r1, r5, r3
d03ca90e:	fb03 5711 	mls	r7, r3, r1, r5
d03ca912:	5dc7      	ldrb	r7, [r0, r7]
d03ca914:	f806 7d01 	strb.w	r7, [r6, #-1]!
d03ca918:	462f      	mov	r7, r5
d03ca91a:	42bb      	cmp	r3, r7
d03ca91c:	460d      	mov	r5, r1
d03ca91e:	d9f4      	bls.n	d03ca90a <_printf_i+0x11a>
d03ca920:	2b08      	cmp	r3, #8
d03ca922:	d10b      	bne.n	d03ca93c <_printf_i+0x14c>
d03ca924:	6823      	ldr	r3, [r4, #0]
d03ca926:	07df      	lsls	r7, r3, #31
d03ca928:	d508      	bpl.n	d03ca93c <_printf_i+0x14c>
d03ca92a:	6923      	ldr	r3, [r4, #16]
d03ca92c:	6861      	ldr	r1, [r4, #4]
d03ca92e:	4299      	cmp	r1, r3
d03ca930:	bfde      	ittt	le
d03ca932:	2330      	movle	r3, #48	; 0x30
d03ca934:	f806 3c01 	strble.w	r3, [r6, #-1]
d03ca938:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d03ca93c:	1b92      	subs	r2, r2, r6
d03ca93e:	6122      	str	r2, [r4, #16]
d03ca940:	f8cd a000 	str.w	sl, [sp]
d03ca944:	464b      	mov	r3, r9
d03ca946:	aa03      	add	r2, sp, #12
d03ca948:	4621      	mov	r1, r4
d03ca94a:	4640      	mov	r0, r8
d03ca94c:	f7ff fee2 	bl	d03ca714 <_printf_common>
d03ca950:	3001      	adds	r0, #1
d03ca952:	d14c      	bne.n	d03ca9ee <_printf_i+0x1fe>
d03ca954:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03ca958:	b004      	add	sp, #16
d03ca95a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d03ca95e:	4835      	ldr	r0, [pc, #212]	; (d03caa34 <_printf_i+0x244>)
d03ca960:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d03ca964:	6823      	ldr	r3, [r4, #0]
d03ca966:	680e      	ldr	r6, [r1, #0]
d03ca968:	061f      	lsls	r7, r3, #24
d03ca96a:	f856 5b04 	ldr.w	r5, [r6], #4
d03ca96e:	600e      	str	r6, [r1, #0]
d03ca970:	d514      	bpl.n	d03ca99c <_printf_i+0x1ac>
d03ca972:	07d9      	lsls	r1, r3, #31
d03ca974:	bf44      	itt	mi
d03ca976:	f043 0320 	orrmi.w	r3, r3, #32
d03ca97a:	6023      	strmi	r3, [r4, #0]
d03ca97c:	b91d      	cbnz	r5, d03ca986 <_printf_i+0x196>
d03ca97e:	6823      	ldr	r3, [r4, #0]
d03ca980:	f023 0320 	bic.w	r3, r3, #32
d03ca984:	6023      	str	r3, [r4, #0]
d03ca986:	2310      	movs	r3, #16
d03ca988:	e7b0      	b.n	d03ca8ec <_printf_i+0xfc>
d03ca98a:	6823      	ldr	r3, [r4, #0]
d03ca98c:	f043 0320 	orr.w	r3, r3, #32
d03ca990:	6023      	str	r3, [r4, #0]
d03ca992:	2378      	movs	r3, #120	; 0x78
d03ca994:	4828      	ldr	r0, [pc, #160]	; (d03caa38 <_printf_i+0x248>)
d03ca996:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d03ca99a:	e7e3      	b.n	d03ca964 <_printf_i+0x174>
d03ca99c:	065e      	lsls	r6, r3, #25
d03ca99e:	bf48      	it	mi
d03ca9a0:	b2ad      	uxthmi	r5, r5
d03ca9a2:	e7e6      	b.n	d03ca972 <_printf_i+0x182>
d03ca9a4:	4616      	mov	r6, r2
d03ca9a6:	e7bb      	b.n	d03ca920 <_printf_i+0x130>
d03ca9a8:	680b      	ldr	r3, [r1, #0]
d03ca9aa:	6826      	ldr	r6, [r4, #0]
d03ca9ac:	6960      	ldr	r0, [r4, #20]
d03ca9ae:	1d1d      	adds	r5, r3, #4
d03ca9b0:	600d      	str	r5, [r1, #0]
d03ca9b2:	0635      	lsls	r5, r6, #24
d03ca9b4:	681b      	ldr	r3, [r3, #0]
d03ca9b6:	d501      	bpl.n	d03ca9bc <_printf_i+0x1cc>
d03ca9b8:	6018      	str	r0, [r3, #0]
d03ca9ba:	e002      	b.n	d03ca9c2 <_printf_i+0x1d2>
d03ca9bc:	0671      	lsls	r1, r6, #25
d03ca9be:	d5fb      	bpl.n	d03ca9b8 <_printf_i+0x1c8>
d03ca9c0:	8018      	strh	r0, [r3, #0]
d03ca9c2:	2300      	movs	r3, #0
d03ca9c4:	6123      	str	r3, [r4, #16]
d03ca9c6:	4616      	mov	r6, r2
d03ca9c8:	e7ba      	b.n	d03ca940 <_printf_i+0x150>
d03ca9ca:	680b      	ldr	r3, [r1, #0]
d03ca9cc:	1d1a      	adds	r2, r3, #4
d03ca9ce:	600a      	str	r2, [r1, #0]
d03ca9d0:	681e      	ldr	r6, [r3, #0]
d03ca9d2:	6862      	ldr	r2, [r4, #4]
d03ca9d4:	2100      	movs	r1, #0
d03ca9d6:	4630      	mov	r0, r6
d03ca9d8:	f000 f8ba 	bl	d03cab50 <memchr>
d03ca9dc:	b108      	cbz	r0, d03ca9e2 <_printf_i+0x1f2>
d03ca9de:	1b80      	subs	r0, r0, r6
d03ca9e0:	6060      	str	r0, [r4, #4]
d03ca9e2:	6863      	ldr	r3, [r4, #4]
d03ca9e4:	6123      	str	r3, [r4, #16]
d03ca9e6:	2300      	movs	r3, #0
d03ca9e8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d03ca9ec:	e7a8      	b.n	d03ca940 <_printf_i+0x150>
d03ca9ee:	6923      	ldr	r3, [r4, #16]
d03ca9f0:	4632      	mov	r2, r6
d03ca9f2:	4649      	mov	r1, r9
d03ca9f4:	4640      	mov	r0, r8
d03ca9f6:	47d0      	blx	sl
d03ca9f8:	3001      	adds	r0, #1
d03ca9fa:	d0ab      	beq.n	d03ca954 <_printf_i+0x164>
d03ca9fc:	6823      	ldr	r3, [r4, #0]
d03ca9fe:	079b      	lsls	r3, r3, #30
d03caa00:	d413      	bmi.n	d03caa2a <_printf_i+0x23a>
d03caa02:	68e0      	ldr	r0, [r4, #12]
d03caa04:	9b03      	ldr	r3, [sp, #12]
d03caa06:	4298      	cmp	r0, r3
d03caa08:	bfb8      	it	lt
d03caa0a:	4618      	movlt	r0, r3
d03caa0c:	e7a4      	b.n	d03ca958 <_printf_i+0x168>
d03caa0e:	2301      	movs	r3, #1
d03caa10:	4632      	mov	r2, r6
d03caa12:	4649      	mov	r1, r9
d03caa14:	4640      	mov	r0, r8
d03caa16:	47d0      	blx	sl
d03caa18:	3001      	adds	r0, #1
d03caa1a:	d09b      	beq.n	d03ca954 <_printf_i+0x164>
d03caa1c:	3501      	adds	r5, #1
d03caa1e:	68e3      	ldr	r3, [r4, #12]
d03caa20:	9903      	ldr	r1, [sp, #12]
d03caa22:	1a5b      	subs	r3, r3, r1
d03caa24:	42ab      	cmp	r3, r5
d03caa26:	dcf2      	bgt.n	d03caa0e <_printf_i+0x21e>
d03caa28:	e7eb      	b.n	d03caa02 <_printf_i+0x212>
d03caa2a:	2500      	movs	r5, #0
d03caa2c:	f104 0619 	add.w	r6, r4, #25
d03caa30:	e7f5      	b.n	d03caa1e <_printf_i+0x22e>
d03caa32:	bf00      	nop
d03caa34:	d03cc63d 	.word	0xd03cc63d
d03caa38:	d03cc64e 	.word	0xd03cc64e

d03caa3c <__sread>:
d03caa3c:	b510      	push	{r4, lr}
d03caa3e:	460c      	mov	r4, r1
d03caa40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa44:	f000 f914 	bl	d03cac70 <_read_r>
d03caa48:	2800      	cmp	r0, #0
d03caa4a:	bfab      	itete	ge
d03caa4c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03caa4e:	89a3      	ldrhlt	r3, [r4, #12]
d03caa50:	181b      	addge	r3, r3, r0
d03caa52:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03caa56:	bfac      	ite	ge
d03caa58:	6563      	strge	r3, [r4, #84]	; 0x54
d03caa5a:	81a3      	strhlt	r3, [r4, #12]
d03caa5c:	bd10      	pop	{r4, pc}

d03caa5e <__swrite>:
d03caa5e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03caa62:	461f      	mov	r7, r3
d03caa64:	898b      	ldrh	r3, [r1, #12]
d03caa66:	05db      	lsls	r3, r3, #23
d03caa68:	4605      	mov	r5, r0
d03caa6a:	460c      	mov	r4, r1
d03caa6c:	4616      	mov	r6, r2
d03caa6e:	d505      	bpl.n	d03caa7c <__swrite+0x1e>
d03caa70:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa74:	2302      	movs	r3, #2
d03caa76:	2200      	movs	r2, #0
d03caa78:	f000 f852 	bl	d03cab20 <_lseek_r>
d03caa7c:	89a3      	ldrh	r3, [r4, #12]
d03caa7e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03caa82:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03caa86:	81a3      	strh	r3, [r4, #12]
d03caa88:	4632      	mov	r2, r6
d03caa8a:	463b      	mov	r3, r7
d03caa8c:	4628      	mov	r0, r5
d03caa8e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03caa92:	f7f5 badf 	b.w	d03c0054 <_write_r>

d03caa96 <__sseek>:
d03caa96:	b510      	push	{r4, lr}
d03caa98:	460c      	mov	r4, r1
d03caa9a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caa9e:	f000 f83f 	bl	d03cab20 <_lseek_r>
d03caaa2:	1c43      	adds	r3, r0, #1
d03caaa4:	89a3      	ldrh	r3, [r4, #12]
d03caaa6:	bf15      	itete	ne
d03caaa8:	6560      	strne	r0, [r4, #84]	; 0x54
d03caaaa:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03caaae:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03caab2:	81a3      	strheq	r3, [r4, #12]
d03caab4:	bf18      	it	ne
d03caab6:	81a3      	strhne	r3, [r4, #12]
d03caab8:	bd10      	pop	{r4, pc}

d03caaba <__sclose>:
d03caaba:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03caabe:	f000 b80d 	b.w	d03caadc <_close_r>

d03caac2 <strchr>:
d03caac2:	b2c9      	uxtb	r1, r1
d03caac4:	4603      	mov	r3, r0
d03caac6:	f810 2b01 	ldrb.w	r2, [r0], #1
d03caaca:	b11a      	cbz	r2, d03caad4 <strchr+0x12>
d03caacc:	428a      	cmp	r2, r1
d03caace:	d1f9      	bne.n	d03caac4 <strchr+0x2>
d03caad0:	4618      	mov	r0, r3
d03caad2:	4770      	bx	lr
d03caad4:	2900      	cmp	r1, #0
d03caad6:	bf18      	it	ne
d03caad8:	2300      	movne	r3, #0
d03caada:	e7f9      	b.n	d03caad0 <strchr+0xe>

d03caadc <_close_r>:
d03caadc:	b538      	push	{r3, r4, r5, lr}
d03caade:	4d06      	ldr	r5, [pc, #24]	; (d03caaf8 <_close_r+0x1c>)
d03caae0:	2300      	movs	r3, #0
d03caae2:	4604      	mov	r4, r0
d03caae4:	4608      	mov	r0, r1
d03caae6:	602b      	str	r3, [r5, #0]
d03caae8:	f7f5 faee 	bl	d03c00c8 <_close>
d03caaec:	1c43      	adds	r3, r0, #1
d03caaee:	d102      	bne.n	d03caaf6 <_close_r+0x1a>
d03caaf0:	682b      	ldr	r3, [r5, #0]
d03caaf2:	b103      	cbz	r3, d03caaf6 <_close_r+0x1a>
d03caaf4:	6023      	str	r3, [r4, #0]
d03caaf6:	bd38      	pop	{r3, r4, r5, pc}
d03caaf8:	d03cf72c 	.word	0xd03cf72c

d03caafc <_fstat_r>:
d03caafc:	b538      	push	{r3, r4, r5, lr}
d03caafe:	4d07      	ldr	r5, [pc, #28]	; (d03cab1c <_fstat_r+0x20>)
d03cab00:	2300      	movs	r3, #0
d03cab02:	4604      	mov	r4, r0
d03cab04:	4608      	mov	r0, r1
d03cab06:	4611      	mov	r1, r2
d03cab08:	602b      	str	r3, [r5, #0]
d03cab0a:	f7f5 fae1 	bl	d03c00d0 <_fstat>
d03cab0e:	1c43      	adds	r3, r0, #1
d03cab10:	d102      	bne.n	d03cab18 <_fstat_r+0x1c>
d03cab12:	682b      	ldr	r3, [r5, #0]
d03cab14:	b103      	cbz	r3, d03cab18 <_fstat_r+0x1c>
d03cab16:	6023      	str	r3, [r4, #0]
d03cab18:	bd38      	pop	{r3, r4, r5, pc}
d03cab1a:	bf00      	nop
d03cab1c:	d03cf72c 	.word	0xd03cf72c

d03cab20 <_lseek_r>:
d03cab20:	b538      	push	{r3, r4, r5, lr}
d03cab22:	4d07      	ldr	r5, [pc, #28]	; (d03cab40 <_lseek_r+0x20>)
d03cab24:	4604      	mov	r4, r0
d03cab26:	4608      	mov	r0, r1
d03cab28:	4611      	mov	r1, r2
d03cab2a:	2200      	movs	r2, #0
d03cab2c:	602a      	str	r2, [r5, #0]
d03cab2e:	461a      	mov	r2, r3
d03cab30:	f7f5 fad4 	bl	d03c00dc <_lseek>
d03cab34:	1c43      	adds	r3, r0, #1
d03cab36:	d102      	bne.n	d03cab3e <_lseek_r+0x1e>
d03cab38:	682b      	ldr	r3, [r5, #0]
d03cab3a:	b103      	cbz	r3, d03cab3e <_lseek_r+0x1e>
d03cab3c:	6023      	str	r3, [r4, #0]
d03cab3e:	bd38      	pop	{r3, r4, r5, pc}
d03cab40:	d03cf72c 	.word	0xd03cf72c
	...

d03cab50 <memchr>:
d03cab50:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03cab54:	2a10      	cmp	r2, #16
d03cab56:	db2b      	blt.n	d03cabb0 <memchr+0x60>
d03cab58:	f010 0f07 	tst.w	r0, #7
d03cab5c:	d008      	beq.n	d03cab70 <memchr+0x20>
d03cab5e:	f810 3b01 	ldrb.w	r3, [r0], #1
d03cab62:	3a01      	subs	r2, #1
d03cab64:	428b      	cmp	r3, r1
d03cab66:	d02d      	beq.n	d03cabc4 <memchr+0x74>
d03cab68:	f010 0f07 	tst.w	r0, #7
d03cab6c:	b342      	cbz	r2, d03cabc0 <memchr+0x70>
d03cab6e:	d1f6      	bne.n	d03cab5e <memchr+0xe>
d03cab70:	b4f0      	push	{r4, r5, r6, r7}
d03cab72:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d03cab76:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d03cab7a:	f022 0407 	bic.w	r4, r2, #7
d03cab7e:	f07f 0700 	mvns.w	r7, #0
d03cab82:	2300      	movs	r3, #0
d03cab84:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d03cab88:	3c08      	subs	r4, #8
d03cab8a:	ea85 0501 	eor.w	r5, r5, r1
d03cab8e:	ea86 0601 	eor.w	r6, r6, r1
d03cab92:	fa85 f547 	uadd8	r5, r5, r7
d03cab96:	faa3 f587 	sel	r5, r3, r7
d03cab9a:	fa86 f647 	uadd8	r6, r6, r7
d03cab9e:	faa5 f687 	sel	r6, r5, r7
d03caba2:	b98e      	cbnz	r6, d03cabc8 <memchr+0x78>
d03caba4:	d1ee      	bne.n	d03cab84 <memchr+0x34>
d03caba6:	bcf0      	pop	{r4, r5, r6, r7}
d03caba8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d03cabac:	f002 0207 	and.w	r2, r2, #7
d03cabb0:	b132      	cbz	r2, d03cabc0 <memchr+0x70>
d03cabb2:	f810 3b01 	ldrb.w	r3, [r0], #1
d03cabb6:	3a01      	subs	r2, #1
d03cabb8:	ea83 0301 	eor.w	r3, r3, r1
d03cabbc:	b113      	cbz	r3, d03cabc4 <memchr+0x74>
d03cabbe:	d1f8      	bne.n	d03cabb2 <memchr+0x62>
d03cabc0:	2000      	movs	r0, #0
d03cabc2:	4770      	bx	lr
d03cabc4:	3801      	subs	r0, #1
d03cabc6:	4770      	bx	lr
d03cabc8:	2d00      	cmp	r5, #0
d03cabca:	bf06      	itte	eq
d03cabcc:	4635      	moveq	r5, r6
d03cabce:	3803      	subeq	r0, #3
d03cabd0:	3807      	subne	r0, #7
d03cabd2:	f015 0f01 	tst.w	r5, #1
d03cabd6:	d107      	bne.n	d03cabe8 <memchr+0x98>
d03cabd8:	3001      	adds	r0, #1
d03cabda:	f415 7f80 	tst.w	r5, #256	; 0x100
d03cabde:	bf02      	ittt	eq
d03cabe0:	3001      	addeq	r0, #1
d03cabe2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d03cabe6:	3001      	addeq	r0, #1
d03cabe8:	bcf0      	pop	{r4, r5, r6, r7}
d03cabea:	3801      	subs	r0, #1
d03cabec:	4770      	bx	lr
d03cabee:	bf00      	nop

d03cabf0 <memmove>:
d03cabf0:	4288      	cmp	r0, r1
d03cabf2:	b510      	push	{r4, lr}
d03cabf4:	eb01 0402 	add.w	r4, r1, r2
d03cabf8:	d902      	bls.n	d03cac00 <memmove+0x10>
d03cabfa:	4284      	cmp	r4, r0
d03cabfc:	4623      	mov	r3, r4
d03cabfe:	d807      	bhi.n	d03cac10 <memmove+0x20>
d03cac00:	1e43      	subs	r3, r0, #1
d03cac02:	42a1      	cmp	r1, r4
d03cac04:	d008      	beq.n	d03cac18 <memmove+0x28>
d03cac06:	f811 2b01 	ldrb.w	r2, [r1], #1
d03cac0a:	f803 2f01 	strb.w	r2, [r3, #1]!
d03cac0e:	e7f8      	b.n	d03cac02 <memmove+0x12>
d03cac10:	4402      	add	r2, r0
d03cac12:	4601      	mov	r1, r0
d03cac14:	428a      	cmp	r2, r1
d03cac16:	d100      	bne.n	d03cac1a <memmove+0x2a>
d03cac18:	bd10      	pop	{r4, pc}
d03cac1a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d03cac1e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d03cac22:	e7f7      	b.n	d03cac14 <memmove+0x24>

d03cac24 <_realloc_r>:
d03cac24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cac26:	4607      	mov	r7, r0
d03cac28:	4614      	mov	r4, r2
d03cac2a:	460e      	mov	r6, r1
d03cac2c:	b921      	cbnz	r1, d03cac38 <_realloc_r+0x14>
d03cac2e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d03cac32:	4611      	mov	r1, r2
d03cac34:	f7fe bf14 	b.w	d03c9a60 <_malloc_r>
d03cac38:	b922      	cbnz	r2, d03cac44 <_realloc_r+0x20>
d03cac3a:	f7fe fec1 	bl	d03c99c0 <_free_r>
d03cac3e:	4625      	mov	r5, r4
d03cac40:	4628      	mov	r0, r5
d03cac42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03cac44:	f000 f826 	bl	d03cac94 <_malloc_usable_size_r>
d03cac48:	42a0      	cmp	r0, r4
d03cac4a:	d20f      	bcs.n	d03cac6c <_realloc_r+0x48>
d03cac4c:	4621      	mov	r1, r4
d03cac4e:	4638      	mov	r0, r7
d03cac50:	f7fe ff06 	bl	d03c9a60 <_malloc_r>
d03cac54:	4605      	mov	r5, r0
d03cac56:	2800      	cmp	r0, #0
d03cac58:	d0f2      	beq.n	d03cac40 <_realloc_r+0x1c>
d03cac5a:	4631      	mov	r1, r6
d03cac5c:	4622      	mov	r2, r4
d03cac5e:	f7fe fe99 	bl	d03c9994 <memcpy>
d03cac62:	4631      	mov	r1, r6
d03cac64:	4638      	mov	r0, r7
d03cac66:	f7fe feab 	bl	d03c99c0 <_free_r>
d03cac6a:	e7e9      	b.n	d03cac40 <_realloc_r+0x1c>
d03cac6c:	4635      	mov	r5, r6
d03cac6e:	e7e7      	b.n	d03cac40 <_realloc_r+0x1c>

d03cac70 <_read_r>:
d03cac70:	b538      	push	{r3, r4, r5, lr}
d03cac72:	4d07      	ldr	r5, [pc, #28]	; (d03cac90 <_read_r+0x20>)
d03cac74:	4604      	mov	r4, r0
d03cac76:	4608      	mov	r0, r1
d03cac78:	4611      	mov	r1, r2
d03cac7a:	2200      	movs	r2, #0
d03cac7c:	602a      	str	r2, [r5, #0]
d03cac7e:	461a      	mov	r2, r3
d03cac80:	f7f5 fa18 	bl	d03c00b4 <_read>
d03cac84:	1c43      	adds	r3, r0, #1
d03cac86:	d102      	bne.n	d03cac8e <_read_r+0x1e>
d03cac88:	682b      	ldr	r3, [r5, #0]
d03cac8a:	b103      	cbz	r3, d03cac8e <_read_r+0x1e>
d03cac8c:	6023      	str	r3, [r4, #0]
d03cac8e:	bd38      	pop	{r3, r4, r5, pc}
d03cac90:	d03cf72c 	.word	0xd03cf72c

d03cac94 <_malloc_usable_size_r>:
d03cac94:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03cac98:	1f18      	subs	r0, r3, #4
d03cac9a:	2b00      	cmp	r3, #0
d03cac9c:	bfbc      	itt	lt
d03cac9e:	580b      	ldrlt	r3, [r1, r0]
d03caca0:	18c0      	addlt	r0, r0, r3
d03caca2:	4770      	bx	lr

d03caca4 <CSWTCH.7>:
d03caca4:	acf8 d03c acf8 d03c ace4 d03c ad2c d03c     ..<...<...<.,.<.
d03cacb4:	ace4 d03c ad2c d03c ad5c d03c ace4 d03c     ..<.,.<.\.<...<.
d03cacc4:	ad5c d03c ace4 d03c ad5c d03c ad18 d03c     \.<...<.\.<...<.
d03cacd4:	ad5c d03c ad5c d03c ace4 d03c ad5c d03c     \.<.\.<...<.\.<.

d03cace4 <drv_closed_hat_patch>:
d03cace4:	0003 0041 4f0a 0700 0002 0081 0001 0001     ..A..O..........
d03cacf4:	0000 0000                                   ....

d03cacf8 <drv_kick_patch>:
d03cacf8:	0003 00b2 0005 0024 0002 0011 000d f9c0     ......$.........
d03cad08:	0001 0003 000d 0000 0002 0010 0000 0000     ................

d03cad18 <drv_open_hat_patch>:
d03cad18:	0003 00a5 4f0a 0700 0002 0081 0001 0005     .....O..........
d03cad28:	0000 0000                                   ....

d03cad2c <drv_snare_patch>:
d03cad2c:	0003 0092 4f0a 1800 0005 003c 0002 0091     .....O....<.....
d03cad3c:	0001 0001 0005 0012 4f0a 0a00 0002 0081     .........O......
d03cad4c:	0001 0002 4f0a 0200 0002 0080 0000 0000     .....O..........

d03cad5c <drv_tom_patch>:
d03cad5c:	0003 00a3 0002 0011 000d ff6a 0001 0004     ..........j.....
d03cad6c:	000d 0000 0000 0000                         ........

d03cad74 <prg_acoustic_bass>:
d03cad74:	0003 0581 0002 0011 0005 000c 0001 0000     ................
d03cad84:	0005 0000 000f 0000 0000 0000               ............

d03cad90 <prg_acoustic_piano>:
d03cad90:	0003 0342 0004 0900 0002 0041 0001 0001     ..B.......A.....
d03cada0:	0004 0300 0001 0003 0004 0700 000f 0000     ................
d03cadb0:	0000 0000                                   ....

d03cadb4 <prg_bass_lead>:
d03cadb4:	0003 00e3 0004 0400 0002 0041 0009 000c     ..........A.....
d03cadc4:	000e 1405 000f 0000 0000 0000               ............

d03cadd0 <prg_bright_key>:
d03cadd0:	0003 0242 0004 0a00 0002 0041 0001 0001     ..B.......A.....
d03cade0:	0004 0280 0001 0002 0004 0600 000f 0000     ................
d03cadf0:	0000 0000                                   ....

d03cadf4 <prg_charang_lead>:
d03cadf4:	0003 00d3 0004 0180 0002 0041 000e 3004     ..........A....0
d03cae04:	0009 070c 000f 0000 0000 0000               ............

d03cae10 <prg_chiff_lead>:
d03cae10:	0003 00e3 0004 0700 0002 0081 0001 0001     ................
d03cae20:	0002 0041 000e 2005 0010 0105 000f 0000     ..A.... ........
d03cae30:	0000 0000                                   ....

d03cae34 <prg_church_organ>:
d03cae34:	0003 00f5 0002 0031 000e 1807 0010 0209     ......1.........
d03cae44:	000f 0000 0000 0000                         ........

d03cae4c <prg_clav_pluck>:
d03cae4c:	0003 0121 0004 0180 0002 0041 0001 0001     ..!.......A.....
d03cae5c:	0004 0c00 000f 0000 0000 0000               ............

d03cae68 <prg_conditional_loop_demo>:
d03cae68:	0003 00fc 0004 0200 0002 0041 0011 000a     ..........A.....
d03cae78:	0014 0405 0006 0100 0001 0001 0012 ffff     ................
d03cae88:	0015 0004 0013 000d 0006 0040 0001 0001     ..........@.....
d03cae98:	0007 0040 0001 0001 0015 0005 0000 0000     ..@.............

d03caea8 <prg_crystal_fx>:
d03caea8:	0003 02e5 0004 0500 0002 0041 0009 0c13     ..........A.....
d03caeb8:	000e 1004 0010 0104 000f 0000 0000 0000     ................

d03caec8 <prg_distortion_guitar>:
d03caec8:	0003 0652 0004 0180 0005 000c 0002 0041     ..R...........A.
d03caed8:	0001 0000 0005 0000 0004 0d00 0009 070c     ................
d03caee8:	000f 0000 0000 0000                         ........

d03caef0 <prg_electric_key>:
d03caef0:	0003 0464 0004 0440 0002 0041 000e 0807     ..d...@...A.....
d03caf00:	0010 0108 000f 0000 0000 0000               ............

d03caf0c <prg_gunshot>:
d03caf0c:	0003 0ef0 0002 0081 0001 0014 0000 0000     ................

d03caf1c <prg_honkytonk_piano>:
d03caf1c:	0003 0432 0004 0240 0002 0041 0001 0002     ..2...@...A.....
d03caf2c:	0004 0500 0001 0004 0004 0340 000f 0000     ..........@.....
d03caf3c:	0000 0000                                   ....

d03caf40 <prg_hubbard_arp_hardware>:
d03caf40:	0003 00f3 0004 0480 0002 0041 000e 1806     ..........A.....
d03caf50:	0010 0104 0009 0407 000f 0000 0000 0000     ................

d03caf60 <prg_hubbard_arp_lead>:
d03caf60:	0003 00f3 0004 0600 0002 0041 000e 1806     ..........A.....
d03caf70:	0005 0000 0004 0600 0001 0000 0005 0004     ................
d03caf80:	0004 0380 0001 0000 0005 0007 0004 0a00     ................
d03caf90:	0001 0000 0005 000c 0004 0500 0001 0000     ................
d03cafa0:	000f 000c 0000 0000                         ........

d03cafa8 <prg_hubbard_pwm_lead>:
d03cafa8:	0003 00f4 0004 0180 0002 0041 000e 2005     ..........A.... 
d03cafb8:	0010 0206 0006 0060 0001 0001 200b 0002     ......`...... ..
d03cafc8:	0007 0060 0001 0001 200b 0002 000f 0006     ..`...... ......
d03cafd8:	0000 0000                                   ....

d03cafdc <prg_lead_square>:
d03cafdc:	0003 00d3 0004 0600 0002 0041 000e 2404     ..........A....$
d03cafec:	0010 0105 0006 0080 0001 0001 080b 0002     ................
d03caffc:	0007 0080 0001 0001 080b 0002 000f 0006     ................
d03cb00c:	0000 0000                                   ....

d03cb010 <prg_muted_guitar>:
d03cb010:	0003 0111 0004 0100 0002 0041 0001 0001     ..........A.....
d03cb020:	0004 0f00 000f 0000 0000 0000               ............

d03cb02c <prg_percussive_organ>:
d03cb02c:	0003 02c3 0004 0380 0002 0051 0010 0105     ..........Q.....
d03cb03c:	000f 0000 0000 0000                         ........

d03cb044 <prg_pizzicato>:
d03cb044:	0003 0262 0004 0a00 0002 0041 0001 0001     ..b.......A.....
d03cb054:	0004 0300 000f 0000 0000 0000               ............

d03cb060 <prg_sid_bell>:
d03cb060:	0003 04a6 0002 0011 000e 0803 0005 000c     ................
d03cb070:	0001 0001 0005 0000 000f 0000 0000 0000     ................

d03cb080 <prg_sid_brass>:
d03cb080:	0003 12d4 0004 0700 0002 0061 000e 1006     ..........a.....
d03cb090:	0010 0106 000f 0000 0000 0000               ............

d03cb09c <prg_sid_drawbar_organ>:
d03cb09c:	0003 00e4 0004 0700 0002 0051 000e 1008     ..........Q.....
d03cb0ac:	0010 0207 000f 0000 0000 0000               ............

d03cb0b8 <prg_sid_flute>:
d03cb0b8:	0003 34b4 0002 0011 000e 2006 0010 0107     ...4....... ....
d03cb0c8:	000f 0000 0000 0000                         ........

d03cb0d0 <prg_sid_guitar>:
d03cb0d0:	0003 0352 0004 0280 0002 0041 0001 0001     ..R.......A.....
d03cb0e0:	0004 0900 000f 0000 0000 0000               ............

d03cb0ec <prg_sid_reed>:
d03cb0ec:	0003 01c4 0004 0300 0002 0041 000e 2006     ..........A.... 
d03cb0fc:	0010 0108 000f 0000 0000 0000               ............

d03cb108 <prg_sid_strings>:
d03cb108:	0003 45c5 0004 0800 0002 0051 000e 1807     ...E......Q.....
d03cb118:	0010 0109 000f 0000 0000 0000               ............

d03cb124 <prg_sitar_sid>:
d03cb124:	0003 0273 0004 0180 0002 0041 0009 0c13     ..s.......A.....
d03cb134:	0001 0003 0009 0000 000f 0000 0000 0000     ................

d03cb144 <prg_slap_bass>:
d03cb144:	0003 0471 0004 0140 0002 0041 0005 000c     ..q...@...A.....
d03cb154:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03cb164:	0000 0000                                   ....

d03cb168 <prg_sweep_pad>:
d03cb168:	0003 45f6 0004 0180 0002 0041 000e 1808     ...E......A.....
d03cb178:	0010 0208 0006 0040 0001 0001 280b 0002     ......@......(..
d03cb188:	0007 0040 0001 0001 280b 0002 000f 0006     ..@......(......
d03cb198:	0000 0000                                   ....

d03cb19c <prg_synth_bass_1>:
d03cb19c:	0003 0671 0004 0280 0005 000c 0002 0041     ..q...........A.
d03cb1ac:	0001 0000 0005 0000 0009 000c 000f 0000     ................
d03cb1bc:	0000 0000                                   ....

d03cb1c0 <prg_synth_brass>:
d03cb1c0:	0003 01f4 0004 0200 0002 0041 000e 1805     ..........A.....
d03cb1d0:	0010 0205 0006 0080 0001 0001 040b 0002     ................
d03cb1e0:	0007 0080 0001 0001 040b 0002 000f 0006     ................
d03cb1f0:	0000 0000                                   ....

d03cb1f4 <prg_synth_drum_program>:
d03cb1f4:	0003 00a2 0005 0018 0002 0011 000d fe0c     ................
d03cb204:	0001 0004 000d 0000 0000 0000               ............

d03cb210 <prg_warm_pad>:
d03cb210:	0003 55f6 0004 0800 0002 0051 000e 1809     ...U......Q.....
d03cb220:	0010 020a 000f 0000 0000 0000               ............

d03cb22c <sid_note_to_freq>:
d03cb22c:	0111 0121 0133 0145 0158 016d 0182 019a     ..!.3.E.X.m.....
d03cb23c:	01b2 01cc 01e7 0204 0223 0243 0266 028a     ........#.C.f...
d03cb24c:	02b1 02da 0305 0333 0364 0398 03cf 0409     ......3.d.......
d03cb25c:	0446 0487 04cc 0515 0562 05b4 060b 0667     F.......b.....g.
d03cb26c:	06c9 0730 079d 0811 088c 090e 0998 0a2a     ..0...........*.
d03cb27c:	0ac5 0b69 0c17 0ccf 0d92 0e61 0f3c 1023     ..i.......a.<.#.
d03cb28c:	1119 121d 1331 1455 158a 16d2 182d 199d     ....1.U.....-...
d03cb29c:	1b23 1cc0 1e76 2046 2232 243a 2662 28aa     #...v.F 2":$b&.(
d03cb2ac:	2b15 2da5 305b 333b 3647 3981 3cec 408c     .+.-[0;3G6.9.<.@
d03cb2bc:	4464 4875 4cc4 5154 562a 5b4a 60b7 6676     dDuH.LTQ*VJ[.`vf
d03cb2cc:	6c8e 7302 79d9 8118 88c9 90ea 9988 a2a9     .l.s.y..........
d03cb2dc:	ac55 b694 c16f ccee d91d e605 f3b3 ffff     U...o...........
d03cb2ec:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb2fc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb30c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d03cb31c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................

d03cb32c <sid_release_ticks_50hz>:
d03cb32c:	0001 0002 0003 0004 0006 0009 000b 000d     ................
d03cb33c:	0010 0026 004c 0079 0097 01c3 02ef 04b1     ..&.L.y.........
d03cb34c:	254e 3330 2075 4843 3025 7532 2500 756c     N%03u CH%02u.%lu
d03cb35c:	252e 3230 756c 4300 554f 544e 2520 0075     .%02lu.COUNT %u.
d03cb36c:	6f43 6e75 2074 6e69 3420 4900 504d 524f     Count in 4.IMPOR
d03cb37c:	4954 474e 4d20 4449 0049 5254 4341 204b     TING MIDI.TRACK 
d03cb38c:	7525 252f 0075 6c25 2575 0025 6473 6163     %u/%u.%lu%%.sdca
d03cb39c:	6472 2f3a 7973 746e 7068 6f72 7367 4300     rd:/synthprogs.C
d03cb3ac:	6e61 6f6e 2074 7263 6165 6574 7320 6e79     annot create syn
d03cb3bc:	6874 7270 676f 2073 6f66 646c 7265 4300     thprogs folder.C
d03cb3cc:	3148 2030 7375 7365 7420 6568 7020 7265     H10 uses the per
d03cb3dc:	7563 7373 6f69 206e 6f72 7475 7265 5200     cussion router.R
d03cb3ec:	6365 726f 6964 676e 5300 6e6f 2067 6173     ecording.Song sa
d03cb3fc:	6576 6220 6675 6566 2072 696d 7373 6e69     ve buffer missin
d03cb40c:	0067 4953 5344 474e 0031 6f53 676e 7320     g.SIDSNG1.Song s
d03cb41c:	7661 2065 706f 6e65 6620 6961 656c 0064     ave open failed.
d03cb42c:	6f53 676e 7320 7661 2065 7277 7469 2065     Song save write 
d03cb43c:	6166 6c69 6465 5300 6e6f 2067 6173 6576     failed.Song save
d03cb44c:	0064 7250 6a6f 6365 2074 6173 6576 6220     d.Project save b
d03cb45c:	6675 6566 2072 696d 7373 6e69 0067 4953     uffer missing.SI
d03cb46c:	5344 5050 0031 7250 6a6f 6365 2074 6173     DSPP1.Project sa
d03cb47c:	6576 6f20 6570 206e 6166 6c69 6465 5000     ve open failed.P
d03cb48c:	6f72 656a 7463 7320 7661 2065 7277 7469     roject save writ
d03cb49c:	2065 6166 6c69 6465 5000 6f72 656a 7463     e failed.Project
d03cb4ac:	7320 7661 6465 4e00 206f 4d56 7020 6f72      saved.No VM pro
d03cb4bc:	7267 6d61 7420 206f 6173 6576 5000 6f72     gram to save.Pro
d03cb4cc:	7267 6d61 7320 7661 2065 7562 6666 7265     gram save buffer
d03cb4dc:	6d20 7369 6973 676e 5300 4449 5053 3147      missing.SIDSPG1
d03cb4ec:	5000 6f72 7267 6d61 7320 7661 2065 706f     .Program save op
d03cb4fc:	6e65 6620 6961 656c 0064 7250 676f 6172     en failed.Progra
d03cb50c:	206d 6173 6576 7720 6972 6574 6620 6961     m save write fai
d03cb51c:	656c 0064 7250 676f 6172 206d 6173 6576     led.Program save
d03cb52c:	0064 6553 7571 6e65 6563 2072 6f6e 6574     d.Sequencer note
d03cb53c:	6d20 6d65 726f 2079 7566 6c6c 2e00 6e73      memory full..sn
d03cb54c:	0067 732e 6770 2e00 7073 0070 6d2e 6469     g..spg..spp..mid
d03cb55c:	2500 2f73 7325 2500 2f73 7325 7325 7300     .%s/%s.%s/%s%s.s
d03cb56c:	6364 7261 3a64 2e00 002e 6143 6e6e 746f     dcard:....Cannot
d03cb57c:	6f20 6570 206e 6f66 646c 7265 4600 6c61      open folder.Fal
d03cb58c:	626c 6361 006b 4550 4652 524f 414d 434e     lback.PERFORMANC
d03cb59c:	0045 4553 454c 5443 4445 4320 4148 4e4e     E.SELECTED CHANN
d03cb5ac:	4c45 4300 2548 3230 2075 2550 3330 2075     EL.CH%02u P%03u 
d03cb5bc:	2e25 3831 0073 502d 2b00 0050 472d 2b00     %.18s.-P.+P.-G.+
d03cb5cc:	0047 4552 4543 544e 5220 554f 4954 474e     G.RECENT ROUTING
d03cb5dc:	4300 2548 3230 2075 2550 3330 2075 2d25     .CH%02u P%03u %-
d03cb5ec:	3031 312e 7330 5000 4f52 454a 5443 5300     10.10s.PROJECT.S
d03cb5fc:	7661 2f65 6f6c 6461 6820 6f6f 736b 7220     ave/load hooks r
d03cb60c:	6165 7964 002e 6150 6374 2068 6162 6b6e     eady..Patch bank
d03cb61c:	2073 616c 6574 2e72 4200 7475 6f74 736e     s later..Buttons
d03cb62c:	6120 6572 6320 696c 6b63 6261 656c 002e      are clickable..
d03cb63c:	4552 5453 524f 0045 4c43 4145 0052 4f43     RESTORE.CLEAR.CO
d03cb64c:	464e 5249 204d 4341 4954 4e4f 5200 7365     NFIRM ACTION.Res
d03cb65c:	6f74 6572 7320 6c65 6365 6574 2064 4d56     tore selected VM
d03cb66c:	7020 6f72 7267 6d61 6600 6f72 206d 7469      program.from it
d03cb67c:	2073 7270 7365 7465 6420 6665 7561 746c     s preset default
d03cb68c:	003f 6c43 6165 2072 6c61 206c 6573 7571     ?.Clear all sequ
d03cb69c:	6e65 6563 2072 6f6e 6574 0073 6e61 2064     encer notes.and 
d03cb6ac:	6572 6977 646e 7420 206f 6874 2065 7473     rewind to the st
d03cb6bc:	7261 3f74 4300 4e41 4543 004c 005f 4f4c     art?.CANCEL._.LO
d03cb6cc:	4441 4620 4c49 3a45 0020 6f4e 6c20 616f     AD FILE: .No loa
d03cb6dc:	6164 6c62 2065 6966 656c 2073 6f66 6e75     dable files foun
d03cb6ec:	2e64 5b00 4944 5d52 2520 0073 4d5b 4449     d..[DIR] %s.[MID
d03cb6fc:	205d 7325 5500 0050 4e44 4f00 004b 5250     ] %s.UP.DN.OK.PR
d03cb70c:	4a4f 4d00 4449 5300 5641 2045 5953 544e     OJ.MID.SAVE SYNT
d03cb71c:	2048 5250 474f 4152 004d 003c 003e 4153     H PROGRAM.<.>.SA
d03cb72c:	4556 4120 4c4c 5300 5641 2045 5250 0047     VE ALL.SAVE PRG.
d03cb73c:	4153 4556 5320 4e4f 0047 564f 5245 5257     SAVE SONG.OVERWR
d03cb74c:	5449 2045 4946 454c 003f 6854 7369 6e20     ITE FILE?.This n
d03cb75c:	6d61 2065 6c61 6572 6461 2079 7865 7369     ame already exis
d03cb76c:	7374 003a 4559 0053 4f4e 4300 554f 544e     ts:.YES.NO.COUNT
d03cb77c:	5200 4345 4100 4d52 5300 4f54 0050 4c50     .REC.ARM.STOP.PL
d03cb78c:	5941 4f00 4646 5300 414e 0050 5246 4545     AY.OFF.SNAP.FREE
d03cb79c:	4200 4d50 2520 3330 2075 2520 2073 7525     .BPM %03u  %s %u
d03cb7ac:	2020 4e53 5041 2520 2073 2f31 7525 2020       SNAP %s 1/%u  
d03cb7bc:	554f 2054 7325 2020 4f4e 4554 2053 6c25     OUT %s  NOTES %l
d03cb7cc:	0075 5042 204d 3025 7533 2020 7325 2020     u.BPM %03u  %s  
d03cb7dc:	4e53 5041 2520 2073 2f31 7525 2020 554f     SNAP %s 1/%u  OU
d03cb7ec:	2054 7325 2020 4f4e 4554 2053 6c25 0075     T %s  NOTES %lu.
d03cb7fc:	5752 4600 4f52 004d 4c43 0052 002d 002b     RW.FROM.CLR.-.+.
d03cb80c:	4e45 4241 454c 0044 554d 4554 0044 554d     ENABLED.MUTED.MU
d03cb81c:	4554 4500 414e 4c42 0045 4d56 4320 444f     TE.ENABLE.VM COD
d03cb82c:	2045 4956 5745 5245 5600 204d 4152 204d     E VIEWER.VM RAM 
d03cb83c:	4445 5449 524f 3f00 3f3f 5600 4549 0057     EDITOR.???.VIEW.
d03cb84c:	4445 5449 5000 5241 4f00 4350 5600 4c41     EDIT.PAR.OPC.VAL
d03cb85c:	5300 4449 4f42 2058 494d 4944 5320 4449     .SIDBOX MIDI SID
d03cb86c:	5620 2e30 0039 494c 4556 5320 4e59 4854      V0.9.LIVE SYNTH
d03cb87c:	4320 4e4f 5254 4c4f 4300 4148 4e4e 4c45      CONTROL.CHANNEL
d03cb88c:	4120 5353 4749 4d4e 4e45 5354 3100 342d      ASSIGNMENTS.1-4
d03cb89c:	3500 382d 3900 312d 0032 3331 312d 0036     .5-8.9-12.13-16.
d03cb8ac:	4843 2020 5020 4752 2020 5020 4f52 2047     CH   PRG   PROG 
d03cb8bc:	414e 454d 2500 3230 2075 2020 3025 7533     NAME.%02u   %03u
d03cb8cc:	2020 2520 322d 2e35 3532 0073 4c47 424f        %-25.25s.GLOB
d03cb8dc:	4c41 4f20 5455 5550 2054 4147 4e49 5300     AL OUTPUT GAIN.S
d03cb8ec:	4c45 4345 4554 2044 4843 4e41 454e 204c     ELECTED CHANNEL 
d03cb8fc:	4f56 554c 454d 4300 2548 3230 2075 2520     VOLUME.CH%02u  %
d03cb90c:	3330 0075 4553 454c 5443 4445 4320 4148     03u.SELECTED CHA
d03cb91c:	4e4e 4c45 4520 5058 4552 5353 4f49 004e     NNEL EXPRESSION.
d03cb92c:	5845 2050 3025 7533 4d00 4449 2049 4343     EXP %03u.MIDI CC
d03cb93c:	2f37 4343 3131 7320 6974 6c6c 7520 6470     7/CC11 still upd
d03cb94c:	7461 2065 6877 6c69 2065 6c70 7961 6e69     ate while playin
d03cb95c:	2e67 5000 5245 5543 5353 4f49 204e 4553     g..PERCUSSION SE
d03cb96c:	5454 4e49 5347 4700 204d 6863 6e61 656e     TTINGS.GM channe
d03cb97c:	206c 3031 7220 756f 6574 2064 6f74 5320     l 10 routed to S
d03cb98c:	4449 6420 7572 206d 7270 676f 6172 736d     ID drum programs
d03cb99c:	5300 4154 4554 203a 7325 4400 5552 204d     .STATE: %s.DRUM 
d03cb9ac:	4147 4e49 2520 2575 0025 614d 7070 6465     GAIN %u%%.Mapped
d03cb9bc:	203a 696b 6b63 202c 6e73 7261 2c65 6820     : kick, snare, h
d03cb9cc:	7461 2c73 7420 6d6f 2e73 4600 7475 7275     ats, toms..Futur
d03cb9dc:	3a65 7020 7265 6e2d 746f 2065 696b 2074     e: per-note kit 
d03cb9ec:	7262 776f 6573 2e72 4300 3148 2030 6769     browser..CH10 ig
d03cb9fc:	6f6e 6572 2073 7270 676f 6172 206d 6863     nores program ch
d03cba0c:	6e61 6567 2e73 4300 2548 3230 2075 2550     anges..CH%02u P%
d03cba1c:	3330 2075 2e25 3432 0073 4d47 6420 7572     03u %.24s.GM dru
d03cba2c:	736d 7520 6573 7020 7265 7563 7373 6f69     ms use percussio
d03cba3c:	206e 6f72 7475 7265 002e 6f4e 5620 204d     n router..No VM 
d03cba4c:	7270 676f 6172 206d 7361 6973 6e67 6465     program assigned
d03cba5c:	002e 4449 2058 504f 4f43 4544 2020 5020     ..IDX OPCODE   P
d03cba6c:	2020 4156 554c 0045 3025 7532 203a 2d25       VALUE.%02u: %-
d03cba7c:	7338 2520 3230 2058 2520 3430 0058 4946     8s %02X  %04X.FI
d03cba8c:	4c45 0044 4e49 0053 4544 004c 4f52 2557     ELD.INS.DEL.ROW%
d03cba9c:	3230 2075 7325 4800 0049 312b 0036 4f4c     02u %s.HI.+16.LO
d03cbaac:	2500 3230 2f75 3025 7532 5000 4e41 4349     .%02u/%02u.PANIC
d03cbabc:	5300 5641 0045 4f4c 4441 4e00 206f 6966     .SAVE.LOAD.No fi
d03cbacc:	656c 7320 6c65 6365 6574 0064 7250 7365     le selected.Pres
d03cbadc:	2073 4b4f 7420 206f 706f 6e65 6620 6c6f     s OK to open fol
d03cbaec:	6564 0072 6553 656c 7463 6120 2e20 7073     der.Select a .sp
d03cbafc:	2070 7270 6a6f 6365 0074 6553 656c 7463     p project.Select
d03cbb0c:	6120 2e20 7073 2067 7270 676f 6172 006d      a .spg program.
d03cbb1c:	6553 656c 7463 6120 2e20 6e73 2067 6f73     Select a .sng so
d03cbb2c:	676e 5300 6c65 6365 2074 2061 6d2e 6469     ng.Select a .mid
d03cbb3c:	6620 6c69 0065 7250 6a6f 6365 2074 6f6c      file.Project lo
d03cbb4c:	6461 6220 6675 6566 2072 696d 7373 6e69     ad buffer missin
d03cbb5c:	0067 7250 6a6f 6365 2074 6f6c 6461 6f20     g.Project load o
d03cbb6c:	6570 206e 6166 6c69 6465 4200 6461 7020     pen failed.Bad p
d03cbb7c:	6f72 656a 7463 6620 6c69 0065 7250 6a6f     roject file.Proj
d03cbb8c:	6365 2074 6f6c 6461 6465 5300 6c65 6365     ect loaded.Selec
d03cbb9c:	2074 2061 4d56 7020 6f72 7267 6d61 6620     t a VM program f
d03cbbac:	7269 7473 5000 6f72 7267 6d61 6c20 616f     irst.Program loa
d03cbbbc:	2064 7562 6666 7265 6d20 7369 6973 676e     d buffer missing
d03cbbcc:	5000 6f72 7267 6d61 6c20 616f 2064 706f     .Program load op
d03cbbdc:	6e65 6620 6961 656c 0064 6142 2064 7270     en failed.Bad pr
d03cbbec:	676f 6172 206d 6966 656c 5000 6f72 7267     ogram file.Progr
d03cbbfc:	6d61 6c20 616f 6564 2064 6e69 6f74 5620     am loaded into V
d03cbc0c:	004d 6f53 676e 6c20 616f 2064 7562 6666     M.Song load buff
d03cbc1c:	7265 6d20 7369 6973 676e 5300 6e6f 2067     er missing.Song 
d03cbc2c:	6f6c 6461 6f20 6570 206e 6166 6c69 6465     load open failed
d03cbc3c:	4200 6461 7320 6e6f 2067 6966 656c 5300     .Bad song file.S
d03cbc4c:	6e6f 2067 6f6e 6574 6d20 6d65 726f 2079     ong note memory 
d03cbc5c:	7566 6c6c 4200 6461 7320 6e6f 2067 6f6e     full.Bad song no
d03cbc6c:	6574 6420 7461 0061 6f53 676e 6c20 616f     te data.Song loa
d03cbc7c:	6564 0064 6142 2064 494d 4944 6620 6c69     ded.Bad MIDI fil
d03cbc8c:	0065 494d 4944 6c20 616f 2064 706f 6e65     e.MIDI load open
d03cbc9c:	6620 6961 656c 0064 6142 2064 494d 4944      failed.Bad MIDI
d03cbcac:	6820 6165 6564 0072 544d 6468 5500 736e      header.MThd.Uns
d03cbcbc:	7075 6f70 7472 6465 4d20 4449 2049 6966     upported MIDI fi
d03cbccc:	656c 4200 6461 4d20 4449 2049 7274 6361     le.Bad MIDI trac
d03cbcdc:	006b 544d 6b72 4200 6461 4d20 4449 2049     k.MTrk.Bad MIDI 
d03cbcec:	6863 6e75 006b 494d 4944 6e20 746f 2065     chunk.MIDI note 
d03cbcfc:	656d 6f6d 7972 6620 6c75 006c 494d 4944     memory full.MIDI
d03cbd0c:	6c20 616f 6564 3a64 2520 756c 6e20 746f      loaded: %lu not
d03cbd1c:	7365 4d00 4449 2049 7865 6f70 7472 6f20     es.MIDI export o
d03cbd2c:	6570 206e 6166 6c69 6465 4d00 4449 2049     pen failed.MIDI 
d03cbd3c:	7865 6f70 7472 6820 6165 6564 2072 6166     export header fa
d03cbd4c:	6c69 6465 4d00 4449 2049 7865 6f70 7472     iled.MIDI export
d03cbd5c:	7420 6d65 6f70 6620 6961 656c 0064 494d      tempo failed.MI
d03cbd6c:	4944 6520 7078 726f 2074 6f6e 6574 6f2d     DI export note-o
d03cbd7c:	6666 6620 6961 656c 0064 494d 4944 6520     ff failed.MIDI e
d03cbd8c:	7078 726f 2074 7270 676f 6172 206d 6166     xport program fa
d03cbd9c:	6c69 6465 4d00 4449 2049 7865 6f70 7472     iled.MIDI export
d03cbdac:	6e20 746f 2d65 6e6f 6620 6961 656c 0064      note-on failed.
d03cbdbc:	494d 4944 6520 7078 726f 2074 6e65 2064     MIDI export end 
d03cbdcc:	6166 6c69 6465 4d00 4449 2049 7865 6f70     failed.MIDI expo
d03cbddc:	7472 6c20 6e65 7467 2068 6166 6c69 6465     rt length failed
d03cbdec:	4d00 4449 2049 7865 6f70 7472 6465 4500     .MIDI exported.E
d03cbdfc:	746e 7265 6120 6620 6c69 2065 616e 656d     nter a file name
d03cbe0c:	4f00 6576 6472 6275 6f20 6666 5200 6365     .Overdub off.Rec
d03cbe1c:	726f 2064 666f 0066 6552 6f63 6472 6120     ord off.Record a
d03cbe2c:	6d72 6465 5200 6365 726f 2064 6964 6173     rmed.Record disa
d03cbe3c:	6d72 6465 5200 6769 7468 6320 696c 6b63     rmed.Right click
d03cbe4c:	7020 6e61 6369 4100 7463 6f69 206e 6163      panic.Action ca
d03cbe5c:	636e 6c65 656c 0064 6150 696e 3a63 6120     ncelled.Panic: a
d03cbe6c:	6c6c 6e20 746f 7365 6b20 6c69 656c 0064     ll notes killed.
d03cbe7c:	4d56 6520 6964 2074 6976 7765 6320 6f6c     VM edit view clo
d03cbe8c:	6573 0064 6550 6372 7375 6973 6e6f 7220     sed.Percussion r
d03cbe9c:	756f 6574 2072 6168 2073 6f6e 5620 204d     outer has no VM 
d03cbeac:	6465 7469 4e00 206f 4d56 7020 6f72 7267     edit.No VM progr
d03cbebc:	6d61 7420 206f 6465 7469 5600 204d 6465     am to edit.VM ed
d03cbecc:	7469 726f 7520 6573 2073 4152 204d 6170     itor uses RAM pa
d03cbedc:	6374 0068 6f4e 5620 204d 6564 6166 6c75     tch.No VM defaul
d03cbeec:	2074 6f74 7220 7365 6f74 6572 5600 204d     t to restore.VM 
d03cbefc:	6572 7473 726f 6465 6620 6f72 206d 7270     restored from pr
d03cbf0c:	7365 7465 5300 7165 6575 636e 7265 6320     eset.Sequencer c
d03cbf1c:	656c 7261 6465 5300 6c65 6365 2074 2061     leared.Select a 
d03cbf2c:	6f66 646c 7265 4c00 616f 2064 6163 636e     folder.Load canc
d03cbf3c:	6c65 656c 0064 6153 6576 6320 6e61 6563     elled.Save cance
d03cbf4c:	6c6c 6465 4f00 6576 7772 6972 6574 6320     lled.Overwrite c
d03cbf5c:	6e61 6563 6c6c 6465 5300 7165 6575 636e     ancelled.Sequenc
d03cbf6c:	7265 7220 7765 756f 646e 5200 6365 726f     er rewound.Recor
d03cbf7c:	2064 6163 636e 6c65 656c 0064 6553 7571     d cancelled.Sequ
d03cbf8c:	6e65 6563 2072 7473 706f 6570 0064 6553     encer stopped.Se
d03cbf9c:	7571 6e65 6563 2072 6c70 7961 6e69 0067     quencer playing.
d03cbfac:	6c50 7961 6620 6f72 206d 7563 7372 726f     Play from cursor
d03cbfbc:	5300 7165 6575 636e 7265 4d20 4449 2049     .Sequencer MIDI 
d03cbfcc:	756f 2074 666f 0066 6553 7571 6e65 6563     out off.Sequence
d03cbfdc:	2072 494d 4944 6f20 7475 6f20 006e 6952     r MIDI out on.Ri
d03cbfec:	6867 2074 6c63 6369 206b 6170 696e 2063     ght click panic 
d03cbffc:	4c20 522b 6520 6978 7374 2500 2f75 7525      L+R exits.%u/%u
d03cc00c:	7620 696f 6563 0073 6170 696e 2063 6c25      voices.panic %l
d03cc01c:	2075 7420 6f6d 2520 756c 6700 6961 206e     u  tmo %lu.gain 
d03cc02c:	7525 2525 2020 7264 6d75 2073 7525 2525     %u%%  drums %u%%
d03cc03c:	5600 4c4f 2520 3330 2075 4520 5058 2520     .VOL %03u  EXP %
d03cc04c:	3330 2075 4220 4e45 2044 6425 5000 2543     03u  BEND %d.PC%
d03cc05c:	3230 2075 2556 0075 4e45 0044 4157 5449     02u V%u.END.WAIT
d03cc06c:	5700 5641 0045 4441 5253 5000 4c55 4553     .WAVE.ADSR.PULSE
d03cc07c:	5000 5449 4843 4100 4444 5750 004d 4544     .PITCH.ADDPWM.DE
d03cc08c:	5043 4d57 5000 524f 4154 4100 5052 4600     CPWM.PORTA.ARP.F
d03cc09c:	4c49 4554 0052 4f4c 504f 4a00 4d55 0050     ILTER.LOOP.JUMP.
d03cc0ac:	5753 4545 0050 4956 0042 4f48 444c 5400     SWEEP.VIB.HOLD.T
d03cc0bc:	4552 004d 4553 5654 5241 4100 4444 4156     REM.SETVAR.ADDVA
d03cc0cc:	0052 4857 4f4e 4554 5700 4748 0054 4f4c     R.WHNOTE.WHGT.LO
d03cc0dc:	504f 4b42 4800 4d4f 0045 4843 4c4e 0053     OPBK.HOME.CHNLS.
d03cc0ec:	494d 4558 0052 4550 4352 5300 5145 4100     MIXER.PERC.SEQ.A
d03cc0fc:	6f63 7375 6974 2063 6950 6e61 006f 7242     coustic Piano.Br
d03cc10c:	6769 7468 4b20 7965 4800 6e6f 796b 742d     ight Key.Honky-t
d03cc11c:	6e6f 006b 6c45 6365 7274 6369 4b20 7965     onk.Electric Key
d03cc12c:	4300 616c 2076 6c50 6375 006b 4953 2044     .Clav Pluck.SID 
d03cc13c:	6542 6c6c 4400 6172 6277 7261 4f20 6772     Bell.Drawbar Org
d03cc14c:	6e61 4300 7568 6372 2068 724f 6167 006e     an.Church Organ.
d03cc15c:	6552 6465 4f20 6772 6e61 5300 4449 4720     Reed Organ.SID G
d03cc16c:	6975 6174 0072 754d 6574 2064 7547 7469     uitar.Muted Guit
d03cc17c:	7261 4f00 6576 6472 6972 6576 4720 7274     ar.Overdrive Gtr
d03cc18c:	4400 7369 2074 7547 7469 7261 4d00 7475     .Dist Guitar.Mut
d03cc19c:	6465 4e20 696f 6573 4100 6f63 7375 6974     ed Noise.Acousti
d03cc1ac:	2063 6142 7373 5300 4449 4220 7361 0073     c Bass.SID Bass.
d03cc1bc:	7953 746e 2068 6142 7373 3120 5300 616c     Synth Bass 1.Sla
d03cc1cc:	2070 6142 7373 5300 4449 5320 7274 6e69     p Bass.SID Strin
d03cc1dc:	7367 5000 7a69 697a 6163 6f74 5300 4449     gs.Pizzicato.SID
d03cc1ec:	4520 736e 6d65 6c62 0065 4953 2044 7242      Ensemble.SID Br
d03cc1fc:	7361 0073 7953 746e 2068 7242 7361 0073     ass.Synth Brass.
d03cc20c:	4953 2044 6552 6465 5300 4449 4620 756c     SID Reed.SID Flu
d03cc21c:	6574 4c00 6165 2064 7153 6175 6572 5000     te.Lead Square.P
d03cc22c:	4d57 4c20 6165 0064 6146 7473 4120 7072     WM Lead.Fast Arp
d03cc23c:	4c20 6165 0064 5748 4120 7072 4c20 6165      Lead.HW Arp Lea
d03cc24c:	0064 6843 6669 2066 654c 6461 4300 6168     d.Chiff Lead.Cha
d03cc25c:	6172 676e 4c20 6165 0064 5750 204d 7753     rang Lead.PWM Sw
d03cc26c:	6565 0070 6142 7373 4c2b 6165 0064 6157     eep.Bass+Lead.Wa
d03cc27c:	6d72 5020 6461 5300 6577 7065 5020 6461     rm Pad.Sweep Pad
d03cc28c:	5300 4449 4620 0058 4953 2044 6c50 6375     .SID FX.SID Pluc
d03cc29c:	006b 7953 746e 2068 7244 6d75 4e00 696f     k.Synth Drum.Noi
d03cc2ac:	6573 4620 0058 4d56 4c20 6f6f 2070 6544     se FX.VM Loop De
d03cc2bc:	6f6d 4700 6e75 6873 746f 4620 0058 4d47     mo.Gunshot FX.GM
d03cc2cc:	4420 7572 736d 5000 5326 0051 1e13 0452      Drums.P&SQ...R.
d03cc2dc:	5080 5326 0051 007f                         .P&SQ...

d03cc2e4 <CSWTCH.1525>:
d03cc2e4:	c0fb d03c c10a d03c c10a d03c c10a d03c     ..<...<...<...<.
d03cc2f4:	c115 d03c c120 d03c c120 d03c c12d d03c     ..<. .<. .<.-.<.
d03cc304:	c12d d03c c138 d03c c138 d03c c138 d03c     -.<.8.<.8.<.8.<.
d03cc314:	c138 d03c c138 d03c c138 d03c c138 d03c     8.<.8.<.8.<.8.<.
d03cc324:	c141 d03c c141 d03c c141 d03c c14f d03c     A.<.A.<.A.<.O.<.
d03cc334:	c15c d03c c15c d03c c15c d03c c15c d03c     \.<.\.<.\.<.\.<.
d03cc344:	c167 d03c c167 d03c c167 d03c c167 d03c     g.<.g.<.g.<.g.<.
d03cc354:	c172 d03c c17f d03c c18d d03c c199 d03c     r.<...<...<...<.
d03cc364:	c1a5 d03c c1b3 d03c c1b3 d03c c1b3 d03c     ..<...<...<...<.
d03cc374:	c1b3 d03c c1b3 d03c c1bc d03c c1c9 d03c     ..<...<...<...<.
d03cc384:	c1d3 d03c c1d3 d03c c1d3 d03c c1d3 d03c     ..<...<...<...<.
d03cc394:	c1d3 d03c c1d3 d03c c1df d03c c1e9 d03c     ..<...<...<...<.
d03cc3a4:	c1e9 d03c c1e9 d03c c1e9 d03c c1e9 d03c     ..<...<...<...<.
d03cc3b4:	c1e9 d03c c1e9 d03c c1e9 d03c c1e9 d03c     ..<...<...<...<.
d03cc3c4:	c1f6 d03c c1f6 d03c c1f6 d03c c1f6 d03c     ..<...<...<...<.
d03cc3d4:	c1f6 d03c c1f6 d03c c200 d03c c200 d03c     ..<...<...<...<.
d03cc3e4:	c20c d03c c20c d03c c20c d03c c20c d03c     ..<...<...<...<.
d03cc3f4:	c20c d03c c20c d03c c20c d03c c20c d03c     ..<...<...<...<.
d03cc404:	c215 d03c c215 d03c c215 d03c c215 d03c     ..<...<...<...<.
d03cc414:	c215 d03c c215 d03c c215 d03c c215 d03c     ..<...<...<...<.
d03cc424:	c21f d03c c22b d03c c234 d03c c242 d03c     ..<.+.<.4.<.B.<.
d03cc434:	c24e d03c c259 d03c c266 d03c c270 d03c     N.<.Y.<.f.<.p.<.
d03cc444:	c27a d03c c27a d03c c27a d03c c27a d03c     z.<.z.<.z.<.z.<.
d03cc454:	c27a d03c c27a d03c c27a d03c c283 d03c     z.<.z.<.z.<...<.
d03cc464:	c28d d03c c28d d03c c28d d03c c28d d03c     ..<...<...<...<.
d03cc474:	c28d d03c c28d d03c c28d d03c c28d d03c     ..<...<...<...<.
d03cc484:	c294 d03c c294 d03c c294 d03c c294 d03c     ..<...<...<...<.
d03cc494:	c294 d03c c294 d03c c294 d03c c294 d03c     ..<...<...<...<.
d03cc4a4:	c138 d03c c138 d03c c138 d03c c138 d03c     8.<.8.<.8.<.8.<.
d03cc4b4:	c138 d03c c138 d03c c29e d03c c29e d03c     8.<.8.<...<...<.
d03cc4c4:	c2a9 d03c c2a9 d03c c2a9 d03c c2a9 d03c     ..<...<...<...<.
d03cc4d4:	c2a9 d03c c2a9 d03c c2b2 d03c c2bf d03c     ..<...<...<...<.
d03cc4e4:	c2ca d03c                                   ..<.

d03cc4e8 <CSWTCH.1540>:
d03cc4e8:	c0e1 d03c c0e6 d03c c0ec d03c c0f2 d03c     ..<...<...<...<.
d03cc4f8:	bc0b d03c c0f7 d03c                         ..<...<.

d03cc500 <CSWTCH.1542>:
d03cc500:	c064 d03c c068 d03c c06d d03c c072 d03c     d.<.h.<.m.<.r.<.
d03cc510:	c077 d03c c07d d03c c083 d03c c08a d03c     w.<.}.<...<...<.
d03cc520:	c091 d03c c097 d03c c09b d03c c0a2 d03c     ..<...<...<...<.
d03cc530:	c0a7 d03c c0ac d03c c0b2 d03c c0b6 d03c     ..<...<...<...<.
d03cc540:	c0bb d03c c0c0 d03c c0c7 d03c c0ce d03c     ..<...<...<...<.
d03cc550:	c0d5 d03c c0da d03c                         ..<...<.

d03cc558 <bands.10365>:
d03cc558:	e0e0 e0e0 e0e0 e0e0                         ........

d03cc560 <keys.11013>:
d03cc560:	3231 3433 3635 3837 3039 5751 5245 5954     1234567890QWERTY
d03cc570:	4955 504f 5341 4644 4847 4b4a 2d4c 585a     UIOPASDFGHJKL-ZX
d03cc580:	5643 4e42 5f4d 002e                         CVBNM_..

d03cc588 <midi_default_channel_program>:
d03cc588:	2650 5153 1300 521e 8004 2650 5153 7f00     P&SQ...R..P&SQ..

d03cc598 <rows.11250>:
d03cc598:	3231 3433 3635 3837 3039 5100 4557 5452     1234567890.QWERT
d03cc5a8:	5559 4f49 0050 5341 4644 4847 4b4a 2d4c     YUIOP.ASDFGHJKL-
d03cc5b8:	5a00 4358 4256 4d4e 2e5f 0000               .ZXCVBNM_...

d03cc5c4 <snaps.9938>:
d03cc5c4:	0804 2010                                   ... 

d03cc5c8 <_global_impure_ptr>:
d03cc5c8:	cc74 d03c                                   t.<.

d03cc5cc <__sf_fake_stderr>:
	...

d03cc5ec <__sf_fake_stdin>:
	...

d03cc60c <__sf_fake_stdout>:
	...
d03cc62c:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d03cc63c:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d03cc64c:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d03cc65c:	6665                                         ef.

Disassembly of section .init:

d03cc660 <_init>:
d03cc660:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cc662:	bf00      	nop

Disassembly of section .fini:

d03cc664 <_fini>:
d03cc664:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03cc666:	bf00      	nop

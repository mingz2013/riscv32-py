
hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	000007b7          	lui	a5,0x0
   10078:	00078793          	mv	a5,a5
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00014537          	lui	a0,0x14
   10084:	9a850513          	addi	a0,a0,-1624 # 139a8 <__libc_fini_array>
   10088:	2c80306f          	j	13350 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00017197          	auipc	gp,0x17
   10094:	d1818193          	addi	gp,gp,-744 # 26da8 <__global_pointer$>
   10098:	1cc18513          	addi	a0,gp,460 # 26f74 <_edata>
   1009c:	22818613          	addi	a2,gp,552 # 26fd0 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	1cc000ef          	jal	ra,10274 <memset>
   100ac:	00003517          	auipc	a0,0x3
   100b0:	2a450513          	addi	a0,a0,676 # 13350 <atexit>
   100b4:	00050863          	beqz	a0,100c4 <_start+0x34>
   100b8:	00004517          	auipc	a0,0x4
   100bc:	8f050513          	addi	a0,a0,-1808 # 139a8 <__libc_fini_array>
   100c0:	290030ef          	jal	ra,13350 <atexit>
   100c4:	114000ef          	jal	ra,101d8 <__libc_init_array>
   100c8:	00012503          	lw	a0,0(sp)
   100cc:	00410593          	addi	a1,sp,4
   100d0:	00000613          	li	a2,0
   100d4:	07c000ef          	jal	ra,10150 <main>
   100d8:	0d00006f          	j	101a8 <exit>

000100dc <__do_global_dtors_aux>:
   100dc:	1e01c703          	lbu	a4,480(gp) # 26f88 <completed.5490>
   100e0:	04071463          	bnez	a4,10128 <__do_global_dtors_aux+0x4c>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00812423          	sw	s0,8(sp)
   100ec:	00078413          	mv	s0,a5
   100f0:	000007b7          	lui	a5,0x0
   100f4:	00112623          	sw	ra,12(sp)
   100f8:	00078793          	mv	a5,a5
   100fc:	00078a63          	beqz	a5,10110 <__do_global_dtors_aux+0x34>
   10100:	00026537          	lui	a0,0x26
   10104:	4e450513          	addi	a0,a0,1252 # 264e4 <__EH_FRAME_BEGIN__>
   10108:	00000097          	auipc	ra,0x0
   1010c:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   10110:	00100793          	li	a5,1
   10114:	00c12083          	lw	ra,12(sp)
   10118:	1ef18023          	sb	a5,480(gp) # 26f88 <completed.5490>
   1011c:	00812403          	lw	s0,8(sp)
   10120:	01010113          	addi	sp,sp,16
   10124:	00008067          	ret
   10128:	00008067          	ret

0001012c <frame_dummy>:
   1012c:	000007b7          	lui	a5,0x0
   10130:	00078793          	mv	a5,a5
   10134:	00078c63          	beqz	a5,1014c <frame_dummy+0x20>
   10138:	00026537          	lui	a0,0x26
   1013c:	1e418593          	addi	a1,gp,484 # 26f8c <object.5495>
   10140:	4e450513          	addi	a0,a0,1252 # 264e4 <__EH_FRAME_BEGIN__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x10074>
   1014c:	00008067          	ret

00010150 <main>:
   10150:	fe010113          	addi	sp,sp,-32
   10154:	00112e23          	sw	ra,28(sp)
   10158:	00812c23          	sw	s0,24(sp)
   1015c:	02010413          	addi	s0,sp,32
   10160:	000247b7          	lui	a5,0x24
   10164:	7e878513          	addi	a0,a5,2024 # 247e8 <__clzsi2+0x4c>
   10168:	344000ef          	jal	ra,104ac <puts>
   1016c:	00100793          	li	a5,1
   10170:	fef42623          	sw	a5,-20(s0)
   10174:	fec42783          	lw	a5,-20(s0)
   10178:	00178793          	addi	a5,a5,1
   1017c:	fef42623          	sw	a5,-20(s0)
   10180:	fec42583          	lw	a1,-20(s0)
   10184:	000247b7          	lui	a5,0x24
   10188:	7f878513          	addi	a0,a5,2040 # 247f8 <__clzsi2+0x5c>
   1018c:	204000ef          	jal	ra,10390 <printf>
   10190:	00000793          	li	a5,0
   10194:	00078513          	mv	a0,a5
   10198:	01c12083          	lw	ra,28(sp)
   1019c:	01812403          	lw	s0,24(sp)
   101a0:	02010113          	addi	sp,sp,32
   101a4:	00008067          	ret

000101a8 <exit>:
   101a8:	ff010113          	addi	sp,sp,-16
   101ac:	00000593          	li	a1,0
   101b0:	00812423          	sw	s0,8(sp)
   101b4:	00112623          	sw	ra,12(sp)
   101b8:	00050413          	mv	s0,a0
   101bc:	074030ef          	jal	ra,13230 <__call_exitprocs>
   101c0:	1b81a503          	lw	a0,440(gp) # 26f60 <_global_impure_ptr>
   101c4:	03c52783          	lw	a5,60(a0)
   101c8:	00078463          	beqz	a5,101d0 <exit+0x28>
   101cc:	000780e7          	jalr	a5
   101d0:	00040513          	mv	a0,s0
   101d4:	4740f0ef          	jal	ra,1f648 <_exit>

000101d8 <__libc_init_array>:
   101d8:	ff010113          	addi	sp,sp,-16
   101dc:	00812423          	sw	s0,8(sp)
   101e0:	01212023          	sw	s2,0(sp)
   101e4:	00026437          	lui	s0,0x26
   101e8:	00026937          	lui	s2,0x26
   101ec:	59840793          	addi	a5,s0,1432 # 26598 <__init_array_start>
   101f0:	59890913          	addi	s2,s2,1432 # 26598 <__init_array_start>
   101f4:	40f90933          	sub	s2,s2,a5
   101f8:	00112623          	sw	ra,12(sp)
   101fc:	00912223          	sw	s1,4(sp)
   10200:	40295913          	srai	s2,s2,0x2
   10204:	02090063          	beqz	s2,10224 <__libc_init_array+0x4c>
   10208:	59840413          	addi	s0,s0,1432
   1020c:	00000493          	li	s1,0
   10210:	00042783          	lw	a5,0(s0)
   10214:	00148493          	addi	s1,s1,1
   10218:	00440413          	addi	s0,s0,4
   1021c:	000780e7          	jalr	a5
   10220:	fe9918e3          	bne	s2,s1,10210 <__libc_init_array+0x38>
   10224:	00026437          	lui	s0,0x26
   10228:	00026937          	lui	s2,0x26
   1022c:	59840793          	addi	a5,s0,1432 # 26598 <__init_array_start>
   10230:	5a090913          	addi	s2,s2,1440 # 265a0 <__init_array_end>
   10234:	40f90933          	sub	s2,s2,a5
   10238:	40295913          	srai	s2,s2,0x2
   1023c:	02090063          	beqz	s2,1025c <__libc_init_array+0x84>
   10240:	59840413          	addi	s0,s0,1432
   10244:	00000493          	li	s1,0
   10248:	00042783          	lw	a5,0(s0)
   1024c:	00148493          	addi	s1,s1,1
   10250:	00440413          	addi	s0,s0,4
   10254:	000780e7          	jalr	a5
   10258:	fe9918e3          	bne	s2,s1,10248 <__libc_init_array+0x70>
   1025c:	00c12083          	lw	ra,12(sp)
   10260:	00812403          	lw	s0,8(sp)
   10264:	00412483          	lw	s1,4(sp)
   10268:	00012903          	lw	s2,0(sp)
   1026c:	01010113          	addi	sp,sp,16
   10270:	00008067          	ret

00010274 <memset>:
   10274:	00f00313          	li	t1,15
   10278:	00050713          	mv	a4,a0
   1027c:	02c37e63          	bgeu	t1,a2,102b8 <memset+0x44>
   10280:	00f77793          	andi	a5,a4,15
   10284:	0a079063          	bnez	a5,10324 <memset+0xb0>
   10288:	08059263          	bnez	a1,1030c <memset+0x98>
   1028c:	ff067693          	andi	a3,a2,-16
   10290:	00f67613          	andi	a2,a2,15
   10294:	00e686b3          	add	a3,a3,a4
   10298:	00b72023          	sw	a1,0(a4)
   1029c:	00b72223          	sw	a1,4(a4)
   102a0:	00b72423          	sw	a1,8(a4)
   102a4:	00b72623          	sw	a1,12(a4)
   102a8:	01070713          	addi	a4,a4,16
   102ac:	fed766e3          	bltu	a4,a3,10298 <memset+0x24>
   102b0:	00061463          	bnez	a2,102b8 <memset+0x44>
   102b4:	00008067          	ret
   102b8:	40c306b3          	sub	a3,t1,a2
   102bc:	00269693          	slli	a3,a3,0x2
   102c0:	00000297          	auipc	t0,0x0
   102c4:	005686b3          	add	a3,a3,t0
   102c8:	00c68067          	jr	12(a3)
   102cc:	00b70723          	sb	a1,14(a4)
   102d0:	00b706a3          	sb	a1,13(a4)
   102d4:	00b70623          	sb	a1,12(a4)
   102d8:	00b705a3          	sb	a1,11(a4)
   102dc:	00b70523          	sb	a1,10(a4)
   102e0:	00b704a3          	sb	a1,9(a4)
   102e4:	00b70423          	sb	a1,8(a4)
   102e8:	00b703a3          	sb	a1,7(a4)
   102ec:	00b70323          	sb	a1,6(a4)
   102f0:	00b702a3          	sb	a1,5(a4)
   102f4:	00b70223          	sb	a1,4(a4)
   102f8:	00b701a3          	sb	a1,3(a4)
   102fc:	00b70123          	sb	a1,2(a4)
   10300:	00b700a3          	sb	a1,1(a4)
   10304:	00b70023          	sb	a1,0(a4)
   10308:	00008067          	ret
   1030c:	0ff5f593          	andi	a1,a1,255
   10310:	00859693          	slli	a3,a1,0x8
   10314:	00d5e5b3          	or	a1,a1,a3
   10318:	01059693          	slli	a3,a1,0x10
   1031c:	00d5e5b3          	or	a1,a1,a3
   10320:	f6dff06f          	j	1028c <memset+0x18>
   10324:	00279693          	slli	a3,a5,0x2
   10328:	00000297          	auipc	t0,0x0
   1032c:	005686b3          	add	a3,a3,t0
   10330:	00008293          	mv	t0,ra
   10334:	fa0680e7          	jalr	-96(a3)
   10338:	00028093          	mv	ra,t0
   1033c:	ff078793          	addi	a5,a5,-16
   10340:	40f70733          	sub	a4,a4,a5
   10344:	00f60633          	add	a2,a2,a5
   10348:	f6c378e3          	bgeu	t1,a2,102b8 <memset+0x44>
   1034c:	f3dff06f          	j	10288 <memset+0x14>

00010350 <_printf_r>:
   10350:	fc010113          	addi	sp,sp,-64
   10354:	02c12423          	sw	a2,40(sp)
   10358:	02d12623          	sw	a3,44(sp)
   1035c:	02e12823          	sw	a4,48(sp)
   10360:	02f12a23          	sw	a5,52(sp)
   10364:	03012c23          	sw	a6,56(sp)
   10368:	03112e23          	sw	a7,60(sp)
   1036c:	00058613          	mv	a2,a1
   10370:	00852583          	lw	a1,8(a0)
   10374:	02810693          	addi	a3,sp,40
   10378:	00112e23          	sw	ra,28(sp)
   1037c:	00d12623          	sw	a3,12(sp)
   10380:	1c4000ef          	jal	ra,10544 <_vfprintf_r>
   10384:	01c12083          	lw	ra,28(sp)
   10388:	04010113          	addi	sp,sp,64
   1038c:	00008067          	ret

00010390 <printf>:
   10390:	1c01a303          	lw	t1,448(gp) # 26f68 <_impure_ptr>
   10394:	fc010113          	addi	sp,sp,-64
   10398:	02c12423          	sw	a2,40(sp)
   1039c:	02d12623          	sw	a3,44(sp)
   103a0:	02b12223          	sw	a1,36(sp)
   103a4:	02e12823          	sw	a4,48(sp)
   103a8:	02f12a23          	sw	a5,52(sp)
   103ac:	03012c23          	sw	a6,56(sp)
   103b0:	03112e23          	sw	a7,60(sp)
   103b4:	00832583          	lw	a1,8(t1) # 1014c <frame_dummy+0x20>
   103b8:	02410693          	addi	a3,sp,36
   103bc:	00050613          	mv	a2,a0
   103c0:	00030513          	mv	a0,t1
   103c4:	00112e23          	sw	ra,28(sp)
   103c8:	00d12623          	sw	a3,12(sp)
   103cc:	178000ef          	jal	ra,10544 <_vfprintf_r>
   103d0:	01c12083          	lw	ra,28(sp)
   103d4:	04010113          	addi	sp,sp,64
   103d8:	00008067          	ret

000103dc <_puts_r>:
   103dc:	fc010113          	addi	sp,sp,-64
   103e0:	02812c23          	sw	s0,56(sp)
   103e4:	00050413          	mv	s0,a0
   103e8:	00058513          	mv	a0,a1
   103ec:	02912a23          	sw	s1,52(sp)
   103f0:	02112e23          	sw	ra,60(sp)
   103f4:	00058493          	mv	s1,a1
   103f8:	0c0000ef          	jal	ra,104b8 <strlen>
   103fc:	000257b7          	lui	a5,0x25
   10400:	80078793          	addi	a5,a5,-2048 # 24800 <__clzsi2+0x64>
   10404:	02f12423          	sw	a5,40(sp)
   10408:	00100793          	li	a5,1
   1040c:	02f12623          	sw	a5,44(sp)
   10410:	03842703          	lw	a4,56(s0)
   10414:	02010793          	addi	a5,sp,32
   10418:	00150693          	addi	a3,a0,1
   1041c:	00f12a23          	sw	a5,20(sp)
   10420:	00200793          	li	a5,2
   10424:	02912023          	sw	s1,32(sp)
   10428:	02a12223          	sw	a0,36(sp)
   1042c:	00d12e23          	sw	a3,28(sp)
   10430:	00f12c23          	sw	a5,24(sp)
   10434:	00842583          	lw	a1,8(s0)
   10438:	06070063          	beqz	a4,10498 <_puts_r+0xbc>
   1043c:	00c59783          	lh	a5,12(a1)
   10440:	01279713          	slli	a4,a5,0x12
   10444:	02074263          	bltz	a4,10468 <_puts_r+0x8c>
   10448:	0645a703          	lw	a4,100(a1)
   1044c:	000026b7          	lui	a3,0x2
   10450:	00d7e7b3          	or	a5,a5,a3
   10454:	ffffe6b7          	lui	a3,0xffffe
   10458:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffd702f>
   1045c:	00d77733          	and	a4,a4,a3
   10460:	00f59623          	sh	a5,12(a1)
   10464:	06e5a223          	sw	a4,100(a1)
   10468:	01410613          	addi	a2,sp,20
   1046c:	00040513          	mv	a0,s0
   10470:	1c5030ef          	jal	ra,13e34 <__sfvwrite_r>
   10474:	03c12083          	lw	ra,60(sp)
   10478:	03812403          	lw	s0,56(sp)
   1047c:	00a03533          	snez	a0,a0
   10480:	40a00533          	neg	a0,a0
   10484:	ff557513          	andi	a0,a0,-11
   10488:	03412483          	lw	s1,52(sp)
   1048c:	00a50513          	addi	a0,a0,10
   10490:	04010113          	addi	sp,sp,64
   10494:	00008067          	ret
   10498:	00040513          	mv	a0,s0
   1049c:	00b12623          	sw	a1,12(sp)
   104a0:	4c8030ef          	jal	ra,13968 <__sinit>
   104a4:	00c12583          	lw	a1,12(sp)
   104a8:	f95ff06f          	j	1043c <_puts_r+0x60>

000104ac <puts>:
   104ac:	00050593          	mv	a1,a0
   104b0:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   104b4:	f29ff06f          	j	103dc <_puts_r>

000104b8 <strlen>:
   104b8:	00357793          	andi	a5,a0,3
   104bc:	00050713          	mv	a4,a0
   104c0:	04079c63          	bnez	a5,10518 <strlen+0x60>
   104c4:	7f7f86b7          	lui	a3,0x7f7f8
   104c8:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d0faf>
   104cc:	fff00593          	li	a1,-1
   104d0:	00072603          	lw	a2,0(a4)
   104d4:	00470713          	addi	a4,a4,4
   104d8:	00d677b3          	and	a5,a2,a3
   104dc:	00d787b3          	add	a5,a5,a3
   104e0:	00c7e7b3          	or	a5,a5,a2
   104e4:	00d7e7b3          	or	a5,a5,a3
   104e8:	feb784e3          	beq	a5,a1,104d0 <strlen+0x18>
   104ec:	ffc74683          	lbu	a3,-4(a4)
   104f0:	ffd74603          	lbu	a2,-3(a4)
   104f4:	ffe74783          	lbu	a5,-2(a4)
   104f8:	40a70733          	sub	a4,a4,a0
   104fc:	04068063          	beqz	a3,1053c <strlen+0x84>
   10500:	02060a63          	beqz	a2,10534 <strlen+0x7c>
   10504:	00f03533          	snez	a0,a5
   10508:	00e50533          	add	a0,a0,a4
   1050c:	ffe50513          	addi	a0,a0,-2
   10510:	00008067          	ret
   10514:	fa0688e3          	beqz	a3,104c4 <strlen+0xc>
   10518:	00074783          	lbu	a5,0(a4)
   1051c:	00170713          	addi	a4,a4,1
   10520:	00377693          	andi	a3,a4,3
   10524:	fe0798e3          	bnez	a5,10514 <strlen+0x5c>
   10528:	40a70733          	sub	a4,a4,a0
   1052c:	fff70513          	addi	a0,a4,-1
   10530:	00008067          	ret
   10534:	ffd70513          	addi	a0,a4,-3
   10538:	00008067          	ret
   1053c:	ffc70513          	addi	a0,a4,-4
   10540:	00008067          	ret

00010544 <_vfprintf_r>:
   10544:	e1010113          	addi	sp,sp,-496
   10548:	1e112623          	sw	ra,492(sp)
   1054c:	1f212023          	sw	s2,480(sp)
   10550:	1d812423          	sw	s8,456(sp)
   10554:	1da12023          	sw	s10,448(sp)
   10558:	00058c13          	mv	s8,a1
   1055c:	00060913          	mv	s2,a2
   10560:	00d12a23          	sw	a3,20(sp)
   10564:	1e812423          	sw	s0,488(sp)
   10568:	1e912223          	sw	s1,484(sp)
   1056c:	1d312e23          	sw	s3,476(sp)
   10570:	1d412c23          	sw	s4,472(sp)
   10574:	1d512a23          	sw	s5,468(sp)
   10578:	1d612823          	sw	s6,464(sp)
   1057c:	1d712623          	sw	s7,460(sp)
   10580:	1d912223          	sw	s9,452(sp)
   10584:	1bb12e23          	sw	s11,444(sp)
   10588:	00050d13          	mv	s10,a0
   1058c:	279060ef          	jal	ra,17004 <_localeconv_r>
   10590:	00052783          	lw	a5,0(a0)
   10594:	00078513          	mv	a0,a5
   10598:	02f12823          	sw	a5,48(sp)
   1059c:	f1dff0ef          	jal	ra,104b8 <strlen>
   105a0:	02a12623          	sw	a0,44(sp)
   105a4:	0e012823          	sw	zero,240(sp)
   105a8:	0e012a23          	sw	zero,244(sp)
   105ac:	0e012c23          	sw	zero,248(sp)
   105b0:	0e012e23          	sw	zero,252(sp)
   105b4:	000d0663          	beqz	s10,105c0 <_vfprintf_r+0x7c>
   105b8:	038d2703          	lw	a4,56(s10)
   105bc:	0c0708e3          	beqz	a4,10e8c <_vfprintf_r+0x948>
   105c0:	00cc1683          	lh	a3,12(s8)
   105c4:	01069713          	slli	a4,a3,0x10
   105c8:	01269793          	slli	a5,a3,0x12
   105cc:	01075713          	srli	a4,a4,0x10
   105d0:	0207ca63          	bltz	a5,10604 <_vfprintf_r+0xc0>
   105d4:	00002737          	lui	a4,0x2
   105d8:	064c2603          	lw	a2,100(s8)
   105dc:	00e6e733          	or	a4,a3,a4
   105e0:	01071713          	slli	a4,a4,0x10
   105e4:	ffffe6b7          	lui	a3,0xffffe
   105e8:	41075713          	srai	a4,a4,0x10
   105ec:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffd702f>
   105f0:	00d676b3          	and	a3,a2,a3
   105f4:	00ec1623          	sh	a4,12(s8)
   105f8:	01071713          	slli	a4,a4,0x10
   105fc:	06dc2223          	sw	a3,100(s8)
   10600:	01075713          	srli	a4,a4,0x10
   10604:	00877693          	andi	a3,a4,8
   10608:	2e068863          	beqz	a3,108f8 <_vfprintf_r+0x3b4>
   1060c:	010c2683          	lw	a3,16(s8)
   10610:	2e068463          	beqz	a3,108f8 <_vfprintf_r+0x3b4>
   10614:	01a77713          	andi	a4,a4,26
   10618:	00a00693          	li	a3,10
   1061c:	30d70063          	beq	a4,a3,1091c <_vfprintf_r+0x3d8>
   10620:	10c10793          	addi	a5,sp,268
   10624:	00025737          	lui	a4,0x25
   10628:	0ef12223          	sw	a5,228(sp)
   1062c:	00078893          	mv	a7,a5
   10630:	84870793          	addi	a5,a4,-1976 # 24848 <__clzsi2+0xac>
   10634:	00025737          	lui	a4,0x25
   10638:	00f12c23          	sw	a5,24(sp)
   1063c:	00090b13          	mv	s6,s2
   10640:	9c470793          	addi	a5,a4,-1596 # 249c4 <zeroes.4484>
   10644:	00f12423          	sw	a5,8(sp)
   10648:	000b4783          	lbu	a5,0(s6)
   1064c:	0e012623          	sw	zero,236(sp)
   10650:	0e012423          	sw	zero,232(sp)
   10654:	02012023          	sw	zero,32(sp)
   10658:	02012a23          	sw	zero,52(sp)
   1065c:	02012c23          	sw	zero,56(sp)
   10660:	02012e23          	sw	zero,60(sp)
   10664:	04012423          	sw	zero,72(sp)
   10668:	04012623          	sw	zero,76(sp)
   1066c:	00012623          	sw	zero,12(sp)
   10670:	22078663          	beqz	a5,1089c <_vfprintf_r+0x358>
   10674:	000b0413          	mv	s0,s6
   10678:	02500693          	li	a3,37
   1067c:	30d78a63          	beq	a5,a3,10990 <_vfprintf_r+0x44c>
   10680:	00144783          	lbu	a5,1(s0)
   10684:	00140413          	addi	s0,s0,1
   10688:	fe079ae3          	bnez	a5,1067c <_vfprintf_r+0x138>
   1068c:	416404b3          	sub	s1,s0,s6
   10690:	21640663          	beq	s0,s6,1089c <_vfprintf_r+0x358>
   10694:	0ec12683          	lw	a3,236(sp)
   10698:	0e812783          	lw	a5,232(sp)
   1069c:	0168a023          	sw	s6,0(a7)
   106a0:	009686b3          	add	a3,a3,s1
   106a4:	00178793          	addi	a5,a5,1
   106a8:	0098a223          	sw	s1,4(a7)
   106ac:	0ed12623          	sw	a3,236(sp)
   106b0:	0ef12423          	sw	a5,232(sp)
   106b4:	00700693          	li	a3,7
   106b8:	00888893          	addi	a7,a7,8
   106bc:	2ef6c263          	blt	a3,a5,109a0 <_vfprintf_r+0x45c>
   106c0:	00c12703          	lw	a4,12(sp)
   106c4:	00044783          	lbu	a5,0(s0)
   106c8:	00970733          	add	a4,a4,s1
   106cc:	00e12623          	sw	a4,12(sp)
   106d0:	1c078663          	beqz	a5,1089c <_vfprintf_r+0x358>
   106d4:	00144483          	lbu	s1,1(s0)
   106d8:	0c0103a3          	sb	zero,199(sp)
   106dc:	00140413          	addi	s0,s0,1
   106e0:	fff00d93          	li	s11,-1
   106e4:	00000993          	li	s3,0
   106e8:	00000a13          	li	s4,0
   106ec:	05a00913          	li	s2,90
   106f0:	00900a93          	li	s5,9
   106f4:	02a00b93          	li	s7,42
   106f8:	00088c93          	mv	s9,a7
   106fc:	00140413          	addi	s0,s0,1
   10700:	fe048793          	addi	a5,s1,-32
   10704:	04f96463          	bltu	s2,a5,1074c <_vfprintf_r+0x208>
   10708:	01812703          	lw	a4,24(sp)
   1070c:	00279793          	slli	a5,a5,0x2
   10710:	00e787b3          	add	a5,a5,a4
   10714:	0007a783          	lw	a5,0(a5)
   10718:	00078067          	jr	a5
   1071c:	00000993          	li	s3,0
   10720:	fd048693          	addi	a3,s1,-48
   10724:	00044483          	lbu	s1,0(s0)
   10728:	00299793          	slli	a5,s3,0x2
   1072c:	013787b3          	add	a5,a5,s3
   10730:	00179793          	slli	a5,a5,0x1
   10734:	00f689b3          	add	s3,a3,a5
   10738:	fd048693          	addi	a3,s1,-48
   1073c:	00140413          	addi	s0,s0,1
   10740:	fedaf2e3          	bgeu	s5,a3,10724 <_vfprintf_r+0x1e0>
   10744:	fe048793          	addi	a5,s1,-32
   10748:	fcf970e3          	bgeu	s2,a5,10708 <_vfprintf_r+0x1c4>
   1074c:	000c8893          	mv	a7,s9
   10750:	14048663          	beqz	s1,1089c <_vfprintf_r+0x358>
   10754:	14910623          	sb	s1,332(sp)
   10758:	0c0103a3          	sb	zero,199(sp)
   1075c:	00100a93          	li	s5,1
   10760:	00100c93          	li	s9,1
   10764:	14c10b13          	addi	s6,sp,332
   10768:	00012823          	sw	zero,16(sp)
   1076c:	00000d93          	li	s11,0
   10770:	02012423          	sw	zero,40(sp)
   10774:	02012223          	sw	zero,36(sp)
   10778:	00012e23          	sw	zero,28(sp)
   1077c:	002a7b93          	andi	s7,s4,2
   10780:	000b8463          	beqz	s7,10788 <_vfprintf_r+0x244>
   10784:	002a8a93          	addi	s5,s5,2
   10788:	084a7913          	andi	s2,s4,132
   1078c:	0ec12783          	lw	a5,236(sp)
   10790:	00091663          	bnez	s2,1079c <_vfprintf_r+0x258>
   10794:	41598833          	sub	a6,s3,s5
   10798:	730046e3          	bgtz	a6,116c4 <_vfprintf_r+0x1180>
   1079c:	0c714683          	lbu	a3,199(sp)
   107a0:	02068a63          	beqz	a3,107d4 <_vfprintf_r+0x290>
   107a4:	0e812683          	lw	a3,232(sp)
   107a8:	0c710613          	addi	a2,sp,199
   107ac:	00c8a023          	sw	a2,0(a7)
   107b0:	00178793          	addi	a5,a5,1
   107b4:	00100613          	li	a2,1
   107b8:	00168693          	addi	a3,a3,1
   107bc:	00c8a223          	sw	a2,4(a7)
   107c0:	0ef12623          	sw	a5,236(sp)
   107c4:	0ed12423          	sw	a3,232(sp)
   107c8:	00700613          	li	a2,7
   107cc:	00888893          	addi	a7,a7,8
   107d0:	54d64263          	blt	a2,a3,10d14 <_vfprintf_r+0x7d0>
   107d4:	020b8c63          	beqz	s7,1080c <_vfprintf_r+0x2c8>
   107d8:	0e812683          	lw	a3,232(sp)
   107dc:	0c810613          	addi	a2,sp,200
   107e0:	00c8a023          	sw	a2,0(a7)
   107e4:	00278793          	addi	a5,a5,2
   107e8:	00200613          	li	a2,2
   107ec:	00168693          	addi	a3,a3,1
   107f0:	00c8a223          	sw	a2,4(a7)
   107f4:	0ef12623          	sw	a5,236(sp)
   107f8:	0ed12423          	sw	a3,232(sp)
   107fc:	00700613          	li	a2,7
   10800:	00888893          	addi	a7,a7,8
   10804:	00d65463          	bge	a2,a3,1080c <_vfprintf_r+0x2c8>
   10808:	7ad0006f          	j	117b4 <_vfprintf_r+0x1270>
   1080c:	08000693          	li	a3,128
   10810:	3ed90ee3          	beq	s2,a3,1140c <_vfprintf_r+0xec8>
   10814:	419d8db3          	sub	s11,s11,s9
   10818:	4bb04ae3          	bgtz	s11,114cc <_vfprintf_r+0xf88>
   1081c:	100a7693          	andi	a3,s4,256
   10820:	2a0698e3          	bnez	a3,112d0 <_vfprintf_r+0xd8c>
   10824:	0e812703          	lw	a4,232(sp)
   10828:	019787b3          	add	a5,a5,s9
   1082c:	0168a023          	sw	s6,0(a7)
   10830:	00170713          	addi	a4,a4,1
   10834:	0198a223          	sw	s9,4(a7)
   10838:	0ef12623          	sw	a5,236(sp)
   1083c:	0ee12423          	sw	a4,232(sp)
   10840:	00700693          	li	a3,7
   10844:	56e6c863          	blt	a3,a4,10db4 <_vfprintf_r+0x870>
   10848:	00888893          	addi	a7,a7,8
   1084c:	004a7a13          	andi	s4,s4,4
   10850:	000a0663          	beqz	s4,1085c <_vfprintf_r+0x318>
   10854:	415984b3          	sub	s1,s3,s5
   10858:	56904e63          	bgtz	s1,10dd4 <_vfprintf_r+0x890>
   1085c:	0159d463          	bge	s3,s5,10864 <_vfprintf_r+0x320>
   10860:	000a8993          	mv	s3,s5
   10864:	00c12703          	lw	a4,12(sp)
   10868:	01370733          	add	a4,a4,s3
   1086c:	00e12623          	sw	a4,12(sp)
   10870:	500798e3          	bnez	a5,11580 <_vfprintf_r+0x103c>
   10874:	01012783          	lw	a5,16(sp)
   10878:	0e012423          	sw	zero,232(sp)
   1087c:	00078863          	beqz	a5,1088c <_vfprintf_r+0x348>
   10880:	01012583          	lw	a1,16(sp)
   10884:	000d0513          	mv	a0,s10
   10888:	2ac030ef          	jal	ra,13b34 <_free_r>
   1088c:	10c10893          	addi	a7,sp,268
   10890:	00040b13          	mv	s6,s0
   10894:	000b4783          	lbu	a5,0(s6)
   10898:	dc079ee3          	bnez	a5,10674 <_vfprintf_r+0x130>
   1089c:	0ec12783          	lw	a5,236(sp)
   108a0:	00078463          	beqz	a5,108a8 <_vfprintf_r+0x364>
   108a4:	3450106f          	j	123e8 <_vfprintf_r+0x1ea4>
   108a8:	00cc5783          	lhu	a5,12(s8)
   108ac:	0407f793          	andi	a5,a5,64
   108b0:	00078463          	beqz	a5,108b8 <_vfprintf_r+0x374>
   108b4:	2500206f          	j	12b04 <_vfprintf_r+0x25c0>
   108b8:	1ec12083          	lw	ra,492(sp)
   108bc:	1e812403          	lw	s0,488(sp)
   108c0:	00c12503          	lw	a0,12(sp)
   108c4:	1e412483          	lw	s1,484(sp)
   108c8:	1e012903          	lw	s2,480(sp)
   108cc:	1dc12983          	lw	s3,476(sp)
   108d0:	1d812a03          	lw	s4,472(sp)
   108d4:	1d412a83          	lw	s5,468(sp)
   108d8:	1d012b03          	lw	s6,464(sp)
   108dc:	1cc12b83          	lw	s7,460(sp)
   108e0:	1c812c03          	lw	s8,456(sp)
   108e4:	1c412c83          	lw	s9,452(sp)
   108e8:	1c012d03          	lw	s10,448(sp)
   108ec:	1bc12d83          	lw	s11,444(sp)
   108f0:	1f010113          	addi	sp,sp,496
   108f4:	00008067          	ret
   108f8:	000c0593          	mv	a1,s8
   108fc:	000d0513          	mv	a0,s10
   10900:	7d4020ef          	jal	ra,130d4 <__swsetup_r>
   10904:	00050463          	beqz	a0,1090c <_vfprintf_r+0x3c8>
   10908:	1fc0206f          	j	12b04 <_vfprintf_r+0x25c0>
   1090c:	00cc5703          	lhu	a4,12(s8)
   10910:	00a00693          	li	a3,10
   10914:	01a77713          	andi	a4,a4,26
   10918:	d0d714e3          	bne	a4,a3,10620 <_vfprintf_r+0xdc>
   1091c:	00ec1703          	lh	a4,14(s8)
   10920:	d00740e3          	bltz	a4,10620 <_vfprintf_r+0xdc>
   10924:	01412683          	lw	a3,20(sp)
   10928:	00090613          	mv	a2,s2
   1092c:	000c0593          	mv	a1,s8
   10930:	000d0513          	mv	a0,s10
   10934:	6e0020ef          	jal	ra,13014 <__sbprintf>
   10938:	00a12623          	sw	a0,12(sp)
   1093c:	f7dff06f          	j	108b8 <_vfprintf_r+0x374>
   10940:	000d0513          	mv	a0,s10
   10944:	6c0060ef          	jal	ra,17004 <_localeconv_r>
   10948:	00452783          	lw	a5,4(a0)
   1094c:	00078513          	mv	a0,a5
   10950:	04f12623          	sw	a5,76(sp)
   10954:	b65ff0ef          	jal	ra,104b8 <strlen>
   10958:	00050793          	mv	a5,a0
   1095c:	000d0513          	mv	a0,s10
   10960:	00078493          	mv	s1,a5
   10964:	04f12423          	sw	a5,72(sp)
   10968:	69c060ef          	jal	ra,17004 <_localeconv_r>
   1096c:	00852783          	lw	a5,8(a0)
   10970:	02f12e23          	sw	a5,60(sp)
   10974:	00048463          	beqz	s1,1097c <_vfprintf_r+0x438>
   10978:	14c0106f          	j	11ac4 <_vfprintf_r+0x1580>
   1097c:	00044483          	lbu	s1,0(s0)
   10980:	d7dff06f          	j	106fc <_vfprintf_r+0x1b8>
   10984:	00044483          	lbu	s1,0(s0)
   10988:	020a6a13          	ori	s4,s4,32
   1098c:	d71ff06f          	j	106fc <_vfprintf_r+0x1b8>
   10990:	416404b3          	sub	s1,s0,s6
   10994:	d16410e3          	bne	s0,s6,10694 <_vfprintf_r+0x150>
   10998:	00044783          	lbu	a5,0(s0)
   1099c:	d35ff06f          	j	106d0 <_vfprintf_r+0x18c>
   109a0:	0e410613          	addi	a2,sp,228
   109a4:	000c0593          	mv	a1,s8
   109a8:	000d0513          	mv	a0,s10
   109ac:	15d0b0ef          	jal	ra,1c308 <__sprint_r>
   109b0:	ee051ce3          	bnez	a0,108a8 <_vfprintf_r+0x364>
   109b4:	10c10893          	addi	a7,sp,268
   109b8:	d09ff06f          	j	106c0 <_vfprintf_r+0x17c>
   109bc:	008a7793          	andi	a5,s4,8
   109c0:	000c8893          	mv	a7,s9
   109c4:	00078463          	beqz	a5,109cc <_vfprintf_r+0x488>
   109c8:	14c0106f          	j	11b14 <_vfprintf_r+0x15d0>
   109cc:	01412783          	lw	a5,20(sp)
   109d0:	0b010513          	addi	a0,sp,176
   109d4:	01912823          	sw	s9,16(sp)
   109d8:	00778793          	addi	a5,a5,7
   109dc:	ff87f793          	andi	a5,a5,-8
   109e0:	0007a583          	lw	a1,0(a5)
   109e4:	0047a603          	lw	a2,4(a5)
   109e8:	00878793          	addi	a5,a5,8
   109ec:	00f12a23          	sw	a5,20(sp)
   109f0:	798130ef          	jal	ra,24188 <__extenddftf2>
   109f4:	0b012783          	lw	a5,176(sp)
   109f8:	01012883          	lw	a7,16(sp)
   109fc:	0ef12823          	sw	a5,240(sp)
   10a00:	0b412783          	lw	a5,180(sp)
   10a04:	0ef12a23          	sw	a5,244(sp)
   10a08:	0b812783          	lw	a5,184(sp)
   10a0c:	0ef12c23          	sw	a5,248(sp)
   10a10:	0bc12783          	lw	a5,188(sp)
   10a14:	0ef12e23          	sw	a5,252(sp)
   10a18:	0f010513          	addi	a0,sp,240
   10a1c:	01112823          	sw	a7,16(sp)
   10a20:	578060ef          	jal	ra,16f98 <_ldcheck>
   10a24:	0ca12623          	sw	a0,204(sp)
   10a28:	00200793          	li	a5,2
   10a2c:	01012883          	lw	a7,16(sp)
   10a30:	00f51463          	bne	a0,a5,10a38 <_vfprintf_r+0x4f4>
   10a34:	51c0106f          	j	11f50 <_vfprintf_r+0x1a0c>
   10a38:	00100793          	li	a5,1
   10a3c:	00f51463          	bne	a0,a5,10a44 <_vfprintf_r+0x500>
   10a40:	6640106f          	j	120a4 <_vfprintf_r+0x1b60>
   10a44:	06100793          	li	a5,97
   10a48:	00f49463          	bne	s1,a5,10a50 <_vfprintf_r+0x50c>
   10a4c:	1e40206f          	j	12c30 <_vfprintf_r+0x26ec>
   10a50:	04100793          	li	a5,65
   10a54:	00f49463          	bne	s1,a5,10a5c <_vfprintf_r+0x518>
   10a58:	1b10106f          	j	12408 <_vfprintf_r+0x1ec4>
   10a5c:	fdf4fb93          	andi	s7,s1,-33
   10a60:	fff00793          	li	a5,-1
   10a64:	05712223          	sw	s7,68(sp)
   10a68:	00fd9463          	bne	s11,a5,10a70 <_vfprintf_r+0x52c>
   10a6c:	2a00206f          	j	12d0c <_vfprintf_r+0x27c8>
   10a70:	04700793          	li	a5,71
   10a74:	00fb9463          	bne	s7,a5,10a7c <_vfprintf_r+0x538>
   10a78:	2000206f          	j	12c78 <_vfprintf_r+0x2734>
   10a7c:	0fc12303          	lw	t1,252(sp)
   10a80:	03412423          	sw	s4,40(sp)
   10a84:	0f012e03          	lw	t3,240(sp)
   10a88:	0f412e83          	lw	t4,244(sp)
   10a8c:	0f812f03          	lw	t5,248(sp)
   10a90:	100a6793          	ori	a5,s4,256
   10a94:	00035463          	bgez	t1,10a9c <_vfprintf_r+0x558>
   10a98:	4080206f          	j	12ea0 <_vfprintf_r+0x295c>
   10a9c:	04012c23          	sw	zero,88(sp)
   10aa0:	00078a13          	mv	s4,a5
   10aa4:	00012823          	sw	zero,16(sp)
   10aa8:	04600793          	li	a5,70
   10aac:	00fb9463          	bne	s7,a5,10ab4 <_vfprintf_r+0x570>
   10ab0:	6b90106f          	j	12968 <_vfprintf_r+0x2424>
   10ab4:	04500793          	li	a5,69
   10ab8:	05112823          	sw	a7,80(sp)
   10abc:	00fb8463          	beq	s7,a5,10ac4 <_vfprintf_r+0x580>
   10ac0:	6290106f          	j	128e8 <_vfprintf_r+0x23a4>
   10ac4:	001d8913          	addi	s2,s11,1
   10ac8:	0b010a93          	addi	s5,sp,176
   10acc:	00090693          	mv	a3,s2
   10ad0:	0dc10813          	addi	a6,sp,220
   10ad4:	0d010793          	addi	a5,sp,208
   10ad8:	0cc10713          	addi	a4,sp,204
   10adc:	00200613          	li	a2,2
   10ae0:	000a8593          	mv	a1,s5
   10ae4:	000d0513          	mv	a0,s10
   10ae8:	0bc12823          	sw	t3,176(sp)
   10aec:	05c12023          	sw	t3,64(sp)
   10af0:	0bd12a23          	sw	t4,180(sp)
   10af4:	03d12223          	sw	t4,36(sp)
   10af8:	0be12c23          	sw	t5,184(sp)
   10afc:	03e12023          	sw	t5,32(sp)
   10b00:	0a612e23          	sw	t1,188(sp)
   10b04:	00612e23          	sw	t1,28(sp)
   10b08:	1f8050ef          	jal	ra,15d00 <_ldtoa_r>
   10b0c:	01c12303          	lw	t1,28(sp)
   10b10:	02012f03          	lw	t5,32(sp)
   10b14:	02412e83          	lw	t4,36(sp)
   10b18:	04012e03          	lw	t3,64(sp)
   10b1c:	05012883          	lw	a7,80(sp)
   10b20:	00050b13          	mv	s6,a0
   10b24:	01250933          	add	s2,a0,s2
   10b28:	0a010c93          	addi	s9,sp,160
   10b2c:	000c8593          	mv	a1,s9
   10b30:	000a8513          	mv	a0,s5
   10b34:	01112e23          	sw	a7,28(sp)
   10b38:	0bc12823          	sw	t3,176(sp)
   10b3c:	0bd12a23          	sw	t4,180(sp)
   10b40:	0be12c23          	sw	t5,184(sp)
   10b44:	0a612e23          	sw	t1,188(sp)
   10b48:	0a012023          	sw	zero,160(sp)
   10b4c:	0a012223          	sw	zero,164(sp)
   10b50:	0a012423          	sw	zero,168(sp)
   10b54:	0a012623          	sw	zero,172(sp)
   10b58:	73c100ef          	jal	ra,21294 <__eqtf2>
   10b5c:	01c12883          	lw	a7,28(sp)
   10b60:	00090713          	mv	a4,s2
   10b64:	02050263          	beqz	a0,10b88 <_vfprintf_r+0x644>
   10b68:	0dc12703          	lw	a4,220(sp)
   10b6c:	01277e63          	bgeu	a4,s2,10b88 <_vfprintf_r+0x644>
   10b70:	03000693          	li	a3,48
   10b74:	00170793          	addi	a5,a4,1
   10b78:	0cf12e23          	sw	a5,220(sp)
   10b7c:	00d70023          	sb	a3,0(a4)
   10b80:	0dc12703          	lw	a4,220(sp)
   10b84:	ff2768e3          	bltu	a4,s2,10b74 <_vfprintf_r+0x630>
   10b88:	416707b3          	sub	a5,a4,s6
   10b8c:	02f12023          	sw	a5,32(sp)
   10b90:	0cc12703          	lw	a4,204(sp)
   10b94:	04700793          	li	a5,71
   10b98:	00e12e23          	sw	a4,28(sp)
   10b9c:	04412703          	lw	a4,68(sp)
   10ba0:	00f71463          	bne	a4,a5,10ba8 <_vfprintf_r+0x664>
   10ba4:	45d0106f          	j	12800 <_vfprintf_r+0x22bc>
   10ba8:	04412703          	lw	a4,68(sp)
   10bac:	04600793          	li	a5,70
   10bb0:	00f71463          	bne	a4,a5,10bb8 <_vfprintf_r+0x674>
   10bb4:	69d0106f          	j	12a50 <_vfprintf_r+0x250c>
   10bb8:	01c12783          	lw	a5,28(sp)
   10bbc:	04412703          	lw	a4,68(sp)
   10bc0:	04100613          	li	a2,65
   10bc4:	fff78a93          	addi	s5,a5,-1
   10bc8:	0d512623          	sw	s5,204(sp)
   10bcc:	0ff4f793          	andi	a5,s1,255
   10bd0:	00000693          	li	a3,0
   10bd4:	00c71863          	bne	a4,a2,10be4 <_vfprintf_r+0x6a0>
   10bd8:	00f78793          	addi	a5,a5,15
   10bdc:	0ff7f793          	andi	a5,a5,255
   10be0:	00100693          	li	a3,1
   10be4:	0cf10a23          	sb	a5,212(sp)
   10be8:	02b00793          	li	a5,43
   10bec:	000ada63          	bgez	s5,10c00 <_vfprintf_r+0x6bc>
   10bf0:	01c12783          	lw	a5,28(sp)
   10bf4:	00100a93          	li	s5,1
   10bf8:	40fa8ab3          	sub	s5,s5,a5
   10bfc:	02d00793          	li	a5,45
   10c00:	0cf10aa3          	sb	a5,213(sp)
   10c04:	00900793          	li	a5,9
   10c08:	0157c463          	blt	a5,s5,10c10 <_vfprintf_r+0x6cc>
   10c0c:	2b40206f          	j	12ec0 <_vfprintf_r+0x297c>
   10c10:	0e310b93          	addi	s7,sp,227
   10c14:	000b8c93          	mv	s9,s7
   10c18:	06300a13          	li	s4,99
   10c1c:	00812e23          	sw	s0,28(sp)
   10c20:	00088d93          	mv	s11,a7
   10c24:	00a00593          	li	a1,10
   10c28:	000a8513          	mv	a0,s5
   10c2c:	341130ef          	jal	ra,2476c <__modsi3>
   10c30:	03050793          	addi	a5,a0,48
   10c34:	fefc8fa3          	sb	a5,-1(s9)
   10c38:	000a8513          	mv	a0,s5
   10c3c:	00a00593          	li	a1,10
   10c40:	000a8413          	mv	s0,s5
   10c44:	2a5130ef          	jal	ra,246e8 <__divsi3>
   10c48:	000c8913          	mv	s2,s9
   10c4c:	00050a93          	mv	s5,a0
   10c50:	fffc8c93          	addi	s9,s9,-1
   10c54:	fc8a48e3          	blt	s4,s0,10c24 <_vfprintf_r+0x6e0>
   10c58:	03050613          	addi	a2,a0,48
   10c5c:	0ff67613          	andi	a2,a2,255
   10c60:	ffe90793          	addi	a5,s2,-2
   10c64:	fecc8fa3          	sb	a2,-1(s9)
   10c68:	01c12403          	lw	s0,28(sp)
   10c6c:	000d8893          	mv	a7,s11
   10c70:	0177e463          	bltu	a5,s7,10c78 <_vfprintf_r+0x734>
   10c74:	37c0206f          	j	12ff0 <_vfprintf_r+0x2aac>
   10c78:	0d610693          	addi	a3,sp,214
   10c7c:	0080006f          	j	10c84 <_vfprintf_r+0x740>
   10c80:	0007c603          	lbu	a2,0(a5)
   10c84:	00c68023          	sb	a2,0(a3)
   10c88:	00178793          	addi	a5,a5,1
   10c8c:	00168693          	addi	a3,a3,1
   10c90:	ff7798e3          	bne	a5,s7,10c80 <_vfprintf_r+0x73c>
   10c94:	0e510793          	addi	a5,sp,229
   10c98:	412787b3          	sub	a5,a5,s2
   10c9c:	0d610713          	addi	a4,sp,214
   10ca0:	00f707b3          	add	a5,a4,a5
   10ca4:	0d410693          	addi	a3,sp,212
   10ca8:	40d787b3          	sub	a5,a5,a3
   10cac:	02f12c23          	sw	a5,56(sp)
   10cb0:	02012703          	lw	a4,32(sp)
   10cb4:	03812683          	lw	a3,56(sp)
   10cb8:	00100793          	li	a5,1
   10cbc:	00d70cb3          	add	s9,a4,a3
   10cc0:	00e7c463          	blt	a5,a4,10cc8 <_vfprintf_r+0x784>
   10cc4:	29c0206f          	j	12f60 <_vfprintf_r+0x2a1c>
   10cc8:	02c12783          	lw	a5,44(sp)
   10ccc:	00fc8cb3          	add	s9,s9,a5
   10cd0:	02812783          	lw	a5,40(sp)
   10cd4:	fffcca93          	not	s5,s9
   10cd8:	41fada93          	srai	s5,s5,0x1f
   10cdc:	bff7fa13          	andi	s4,a5,-1025
   10ce0:	100a6a13          	ori	s4,s4,256
   10ce4:	015cfab3          	and	s5,s9,s5
   10ce8:	02012423          	sw	zero,40(sp)
   10cec:	02012223          	sw	zero,36(sp)
   10cf0:	00012e23          	sw	zero,28(sp)
   10cf4:	05812783          	lw	a5,88(sp)
   10cf8:	00079463          	bnez	a5,10d00 <_vfprintf_r+0x7bc>
   10cfc:	3790106f          	j	12874 <_vfprintf_r+0x2330>
   10d00:	02d00793          	li	a5,45
   10d04:	0cf103a3          	sb	a5,199(sp)
   10d08:	00000d93          	li	s11,0
   10d0c:	001a8a93          	addi	s5,s5,1
   10d10:	a6dff06f          	j	1077c <_vfprintf_r+0x238>
   10d14:	0e410613          	addi	a2,sp,228
   10d18:	000c0593          	mv	a1,s8
   10d1c:	000d0513          	mv	a0,s10
   10d20:	5e80b0ef          	jal	ra,1c308 <__sprint_r>
   10d24:	060518e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   10d28:	0ec12783          	lw	a5,236(sp)
   10d2c:	10c10893          	addi	a7,sp,268
   10d30:	aa5ff06f          	j	107d4 <_vfprintf_r+0x290>
   10d34:	03012683          	lw	a3,48(sp)
   10d38:	02c12703          	lw	a4,44(sp)
   10d3c:	00700613          	li	a2,7
   10d40:	00d8a023          	sw	a3,0(a7)
   10d44:	0e812683          	lw	a3,232(sp)
   10d48:	00f707b3          	add	a5,a4,a5
   10d4c:	00e8a223          	sw	a4,4(a7)
   10d50:	00168693          	addi	a3,a3,1
   10d54:	0ef12623          	sw	a5,236(sp)
   10d58:	0ed12423          	sw	a3,232(sp)
   10d5c:	00888893          	addi	a7,a7,8
   10d60:	02d65463          	bge	a2,a3,10d88 <_vfprintf_r+0x844>
   10d64:	0e410613          	addi	a2,sp,228
   10d68:	000c0593          	mv	a1,s8
   10d6c:	000d0513          	mv	a0,s10
   10d70:	5980b0ef          	jal	ra,1c308 <__sprint_r>
   10d74:	020510e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   10d78:	0cc12583          	lw	a1,204(sp)
   10d7c:	0ec12783          	lw	a5,236(sp)
   10d80:	0e812683          	lw	a3,232(sp)
   10d84:	10c10893          	addi	a7,sp,268
   10d88:	0005d463          	bgez	a1,10d90 <_vfprintf_r+0x84c>
   10d8c:	5850106f          	j	12b10 <_vfprintf_r+0x25cc>
   10d90:	02012703          	lw	a4,32(sp)
   10d94:	00168693          	addi	a3,a3,1
   10d98:	0168a023          	sw	s6,0(a7)
   10d9c:	00f707b3          	add	a5,a4,a5
   10da0:	00e8a223          	sw	a4,4(a7)
   10da4:	0ef12623          	sw	a5,236(sp)
   10da8:	0ed12423          	sw	a3,232(sp)
   10dac:	00700713          	li	a4,7
   10db0:	a8d75ce3          	bge	a4,a3,10848 <_vfprintf_r+0x304>
   10db4:	0e410613          	addi	a2,sp,228
   10db8:	000c0593          	mv	a1,s8
   10dbc:	000d0513          	mv	a0,s10
   10dc0:	5480b0ef          	jal	ra,1c308 <__sprint_r>
   10dc4:	7c051863          	bnez	a0,11594 <_vfprintf_r+0x1050>
   10dc8:	0ec12783          	lw	a5,236(sp)
   10dcc:	10c10893          	addi	a7,sp,268
   10dd0:	a7dff06f          	j	1084c <_vfprintf_r+0x308>
   10dd4:	01000693          	li	a3,16
   10dd8:	0e812703          	lw	a4,232(sp)
   10ddc:	0096c463          	blt	a3,s1,10de4 <_vfprintf_r+0x8a0>
   10de0:	5190106f          	j	12af8 <_vfprintf_r+0x25b4>
   10de4:	000256b7          	lui	a3,0x25
   10de8:	9b468e93          	addi	t4,a3,-1612 # 249b4 <blanks.4483>
   10dec:	01000913          	li	s2,16
   10df0:	00700a13          	li	s4,7
   10df4:	000e8b13          	mv	s6,t4
   10df8:	00c0006f          	j	10e04 <_vfprintf_r+0x8c0>
   10dfc:	ff048493          	addi	s1,s1,-16
   10e00:	04995663          	bge	s2,s1,10e4c <_vfprintf_r+0x908>
   10e04:	01078793          	addi	a5,a5,16
   10e08:	00170713          	addi	a4,a4,1
   10e0c:	0168a023          	sw	s6,0(a7)
   10e10:	0128a223          	sw	s2,4(a7)
   10e14:	0ef12623          	sw	a5,236(sp)
   10e18:	0ee12423          	sw	a4,232(sp)
   10e1c:	00888893          	addi	a7,a7,8
   10e20:	fcea5ee3          	bge	s4,a4,10dfc <_vfprintf_r+0x8b8>
   10e24:	0e410613          	addi	a2,sp,228
   10e28:	000c0593          	mv	a1,s8
   10e2c:	000d0513          	mv	a0,s10
   10e30:	4d80b0ef          	jal	ra,1c308 <__sprint_r>
   10e34:	76051063          	bnez	a0,11594 <_vfprintf_r+0x1050>
   10e38:	ff048493          	addi	s1,s1,-16
   10e3c:	0ec12783          	lw	a5,236(sp)
   10e40:	0e812703          	lw	a4,232(sp)
   10e44:	10c10893          	addi	a7,sp,268
   10e48:	fa994ee3          	blt	s2,s1,10e04 <_vfprintf_r+0x8c0>
   10e4c:	000b0e93          	mv	t4,s6
   10e50:	009787b3          	add	a5,a5,s1
   10e54:	00170713          	addi	a4,a4,1
   10e58:	01d8a023          	sw	t4,0(a7)
   10e5c:	0098a223          	sw	s1,4(a7)
   10e60:	0ef12623          	sw	a5,236(sp)
   10e64:	0ee12423          	sw	a4,232(sp)
   10e68:	00700693          	li	a3,7
   10e6c:	9ee6d8e3          	bge	a3,a4,1085c <_vfprintf_r+0x318>
   10e70:	0e410613          	addi	a2,sp,228
   10e74:	000c0593          	mv	a1,s8
   10e78:	000d0513          	mv	a0,s10
   10e7c:	48c0b0ef          	jal	ra,1c308 <__sprint_r>
   10e80:	70051a63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   10e84:	0ec12783          	lw	a5,236(sp)
   10e88:	9d5ff06f          	j	1085c <_vfprintf_r+0x318>
   10e8c:	000d0513          	mv	a0,s10
   10e90:	2d9020ef          	jal	ra,13968 <__sinit>
   10e94:	f2cff06f          	j	105c0 <_vfprintf_r+0x7c>
   10e98:	01412703          	lw	a4,20(sp)
   10e9c:	000c8893          	mv	a7,s9
   10ea0:	0c0103a3          	sb	zero,199(sp)
   10ea4:	00072783          	lw	a5,0(a4)
   10ea8:	00470713          	addi	a4,a4,4
   10eac:	00e12a23          	sw	a4,20(sp)
   10eb0:	14f10623          	sb	a5,332(sp)
   10eb4:	00100a93          	li	s5,1
   10eb8:	00100c93          	li	s9,1
   10ebc:	14c10b13          	addi	s6,sp,332
   10ec0:	8a9ff06f          	j	10768 <_vfprintf_r+0x224>
   10ec4:	01412783          	lw	a5,20(sp)
   10ec8:	0c0103a3          	sb	zero,199(sp)
   10ecc:	000c8893          	mv	a7,s9
   10ed0:	0007ab03          	lw	s6,0(a5)
   10ed4:	00478913          	addi	s2,a5,4
   10ed8:	5a0b0ee3          	beqz	s6,11c94 <_vfprintf_r+0x1750>
   10edc:	fff00793          	li	a5,-1
   10ee0:	00fd9463          	bne	s11,a5,10ee8 <_vfprintf_r+0x9a4>
   10ee4:	1000106f          	j	11fe4 <_vfprintf_r+0x1aa0>
   10ee8:	000d8613          	mv	a2,s11
   10eec:	00000593          	li	a1,0
   10ef0:	000b0513          	mv	a0,s6
   10ef4:	01912a23          	sw	s9,20(sp)
   10ef8:	2a5060ef          	jal	ra,1799c <memchr>
   10efc:	00a12823          	sw	a0,16(sp)
   10f00:	01412883          	lw	a7,20(sp)
   10f04:	00051463          	bnez	a0,10f0c <_vfprintf_r+0x9c8>
   10f08:	31d0106f          	j	12a24 <_vfprintf_r+0x24e0>
   10f0c:	01012783          	lw	a5,16(sp)
   10f10:	01212a23          	sw	s2,20(sp)
   10f14:	00012823          	sw	zero,16(sp)
   10f18:	41678cb3          	sub	s9,a5,s6
   10f1c:	0c714783          	lbu	a5,199(sp)
   10f20:	fffcca93          	not	s5,s9
   10f24:	41fada93          	srai	s5,s5,0x1f
   10f28:	02012423          	sw	zero,40(sp)
   10f2c:	02012223          	sw	zero,36(sp)
   10f30:	00012e23          	sw	zero,28(sp)
   10f34:	015cfab3          	and	s5,s9,s5
   10f38:	00000d93          	li	s11,0
   10f3c:	840780e3          	beqz	a5,1077c <_vfprintf_r+0x238>
   10f40:	001a8a93          	addi	s5,s5,1
   10f44:	839ff06f          	j	1077c <_vfprintf_r+0x238>
   10f48:	00044483          	lbu	s1,0(s0)
   10f4c:	004a6a13          	ori	s4,s4,4
   10f50:	facff06f          	j	106fc <_vfprintf_r+0x1b8>
   10f54:	01412683          	lw	a3,20(sp)
   10f58:	020a7793          	andi	a5,s4,32
   10f5c:	000c8893          	mv	a7,s9
   10f60:	0006a703          	lw	a4,0(a3)
   10f64:	00468693          	addi	a3,a3,4
   10f68:	00d12a23          	sw	a3,20(sp)
   10f6c:	36079ee3          	bnez	a5,11ae8 <_vfprintf_r+0x15a4>
   10f70:	010a7793          	andi	a5,s4,16
   10f74:	00078463          	beqz	a5,10f7c <_vfprintf_r+0xa38>
   10f78:	05c0106f          	j	11fd4 <_vfprintf_r+0x1a90>
   10f7c:	040a7793          	andi	a5,s4,64
   10f80:	00078463          	beqz	a5,10f88 <_vfprintf_r+0xa44>
   10f84:	3fc0106f          	j	12380 <_vfprintf_r+0x1e3c>
   10f88:	200a7a13          	andi	s4,s4,512
   10f8c:	000a1463          	bnez	s4,10f94 <_vfprintf_r+0xa50>
   10f90:	0440106f          	j	11fd4 <_vfprintf_r+0x1a90>
   10f94:	00c12783          	lw	a5,12(sp)
   10f98:	00040b13          	mv	s6,s0
   10f9c:	00f70023          	sb	a5,0(a4)
   10fa0:	8f5ff06f          	j	10894 <_vfprintf_r+0x350>
   10fa4:	00044483          	lbu	s1,0(s0)
   10fa8:	06c00793          	li	a5,108
   10fac:	4cf484e3          	beq	s1,a5,11c74 <_vfprintf_r+0x1730>
   10fb0:	010a6a13          	ori	s4,s4,16
   10fb4:	f48ff06f          	j	106fc <_vfprintf_r+0x1b8>
   10fb8:	01412703          	lw	a4,20(sp)
   10fbc:	ffff87b7          	lui	a5,0xffff8
   10fc0:	8307c793          	xori	a5,a5,-2000
   10fc4:	0cf11423          	sh	a5,200(sp)
   10fc8:	00470793          	addi	a5,a4,4
   10fcc:	00f12a23          	sw	a5,20(sp)
   10fd0:	00072903          	lw	s2,0(a4)
   10fd4:	000257b7          	lui	a5,0x25
   10fd8:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   10fdc:	000c8893          	mv	a7,s9
   10fe0:	02f12a23          	sw	a5,52(sp)
   10fe4:	00000c93          	li	s9,0
   10fe8:	002a6b93          	ori	s7,s4,2
   10fec:	00200793          	li	a5,2
   10ff0:	07800493          	li	s1,120
   10ff4:	0c0103a3          	sb	zero,199(sp)
   10ff8:	fff00713          	li	a4,-1
   10ffc:	20ed8663          	beq	s11,a4,11208 <_vfprintf_r+0xcc4>
   11000:	01996733          	or	a4,s2,s9
   11004:	f7fbfa13          	andi	s4,s7,-129
   11008:	1e071e63          	bnez	a4,11204 <_vfprintf_r+0xcc0>
   1100c:	260d9463          	bnez	s11,11274 <_vfprintf_r+0xd30>
   11010:	1c079063          	bnez	a5,111d0 <_vfprintf_r+0xc8c>
   11014:	001bfc93          	andi	s9,s7,1
   11018:	1b010b13          	addi	s6,sp,432
   1101c:	280c9ce3          	bnez	s9,11ab4 <_vfprintf_r+0x1570>
   11020:	000c8a93          	mv	s5,s9
   11024:	01bcd463          	bge	s9,s11,1102c <_vfprintf_r+0xae8>
   11028:	000d8a93          	mv	s5,s11
   1102c:	0c714783          	lbu	a5,199(sp)
   11030:	00012823          	sw	zero,16(sp)
   11034:	02012423          	sw	zero,40(sp)
   11038:	02012223          	sw	zero,36(sp)
   1103c:	00012e23          	sw	zero,28(sp)
   11040:	f00790e3          	bnez	a5,10f40 <_vfprintf_r+0x9fc>
   11044:	f38ff06f          	j	1077c <_vfprintf_r+0x238>
   11048:	00044483          	lbu	s1,0(s0)
   1104c:	06800793          	li	a5,104
   11050:	42f48ae3          	beq	s1,a5,11c84 <_vfprintf_r+0x1740>
   11054:	040a6a13          	ori	s4,s4,64
   11058:	ea4ff06f          	j	106fc <_vfprintf_r+0x1b8>
   1105c:	02b00793          	li	a5,43
   11060:	00044483          	lbu	s1,0(s0)
   11064:	0cf103a3          	sb	a5,199(sp)
   11068:	e94ff06f          	j	106fc <_vfprintf_r+0x1b8>
   1106c:	00044483          	lbu	s1,0(s0)
   11070:	080a6a13          	ori	s4,s4,128
   11074:	e88ff06f          	j	106fc <_vfprintf_r+0x1b8>
   11078:	00044483          	lbu	s1,0(s0)
   1107c:	00140713          	addi	a4,s0,1
   11080:	01749463          	bne	s1,s7,11088 <_vfprintf_r+0xb44>
   11084:	72d0106f          	j	12fb0 <_vfprintf_r+0x2a6c>
   11088:	fd048693          	addi	a3,s1,-48
   1108c:	00070413          	mv	s0,a4
   11090:	00000d93          	li	s11,0
   11094:	e6dae663          	bltu	s5,a3,10700 <_vfprintf_r+0x1bc>
   11098:	00044483          	lbu	s1,0(s0)
   1109c:	002d9793          	slli	a5,s11,0x2
   110a0:	01b787b3          	add	a5,a5,s11
   110a4:	00179793          	slli	a5,a5,0x1
   110a8:	00d78db3          	add	s11,a5,a3
   110ac:	fd048693          	addi	a3,s1,-48
   110b0:	00140413          	addi	s0,s0,1
   110b4:	fedaf2e3          	bgeu	s5,a3,11098 <_vfprintf_r+0xb54>
   110b8:	e48ff06f          	j	10700 <_vfprintf_r+0x1bc>
   110bc:	01412783          	lw	a5,20(sp)
   110c0:	00044483          	lbu	s1,0(s0)
   110c4:	0007a983          	lw	s3,0(a5)
   110c8:	00478793          	addi	a5,a5,4
   110cc:	00f12a23          	sw	a5,20(sp)
   110d0:	e209d663          	bgez	s3,106fc <_vfprintf_r+0x1b8>
   110d4:	413009b3          	neg	s3,s3
   110d8:	004a6a13          	ori	s4,s4,4
   110dc:	e20ff06f          	j	106fc <_vfprintf_r+0x1b8>
   110e0:	00044483          	lbu	s1,0(s0)
   110e4:	001a6a13          	ori	s4,s4,1
   110e8:	e14ff06f          	j	106fc <_vfprintf_r+0x1b8>
   110ec:	0c714783          	lbu	a5,199(sp)
   110f0:	00044483          	lbu	s1,0(s0)
   110f4:	e0079463          	bnez	a5,106fc <_vfprintf_r+0x1b8>
   110f8:	02000793          	li	a5,32
   110fc:	0cf103a3          	sb	a5,199(sp)
   11100:	dfcff06f          	j	106fc <_vfprintf_r+0x1b8>
   11104:	000c8893          	mv	a7,s9
   11108:	010a6a13          	ori	s4,s4,16
   1110c:	020a7793          	andi	a5,s4,32
   11110:	0c078ee3          	beqz	a5,119ec <_vfprintf_r+0x14a8>
   11114:	01412783          	lw	a5,20(sp)
   11118:	00778b13          	addi	s6,a5,7
   1111c:	ff8b7b13          	andi	s6,s6,-8
   11120:	000b2903          	lw	s2,0(s6)
   11124:	004b2c83          	lw	s9,4(s6)
   11128:	008b0793          	addi	a5,s6,8
   1112c:	00f12a23          	sw	a5,20(sp)
   11130:	bffa7b93          	andi	s7,s4,-1025
   11134:	00000793          	li	a5,0
   11138:	ebdff06f          	j	10ff4 <_vfprintf_r+0xab0>
   1113c:	000c8893          	mv	a7,s9
   11140:	010a6b93          	ori	s7,s4,16
   11144:	020bf793          	andi	a5,s7,32
   11148:	0c0788e3          	beqz	a5,11a18 <_vfprintf_r+0x14d4>
   1114c:	01412783          	lw	a5,20(sp)
   11150:	00778b13          	addi	s6,a5,7
   11154:	ff8b7b13          	andi	s6,s6,-8
   11158:	008b0793          	addi	a5,s6,8
   1115c:	00f12a23          	sw	a5,20(sp)
   11160:	000b2903          	lw	s2,0(s6)
   11164:	004b2c83          	lw	s9,4(s6)
   11168:	00100793          	li	a5,1
   1116c:	e89ff06f          	j	10ff4 <_vfprintf_r+0xab0>
   11170:	00044483          	lbu	s1,0(s0)
   11174:	008a6a13          	ori	s4,s4,8
   11178:	d84ff06f          	j	106fc <_vfprintf_r+0x1b8>
   1117c:	000c8893          	mv	a7,s9
   11180:	010a6a13          	ori	s4,s4,16
   11184:	020a7793          	andi	a5,s4,32
   11188:	0c0780e3          	beqz	a5,11a48 <_vfprintf_r+0x1504>
   1118c:	01412783          	lw	a5,20(sp)
   11190:	00778b13          	addi	s6,a5,7
   11194:	ff8b7b13          	andi	s6,s6,-8
   11198:	004b2783          	lw	a5,4(s6)
   1119c:	000b2903          	lw	s2,0(s6)
   111a0:	008b0713          	addi	a4,s6,8
   111a4:	00e12a23          	sw	a4,20(sp)
   111a8:	00078c93          	mv	s9,a5
   111ac:	0c07c6e3          	bltz	a5,11a78 <_vfprintf_r+0x1534>
   111b0:	fff00793          	li	a5,-1
   111b4:	000a0b93          	mv	s7,s4
   111b8:	02fd8463          	beq	s11,a5,111e0 <_vfprintf_r+0xc9c>
   111bc:	019967b3          	or	a5,s2,s9
   111c0:	f7fa7b93          	andi	s7,s4,-129
   111c4:	00079e63          	bnez	a5,111e0 <_vfprintf_r+0xc9c>
   111c8:	020d9263          	bnez	s11,111ec <_vfprintf_r+0xca8>
   111cc:	000b8a13          	mv	s4,s7
   111d0:	00000d93          	li	s11,0
   111d4:	00000c93          	li	s9,0
   111d8:	1b010b13          	addi	s6,sp,432
   111dc:	e45ff06f          	j	11020 <_vfprintf_r+0xadc>
   111e0:	3a0c92e3          	bnez	s9,11d84 <_vfprintf_r+0x1840>
   111e4:	00900793          	li	a5,9
   111e8:	3927eee3          	bltu	a5,s2,11d84 <_vfprintf_r+0x1840>
   111ec:	03090913          	addi	s2,s2,48
   111f0:	1b2107a3          	sb	s2,431(sp)
   111f4:	000b8a13          	mv	s4,s7
   111f8:	00100c93          	li	s9,1
   111fc:	1af10b13          	addi	s6,sp,431
   11200:	e21ff06f          	j	11020 <_vfprintf_r+0xadc>
   11204:	000a0b93          	mv	s7,s4
   11208:	00100713          	li	a4,1
   1120c:	fce78ae3          	beq	a5,a4,111e0 <_vfprintf_r+0xc9c>
   11210:	00200713          	li	a4,2
   11214:	06e78c63          	beq	a5,a4,1128c <_vfprintf_r+0xd48>
   11218:	1b010b13          	addi	s6,sp,432
   1121c:	01dc9713          	slli	a4,s9,0x1d
   11220:	00797793          	andi	a5,s2,7
   11224:	00395913          	srli	s2,s2,0x3
   11228:	03078793          	addi	a5,a5,48
   1122c:	01276933          	or	s2,a4,s2
   11230:	003cdc93          	srli	s9,s9,0x3
   11234:	fefb0fa3          	sb	a5,-1(s6)
   11238:	01996733          	or	a4,s2,s9
   1123c:	000b0613          	mv	a2,s6
   11240:	fffb0b13          	addi	s6,s6,-1
   11244:	fc071ce3          	bnez	a4,1121c <_vfprintf_r+0xcd8>
   11248:	001bf693          	andi	a3,s7,1
   1124c:	06068a63          	beqz	a3,112c0 <_vfprintf_r+0xd7c>
   11250:	03000693          	li	a3,48
   11254:	06d78663          	beq	a5,a3,112c0 <_vfprintf_r+0xd7c>
   11258:	ffe60613          	addi	a2,a2,-2
   1125c:	1b010793          	addi	a5,sp,432
   11260:	fedb0fa3          	sb	a3,-1(s6)
   11264:	40c78cb3          	sub	s9,a5,a2
   11268:	000b8a13          	mv	s4,s7
   1126c:	00060b13          	mv	s6,a2
   11270:	db1ff06f          	j	11020 <_vfprintf_r+0xadc>
   11274:	00100713          	li	a4,1
   11278:	00e79463          	bne	a5,a4,11280 <_vfprintf_r+0xd3c>
   1127c:	14d0106f          	j	12bc8 <_vfprintf_r+0x2684>
   11280:	00200713          	li	a4,2
   11284:	000a0b93          	mv	s7,s4
   11288:	f8e798e3          	bne	a5,a4,11218 <_vfprintf_r+0xcd4>
   1128c:	03412683          	lw	a3,52(sp)
   11290:	1b010b13          	addi	s6,sp,432
   11294:	00f97793          	andi	a5,s2,15
   11298:	00f687b3          	add	a5,a3,a5
   1129c:	0007c703          	lbu	a4,0(a5)
   112a0:	00495913          	srli	s2,s2,0x4
   112a4:	01cc9793          	slli	a5,s9,0x1c
   112a8:	0127e933          	or	s2,a5,s2
   112ac:	004cdc93          	srli	s9,s9,0x4
   112b0:	feeb0fa3          	sb	a4,-1(s6)
   112b4:	019967b3          	or	a5,s2,s9
   112b8:	fffb0b13          	addi	s6,s6,-1
   112bc:	fc079ce3          	bnez	a5,11294 <_vfprintf_r+0xd50>
   112c0:	1b010793          	addi	a5,sp,432
   112c4:	41678cb3          	sub	s9,a5,s6
   112c8:	000b8a13          	mv	s4,s7
   112cc:	d55ff06f          	j	11020 <_vfprintf_r+0xadc>
   112d0:	06500693          	li	a3,101
   112d4:	2c96dc63          	bge	a3,s1,115ac <_vfprintf_r+0x1068>
   112d8:	0f012683          	lw	a3,240(sp)
   112dc:	0a010593          	addi	a1,sp,160
   112e0:	0b010513          	addi	a0,sp,176
   112e4:	0ad12823          	sw	a3,176(sp)
   112e8:	0f412683          	lw	a3,244(sp)
   112ec:	05112223          	sw	a7,68(sp)
   112f0:	04f12023          	sw	a5,64(sp)
   112f4:	0ad12a23          	sw	a3,180(sp)
   112f8:	0f812683          	lw	a3,248(sp)
   112fc:	0a012023          	sw	zero,160(sp)
   11300:	0a012223          	sw	zero,164(sp)
   11304:	0ad12c23          	sw	a3,184(sp)
   11308:	0fc12683          	lw	a3,252(sp)
   1130c:	0a012423          	sw	zero,168(sp)
   11310:	0a012623          	sw	zero,172(sp)
   11314:	0ad12e23          	sw	a3,188(sp)
   11318:	77d0f0ef          	jal	ra,21294 <__eqtf2>
   1131c:	04012783          	lw	a5,64(sp)
   11320:	04412883          	lw	a7,68(sp)
   11324:	4a051863          	bnez	a0,117d4 <_vfprintf_r+0x1290>
   11328:	0e812703          	lw	a4,232(sp)
   1132c:	000256b7          	lui	a3,0x25
   11330:	84468693          	addi	a3,a3,-1980 # 24844 <__clzsi2+0xa8>
   11334:	00d8a023          	sw	a3,0(a7)
   11338:	00178793          	addi	a5,a5,1
   1133c:	00100693          	li	a3,1
   11340:	00170713          	addi	a4,a4,1
   11344:	00d8a223          	sw	a3,4(a7)
   11348:	0ef12623          	sw	a5,236(sp)
   1134c:	0ee12423          	sw	a4,232(sp)
   11350:	00700693          	li	a3,7
   11354:	00888893          	addi	a7,a7,8
   11358:	3ae6c6e3          	blt	a3,a4,11f04 <_vfprintf_r+0x19c0>
   1135c:	0cc12703          	lw	a4,204(sp)
   11360:	02012683          	lw	a3,32(sp)
   11364:	72d75c63          	bge	a4,a3,11a9c <_vfprintf_r+0x1558>
   11368:	03012703          	lw	a4,48(sp)
   1136c:	02c12683          	lw	a3,44(sp)
   11370:	00888893          	addi	a7,a7,8
   11374:	fee8ac23          	sw	a4,-8(a7)
   11378:	0e812703          	lw	a4,232(sp)
   1137c:	00d787b3          	add	a5,a5,a3
   11380:	fed8ae23          	sw	a3,-4(a7)
   11384:	00170713          	addi	a4,a4,1
   11388:	0ef12623          	sw	a5,236(sp)
   1138c:	0ee12423          	sw	a4,232(sp)
   11390:	00700693          	li	a3,7
   11394:	0ce6c0e3          	blt	a3,a4,11c54 <_vfprintf_r+0x1710>
   11398:	02012703          	lw	a4,32(sp)
   1139c:	fff70493          	addi	s1,a4,-1
   113a0:	ca905663          	blez	s1,1084c <_vfprintf_r+0x308>
   113a4:	01000693          	li	a3,16
   113a8:	0e812703          	lw	a4,232(sp)
   113ac:	3696dce3          	bge	a3,s1,11f24 <_vfprintf_r+0x19e0>
   113b0:	01000913          	li	s2,16
   113b4:	00700c93          	li	s9,7
   113b8:	00c0006f          	j	113c4 <_vfprintf_r+0xe80>
   113bc:	ff048493          	addi	s1,s1,-16
   113c0:	369952e3          	bge	s2,s1,11f24 <_vfprintf_r+0x19e0>
   113c4:	00812683          	lw	a3,8(sp)
   113c8:	01078793          	addi	a5,a5,16
   113cc:	00170713          	addi	a4,a4,1
   113d0:	00d8a023          	sw	a3,0(a7)
   113d4:	0128a223          	sw	s2,4(a7)
   113d8:	0ef12623          	sw	a5,236(sp)
   113dc:	0ee12423          	sw	a4,232(sp)
   113e0:	00888893          	addi	a7,a7,8
   113e4:	fcecdce3          	bge	s9,a4,113bc <_vfprintf_r+0xe78>
   113e8:	0e410613          	addi	a2,sp,228
   113ec:	000c0593          	mv	a1,s8
   113f0:	000d0513          	mv	a0,s10
   113f4:	7150a0ef          	jal	ra,1c308 <__sprint_r>
   113f8:	18051e63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   113fc:	0ec12783          	lw	a5,236(sp)
   11400:	0e812703          	lw	a4,232(sp)
   11404:	10c10893          	addi	a7,sp,268
   11408:	fb5ff06f          	j	113bc <_vfprintf_r+0xe78>
   1140c:	41598933          	sub	s2,s3,s5
   11410:	c1205263          	blez	s2,10814 <_vfprintf_r+0x2d0>
   11414:	01000613          	li	a2,16
   11418:	0e812683          	lw	a3,232(sp)
   1141c:	07265463          	bge	a2,s2,11484 <_vfprintf_r+0xf40>
   11420:	01000e13          	li	t3,16
   11424:	00700b93          	li	s7,7
   11428:	00c0006f          	j	11434 <_vfprintf_r+0xef0>
   1142c:	ff090913          	addi	s2,s2,-16
   11430:	052e5a63          	bge	t3,s2,11484 <_vfprintf_r+0xf40>
   11434:	00812703          	lw	a4,8(sp)
   11438:	01078793          	addi	a5,a5,16
   1143c:	00168693          	addi	a3,a3,1
   11440:	00e8a023          	sw	a4,0(a7)
   11444:	01c8a223          	sw	t3,4(a7)
   11448:	0ef12623          	sw	a5,236(sp)
   1144c:	0ed12423          	sw	a3,232(sp)
   11450:	00888893          	addi	a7,a7,8
   11454:	fcdbdce3          	bge	s7,a3,1142c <_vfprintf_r+0xee8>
   11458:	0e410613          	addi	a2,sp,228
   1145c:	000c0593          	mv	a1,s8
   11460:	000d0513          	mv	a0,s10
   11464:	6a50a0ef          	jal	ra,1c308 <__sprint_r>
   11468:	12051663          	bnez	a0,11594 <_vfprintf_r+0x1050>
   1146c:	01000e13          	li	t3,16
   11470:	ff090913          	addi	s2,s2,-16
   11474:	0ec12783          	lw	a5,236(sp)
   11478:	0e812683          	lw	a3,232(sp)
   1147c:	10c10893          	addi	a7,sp,268
   11480:	fb2e4ae3          	blt	t3,s2,11434 <_vfprintf_r+0xef0>
   11484:	00812703          	lw	a4,8(sp)
   11488:	012787b3          	add	a5,a5,s2
   1148c:	00168693          	addi	a3,a3,1
   11490:	00e8a023          	sw	a4,0(a7)
   11494:	0128a223          	sw	s2,4(a7)
   11498:	0ef12623          	sw	a5,236(sp)
   1149c:	0ed12423          	sw	a3,232(sp)
   114a0:	00700613          	li	a2,7
   114a4:	00888893          	addi	a7,a7,8
   114a8:	b6d65663          	bge	a2,a3,10814 <_vfprintf_r+0x2d0>
   114ac:	0e410613          	addi	a2,sp,228
   114b0:	000c0593          	mv	a1,s8
   114b4:	000d0513          	mv	a0,s10
   114b8:	6510a0ef          	jal	ra,1c308 <__sprint_r>
   114bc:	0c051c63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   114c0:	0ec12783          	lw	a5,236(sp)
   114c4:	10c10893          	addi	a7,sp,268
   114c8:	b4cff06f          	j	10814 <_vfprintf_r+0x2d0>
   114cc:	01000613          	li	a2,16
   114d0:	0e812683          	lw	a3,232(sp)
   114d4:	07b65263          	bge	a2,s11,11538 <_vfprintf_r+0xff4>
   114d8:	01000b93          	li	s7,16
   114dc:	00700913          	li	s2,7
   114e0:	00c0006f          	j	114ec <_vfprintf_r+0xfa8>
   114e4:	ff0d8d93          	addi	s11,s11,-16
   114e8:	05bbd863          	bge	s7,s11,11538 <_vfprintf_r+0xff4>
   114ec:	00812703          	lw	a4,8(sp)
   114f0:	01078793          	addi	a5,a5,16
   114f4:	00168693          	addi	a3,a3,1
   114f8:	00e8a023          	sw	a4,0(a7)
   114fc:	0178a223          	sw	s7,4(a7)
   11500:	0ef12623          	sw	a5,236(sp)
   11504:	0ed12423          	sw	a3,232(sp)
   11508:	00888893          	addi	a7,a7,8
   1150c:	fcd95ce3          	bge	s2,a3,114e4 <_vfprintf_r+0xfa0>
   11510:	0e410613          	addi	a2,sp,228
   11514:	000c0593          	mv	a1,s8
   11518:	000d0513          	mv	a0,s10
   1151c:	5ed0a0ef          	jal	ra,1c308 <__sprint_r>
   11520:	06051a63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11524:	ff0d8d93          	addi	s11,s11,-16
   11528:	0ec12783          	lw	a5,236(sp)
   1152c:	0e812683          	lw	a3,232(sp)
   11530:	10c10893          	addi	a7,sp,268
   11534:	fbbbcce3          	blt	s7,s11,114ec <_vfprintf_r+0xfa8>
   11538:	00812703          	lw	a4,8(sp)
   1153c:	01b787b3          	add	a5,a5,s11
   11540:	00168693          	addi	a3,a3,1
   11544:	00e8a023          	sw	a4,0(a7)
   11548:	01b8a223          	sw	s11,4(a7)
   1154c:	0ef12623          	sw	a5,236(sp)
   11550:	0ed12423          	sw	a3,232(sp)
   11554:	00700613          	li	a2,7
   11558:	00888893          	addi	a7,a7,8
   1155c:	acd65063          	bge	a2,a3,1081c <_vfprintf_r+0x2d8>
   11560:	0e410613          	addi	a2,sp,228
   11564:	000c0593          	mv	a1,s8
   11568:	000d0513          	mv	a0,s10
   1156c:	59d0a0ef          	jal	ra,1c308 <__sprint_r>
   11570:	02051263          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11574:	0ec12783          	lw	a5,236(sp)
   11578:	10c10893          	addi	a7,sp,268
   1157c:	aa0ff06f          	j	1081c <_vfprintf_r+0x2d8>
   11580:	0e410613          	addi	a2,sp,228
   11584:	000c0593          	mv	a1,s8
   11588:	000d0513          	mv	a0,s10
   1158c:	57d0a0ef          	jal	ra,1c308 <__sprint_r>
   11590:	ae050263          	beqz	a0,10874 <_vfprintf_r+0x330>
   11594:	01012b83          	lw	s7,16(sp)
   11598:	b00b8863          	beqz	s7,108a8 <_vfprintf_r+0x364>
   1159c:	000b8593          	mv	a1,s7
   115a0:	000d0513          	mv	a0,s10
   115a4:	590020ef          	jal	ra,13b34 <_free_r>
   115a8:	b00ff06f          	j	108a8 <_vfprintf_r+0x364>
   115ac:	0e812683          	lw	a3,232(sp)
   115b0:	00178c93          	addi	s9,a5,1
   115b4:	02012783          	lw	a5,32(sp)
   115b8:	00100613          	li	a2,1
   115bc:	0168a023          	sw	s6,0(a7)
   115c0:	00168493          	addi	s1,a3,1
   115c4:	00888913          	addi	s2,a7,8
   115c8:	38f65663          	bge	a2,a5,11954 <_vfprintf_r+0x1410>
   115cc:	00100793          	li	a5,1
   115d0:	00f8a223          	sw	a5,4(a7)
   115d4:	0f912623          	sw	s9,236(sp)
   115d8:	0e912423          	sw	s1,232(sp)
   115dc:	00700793          	li	a5,7
   115e0:	7497ce63          	blt	a5,s1,11d3c <_vfprintf_r+0x17f8>
   115e4:	02c12783          	lw	a5,44(sp)
   115e8:	03012703          	lw	a4,48(sp)
   115ec:	00148493          	addi	s1,s1,1
   115f0:	00fc8cb3          	add	s9,s9,a5
   115f4:	00f92223          	sw	a5,4(s2)
   115f8:	00e92023          	sw	a4,0(s2)
   115fc:	0f912623          	sw	s9,236(sp)
   11600:	0e912423          	sw	s1,232(sp)
   11604:	00700793          	li	a5,7
   11608:	00890913          	addi	s2,s2,8
   1160c:	7497ca63          	blt	a5,s1,11d60 <_vfprintf_r+0x181c>
   11610:	0f012783          	lw	a5,240(sp)
   11614:	00148613          	addi	a2,s1,1
   11618:	0a010593          	addi	a1,sp,160
   1161c:	0af12823          	sw	a5,176(sp)
   11620:	0f412783          	lw	a5,244(sp)
   11624:	0b010513          	addi	a0,sp,176
   11628:	00c12e23          	sw	a2,28(sp)
   1162c:	0af12a23          	sw	a5,180(sp)
   11630:	0f812783          	lw	a5,248(sp)
   11634:	0a012023          	sw	zero,160(sp)
   11638:	0a012223          	sw	zero,164(sp)
   1163c:	0af12c23          	sw	a5,184(sp)
   11640:	0fc12783          	lw	a5,252(sp)
   11644:	0a012423          	sw	zero,168(sp)
   11648:	0a012623          	sw	zero,172(sp)
   1164c:	0af12e23          	sw	a5,188(sp)
   11650:	4450f0ef          	jal	ra,21294 <__eqtf2>
   11654:	01c12603          	lw	a2,28(sp)
   11658:	02012783          	lw	a5,32(sp)
   1165c:	00890893          	addi	a7,s2,8
   11660:	00060693          	mv	a3,a2
   11664:	fff78d93          	addi	s11,a5,-1
   11668:	30050a63          	beqz	a0,1197c <_vfprintf_r+0x1438>
   1166c:	001b0713          	addi	a4,s6,1
   11670:	01bc8cb3          	add	s9,s9,s11
   11674:	00e92023          	sw	a4,0(s2)
   11678:	01b92223          	sw	s11,4(s2)
   1167c:	0f912623          	sw	s9,236(sp)
   11680:	0ec12423          	sw	a2,232(sp)
   11684:	00700793          	li	a5,7
   11688:	50c7cc63          	blt	a5,a2,11ba0 <_vfprintf_r+0x165c>
   1168c:	01090793          	addi	a5,s2,16
   11690:	00248693          	addi	a3,s1,2
   11694:	00088913          	mv	s2,a7
   11698:	00078893          	mv	a7,a5
   1169c:	03812603          	lw	a2,56(sp)
   116a0:	0d410713          	addi	a4,sp,212
   116a4:	00e92023          	sw	a4,0(s2)
   116a8:	019607b3          	add	a5,a2,s9
   116ac:	00c92223          	sw	a2,4(s2)
   116b0:	0ef12623          	sw	a5,236(sp)
   116b4:	0ed12423          	sw	a3,232(sp)
   116b8:	00700713          	li	a4,7
   116bc:	98d75863          	bge	a4,a3,1084c <_vfprintf_r+0x308>
   116c0:	ef4ff06f          	j	10db4 <_vfprintf_r+0x870>
   116c4:	00025737          	lui	a4,0x25
   116c8:	01000613          	li	a2,16
   116cc:	0e812683          	lw	a3,232(sp)
   116d0:	9b470e93          	addi	t4,a4,-1612 # 249b4 <blanks.4483>
   116d4:	09065c63          	bge	a2,a6,1176c <_vfprintf_r+0x1228>
   116d8:	04812023          	sw	s0,64(sp)
   116dc:	04912223          	sw	s1,68(sp)
   116e0:	000d0413          	mv	s0,s10
   116e4:	000c0493          	mv	s1,s8
   116e8:	01000e13          	li	t3,16
   116ec:	00700293          	li	t0,7
   116f0:	00080c13          	mv	s8,a6
   116f4:	000e8d13          	mv	s10,t4
   116f8:	00c0006f          	j	11704 <_vfprintf_r+0x11c0>
   116fc:	ff0c0c13          	addi	s8,s8,-16
   11700:	058e5a63          	bge	t3,s8,11754 <_vfprintf_r+0x1210>
   11704:	01078793          	addi	a5,a5,16
   11708:	00168693          	addi	a3,a3,1
   1170c:	01a8a023          	sw	s10,0(a7)
   11710:	01c8a223          	sw	t3,4(a7)
   11714:	0ef12623          	sw	a5,236(sp)
   11718:	0ed12423          	sw	a3,232(sp)
   1171c:	00888893          	addi	a7,a7,8
   11720:	fcd2dee3          	bge	t0,a3,116fc <_vfprintf_r+0x11b8>
   11724:	0e410613          	addi	a2,sp,228
   11728:	00048593          	mv	a1,s1
   1172c:	00040513          	mv	a0,s0
   11730:	3d90a0ef          	jal	ra,1c308 <__sprint_r>
   11734:	7a051263          	bnez	a0,11ed8 <_vfprintf_r+0x1994>
   11738:	01000e13          	li	t3,16
   1173c:	ff0c0c13          	addi	s8,s8,-16
   11740:	0ec12783          	lw	a5,236(sp)
   11744:	0e812683          	lw	a3,232(sp)
   11748:	10c10893          	addi	a7,sp,268
   1174c:	00700293          	li	t0,7
   11750:	fb8e4ae3          	blt	t3,s8,11704 <_vfprintf_r+0x11c0>
   11754:	000c0813          	mv	a6,s8
   11758:	000d0e93          	mv	t4,s10
   1175c:	00048c13          	mv	s8,s1
   11760:	00040d13          	mv	s10,s0
   11764:	04412483          	lw	s1,68(sp)
   11768:	04012403          	lw	s0,64(sp)
   1176c:	010787b3          	add	a5,a5,a6
   11770:	00168693          	addi	a3,a3,1
   11774:	01d8a023          	sw	t4,0(a7)
   11778:	0108a223          	sw	a6,4(a7)
   1177c:	0ef12623          	sw	a5,236(sp)
   11780:	0ed12423          	sw	a3,232(sp)
   11784:	00700613          	li	a2,7
   11788:	00888893          	addi	a7,a7,8
   1178c:	00d64463          	blt	a2,a3,11794 <_vfprintf_r+0x1250>
   11790:	80cff06f          	j	1079c <_vfprintf_r+0x258>
   11794:	0e410613          	addi	a2,sp,228
   11798:	000c0593          	mv	a1,s8
   1179c:	000d0513          	mv	a0,s10
   117a0:	3690a0ef          	jal	ra,1c308 <__sprint_r>
   117a4:	de0518e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   117a8:	0ec12783          	lw	a5,236(sp)
   117ac:	10c10893          	addi	a7,sp,268
   117b0:	fedfe06f          	j	1079c <_vfprintf_r+0x258>
   117b4:	0e410613          	addi	a2,sp,228
   117b8:	000c0593          	mv	a1,s8
   117bc:	000d0513          	mv	a0,s10
   117c0:	3490a0ef          	jal	ra,1c308 <__sprint_r>
   117c4:	dc0518e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   117c8:	0ec12783          	lw	a5,236(sp)
   117cc:	10c10893          	addi	a7,sp,268
   117d0:	83cff06f          	j	1080c <_vfprintf_r+0x2c8>
   117d4:	0cc12583          	lw	a1,204(sp)
   117d8:	66b05c63          	blez	a1,11e50 <_vfprintf_r+0x190c>
   117dc:	01c12703          	lw	a4,28(sp)
   117e0:	02012683          	lw	a3,32(sp)
   117e4:	00070493          	mv	s1,a4
   117e8:	38e6c263          	blt	a3,a4,11b6c <_vfprintf_r+0x1628>
   117ec:	02905663          	blez	s1,11818 <_vfprintf_r+0x12d4>
   117f0:	0e812683          	lw	a3,232(sp)
   117f4:	009787b3          	add	a5,a5,s1
   117f8:	0168a023          	sw	s6,0(a7)
   117fc:	00168693          	addi	a3,a3,1
   11800:	0098a223          	sw	s1,4(a7)
   11804:	0ef12623          	sw	a5,236(sp)
   11808:	0ed12423          	sw	a3,232(sp)
   1180c:	00700613          	li	a2,7
   11810:	00888893          	addi	a7,a7,8
   11814:	32d642e3          	blt	a2,a3,12338 <_vfprintf_r+0x1df4>
   11818:	fff4c693          	not	a3,s1
   1181c:	01c12703          	lw	a4,28(sp)
   11820:	41f6d693          	srai	a3,a3,0x1f
   11824:	00d4f4b3          	and	s1,s1,a3
   11828:	409704b3          	sub	s1,a4,s1
   1182c:	48904463          	bgtz	s1,11cb4 <_vfprintf_r+0x1770>
   11830:	01c12703          	lw	a4,28(sp)
   11834:	400a7693          	andi	a3,s4,1024
   11838:	00eb0db3          	add	s11,s6,a4
   1183c:	0c0698e3          	bnez	a3,1210c <_vfprintf_r+0x1bc8>
   11840:	0cc12483          	lw	s1,204(sp)
   11844:	02012703          	lw	a4,32(sp)
   11848:	00e4c663          	blt	s1,a4,11854 <_vfprintf_r+0x1310>
   1184c:	001a7693          	andi	a3,s4,1
   11850:	300688e3          	beqz	a3,12360 <_vfprintf_r+0x1e1c>
   11854:	03012683          	lw	a3,48(sp)
   11858:	02c12703          	lw	a4,44(sp)
   1185c:	00700613          	li	a2,7
   11860:	00d8a023          	sw	a3,0(a7)
   11864:	0e812683          	lw	a3,232(sp)
   11868:	00e787b3          	add	a5,a5,a4
   1186c:	00e8a223          	sw	a4,4(a7)
   11870:	00168693          	addi	a3,a3,1
   11874:	0ef12623          	sw	a5,236(sp)
   11878:	0ed12423          	sw	a3,232(sp)
   1187c:	00888893          	addi	a7,a7,8
   11880:	00d65463          	bge	a2,a3,11888 <_vfprintf_r+0x1344>
   11884:	1780106f          	j	129fc <_vfprintf_r+0x24b8>
   11888:	02012683          	lw	a3,32(sp)
   1188c:	00db0733          	add	a4,s6,a3
   11890:	409684b3          	sub	s1,a3,s1
   11894:	41b70733          	sub	a4,a4,s11
   11898:	00048913          	mv	s2,s1
   1189c:	00975463          	bge	a4,s1,118a4 <_vfprintf_r+0x1360>
   118a0:	00070913          	mv	s2,a4
   118a4:	03205863          	blez	s2,118d4 <_vfprintf_r+0x1390>
   118a8:	0e812703          	lw	a4,232(sp)
   118ac:	012787b3          	add	a5,a5,s2
   118b0:	01b8a023          	sw	s11,0(a7)
   118b4:	00170713          	addi	a4,a4,1
   118b8:	0128a223          	sw	s2,4(a7)
   118bc:	0ef12623          	sw	a5,236(sp)
   118c0:	0ee12423          	sw	a4,232(sp)
   118c4:	00700693          	li	a3,7
   118c8:	00888893          	addi	a7,a7,8
   118cc:	00e6d463          	bge	a3,a4,118d4 <_vfprintf_r+0x1390>
   118d0:	1c80106f          	j	12a98 <_vfprintf_r+0x2554>
   118d4:	fff94713          	not	a4,s2
   118d8:	41f75713          	srai	a4,a4,0x1f
   118dc:	00e97733          	and	a4,s2,a4
   118e0:	40e484b3          	sub	s1,s1,a4
   118e4:	00904463          	bgtz	s1,118ec <_vfprintf_r+0x13a8>
   118e8:	f65fe06f          	j	1084c <_vfprintf_r+0x308>
   118ec:	01000693          	li	a3,16
   118f0:	0e812703          	lw	a4,232(sp)
   118f4:	6296d863          	bge	a3,s1,11f24 <_vfprintf_r+0x19e0>
   118f8:	01000913          	li	s2,16
   118fc:	00700c93          	li	s9,7
   11900:	00c0006f          	j	1190c <_vfprintf_r+0x13c8>
   11904:	ff048493          	addi	s1,s1,-16
   11908:	60995e63          	bge	s2,s1,11f24 <_vfprintf_r+0x19e0>
   1190c:	00812683          	lw	a3,8(sp)
   11910:	01078793          	addi	a5,a5,16
   11914:	00170713          	addi	a4,a4,1
   11918:	00d8a023          	sw	a3,0(a7)
   1191c:	0128a223          	sw	s2,4(a7)
   11920:	0ef12623          	sw	a5,236(sp)
   11924:	0ee12423          	sw	a4,232(sp)
   11928:	00888893          	addi	a7,a7,8
   1192c:	fcecdce3          	bge	s9,a4,11904 <_vfprintf_r+0x13c0>
   11930:	0e410613          	addi	a2,sp,228
   11934:	000c0593          	mv	a1,s8
   11938:	000d0513          	mv	a0,s10
   1193c:	1cd0a0ef          	jal	ra,1c308 <__sprint_r>
   11940:	c4051ae3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11944:	0ec12783          	lw	a5,236(sp)
   11948:	0e812703          	lw	a4,232(sp)
   1194c:	10c10893          	addi	a7,sp,268
   11950:	fb5ff06f          	j	11904 <_vfprintf_r+0x13c0>
   11954:	001a7793          	andi	a5,s4,1
   11958:	c6079ae3          	bnez	a5,115cc <_vfprintf_r+0x1088>
   1195c:	00c8a223          	sw	a2,4(a7)
   11960:	0f912623          	sw	s9,236(sp)
   11964:	0e912423          	sw	s1,232(sp)
   11968:	00700793          	li	a5,7
   1196c:	2297ca63          	blt	a5,s1,11ba0 <_vfprintf_r+0x165c>
   11970:	00268693          	addi	a3,a3,2
   11974:	01088893          	addi	a7,a7,16
   11978:	d25ff06f          	j	1169c <_vfprintf_r+0x1158>
   1197c:	d3b050e3          	blez	s11,1169c <_vfprintf_r+0x1158>
   11980:	01000713          	li	a4,16
   11984:	01b74463          	blt	a4,s11,1198c <_vfprintf_r+0x1448>
   11988:	6200106f          	j	12fa8 <_vfprintf_r+0x2a64>
   1198c:	00700b13          	li	s6,7
   11990:	00060493          	mv	s1,a2
   11994:	0100006f          	j	119a4 <_vfprintf_r+0x1460>
   11998:	ff0d8d93          	addi	s11,s11,-16
   1199c:	1db75e63          	bge	a4,s11,11b78 <_vfprintf_r+0x1634>
   119a0:	00148493          	addi	s1,s1,1
   119a4:	00812783          	lw	a5,8(sp)
   119a8:	010c8c93          	addi	s9,s9,16
   119ac:	00e92223          	sw	a4,4(s2)
   119b0:	00f92023          	sw	a5,0(s2)
   119b4:	0f912623          	sw	s9,236(sp)
   119b8:	0e912423          	sw	s1,232(sp)
   119bc:	00890913          	addi	s2,s2,8
   119c0:	fc9b5ce3          	bge	s6,s1,11998 <_vfprintf_r+0x1454>
   119c4:	0e410613          	addi	a2,sp,228
   119c8:	000c0593          	mv	a1,s8
   119cc:	000d0513          	mv	a0,s10
   119d0:	1390a0ef          	jal	ra,1c308 <__sprint_r>
   119d4:	bc0510e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   119d8:	0ec12c83          	lw	s9,236(sp)
   119dc:	0e812483          	lw	s1,232(sp)
   119e0:	10c10913          	addi	s2,sp,268
   119e4:	01000713          	li	a4,16
   119e8:	fb1ff06f          	j	11998 <_vfprintf_r+0x1454>
   119ec:	01412683          	lw	a3,20(sp)
   119f0:	010a7793          	andi	a5,s4,16
   119f4:	00468713          	addi	a4,a3,4
   119f8:	16079263          	bnez	a5,11b5c <_vfprintf_r+0x1618>
   119fc:	040a7793          	andi	a5,s4,64
   11a00:	68078463          	beqz	a5,12088 <_vfprintf_r+0x1b44>
   11a04:	01412783          	lw	a5,20(sp)
   11a08:	00000c93          	li	s9,0
   11a0c:	00e12a23          	sw	a4,20(sp)
   11a10:	0007d903          	lhu	s2,0(a5)
   11a14:	f1cff06f          	j	11130 <_vfprintf_r+0xbec>
   11a18:	01412683          	lw	a3,20(sp)
   11a1c:	010bf793          	andi	a5,s7,16
   11a20:	00468713          	addi	a4,a3,4
   11a24:	0c079e63          	bnez	a5,11b00 <_vfprintf_r+0x15bc>
   11a28:	040bf793          	andi	a5,s7,64
   11a2c:	60078e63          	beqz	a5,12048 <_vfprintf_r+0x1b04>
   11a30:	01412783          	lw	a5,20(sp)
   11a34:	00000c93          	li	s9,0
   11a38:	00e12a23          	sw	a4,20(sp)
   11a3c:	0007d903          	lhu	s2,0(a5)
   11a40:	00100793          	li	a5,1
   11a44:	db0ff06f          	j	10ff4 <_vfprintf_r+0xab0>
   11a48:	01412683          	lw	a3,20(sp)
   11a4c:	010a7793          	andi	a5,s4,16
   11a50:	00468713          	addi	a4,a3,4
   11a54:	0e079a63          	bnez	a5,11b48 <_vfprintf_r+0x1604>
   11a58:	040a7793          	andi	a5,s4,64
   11a5c:	60078663          	beqz	a5,12068 <_vfprintf_r+0x1b24>
   11a60:	01412783          	lw	a5,20(sp)
   11a64:	00e12a23          	sw	a4,20(sp)
   11a68:	00079903          	lh	s2,0(a5)
   11a6c:	41f95c93          	srai	s9,s2,0x1f
   11a70:	000c8793          	mv	a5,s9
   11a74:	f207de63          	bgez	a5,111b0 <_vfprintf_r+0xc6c>
   11a78:	012037b3          	snez	a5,s2
   11a7c:	41900cb3          	neg	s9,s9
   11a80:	40fc8cb3          	sub	s9,s9,a5
   11a84:	02d00793          	li	a5,45
   11a88:	0cf103a3          	sb	a5,199(sp)
   11a8c:	41200933          	neg	s2,s2
   11a90:	000a0b93          	mv	s7,s4
   11a94:	00100793          	li	a5,1
   11a98:	d60ff06f          	j	10ff8 <_vfprintf_r+0xab4>
   11a9c:	001a7713          	andi	a4,s4,1
   11aa0:	00071463          	bnez	a4,11aa8 <_vfprintf_r+0x1564>
   11aa4:	da9fe06f          	j	1084c <_vfprintf_r+0x308>
   11aa8:	8c1ff06f          	j	11368 <_vfprintf_r+0xe24>
   11aac:	000c8893          	mv	a7,s9
   11ab0:	ed4ff06f          	j	11184 <_vfprintf_r+0xc40>
   11ab4:	03000793          	li	a5,48
   11ab8:	1af107a3          	sb	a5,431(sp)
   11abc:	1af10b13          	addi	s6,sp,431
   11ac0:	d60ff06f          	j	11020 <_vfprintf_r+0xadc>
   11ac4:	03c12783          	lw	a5,60(sp)
   11ac8:	00044483          	lbu	s1,0(s0)
   11acc:	00079463          	bnez	a5,11ad4 <_vfprintf_r+0x1590>
   11ad0:	c2dfe06f          	j	106fc <_vfprintf_r+0x1b8>
   11ad4:	0007c783          	lbu	a5,0(a5)
   11ad8:	00079463          	bnez	a5,11ae0 <_vfprintf_r+0x159c>
   11adc:	c21fe06f          	j	106fc <_vfprintf_r+0x1b8>
   11ae0:	400a6a13          	ori	s4,s4,1024
   11ae4:	c19fe06f          	j	106fc <_vfprintf_r+0x1b8>
   11ae8:	00c12683          	lw	a3,12(sp)
   11aec:	00040b13          	mv	s6,s0
   11af0:	41f6d793          	srai	a5,a3,0x1f
   11af4:	00d72023          	sw	a3,0(a4)
   11af8:	00f72223          	sw	a5,4(a4)
   11afc:	d99fe06f          	j	10894 <_vfprintf_r+0x350>
   11b00:	0006a903          	lw	s2,0(a3)
   11b04:	00000c93          	li	s9,0
   11b08:	00e12a23          	sw	a4,20(sp)
   11b0c:	00100793          	li	a5,1
   11b10:	ce4ff06f          	j	10ff4 <_vfprintf_r+0xab0>
   11b14:	01412703          	lw	a4,20(sp)
   11b18:	00072783          	lw	a5,0(a4)
   11b1c:	00470713          	addi	a4,a4,4
   11b20:	00e12a23          	sw	a4,20(sp)
   11b24:	0007a583          	lw	a1,0(a5)
   11b28:	0047a603          	lw	a2,4(a5)
   11b2c:	0087a683          	lw	a3,8(a5)
   11b30:	00c7a783          	lw	a5,12(a5)
   11b34:	0eb12823          	sw	a1,240(sp)
   11b38:	0ec12a23          	sw	a2,244(sp)
   11b3c:	0ed12c23          	sw	a3,248(sp)
   11b40:	0ef12e23          	sw	a5,252(sp)
   11b44:	ed5fe06f          	j	10a18 <_vfprintf_r+0x4d4>
   11b48:	0006a903          	lw	s2,0(a3)
   11b4c:	00e12a23          	sw	a4,20(sp)
   11b50:	41f95c93          	srai	s9,s2,0x1f
   11b54:	000c8793          	mv	a5,s9
   11b58:	e54ff06f          	j	111ac <_vfprintf_r+0xc68>
   11b5c:	0006a903          	lw	s2,0(a3)
   11b60:	00000c93          	li	s9,0
   11b64:	00e12a23          	sw	a4,20(sp)
   11b68:	dc8ff06f          	j	11130 <_vfprintf_r+0xbec>
   11b6c:	00068493          	mv	s1,a3
   11b70:	c89040e3          	bgtz	s1,117f0 <_vfprintf_r+0x12ac>
   11b74:	ca5ff06f          	j	11818 <_vfprintf_r+0x12d4>
   11b78:	00148693          	addi	a3,s1,1
   11b7c:	00890713          	addi	a4,s2,8
   11b80:	00812783          	lw	a5,8(sp)
   11b84:	01bc8cb3          	add	s9,s9,s11
   11b88:	01b92223          	sw	s11,4(s2)
   11b8c:	00f92023          	sw	a5,0(s2)
   11b90:	0f912623          	sw	s9,236(sp)
   11b94:	0ed12423          	sw	a3,232(sp)
   11b98:	00700793          	li	a5,7
   11b9c:	74d7de63          	bge	a5,a3,122f8 <_vfprintf_r+0x1db4>
   11ba0:	0e410613          	addi	a2,sp,228
   11ba4:	000c0593          	mv	a1,s8
   11ba8:	000d0513          	mv	a0,s10
   11bac:	75c0a0ef          	jal	ra,1c308 <__sprint_r>
   11bb0:	9e0512e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11bb4:	0e812683          	lw	a3,232(sp)
   11bb8:	0ec12c83          	lw	s9,236(sp)
   11bbc:	11410893          	addi	a7,sp,276
   11bc0:	00168693          	addi	a3,a3,1
   11bc4:	10c10913          	addi	s2,sp,268
   11bc8:	ad5ff06f          	j	1169c <_vfprintf_r+0x1158>
   11bcc:	000c8893          	mv	a7,s9
   11bd0:	000a0b93          	mv	s7,s4
   11bd4:	d70ff06f          	j	11144 <_vfprintf_r+0xc00>
   11bd8:	000257b7          	lui	a5,0x25
   11bdc:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   11be0:	000c8893          	mv	a7,s9
   11be4:	02f12a23          	sw	a5,52(sp)
   11be8:	020a7793          	andi	a5,s4,32
   11bec:	12078863          	beqz	a5,11d1c <_vfprintf_r+0x17d8>
   11bf0:	01412783          	lw	a5,20(sp)
   11bf4:	00778b13          	addi	s6,a5,7
   11bf8:	ff8b7b13          	andi	s6,s6,-8
   11bfc:	000b2903          	lw	s2,0(s6)
   11c00:	004b2c83          	lw	s9,4(s6)
   11c04:	008b0793          	addi	a5,s6,8
   11c08:	00f12a23          	sw	a5,20(sp)
   11c0c:	001a7793          	andi	a5,s4,1
   11c10:	00078e63          	beqz	a5,11c2c <_vfprintf_r+0x16e8>
   11c14:	019967b3          	or	a5,s2,s9
   11c18:	00078a63          	beqz	a5,11c2c <_vfprintf_r+0x16e8>
   11c1c:	03000793          	li	a5,48
   11c20:	0cf10423          	sb	a5,200(sp)
   11c24:	0c9104a3          	sb	s1,201(sp)
   11c28:	002a6a13          	ori	s4,s4,2
   11c2c:	bffa7b93          	andi	s7,s4,-1025
   11c30:	00200793          	li	a5,2
   11c34:	bc0ff06f          	j	10ff4 <_vfprintf_r+0xab0>
   11c38:	000257b7          	lui	a5,0x25
   11c3c:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   11c40:	000c8893          	mv	a7,s9
   11c44:	02f12a23          	sw	a5,52(sp)
   11c48:	fa1ff06f          	j	11be8 <_vfprintf_r+0x16a4>
   11c4c:	000c8893          	mv	a7,s9
   11c50:	cbcff06f          	j	1110c <_vfprintf_r+0xbc8>
   11c54:	0e410613          	addi	a2,sp,228
   11c58:	000c0593          	mv	a1,s8
   11c5c:	000d0513          	mv	a0,s10
   11c60:	6a80a0ef          	jal	ra,1c308 <__sprint_r>
   11c64:	920518e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11c68:	0ec12783          	lw	a5,236(sp)
   11c6c:	10c10893          	addi	a7,sp,268
   11c70:	f28ff06f          	j	11398 <_vfprintf_r+0xe54>
   11c74:	00144483          	lbu	s1,1(s0)
   11c78:	020a6a13          	ori	s4,s4,32
   11c7c:	00140413          	addi	s0,s0,1
   11c80:	a7dfe06f          	j	106fc <_vfprintf_r+0x1b8>
   11c84:	00144483          	lbu	s1,1(s0)
   11c88:	200a6a13          	ori	s4,s4,512
   11c8c:	00140413          	addi	s0,s0,1
   11c90:	a6dfe06f          	j	106fc <_vfprintf_r+0x1b8>
   11c94:	00600793          	li	a5,6
   11c98:	000d8c93          	mv	s9,s11
   11c9c:	6bb7ee63          	bltu	a5,s11,12358 <_vfprintf_r+0x1e14>
   11ca0:	00025737          	lui	a4,0x25
   11ca4:	000c8a93          	mv	s5,s9
   11ca8:	01212a23          	sw	s2,20(sp)
   11cac:	83c70b13          	addi	s6,a4,-1988 # 2483c <__clzsi2+0xa0>
   11cb0:	ab9fe06f          	j	10768 <_vfprintf_r+0x224>
   11cb4:	01000613          	li	a2,16
   11cb8:	0e812683          	lw	a3,232(sp)
   11cbc:	40965463          	bge	a2,s1,120c4 <_vfprintf_r+0x1b80>
   11cc0:	01000c93          	li	s9,16
   11cc4:	00700d93          	li	s11,7
   11cc8:	00c0006f          	j	11cd4 <_vfprintf_r+0x1790>
   11ccc:	ff048493          	addi	s1,s1,-16
   11cd0:	3e9cda63          	bge	s9,s1,120c4 <_vfprintf_r+0x1b80>
   11cd4:	00812703          	lw	a4,8(sp)
   11cd8:	01078793          	addi	a5,a5,16
   11cdc:	00168693          	addi	a3,a3,1
   11ce0:	00e8a023          	sw	a4,0(a7)
   11ce4:	0198a223          	sw	s9,4(a7)
   11ce8:	0ef12623          	sw	a5,236(sp)
   11cec:	0ed12423          	sw	a3,232(sp)
   11cf0:	00888893          	addi	a7,a7,8
   11cf4:	fcdddce3          	bge	s11,a3,11ccc <_vfprintf_r+0x1788>
   11cf8:	0e410613          	addi	a2,sp,228
   11cfc:	000c0593          	mv	a1,s8
   11d00:	000d0513          	mv	a0,s10
   11d04:	6040a0ef          	jal	ra,1c308 <__sprint_r>
   11d08:	880516e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11d0c:	0ec12783          	lw	a5,236(sp)
   11d10:	0e812683          	lw	a3,232(sp)
   11d14:	10c10893          	addi	a7,sp,268
   11d18:	fb5ff06f          	j	11ccc <_vfprintf_r+0x1788>
   11d1c:	01412683          	lw	a3,20(sp)
   11d20:	010a7793          	andi	a5,s4,16
   11d24:	00468713          	addi	a4,a3,4
   11d28:	1c078063          	beqz	a5,11ee8 <_vfprintf_r+0x19a4>
   11d2c:	0006a903          	lw	s2,0(a3)
   11d30:	00000c93          	li	s9,0
   11d34:	00e12a23          	sw	a4,20(sp)
   11d38:	ed5ff06f          	j	11c0c <_vfprintf_r+0x16c8>
   11d3c:	0e410613          	addi	a2,sp,228
   11d40:	000c0593          	mv	a1,s8
   11d44:	000d0513          	mv	a0,s10
   11d48:	5c00a0ef          	jal	ra,1c308 <__sprint_r>
   11d4c:	840514e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11d50:	0ec12c83          	lw	s9,236(sp)
   11d54:	0e812483          	lw	s1,232(sp)
   11d58:	10c10913          	addi	s2,sp,268
   11d5c:	889ff06f          	j	115e4 <_vfprintf_r+0x10a0>
   11d60:	0e410613          	addi	a2,sp,228
   11d64:	000c0593          	mv	a1,s8
   11d68:	000d0513          	mv	a0,s10
   11d6c:	59c0a0ef          	jal	ra,1c308 <__sprint_r>
   11d70:	820512e3          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11d74:	0ec12c83          	lw	s9,236(sp)
   11d78:	0e812483          	lw	s1,232(sp)
   11d7c:	10c10913          	addi	s2,sp,268
   11d80:	891ff06f          	j	11610 <_vfprintf_r+0x10cc>
   11d84:	1b010b13          	addi	s6,sp,432
   11d88:	00000793          	li	a5,0
   11d8c:	00812823          	sw	s0,16(sp)
   11d90:	00912e23          	sw	s1,28(sp)
   11d94:	000b0413          	mv	s0,s6
   11d98:	03312223          	sw	s3,36(sp)
   11d9c:	000c0b13          	mv	s6,s8
   11da0:	00090493          	mv	s1,s2
   11da4:	000c8993          	mv	s3,s9
   11da8:	400bfa13          	andi	s4,s7,1024
   11dac:	03c12c83          	lw	s9,60(sp)
   11db0:	0ff00a93          	li	s5,255
   11db4:	00088c13          	mv	s8,a7
   11db8:	00078913          	mv	s2,a5
   11dbc:	0240006f          	j	11de0 <_vfprintf_r+0x189c>
   11dc0:	00a00613          	li	a2,10
   11dc4:	00000693          	li	a3,0
   11dc8:	00048513          	mv	a0,s1
   11dcc:	00098593          	mv	a1,s3
   11dd0:	3a50d0ef          	jal	ra,1f974 <__udivdi3>
   11dd4:	2a098ae3          	beqz	s3,12888 <_vfprintf_r+0x2344>
   11dd8:	00050493          	mv	s1,a0
   11ddc:	00058993          	mv	s3,a1
   11de0:	00a00613          	li	a2,10
   11de4:	00000693          	li	a3,0
   11de8:	00048513          	mv	a0,s1
   11dec:	00098593          	mv	a1,s3
   11df0:	15c0e0ef          	jal	ra,1ff4c <__umoddi3>
   11df4:	03050513          	addi	a0,a0,48
   11df8:	fea40fa3          	sb	a0,-1(s0)
   11dfc:	00190913          	addi	s2,s2,1
   11e00:	fff40413          	addi	s0,s0,-1
   11e04:	fa0a0ee3          	beqz	s4,11dc0 <_vfprintf_r+0x187c>
   11e08:	000cc683          	lbu	a3,0(s9)
   11e0c:	fad91ae3          	bne	s2,a3,11dc0 <_vfprintf_r+0x187c>
   11e10:	fb5908e3          	beq	s2,s5,11dc0 <_vfprintf_r+0x187c>
   11e14:	4a099263          	bnez	s3,122b8 <_vfprintf_r+0x1d74>
   11e18:	00900793          	li	a5,9
   11e1c:	4897ee63          	bltu	a5,s1,122b8 <_vfprintf_r+0x1d74>
   11e20:	000c0893          	mv	a7,s8
   11e24:	1b010793          	addi	a5,sp,432
   11e28:	000b0c13          	mv	s8,s6
   11e2c:	00040b13          	mv	s6,s0
   11e30:	03912e23          	sw	s9,60(sp)
   11e34:	01c12483          	lw	s1,28(sp)
   11e38:	02412983          	lw	s3,36(sp)
   11e3c:	01012403          	lw	s0,16(sp)
   11e40:	03212023          	sw	s2,32(sp)
   11e44:	41678cb3          	sub	s9,a5,s6
   11e48:	000b8a13          	mv	s4,s7
   11e4c:	9d4ff06f          	j	11020 <_vfprintf_r+0xadc>
   11e50:	0e812683          	lw	a3,232(sp)
   11e54:	00025637          	lui	a2,0x25
   11e58:	84460613          	addi	a2,a2,-1980 # 24844 <__clzsi2+0xa8>
   11e5c:	00c8a023          	sw	a2,0(a7)
   11e60:	00178793          	addi	a5,a5,1
   11e64:	00100613          	li	a2,1
   11e68:	00168693          	addi	a3,a3,1
   11e6c:	00c8a223          	sw	a2,4(a7)
   11e70:	0ef12623          	sw	a5,236(sp)
   11e74:	0ed12423          	sw	a3,232(sp)
   11e78:	00700613          	li	a2,7
   11e7c:	00888893          	addi	a7,a7,8
   11e80:	48d64463          	blt	a2,a3,12308 <_vfprintf_r+0x1dc4>
   11e84:	00058463          	beqz	a1,11e8c <_vfprintf_r+0x1948>
   11e88:	eadfe06f          	j	10d34 <_vfprintf_r+0x7f0>
   11e8c:	02012703          	lw	a4,32(sp)
   11e90:	001a7693          	andi	a3,s4,1
   11e94:	00e6e6b3          	or	a3,a3,a4
   11e98:	00069463          	bnez	a3,11ea0 <_vfprintf_r+0x195c>
   11e9c:	9b1fe06f          	j	1084c <_vfprintf_r+0x308>
   11ea0:	03012683          	lw	a3,48(sp)
   11ea4:	02c12703          	lw	a4,44(sp)
   11ea8:	00700613          	li	a2,7
   11eac:	00d8a023          	sw	a3,0(a7)
   11eb0:	0e812683          	lw	a3,232(sp)
   11eb4:	00f707b3          	add	a5,a4,a5
   11eb8:	00e8a223          	sw	a4,4(a7)
   11ebc:	00168693          	addi	a3,a3,1
   11ec0:	0ef12623          	sw	a5,236(sp)
   11ec4:	0ed12423          	sw	a3,232(sp)
   11ec8:	00d65463          	bge	a2,a3,11ed0 <_vfprintf_r+0x198c>
   11ecc:	e99fe06f          	j	10d64 <_vfprintf_r+0x820>
   11ed0:	00888893          	addi	a7,a7,8
   11ed4:	ebdfe06f          	j	10d90 <_vfprintf_r+0x84c>
   11ed8:	01012b83          	lw	s7,16(sp)
   11edc:	00040d13          	mv	s10,s0
   11ee0:	00048c13          	mv	s8,s1
   11ee4:	eb4ff06f          	j	11598 <_vfprintf_r+0x1054>
   11ee8:	040a7793          	andi	a5,s4,64
   11eec:	14078063          	beqz	a5,1202c <_vfprintf_r+0x1ae8>
   11ef0:	01412783          	lw	a5,20(sp)
   11ef4:	00000c93          	li	s9,0
   11ef8:	00e12a23          	sw	a4,20(sp)
   11efc:	0007d903          	lhu	s2,0(a5)
   11f00:	d0dff06f          	j	11c0c <_vfprintf_r+0x16c8>
   11f04:	0e410613          	addi	a2,sp,228
   11f08:	000c0593          	mv	a1,s8
   11f0c:	000d0513          	mv	a0,s10
   11f10:	3f80a0ef          	jal	ra,1c308 <__sprint_r>
   11f14:	e8051063          	bnez	a0,11594 <_vfprintf_r+0x1050>
   11f18:	0ec12783          	lw	a5,236(sp)
   11f1c:	10c10893          	addi	a7,sp,268
   11f20:	c3cff06f          	j	1135c <_vfprintf_r+0xe18>
   11f24:	00812683          	lw	a3,8(sp)
   11f28:	009787b3          	add	a5,a5,s1
   11f2c:	0098a223          	sw	s1,4(a7)
   11f30:	00d8a023          	sw	a3,0(a7)
   11f34:	00170713          	addi	a4,a4,1
   11f38:	0ef12623          	sw	a5,236(sp)
   11f3c:	0ee12423          	sw	a4,232(sp)
   11f40:	00700693          	li	a3,7
   11f44:	00e6c463          	blt	a3,a4,11f4c <_vfprintf_r+0x1a08>
   11f48:	901fe06f          	j	10848 <_vfprintf_r+0x304>
   11f4c:	e69fe06f          	j	10db4 <_vfprintf_r+0x870>
   11f50:	0f012783          	lw	a5,240(sp)
   11f54:	0a010593          	addi	a1,sp,160
   11f58:	0b010513          	addi	a0,sp,176
   11f5c:	0af12823          	sw	a5,176(sp)
   11f60:	0f412783          	lw	a5,244(sp)
   11f64:	0a012023          	sw	zero,160(sp)
   11f68:	0a012223          	sw	zero,164(sp)
   11f6c:	0af12a23          	sw	a5,180(sp)
   11f70:	0f812783          	lw	a5,248(sp)
   11f74:	0a012423          	sw	zero,168(sp)
   11f78:	0a012623          	sw	zero,172(sp)
   11f7c:	0af12c23          	sw	a5,184(sp)
   11f80:	0fc12783          	lw	a5,252(sp)
   11f84:	0af12e23          	sw	a5,188(sp)
   11f88:	51c0f0ef          	jal	ra,214a4 <__letf2>
   11f8c:	01012883          	lw	a7,16(sp)
   11f90:	260540e3          	bltz	a0,129f0 <_vfprintf_r+0x24ac>
   11f94:	0c714783          	lbu	a5,199(sp)
   11f98:	04700713          	li	a4,71
   11f9c:	38975863          	bge	a4,s1,1232c <_vfprintf_r+0x1de8>
   11fa0:	00025737          	lui	a4,0x25
   11fa4:	80870b13          	addi	s6,a4,-2040 # 24808 <__clzsi2+0x6c>
   11fa8:	00012823          	sw	zero,16(sp)
   11fac:	02012423          	sw	zero,40(sp)
   11fb0:	02012223          	sw	zero,36(sp)
   11fb4:	00012e23          	sw	zero,28(sp)
   11fb8:	f7fa7a13          	andi	s4,s4,-129
   11fbc:	00300a93          	li	s5,3
   11fc0:	00300c93          	li	s9,3
   11fc4:	00000d93          	li	s11,0
   11fc8:	00078463          	beqz	a5,11fd0 <_vfprintf_r+0x1a8c>
   11fcc:	f75fe06f          	j	10f40 <_vfprintf_r+0x9fc>
   11fd0:	facfe06f          	j	1077c <_vfprintf_r+0x238>
   11fd4:	00c12783          	lw	a5,12(sp)
   11fd8:	00040b13          	mv	s6,s0
   11fdc:	00f72023          	sw	a5,0(a4)
   11fe0:	8b5fe06f          	j	10894 <_vfprintf_r+0x350>
   11fe4:	000b0513          	mv	a0,s6
   11fe8:	05912023          	sw	s9,64(sp)
   11fec:	cccfe0ef          	jal	ra,104b8 <strlen>
   11ff0:	0c714783          	lbu	a5,199(sp)
   11ff4:	fff54a93          	not	s5,a0
   11ff8:	41fada93          	srai	s5,s5,0x1f
   11ffc:	01212a23          	sw	s2,20(sp)
   12000:	00012823          	sw	zero,16(sp)
   12004:	02012423          	sw	zero,40(sp)
   12008:	02012223          	sw	zero,36(sp)
   1200c:	00012e23          	sw	zero,28(sp)
   12010:	04012883          	lw	a7,64(sp)
   12014:	00050c93          	mv	s9,a0
   12018:	01557ab3          	and	s5,a0,s5
   1201c:	00000d93          	li	s11,0
   12020:	00078463          	beqz	a5,12028 <_vfprintf_r+0x1ae4>
   12024:	f1dfe06f          	j	10f40 <_vfprintf_r+0x9fc>
   12028:	f54fe06f          	j	1077c <_vfprintf_r+0x238>
   1202c:	200a7793          	andi	a5,s4,512
   12030:	3a078263          	beqz	a5,123d4 <_vfprintf_r+0x1e90>
   12034:	01412783          	lw	a5,20(sp)
   12038:	00000c93          	li	s9,0
   1203c:	00e12a23          	sw	a4,20(sp)
   12040:	0007c903          	lbu	s2,0(a5)
   12044:	bc9ff06f          	j	11c0c <_vfprintf_r+0x16c8>
   12048:	200bf793          	andi	a5,s7,512
   1204c:	36078863          	beqz	a5,123bc <_vfprintf_r+0x1e78>
   12050:	01412783          	lw	a5,20(sp)
   12054:	00000c93          	li	s9,0
   12058:	00e12a23          	sw	a4,20(sp)
   1205c:	0007c903          	lbu	s2,0(a5)
   12060:	00100793          	li	a5,1
   12064:	f91fe06f          	j	10ff4 <_vfprintf_r+0xab0>
   12068:	200a7793          	andi	a5,s4,512
   1206c:	32078c63          	beqz	a5,123a4 <_vfprintf_r+0x1e60>
   12070:	01412783          	lw	a5,20(sp)
   12074:	00e12a23          	sw	a4,20(sp)
   12078:	00078903          	lb	s2,0(a5)
   1207c:	41f95c93          	srai	s9,s2,0x1f
   12080:	000c8793          	mv	a5,s9
   12084:	928ff06f          	j	111ac <_vfprintf_r+0xc68>
   12088:	200a7793          	andi	a5,s4,512
   1208c:	30078263          	beqz	a5,12390 <_vfprintf_r+0x1e4c>
   12090:	01412783          	lw	a5,20(sp)
   12094:	00000c93          	li	s9,0
   12098:	00e12a23          	sw	a4,20(sp)
   1209c:	0007c903          	lbu	s2,0(a5)
   120a0:	890ff06f          	j	11130 <_vfprintf_r+0xbec>
   120a4:	0fc12783          	lw	a5,252(sp)
   120a8:	3407ca63          	bltz	a5,123fc <_vfprintf_r+0x1eb8>
   120ac:	0c714783          	lbu	a5,199(sp)
   120b0:	04700713          	li	a4,71
   120b4:	1c975ce3          	bge	a4,s1,12a8c <_vfprintf_r+0x2548>
   120b8:	00025737          	lui	a4,0x25
   120bc:	81070b13          	addi	s6,a4,-2032 # 24810 <__clzsi2+0x74>
   120c0:	ee9ff06f          	j	11fa8 <_vfprintf_r+0x1a64>
   120c4:	00812703          	lw	a4,8(sp)
   120c8:	009787b3          	add	a5,a5,s1
   120cc:	00168693          	addi	a3,a3,1
   120d0:	00e8a023          	sw	a4,0(a7)
   120d4:	0098a223          	sw	s1,4(a7)
   120d8:	0ef12623          	sw	a5,236(sp)
   120dc:	0ed12423          	sw	a3,232(sp)
   120e0:	00700613          	li	a2,7
   120e4:	00888893          	addi	a7,a7,8
   120e8:	f4d65463          	bge	a2,a3,11830 <_vfprintf_r+0x12ec>
   120ec:	0e410613          	addi	a2,sp,228
   120f0:	000c0593          	mv	a1,s8
   120f4:	000d0513          	mv	a0,s10
   120f8:	2100a0ef          	jal	ra,1c308 <__sprint_r>
   120fc:	c8051c63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   12100:	0ec12783          	lw	a5,236(sp)
   12104:	10c10893          	addi	a7,sp,268
   12108:	f28ff06f          	j	11830 <_vfprintf_r+0x12ec>
   1210c:	02012703          	lw	a4,32(sp)
   12110:	02412c83          	lw	s9,36(sp)
   12114:	01412e23          	sw	s4,28(sp)
   12118:	04812023          	sw	s0,64(sp)
   1211c:	05312223          	sw	s3,68(sp)
   12120:	03512223          	sw	s5,36(sp)
   12124:	02812983          	lw	s3,40(sp)
   12128:	03612423          	sw	s6,40(sp)
   1212c:	00eb0bb3          	add	s7,s6,a4
   12130:	03c12403          	lw	s0,60(sp)
   12134:	04812a03          	lw	s4,72(sp)
   12138:	04c12a83          	lw	s5,76(sp)
   1213c:	00700493          	li	s1,7
   12140:	01000913          	li	s2,16
   12144:	000c0b13          	mv	s6,s8
   12148:	080c8863          	beqz	s9,121d8 <_vfprintf_r+0x1c94>
   1214c:	08099863          	bnez	s3,121dc <_vfprintf_r+0x1c98>
   12150:	fff40413          	addi	s0,s0,-1
   12154:	fffc8c93          	addi	s9,s9,-1
   12158:	0e812703          	lw	a4,232(sp)
   1215c:	014787b3          	add	a5,a5,s4
   12160:	0158a023          	sw	s5,0(a7)
   12164:	00170713          	addi	a4,a4,1
   12168:	0148a223          	sw	s4,4(a7)
   1216c:	0ef12623          	sw	a5,236(sp)
   12170:	0ee12423          	sw	a4,232(sp)
   12174:	00888893          	addi	a7,a7,8
   12178:	0ee4ce63          	blt	s1,a4,12274 <_vfprintf_r+0x1d30>
   1217c:	00044683          	lbu	a3,0(s0)
   12180:	41bb8633          	sub	a2,s7,s11
   12184:	00068c13          	mv	s8,a3
   12188:	00d65463          	bge	a2,a3,12190 <_vfprintf_r+0x1c4c>
   1218c:	00060c13          	mv	s8,a2
   12190:	03805663          	blez	s8,121bc <_vfprintf_r+0x1c78>
   12194:	0e812683          	lw	a3,232(sp)
   12198:	018787b3          	add	a5,a5,s8
   1219c:	01b8a023          	sw	s11,0(a7)
   121a0:	00168693          	addi	a3,a3,1
   121a4:	0188a223          	sw	s8,4(a7)
   121a8:	0ef12623          	sw	a5,236(sp)
   121ac:	0ed12423          	sw	a3,232(sp)
   121b0:	0ed4c263          	blt	s1,a3,12294 <_vfprintf_r+0x1d50>
   121b4:	00044683          	lbu	a3,0(s0)
   121b8:	00888893          	addi	a7,a7,8
   121bc:	fffc4613          	not	a2,s8
   121c0:	41f65613          	srai	a2,a2,0x1f
   121c4:	00cc7733          	and	a4,s8,a2
   121c8:	40e68c33          	sub	s8,a3,a4
   121cc:	01804c63          	bgtz	s8,121e4 <_vfprintf_r+0x1ca0>
   121d0:	00dd8db3          	add	s11,s11,a3
   121d4:	f60c9ce3          	bnez	s9,1214c <_vfprintf_r+0x1c08>
   121d8:	5e098a63          	beqz	s3,127cc <_vfprintf_r+0x2288>
   121dc:	fff98993          	addi	s3,s3,-1
   121e0:	f79ff06f          	j	12158 <_vfprintf_r+0x1c14>
   121e4:	0e812683          	lw	a3,232(sp)
   121e8:	01894863          	blt	s2,s8,121f8 <_vfprintf_r+0x1cb4>
   121ec:	0580006f          	j	12244 <_vfprintf_r+0x1d00>
   121f0:	ff0c0c13          	addi	s8,s8,-16
   121f4:	05895863          	bge	s2,s8,12244 <_vfprintf_r+0x1d00>
   121f8:	00812703          	lw	a4,8(sp)
   121fc:	01078793          	addi	a5,a5,16
   12200:	00168693          	addi	a3,a3,1
   12204:	00e8a023          	sw	a4,0(a7)
   12208:	0128a223          	sw	s2,4(a7)
   1220c:	0ef12623          	sw	a5,236(sp)
   12210:	0ed12423          	sw	a3,232(sp)
   12214:	00888893          	addi	a7,a7,8
   12218:	fcd4dce3          	bge	s1,a3,121f0 <_vfprintf_r+0x1cac>
   1221c:	0e410613          	addi	a2,sp,228
   12220:	000b0593          	mv	a1,s6
   12224:	000d0513          	mv	a0,s10
   12228:	0e00a0ef          	jal	ra,1c308 <__sprint_r>
   1222c:	66051463          	bnez	a0,12894 <_vfprintf_r+0x2350>
   12230:	ff0c0c13          	addi	s8,s8,-16
   12234:	0ec12783          	lw	a5,236(sp)
   12238:	0e812683          	lw	a3,232(sp)
   1223c:	10c10893          	addi	a7,sp,268
   12240:	fb894ce3          	blt	s2,s8,121f8 <_vfprintf_r+0x1cb4>
   12244:	00812703          	lw	a4,8(sp)
   12248:	018787b3          	add	a5,a5,s8
   1224c:	00168693          	addi	a3,a3,1
   12250:	00e8a023          	sw	a4,0(a7)
   12254:	0188a223          	sw	s8,4(a7)
   12258:	0ef12623          	sw	a5,236(sp)
   1225c:	0ed12423          	sw	a3,232(sp)
   12260:	66d4c063          	blt	s1,a3,128c0 <_vfprintf_r+0x237c>
   12264:	00044683          	lbu	a3,0(s0)
   12268:	00888893          	addi	a7,a7,8
   1226c:	00dd8db3          	add	s11,s11,a3
   12270:	f65ff06f          	j	121d4 <_vfprintf_r+0x1c90>
   12274:	0e410613          	addi	a2,sp,228
   12278:	000b0593          	mv	a1,s6
   1227c:	000d0513          	mv	a0,s10
   12280:	0880a0ef          	jal	ra,1c308 <__sprint_r>
   12284:	60051863          	bnez	a0,12894 <_vfprintf_r+0x2350>
   12288:	0ec12783          	lw	a5,236(sp)
   1228c:	10c10893          	addi	a7,sp,268
   12290:	eedff06f          	j	1217c <_vfprintf_r+0x1c38>
   12294:	0e410613          	addi	a2,sp,228
   12298:	000b0593          	mv	a1,s6
   1229c:	000d0513          	mv	a0,s10
   122a0:	0680a0ef          	jal	ra,1c308 <__sprint_r>
   122a4:	5e051863          	bnez	a0,12894 <_vfprintf_r+0x2350>
   122a8:	00044683          	lbu	a3,0(s0)
   122ac:	0ec12783          	lw	a5,236(sp)
   122b0:	10c10893          	addi	a7,sp,268
   122b4:	f09ff06f          	j	121bc <_vfprintf_r+0x1c78>
   122b8:	04812783          	lw	a5,72(sp)
   122bc:	04c12583          	lw	a1,76(sp)
   122c0:	00000913          	li	s2,0
   122c4:	40f40433          	sub	s0,s0,a5
   122c8:	00078613          	mv	a2,a5
   122cc:	00040513          	mv	a0,s0
   122d0:	464070ef          	jal	ra,19734 <strncpy>
   122d4:	001cc583          	lbu	a1,1(s9)
   122d8:	00a00613          	li	a2,10
   122dc:	00000693          	li	a3,0
   122e0:	00b03833          	snez	a6,a1
   122e4:	00048513          	mv	a0,s1
   122e8:	00098593          	mv	a1,s3
   122ec:	010c8cb3          	add	s9,s9,a6
   122f0:	6840d0ef          	jal	ra,1f974 <__udivdi3>
   122f4:	ae5ff06f          	j	11dd8 <_vfprintf_r+0x1894>
   122f8:	00168693          	addi	a3,a3,1
   122fc:	00870893          	addi	a7,a4,8
   12300:	00070913          	mv	s2,a4
   12304:	b98ff06f          	j	1169c <_vfprintf_r+0x1158>
   12308:	0e410613          	addi	a2,sp,228
   1230c:	000c0593          	mv	a1,s8
   12310:	000d0513          	mv	a0,s10
   12314:	7f5090ef          	jal	ra,1c308 <__sprint_r>
   12318:	a6051e63          	bnez	a0,11594 <_vfprintf_r+0x1050>
   1231c:	0cc12583          	lw	a1,204(sp)
   12320:	0ec12783          	lw	a5,236(sp)
   12324:	10c10893          	addi	a7,sp,268
   12328:	b5dff06f          	j	11e84 <_vfprintf_r+0x1940>
   1232c:	00025737          	lui	a4,0x25
   12330:	80470b13          	addi	s6,a4,-2044 # 24804 <__clzsi2+0x68>
   12334:	c75ff06f          	j	11fa8 <_vfprintf_r+0x1a64>
   12338:	0e410613          	addi	a2,sp,228
   1233c:	000c0593          	mv	a1,s8
   12340:	000d0513          	mv	a0,s10
   12344:	7c5090ef          	jal	ra,1c308 <__sprint_r>
   12348:	a4051663          	bnez	a0,11594 <_vfprintf_r+0x1050>
   1234c:	0ec12783          	lw	a5,236(sp)
   12350:	10c10893          	addi	a7,sp,268
   12354:	cc4ff06f          	j	11818 <_vfprintf_r+0x12d4>
   12358:	00600c93          	li	s9,6
   1235c:	945ff06f          	j	11ca0 <_vfprintf_r+0x175c>
   12360:	02012683          	lw	a3,32(sp)
   12364:	00db0733          	add	a4,s6,a3
   12368:	409684b3          	sub	s1,a3,s1
   1236c:	41b70833          	sub	a6,a4,s11
   12370:	00048913          	mv	s2,s1
   12374:	d6985063          	bge	a6,s1,118d4 <_vfprintf_r+0x1390>
   12378:	00080913          	mv	s2,a6
   1237c:	d58ff06f          	j	118d4 <_vfprintf_r+0x1390>
   12380:	00c12783          	lw	a5,12(sp)
   12384:	00040b13          	mv	s6,s0
   12388:	00f71023          	sh	a5,0(a4)
   1238c:	d08fe06f          	j	10894 <_vfprintf_r+0x350>
   12390:	01412783          	lw	a5,20(sp)
   12394:	00000c93          	li	s9,0
   12398:	00e12a23          	sw	a4,20(sp)
   1239c:	0007a903          	lw	s2,0(a5)
   123a0:	d91fe06f          	j	11130 <_vfprintf_r+0xbec>
   123a4:	01412783          	lw	a5,20(sp)
   123a8:	00e12a23          	sw	a4,20(sp)
   123ac:	0007a903          	lw	s2,0(a5)
   123b0:	41f95c93          	srai	s9,s2,0x1f
   123b4:	000c8793          	mv	a5,s9
   123b8:	df5fe06f          	j	111ac <_vfprintf_r+0xc68>
   123bc:	01412783          	lw	a5,20(sp)
   123c0:	00000c93          	li	s9,0
   123c4:	00e12a23          	sw	a4,20(sp)
   123c8:	0007a903          	lw	s2,0(a5)
   123cc:	00100793          	li	a5,1
   123d0:	c25fe06f          	j	10ff4 <_vfprintf_r+0xab0>
   123d4:	01412783          	lw	a5,20(sp)
   123d8:	00000c93          	li	s9,0
   123dc:	00e12a23          	sw	a4,20(sp)
   123e0:	0007a903          	lw	s2,0(a5)
   123e4:	829ff06f          	j	11c0c <_vfprintf_r+0x16c8>
   123e8:	0e410613          	addi	a2,sp,228
   123ec:	000c0593          	mv	a1,s8
   123f0:	000d0513          	mv	a0,s10
   123f4:	715090ef          	jal	ra,1c308 <__sprint_r>
   123f8:	cb0fe06f          	j	108a8 <_vfprintf_r+0x364>
   123fc:	02d00793          	li	a5,45
   12400:	0cf103a3          	sb	a5,199(sp)
   12404:	cadff06f          	j	120b0 <_vfprintf_r+0x1b6c>
   12408:	03000793          	li	a5,48
   1240c:	0cf10423          	sb	a5,200(sp)
   12410:	05800793          	li	a5,88
   12414:	002a6713          	ori	a4,s4,2
   12418:	0cf104a3          	sb	a5,201(sp)
   1241c:	02e12423          	sw	a4,40(sp)
   12420:	06300793          	li	a5,99
   12424:	00012823          	sw	zero,16(sp)
   12428:	14c10b13          	addi	s6,sp,332
   1242c:	03b7c4e3          	blt	a5,s11,12c54 <_vfprintf_r+0x2710>
   12430:	0fc12303          	lw	t1,252(sp)
   12434:	fdf4fb93          	andi	s7,s1,-33
   12438:	05712223          	sw	s7,68(sp)
   1243c:	04012c23          	sw	zero,88(sp)
   12440:	0f012e03          	lw	t3,240(sp)
   12444:	0f412e83          	lw	t4,244(sp)
   12448:	0f812f03          	lw	t5,248(sp)
   1244c:	102a6a13          	ori	s4,s4,258
   12450:	44034e63          	bltz	t1,128ac <_vfprintf_r+0x2368>
   12454:	06100793          	li	a5,97
   12458:	0af48ee3          	beq	s1,a5,12d14 <_vfprintf_r+0x27d0>
   1245c:	04100793          	li	a5,65
   12460:	00f48463          	beq	s1,a5,12468 <_vfprintf_r+0x1f24>
   12464:	e44fe06f          	j	10aa8 <_vfprintf_r+0x564>
   12468:	0b010a93          	addi	s5,sp,176
   1246c:	000a8513          	mv	a0,s5
   12470:	05112a23          	sw	a7,84(sp)
   12474:	0bc12823          	sw	t3,176(sp)
   12478:	0bd12a23          	sw	t4,180(sp)
   1247c:	0be12c23          	sw	t5,184(sp)
   12480:	0a612e23          	sw	t1,188(sp)
   12484:	6f5110ef          	jal	ra,24378 <__trunctfdf2>
   12488:	0cc10613          	addi	a2,sp,204
   1248c:	6b5060ef          	jal	ra,19340 <frexp>
   12490:	00058613          	mv	a2,a1
   12494:	00050593          	mv	a1,a0
   12498:	000a8513          	mv	a0,s5
   1249c:	4ed110ef          	jal	ra,24188 <__extenddftf2>
   124a0:	0b012783          	lw	a5,176(sp)
   124a4:	0a010c93          	addi	s9,sp,160
   124a8:	09010913          	addi	s2,sp,144
   124ac:	08f12823          	sw	a5,144(sp)
   124b0:	0b412783          	lw	a5,180(sp)
   124b4:	08010613          	addi	a2,sp,128
   124b8:	00090593          	mv	a1,s2
   124bc:	08f12a23          	sw	a5,148(sp)
   124c0:	0b812783          	lw	a5,184(sp)
   124c4:	000c8513          	mv	a0,s9
   124c8:	04c12023          	sw	a2,64(sp)
   124cc:	08f12c23          	sw	a5,152(sp)
   124d0:	0bc12783          	lw	a5,188(sp)
   124d4:	08012023          	sw	zero,128(sp)
   124d8:	08012223          	sw	zero,132(sp)
   124dc:	08f12e23          	sw	a5,156(sp)
   124e0:	3ffc07b7          	lui	a5,0x3ffc0
   124e4:	08f12623          	sw	a5,140(sp)
   124e8:	08012423          	sw	zero,136(sp)
   124ec:	0fc0f0ef          	jal	ra,215e8 <__multf3>
   124f0:	0a012803          	lw	a6,160(sp)
   124f4:	0a412e03          	lw	t3,164(sp)
   124f8:	0a812e83          	lw	t4,168(sp)
   124fc:	0ac12f03          	lw	t5,172(sp)
   12500:	000c8593          	mv	a1,s9
   12504:	000a8513          	mv	a0,s5
   12508:	0b012823          	sw	a6,176(sp)
   1250c:	05012823          	sw	a6,80(sp)
   12510:	0bc12a23          	sw	t3,180(sp)
   12514:	03c12223          	sw	t3,36(sp)
   12518:	0bd12c23          	sw	t4,184(sp)
   1251c:	03d12023          	sw	t4,32(sp)
   12520:	0be12e23          	sw	t5,188(sp)
   12524:	01e12e23          	sw	t5,28(sp)
   12528:	0a012023          	sw	zero,160(sp)
   1252c:	0a012223          	sw	zero,164(sp)
   12530:	0a012423          	sw	zero,168(sp)
   12534:	0a012623          	sw	zero,172(sp)
   12538:	55d0e0ef          	jal	ra,21294 <__eqtf2>
   1253c:	01c12f03          	lw	t5,28(sp)
   12540:	02012e83          	lw	t4,32(sp)
   12544:	02412e03          	lw	t3,36(sp)
   12548:	05012803          	lw	a6,80(sp)
   1254c:	05412883          	lw	a7,84(sp)
   12550:	00051663          	bnez	a0,1255c <_vfprintf_r+0x2018>
   12554:	00100793          	li	a5,1
   12558:	0cf12623          	sw	a5,204(sp)
   1255c:	000257b7          	lui	a5,0x25
   12560:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   12564:	02f12223          	sw	a5,36(sp)
   12568:	fffd8693          	addi	a3,s11,-1
   1256c:	05412e23          	sw	s4,92(sp)
   12570:	06912223          	sw	s1,100(sp)
   12574:	07b12623          	sw	s11,108(sp)
   12578:	07a12a23          	sw	s10,116(sp)
   1257c:	07812c23          	sw	s8,120(sp)
   12580:	06812023          	sw	s0,96(sp)
   12584:	07312423          	sw	s3,104(sp)
   12588:	07112823          	sw	a7,112(sp)
   1258c:	000b0c13          	mv	s8,s6
   12590:	00068b93          	mv	s7,a3
   12594:	07612e23          	sw	s6,124(sp)
   12598:	00080d13          	mv	s10,a6
   1259c:	000e0d93          	mv	s11,t3
   125a0:	000e8493          	mv	s1,t4
   125a4:	000f0a13          	mv	s4,t5
   125a8:	0480006f          	j	125f0 <_vfprintf_r+0x20ac>
   125ac:	000c8593          	mv	a1,s9
   125b0:	000a8513          	mv	a0,s5
   125b4:	02c12023          	sw	a2,32(sp)
   125b8:	01f12e23          	sw	t6,28(sp)
   125bc:	0bf12c23          	sw	t6,184(sp)
   125c0:	0ac12e23          	sw	a2,188(sp)
   125c4:	0b612823          	sw	s6,176(sp)
   125c8:	0b312a23          	sw	s3,180(sp)
   125cc:	0a012023          	sw	zero,160(sp)
   125d0:	0a012223          	sw	zero,164(sp)
   125d4:	0a012423          	sw	zero,168(sp)
   125d8:	0a012623          	sw	zero,172(sp)
   125dc:	4b90e0ef          	jal	ra,21294 <__eqtf2>
   125e0:	01c12f83          	lw	t6,28(sp)
   125e4:	02012603          	lw	a2,32(sp)
   125e8:	fffb8b93          	addi	s7,s7,-1
   125ec:	0e050263          	beqz	a0,126d0 <_vfprintf_r+0x218c>
   125f0:	400307b7          	lui	a5,0x40030
   125f4:	00090613          	mv	a2,s2
   125f8:	000c8593          	mv	a1,s9
   125fc:	000a8513          	mv	a0,s5
   12600:	08f12e23          	sw	a5,156(sp)
   12604:	0ba12023          	sw	s10,160(sp)
   12608:	0bb12223          	sw	s11,164(sp)
   1260c:	0a912423          	sw	s1,168(sp)
   12610:	0b412623          	sw	s4,172(sp)
   12614:	08012823          	sw	zero,144(sp)
   12618:	08012a23          	sw	zero,148(sp)
   1261c:	08012c23          	sw	zero,152(sp)
   12620:	7c90e0ef          	jal	ra,215e8 <__multf3>
   12624:	000a8513          	mv	a0,s5
   12628:	0fd110ef          	jal	ra,23f24 <__fixtfsi>
   1262c:	00050593          	mv	a1,a0
   12630:	00050413          	mv	s0,a0
   12634:	000a8513          	mv	a0,s5
   12638:	0b012983          	lw	s3,176(sp)
   1263c:	0b412483          	lw	s1,180(sp)
   12640:	0b812b03          	lw	s6,184(sp)
   12644:	0bc12a03          	lw	s4,188(sp)
   12648:	1f1110ef          	jal	ra,24038 <__floatsitf>
   1264c:	0b012703          	lw	a4,176(sp)
   12650:	04012603          	lw	a2,64(sp)
   12654:	00090593          	mv	a1,s2
   12658:	08e12023          	sw	a4,128(sp)
   1265c:	0b412703          	lw	a4,180(sp)
   12660:	000c8513          	mv	a0,s9
   12664:	09312823          	sw	s3,144(sp)
   12668:	08e12223          	sw	a4,132(sp)
   1266c:	0b812703          	lw	a4,184(sp)
   12670:	08912a23          	sw	s1,148(sp)
   12674:	09612c23          	sw	s6,152(sp)
   12678:	08e12423          	sw	a4,136(sp)
   1267c:	0bc12703          	lw	a4,188(sp)
   12680:	09412e23          	sw	s4,156(sp)
   12684:	08e12623          	sw	a4,140(sp)
   12688:	2fc100ef          	jal	ra,22984 <__subtf3>
   1268c:	02412783          	lw	a5,36(sp)
   12690:	0a012b03          	lw	s6,160(sp)
   12694:	0a412983          	lw	s3,164(sp)
   12698:	00878733          	add	a4,a5,s0
   1269c:	00074703          	lbu	a4,0(a4)
   126a0:	0a812f83          	lw	t6,168(sp)
   126a4:	0ac12603          	lw	a2,172(sp)
   126a8:	05812a23          	sw	s8,84(sp)
   126ac:	00ec0023          	sb	a4,0(s8)
   126b0:	05712823          	sw	s7,80(sp)
   126b4:	fff00793          	li	a5,-1
   126b8:	001c0c13          	addi	s8,s8,1
   126bc:	000b0d13          	mv	s10,s6
   126c0:	00098d93          	mv	s11,s3
   126c4:	000f8493          	mv	s1,t6
   126c8:	00060a13          	mv	s4,a2
   126cc:	eefb90e3          	bne	s7,a5,125ac <_vfprintf_r+0x2068>
   126d0:	07012883          	lw	a7,112(sp)
   126d4:	000b0393          	mv	t2,s6
   126d8:	00098293          	mv	t0,s3
   126dc:	3ffe0937          	lui	s2,0x3ffe0
   126e0:	000c8593          	mv	a1,s9
   126e4:	000a8513          	mv	a0,s5
   126e8:	03112023          	sw	a7,32(sp)
   126ec:	00812e23          	sw	s0,28(sp)
   126f0:	05c12a03          	lw	s4,92(sp)
   126f4:	06412483          	lw	s1,100(sp)
   126f8:	06012403          	lw	s0,96(sp)
   126fc:	0a712823          	sw	t2,176(sp)
   12700:	06712223          	sw	t2,100(sp)
   12704:	0a512a23          	sw	t0,180(sp)
   12708:	06512023          	sw	t0,96(sp)
   1270c:	0bf12c23          	sw	t6,184(sp)
   12710:	05f12e23          	sw	t6,92(sp)
   12714:	0ac12e23          	sw	a2,188(sp)
   12718:	04c12023          	sw	a2,64(sp)
   1271c:	0a012023          	sw	zero,160(sp)
   12720:	0a012223          	sw	zero,164(sp)
   12724:	0a012423          	sw	zero,168(sp)
   12728:	0b212623          	sw	s2,172(sp)
   1272c:	4350e0ef          	jal	ra,21360 <__getf2>
   12730:	000c0b93          	mv	s7,s8
   12734:	06c12d83          	lw	s11,108(sp)
   12738:	07412d03          	lw	s10,116(sp)
   1273c:	07812c03          	lw	s8,120(sp)
   12740:	07c12b03          	lw	s6,124(sp)
   12744:	06812983          	lw	s3,104(sp)
   12748:	02012883          	lw	a7,32(sp)
   1274c:	48a04263          	bgtz	a0,12bd0 <_vfprintf_r+0x268c>
   12750:	06412383          	lw	t2,100(sp)
   12754:	06012283          	lw	t0,96(sp)
   12758:	05c12f83          	lw	t6,92(sp)
   1275c:	04012603          	lw	a2,64(sp)
   12760:	000c8593          	mv	a1,s9
   12764:	000a8513          	mv	a0,s5
   12768:	0a712823          	sw	t2,176(sp)
   1276c:	0a512a23          	sw	t0,180(sp)
   12770:	0bf12c23          	sw	t6,184(sp)
   12774:	0ac12e23          	sw	a2,188(sp)
   12778:	0a012023          	sw	zero,160(sp)
   1277c:	0a012223          	sw	zero,164(sp)
   12780:	0a012423          	sw	zero,168(sp)
   12784:	0b212623          	sw	s2,172(sp)
   12788:	30d0e0ef          	jal	ra,21294 <__eqtf2>
   1278c:	02012883          	lw	a7,32(sp)
   12790:	00051863          	bnez	a0,127a0 <_vfprintf_r+0x225c>
   12794:	01c12783          	lw	a5,28(sp)
   12798:	0017fc93          	andi	s9,a5,1
   1279c:	420c9a63          	bnez	s9,12bd0 <_vfprintf_r+0x268c>
   127a0:	05012783          	lw	a5,80(sp)
   127a4:	03000613          	li	a2,48
   127a8:	00178693          	addi	a3,a5,1 # 40030001 <__BSS_END__+0x40009031>
   127ac:	00db86b3          	add	a3,s7,a3
   127b0:	0007c863          	bltz	a5,127c0 <_vfprintf_r+0x227c>
   127b4:	001b8b93          	addi	s7,s7,1
   127b8:	fecb8fa3          	sb	a2,-1(s7)
   127bc:	ff769ce3          	bne	a3,s7,127b4 <_vfprintf_r+0x2270>
   127c0:	416b87b3          	sub	a5,s7,s6
   127c4:	02f12023          	sw	a5,32(sp)
   127c8:	bc8fe06f          	j	10b90 <_vfprintf_r+0x64c>
   127cc:	02012703          	lw	a4,32(sp)
   127d0:	000b0c13          	mv	s8,s6
   127d4:	02812b03          	lw	s6,40(sp)
   127d8:	02812e23          	sw	s0,60(sp)
   127dc:	01c12a03          	lw	s4,28(sp)
   127e0:	00eb06b3          	add	a3,s6,a4
   127e4:	04012403          	lw	s0,64(sp)
   127e8:	04412983          	lw	s3,68(sp)
   127ec:	02412a83          	lw	s5,36(sp)
   127f0:	01b6e463          	bltu	a3,s11,127f8 <_vfprintf_r+0x22b4>
   127f4:	84cff06f          	j	11840 <_vfprintf_r+0x12fc>
   127f8:	00068d93          	mv	s11,a3
   127fc:	844ff06f          	j	11840 <_vfprintf_r+0x12fc>
   12800:	01c12703          	lw	a4,28(sp)
   12804:	ffd00793          	li	a5,-3
   12808:	00f74463          	blt	a4,a5,12810 <_vfprintf_r+0x22cc>
   1280c:	00edda63          	bge	s11,a4,12820 <_vfprintf_r+0x22dc>
   12810:	ffe48493          	addi	s1,s1,-2
   12814:	fdf4f793          	andi	a5,s1,-33
   12818:	04f12223          	sw	a5,68(sp)
   1281c:	b9cfe06f          	j	10bb8 <_vfprintf_r+0x674>
   12820:	02012783          	lw	a5,32(sp)
   12824:	01c12703          	lw	a4,28(sp)
   12828:	2af74063          	blt	a4,a5,12ac8 <_vfprintf_r+0x2584>
   1282c:	02812783          	lw	a5,40(sp)
   12830:	00070c93          	mv	s9,a4
   12834:	0017f793          	andi	a5,a5,1
   12838:	00078663          	beqz	a5,12844 <_vfprintf_r+0x2300>
   1283c:	02c12783          	lw	a5,44(sp)
   12840:	00f70cb3          	add	s9,a4,a5
   12844:	02812783          	lw	a5,40(sp)
   12848:	4007f793          	andi	a5,a5,1024
   1284c:	00078663          	beqz	a5,12858 <_vfprintf_r+0x2314>
   12850:	01c12783          	lw	a5,28(sp)
   12854:	5cf04263          	bgtz	a5,12e18 <_vfprintf_r+0x28d4>
   12858:	fffcca93          	not	s5,s9
   1285c:	41fada93          	srai	s5,s5,0x1f
   12860:	015cfab3          	and	s5,s9,s5
   12864:	06700493          	li	s1,103
   12868:	02012423          	sw	zero,40(sp)
   1286c:	02012223          	sw	zero,36(sp)
   12870:	c84fe06f          	j	10cf4 <_vfprintf_r+0x7b0>
   12874:	0c714783          	lbu	a5,199(sp)
   12878:	00000d93          	li	s11,0
   1287c:	00078463          	beqz	a5,12884 <_vfprintf_r+0x2340>
   12880:	ec0fe06f          	j	10f40 <_vfprintf_r+0x9fc>
   12884:	ef9fd06f          	j	1077c <_vfprintf_r+0x238>
   12888:	00900793          	li	a5,9
   1288c:	d497e663          	bltu	a5,s1,11dd8 <_vfprintf_r+0x1894>
   12890:	d90ff06f          	j	11e20 <_vfprintf_r+0x18dc>
   12894:	01012b83          	lw	s7,16(sp)
   12898:	000b0c13          	mv	s8,s6
   1289c:	cfdfe06f          	j	11598 <_vfprintf_r+0x1054>
   128a0:	03412423          	sw	s4,40(sp)
   128a4:	00012823          	sw	zero,16(sp)
   128a8:	00090a13          	mv	s4,s2
   128ac:	800007b7          	lui	a5,0x80000
   128b0:	0067c333          	xor	t1,a5,t1
   128b4:	02d00793          	li	a5,45
   128b8:	04f12c23          	sw	a5,88(sp)
   128bc:	b99ff06f          	j	12454 <_vfprintf_r+0x1f10>
   128c0:	0e410613          	addi	a2,sp,228
   128c4:	000b0593          	mv	a1,s6
   128c8:	000d0513          	mv	a0,s10
   128cc:	23d090ef          	jal	ra,1c308 <__sprint_r>
   128d0:	fc0512e3          	bnez	a0,12894 <_vfprintf_r+0x2350>
   128d4:	00044683          	lbu	a3,0(s0)
   128d8:	0ec12783          	lw	a5,236(sp)
   128dc:	10c10893          	addi	a7,sp,268
   128e0:	00dd8db3          	add	s11,s11,a3
   128e4:	8f1ff06f          	j	121d4 <_vfprintf_r+0x1c90>
   128e8:	0b010a93          	addi	s5,sp,176
   128ec:	0d010793          	addi	a5,sp,208
   128f0:	0dc10813          	addi	a6,sp,220
   128f4:	0cc10713          	addi	a4,sp,204
   128f8:	000d8693          	mv	a3,s11
   128fc:	00200613          	li	a2,2
   12900:	000a8593          	mv	a1,s5
   12904:	000d0513          	mv	a0,s10
   12908:	0bc12823          	sw	t3,176(sp)
   1290c:	05c12023          	sw	t3,64(sp)
   12910:	0bd12a23          	sw	t4,180(sp)
   12914:	03d12223          	sw	t4,36(sp)
   12918:	0be12c23          	sw	t5,184(sp)
   1291c:	03e12023          	sw	t5,32(sp)
   12920:	0a612e23          	sw	t1,188(sp)
   12924:	00612e23          	sw	t1,28(sp)
   12928:	3d8030ef          	jal	ra,15d00 <_ldtoa_r>
   1292c:	04700793          	li	a5,71
   12930:	01c12303          	lw	t1,28(sp)
   12934:	02012f03          	lw	t5,32(sp)
   12938:	02412e83          	lw	t4,36(sp)
   1293c:	04012e03          	lw	t3,64(sp)
   12940:	05012883          	lw	a7,80(sp)
   12944:	00050b13          	mv	s6,a0
   12948:	08fb9063          	bne	s7,a5,129c8 <_vfprintf_r+0x2484>
   1294c:	02812783          	lw	a5,40(sp)
   12950:	0017f793          	andi	a5,a5,1
   12954:	2e079663          	bnez	a5,12c40 <_vfprintf_r+0x26fc>
   12958:	04700793          	li	a5,71
   1295c:	0dc12703          	lw	a4,220(sp)
   12960:	04f12223          	sw	a5,68(sp)
   12964:	a24fe06f          	j	10b88 <_vfprintf_r+0x644>
   12968:	0b010a93          	addi	s5,sp,176
   1296c:	0dc10813          	addi	a6,sp,220
   12970:	0d010793          	addi	a5,sp,208
   12974:	0cc10713          	addi	a4,sp,204
   12978:	000d8693          	mv	a3,s11
   1297c:	00300613          	li	a2,3
   12980:	000a8593          	mv	a1,s5
   12984:	000d0513          	mv	a0,s10
   12988:	05112823          	sw	a7,80(sp)
   1298c:	0bc12823          	sw	t3,176(sp)
   12990:	05c12023          	sw	t3,64(sp)
   12994:	0bd12a23          	sw	t4,180(sp)
   12998:	03d12223          	sw	t4,36(sp)
   1299c:	0be12c23          	sw	t5,184(sp)
   129a0:	03e12023          	sw	t5,32(sp)
   129a4:	0a612e23          	sw	t1,188(sp)
   129a8:	00612e23          	sw	t1,28(sp)
   129ac:	354030ef          	jal	ra,15d00 <_ldtoa_r>
   129b0:	01c12303          	lw	t1,28(sp)
   129b4:	02012f03          	lw	t5,32(sp)
   129b8:	02412e83          	lw	t4,36(sp)
   129bc:	04012e03          	lw	t3,64(sp)
   129c0:	05012883          	lw	a7,80(sp)
   129c4:	00050b13          	mv	s6,a0
   129c8:	04600793          	li	a5,70
   129cc:	01bb0933          	add	s2,s6,s11
   129d0:	26fb9e63          	bne	s7,a5,12c4c <_vfprintf_r+0x2708>
   129d4:	000b4683          	lbu	a3,0(s6)
   129d8:	03000793          	li	a5,48
   129dc:	50f68a63          	beq	a3,a5,12ef0 <_vfprintf_r+0x29ac>
   129e0:	0a010c93          	addi	s9,sp,160
   129e4:	0cc12783          	lw	a5,204(sp)
   129e8:	00f90933          	add	s2,s2,a5
   129ec:	940fe06f          	j	10b2c <_vfprintf_r+0x5e8>
   129f0:	02d00793          	li	a5,45
   129f4:	0cf103a3          	sb	a5,199(sp)
   129f8:	da0ff06f          	j	11f98 <_vfprintf_r+0x1a54>
   129fc:	0e410613          	addi	a2,sp,228
   12a00:	000c0593          	mv	a1,s8
   12a04:	000d0513          	mv	a0,s10
   12a08:	101090ef          	jal	ra,1c308 <__sprint_r>
   12a0c:	00050463          	beqz	a0,12a14 <_vfprintf_r+0x24d0>
   12a10:	b85fe06f          	j	11594 <_vfprintf_r+0x1050>
   12a14:	0cc12483          	lw	s1,204(sp)
   12a18:	0ec12783          	lw	a5,236(sp)
   12a1c:	10c10893          	addi	a7,sp,268
   12a20:	e69fe06f          	j	11888 <_vfprintf_r+0x1344>
   12a24:	0c714783          	lbu	a5,199(sp)
   12a28:	01212a23          	sw	s2,20(sp)
   12a2c:	02012423          	sw	zero,40(sp)
   12a30:	02012223          	sw	zero,36(sp)
   12a34:	00012e23          	sw	zero,28(sp)
   12a38:	000d8a93          	mv	s5,s11
   12a3c:	000d8c93          	mv	s9,s11
   12a40:	00000d93          	li	s11,0
   12a44:	00078463          	beqz	a5,12a4c <_vfprintf_r+0x2508>
   12a48:	cf8fe06f          	j	10f40 <_vfprintf_r+0x9fc>
   12a4c:	d31fd06f          	j	1077c <_vfprintf_r+0x238>
   12a50:	02812783          	lw	a5,40(sp)
   12a54:	01c12703          	lw	a4,28(sp)
   12a58:	0017f793          	andi	a5,a5,1
   12a5c:	01b7e7b3          	or	a5,a5,s11
   12a60:	50e05a63          	blez	a4,12f74 <_vfprintf_r+0x2a30>
   12a64:	44079463          	bnez	a5,12eac <_vfprintf_r+0x2968>
   12a68:	01c12c83          	lw	s9,28(sp)
   12a6c:	06600493          	li	s1,102
   12a70:	02812783          	lw	a5,40(sp)
   12a74:	4007f793          	andi	a5,a5,1024
   12a78:	3a079263          	bnez	a5,12e1c <_vfprintf_r+0x28d8>
   12a7c:	fffcca93          	not	s5,s9
   12a80:	41fada93          	srai	s5,s5,0x1f
   12a84:	015cfab3          	and	s5,s9,s5
   12a88:	de1ff06f          	j	12868 <_vfprintf_r+0x2324>
   12a8c:	00025737          	lui	a4,0x25
   12a90:	80c70b13          	addi	s6,a4,-2036 # 2480c <__clzsi2+0x70>
   12a94:	d14ff06f          	j	11fa8 <_vfprintf_r+0x1a64>
   12a98:	0e410613          	addi	a2,sp,228
   12a9c:	000c0593          	mv	a1,s8
   12aa0:	000d0513          	mv	a0,s10
   12aa4:	065090ef          	jal	ra,1c308 <__sprint_r>
   12aa8:	00050463          	beqz	a0,12ab0 <_vfprintf_r+0x256c>
   12aac:	ae9fe06f          	j	11594 <_vfprintf_r+0x1050>
   12ab0:	0cc12483          	lw	s1,204(sp)
   12ab4:	02012703          	lw	a4,32(sp)
   12ab8:	0ec12783          	lw	a5,236(sp)
   12abc:	10c10893          	addi	a7,sp,268
   12ac0:	409704b3          	sub	s1,a4,s1
   12ac4:	e11fe06f          	j	118d4 <_vfprintf_r+0x1390>
   12ac8:	02012783          	lw	a5,32(sp)
   12acc:	02c12703          	lw	a4,44(sp)
   12ad0:	06700493          	li	s1,103
   12ad4:	00e78cb3          	add	s9,a5,a4
   12ad8:	01c12783          	lw	a5,28(sp)
   12adc:	f8f04ae3          	bgtz	a5,12a70 <_vfprintf_r+0x252c>
   12ae0:	40fc8cb3          	sub	s9,s9,a5
   12ae4:	001c8c93          	addi	s9,s9,1
   12ae8:	fffcca93          	not	s5,s9
   12aec:	41fada93          	srai	s5,s5,0x1f
   12af0:	015cfab3          	and	s5,s9,s5
   12af4:	d75ff06f          	j	12868 <_vfprintf_r+0x2324>
   12af8:	000256b7          	lui	a3,0x25
   12afc:	9b468e93          	addi	t4,a3,-1612 # 249b4 <blanks.4483>
   12b00:	b50fe06f          	j	10e50 <_vfprintf_r+0x90c>
   12b04:	fff00793          	li	a5,-1
   12b08:	00f12623          	sw	a5,12(sp)
   12b0c:	dadfd06f          	j	108b8 <_vfprintf_r+0x374>
   12b10:	ff000613          	li	a2,-16
   12b14:	40b004b3          	neg	s1,a1
   12b18:	06c5d263          	bge	a1,a2,12b7c <_vfprintf_r+0x2638>
   12b1c:	01000913          	li	s2,16
   12b20:	00700c93          	li	s9,7
   12b24:	00c0006f          	j	12b30 <_vfprintf_r+0x25ec>
   12b28:	ff048493          	addi	s1,s1,-16
   12b2c:	04995863          	bge	s2,s1,12b7c <_vfprintf_r+0x2638>
   12b30:	00812703          	lw	a4,8(sp)
   12b34:	01078793          	addi	a5,a5,16 # 80000010 <__BSS_END__+0x7ffd9040>
   12b38:	00168693          	addi	a3,a3,1
   12b3c:	00e8a023          	sw	a4,0(a7)
   12b40:	0128a223          	sw	s2,4(a7)
   12b44:	0ef12623          	sw	a5,236(sp)
   12b48:	0ed12423          	sw	a3,232(sp)
   12b4c:	00888893          	addi	a7,a7,8
   12b50:	fcdcdce3          	bge	s9,a3,12b28 <_vfprintf_r+0x25e4>
   12b54:	0e410613          	addi	a2,sp,228
   12b58:	000c0593          	mv	a1,s8
   12b5c:	000d0513          	mv	a0,s10
   12b60:	7a8090ef          	jal	ra,1c308 <__sprint_r>
   12b64:	00050463          	beqz	a0,12b6c <_vfprintf_r+0x2628>
   12b68:	a2dfe06f          	j	11594 <_vfprintf_r+0x1050>
   12b6c:	0ec12783          	lw	a5,236(sp)
   12b70:	0e812683          	lw	a3,232(sp)
   12b74:	10c10893          	addi	a7,sp,268
   12b78:	fb1ff06f          	j	12b28 <_vfprintf_r+0x25e4>
   12b7c:	00812703          	lw	a4,8(sp)
   12b80:	009787b3          	add	a5,a5,s1
   12b84:	00168693          	addi	a3,a3,1
   12b88:	00e8a023          	sw	a4,0(a7)
   12b8c:	0098a223          	sw	s1,4(a7)
   12b90:	0ef12623          	sw	a5,236(sp)
   12b94:	0ed12423          	sw	a3,232(sp)
   12b98:	00700613          	li	a2,7
   12b9c:	b2d65a63          	bge	a2,a3,11ed0 <_vfprintf_r+0x198c>
   12ba0:	0e410613          	addi	a2,sp,228
   12ba4:	000c0593          	mv	a1,s8
   12ba8:	000d0513          	mv	a0,s10
   12bac:	75c090ef          	jal	ra,1c308 <__sprint_r>
   12bb0:	00050463          	beqz	a0,12bb8 <_vfprintf_r+0x2674>
   12bb4:	9e1fe06f          	j	11594 <_vfprintf_r+0x1050>
   12bb8:	0ec12783          	lw	a5,236(sp)
   12bbc:	0e812683          	lw	a3,232(sp)
   12bc0:	10c10893          	addi	a7,sp,268
   12bc4:	9ccfe06f          	j	10d90 <_vfprintf_r+0x84c>
   12bc8:	000a0b93          	mv	s7,s4
   12bcc:	e20fe06f          	j	111ec <_vfprintf_r+0xca8>
   12bd0:	05412783          	lw	a5,84(sp)
   12bd4:	000b8693          	mv	a3,s7
   12bd8:	0cf12e23          	sw	a5,220(sp)
   12bdc:	02412783          	lw	a5,36(sp)
   12be0:	fffbc603          	lbu	a2,-1(s7)
   12be4:	00f7c583          	lbu	a1,15(a5)
   12be8:	02b61063          	bne	a2,a1,12c08 <_vfprintf_r+0x26c4>
   12bec:	03000513          	li	a0,48
   12bf0:	fea68fa3          	sb	a0,-1(a3)
   12bf4:	0dc12683          	lw	a3,220(sp)
   12bf8:	fff68793          	addi	a5,a3,-1
   12bfc:	0cf12e23          	sw	a5,220(sp)
   12c00:	fff6c603          	lbu	a2,-1(a3)
   12c04:	fec586e3          	beq	a1,a2,12bf0 <_vfprintf_r+0x26ac>
   12c08:	00160593          	addi	a1,a2,1
   12c0c:	03900513          	li	a0,57
   12c10:	0ff5f593          	andi	a1,a1,255
   12c14:	00a60663          	beq	a2,a0,12c20 <_vfprintf_r+0x26dc>
   12c18:	feb68fa3          	sb	a1,-1(a3)
   12c1c:	ba5ff06f          	j	127c0 <_vfprintf_r+0x227c>
   12c20:	02412783          	lw	a5,36(sp)
   12c24:	00a7c583          	lbu	a1,10(a5)
   12c28:	feb68fa3          	sb	a1,-1(a3)
   12c2c:	b95ff06f          	j	127c0 <_vfprintf_r+0x227c>
   12c30:	03000793          	li	a5,48
   12c34:	0cf10423          	sb	a5,200(sp)
   12c38:	07800793          	li	a5,120
   12c3c:	fd8ff06f          	j	12414 <_vfprintf_r+0x1ed0>
   12c40:	04700793          	li	a5,71
   12c44:	01bb0933          	add	s2,s6,s11
   12c48:	04f12223          	sw	a5,68(sp)
   12c4c:	0a010c93          	addi	s9,sp,160
   12c50:	eddfd06f          	j	10b2c <_vfprintf_r+0x5e8>
   12c54:	001d8593          	addi	a1,s11,1
   12c58:	000d0513          	mv	a0,s10
   12c5c:	01112823          	sw	a7,16(sp)
   12c60:	5a4040ef          	jal	ra,17204 <_malloc_r>
   12c64:	01012883          	lw	a7,16(sp)
   12c68:	00050b13          	mv	s6,a0
   12c6c:	36050463          	beqz	a0,12fd4 <_vfprintf_r+0x2a90>
   12c70:	00a12823          	sw	a0,16(sp)
   12c74:	fbcff06f          	j	12430 <_vfprintf_r+0x1eec>
   12c78:	000d9463          	bnez	s11,12c80 <_vfprintf_r+0x273c>
   12c7c:	00100d93          	li	s11,1
   12c80:	0fc12303          	lw	t1,252(sp)
   12c84:	0f012e03          	lw	t3,240(sp)
   12c88:	0f412e83          	lw	t4,244(sp)
   12c8c:	0f812f03          	lw	t5,248(sp)
   12c90:	100a6913          	ori	s2,s4,256
   12c94:	c00346e3          	bltz	t1,128a0 <_vfprintf_r+0x235c>
   12c98:	0b010a93          	addi	s5,sp,176
   12c9c:	0dc10813          	addi	a6,sp,220
   12ca0:	0d010793          	addi	a5,sp,208
   12ca4:	0cc10713          	addi	a4,sp,204
   12ca8:	000d8693          	mv	a3,s11
   12cac:	00200613          	li	a2,2
   12cb0:	000a8593          	mv	a1,s5
   12cb4:	000d0513          	mv	a0,s10
   12cb8:	05112223          	sw	a7,68(sp)
   12cbc:	0bc12823          	sw	t3,176(sp)
   12cc0:	05c12023          	sw	t3,64(sp)
   12cc4:	0bd12a23          	sw	t4,180(sp)
   12cc8:	03d12223          	sw	t4,36(sp)
   12ccc:	0be12c23          	sw	t5,184(sp)
   12cd0:	03e12023          	sw	t5,32(sp)
   12cd4:	0a612e23          	sw	t1,188(sp)
   12cd8:	00612e23          	sw	t1,28(sp)
   12cdc:	024030ef          	jal	ra,15d00 <_ldtoa_r>
   12ce0:	01c12303          	lw	t1,28(sp)
   12ce4:	03412423          	sw	s4,40(sp)
   12ce8:	02012f03          	lw	t5,32(sp)
   12cec:	02412e83          	lw	t4,36(sp)
   12cf0:	04012e03          	lw	t3,64(sp)
   12cf4:	04412883          	lw	a7,68(sp)
   12cf8:	00050b13          	mv	s6,a0
   12cfc:	00090a13          	mv	s4,s2
   12d00:	04012c23          	sw	zero,88(sp)
   12d04:	00012823          	sw	zero,16(sp)
   12d08:	c45ff06f          	j	1294c <_vfprintf_r+0x2408>
   12d0c:	00600d93          	li	s11,6
   12d10:	d6dfd06f          	j	10a7c <_vfprintf_r+0x538>
   12d14:	0b010a93          	addi	s5,sp,176
   12d18:	000a8513          	mv	a0,s5
   12d1c:	05112a23          	sw	a7,84(sp)
   12d20:	0bc12823          	sw	t3,176(sp)
   12d24:	0bd12a23          	sw	t4,180(sp)
   12d28:	0be12c23          	sw	t5,184(sp)
   12d2c:	0a612e23          	sw	t1,188(sp)
   12d30:	648110ef          	jal	ra,24378 <__trunctfdf2>
   12d34:	0cc10613          	addi	a2,sp,204
   12d38:	608060ef          	jal	ra,19340 <frexp>
   12d3c:	00058613          	mv	a2,a1
   12d40:	00050593          	mv	a1,a0
   12d44:	000a8513          	mv	a0,s5
   12d48:	440110ef          	jal	ra,24188 <__extenddftf2>
   12d4c:	0b012783          	lw	a5,176(sp)
   12d50:	0a010c93          	addi	s9,sp,160
   12d54:	09010913          	addi	s2,sp,144
   12d58:	08f12823          	sw	a5,144(sp)
   12d5c:	0b412783          	lw	a5,180(sp)
   12d60:	08010613          	addi	a2,sp,128
   12d64:	00090593          	mv	a1,s2
   12d68:	08f12a23          	sw	a5,148(sp)
   12d6c:	0b812783          	lw	a5,184(sp)
   12d70:	000c8513          	mv	a0,s9
   12d74:	04c12023          	sw	a2,64(sp)
   12d78:	08f12c23          	sw	a5,152(sp)
   12d7c:	0bc12783          	lw	a5,188(sp)
   12d80:	08012023          	sw	zero,128(sp)
   12d84:	08012223          	sw	zero,132(sp)
   12d88:	08f12e23          	sw	a5,156(sp)
   12d8c:	3ffc07b7          	lui	a5,0x3ffc0
   12d90:	08f12623          	sw	a5,140(sp)
   12d94:	08012423          	sw	zero,136(sp)
   12d98:	0510e0ef          	jal	ra,215e8 <__multf3>
   12d9c:	0a012803          	lw	a6,160(sp)
   12da0:	0a412e03          	lw	t3,164(sp)
   12da4:	0a812e83          	lw	t4,168(sp)
   12da8:	0ac12f03          	lw	t5,172(sp)
   12dac:	000c8593          	mv	a1,s9
   12db0:	000a8513          	mv	a0,s5
   12db4:	0b012823          	sw	a6,176(sp)
   12db8:	05012823          	sw	a6,80(sp)
   12dbc:	0bc12a23          	sw	t3,180(sp)
   12dc0:	03c12223          	sw	t3,36(sp)
   12dc4:	0bd12c23          	sw	t4,184(sp)
   12dc8:	03d12023          	sw	t4,32(sp)
   12dcc:	0be12e23          	sw	t5,188(sp)
   12dd0:	01e12e23          	sw	t5,28(sp)
   12dd4:	0a012023          	sw	zero,160(sp)
   12dd8:	0a012223          	sw	zero,164(sp)
   12ddc:	0a012423          	sw	zero,168(sp)
   12de0:	0a012623          	sw	zero,172(sp)
   12de4:	4b00e0ef          	jal	ra,21294 <__eqtf2>
   12de8:	01c12f03          	lw	t5,28(sp)
   12dec:	02012e83          	lw	t4,32(sp)
   12df0:	02412e03          	lw	t3,36(sp)
   12df4:	05012803          	lw	a6,80(sp)
   12df8:	05412883          	lw	a7,84(sp)
   12dfc:	00051663          	bnez	a0,12e08 <_vfprintf_r+0x28c4>
   12e00:	00100793          	li	a5,1
   12e04:	0cf12623          	sw	a5,204(sp)
   12e08:	000257b7          	lui	a5,0x25
   12e0c:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   12e10:	02f12223          	sw	a5,36(sp)
   12e14:	f54ff06f          	j	12568 <_vfprintf_r+0x2024>
   12e18:	06700493          	li	s1,103
   12e1c:	03c12603          	lw	a2,60(sp)
   12e20:	0ff00693          	li	a3,255
   12e24:	00064783          	lbu	a5,0(a2)
   12e28:	1ad78e63          	beq	a5,a3,12fe4 <_vfprintf_r+0x2aa0>
   12e2c:	01c12703          	lw	a4,28(sp)
   12e30:	00000513          	li	a0,0
   12e34:	00000593          	li	a1,0
   12e38:	00e7de63          	bge	a5,a4,12e54 <_vfprintf_r+0x2910>
   12e3c:	40f70733          	sub	a4,a4,a5
   12e40:	00164783          	lbu	a5,1(a2)
   12e44:	04078863          	beqz	a5,12e94 <_vfprintf_r+0x2950>
   12e48:	00158593          	addi	a1,a1,1
   12e4c:	00160613          	addi	a2,a2,1
   12e50:	fed794e3          	bne	a5,a3,12e38 <_vfprintf_r+0x28f4>
   12e54:	02c12e23          	sw	a2,60(sp)
   12e58:	00e12e23          	sw	a4,28(sp)
   12e5c:	02b12223          	sw	a1,36(sp)
   12e60:	02a12423          	sw	a0,40(sp)
   12e64:	02412783          	lw	a5,36(sp)
   12e68:	02812703          	lw	a4,40(sp)
   12e6c:	04812583          	lw	a1,72(sp)
   12e70:	05112023          	sw	a7,64(sp)
   12e74:	00e78533          	add	a0,a5,a4
   12e78:	04d110ef          	jal	ra,246c4 <__mulsi3>
   12e7c:	01950cb3          	add	s9,a0,s9
   12e80:	fffcca93          	not	s5,s9
   12e84:	41fada93          	srai	s5,s5,0x1f
   12e88:	04012883          	lw	a7,64(sp)
   12e8c:	015cfab3          	and	s5,s9,s5
   12e90:	e65fd06f          	j	10cf4 <_vfprintf_r+0x7b0>
   12e94:	00064783          	lbu	a5,0(a2)
   12e98:	00150513          	addi	a0,a0,1
   12e9c:	fb5ff06f          	j	12e50 <_vfprintf_r+0x290c>
   12ea0:	00012823          	sw	zero,16(sp)
   12ea4:	00078a13          	mv	s4,a5
   12ea8:	a05ff06f          	j	128ac <_vfprintf_r+0x2368>
   12eac:	02c12783          	lw	a5,44(sp)
   12eb0:	06600493          	li	s1,102
   12eb4:	00f70cb3          	add	s9,a4,a5
   12eb8:	01bc8cb3          	add	s9,s9,s11
   12ebc:	bb5ff06f          	j	12a70 <_vfprintf_r+0x252c>
   12ec0:	0d610793          	addi	a5,sp,214
   12ec4:	00069863          	bnez	a3,12ed4 <_vfprintf_r+0x2990>
   12ec8:	03000793          	li	a5,48
   12ecc:	0cf10b23          	sb	a5,214(sp)
   12ed0:	0d710793          	addi	a5,sp,215
   12ed4:	1b010713          	addi	a4,sp,432
   12ed8:	030a8a93          	addi	s5,s5,48
   12edc:	40e786b3          	sub	a3,a5,a4
   12ee0:	01578023          	sb	s5,0(a5)
   12ee4:	0dd68793          	addi	a5,a3,221
   12ee8:	02f12c23          	sw	a5,56(sp)
   12eec:	dc5fd06f          	j	10cb0 <_vfprintf_r+0x76c>
   12ef0:	0a010c93          	addi	s9,sp,160
   12ef4:	000c8593          	mv	a1,s9
   12ef8:	000a8513          	mv	a0,s5
   12efc:	05112823          	sw	a7,80(sp)
   12f00:	0bc12823          	sw	t3,176(sp)
   12f04:	05c12023          	sw	t3,64(sp)
   12f08:	0bd12a23          	sw	t4,180(sp)
   12f0c:	03d12223          	sw	t4,36(sp)
   12f10:	0be12c23          	sw	t5,184(sp)
   12f14:	03e12023          	sw	t5,32(sp)
   12f18:	0a612e23          	sw	t1,188(sp)
   12f1c:	00612e23          	sw	t1,28(sp)
   12f20:	0a012023          	sw	zero,160(sp)
   12f24:	0a012223          	sw	zero,164(sp)
   12f28:	0a012423          	sw	zero,168(sp)
   12f2c:	0a012623          	sw	zero,172(sp)
   12f30:	3640e0ef          	jal	ra,21294 <__eqtf2>
   12f34:	01c12303          	lw	t1,28(sp)
   12f38:	02012f03          	lw	t5,32(sp)
   12f3c:	02412e83          	lw	t4,36(sp)
   12f40:	04012e03          	lw	t3,64(sp)
   12f44:	05012883          	lw	a7,80(sp)
   12f48:	a8050ee3          	beqz	a0,129e4 <_vfprintf_r+0x24a0>
   12f4c:	00100793          	li	a5,1
   12f50:	41b787b3          	sub	a5,a5,s11
   12f54:	0cf12623          	sw	a5,204(sp)
   12f58:	00f90933          	add	s2,s2,a5
   12f5c:	bd1fd06f          	j	10b2c <_vfprintf_r+0x5e8>
   12f60:	02812783          	lw	a5,40(sp)
   12f64:	0017f793          	andi	a5,a5,1
   12f68:	00079463          	bnez	a5,12f70 <_vfprintf_r+0x2a2c>
   12f6c:	d65fd06f          	j	10cd0 <_vfprintf_r+0x78c>
   12f70:	d59fd06f          	j	10cc8 <_vfprintf_r+0x784>
   12f74:	00079a63          	bnez	a5,12f88 <_vfprintf_r+0x2a44>
   12f78:	00100a93          	li	s5,1
   12f7c:	06600493          	li	s1,102
   12f80:	00100c93          	li	s9,1
   12f84:	8e5ff06f          	j	12868 <_vfprintf_r+0x2324>
   12f88:	02c12783          	lw	a5,44(sp)
   12f8c:	06600493          	li	s1,102
   12f90:	00178c93          	addi	s9,a5,1
   12f94:	01bc8cb3          	add	s9,s9,s11
   12f98:	fffcca93          	not	s5,s9
   12f9c:	41fada93          	srai	s5,s5,0x1f
   12fa0:	015cfab3          	and	s5,s9,s5
   12fa4:	8c5ff06f          	j	12868 <_vfprintf_r+0x2324>
   12fa8:	00088713          	mv	a4,a7
   12fac:	bd5fe06f          	j	11b80 <_vfprintf_r+0x163c>
   12fb0:	01412783          	lw	a5,20(sp)
   12fb4:	0007ad83          	lw	s11,0(a5)
   12fb8:	00478793          	addi	a5,a5,4
   12fbc:	000dd463          	bgez	s11,12fc4 <_vfprintf_r+0x2a80>
   12fc0:	fff00d93          	li	s11,-1
   12fc4:	00144483          	lbu	s1,1(s0)
   12fc8:	00f12a23          	sw	a5,20(sp)
   12fcc:	00070413          	mv	s0,a4
   12fd0:	f2cfd06f          	j	106fc <_vfprintf_r+0x1b8>
   12fd4:	00cc5783          	lhu	a5,12(s8)
   12fd8:	0407e793          	ori	a5,a5,64
   12fdc:	00fc1623          	sh	a5,12(s8)
   12fe0:	8c9fd06f          	j	108a8 <_vfprintf_r+0x364>
   12fe4:	02012423          	sw	zero,40(sp)
   12fe8:	02012223          	sw	zero,36(sp)
   12fec:	e79ff06f          	j	12e64 <_vfprintf_r+0x2920>
   12ff0:	00200793          	li	a5,2
   12ff4:	02f12c23          	sw	a5,56(sp)
   12ff8:	cb9fd06f          	j	10cb0 <_vfprintf_r+0x76c>

00012ffc <vfprintf>:
   12ffc:	00050793          	mv	a5,a0
   13000:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   13004:	00060693          	mv	a3,a2
   13008:	00058613          	mv	a2,a1
   1300c:	00078593          	mv	a1,a5
   13010:	d34fd06f          	j	10544 <_vfprintf_r>

00013014 <__sbprintf>:
   13014:	00c5d783          	lhu	a5,12(a1)
   13018:	0645ae03          	lw	t3,100(a1)
   1301c:	00e5d303          	lhu	t1,14(a1)
   13020:	01c5a883          	lw	a7,28(a1)
   13024:	0245a803          	lw	a6,36(a1)
   13028:	b8010113          	addi	sp,sp,-1152
   1302c:	ffd7f793          	andi	a5,a5,-3
   13030:	40000713          	li	a4,1024
   13034:	46812c23          	sw	s0,1144(sp)
   13038:	00f11a23          	sh	a5,20(sp)
   1303c:	00058413          	mv	s0,a1
   13040:	07010793          	addi	a5,sp,112
   13044:	00810593          	addi	a1,sp,8
   13048:	46912a23          	sw	s1,1140(sp)
   1304c:	47212823          	sw	s2,1136(sp)
   13050:	46112e23          	sw	ra,1148(sp)
   13054:	00050913          	mv	s2,a0
   13058:	07c12623          	sw	t3,108(sp)
   1305c:	00611b23          	sh	t1,22(sp)
   13060:	03112223          	sw	a7,36(sp)
   13064:	03012623          	sw	a6,44(sp)
   13068:	00f12423          	sw	a5,8(sp)
   1306c:	00f12c23          	sw	a5,24(sp)
   13070:	00e12823          	sw	a4,16(sp)
   13074:	00e12e23          	sw	a4,28(sp)
   13078:	02012023          	sw	zero,32(sp)
   1307c:	cc8fd0ef          	jal	ra,10544 <_vfprintf_r>
   13080:	00050493          	mv	s1,a0
   13084:	02055c63          	bgez	a0,130bc <__sbprintf+0xa8>
   13088:	01415783          	lhu	a5,20(sp)
   1308c:	0407f793          	andi	a5,a5,64
   13090:	00078863          	beqz	a5,130a0 <__sbprintf+0x8c>
   13094:	00c45783          	lhu	a5,12(s0)
   13098:	0407e793          	ori	a5,a5,64
   1309c:	00f41623          	sh	a5,12(s0)
   130a0:	47c12083          	lw	ra,1148(sp)
   130a4:	47812403          	lw	s0,1144(sp)
   130a8:	47012903          	lw	s2,1136(sp)
   130ac:	00048513          	mv	a0,s1
   130b0:	47412483          	lw	s1,1140(sp)
   130b4:	48010113          	addi	sp,sp,1152
   130b8:	00008067          	ret
   130bc:	00810593          	addi	a1,sp,8
   130c0:	00090513          	mv	a0,s2
   130c4:	4fc000ef          	jal	ra,135c0 <_fflush_r>
   130c8:	fc0500e3          	beqz	a0,13088 <__sbprintf+0x74>
   130cc:	fff00493          	li	s1,-1
   130d0:	fb9ff06f          	j	13088 <__sbprintf+0x74>

000130d4 <__swsetup_r>:
   130d4:	1c01a783          	lw	a5,448(gp) # 26f68 <_impure_ptr>
   130d8:	ff010113          	addi	sp,sp,-16
   130dc:	00812423          	sw	s0,8(sp)
   130e0:	00912223          	sw	s1,4(sp)
   130e4:	00112623          	sw	ra,12(sp)
   130e8:	00050493          	mv	s1,a0
   130ec:	00058413          	mv	s0,a1
   130f0:	00078663          	beqz	a5,130fc <__swsetup_r+0x28>
   130f4:	0387a703          	lw	a4,56(a5)
   130f8:	0e070063          	beqz	a4,131d8 <__swsetup_r+0x104>
   130fc:	00c41703          	lh	a4,12(s0)
   13100:	01071793          	slli	a5,a4,0x10
   13104:	00877693          	andi	a3,a4,8
   13108:	0107d793          	srli	a5,a5,0x10
   1310c:	04068063          	beqz	a3,1314c <__swsetup_r+0x78>
   13110:	01042683          	lw	a3,16(s0)
   13114:	06068063          	beqz	a3,13174 <__swsetup_r+0xa0>
   13118:	0017f613          	andi	a2,a5,1
   1311c:	08060463          	beqz	a2,131a4 <__swsetup_r+0xd0>
   13120:	01442603          	lw	a2,20(s0)
   13124:	00042423          	sw	zero,8(s0)
   13128:	00000513          	li	a0,0
   1312c:	40c00633          	neg	a2,a2
   13130:	00c42c23          	sw	a2,24(s0)
   13134:	08068663          	beqz	a3,131c0 <__swsetup_r+0xec>
   13138:	00c12083          	lw	ra,12(sp)
   1313c:	00812403          	lw	s0,8(sp)
   13140:	00412483          	lw	s1,4(sp)
   13144:	01010113          	addi	sp,sp,16
   13148:	00008067          	ret
   1314c:	0107f693          	andi	a3,a5,16
   13150:	0c068463          	beqz	a3,13218 <__swsetup_r+0x144>
   13154:	0047f793          	andi	a5,a5,4
   13158:	08079663          	bnez	a5,131e4 <__swsetup_r+0x110>
   1315c:	01042683          	lw	a3,16(s0)
   13160:	00876713          	ori	a4,a4,8
   13164:	01071793          	slli	a5,a4,0x10
   13168:	00e41623          	sh	a4,12(s0)
   1316c:	0107d793          	srli	a5,a5,0x10
   13170:	fa0694e3          	bnez	a3,13118 <__swsetup_r+0x44>
   13174:	2807f613          	andi	a2,a5,640
   13178:	20000593          	li	a1,512
   1317c:	f8b60ee3          	beq	a2,a1,13118 <__swsetup_r+0x44>
   13180:	00040593          	mv	a1,s0
   13184:	00048513          	mv	a0,s1
   13188:	75d030ef          	jal	ra,170e4 <__smakebuf_r>
   1318c:	00c41703          	lh	a4,12(s0)
   13190:	01042683          	lw	a3,16(s0)
   13194:	01071793          	slli	a5,a4,0x10
   13198:	0107d793          	srli	a5,a5,0x10
   1319c:	0017f613          	andi	a2,a5,1
   131a0:	f80610e3          	bnez	a2,13120 <__swsetup_r+0x4c>
   131a4:	0027f613          	andi	a2,a5,2
   131a8:	00000593          	li	a1,0
   131ac:	00061463          	bnez	a2,131b4 <__swsetup_r+0xe0>
   131b0:	01442583          	lw	a1,20(s0)
   131b4:	00b42423          	sw	a1,8(s0)
   131b8:	00000513          	li	a0,0
   131bc:	f6069ee3          	bnez	a3,13138 <__swsetup_r+0x64>
   131c0:	0807f793          	andi	a5,a5,128
   131c4:	f6078ae3          	beqz	a5,13138 <__swsetup_r+0x64>
   131c8:	04076713          	ori	a4,a4,64
   131cc:	00e41623          	sh	a4,12(s0)
   131d0:	fff00513          	li	a0,-1
   131d4:	f65ff06f          	j	13138 <__swsetup_r+0x64>
   131d8:	00078513          	mv	a0,a5
   131dc:	78c000ef          	jal	ra,13968 <__sinit>
   131e0:	f1dff06f          	j	130fc <__swsetup_r+0x28>
   131e4:	03042583          	lw	a1,48(s0)
   131e8:	00058e63          	beqz	a1,13204 <__swsetup_r+0x130>
   131ec:	04040793          	addi	a5,s0,64
   131f0:	00f58863          	beq	a1,a5,13200 <__swsetup_r+0x12c>
   131f4:	00048513          	mv	a0,s1
   131f8:	13d000ef          	jal	ra,13b34 <_free_r>
   131fc:	00c41703          	lh	a4,12(s0)
   13200:	02042823          	sw	zero,48(s0)
   13204:	01042683          	lw	a3,16(s0)
   13208:	fdb77713          	andi	a4,a4,-37
   1320c:	00042223          	sw	zero,4(s0)
   13210:	00d42023          	sw	a3,0(s0)
   13214:	f4dff06f          	j	13160 <__swsetup_r+0x8c>
   13218:	00900793          	li	a5,9
   1321c:	00f4a023          	sw	a5,0(s1)
   13220:	04076713          	ori	a4,a4,64
   13224:	00e41623          	sh	a4,12(s0)
   13228:	fff00513          	li	a0,-1
   1322c:	f0dff06f          	j	13138 <__swsetup_r+0x64>

00013230 <__call_exitprocs>:
   13230:	fd010113          	addi	sp,sp,-48
   13234:	01412c23          	sw	s4,24(sp)
   13238:	1b81aa03          	lw	s4,440(gp) # 26f60 <_global_impure_ptr>
   1323c:	03212023          	sw	s2,32(sp)
   13240:	02112623          	sw	ra,44(sp)
   13244:	148a2903          	lw	s2,328(s4)
   13248:	02812423          	sw	s0,40(sp)
   1324c:	02912223          	sw	s1,36(sp)
   13250:	01312e23          	sw	s3,28(sp)
   13254:	01512a23          	sw	s5,20(sp)
   13258:	01612823          	sw	s6,16(sp)
   1325c:	01712623          	sw	s7,12(sp)
   13260:	01812423          	sw	s8,8(sp)
   13264:	04090063          	beqz	s2,132a4 <__call_exitprocs+0x74>
   13268:	00050b13          	mv	s6,a0
   1326c:	00058b93          	mv	s7,a1
   13270:	00100a93          	li	s5,1
   13274:	fff00993          	li	s3,-1
   13278:	00492483          	lw	s1,4(s2) # 3ffe0004 <__BSS_END__+0x3ffb9034>
   1327c:	fff48413          	addi	s0,s1,-1
   13280:	02044263          	bltz	s0,132a4 <__call_exitprocs+0x74>
   13284:	00249493          	slli	s1,s1,0x2
   13288:	009904b3          	add	s1,s2,s1
   1328c:	040b8463          	beqz	s7,132d4 <__call_exitprocs+0xa4>
   13290:	1044a783          	lw	a5,260(s1)
   13294:	05778063          	beq	a5,s7,132d4 <__call_exitprocs+0xa4>
   13298:	fff40413          	addi	s0,s0,-1
   1329c:	ffc48493          	addi	s1,s1,-4
   132a0:	ff3416e3          	bne	s0,s3,1328c <__call_exitprocs+0x5c>
   132a4:	02c12083          	lw	ra,44(sp)
   132a8:	02812403          	lw	s0,40(sp)
   132ac:	02412483          	lw	s1,36(sp)
   132b0:	02012903          	lw	s2,32(sp)
   132b4:	01c12983          	lw	s3,28(sp)
   132b8:	01812a03          	lw	s4,24(sp)
   132bc:	01412a83          	lw	s5,20(sp)
   132c0:	01012b03          	lw	s6,16(sp)
   132c4:	00c12b83          	lw	s7,12(sp)
   132c8:	00812c03          	lw	s8,8(sp)
   132cc:	03010113          	addi	sp,sp,48
   132d0:	00008067          	ret
   132d4:	00492783          	lw	a5,4(s2)
   132d8:	0044a683          	lw	a3,4(s1)
   132dc:	fff78793          	addi	a5,a5,-1
   132e0:	04878e63          	beq	a5,s0,1333c <__call_exitprocs+0x10c>
   132e4:	0004a223          	sw	zero,4(s1)
   132e8:	fa0688e3          	beqz	a3,13298 <__call_exitprocs+0x68>
   132ec:	18892783          	lw	a5,392(s2)
   132f0:	008a9733          	sll	a4,s5,s0
   132f4:	00492c03          	lw	s8,4(s2)
   132f8:	00f777b3          	and	a5,a4,a5
   132fc:	02079263          	bnez	a5,13320 <__call_exitprocs+0xf0>
   13300:	000680e7          	jalr	a3
   13304:	00492703          	lw	a4,4(s2)
   13308:	148a2783          	lw	a5,328(s4)
   1330c:	01871463          	bne	a4,s8,13314 <__call_exitprocs+0xe4>
   13310:	f8f904e3          	beq	s2,a5,13298 <__call_exitprocs+0x68>
   13314:	f80788e3          	beqz	a5,132a4 <__call_exitprocs+0x74>
   13318:	00078913          	mv	s2,a5
   1331c:	f5dff06f          	j	13278 <__call_exitprocs+0x48>
   13320:	18c92783          	lw	a5,396(s2)
   13324:	0844a583          	lw	a1,132(s1)
   13328:	00f77733          	and	a4,a4,a5
   1332c:	00071c63          	bnez	a4,13344 <__call_exitprocs+0x114>
   13330:	000b0513          	mv	a0,s6
   13334:	000680e7          	jalr	a3
   13338:	fcdff06f          	j	13304 <__call_exitprocs+0xd4>
   1333c:	00892223          	sw	s0,4(s2)
   13340:	fa9ff06f          	j	132e8 <__call_exitprocs+0xb8>
   13344:	00058513          	mv	a0,a1
   13348:	000680e7          	jalr	a3
   1334c:	fb9ff06f          	j	13304 <__call_exitprocs+0xd4>

00013350 <atexit>:
   13350:	00050593          	mv	a1,a0
   13354:	00000693          	li	a3,0
   13358:	00000613          	li	a2,0
   1335c:	00000513          	li	a0,0
   13360:	3440a06f          	j	1d6a4 <__register_exitproc>

00013364 <__sflush_r>:
   13364:	00c59783          	lh	a5,12(a1)
   13368:	fe010113          	addi	sp,sp,-32
   1336c:	00812c23          	sw	s0,24(sp)
   13370:	01312623          	sw	s3,12(sp)
   13374:	00112e23          	sw	ra,28(sp)
   13378:	00912a23          	sw	s1,20(sp)
   1337c:	01212823          	sw	s2,16(sp)
   13380:	0087f693          	andi	a3,a5,8
   13384:	00058413          	mv	s0,a1
   13388:	00050993          	mv	s3,a0
   1338c:	10069a63          	bnez	a3,134a0 <__sflush_r+0x13c>
   13390:	00001737          	lui	a4,0x1
   13394:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   13398:	0045a683          	lw	a3,4(a1)
   1339c:	00e7e7b3          	or	a5,a5,a4
   133a0:	00f59623          	sh	a5,12(a1)
   133a4:	18d05463          	blez	a3,1352c <__sflush_r+0x1c8>
   133a8:	02842703          	lw	a4,40(s0)
   133ac:	0c070a63          	beqz	a4,13480 <__sflush_r+0x11c>
   133b0:	0009a483          	lw	s1,0(s3)
   133b4:	01079693          	slli	a3,a5,0x10
   133b8:	0009a023          	sw	zero,0(s3)
   133bc:	01379613          	slli	a2,a5,0x13
   133c0:	01c42583          	lw	a1,28(s0)
   133c4:	0106d693          	srli	a3,a3,0x10
   133c8:	16064863          	bltz	a2,13538 <__sflush_r+0x1d4>
   133cc:	00100693          	li	a3,1
   133d0:	00000613          	li	a2,0
   133d4:	00098513          	mv	a0,s3
   133d8:	000700e7          	jalr	a4
   133dc:	fff00793          	li	a5,-1
   133e0:	18f50c63          	beq	a0,a5,13578 <__sflush_r+0x214>
   133e4:	00c45683          	lhu	a3,12(s0)
   133e8:	02842703          	lw	a4,40(s0)
   133ec:	01c42583          	lw	a1,28(s0)
   133f0:	0046f693          	andi	a3,a3,4
   133f4:	00068e63          	beqz	a3,13410 <__sflush_r+0xac>
   133f8:	00442683          	lw	a3,4(s0)
   133fc:	03042783          	lw	a5,48(s0)
   13400:	40d50533          	sub	a0,a0,a3
   13404:	00078663          	beqz	a5,13410 <__sflush_r+0xac>
   13408:	03c42783          	lw	a5,60(s0)
   1340c:	40f50533          	sub	a0,a0,a5
   13410:	00050613          	mv	a2,a0
   13414:	00000693          	li	a3,0
   13418:	00098513          	mv	a0,s3
   1341c:	000700e7          	jalr	a4
   13420:	fff00793          	li	a5,-1
   13424:	10f51e63          	bne	a0,a5,13540 <__sflush_r+0x1dc>
   13428:	0009a703          	lw	a4,0(s3)
   1342c:	00c41783          	lh	a5,12(s0)
   13430:	16070863          	beqz	a4,135a0 <__sflush_r+0x23c>
   13434:	01d00693          	li	a3,29
   13438:	00d70663          	beq	a4,a3,13444 <__sflush_r+0xe0>
   1343c:	01600693          	li	a3,22
   13440:	0cd71463          	bne	a4,a3,13508 <__sflush_r+0x1a4>
   13444:	01042683          	lw	a3,16(s0)
   13448:	fffff737          	lui	a4,0xfffff
   1344c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd882f>
   13450:	00e7f7b3          	and	a5,a5,a4
   13454:	00f41623          	sh	a5,12(s0)
   13458:	00042223          	sw	zero,4(s0)
   1345c:	00d42023          	sw	a3,0(s0)
   13460:	03042583          	lw	a1,48(s0)
   13464:	0099a023          	sw	s1,0(s3)
   13468:	00058c63          	beqz	a1,13480 <__sflush_r+0x11c>
   1346c:	04040793          	addi	a5,s0,64
   13470:	00f58663          	beq	a1,a5,1347c <__sflush_r+0x118>
   13474:	00098513          	mv	a0,s3
   13478:	6bc000ef          	jal	ra,13b34 <_free_r>
   1347c:	02042823          	sw	zero,48(s0)
   13480:	00000513          	li	a0,0
   13484:	01c12083          	lw	ra,28(sp)
   13488:	01812403          	lw	s0,24(sp)
   1348c:	01412483          	lw	s1,20(sp)
   13490:	01012903          	lw	s2,16(sp)
   13494:	00c12983          	lw	s3,12(sp)
   13498:	02010113          	addi	sp,sp,32
   1349c:	00008067          	ret
   134a0:	0105a903          	lw	s2,16(a1)
   134a4:	fc090ee3          	beqz	s2,13480 <__sflush_r+0x11c>
   134a8:	0005a483          	lw	s1,0(a1)
   134ac:	01079713          	slli	a4,a5,0x10
   134b0:	01075713          	srli	a4,a4,0x10
   134b4:	00377713          	andi	a4,a4,3
   134b8:	0125a023          	sw	s2,0(a1)
   134bc:	412484b3          	sub	s1,s1,s2
   134c0:	00000793          	li	a5,0
   134c4:	00071463          	bnez	a4,134cc <__sflush_r+0x168>
   134c8:	0145a783          	lw	a5,20(a1)
   134cc:	00f42423          	sw	a5,8(s0)
   134d0:	00904863          	bgtz	s1,134e0 <__sflush_r+0x17c>
   134d4:	fadff06f          	j	13480 <__sflush_r+0x11c>
   134d8:	00a90933          	add	s2,s2,a0
   134dc:	fa9052e3          	blez	s1,13480 <__sflush_r+0x11c>
   134e0:	02442783          	lw	a5,36(s0)
   134e4:	01c42583          	lw	a1,28(s0)
   134e8:	00048693          	mv	a3,s1
   134ec:	00090613          	mv	a2,s2
   134f0:	00098513          	mv	a0,s3
   134f4:	000780e7          	jalr	a5
   134f8:	40a484b3          	sub	s1,s1,a0
   134fc:	fca04ee3          	bgtz	a0,134d8 <__sflush_r+0x174>
   13500:	00c45783          	lhu	a5,12(s0)
   13504:	fff00513          	li	a0,-1
   13508:	0407e793          	ori	a5,a5,64
   1350c:	01c12083          	lw	ra,28(sp)
   13510:	00f41623          	sh	a5,12(s0)
   13514:	01812403          	lw	s0,24(sp)
   13518:	01412483          	lw	s1,20(sp)
   1351c:	01012903          	lw	s2,16(sp)
   13520:	00c12983          	lw	s3,12(sp)
   13524:	02010113          	addi	sp,sp,32
   13528:	00008067          	ret
   1352c:	03c5a703          	lw	a4,60(a1)
   13530:	e6e04ce3          	bgtz	a4,133a8 <__sflush_r+0x44>
   13534:	f4dff06f          	j	13480 <__sflush_r+0x11c>
   13538:	05042503          	lw	a0,80(s0)
   1353c:	eb5ff06f          	j	133f0 <__sflush_r+0x8c>
   13540:	00c45783          	lhu	a5,12(s0)
   13544:	fffff737          	lui	a4,0xfffff
   13548:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd882f>
   1354c:	00e7f7b3          	and	a5,a5,a4
   13550:	01042683          	lw	a3,16(s0)
   13554:	01079793          	slli	a5,a5,0x10
   13558:	4107d793          	srai	a5,a5,0x10
   1355c:	00f41623          	sh	a5,12(s0)
   13560:	00042223          	sw	zero,4(s0)
   13564:	00d42023          	sw	a3,0(s0)
   13568:	01379713          	slli	a4,a5,0x13
   1356c:	ee075ae3          	bgez	a4,13460 <__sflush_r+0xfc>
   13570:	04a42823          	sw	a0,80(s0)
   13574:	eedff06f          	j	13460 <__sflush_r+0xfc>
   13578:	0009a783          	lw	a5,0(s3)
   1357c:	e60784e3          	beqz	a5,133e4 <__sflush_r+0x80>
   13580:	01d00713          	li	a4,29
   13584:	02e78863          	beq	a5,a4,135b4 <__sflush_r+0x250>
   13588:	01600713          	li	a4,22
   1358c:	02e78463          	beq	a5,a4,135b4 <__sflush_r+0x250>
   13590:	00c45783          	lhu	a5,12(s0)
   13594:	0407e793          	ori	a5,a5,64
   13598:	00f41623          	sh	a5,12(s0)
   1359c:	ee9ff06f          	j	13484 <__sflush_r+0x120>
   135a0:	fffff737          	lui	a4,0xfffff
   135a4:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd882f>
   135a8:	01042683          	lw	a3,16(s0)
   135ac:	00e7f7b3          	and	a5,a5,a4
   135b0:	fadff06f          	j	1355c <__sflush_r+0x1f8>
   135b4:	0099a023          	sw	s1,0(s3)
   135b8:	00000513          	li	a0,0
   135bc:	ec9ff06f          	j	13484 <__sflush_r+0x120>

000135c0 <_fflush_r>:
   135c0:	fe010113          	addi	sp,sp,-32
   135c4:	00812c23          	sw	s0,24(sp)
   135c8:	00112e23          	sw	ra,28(sp)
   135cc:	00050413          	mv	s0,a0
   135d0:	00050663          	beqz	a0,135dc <_fflush_r+0x1c>
   135d4:	03852783          	lw	a5,56(a0)
   135d8:	02078063          	beqz	a5,135f8 <_fflush_r+0x38>
   135dc:	00c59783          	lh	a5,12(a1)
   135e0:	02079663          	bnez	a5,1360c <_fflush_r+0x4c>
   135e4:	01c12083          	lw	ra,28(sp)
   135e8:	01812403          	lw	s0,24(sp)
   135ec:	00000513          	li	a0,0
   135f0:	02010113          	addi	sp,sp,32
   135f4:	00008067          	ret
   135f8:	00b12623          	sw	a1,12(sp)
   135fc:	36c000ef          	jal	ra,13968 <__sinit>
   13600:	00c12583          	lw	a1,12(sp)
   13604:	00c59783          	lh	a5,12(a1)
   13608:	fc078ee3          	beqz	a5,135e4 <_fflush_r+0x24>
   1360c:	00040513          	mv	a0,s0
   13610:	01812403          	lw	s0,24(sp)
   13614:	01c12083          	lw	ra,28(sp)
   13618:	02010113          	addi	sp,sp,32
   1361c:	d49ff06f          	j	13364 <__sflush_r>

00013620 <fflush>:
   13620:	00050593          	mv	a1,a0
   13624:	00050663          	beqz	a0,13630 <fflush+0x10>
   13628:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1362c:	f95ff06f          	j	135c0 <_fflush_r>
   13630:	1b81a503          	lw	a0,440(gp) # 26f60 <_global_impure_ptr>
   13634:	000135b7          	lui	a1,0x13
   13638:	5c058593          	addi	a1,a1,1472 # 135c0 <_fflush_r>
   1363c:	5510006f          	j	1438c <_fwalk_reent>

00013640 <__fp_lock>:
   13640:	00000513          	li	a0,0
   13644:	00008067          	ret

00013648 <_cleanup_r>:
   13648:	0001e5b7          	lui	a1,0x1e
   1364c:	85c58593          	addi	a1,a1,-1956 # 1d85c <_fclose_r>
   13650:	53d0006f          	j	1438c <_fwalk_reent>

00013654 <__sinit.part.0>:
   13654:	fe010113          	addi	sp,sp,-32
   13658:	000137b7          	lui	a5,0x13
   1365c:	00112e23          	sw	ra,28(sp)
   13660:	00812c23          	sw	s0,24(sp)
   13664:	00912a23          	sw	s1,20(sp)
   13668:	01212823          	sw	s2,16(sp)
   1366c:	01312623          	sw	s3,12(sp)
   13670:	01412423          	sw	s4,8(sp)
   13674:	01512223          	sw	s5,4(sp)
   13678:	01612023          	sw	s6,0(sp)
   1367c:	00452403          	lw	s0,4(a0)
   13680:	64878793          	addi	a5,a5,1608 # 13648 <_cleanup_r>
   13684:	02f52e23          	sw	a5,60(a0)
   13688:	2ec50713          	addi	a4,a0,748
   1368c:	00300793          	li	a5,3
   13690:	2ee52423          	sw	a4,744(a0)
   13694:	2ef52223          	sw	a5,740(a0)
   13698:	2e052023          	sw	zero,736(a0)
   1369c:	00400793          	li	a5,4
   136a0:	00050913          	mv	s2,a0
   136a4:	00f42623          	sw	a5,12(s0)
   136a8:	00800613          	li	a2,8
   136ac:	00000593          	li	a1,0
   136b0:	06042223          	sw	zero,100(s0)
   136b4:	00042023          	sw	zero,0(s0)
   136b8:	00042223          	sw	zero,4(s0)
   136bc:	00042423          	sw	zero,8(s0)
   136c0:	00042823          	sw	zero,16(s0)
   136c4:	00042a23          	sw	zero,20(s0)
   136c8:	00042c23          	sw	zero,24(s0)
   136cc:	05c40513          	addi	a0,s0,92
   136d0:	ba5fc0ef          	jal	ra,10274 <memset>
   136d4:	00019b37          	lui	s6,0x19
   136d8:	00892483          	lw	s1,8(s2)
   136dc:	00019ab7          	lui	s5,0x19
   136e0:	00019a37          	lui	s4,0x19
   136e4:	000199b7          	lui	s3,0x19
   136e8:	528b0b13          	addi	s6,s6,1320 # 19528 <__sread>
   136ec:	58ca8a93          	addi	s5,s5,1420 # 1958c <__swrite>
   136f0:	614a0a13          	addi	s4,s4,1556 # 19614 <__sseek>
   136f4:	67c98993          	addi	s3,s3,1660 # 1967c <__sclose>
   136f8:	000107b7          	lui	a5,0x10
   136fc:	03642023          	sw	s6,32(s0)
   13700:	03542223          	sw	s5,36(s0)
   13704:	03442423          	sw	s4,40(s0)
   13708:	03342623          	sw	s3,44(s0)
   1370c:	00842e23          	sw	s0,28(s0)
   13710:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0x6b>
   13714:	00f4a623          	sw	a5,12(s1)
   13718:	00800613          	li	a2,8
   1371c:	00000593          	li	a1,0
   13720:	0604a223          	sw	zero,100(s1)
   13724:	0004a023          	sw	zero,0(s1)
   13728:	0004a223          	sw	zero,4(s1)
   1372c:	0004a423          	sw	zero,8(s1)
   13730:	0004a823          	sw	zero,16(s1)
   13734:	0004aa23          	sw	zero,20(s1)
   13738:	0004ac23          	sw	zero,24(s1)
   1373c:	05c48513          	addi	a0,s1,92
   13740:	b35fc0ef          	jal	ra,10274 <memset>
   13744:	00c92403          	lw	s0,12(s2)
   13748:	000207b7          	lui	a5,0x20
   1374c:	0364a023          	sw	s6,32(s1)
   13750:	0354a223          	sw	s5,36(s1)
   13754:	0344a423          	sw	s4,40(s1)
   13758:	0334a623          	sw	s3,44(s1)
   1375c:	0094ae23          	sw	s1,28(s1)
   13760:	01278793          	addi	a5,a5,18 # 20012 <__umoddi3+0xc6>
   13764:	00f42623          	sw	a5,12(s0)
   13768:	06042223          	sw	zero,100(s0)
   1376c:	00042023          	sw	zero,0(s0)
   13770:	00042223          	sw	zero,4(s0)
   13774:	00042423          	sw	zero,8(s0)
   13778:	00042823          	sw	zero,16(s0)
   1377c:	00042a23          	sw	zero,20(s0)
   13780:	00042c23          	sw	zero,24(s0)
   13784:	05c40513          	addi	a0,s0,92
   13788:	00800613          	li	a2,8
   1378c:	00000593          	li	a1,0
   13790:	ae5fc0ef          	jal	ra,10274 <memset>
   13794:	01c12083          	lw	ra,28(sp)
   13798:	03642023          	sw	s6,32(s0)
   1379c:	03542223          	sw	s5,36(s0)
   137a0:	03442423          	sw	s4,40(s0)
   137a4:	03342623          	sw	s3,44(s0)
   137a8:	00842e23          	sw	s0,28(s0)
   137ac:	01812403          	lw	s0,24(sp)
   137b0:	00100793          	li	a5,1
   137b4:	02f92c23          	sw	a5,56(s2)
   137b8:	01412483          	lw	s1,20(sp)
   137bc:	01012903          	lw	s2,16(sp)
   137c0:	00c12983          	lw	s3,12(sp)
   137c4:	00812a03          	lw	s4,8(sp)
   137c8:	00412a83          	lw	s5,4(sp)
   137cc:	00012b03          	lw	s6,0(sp)
   137d0:	02010113          	addi	sp,sp,32
   137d4:	00008067          	ret

000137d8 <__fp_unlock>:
   137d8:	00000513          	li	a0,0
   137dc:	00008067          	ret

000137e0 <__sfmoreglue>:
   137e0:	ff010113          	addi	sp,sp,-16
   137e4:	fff58613          	addi	a2,a1,-1
   137e8:	00812423          	sw	s0,8(sp)
   137ec:	00161413          	slli	s0,a2,0x1
   137f0:	00c40433          	add	s0,s0,a2
   137f4:	00241413          	slli	s0,s0,0x2
   137f8:	00c40433          	add	s0,s0,a2
   137fc:	00341413          	slli	s0,s0,0x3
   13800:	01212023          	sw	s2,0(sp)
   13804:	00058913          	mv	s2,a1
   13808:	07440593          	addi	a1,s0,116
   1380c:	00912223          	sw	s1,4(sp)
   13810:	00112623          	sw	ra,12(sp)
   13814:	1f1030ef          	jal	ra,17204 <_malloc_r>
   13818:	00050493          	mv	s1,a0
   1381c:	02050063          	beqz	a0,1383c <__sfmoreglue+0x5c>
   13820:	00c50513          	addi	a0,a0,12
   13824:	0004a023          	sw	zero,0(s1)
   13828:	0124a223          	sw	s2,4(s1)
   1382c:	00a4a423          	sw	a0,8(s1)
   13830:	06840613          	addi	a2,s0,104
   13834:	00000593          	li	a1,0
   13838:	a3dfc0ef          	jal	ra,10274 <memset>
   1383c:	00c12083          	lw	ra,12(sp)
   13840:	00812403          	lw	s0,8(sp)
   13844:	00012903          	lw	s2,0(sp)
   13848:	00048513          	mv	a0,s1
   1384c:	00412483          	lw	s1,4(sp)
   13850:	01010113          	addi	sp,sp,16
   13854:	00008067          	ret

00013858 <__sfp>:
   13858:	fe010113          	addi	sp,sp,-32
   1385c:	01212823          	sw	s2,16(sp)
   13860:	1b81a903          	lw	s2,440(gp) # 26f60 <_global_impure_ptr>
   13864:	01312623          	sw	s3,12(sp)
   13868:	00112e23          	sw	ra,28(sp)
   1386c:	03892783          	lw	a5,56(s2)
   13870:	00812c23          	sw	s0,24(sp)
   13874:	00912a23          	sw	s1,20(sp)
   13878:	00050993          	mv	s3,a0
   1387c:	0a078663          	beqz	a5,13928 <__sfp+0xd0>
   13880:	2e090913          	addi	s2,s2,736
   13884:	fff00493          	li	s1,-1
   13888:	00492783          	lw	a5,4(s2)
   1388c:	00892403          	lw	s0,8(s2)
   13890:	fff78793          	addi	a5,a5,-1
   13894:	0007d863          	bgez	a5,138a4 <__sfp+0x4c>
   13898:	0800006f          	j	13918 <__sfp+0xc0>
   1389c:	06840413          	addi	s0,s0,104
   138a0:	06978c63          	beq	a5,s1,13918 <__sfp+0xc0>
   138a4:	00c41703          	lh	a4,12(s0)
   138a8:	fff78793          	addi	a5,a5,-1
   138ac:	fe0718e3          	bnez	a4,1389c <__sfp+0x44>
   138b0:	ffff07b7          	lui	a5,0xffff0
   138b4:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffc9031>
   138b8:	06042223          	sw	zero,100(s0)
   138bc:	00042023          	sw	zero,0(s0)
   138c0:	00042223          	sw	zero,4(s0)
   138c4:	00042423          	sw	zero,8(s0)
   138c8:	00f42623          	sw	a5,12(s0)
   138cc:	00042823          	sw	zero,16(s0)
   138d0:	00042a23          	sw	zero,20(s0)
   138d4:	00042c23          	sw	zero,24(s0)
   138d8:	00800613          	li	a2,8
   138dc:	00000593          	li	a1,0
   138e0:	05c40513          	addi	a0,s0,92
   138e4:	991fc0ef          	jal	ra,10274 <memset>
   138e8:	02042823          	sw	zero,48(s0)
   138ec:	02042a23          	sw	zero,52(s0)
   138f0:	04042223          	sw	zero,68(s0)
   138f4:	04042423          	sw	zero,72(s0)
   138f8:	01c12083          	lw	ra,28(sp)
   138fc:	00040513          	mv	a0,s0
   13900:	01812403          	lw	s0,24(sp)
   13904:	01412483          	lw	s1,20(sp)
   13908:	01012903          	lw	s2,16(sp)
   1390c:	00c12983          	lw	s3,12(sp)
   13910:	02010113          	addi	sp,sp,32
   13914:	00008067          	ret
   13918:	00092403          	lw	s0,0(s2)
   1391c:	00040c63          	beqz	s0,13934 <__sfp+0xdc>
   13920:	00040913          	mv	s2,s0
   13924:	f65ff06f          	j	13888 <__sfp+0x30>
   13928:	00090513          	mv	a0,s2
   1392c:	d29ff0ef          	jal	ra,13654 <__sinit.part.0>
   13930:	f51ff06f          	j	13880 <__sfp+0x28>
   13934:	00400593          	li	a1,4
   13938:	00098513          	mv	a0,s3
   1393c:	ea5ff0ef          	jal	ra,137e0 <__sfmoreglue>
   13940:	00a92023          	sw	a0,0(s2)
   13944:	00050413          	mv	s0,a0
   13948:	fc051ce3          	bnez	a0,13920 <__sfp+0xc8>
   1394c:	00c00793          	li	a5,12
   13950:	00f9a023          	sw	a5,0(s3)
   13954:	fa5ff06f          	j	138f8 <__sfp+0xa0>

00013958 <_cleanup>:
   13958:	1b81a503          	lw	a0,440(gp) # 26f60 <_global_impure_ptr>
   1395c:	0001e5b7          	lui	a1,0x1e
   13960:	85c58593          	addi	a1,a1,-1956 # 1d85c <_fclose_r>
   13964:	2290006f          	j	1438c <_fwalk_reent>

00013968 <__sinit>:
   13968:	03852783          	lw	a5,56(a0)
   1396c:	00078463          	beqz	a5,13974 <__sinit+0xc>
   13970:	00008067          	ret
   13974:	ce1ff06f          	j	13654 <__sinit.part.0>

00013978 <__sfp_lock_acquire>:
   13978:	00008067          	ret

0001397c <__sfp_lock_release>:
   1397c:	00008067          	ret

00013980 <__sinit_lock_acquire>:
   13980:	00008067          	ret

00013984 <__sinit_lock_release>:
   13984:	00008067          	ret

00013988 <__fp_lock_all>:
   13988:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1398c:	000135b7          	lui	a1,0x13
   13990:	64058593          	addi	a1,a1,1600 # 13640 <__fp_lock>
   13994:	1550006f          	j	142e8 <_fwalk>

00013998 <__fp_unlock_all>:
   13998:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1399c:	000135b7          	lui	a1,0x13
   139a0:	7d858593          	addi	a1,a1,2008 # 137d8 <__fp_unlock>
   139a4:	1450006f          	j	142e8 <_fwalk>

000139a8 <__libc_fini_array>:
   139a8:	ff010113          	addi	sp,sp,-16
   139ac:	00812423          	sw	s0,8(sp)
   139b0:	000267b7          	lui	a5,0x26
   139b4:	00026437          	lui	s0,0x26
   139b8:	5a040413          	addi	s0,s0,1440 # 265a0 <__init_array_end>
   139bc:	5a478793          	addi	a5,a5,1444 # 265a4 <__fini_array_end>
   139c0:	408787b3          	sub	a5,a5,s0
   139c4:	00912223          	sw	s1,4(sp)
   139c8:	00112623          	sw	ra,12(sp)
   139cc:	4027d493          	srai	s1,a5,0x2
   139d0:	02048063          	beqz	s1,139f0 <__libc_fini_array+0x48>
   139d4:	ffc78793          	addi	a5,a5,-4
   139d8:	00878433          	add	s0,a5,s0
   139dc:	00042783          	lw	a5,0(s0)
   139e0:	fff48493          	addi	s1,s1,-1
   139e4:	ffc40413          	addi	s0,s0,-4
   139e8:	000780e7          	jalr	a5
   139ec:	fe0498e3          	bnez	s1,139dc <__libc_fini_array+0x34>
   139f0:	00c12083          	lw	ra,12(sp)
   139f4:	00812403          	lw	s0,8(sp)
   139f8:	00412483          	lw	s1,4(sp)
   139fc:	01010113          	addi	sp,sp,16
   13a00:	00008067          	ret

00013a04 <_malloc_trim_r>:
   13a04:	fe010113          	addi	sp,sp,-32
   13a08:	01312623          	sw	s3,12(sp)
   13a0c:	00812c23          	sw	s0,24(sp)
   13a10:	00912a23          	sw	s1,20(sp)
   13a14:	01212823          	sw	s2,16(sp)
   13a18:	01412423          	sw	s4,8(sp)
   13a1c:	00112e23          	sw	ra,28(sp)
   13a20:	00058a13          	mv	s4,a1
   13a24:	00050913          	mv	s2,a0
   13a28:	c2818993          	addi	s3,gp,-984 # 269d0 <__malloc_av_>
   13a2c:	280040ef          	jal	ra,17cac <__malloc_lock>
   13a30:	0089a703          	lw	a4,8(s3)
   13a34:	000017b7          	lui	a5,0x1
   13a38:	fef78413          	addi	s0,a5,-17 # fef <register_fini-0xf085>
   13a3c:	00472483          	lw	s1,4(a4)
   13a40:	41440433          	sub	s0,s0,s4
   13a44:	ffc4f493          	andi	s1,s1,-4
   13a48:	00940433          	add	s0,s0,s1
   13a4c:	00c45413          	srli	s0,s0,0xc
   13a50:	fff40413          	addi	s0,s0,-1
   13a54:	00c41413          	slli	s0,s0,0xc
   13a58:	00f44e63          	blt	s0,a5,13a74 <_malloc_trim_r+0x70>
   13a5c:	00000593          	li	a1,0
   13a60:	00090513          	mv	a0,s2
   13a64:	185050ef          	jal	ra,193e8 <_sbrk_r>
   13a68:	0089a783          	lw	a5,8(s3)
   13a6c:	009787b3          	add	a5,a5,s1
   13a70:	02f50863          	beq	a0,a5,13aa0 <_malloc_trim_r+0x9c>
   13a74:	00090513          	mv	a0,s2
   13a78:	238040ef          	jal	ra,17cb0 <__malloc_unlock>
   13a7c:	01c12083          	lw	ra,28(sp)
   13a80:	01812403          	lw	s0,24(sp)
   13a84:	01412483          	lw	s1,20(sp)
   13a88:	01012903          	lw	s2,16(sp)
   13a8c:	00c12983          	lw	s3,12(sp)
   13a90:	00812a03          	lw	s4,8(sp)
   13a94:	00000513          	li	a0,0
   13a98:	02010113          	addi	sp,sp,32
   13a9c:	00008067          	ret
   13aa0:	408005b3          	neg	a1,s0
   13aa4:	00090513          	mv	a0,s2
   13aa8:	141050ef          	jal	ra,193e8 <_sbrk_r>
   13aac:	fff00793          	li	a5,-1
   13ab0:	04f50863          	beq	a0,a5,13b00 <_malloc_trim_r+0xfc>
   13ab4:	1fc18793          	addi	a5,gp,508 # 26fa4 <__malloc_current_mallinfo>
   13ab8:	0007a703          	lw	a4,0(a5)
   13abc:	0089a683          	lw	a3,8(s3)
   13ac0:	408484b3          	sub	s1,s1,s0
   13ac4:	0014e493          	ori	s1,s1,1
   13ac8:	40870433          	sub	s0,a4,s0
   13acc:	00090513          	mv	a0,s2
   13ad0:	0096a223          	sw	s1,4(a3)
   13ad4:	0087a023          	sw	s0,0(a5)
   13ad8:	1d8040ef          	jal	ra,17cb0 <__malloc_unlock>
   13adc:	01c12083          	lw	ra,28(sp)
   13ae0:	01812403          	lw	s0,24(sp)
   13ae4:	01412483          	lw	s1,20(sp)
   13ae8:	01012903          	lw	s2,16(sp)
   13aec:	00c12983          	lw	s3,12(sp)
   13af0:	00812a03          	lw	s4,8(sp)
   13af4:	00100513          	li	a0,1
   13af8:	02010113          	addi	sp,sp,32
   13afc:	00008067          	ret
   13b00:	00000593          	li	a1,0
   13b04:	00090513          	mv	a0,s2
   13b08:	0e1050ef          	jal	ra,193e8 <_sbrk_r>
   13b0c:	0089a703          	lw	a4,8(s3)
   13b10:	00f00693          	li	a3,15
   13b14:	40e507b3          	sub	a5,a0,a4
   13b18:	f4f6dee3          	bge	a3,a5,13a74 <_malloc_trim_r+0x70>
   13b1c:	1c41a683          	lw	a3,452(gp) # 26f6c <__malloc_sbrk_base>
   13b20:	0017e793          	ori	a5,a5,1
   13b24:	00f72223          	sw	a5,4(a4)
   13b28:	40d50533          	sub	a0,a0,a3
   13b2c:	1ea1ae23          	sw	a0,508(gp) # 26fa4 <__malloc_current_mallinfo>
   13b30:	f45ff06f          	j	13a74 <_malloc_trim_r+0x70>

00013b34 <_free_r>:
   13b34:	12058463          	beqz	a1,13c5c <_free_r+0x128>
   13b38:	ff010113          	addi	sp,sp,-16
   13b3c:	00812423          	sw	s0,8(sp)
   13b40:	00912223          	sw	s1,4(sp)
   13b44:	00058413          	mv	s0,a1
   13b48:	00050493          	mv	s1,a0
   13b4c:	00112623          	sw	ra,12(sp)
   13b50:	15c040ef          	jal	ra,17cac <__malloc_lock>
   13b54:	ffc42803          	lw	a6,-4(s0)
   13b58:	ff840713          	addi	a4,s0,-8
   13b5c:	ffe87793          	andi	a5,a6,-2
   13b60:	00f70633          	add	a2,a4,a5
   13b64:	c2818593          	addi	a1,gp,-984 # 269d0 <__malloc_av_>
   13b68:	00462683          	lw	a3,4(a2)
   13b6c:	0085a503          	lw	a0,8(a1)
   13b70:	ffc6f693          	andi	a3,a3,-4
   13b74:	1ac50663          	beq	a0,a2,13d20 <_free_r+0x1ec>
   13b78:	00d62223          	sw	a3,4(a2)
   13b7c:	00187813          	andi	a6,a6,1
   13b80:	00d60533          	add	a0,a2,a3
   13b84:	08081e63          	bnez	a6,13c20 <_free_r+0xec>
   13b88:	ff842303          	lw	t1,-8(s0)
   13b8c:	00452803          	lw	a6,4(a0)
   13b90:	40670733          	sub	a4,a4,t1
   13b94:	00872883          	lw	a7,8(a4)
   13b98:	c3018513          	addi	a0,gp,-976 # 269d8 <__malloc_av_+0x8>
   13b9c:	006787b3          	add	a5,a5,t1
   13ba0:	00187813          	andi	a6,a6,1
   13ba4:	12a88e63          	beq	a7,a0,13ce0 <_free_r+0x1ac>
   13ba8:	00c72303          	lw	t1,12(a4)
   13bac:	0068a623          	sw	t1,12(a7)
   13bb0:	01132423          	sw	a7,8(t1)
   13bb4:	1c080e63          	beqz	a6,13d90 <_free_r+0x25c>
   13bb8:	0017e693          	ori	a3,a5,1
   13bbc:	00d72223          	sw	a3,4(a4)
   13bc0:	00f62023          	sw	a5,0(a2)
   13bc4:	1ff00693          	li	a3,511
   13bc8:	0af6e663          	bltu	a3,a5,13c74 <_free_r+0x140>
   13bcc:	ff87f693          	andi	a3,a5,-8
   13bd0:	00868693          	addi	a3,a3,8
   13bd4:	0045a503          	lw	a0,4(a1)
   13bd8:	00d586b3          	add	a3,a1,a3
   13bdc:	0006a603          	lw	a2,0(a3)
   13be0:	0057d813          	srli	a6,a5,0x5
   13be4:	00100793          	li	a5,1
   13be8:	010797b3          	sll	a5,a5,a6
   13bec:	00a7e7b3          	or	a5,a5,a0
   13bf0:	ff868513          	addi	a0,a3,-8
   13bf4:	00a72623          	sw	a0,12(a4)
   13bf8:	00c72423          	sw	a2,8(a4)
   13bfc:	00f5a223          	sw	a5,4(a1)
   13c00:	00e6a023          	sw	a4,0(a3)
   13c04:	00e62623          	sw	a4,12(a2)
   13c08:	00812403          	lw	s0,8(sp)
   13c0c:	00c12083          	lw	ra,12(sp)
   13c10:	00048513          	mv	a0,s1
   13c14:	00412483          	lw	s1,4(sp)
   13c18:	01010113          	addi	sp,sp,16
   13c1c:	0940406f          	j	17cb0 <__malloc_unlock>
   13c20:	00452503          	lw	a0,4(a0)
   13c24:	00157513          	andi	a0,a0,1
   13c28:	02051c63          	bnez	a0,13c60 <_free_r+0x12c>
   13c2c:	00d787b3          	add	a5,a5,a3
   13c30:	c3018513          	addi	a0,gp,-976 # 269d8 <__malloc_av_+0x8>
   13c34:	00862683          	lw	a3,8(a2)
   13c38:	0017e893          	ori	a7,a5,1
   13c3c:	00f70833          	add	a6,a4,a5
   13c40:	16a68463          	beq	a3,a0,13da8 <_free_r+0x274>
   13c44:	00c62603          	lw	a2,12(a2)
   13c48:	00c6a623          	sw	a2,12(a3)
   13c4c:	00d62423          	sw	a3,8(a2)
   13c50:	01172223          	sw	a7,4(a4)
   13c54:	00f82023          	sw	a5,0(a6)
   13c58:	f6dff06f          	j	13bc4 <_free_r+0x90>
   13c5c:	00008067          	ret
   13c60:	0017e693          	ori	a3,a5,1
   13c64:	fed42e23          	sw	a3,-4(s0)
   13c68:	00f62023          	sw	a5,0(a2)
   13c6c:	1ff00693          	li	a3,511
   13c70:	f4f6fee3          	bgeu	a3,a5,13bcc <_free_r+0x98>
   13c74:	0097d693          	srli	a3,a5,0x9
   13c78:	00400613          	li	a2,4
   13c7c:	0ed66863          	bltu	a2,a3,13d6c <_free_r+0x238>
   13c80:	0067d693          	srli	a3,a5,0x6
   13c84:	03968813          	addi	a6,a3,57
   13c88:	03868613          	addi	a2,a3,56
   13c8c:	00381813          	slli	a6,a6,0x3
   13c90:	01058833          	add	a6,a1,a6
   13c94:	00082683          	lw	a3,0(a6)
   13c98:	ff880813          	addi	a6,a6,-8
   13c9c:	12d80463          	beq	a6,a3,13dc4 <_free_r+0x290>
   13ca0:	0046a603          	lw	a2,4(a3)
   13ca4:	ffc67613          	andi	a2,a2,-4
   13ca8:	00c7f663          	bgeu	a5,a2,13cb4 <_free_r+0x180>
   13cac:	0086a683          	lw	a3,8(a3)
   13cb0:	fed818e3          	bne	a6,a3,13ca0 <_free_r+0x16c>
   13cb4:	00c6a803          	lw	a6,12(a3)
   13cb8:	01072623          	sw	a6,12(a4)
   13cbc:	00d72423          	sw	a3,8(a4)
   13cc0:	00812403          	lw	s0,8(sp)
   13cc4:	00c12083          	lw	ra,12(sp)
   13cc8:	00e82423          	sw	a4,8(a6)
   13ccc:	00048513          	mv	a0,s1
   13cd0:	00412483          	lw	s1,4(sp)
   13cd4:	00e6a623          	sw	a4,12(a3)
   13cd8:	01010113          	addi	sp,sp,16
   13cdc:	7d50306f          	j	17cb0 <__malloc_unlock>
   13ce0:	14081263          	bnez	a6,13e24 <_free_r+0x2f0>
   13ce4:	00c62583          	lw	a1,12(a2)
   13ce8:	00862603          	lw	a2,8(a2)
   13cec:	00f687b3          	add	a5,a3,a5
   13cf0:	00812403          	lw	s0,8(sp)
   13cf4:	00b62623          	sw	a1,12(a2)
   13cf8:	00c5a423          	sw	a2,8(a1)
   13cfc:	0017e693          	ori	a3,a5,1
   13d00:	00c12083          	lw	ra,12(sp)
   13d04:	00d72223          	sw	a3,4(a4)
   13d08:	00048513          	mv	a0,s1
   13d0c:	00f70733          	add	a4,a4,a5
   13d10:	00412483          	lw	s1,4(sp)
   13d14:	00f72023          	sw	a5,0(a4)
   13d18:	01010113          	addi	sp,sp,16
   13d1c:	7950306f          	j	17cb0 <__malloc_unlock>
   13d20:	00187813          	andi	a6,a6,1
   13d24:	00d787b3          	add	a5,a5,a3
   13d28:	02081063          	bnez	a6,13d48 <_free_r+0x214>
   13d2c:	ff842503          	lw	a0,-8(s0)
   13d30:	40a70733          	sub	a4,a4,a0
   13d34:	00c72683          	lw	a3,12(a4)
   13d38:	00872603          	lw	a2,8(a4)
   13d3c:	00a787b3          	add	a5,a5,a0
   13d40:	00d62623          	sw	a3,12(a2)
   13d44:	00c6a423          	sw	a2,8(a3)
   13d48:	0017e613          	ori	a2,a5,1
   13d4c:	1c81a683          	lw	a3,456(gp) # 26f70 <__malloc_trim_threshold>
   13d50:	00c72223          	sw	a2,4(a4)
   13d54:	00e5a423          	sw	a4,8(a1)
   13d58:	ead7e8e3          	bltu	a5,a3,13c08 <_free_r+0xd4>
   13d5c:	1d41a583          	lw	a1,468(gp) # 26f7c <__malloc_top_pad>
   13d60:	00048513          	mv	a0,s1
   13d64:	ca1ff0ef          	jal	ra,13a04 <_malloc_trim_r>
   13d68:	ea1ff06f          	j	13c08 <_free_r+0xd4>
   13d6c:	01400613          	li	a2,20
   13d70:	02d67463          	bgeu	a2,a3,13d98 <_free_r+0x264>
   13d74:	05400613          	li	a2,84
   13d78:	06d66463          	bltu	a2,a3,13de0 <_free_r+0x2ac>
   13d7c:	00c7d693          	srli	a3,a5,0xc
   13d80:	06f68813          	addi	a6,a3,111
   13d84:	06e68613          	addi	a2,a3,110
   13d88:	00381813          	slli	a6,a6,0x3
   13d8c:	f05ff06f          	j	13c90 <_free_r+0x15c>
   13d90:	00d787b3          	add	a5,a5,a3
   13d94:	ea1ff06f          	j	13c34 <_free_r+0x100>
   13d98:	05c68813          	addi	a6,a3,92
   13d9c:	05b68613          	addi	a2,a3,91
   13da0:	00381813          	slli	a6,a6,0x3
   13da4:	eedff06f          	j	13c90 <_free_r+0x15c>
   13da8:	00e5aa23          	sw	a4,20(a1)
   13dac:	00e5a823          	sw	a4,16(a1)
   13db0:	00a72623          	sw	a0,12(a4)
   13db4:	00a72423          	sw	a0,8(a4)
   13db8:	01172223          	sw	a7,4(a4)
   13dbc:	00f82023          	sw	a5,0(a6)
   13dc0:	e49ff06f          	j	13c08 <_free_r+0xd4>
   13dc4:	0045a503          	lw	a0,4(a1)
   13dc8:	40265613          	srai	a2,a2,0x2
   13dcc:	00100793          	li	a5,1
   13dd0:	00c79633          	sll	a2,a5,a2
   13dd4:	00a66633          	or	a2,a2,a0
   13dd8:	00c5a223          	sw	a2,4(a1)
   13ddc:	eddff06f          	j	13cb8 <_free_r+0x184>
   13de0:	15400613          	li	a2,340
   13de4:	00d66c63          	bltu	a2,a3,13dfc <_free_r+0x2c8>
   13de8:	00f7d693          	srli	a3,a5,0xf
   13dec:	07868813          	addi	a6,a3,120
   13df0:	07768613          	addi	a2,a3,119
   13df4:	00381813          	slli	a6,a6,0x3
   13df8:	e99ff06f          	j	13c90 <_free_r+0x15c>
   13dfc:	55400613          	li	a2,1364
   13e00:	00d66c63          	bltu	a2,a3,13e18 <_free_r+0x2e4>
   13e04:	0127d693          	srli	a3,a5,0x12
   13e08:	07d68813          	addi	a6,a3,125
   13e0c:	07c68613          	addi	a2,a3,124
   13e10:	00381813          	slli	a6,a6,0x3
   13e14:	e7dff06f          	j	13c90 <_free_r+0x15c>
   13e18:	3f800813          	li	a6,1016
   13e1c:	07e00613          	li	a2,126
   13e20:	e71ff06f          	j	13c90 <_free_r+0x15c>
   13e24:	0017e693          	ori	a3,a5,1
   13e28:	00d72223          	sw	a3,4(a4)
   13e2c:	00f62023          	sw	a5,0(a2)
   13e30:	dd9ff06f          	j	13c08 <_free_r+0xd4>

00013e34 <__sfvwrite_r>:
   13e34:	00862783          	lw	a5,8(a2)
   13e38:	32078e63          	beqz	a5,14174 <__sfvwrite_r+0x340>
   13e3c:	00c5d783          	lhu	a5,12(a1)
   13e40:	fd010113          	addi	sp,sp,-48
   13e44:	02812423          	sw	s0,40(sp)
   13e48:	01412c23          	sw	s4,24(sp)
   13e4c:	01512a23          	sw	s5,20(sp)
   13e50:	02112623          	sw	ra,44(sp)
   13e54:	02912223          	sw	s1,36(sp)
   13e58:	03212023          	sw	s2,32(sp)
   13e5c:	01312e23          	sw	s3,28(sp)
   13e60:	01612823          	sw	s6,16(sp)
   13e64:	01712623          	sw	s7,12(sp)
   13e68:	01812423          	sw	s8,8(sp)
   13e6c:	01912223          	sw	s9,4(sp)
   13e70:	01a12023          	sw	s10,0(sp)
   13e74:	0087f713          	andi	a4,a5,8
   13e78:	00060a13          	mv	s4,a2
   13e7c:	00050a93          	mv	s5,a0
   13e80:	00058413          	mv	s0,a1
   13e84:	08070663          	beqz	a4,13f10 <__sfvwrite_r+0xdc>
   13e88:	0105a703          	lw	a4,16(a1)
   13e8c:	08070263          	beqz	a4,13f10 <__sfvwrite_r+0xdc>
   13e90:	0027f713          	andi	a4,a5,2
   13e94:	000a2483          	lw	s1,0(s4)
   13e98:	08070c63          	beqz	a4,13f30 <__sfvwrite_r+0xfc>
   13e9c:	02442783          	lw	a5,36(s0)
   13ea0:	01c42583          	lw	a1,28(s0)
   13ea4:	80000b37          	lui	s6,0x80000
   13ea8:	00000993          	li	s3,0
   13eac:	00000913          	li	s2,0
   13eb0:	c00b4b13          	xori	s6,s6,-1024
   13eb4:	00098613          	mv	a2,s3
   13eb8:	000a8513          	mv	a0,s5
   13ebc:	04090263          	beqz	s2,13f00 <__sfvwrite_r+0xcc>
   13ec0:	00090693          	mv	a3,s2
   13ec4:	012b7463          	bgeu	s6,s2,13ecc <__sfvwrite_r+0x98>
   13ec8:	000b0693          	mv	a3,s6
   13ecc:	000780e7          	jalr	a5
   13ed0:	28a05863          	blez	a0,14160 <__sfvwrite_r+0x32c>
   13ed4:	008a2783          	lw	a5,8(s4)
   13ed8:	00a989b3          	add	s3,s3,a0
   13edc:	40a90933          	sub	s2,s2,a0
   13ee0:	40a78533          	sub	a0,a5,a0
   13ee4:	00aa2423          	sw	a0,8(s4)
   13ee8:	20050a63          	beqz	a0,140fc <__sfvwrite_r+0x2c8>
   13eec:	02442783          	lw	a5,36(s0)
   13ef0:	01c42583          	lw	a1,28(s0)
   13ef4:	00098613          	mv	a2,s3
   13ef8:	000a8513          	mv	a0,s5
   13efc:	fc0912e3          	bnez	s2,13ec0 <__sfvwrite_r+0x8c>
   13f00:	0004a983          	lw	s3,0(s1)
   13f04:	0044a903          	lw	s2,4(s1)
   13f08:	00848493          	addi	s1,s1,8
   13f0c:	fa9ff06f          	j	13eb4 <__sfvwrite_r+0x80>
   13f10:	00040593          	mv	a1,s0
   13f14:	000a8513          	mv	a0,s5
   13f18:	9bcff0ef          	jal	ra,130d4 <__swsetup_r>
   13f1c:	3c051263          	bnez	a0,142e0 <__sfvwrite_r+0x4ac>
   13f20:	00c45783          	lhu	a5,12(s0)
   13f24:	000a2483          	lw	s1,0(s4)
   13f28:	0027f713          	andi	a4,a5,2
   13f2c:	f60718e3          	bnez	a4,13e9c <__sfvwrite_r+0x68>
   13f30:	0017f713          	andi	a4,a5,1
   13f34:	24071463          	bnez	a4,1417c <__sfvwrite_r+0x348>
   13f38:	00842c83          	lw	s9,8(s0)
   13f3c:	00042503          	lw	a0,0(s0)
   13f40:	80000b37          	lui	s6,0x80000
   13f44:	ffeb4b93          	xori	s7,s6,-2
   13f48:	00000c13          	li	s8,0
   13f4c:	00000913          	li	s2,0
   13f50:	fffb4b13          	not	s6,s6
   13f54:	0e090e63          	beqz	s2,14050 <__sfvwrite_r+0x21c>
   13f58:	2007f713          	andi	a4,a5,512
   13f5c:	24070c63          	beqz	a4,141b4 <__sfvwrite_r+0x380>
   13f60:	000c8d13          	mv	s10,s9
   13f64:	2f996863          	bltu	s2,s9,14254 <__sfvwrite_r+0x420>
   13f68:	4807f713          	andi	a4,a5,1152
   13f6c:	08070a63          	beqz	a4,14000 <__sfvwrite_r+0x1cc>
   13f70:	01442983          	lw	s3,20(s0)
   13f74:	01042583          	lw	a1,16(s0)
   13f78:	00190713          	addi	a4,s2,1
   13f7c:	00199693          	slli	a3,s3,0x1
   13f80:	013686b3          	add	a3,a3,s3
   13f84:	01f6d993          	srli	s3,a3,0x1f
   13f88:	40b50d33          	sub	s10,a0,a1
   13f8c:	00d989b3          	add	s3,s3,a3
   13f90:	4019d993          	srai	s3,s3,0x1
   13f94:	01a70733          	add	a4,a4,s10
   13f98:	00098613          	mv	a2,s3
   13f9c:	00e9f663          	bgeu	s3,a4,13fa8 <__sfvwrite_r+0x174>
   13fa0:	00070993          	mv	s3,a4
   13fa4:	00070613          	mv	a2,a4
   13fa8:	4007f793          	andi	a5,a5,1024
   13fac:	2e078a63          	beqz	a5,142a0 <__sfvwrite_r+0x46c>
   13fb0:	00060593          	mv	a1,a2
   13fb4:	000a8513          	mv	a0,s5
   13fb8:	24c030ef          	jal	ra,17204 <_malloc_r>
   13fbc:	00050c93          	mv	s9,a0
   13fc0:	30050863          	beqz	a0,142d0 <__sfvwrite_r+0x49c>
   13fc4:	01042583          	lw	a1,16(s0)
   13fc8:	000d0613          	mv	a2,s10
   13fcc:	2a5030ef          	jal	ra,17a70 <memcpy>
   13fd0:	00c45783          	lhu	a5,12(s0)
   13fd4:	b7f7f793          	andi	a5,a5,-1153
   13fd8:	0807e793          	ori	a5,a5,128
   13fdc:	00f41623          	sh	a5,12(s0)
   13fe0:	01ac8533          	add	a0,s9,s10
   13fe4:	41a987b3          	sub	a5,s3,s10
   13fe8:	01942823          	sw	s9,16(s0)
   13fec:	00a42023          	sw	a0,0(s0)
   13ff0:	01342a23          	sw	s3,20(s0)
   13ff4:	00090c93          	mv	s9,s2
   13ff8:	00f42423          	sw	a5,8(s0)
   13ffc:	00090d13          	mv	s10,s2
   14000:	000d0613          	mv	a2,s10
   14004:	000c0593          	mv	a1,s8
   14008:	385030ef          	jal	ra,17b8c <memmove>
   1400c:	00842703          	lw	a4,8(s0)
   14010:	00042783          	lw	a5,0(s0)
   14014:	00090993          	mv	s3,s2
   14018:	41970cb3          	sub	s9,a4,s9
   1401c:	01a787b3          	add	a5,a5,s10
   14020:	01942423          	sw	s9,8(s0)
   14024:	00f42023          	sw	a5,0(s0)
   14028:	00000913          	li	s2,0
   1402c:	008a2603          	lw	a2,8(s4)
   14030:	013c0c33          	add	s8,s8,s3
   14034:	413609b3          	sub	s3,a2,s3
   14038:	013a2423          	sw	s3,8(s4)
   1403c:	0c098063          	beqz	s3,140fc <__sfvwrite_r+0x2c8>
   14040:	00842c83          	lw	s9,8(s0)
   14044:	00042503          	lw	a0,0(s0)
   14048:	00c45783          	lhu	a5,12(s0)
   1404c:	f00916e3          	bnez	s2,13f58 <__sfvwrite_r+0x124>
   14050:	0004ac03          	lw	s8,0(s1)
   14054:	0044a903          	lw	s2,4(s1)
   14058:	00848493          	addi	s1,s1,8
   1405c:	ef9ff06f          	j	13f54 <__sfvwrite_r+0x120>
   14060:	0044a983          	lw	s3,4(s1)
   14064:	0004ac03          	lw	s8,0(s1)
   14068:	00848493          	addi	s1,s1,8
   1406c:	fe098ae3          	beqz	s3,14060 <__sfvwrite_r+0x22c>
   14070:	00098613          	mv	a2,s3
   14074:	00a00593          	li	a1,10
   14078:	000c0513          	mv	a0,s8
   1407c:	121030ef          	jal	ra,1799c <memchr>
   14080:	12050463          	beqz	a0,141a8 <__sfvwrite_r+0x374>
   14084:	00150513          	addi	a0,a0,1
   14088:	41850b33          	sub	s6,a0,s8
   1408c:	000b0793          	mv	a5,s6
   14090:	00098b93          	mv	s7,s3
   14094:	0137f463          	bgeu	a5,s3,1409c <__sfvwrite_r+0x268>
   14098:	00078b93          	mv	s7,a5
   1409c:	00042503          	lw	a0,0(s0)
   140a0:	01042783          	lw	a5,16(s0)
   140a4:	01442683          	lw	a3,20(s0)
   140a8:	00a7f863          	bgeu	a5,a0,140b8 <__sfvwrite_r+0x284>
   140ac:	00842903          	lw	s2,8(s0)
   140b0:	01268933          	add	s2,a3,s2
   140b4:	09794263          	blt	s2,s7,14138 <__sfvwrite_r+0x304>
   140b8:	1adbce63          	blt	s7,a3,14274 <__sfvwrite_r+0x440>
   140bc:	02442783          	lw	a5,36(s0)
   140c0:	01c42583          	lw	a1,28(s0)
   140c4:	000c0613          	mv	a2,s8
   140c8:	000a8513          	mv	a0,s5
   140cc:	000780e7          	jalr	a5
   140d0:	00050913          	mv	s2,a0
   140d4:	08a05663          	blez	a0,14160 <__sfvwrite_r+0x32c>
   140d8:	412b0b33          	sub	s6,s6,s2
   140dc:	00100513          	li	a0,1
   140e0:	180b0063          	beqz	s6,14260 <__sfvwrite_r+0x42c>
   140e4:	008a2603          	lw	a2,8(s4)
   140e8:	012c0c33          	add	s8,s8,s2
   140ec:	412989b3          	sub	s3,s3,s2
   140f0:	41260933          	sub	s2,a2,s2
   140f4:	012a2423          	sw	s2,8(s4)
   140f8:	08091a63          	bnez	s2,1418c <__sfvwrite_r+0x358>
   140fc:	00000513          	li	a0,0
   14100:	02c12083          	lw	ra,44(sp)
   14104:	02812403          	lw	s0,40(sp)
   14108:	02412483          	lw	s1,36(sp)
   1410c:	02012903          	lw	s2,32(sp)
   14110:	01c12983          	lw	s3,28(sp)
   14114:	01812a03          	lw	s4,24(sp)
   14118:	01412a83          	lw	s5,20(sp)
   1411c:	01012b03          	lw	s6,16(sp)
   14120:	00c12b83          	lw	s7,12(sp)
   14124:	00812c03          	lw	s8,8(sp)
   14128:	00412c83          	lw	s9,4(sp)
   1412c:	00012d03          	lw	s10,0(sp)
   14130:	03010113          	addi	sp,sp,48
   14134:	00008067          	ret
   14138:	000c0593          	mv	a1,s8
   1413c:	00090613          	mv	a2,s2
   14140:	24d030ef          	jal	ra,17b8c <memmove>
   14144:	00042783          	lw	a5,0(s0)
   14148:	00040593          	mv	a1,s0
   1414c:	000a8513          	mv	a0,s5
   14150:	012787b3          	add	a5,a5,s2
   14154:	00f42023          	sw	a5,0(s0)
   14158:	c68ff0ef          	jal	ra,135c0 <_fflush_r>
   1415c:	f6050ee3          	beqz	a0,140d8 <__sfvwrite_r+0x2a4>
   14160:	00c41783          	lh	a5,12(s0)
   14164:	0407e793          	ori	a5,a5,64
   14168:	00f41623          	sh	a5,12(s0)
   1416c:	fff00513          	li	a0,-1
   14170:	f91ff06f          	j	14100 <__sfvwrite_r+0x2cc>
   14174:	00000513          	li	a0,0
   14178:	00008067          	ret
   1417c:	00000b13          	li	s6,0
   14180:	00000513          	li	a0,0
   14184:	00000c13          	li	s8,0
   14188:	00000993          	li	s3,0
   1418c:	ec098ae3          	beqz	s3,14060 <__sfvwrite_r+0x22c>
   14190:	ee051ee3          	bnez	a0,1408c <__sfvwrite_r+0x258>
   14194:	00098613          	mv	a2,s3
   14198:	00a00593          	li	a1,10
   1419c:	000c0513          	mv	a0,s8
   141a0:	7fc030ef          	jal	ra,1799c <memchr>
   141a4:	ee0510e3          	bnez	a0,14084 <__sfvwrite_r+0x250>
   141a8:	00198793          	addi	a5,s3,1
   141ac:	00078b13          	mv	s6,a5
   141b0:	ee1ff06f          	j	14090 <__sfvwrite_r+0x25c>
   141b4:	01042783          	lw	a5,16(s0)
   141b8:	04a7e863          	bltu	a5,a0,14208 <__sfvwrite_r+0x3d4>
   141bc:	01442983          	lw	s3,20(s0)
   141c0:	05396463          	bltu	s2,s3,14208 <__sfvwrite_r+0x3d4>
   141c4:	00090513          	mv	a0,s2
   141c8:	012bf463          	bgeu	s7,s2,141d0 <__sfvwrite_r+0x39c>
   141cc:	000b0513          	mv	a0,s6
   141d0:	00098593          	mv	a1,s3
   141d4:	514100ef          	jal	ra,246e8 <__divsi3>
   141d8:	00098593          	mv	a1,s3
   141dc:	4e8100ef          	jal	ra,246c4 <__mulsi3>
   141e0:	02442783          	lw	a5,36(s0)
   141e4:	01c42583          	lw	a1,28(s0)
   141e8:	00050693          	mv	a3,a0
   141ec:	000c0613          	mv	a2,s8
   141f0:	000a8513          	mv	a0,s5
   141f4:	000780e7          	jalr	a5
   141f8:	00050993          	mv	s3,a0
   141fc:	f6a052e3          	blez	a0,14160 <__sfvwrite_r+0x32c>
   14200:	41390933          	sub	s2,s2,s3
   14204:	e29ff06f          	j	1402c <__sfvwrite_r+0x1f8>
   14208:	000c8993          	mv	s3,s9
   1420c:	01997463          	bgeu	s2,s9,14214 <__sfvwrite_r+0x3e0>
   14210:	00090993          	mv	s3,s2
   14214:	00098613          	mv	a2,s3
   14218:	000c0593          	mv	a1,s8
   1421c:	171030ef          	jal	ra,17b8c <memmove>
   14220:	00842783          	lw	a5,8(s0)
   14224:	00042703          	lw	a4,0(s0)
   14228:	413787b3          	sub	a5,a5,s3
   1422c:	01370733          	add	a4,a4,s3
   14230:	00f42423          	sw	a5,8(s0)
   14234:	00e42023          	sw	a4,0(s0)
   14238:	fc0794e3          	bnez	a5,14200 <__sfvwrite_r+0x3cc>
   1423c:	00040593          	mv	a1,s0
   14240:	000a8513          	mv	a0,s5
   14244:	b7cff0ef          	jal	ra,135c0 <_fflush_r>
   14248:	f0051ce3          	bnez	a0,14160 <__sfvwrite_r+0x32c>
   1424c:	41390933          	sub	s2,s2,s3
   14250:	dddff06f          	j	1402c <__sfvwrite_r+0x1f8>
   14254:	00090c93          	mv	s9,s2
   14258:	00090d13          	mv	s10,s2
   1425c:	da5ff06f          	j	14000 <__sfvwrite_r+0x1cc>
   14260:	00040593          	mv	a1,s0
   14264:	000a8513          	mv	a0,s5
   14268:	b58ff0ef          	jal	ra,135c0 <_fflush_r>
   1426c:	e6050ce3          	beqz	a0,140e4 <__sfvwrite_r+0x2b0>
   14270:	ef1ff06f          	j	14160 <__sfvwrite_r+0x32c>
   14274:	000b8613          	mv	a2,s7
   14278:	000c0593          	mv	a1,s8
   1427c:	111030ef          	jal	ra,17b8c <memmove>
   14280:	00842783          	lw	a5,8(s0)
   14284:	00042603          	lw	a2,0(s0)
   14288:	000b8913          	mv	s2,s7
   1428c:	417787b3          	sub	a5,a5,s7
   14290:	01760633          	add	a2,a2,s7
   14294:	00f42423          	sw	a5,8(s0)
   14298:	00c42023          	sw	a2,0(s0)
   1429c:	e3dff06f          	j	140d8 <__sfvwrite_r+0x2a4>
   142a0:	000a8513          	mv	a0,s5
   142a4:	329040ef          	jal	ra,18dcc <_realloc_r>
   142a8:	00050c93          	mv	s9,a0
   142ac:	d2051ae3          	bnez	a0,13fe0 <__sfvwrite_r+0x1ac>
   142b0:	01042583          	lw	a1,16(s0)
   142b4:	000a8513          	mv	a0,s5
   142b8:	87dff0ef          	jal	ra,13b34 <_free_r>
   142bc:	00c41783          	lh	a5,12(s0)
   142c0:	00c00713          	li	a4,12
   142c4:	00eaa023          	sw	a4,0(s5)
   142c8:	f7f7f793          	andi	a5,a5,-129
   142cc:	e99ff06f          	j	14164 <__sfvwrite_r+0x330>
   142d0:	00c00713          	li	a4,12
   142d4:	00c41783          	lh	a5,12(s0)
   142d8:	00eaa023          	sw	a4,0(s5)
   142dc:	e89ff06f          	j	14164 <__sfvwrite_r+0x330>
   142e0:	fff00513          	li	a0,-1
   142e4:	e1dff06f          	j	14100 <__sfvwrite_r+0x2cc>

000142e8 <_fwalk>:
   142e8:	fe010113          	addi	sp,sp,-32
   142ec:	01212823          	sw	s2,16(sp)
   142f0:	01312623          	sw	s3,12(sp)
   142f4:	01412423          	sw	s4,8(sp)
   142f8:	01512223          	sw	s5,4(sp)
   142fc:	01612023          	sw	s6,0(sp)
   14300:	00112e23          	sw	ra,28(sp)
   14304:	00812c23          	sw	s0,24(sp)
   14308:	00912a23          	sw	s1,20(sp)
   1430c:	00058b13          	mv	s6,a1
   14310:	2e050a93          	addi	s5,a0,736
   14314:	00000a13          	li	s4,0
   14318:	00100993          	li	s3,1
   1431c:	fff00913          	li	s2,-1
   14320:	004aa483          	lw	s1,4(s5)
   14324:	008aa403          	lw	s0,8(s5)
   14328:	fff48493          	addi	s1,s1,-1
   1432c:	0204c663          	bltz	s1,14358 <_fwalk+0x70>
   14330:	00c45783          	lhu	a5,12(s0)
   14334:	fff48493          	addi	s1,s1,-1
   14338:	00f9fc63          	bgeu	s3,a5,14350 <_fwalk+0x68>
   1433c:	00e41783          	lh	a5,14(s0)
   14340:	00040513          	mv	a0,s0
   14344:	01278663          	beq	a5,s2,14350 <_fwalk+0x68>
   14348:	000b00e7          	jalr	s6 # 80000000 <__BSS_END__+0x7ffd9030>
   1434c:	00aa6a33          	or	s4,s4,a0
   14350:	06840413          	addi	s0,s0,104
   14354:	fd249ee3          	bne	s1,s2,14330 <_fwalk+0x48>
   14358:	000aaa83          	lw	s5,0(s5)
   1435c:	fc0a92e3          	bnez	s5,14320 <_fwalk+0x38>
   14360:	01c12083          	lw	ra,28(sp)
   14364:	01812403          	lw	s0,24(sp)
   14368:	01412483          	lw	s1,20(sp)
   1436c:	01012903          	lw	s2,16(sp)
   14370:	00c12983          	lw	s3,12(sp)
   14374:	00412a83          	lw	s5,4(sp)
   14378:	00012b03          	lw	s6,0(sp)
   1437c:	000a0513          	mv	a0,s4
   14380:	00812a03          	lw	s4,8(sp)
   14384:	02010113          	addi	sp,sp,32
   14388:	00008067          	ret

0001438c <_fwalk_reent>:
   1438c:	fd010113          	addi	sp,sp,-48
   14390:	03212023          	sw	s2,32(sp)
   14394:	01312e23          	sw	s3,28(sp)
   14398:	01412c23          	sw	s4,24(sp)
   1439c:	01512a23          	sw	s5,20(sp)
   143a0:	01612823          	sw	s6,16(sp)
   143a4:	01712623          	sw	s7,12(sp)
   143a8:	02112623          	sw	ra,44(sp)
   143ac:	02812423          	sw	s0,40(sp)
   143b0:	02912223          	sw	s1,36(sp)
   143b4:	00050a93          	mv	s5,a0
   143b8:	00058b93          	mv	s7,a1
   143bc:	2e050b13          	addi	s6,a0,736
   143c0:	00000a13          	li	s4,0
   143c4:	00100993          	li	s3,1
   143c8:	fff00913          	li	s2,-1
   143cc:	004b2483          	lw	s1,4(s6)
   143d0:	008b2403          	lw	s0,8(s6)
   143d4:	fff48493          	addi	s1,s1,-1
   143d8:	0204c863          	bltz	s1,14408 <_fwalk_reent+0x7c>
   143dc:	00c45783          	lhu	a5,12(s0)
   143e0:	fff48493          	addi	s1,s1,-1
   143e4:	00f9fe63          	bgeu	s3,a5,14400 <_fwalk_reent+0x74>
   143e8:	00e41783          	lh	a5,14(s0)
   143ec:	00040593          	mv	a1,s0
   143f0:	000a8513          	mv	a0,s5
   143f4:	01278663          	beq	a5,s2,14400 <_fwalk_reent+0x74>
   143f8:	000b80e7          	jalr	s7
   143fc:	00aa6a33          	or	s4,s4,a0
   14400:	06840413          	addi	s0,s0,104
   14404:	fd249ce3          	bne	s1,s2,143dc <_fwalk_reent+0x50>
   14408:	000b2b03          	lw	s6,0(s6)
   1440c:	fc0b10e3          	bnez	s6,143cc <_fwalk_reent+0x40>
   14410:	02c12083          	lw	ra,44(sp)
   14414:	02812403          	lw	s0,40(sp)
   14418:	02412483          	lw	s1,36(sp)
   1441c:	02012903          	lw	s2,32(sp)
   14420:	01c12983          	lw	s3,28(sp)
   14424:	01412a83          	lw	s5,20(sp)
   14428:	01012b03          	lw	s6,16(sp)
   1442c:	00c12b83          	lw	s7,12(sp)
   14430:	000a0513          	mv	a0,s4
   14434:	01812a03          	lw	s4,24(sp)
   14438:	03010113          	addi	sp,sp,48
   1443c:	00008067          	ret

00014440 <eshdn1>:
   14440:	00450693          	addi	a3,a0,4
   14444:	00000793          	li	a5,0
   14448:	01a50513          	addi	a0,a0,26
   1444c:	ffff8837          	lui	a6,0xffff8
   14450:	01c0006f          	j	1446c <eshdn1+0x2c>
   14454:	00179793          	slli	a5,a5,0x1
   14458:	00e69023          	sh	a4,0(a3)
   1445c:	01079793          	slli	a5,a5,0x10
   14460:	00268693          	addi	a3,a3,2
   14464:	0107d793          	srli	a5,a5,0x10
   14468:	02d50e63          	beq	a0,a3,144a4 <eshdn1+0x64>
   1446c:	0006d703          	lhu	a4,0(a3)
   14470:	00177613          	andi	a2,a4,1
   14474:	00060463          	beqz	a2,1447c <eshdn1+0x3c>
   14478:	0017e793          	ori	a5,a5,1
   1447c:	00175713          	srli	a4,a4,0x1
   14480:	0027f613          	andi	a2,a5,2
   14484:	010765b3          	or	a1,a4,a6
   14488:	fc0606e3          	beqz	a2,14454 <eshdn1+0x14>
   1448c:	00179793          	slli	a5,a5,0x1
   14490:	00b69023          	sh	a1,0(a3)
   14494:	01079793          	slli	a5,a5,0x10
   14498:	00268693          	addi	a3,a3,2
   1449c:	0107d793          	srli	a5,a5,0x10
   144a0:	fcd516e3          	bne	a0,a3,1446c <eshdn1+0x2c>
   144a4:	00008067          	ret

000144a8 <eshup1>:
   144a8:	01850693          	addi	a3,a0,24
   144ac:	00000713          	li	a4,0
   144b0:	00250513          	addi	a0,a0,2
   144b4:	01c0006f          	j	144d0 <eshup1+0x28>
   144b8:	00171713          	slli	a4,a4,0x1
   144bc:	00f69023          	sh	a5,0(a3)
   144c0:	01071713          	slli	a4,a4,0x10
   144c4:	ffe68693          	addi	a3,a3,-2
   144c8:	01075713          	srli	a4,a4,0x10
   144cc:	04d50463          	beq	a0,a3,14514 <eshup1+0x6c>
   144d0:	0006d783          	lhu	a5,0(a3)
   144d4:	01079613          	slli	a2,a5,0x10
   144d8:	41065613          	srai	a2,a2,0x10
   144dc:	00179793          	slli	a5,a5,0x1
   144e0:	00065463          	bgez	a2,144e8 <eshup1+0x40>
   144e4:	00176713          	ori	a4,a4,1
   144e8:	01079793          	slli	a5,a5,0x10
   144ec:	0107d793          	srli	a5,a5,0x10
   144f0:	00277613          	andi	a2,a4,2
   144f4:	0017e593          	ori	a1,a5,1
   144f8:	fc0600e3          	beqz	a2,144b8 <eshup1+0x10>
   144fc:	00171713          	slli	a4,a4,0x1
   14500:	00b69023          	sh	a1,0(a3)
   14504:	01071713          	slli	a4,a4,0x10
   14508:	ffe68693          	addi	a3,a3,-2
   1450c:	01075713          	srli	a4,a4,0x10
   14510:	fcd510e3          	bne	a0,a3,144d0 <eshup1+0x28>
   14514:	00008067          	ret

00014518 <m16m>:
   14518:	fc010113          	addi	sp,sp,-64
   1451c:	03312623          	sw	s3,44(sp)
   14520:	000109b7          	lui	s3,0x10
   14524:	02812c23          	sw	s0,56(sp)
   14528:	02912a23          	sw	s1,52(sp)
   1452c:	03212823          	sw	s2,48(sp)
   14530:	03412423          	sw	s4,40(sp)
   14534:	03512223          	sw	s5,36(sp)
   14538:	02112e23          	sw	ra,60(sp)
   1453c:	00050a13          	mv	s4,a0
   14540:	00060493          	mv	s1,a2
   14544:	00011d23          	sh	zero,26(sp)
   14548:	00011e23          	sh	zero,28(sp)
   1454c:	01858913          	addi	s2,a1,24
   14550:	01c10413          	addi	s0,sp,28
   14554:	00810a93          	addi	s5,sp,8
   14558:	fff98993          	addi	s3,s3,-1 # ffff <register_fini-0x75>
   1455c:	00095503          	lhu	a0,0(s2)
   14560:	000a0593          	mv	a1,s4
   14564:	ffe40413          	addi	s0,s0,-2
   14568:	ffe90913          	addi	s2,s2,-2
   1456c:	04051663          	bnez	a0,145b8 <m16m+0xa0>
   14570:	fe041f23          	sh	zero,-2(s0)
   14574:	ff5414e3          	bne	s0,s5,1455c <m16m+0x44>
   14578:	00448613          	addi	a2,s1,4
   1457c:	01e10713          	addi	a4,sp,30
   14580:	00045783          	lhu	a5,0(s0)
   14584:	00240413          	addi	s0,s0,2
   14588:	00260613          	addi	a2,a2,2
   1458c:	fef61f23          	sh	a5,-2(a2)
   14590:	fee418e3          	bne	s0,a4,14580 <m16m+0x68>
   14594:	03c12083          	lw	ra,60(sp)
   14598:	03812403          	lw	s0,56(sp)
   1459c:	03412483          	lw	s1,52(sp)
   145a0:	03012903          	lw	s2,48(sp)
   145a4:	02c12983          	lw	s3,44(sp)
   145a8:	02812a03          	lw	s4,40(sp)
   145ac:	02412a83          	lw	s5,36(sp)
   145b0:	04010113          	addi	sp,sp,64
   145b4:	00008067          	ret
   145b8:	10c100ef          	jal	ra,246c4 <__mulsi3>
   145bc:	00245783          	lhu	a5,2(s0)
   145c0:	00045603          	lhu	a2,0(s0)
   145c4:	01357733          	and	a4,a0,s3
   145c8:	00f70733          	add	a4,a4,a5
   145cc:	01055793          	srli	a5,a0,0x10
   145d0:	01075693          	srli	a3,a4,0x10
   145d4:	00c787b3          	add	a5,a5,a2
   145d8:	00d787b3          	add	a5,a5,a3
   145dc:	0107d693          	srli	a3,a5,0x10
   145e0:	00e41123          	sh	a4,2(s0)
   145e4:	00f41023          	sh	a5,0(s0)
   145e8:	fed41f23          	sh	a3,-2(s0)
   145ec:	f75418e3          	bne	s0,s5,1455c <m16m+0x44>
   145f0:	f89ff06f          	j	14578 <m16m+0x60>

000145f4 <eisnan.part.0>:
   145f4:	01250713          	addi	a4,a0,18
   145f8:	00055783          	lhu	a5,0(a0)
   145fc:	00250513          	addi	a0,a0,2
   14600:	00079863          	bnez	a5,14610 <eisnan.part.0+0x1c>
   14604:	fee51ae3          	bne	a0,a4,145f8 <eisnan.part.0+0x4>
   14608:	00000513          	li	a0,0
   1460c:	00008067          	ret
   14610:	00100513          	li	a0,1
   14614:	00008067          	ret

00014618 <eneg>:
   14618:	ff010113          	addi	sp,sp,-16
   1461c:	00912223          	sw	s1,4(sp)
   14620:	01255483          	lhu	s1,18(a0)
   14624:	00812423          	sw	s0,8(sp)
   14628:	00112623          	sw	ra,12(sp)
   1462c:	fff4c793          	not	a5,s1
   14630:	01179713          	slli	a4,a5,0x11
   14634:	00050413          	mv	s0,a0
   14638:	00071663          	bnez	a4,14644 <eneg+0x2c>
   1463c:	fb9ff0ef          	jal	ra,145f4 <eisnan.part.0>
   14640:	00051863          	bnez	a0,14650 <eneg+0x38>
   14644:	ffff87b7          	lui	a5,0xffff8
   14648:	00f4c4b3          	xor	s1,s1,a5
   1464c:	00941923          	sh	s1,18(s0)
   14650:	00c12083          	lw	ra,12(sp)
   14654:	00812403          	lw	s0,8(sp)
   14658:	00412483          	lw	s1,4(sp)
   1465c:	01010113          	addi	sp,sp,16
   14660:	00008067          	ret

00014664 <eisneg>:
   14664:	ff010113          	addi	sp,sp,-16
   14668:	00812423          	sw	s0,8(sp)
   1466c:	01255403          	lhu	s0,18(a0)
   14670:	00112623          	sw	ra,12(sp)
   14674:	fff44793          	not	a5,s0
   14678:	01179713          	slli	a4,a5,0x11
   1467c:	00071a63          	bnez	a4,14690 <eisneg+0x2c>
   14680:	f75ff0ef          	jal	ra,145f4 <eisnan.part.0>
   14684:	00050793          	mv	a5,a0
   14688:	00000513          	li	a0,0
   1468c:	00079463          	bnez	a5,14694 <eisneg+0x30>
   14690:	00f45513          	srli	a0,s0,0xf
   14694:	00c12083          	lw	ra,12(sp)
   14698:	00812403          	lw	s0,8(sp)
   1469c:	01010113          	addi	sp,sp,16
   146a0:	00008067          	ret

000146a4 <emovi>:
   146a4:	01255783          	lhu	a5,18(a0)
   146a8:	fd010113          	addi	sp,sp,-48
   146ac:	02812423          	sw	s0,40(sp)
   146b0:	00f7d793          	srli	a5,a5,0xf
   146b4:	02912223          	sw	s1,36(sp)
   146b8:	02112623          	sw	ra,44(sp)
   146bc:	03212023          	sw	s2,32(sp)
   146c0:	01312e23          	sw	s3,28(sp)
   146c4:	40f007b3          	neg	a5,a5
   146c8:	00f59023          	sh	a5,0(a1)
   146cc:	01255783          	lhu	a5,18(a0)
   146d0:	00008737          	lui	a4,0x8
   146d4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   146d8:	00f777b3          	and	a5,a4,a5
   146dc:	00f59123          	sh	a5,2(a1)
   146e0:	00050493          	mv	s1,a0
   146e4:	01050413          	addi	s0,a0,16
   146e8:	04e78263          	beq	a5,a4,1472c <emovi+0x88>
   146ec:	00658793          	addi	a5,a1,6
   146f0:	00059223          	sh	zero,4(a1)
   146f4:	ffe50513          	addi	a0,a0,-2
   146f8:	00045703          	lhu	a4,0(s0)
   146fc:	ffe40413          	addi	s0,s0,-2
   14700:	00278793          	addi	a5,a5,2 # ffff8002 <__BSS_END__+0xfffd1032>
   14704:	fee79f23          	sh	a4,-2(a5)
   14708:	fe8518e3          	bne	a0,s0,146f8 <emovi+0x54>
   1470c:	00059c23          	sh	zero,24(a1)
   14710:	02c12083          	lw	ra,44(sp)
   14714:	02812403          	lw	s0,40(sp)
   14718:	02412483          	lw	s1,36(sp)
   1471c:	02012903          	lw	s2,32(sp)
   14720:	01c12983          	lw	s3,28(sp)
   14724:	03010113          	addi	sp,sp,48
   14728:	00008067          	ret
   1472c:	01255703          	lhu	a4,18(a0)
   14730:	00458913          	addi	s2,a1,4
   14734:	00e7f733          	and	a4,a5,a4
   14738:	02f71c63          	bne	a4,a5,14770 <emovi+0xcc>
   1473c:	00b12623          	sw	a1,12(sp)
   14740:	eb5ff0ef          	jal	ra,145f4 <eisnan.part.0>
   14744:	00c12583          	lw	a1,12(sp)
   14748:	02050463          	beqz	a0,14770 <emovi+0xcc>
   1474c:	00658793          	addi	a5,a1,6
   14750:	00059223          	sh	zero,4(a1)
   14754:	ffc48513          	addi	a0,s1,-4
   14758:	00045703          	lhu	a4,0(s0)
   1475c:	ffe40413          	addi	s0,s0,-2
   14760:	00278793          	addi	a5,a5,2
   14764:	fee79f23          	sh	a4,-2(a5)
   14768:	fe8518e3          	bne	a0,s0,14758 <emovi+0xb4>
   1476c:	fa5ff06f          	j	14710 <emovi+0x6c>
   14770:	01a58993          	addi	s3,a1,26
   14774:	00290913          	addi	s2,s2,2
   14778:	fe091f23          	sh	zero,-2(s2)
   1477c:	ff299ce3          	bne	s3,s2,14774 <emovi+0xd0>
   14780:	02c12083          	lw	ra,44(sp)
   14784:	02812403          	lw	s0,40(sp)
   14788:	02412483          	lw	s1,36(sp)
   1478c:	02012903          	lw	s2,32(sp)
   14790:	01c12983          	lw	s3,28(sp)
   14794:	03010113          	addi	sp,sp,48
   14798:	00008067          	ret

0001479c <ecmp>:
   1479c:	01255783          	lhu	a5,18(a0)
   147a0:	fb010113          	addi	sp,sp,-80
   147a4:	04812423          	sw	s0,72(sp)
   147a8:	fff7c793          	not	a5,a5
   147ac:	04912223          	sw	s1,68(sp)
   147b0:	04112623          	sw	ra,76(sp)
   147b4:	01179713          	slli	a4,a5,0x11
   147b8:	00050493          	mv	s1,a0
   147bc:	00058413          	mv	s0,a1
   147c0:	00071663          	bnez	a4,147cc <ecmp+0x30>
   147c4:	e31ff0ef          	jal	ra,145f4 <eisnan.part.0>
   147c8:	08051263          	bnez	a0,1484c <ecmp+0xb0>
   147cc:	01245783          	lhu	a5,18(s0)
   147d0:	fff7c793          	not	a5,a5
   147d4:	01179713          	slli	a4,a5,0x11
   147d8:	06070463          	beqz	a4,14840 <ecmp+0xa4>
   147dc:	00810593          	addi	a1,sp,8
   147e0:	00048513          	mv	a0,s1
   147e4:	ec1ff0ef          	jal	ra,146a4 <emovi>
   147e8:	02410593          	addi	a1,sp,36
   147ec:	00040513          	mv	a0,s0
   147f0:	eb5ff0ef          	jal	ra,146a4 <emovi>
   147f4:	00815583          	lhu	a1,8(sp)
   147f8:	02415503          	lhu	a0,36(sp)
   147fc:	04b50c63          	beq	a0,a1,14854 <ecmp+0xb8>
   14800:	00a10793          	addi	a5,sp,10
   14804:	02610713          	addi	a4,sp,38
   14808:	02010613          	addi	a2,sp,32
   1480c:	0007d683          	lhu	a3,0(a5)
   14810:	00278793          	addi	a5,a5,2
   14814:	08069a63          	bnez	a3,148a8 <ecmp+0x10c>
   14818:	00075683          	lhu	a3,0(a4)
   1481c:	00270713          	addi	a4,a4,2
   14820:	08069463          	bnez	a3,148a8 <ecmp+0x10c>
   14824:	fec794e3          	bne	a5,a2,1480c <ecmp+0x70>
   14828:	00000513          	li	a0,0
   1482c:	04c12083          	lw	ra,76(sp)
   14830:	04812403          	lw	s0,72(sp)
   14834:	04412483          	lw	s1,68(sp)
   14838:	05010113          	addi	sp,sp,80
   1483c:	00008067          	ret
   14840:	00040513          	mv	a0,s0
   14844:	db1ff0ef          	jal	ra,145f4 <eisnan.part.0>
   14848:	f8050ae3          	beqz	a0,147dc <ecmp+0x40>
   1484c:	ffe00513          	li	a0,-2
   14850:	fddff06f          	j	1482c <ecmp+0x90>
   14854:	00153513          	seqz	a0,a0
   14858:	00a15603          	lhu	a2,10(sp)
   1485c:	02615683          	lhu	a3,38(sp)
   14860:	40a00533          	neg	a0,a0
   14864:	00a10713          	addi	a4,sp,10
   14868:	02610793          	addi	a5,sp,38
   1486c:	00257513          	andi	a0,a0,2
   14870:	fff50513          	addi	a0,a0,-1
   14874:	03c10593          	addi	a1,sp,60
   14878:	00278793          	addi	a5,a5,2
   1487c:	00270713          	addi	a4,a4,2
   14880:	00d61e63          	bne	a2,a3,1489c <ecmp+0x100>
   14884:	fab782e3          	beq	a5,a1,14828 <ecmp+0x8c>
   14888:	00075603          	lhu	a2,0(a4)
   1488c:	0007d683          	lhu	a3,0(a5)
   14890:	00270713          	addi	a4,a4,2
   14894:	00278793          	addi	a5,a5,2
   14898:	fed606e3          	beq	a2,a3,14884 <ecmp+0xe8>
   1489c:	f8c6e8e3          	bltu	a3,a2,1482c <ecmp+0x90>
   148a0:	40a00533          	neg	a0,a0
   148a4:	f89ff06f          	j	1482c <ecmp+0x90>
   148a8:	00100513          	li	a0,1
   148ac:	f80580e3          	beqz	a1,1482c <ecmp+0x90>
   148b0:	fff00513          	li	a0,-1
   148b4:	f79ff06f          	j	1482c <ecmp+0x90>

000148b8 <eisinf.part.0>:
   148b8:	ff010113          	addi	sp,sp,-16
   148bc:	00112623          	sw	ra,12(sp)
   148c0:	d35ff0ef          	jal	ra,145f4 <eisnan.part.0>
   148c4:	00c12083          	lw	ra,12(sp)
   148c8:	00153513          	seqz	a0,a0
   148cc:	01010113          	addi	sp,sp,16
   148d0:	00008067          	ret

000148d4 <eshift.part.0>:
   148d4:	fe010113          	addi	sp,sp,-32
   148d8:	00812c23          	sw	s0,24(sp)
   148dc:	00912a23          	sw	s1,20(sp)
   148e0:	00112e23          	sw	ra,28(sp)
   148e4:	01212823          	sw	s2,16(sp)
   148e8:	01312623          	sw	s3,12(sp)
   148ec:	00058493          	mv	s1,a1
   148f0:	00050413          	mv	s0,a0
   148f4:	0a05c463          	bltz	a1,1499c <eshift.part.0+0xc8>
   148f8:	00f00793          	li	a5,15
   148fc:	00058613          	mv	a2,a1
   14900:	00450513          	addi	a0,a0,4
   14904:	01840693          	addi	a3,s0,24
   14908:	00f00593          	li	a1,15
   1490c:	0297d463          	bge	a5,s1,14934 <eshift.part.0+0x60>
   14910:	00050793          	mv	a5,a0
   14914:	0027d703          	lhu	a4,2(a5)
   14918:	00278793          	addi	a5,a5,2
   1491c:	fee79f23          	sh	a4,-2(a5)
   14920:	fed79ae3          	bne	a5,a3,14914 <eshift.part.0+0x40>
   14924:	00041c23          	sh	zero,24(s0)
   14928:	ff060613          	addi	a2,a2,-16
   1492c:	fec5c2e3          	blt	a1,a2,14910 <eshift.part.0+0x3c>
   14930:	00f4f493          	andi	s1,s1,15
   14934:	00700793          	li	a5,7
   14938:	0297d863          	bge	a5,s1,14968 <eshift.part.0+0x94>
   1493c:	01840713          	addi	a4,s0,24
   14940:	00240593          	addi	a1,s0,2
   14944:	00000793          	li	a5,0
   14948:	00075683          	lhu	a3,0(a4)
   1494c:	ffe70713          	addi	a4,a4,-2
   14950:	00869613          	slli	a2,a3,0x8
   14954:	00c7e7b3          	or	a5,a5,a2
   14958:	00f71123          	sh	a5,2(a4)
   1495c:	0086d793          	srli	a5,a3,0x8
   14960:	feb714e3          	bne	a4,a1,14948 <eshift.part.0+0x74>
   14964:	ff848493          	addi	s1,s1,-8
   14968:	00048a63          	beqz	s1,1497c <eshift.part.0+0xa8>
   1496c:	fff48493          	addi	s1,s1,-1
   14970:	00040513          	mv	a0,s0
   14974:	b35ff0ef          	jal	ra,144a8 <eshup1>
   14978:	fe049ae3          	bnez	s1,1496c <eshift.part.0+0x98>
   1497c:	00000513          	li	a0,0
   14980:	01c12083          	lw	ra,28(sp)
   14984:	01812403          	lw	s0,24(sp)
   14988:	01412483          	lw	s1,20(sp)
   1498c:	01012903          	lw	s2,16(sp)
   14990:	00c12983          	lw	s3,12(sp)
   14994:	02010113          	addi	sp,sp,32
   14998:	00008067          	ret
   1499c:	ff100793          	li	a5,-15
   149a0:	40b00933          	neg	s2,a1
   149a4:	12f5dc63          	bge	a1,a5,14adc <eshift.part.0+0x208>
   149a8:	01850593          	addi	a1,a0,24
   149ac:	00000993          	li	s3,0
   149b0:	00450693          	addi	a3,a0,4
   149b4:	00f00613          	li	a2,15
   149b8:	01845703          	lhu	a4,24(s0)
   149bc:	00058793          	mv	a5,a1
   149c0:	00e9e9b3          	or	s3,s3,a4
   149c4:	ffe7d703          	lhu	a4,-2(a5)
   149c8:	ffe78793          	addi	a5,a5,-2
   149cc:	00e79123          	sh	a4,2(a5)
   149d0:	fed79ae3          	bne	a5,a3,149c4 <eshift.part.0+0xf0>
   149d4:	00041223          	sh	zero,4(s0)
   149d8:	ff090913          	addi	s2,s2,-16
   149dc:	fd264ee3          	blt	a2,s2,149b8 <eshift.part.0+0xe4>
   149e0:	ff000793          	li	a5,-16
   149e4:	ff100713          	li	a4,-15
   149e8:	409787b3          	sub	a5,a5,s1
   149ec:	00000913          	li	s2,0
   149f0:	0ae4c463          	blt	s1,a4,14a98 <eshift.part.0+0x1c4>
   149f4:	00f90933          	add	s2,s2,a5
   149f8:	00700793          	li	a5,7
   149fc:	0527d663          	bge	a5,s2,14a48 <eshift.part.0+0x174>
   14a00:	01099993          	slli	s3,s3,0x10
   14a04:	4109d993          	srai	s3,s3,0x10
   14a08:	01844783          	lbu	a5,24(s0)
   14a0c:	01a40593          	addi	a1,s0,26
   14a10:	00f9e9b3          	or	s3,s3,a5
   14a14:	01099993          	slli	s3,s3,0x10
   14a18:	0109d993          	srli	s3,s3,0x10
   14a1c:	00000793          	li	a5,0
   14a20:	0006d603          	lhu	a2,0(a3)
   14a24:	00268693          	addi	a3,a3,2
   14a28:	00865713          	srli	a4,a2,0x8
   14a2c:	00e7e733          	or	a4,a5,a4
   14a30:	00861793          	slli	a5,a2,0x8
   14a34:	01079793          	slli	a5,a5,0x10
   14a38:	fee69f23          	sh	a4,-2(a3)
   14a3c:	0107d793          	srli	a5,a5,0x10
   14a40:	feb690e3          	bne	a3,a1,14a20 <eshift.part.0+0x14c>
   14a44:	ff890913          	addi	s2,s2,-8
   14a48:	06090c63          	beqz	s2,14ac0 <eshift.part.0+0x1ec>
   14a4c:	01845783          	lhu	a5,24(s0)
   14a50:	fff90913          	addi	s2,s2,-1
   14a54:	00040513          	mv	a0,s0
   14a58:	0017f793          	andi	a5,a5,1
   14a5c:	0137e9b3          	or	s3,a5,s3
   14a60:	9e1ff0ef          	jal	ra,14440 <eshdn1>
   14a64:	fe0914e3          	bnez	s2,14a4c <eshift.part.0+0x178>
   14a68:	01099793          	slli	a5,s3,0x10
   14a6c:	4107d793          	srai	a5,a5,0x10
   14a70:	04079063          	bnez	a5,14ab0 <eshift.part.0+0x1dc>
   14a74:	01099513          	slli	a0,s3,0x10
   14a78:	01055513          	srli	a0,a0,0x10
   14a7c:	01c12083          	lw	ra,28(sp)
   14a80:	01812403          	lw	s0,24(sp)
   14a84:	01412483          	lw	s1,20(sp)
   14a88:	01012903          	lw	s2,16(sp)
   14a8c:	00c12983          	lw	s3,12(sp)
   14a90:	02010113          	addi	sp,sp,32
   14a94:	00008067          	ret
   14a98:	ff07f913          	andi	s2,a5,-16
   14a9c:	41200933          	neg	s2,s2
   14aa0:	00f90933          	add	s2,s2,a5
   14aa4:	00700793          	li	a5,7
   14aa8:	fb27d0e3          	bge	a5,s2,14a48 <eshift.part.0+0x174>
   14aac:	f55ff06f          	j	14a00 <eshift.part.0+0x12c>
   14ab0:	00100993          	li	s3,1
   14ab4:	01099513          	slli	a0,s3,0x10
   14ab8:	01055513          	srli	a0,a0,0x10
   14abc:	fc1ff06f          	j	14a7c <eshift.part.0+0x1a8>
   14ac0:	00098513          	mv	a0,s3
   14ac4:	00099863          	bnez	s3,14ad4 <eshift.part.0+0x200>
   14ac8:	01051513          	slli	a0,a0,0x10
   14acc:	01055513          	srli	a0,a0,0x10
   14ad0:	eb1ff06f          	j	14980 <eshift.part.0+0xac>
   14ad4:	00100513          	li	a0,1
   14ad8:	ff1ff06f          	j	14ac8 <eshift.part.0+0x1f4>
   14adc:	ff900793          	li	a5,-7
   14ae0:	00000993          	li	s3,0
   14ae4:	f6f5d4e3          	bge	a1,a5,14a4c <eshift.part.0+0x178>
   14ae8:	00440693          	addi	a3,s0,4
   14aec:	f1dff06f          	j	14a08 <eshift.part.0+0x134>

00014af0 <enormlz>:
   14af0:	00455783          	lhu	a5,4(a0)
   14af4:	ff010113          	addi	sp,sp,-16
   14af8:	00912223          	sw	s1,4(sp)
   14afc:	00112623          	sw	ra,12(sp)
   14b00:	00812423          	sw	s0,8(sp)
   14b04:	01212023          	sw	s2,0(sp)
   14b08:	00050493          	mv	s1,a0
   14b0c:	0c079c63          	bnez	a5,14be4 <enormlz+0xf4>
   14b10:	00655703          	lhu	a4,6(a0)
   14b14:	00000413          	li	s0,0
   14b18:	01071793          	slli	a5,a4,0x10
   14b1c:	4107d793          	srai	a5,a5,0x10
   14b20:	0a07c463          	bltz	a5,14bc8 <enormlz+0xd8>
   14b24:	01a50693          	addi	a3,a0,26
   14b28:	0a000613          	li	a2,160
   14b2c:	02071863          	bnez	a4,14b5c <enormlz+0x6c>
   14b30:	00648793          	addi	a5,s1,6
   14b34:	0080006f          	j	14b3c <enormlz+0x4c>
   14b38:	0007d703          	lhu	a4,0(a5)
   14b3c:	00278793          	addi	a5,a5,2
   14b40:	fee79e23          	sh	a4,-4(a5)
   14b44:	fef69ae3          	bne	a3,a5,14b38 <enormlz+0x48>
   14b48:	00049c23          	sh	zero,24(s1)
   14b4c:	01040413          	addi	s0,s0,16
   14b50:	06c40c63          	beq	s0,a2,14bc8 <enormlz+0xd8>
   14b54:	0064d703          	lhu	a4,6(s1)
   14b58:	fc070ce3          	beqz	a4,14b30 <enormlz+0x40>
   14b5c:	f0077793          	andi	a5,a4,-256
   14b60:	04079063          	bnez	a5,14ba0 <enormlz+0xb0>
   14b64:	01848513          	addi	a0,s1,24
   14b68:	00248593          	addi	a1,s1,2
   14b6c:	00000793          	li	a5,0
   14b70:	00050713          	mv	a4,a0
   14b74:	00075683          	lhu	a3,0(a4)
   14b78:	ffe70713          	addi	a4,a4,-2
   14b7c:	00869613          	slli	a2,a3,0x8
   14b80:	00c7e7b3          	or	a5,a5,a2
   14b84:	00f71123          	sh	a5,2(a4)
   14b88:	0086d793          	srli	a5,a3,0x8
   14b8c:	fee594e3          	bne	a1,a4,14b74 <enormlz+0x84>
   14b90:	0064d703          	lhu	a4,6(s1)
   14b94:	00840413          	addi	s0,s0,8
   14b98:	f0077793          	andi	a5,a4,-256
   14b9c:	fc0788e3          	beqz	a5,14b6c <enormlz+0x7c>
   14ba0:	0a000913          	li	s2,160
   14ba4:	0140006f          	j	14bb8 <enormlz+0xc8>
   14ba8:	00140413          	addi	s0,s0,1
   14bac:	8fdff0ef          	jal	ra,144a8 <eshup1>
   14bb0:	00894c63          	blt	s2,s0,14bc8 <enormlz+0xd8>
   14bb4:	0064d703          	lhu	a4,6(s1)
   14bb8:	01071713          	slli	a4,a4,0x10
   14bbc:	41075713          	srai	a4,a4,0x10
   14bc0:	00048513          	mv	a0,s1
   14bc4:	fe0752e3          	bgez	a4,14ba8 <enormlz+0xb8>
   14bc8:	00c12083          	lw	ra,12(sp)
   14bcc:	00040513          	mv	a0,s0
   14bd0:	00812403          	lw	s0,8(sp)
   14bd4:	00412483          	lw	s1,4(sp)
   14bd8:	00012903          	lw	s2,0(sp)
   14bdc:	01010113          	addi	sp,sp,16
   14be0:	00008067          	ret
   14be4:	f007f713          	andi	a4,a5,-256
   14be8:	00000413          	li	s0,0
   14bec:	04071063          	bnez	a4,14c2c <enormlz+0x13c>
   14bf0:	f6f00913          	li	s2,-145
   14bf4:	0140006f          	j	14c08 <enormlz+0x118>
   14bf8:	fff40413          	addi	s0,s0,-1
   14bfc:	845ff0ef          	jal	ra,14440 <eshdn1>
   14c00:	fd2404e3          	beq	s0,s2,14bc8 <enormlz+0xd8>
   14c04:	0044d783          	lhu	a5,4(s1)
   14c08:	00048513          	mv	a0,s1
   14c0c:	fe0796e3          	bnez	a5,14bf8 <enormlz+0x108>
   14c10:	00c12083          	lw	ra,12(sp)
   14c14:	00040513          	mv	a0,s0
   14c18:	00812403          	lw	s0,8(sp)
   14c1c:	00412483          	lw	s1,4(sp)
   14c20:	00012903          	lw	s2,0(sp)
   14c24:	01010113          	addi	sp,sp,16
   14c28:	00008067          	ret
   14c2c:	00450693          	addi	a3,a0,4
   14c30:	01a50593          	addi	a1,a0,26
   14c34:	00000713          	li	a4,0
   14c38:	0080006f          	j	14c40 <enormlz+0x150>
   14c3c:	0006d783          	lhu	a5,0(a3)
   14c40:	0087d613          	srli	a2,a5,0x8
   14c44:	00c76733          	or	a4,a4,a2
   14c48:	00879793          	slli	a5,a5,0x8
   14c4c:	00e69023          	sh	a4,0(a3)
   14c50:	01079713          	slli	a4,a5,0x10
   14c54:	00268693          	addi	a3,a3,2
   14c58:	01075713          	srli	a4,a4,0x10
   14c5c:	feb690e3          	bne	a3,a1,14c3c <enormlz+0x14c>
   14c60:	0044d783          	lhu	a5,4(s1)
   14c64:	ff800413          	li	s0,-8
   14c68:	f89ff06f          	j	14bf0 <enormlz+0x100>

00014c6c <emdnorm>:
   14c6c:	fe010113          	addi	sp,sp,-32
   14c70:	00812c23          	sw	s0,24(sp)
   14c74:	00912a23          	sw	s1,20(sp)
   14c78:	01212823          	sw	s2,16(sp)
   14c7c:	01312623          	sw	s3,12(sp)
   14c80:	01412423          	sw	s4,8(sp)
   14c84:	01512223          	sw	s5,4(sp)
   14c88:	00068913          	mv	s2,a3
   14c8c:	00078493          	mv	s1,a5
   14c90:	00112e23          	sw	ra,28(sp)
   14c94:	00050413          	mv	s0,a0
   14c98:	00058993          	mv	s3,a1
   14c9c:	00060a13          	mv	s4,a2
   14ca0:	00070a93          	mv	s5,a4
   14ca4:	e4dff0ef          	jal	ra,14af0 <enormlz>
   14ca8:	09000793          	li	a5,144
   14cac:	40a90933          	sub	s2,s2,a0
   14cb0:	16a7dc63          	bge	a5,a0,14e28 <emdnorm+0x1bc>
   14cb4:	000087b7          	lui	a5,0x8
   14cb8:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14cbc:	1f27da63          	bge	a5,s2,14eb0 <emdnorm+0x244>
   14cc0:	1c0a8463          	beqz	s5,14e88 <emdnorm+0x21c>
   14cc4:	0044a503          	lw	a0,4(s1)
   14cc8:	0004a783          	lw	a5,0(s1)
   14ccc:	06f50a63          	beq	a0,a5,14d40 <emdnorm+0xd4>
   14cd0:	01a48713          	addi	a4,s1,26
   14cd4:	03448793          	addi	a5,s1,52
   14cd8:	00270713          	addi	a4,a4,2
   14cdc:	fe071f23          	sh	zero,-2(a4)
   14ce0:	fef71ce3          	bne	a4,a5,14cd8 <emdnorm+0x6c>
   14ce4:	03800793          	li	a5,56
   14ce8:	32f50c63          	beq	a0,a5,15020 <emdnorm+0x3b4>
   14cec:	16a7d063          	bge	a5,a0,14e4c <emdnorm+0x1e0>
   14cf0:	04000793          	li	a5,64
   14cf4:	2ef50c63          	beq	a0,a5,14fec <emdnorm+0x380>
   14cf8:	07100793          	li	a5,113
   14cfc:	34f51863          	bne	a0,a5,1504c <emdnorm+0x3e0>
   14d00:	400087b7          	lui	a5,0x40008
   14d04:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe102f>
   14d08:	00a00713          	li	a4,10
   14d0c:	00f4aa23          	sw	a5,20(s1)
   14d10:	ffff87b7          	lui	a5,0xffff8
   14d14:	00e4a423          	sw	a4,8(s1)
   14d18:	00f49c23          	sh	a5,24(s1)
   14d1c:	00e4a623          	sw	a4,12(s1)
   14d20:	00a00793          	li	a5,10
   14d24:	00008737          	lui	a4,0x8
   14d28:	00878793          	addi	a5,a5,8 # ffff8008 <__BSS_END__+0xfffd1038>
   14d2c:	00179793          	slli	a5,a5,0x1
   14d30:	00f487b3          	add	a5,s1,a5
   14d34:	00e79523          	sh	a4,10(a5)
   14d38:	00a4a023          	sw	a0,0(s1)
   14d3c:	1b205863          	blez	s2,14eec <emdnorm+0x280>
   14d40:	0084a583          	lw	a1,8(s1)
   14d44:	0144d783          	lhu	a5,20(s1)
   14d48:	08f00813          	li	a6,143
   14d4c:	00159613          	slli	a2,a1,0x1
   14d50:	00c40633          	add	a2,s0,a2
   14d54:	00065703          	lhu	a4,0(a2)
   14d58:	00f776b3          	and	a3,a4,a5
   14d5c:	02a84a63          	blt	a6,a0,14d90 <emdnorm+0x124>
   14d60:	00b00813          	li	a6,11
   14d64:	02b84663          	blt	a6,a1,14d90 <emdnorm+0x124>
   14d68:	00060793          	mv	a5,a2
   14d6c:	01840593          	addi	a1,s0,24
   14d70:	0027d703          	lhu	a4,2(a5)
   14d74:	00070463          	beqz	a4,14d7c <emdnorm+0x110>
   14d78:	0016e693          	ori	a3,a3,1
   14d7c:	00079123          	sh	zero,2(a5)
   14d80:	00278793          	addi	a5,a5,2
   14d84:	fef596e3          	bne	a1,a5,14d70 <emdnorm+0x104>
   14d88:	00065703          	lhu	a4,0(a2)
   14d8c:	0144d783          	lhu	a5,20(s1)
   14d90:	fff7c793          	not	a5,a5
   14d94:	00e7f7b3          	and	a5,a5,a4
   14d98:	00f61023          	sh	a5,0(a2)
   14d9c:	0164d783          	lhu	a5,22(s1)
   14da0:	00d7f733          	and	a4,a5,a3
   14da4:	04070063          	beqz	a4,14de4 <emdnorm+0x178>
   14da8:	1ad78463          	beq	a5,a3,14f50 <emdnorm+0x2e4>
   14dac:	03248613          	addi	a2,s1,50
   14db0:	01840693          	addi	a3,s0,24
   14db4:	01c48493          	addi	s1,s1,28
   14db8:	00000713          	li	a4,0
   14dbc:	00065783          	lhu	a5,0(a2)
   14dc0:	0006d583          	lhu	a1,0(a3)
   14dc4:	ffe68693          	addi	a3,a3,-2
   14dc8:	ffe60613          	addi	a2,a2,-2
   14dcc:	00b787b3          	add	a5,a5,a1
   14dd0:	00e787b3          	add	a5,a5,a4
   14dd4:	0107d713          	srli	a4,a5,0x10
   14dd8:	00f69123          	sh	a5,2(a3)
   14ddc:	00177713          	andi	a4,a4,1
   14de0:	fc961ee3          	bne	a2,s1,14dbc <emdnorm+0x150>
   14de4:	19205863          	blez	s2,14f74 <emdnorm+0x308>
   14de8:	00445783          	lhu	a5,4(s0)
   14dec:	12079e63          	bnez	a5,14f28 <emdnorm+0x2bc>
   14df0:	000087b7          	lui	a5,0x8
   14df4:	00041c23          	sh	zero,24(s0)
   14df8:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14dfc:	0927c863          	blt	a5,s2,14e8c <emdnorm+0x220>
   14e00:	01241123          	sh	s2,2(s0)
   14e04:	01c12083          	lw	ra,28(sp)
   14e08:	01812403          	lw	s0,24(sp)
   14e0c:	01412483          	lw	s1,20(sp)
   14e10:	01012903          	lw	s2,16(sp)
   14e14:	00c12983          	lw	s3,12(sp)
   14e18:	00812a03          	lw	s4,8(sp)
   14e1c:	00412a83          	lw	s5,4(sp)
   14e20:	02010113          	addi	sp,sp,32
   14e24:	00008067          	ret
   14e28:	0e095463          	bgez	s2,14f10 <emdnorm+0x2a4>
   14e2c:	f7000793          	li	a5,-144
   14e30:	08f95c63          	bge	s2,a5,14ec8 <emdnorm+0x25c>
   14e34:	00240793          	addi	a5,s0,2
   14e38:	01a40413          	addi	s0,s0,26
   14e3c:	00278793          	addi	a5,a5,2
   14e40:	fe079f23          	sh	zero,-2(a5)
   14e44:	fe879ce3          	bne	a5,s0,14e3c <emdnorm+0x1d0>
   14e48:	fbdff06f          	j	14e04 <emdnorm+0x198>
   14e4c:	01800793          	li	a5,24
   14e50:	16f50863          	beq	a0,a5,14fc0 <emdnorm+0x354>
   14e54:	03500793          	li	a5,53
   14e58:	1ef51a63          	bne	a0,a5,1504c <emdnorm+0x3e0>
   14e5c:	00001737          	lui	a4,0x1
   14e60:	040007b7          	lui	a5,0x4000
   14e64:	00600693          	li	a3,6
   14e68:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fd982f>
   14e6c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   14e70:	00f4aa23          	sw	a5,20(s1)
   14e74:	00d4a423          	sw	a3,8(s1)
   14e78:	00e49c23          	sh	a4,24(s1)
   14e7c:	00d4a623          	sw	a3,12(s1)
   14e80:	00600793          	li	a5,6
   14e84:	ea5ff06f          	j	14d28 <emdnorm+0xbc>
   14e88:	00041c23          	sh	zero,24(s0)
   14e8c:	ffff87b7          	lui	a5,0xffff8
   14e90:	fff7c793          	not	a5,a5
   14e94:	00f41123          	sh	a5,2(s0)
   14e98:	00440793          	addi	a5,s0,4
   14e9c:	01840413          	addi	s0,s0,24
   14ea0:	00079023          	sh	zero,0(a5) # ffff8000 <__BSS_END__+0xfffd1030>
   14ea4:	00278793          	addi	a5,a5,2
   14ea8:	fef41ce3          	bne	s0,a5,14ea0 <emdnorm+0x234>
   14eac:	f59ff06f          	j	14e04 <emdnorm+0x198>
   14eb0:	00240793          	addi	a5,s0,2
   14eb4:	01a40413          	addi	s0,s0,26
   14eb8:	00278793          	addi	a5,a5,2
   14ebc:	fe079f23          	sh	zero,-2(a5)
   14ec0:	fe879ce3          	bne	a5,s0,14eb8 <emdnorm+0x24c>
   14ec4:	f41ff06f          	j	14e04 <emdnorm+0x198>
   14ec8:	00090593          	mv	a1,s2
   14ecc:	00040513          	mv	a0,s0
   14ed0:	a05ff0ef          	jal	ra,148d4 <eshift.part.0>
   14ed4:	00050463          	beqz	a0,14edc <emdnorm+0x270>
   14ed8:	00100993          	li	s3,1
   14edc:	0c0a8c63          	beqz	s5,14fb4 <emdnorm+0x348>
   14ee0:	0044a503          	lw	a0,4(s1)
   14ee4:	0004a783          	lw	a5,0(s1)
   14ee8:	def514e3          	bne	a0,a5,14cd0 <emdnorm+0x64>
   14eec:	09000793          	li	a5,144
   14ef0:	0af50463          	beq	a0,a5,14f98 <emdnorm+0x32c>
   14ef4:	01845783          	lhu	a5,24(s0)
   14ef8:	00040513          	mv	a0,s0
   14efc:	0017f793          	andi	a5,a5,1
   14f00:	00f9e9b3          	or	s3,s3,a5
   14f04:	d3cff0ef          	jal	ra,14440 <eshdn1>
   14f08:	0044a503          	lw	a0,4(s1)
   14f0c:	e35ff06f          	j	14d40 <emdnorm+0xd4>
   14f10:	ee0a80e3          	beqz	s5,14df0 <emdnorm+0x184>
   14f14:	0044a503          	lw	a0,4(s1)
   14f18:	0004a783          	lw	a5,0(s1)
   14f1c:	daf51ae3          	bne	a0,a5,14cd0 <emdnorm+0x64>
   14f20:	e32040e3          	bgtz	s2,14d40 <emdnorm+0xd4>
   14f24:	fc9ff06f          	j	14eec <emdnorm+0x280>
   14f28:	00040513          	mv	a0,s0
   14f2c:	d14ff0ef          	jal	ra,14440 <eshdn1>
   14f30:	000087b7          	lui	a5,0x8
   14f34:	00190913          	addi	s2,s2,1
   14f38:	00041c23          	sh	zero,24(s0)
   14f3c:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   14f40:	f527c6e3          	blt	a5,s2,14e8c <emdnorm+0x220>
   14f44:	ea095ee3          	bgez	s2,14e00 <emdnorm+0x194>
   14f48:	00041123          	sh	zero,2(s0)
   14f4c:	eb9ff06f          	j	14e04 <emdnorm+0x198>
   14f50:	0c099463          	bnez	s3,15018 <emdnorm+0x3ac>
   14f54:	00c4a783          	lw	a5,12(s1)
   14f58:	0184d703          	lhu	a4,24(s1)
   14f5c:	00179793          	slli	a5,a5,0x1
   14f60:	00f407b3          	add	a5,s0,a5
   14f64:	0007d783          	lhu	a5,0(a5)
   14f68:	00e7f7b3          	and	a5,a5,a4
   14f6c:	e40790e3          	bnez	a5,14dac <emdnorm+0x140>
   14f70:	e7204ce3          	bgtz	s2,14de8 <emdnorm+0x17c>
   14f74:	09000793          	li	a5,144
   14f78:	00f50663          	beq	a0,a5,14f84 <emdnorm+0x318>
   14f7c:	00040513          	mv	a0,s0
   14f80:	d28ff0ef          	jal	ra,144a8 <eshup1>
   14f84:	00445783          	lhu	a5,4(s0)
   14f88:	fa0790e3          	bnez	a5,14f28 <emdnorm+0x2bc>
   14f8c:	00041c23          	sh	zero,24(s0)
   14f90:	fa094ce3          	bltz	s2,14f48 <emdnorm+0x2dc>
   14f94:	e6dff06f          	j	14e00 <emdnorm+0x194>
   14f98:	0084a603          	lw	a2,8(s1)
   14f9c:	0144d783          	lhu	a5,20(s1)
   14fa0:	00161613          	slli	a2,a2,0x1
   14fa4:	00c40633          	add	a2,s0,a2
   14fa8:	00065703          	lhu	a4,0(a2)
   14fac:	00e7f6b3          	and	a3,a5,a4
   14fb0:	de1ff06f          	j	14d90 <emdnorm+0x124>
   14fb4:	00041c23          	sh	zero,24(s0)
   14fb8:	00041123          	sh	zero,2(s0)
   14fbc:	e49ff06f          	j	14e04 <emdnorm+0x198>
   14fc0:	008007b7          	lui	a5,0x800
   14fc4:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d912f>
   14fc8:	00400713          	li	a4,4
   14fcc:	00f4aa23          	sw	a5,20(s1)
   14fd0:	10000793          	li	a5,256
   14fd4:	00e4a423          	sw	a4,8(s1)
   14fd8:	00f49c23          	sh	a5,24(s1)
   14fdc:	00e4a623          	sw	a4,12(s1)
   14fe0:	00400793          	li	a5,4
   14fe4:	10000713          	li	a4,256
   14fe8:	d41ff06f          	j	14d28 <emdnorm+0xbc>
   14fec:	00700793          	li	a5,7
   14ff0:	00f4a423          	sw	a5,8(s1)
   14ff4:	800107b7          	lui	a5,0x80010
   14ff8:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe902f>
   14ffc:	00f4aa23          	sw	a5,20(s1)
   15000:	00100793          	li	a5,1
   15004:	00f49c23          	sh	a5,24(s1)
   15008:	00600793          	li	a5,6
   1500c:	00f4a623          	sw	a5,12(s1)
   15010:	00100713          	li	a4,1
   15014:	d15ff06f          	j	14d28 <emdnorm+0xbc>
   15018:	d80a0ae3          	beqz	s4,14dac <emdnorm+0x140>
   1501c:	dc9ff06f          	j	14de4 <emdnorm+0x178>
   15020:	008007b7          	lui	a5,0x800
   15024:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d912f>
   15028:	00600713          	li	a4,6
   1502c:	00f4aa23          	sw	a5,20(s1)
   15030:	10000793          	li	a5,256
   15034:	00e4a423          	sw	a4,8(s1)
   15038:	00f49c23          	sh	a5,24(s1)
   1503c:	00e4a623          	sw	a4,12(s1)
   15040:	00600793          	li	a5,6
   15044:	10000713          	li	a4,256
   15048:	ce1ff06f          	j	14d28 <emdnorm+0xbc>
   1504c:	00c00793          	li	a5,12
   15050:	00f4a423          	sw	a5,8(s1)
   15054:	800107b7          	lui	a5,0x80010
   15058:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe902f>
   1505c:	00f4aa23          	sw	a5,20(s1)
   15060:	00100793          	li	a5,1
   15064:	00f49c23          	sh	a5,24(s1)
   15068:	00b00793          	li	a5,11
   1506c:	00f4a623          	sw	a5,12(s1)
   15070:	00100713          	li	a4,1
   15074:	cb5ff06f          	j	14d28 <emdnorm+0xbc>

00015078 <eiremain>:
   15078:	fd010113          	addi	sp,sp,-48
   1507c:	02912223          	sw	s1,36(sp)
   15080:	01312e23          	sw	s3,28(sp)
   15084:	00058493          	mv	s1,a1
   15088:	00255983          	lhu	s3,2(a0)
   1508c:	02112623          	sw	ra,44(sp)
   15090:	02812423          	sw	s0,40(sp)
   15094:	03212023          	sw	s2,32(sp)
   15098:	01412c23          	sw	s4,24(sp)
   1509c:	00060913          	mv	s2,a2
   150a0:	01512a23          	sw	s5,20(sp)
   150a4:	01612823          	sw	s6,16(sp)
   150a8:	01712623          	sw	s7,12(sp)
   150ac:	01812423          	sw	s8,8(sp)
   150b0:	01912223          	sw	s9,4(sp)
   150b4:	01a12023          	sw	s10,0(sp)
   150b8:	00050a13          	mv	s4,a0
   150bc:	a35ff0ef          	jal	ra,14af0 <enormlz>
   150c0:	0024d403          	lhu	s0,2(s1)
   150c4:	00050793          	mv	a5,a0
   150c8:	00048513          	mv	a0,s1
   150cc:	40f989b3          	sub	s3,s3,a5
   150d0:	03490a93          	addi	s5,s2,52
   150d4:	a1dff0ef          	jal	ra,14af0 <enormlz>
   150d8:	40a40433          	sub	s0,s0,a0
   150dc:	04e90713          	addi	a4,s2,78
   150e0:	000a8793          	mv	a5,s5
   150e4:	00278793          	addi	a5,a5,2
   150e8:	fe079f23          	sh	zero,-2(a5)
   150ec:	fee79ce3          	bne	a5,a4,150e4 <eiremain+0x6c>
   150f0:	09344a63          	blt	s0,s3,15184 <eiremain+0x10c>
   150f4:	004a0b93          	addi	s7,s4,4
   150f8:	00448b13          	addi	s6,s1,4
   150fc:	fff98993          	addi	s3,s3,-1
   15100:	01aa0c93          	addi	s9,s4,26
   15104:	00248c13          	addi	s8,s1,2
   15108:	000b0713          	mv	a4,s6
   1510c:	000b8793          	mv	a5,s7
   15110:	0007d603          	lhu	a2,0(a5)
   15114:	00075683          	lhu	a3,0(a4)
   15118:	00278793          	addi	a5,a5,2
   1511c:	00270713          	addi	a4,a4,2
   15120:	0ad61a63          	bne	a2,a3,151d4 <eiremain+0x15c>
   15124:	ff9796e3          	bne	a5,s9,15110 <eiremain+0x98>
   15128:	018a0613          	addi	a2,s4,24
   1512c:	01848713          	addi	a4,s1,24
   15130:	00000693          	li	a3,0
   15134:	00075783          	lhu	a5,0(a4)
   15138:	00065583          	lhu	a1,0(a2)
   1513c:	ffe70713          	addi	a4,a4,-2
   15140:	40d787b3          	sub	a5,a5,a3
   15144:	40b787b3          	sub	a5,a5,a1
   15148:	0107d693          	srli	a3,a5,0x10
   1514c:	00f71123          	sh	a5,2(a4)
   15150:	0016f693          	andi	a3,a3,1
   15154:	ffe60613          	addi	a2,a2,-2
   15158:	fcec1ee3          	bne	s8,a4,15134 <eiremain+0xbc>
   1515c:	00100d13          	li	s10,1
   15160:	000a8513          	mv	a0,s5
   15164:	b44ff0ef          	jal	ra,144a8 <eshup1>
   15168:	04c95783          	lhu	a5,76(s2)
   1516c:	fff40413          	addi	s0,s0,-1
   15170:	00048513          	mv	a0,s1
   15174:	00fd6d33          	or	s10,s10,a5
   15178:	05a91623          	sh	s10,76(s2)
   1517c:	b2cff0ef          	jal	ra,144a8 <eshup1>
   15180:	f93414e3          	bne	s0,s3,15108 <eiremain+0x90>
   15184:	00040693          	mv	a3,s0
   15188:	02812403          	lw	s0,40(sp)
   1518c:	02c12083          	lw	ra,44(sp)
   15190:	01c12983          	lw	s3,28(sp)
   15194:	01812a03          	lw	s4,24(sp)
   15198:	01412a83          	lw	s5,20(sp)
   1519c:	01012b03          	lw	s6,16(sp)
   151a0:	00c12b83          	lw	s7,12(sp)
   151a4:	00812c03          	lw	s8,8(sp)
   151a8:	00412c83          	lw	s9,4(sp)
   151ac:	00012d03          	lw	s10,0(sp)
   151b0:	00090793          	mv	a5,s2
   151b4:	00048513          	mv	a0,s1
   151b8:	02012903          	lw	s2,32(sp)
   151bc:	02412483          	lw	s1,36(sp)
   151c0:	00000713          	li	a4,0
   151c4:	00000613          	li	a2,0
   151c8:	00000593          	li	a1,0
   151cc:	03010113          	addi	sp,sp,48
   151d0:	a9dff06f          	j	14c6c <emdnorm>
   151d4:	00000d13          	li	s10,0
   151d8:	f8c6e4e3          	bltu	a3,a2,15160 <eiremain+0xe8>
   151dc:	f4dff06f          	j	15128 <eiremain+0xb0>

000151e0 <emovo.isra.0>:
   151e0:	00055703          	lhu	a4,0(a0)
   151e4:	00255783          	lhu	a5,2(a0)
   151e8:	00070663          	beqz	a4,151f4 <emovo.isra.0+0x14>
   151ec:	00008737          	lui	a4,0x8
   151f0:	00e7e7b3          	or	a5,a5,a4
   151f4:	00f59923          	sh	a5,18(a1)
   151f8:	00255703          	lhu	a4,2(a0)
   151fc:	000087b7          	lui	a5,0x8
   15200:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15204:	02f70463          	beq	a4,a5,1522c <emovo.isra.0+0x4c>
   15208:	00650793          	addi	a5,a0,6
   1520c:	01058593          	addi	a1,a1,16
   15210:	01850513          	addi	a0,a0,24
   15214:	0007d703          	lhu	a4,0(a5)
   15218:	00278793          	addi	a5,a5,2
   1521c:	ffe58593          	addi	a1,a1,-2
   15220:	00e59123          	sh	a4,2(a1)
   15224:	fea798e3          	bne	a5,a0,15214 <emovo.isra.0+0x34>
   15228:	00008067          	ret
   1522c:	00650793          	addi	a5,a0,6
   15230:	01a50513          	addi	a0,a0,26
   15234:	0007d703          	lhu	a4,0(a5)
   15238:	00278793          	addi	a5,a5,2
   1523c:	02071a63          	bnez	a4,15270 <emovo.isra.0+0x90>
   15240:	fea79ae3          	bne	a5,a0,15234 <emovo.isra.0+0x54>
   15244:	01258713          	addi	a4,a1,18
   15248:	00058793          	mv	a5,a1
   1524c:	00278793          	addi	a5,a5,2
   15250:	fe079f23          	sh	zero,-2(a5)
   15254:	fef71ce3          	bne	a4,a5,1524c <emovo.isra.0+0x6c>
   15258:	0125d783          	lhu	a5,18(a1)
   1525c:	00008737          	lui	a4,0x8
   15260:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15264:	00e7e7b3          	or	a5,a5,a4
   15268:	00f59923          	sh	a5,18(a1)
   1526c:	00008067          	ret
   15270:	01058713          	addi	a4,a1,16
   15274:	00058793          	mv	a5,a1
   15278:	00278793          	addi	a5,a5,2
   1527c:	fe079f23          	sh	zero,-2(a5)
   15280:	fef71ce3          	bne	a4,a5,15278 <emovo.isra.0+0x98>
   15284:	7fffc7b7          	lui	a5,0x7fffc
   15288:	00f5a823          	sw	a5,16(a1)
   1528c:	00008067          	ret

00015290 <emul>:
   15290:	f7010113          	addi	sp,sp,-144
   15294:	07612823          	sw	s6,112(sp)
   15298:	01255b03          	lhu	s6,18(a0)
   1529c:	000087b7          	lui	a5,0x8
   152a0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   152a4:	07412c23          	sw	s4,120(sp)
   152a8:	0167fa33          	and	s4,a5,s6
   152ac:	010a1a13          	slli	s4,s4,0x10
   152b0:	08812423          	sw	s0,136(sp)
   152b4:	08912223          	sw	s1,132(sp)
   152b8:	09212023          	sw	s2,128(sp)
   152bc:	07312e23          	sw	s3,124(sp)
   152c0:	08112623          	sw	ra,140(sp)
   152c4:	07512a23          	sw	s5,116(sp)
   152c8:	07712623          	sw	s7,108(sp)
   152cc:	07812423          	sw	s8,104(sp)
   152d0:	07912223          	sw	s9,100(sp)
   152d4:	010a5a13          	srli	s4,s4,0x10
   152d8:	00050493          	mv	s1,a0
   152dc:	00058913          	mv	s2,a1
   152e0:	00060413          	mv	s0,a2
   152e4:	00068993          	mv	s3,a3
   152e8:	10fa1263          	bne	s4,a5,153ec <emul+0x15c>
   152ec:	b08ff0ef          	jal	ra,145f4 <eisnan.part.0>
   152f0:	28051a63          	bnez	a0,15584 <emul+0x2f4>
   152f4:	01295a83          	lhu	s5,18(s2)
   152f8:	015a77b3          	and	a5,s4,s5
   152fc:	2b478263          	beq	a5,s4,155a0 <emul+0x310>
   15300:	00048513          	mv	a0,s1
   15304:	db4ff0ef          	jal	ra,148b8 <eisinf.part.0>
   15308:	2e050e63          	beqz	a0,15604 <emul+0x374>
   1530c:	000255b7          	lui	a1,0x25
   15310:	9fc58593          	addi	a1,a1,-1540 # 249fc <ezero>
   15314:	00090513          	mv	a0,s2
   15318:	c84ff0ef          	jal	ra,1479c <ecmp>
   1531c:	36050663          	beqz	a0,15688 <emul+0x3f8>
   15320:	01295a83          	lhu	s5,18(s2)
   15324:	000087b7          	lui	a5,0x8
   15328:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1532c:	0157fab3          	and	s5,a5,s5
   15330:	010a9a93          	slli	s5,s5,0x10
   15334:	010ada93          	srli	s5,s5,0x10
   15338:	2cfa9463          	bne	s5,a5,15600 <emul+0x370>
   1533c:	00090513          	mv	a0,s2
   15340:	d78ff0ef          	jal	ra,148b8 <eisinf.part.0>
   15344:	32051063          	bnez	a0,15664 <emul+0x3d4>
   15348:	0124d783          	lhu	a5,18(s1)
   1534c:	00faf7b3          	and	a5,s5,a5
   15350:	0b579863          	bne	a5,s5,15400 <emul+0x170>
   15354:	00048513          	mv	a0,s1
   15358:	d60ff0ef          	jal	ra,148b8 <eisinf.part.0>
   1535c:	00051863          	bnez	a0,1536c <emul+0xdc>
   15360:	00090513          	mv	a0,s2
   15364:	d54ff0ef          	jal	ra,148b8 <eisinf.part.0>
   15368:	08050c63          	beqz	a0,15400 <emul+0x170>
   1536c:	00048513          	mv	a0,s1
   15370:	af4ff0ef          	jal	ra,14664 <eisneg>
   15374:	00050493          	mv	s1,a0
   15378:	00090513          	mv	a0,s2
   1537c:	ae8ff0ef          	jal	ra,14664 <eisneg>
   15380:	40a484b3          	sub	s1,s1,a0
   15384:	009034b3          	snez	s1,s1
   15388:	00f49493          	slli	s1,s1,0xf
   1538c:	00941923          	sh	s1,18(s0)
   15390:	01240713          	addi	a4,s0,18
   15394:	00040793          	mv	a5,s0
   15398:	00278793          	addi	a5,a5,2
   1539c:	fe079f23          	sh	zero,-2(a5)
   153a0:	fef71ce3          	bne	a4,a5,15398 <emul+0x108>
   153a4:	01245783          	lhu	a5,18(s0)
   153a8:	00008737          	lui	a4,0x8
   153ac:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   153b0:	00e7e7b3          	or	a5,a5,a4
   153b4:	00f41923          	sh	a5,18(s0)
   153b8:	08c12083          	lw	ra,140(sp)
   153bc:	08812403          	lw	s0,136(sp)
   153c0:	08412483          	lw	s1,132(sp)
   153c4:	08012903          	lw	s2,128(sp)
   153c8:	07c12983          	lw	s3,124(sp)
   153cc:	07812a03          	lw	s4,120(sp)
   153d0:	07412a83          	lw	s5,116(sp)
   153d4:	07012b03          	lw	s6,112(sp)
   153d8:	06c12b83          	lw	s7,108(sp)
   153dc:	06812c03          	lw	s8,104(sp)
   153e0:	06412c83          	lw	s9,100(sp)
   153e4:	09010113          	addi	sp,sp,144
   153e8:	00008067          	ret
   153ec:	0125da83          	lhu	s5,18(a1)
   153f0:	0157f733          	and	a4,a5,s5
   153f4:	01071713          	slli	a4,a4,0x10
   153f8:	01075713          	srli	a4,a4,0x10
   153fc:	04f70a63          	beq	a4,a5,15450 <emul+0x1c0>
   15400:	00048513          	mv	a0,s1
   15404:	00c10593          	addi	a1,sp,12
   15408:	a9cff0ef          	jal	ra,146a4 <emovi>
   1540c:	00090513          	mv	a0,s2
   15410:	02810593          	addi	a1,sp,40
   15414:	a90ff0ef          	jal	ra,146a4 <emovi>
   15418:	00e15483          	lhu	s1,14(sp)
   1541c:	02a15903          	lhu	s2,42(sp)
   15420:	04049c63          	bnez	s1,15478 <emul+0x1e8>
   15424:	01010793          	addi	a5,sp,16
   15428:	02410693          	addi	a3,sp,36
   1542c:	20d78863          	beq	a5,a3,1563c <emul+0x3ac>
   15430:	0007d703          	lhu	a4,0(a5)
   15434:	00278793          	addi	a5,a5,2
   15438:	fe070ae3          	beqz	a4,1542c <emul+0x19c>
   1543c:	00c10513          	addi	a0,sp,12
   15440:	eb0ff0ef          	jal	ra,14af0 <enormlz>
   15444:	02a15703          	lhu	a4,42(sp)
   15448:	40a004b3          	neg	s1,a0
   1544c:	0300006f          	j	1547c <emul+0x1ec>
   15450:	00058513          	mv	a0,a1
   15454:	9a0ff0ef          	jal	ra,145f4 <eisnan.part.0>
   15458:	ec0506e3          	beqz	a0,15324 <emul+0x94>
   1545c:	01490713          	addi	a4,s2,20
   15460:	00095783          	lhu	a5,0(s2)
   15464:	00290913          	addi	s2,s2,2
   15468:	00240413          	addi	s0,s0,2
   1546c:	fef41f23          	sh	a5,-2(s0)
   15470:	fee918e3          	bne	s2,a4,15460 <emul+0x1d0>
   15474:	f45ff06f          	j	153b8 <emul+0x128>
   15478:	00090713          	mv	a4,s2
   1547c:	00090a93          	mv	s5,s2
   15480:	02c10793          	addi	a5,sp,44
   15484:	04010693          	addi	a3,sp,64
   15488:	02071263          	bnez	a4,154ac <emul+0x21c>
   1548c:	1cf68263          	beq	a3,a5,15650 <emul+0x3c0>
   15490:	0007d703          	lhu	a4,0(a5)
   15494:	00278793          	addi	a5,a5,2
   15498:	fe070ae3          	beqz	a4,1548c <emul+0x1fc>
   1549c:	02810513          	addi	a0,sp,40
   154a0:	e50ff0ef          	jal	ra,14af0 <enormlz>
   154a4:	02a15703          	lhu	a4,42(sp)
   154a8:	40a90ab3          	sub	s5,s2,a0
   154ac:	02815783          	lhu	a5,40(sp)
   154b0:	03898c13          	addi	s8,s3,56
   154b4:	02e99b23          	sh	a4,54(s3)
   154b8:	02f99a23          	sh	a5,52(s3)
   154bc:	04e98713          	addi	a4,s3,78
   154c0:	000c0793          	mv	a5,s8
   154c4:	00079023          	sh	zero,0(a5)
   154c8:	00278793          	addi	a5,a5,2
   154cc:	fef71ce3          	bne	a4,a5,154c4 <emul+0x234>
   154d0:	04c98a13          	addi	s4,s3,76
   154d4:	00000b93          	li	s7,0
   154d8:	02410913          	addi	s2,sp,36
   154dc:	01010c93          	addi	s9,sp,16
   154e0:	04610b13          	addi	s6,sp,70
   154e4:	00095503          	lhu	a0,0(s2)
   154e8:	ffe90913          	addi	s2,s2,-2
   154ec:	0c051863          	bnez	a0,155bc <emul+0x32c>
   154f0:	04c9d703          	lhu	a4,76(s3)
   154f4:	000a0793          	mv	a5,s4
   154f8:	00ebebb3          	or	s7,s7,a4
   154fc:	ffe7d703          	lhu	a4,-2(a5)
   15500:	ffe78793          	addi	a5,a5,-2
   15504:	00e79123          	sh	a4,2(a5)
   15508:	ff879ae3          	bne	a5,s8,154fc <emul+0x26c>
   1550c:	02099c23          	sh	zero,56(s3)
   15510:	fd991ae3          	bne	s2,s9,154e4 <emul+0x254>
   15514:	03498713          	addi	a4,s3,52
   15518:	02810793          	addi	a5,sp,40
   1551c:	04210593          	addi	a1,sp,66
   15520:	00075603          	lhu	a2,0(a4)
   15524:	00278793          	addi	a5,a5,2
   15528:	00270713          	addi	a4,a4,2
   1552c:	fec79f23          	sh	a2,-2(a5)
   15530:	fef598e3          	bne	a1,a5,15520 <emul+0x290>
   15534:	ffffc6b7          	lui	a3,0xffffc
   15538:	015484b3          	add	s1,s1,s5
   1553c:	00268693          	addi	a3,a3,2 # ffffc002 <__BSS_END__+0xfffd5032>
   15540:	000b8593          	mv	a1,s7
   15544:	02810513          	addi	a0,sp,40
   15548:	00098793          	mv	a5,s3
   1554c:	04000713          	li	a4,64
   15550:	00d486b3          	add	a3,s1,a3
   15554:	00000613          	li	a2,0
   15558:	f14ff0ef          	jal	ra,14c6c <emdnorm>
   1555c:	02815703          	lhu	a4,40(sp)
   15560:	00c15783          	lhu	a5,12(sp)
   15564:	00040593          	mv	a1,s0
   15568:	02810513          	addi	a0,sp,40
   1556c:	40e787b3          	sub	a5,a5,a4
   15570:	00f037b3          	snez	a5,a5
   15574:	40f007b3          	neg	a5,a5
   15578:	02f11423          	sh	a5,40(sp)
   1557c:	c65ff0ef          	jal	ra,151e0 <emovo.isra.0>
   15580:	e39ff06f          	j	153b8 <emul+0x128>
   15584:	01448713          	addi	a4,s1,20
   15588:	0004d783          	lhu	a5,0(s1)
   1558c:	00248493          	addi	s1,s1,2
   15590:	00240413          	addi	s0,s0,2
   15594:	fef41f23          	sh	a5,-2(s0)
   15598:	fee498e3          	bne	s1,a4,15588 <emul+0x2f8>
   1559c:	e1dff06f          	j	153b8 <emul+0x128>
   155a0:	00090513          	mv	a0,s2
   155a4:	850ff0ef          	jal	ra,145f4 <eisnan.part.0>
   155a8:	ea051ae3          	bnez	a0,1545c <emul+0x1cc>
   155ac:	00048513          	mv	a0,s1
   155b0:	b08ff0ef          	jal	ra,148b8 <eisinf.part.0>
   155b4:	d60508e3          	beqz	a0,15324 <emul+0x94>
   155b8:	d55ff06f          	j	1530c <emul+0x7c>
   155bc:	04410613          	addi	a2,sp,68
   155c0:	02810593          	addi	a1,sp,40
   155c4:	f55fe0ef          	jal	ra,14518 <m16m>
   155c8:	000a0593          	mv	a1,s4
   155cc:	00000613          	li	a2,0
   155d0:	05c10713          	addi	a4,sp,92
   155d4:	0005d803          	lhu	a6,0(a1)
   155d8:	00075783          	lhu	a5,0(a4)
   155dc:	ffe58593          	addi	a1,a1,-2
   155e0:	ffe70713          	addi	a4,a4,-2
   155e4:	010787b3          	add	a5,a5,a6
   155e8:	00c787b3          	add	a5,a5,a2
   155ec:	0107d613          	srli	a2,a5,0x10
   155f0:	00f59123          	sh	a5,2(a1)
   155f4:	00167613          	andi	a2,a2,1
   155f8:	fd671ee3          	bne	a4,s6,155d4 <emul+0x344>
   155fc:	ef5ff06f          	j	154f0 <emul+0x260>
   15600:	0124db03          	lhu	s6,18(s1)
   15604:	000087b7          	lui	a5,0x8
   15608:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1560c:	0167fb33          	and	s6,a5,s6
   15610:	010b1b13          	slli	s6,s6,0x10
   15614:	010b5b13          	srli	s6,s6,0x10
   15618:	defb14e3          	bne	s6,a5,15400 <emul+0x170>
   1561c:	00048513          	mv	a0,s1
   15620:	a98ff0ef          	jal	ra,148b8 <eisinf.part.0>
   15624:	d40514e3          	bnez	a0,1536c <emul+0xdc>
   15628:	01295783          	lhu	a5,18(s2)
   1562c:	fff7c793          	not	a5,a5
   15630:	01179713          	slli	a4,a5,0x11
   15634:	dc0716e3          	bnez	a4,15400 <emul+0x170>
   15638:	d29ff06f          	j	15360 <emul+0xd0>
   1563c:	01440793          	addi	a5,s0,20
   15640:	00240413          	addi	s0,s0,2
   15644:	fe041f23          	sh	zero,-2(s0)
   15648:	fe879ce3          	bne	a5,s0,15640 <emul+0x3b0>
   1564c:	d6dff06f          	j	153b8 <emul+0x128>
   15650:	01440793          	addi	a5,s0,20
   15654:	00240413          	addi	s0,s0,2
   15658:	fe041f23          	sh	zero,-2(s0)
   1565c:	fef41ce3          	bne	s0,a5,15654 <emul+0x3c4>
   15660:	d59ff06f          	j	153b8 <emul+0x128>
   15664:	000255b7          	lui	a1,0x25
   15668:	9fc58593          	addi	a1,a1,-1540 # 249fc <ezero>
   1566c:	00048513          	mv	a0,s1
   15670:	92cff0ef          	jal	ra,1479c <ecmp>
   15674:	00050a63          	beqz	a0,15688 <emul+0x3f8>
   15678:	0124d783          	lhu	a5,18(s1)
   1567c:	00faf7b3          	and	a5,s5,a5
   15680:	f9578ee3          	beq	a5,s5,1561c <emul+0x38c>
   15684:	fa5ff06f          	j	15628 <emul+0x398>
   15688:	01040713          	addi	a4,s0,16
   1568c:	00040793          	mv	a5,s0
   15690:	00278793          	addi	a5,a5,2
   15694:	fe079f23          	sh	zero,-2(a5)
   15698:	fee79ce3          	bne	a5,a4,15690 <emul+0x400>
   1569c:	7fffc7b7          	lui	a5,0x7fffc
   156a0:	00f42823          	sw	a5,16(s0)
   156a4:	d15ff06f          	j	153b8 <emul+0x128>

000156a8 <ediv>:
   156a8:	01255783          	lhu	a5,18(a0)
   156ac:	f5010113          	addi	sp,sp,-176
   156b0:	0a812423          	sw	s0,168(sp)
   156b4:	fff7c793          	not	a5,a5
   156b8:	0a912223          	sw	s1,164(sp)
   156bc:	0b212023          	sw	s2,160(sp)
   156c0:	09312e23          	sw	s3,156(sp)
   156c4:	0a112623          	sw	ra,172(sp)
   156c8:	09412c23          	sw	s4,152(sp)
   156cc:	09512a23          	sw	s5,148(sp)
   156d0:	09612823          	sw	s6,144(sp)
   156d4:	09712623          	sw	s7,140(sp)
   156d8:	09812423          	sw	s8,136(sp)
   156dc:	09912223          	sw	s9,132(sp)
   156e0:	09a12023          	sw	s10,128(sp)
   156e4:	07b12e23          	sw	s11,124(sp)
   156e8:	01179713          	slli	a4,a5,0x11
   156ec:	00050493          	mv	s1,a0
   156f0:	00058913          	mv	s2,a1
   156f4:	00060413          	mv	s0,a2
   156f8:	00068993          	mv	s3,a3
   156fc:	00071663          	bnez	a4,15708 <ediv+0x60>
   15700:	ef5fe0ef          	jal	ra,145f4 <eisnan.part.0>
   15704:	38051a63          	bnez	a0,15a98 <ediv+0x3f0>
   15708:	01295783          	lhu	a5,18(s2)
   1570c:	fff7c793          	not	a5,a5
   15710:	01179713          	slli	a4,a5,0x11
   15714:	08070e63          	beqz	a4,157b0 <ediv+0x108>
   15718:	00025a37          	lui	s4,0x25
   1571c:	9fca0593          	addi	a1,s4,-1540 # 249fc <ezero>
   15720:	00048513          	mv	a0,s1
   15724:	878ff0ef          	jal	ra,1479c <ecmp>
   15728:	10050463          	beqz	a0,15830 <ediv+0x188>
   1572c:	0124da03          	lhu	s4,18(s1)
   15730:	01295703          	lhu	a4,18(s2)
   15734:	000087b7          	lui	a5,0x8
   15738:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1573c:	0147fa33          	and	s4,a5,s4
   15740:	00e7fab3          	and	s5,a5,a4
   15744:	08fa1a63          	bne	s4,a5,157d8 <ediv+0x130>
   15748:	00048513          	mv	a0,s1
   1574c:	96cff0ef          	jal	ra,148b8 <eisinf.part.0>
   15750:	10050863          	beqz	a0,15860 <ediv+0x1b8>
   15754:	014a9863          	bne	s5,s4,15764 <ediv+0xbc>
   15758:	00090513          	mv	a0,s2
   1575c:	95cff0ef          	jal	ra,148b8 <eisinf.part.0>
   15760:	0e051063          	bnez	a0,15840 <ediv+0x198>
   15764:	01440793          	addi	a5,s0,20
   15768:	00240413          	addi	s0,s0,2
   1576c:	fe041f23          	sh	zero,-2(s0)
   15770:	fef41ce3          	bne	s0,a5,15768 <ediv+0xc0>
   15774:	0ac12083          	lw	ra,172(sp)
   15778:	0a812403          	lw	s0,168(sp)
   1577c:	0a412483          	lw	s1,164(sp)
   15780:	0a012903          	lw	s2,160(sp)
   15784:	09c12983          	lw	s3,156(sp)
   15788:	09812a03          	lw	s4,152(sp)
   1578c:	09412a83          	lw	s5,148(sp)
   15790:	09012b03          	lw	s6,144(sp)
   15794:	08c12b83          	lw	s7,140(sp)
   15798:	08812c03          	lw	s8,136(sp)
   1579c:	08412c83          	lw	s9,132(sp)
   157a0:	08012d03          	lw	s10,128(sp)
   157a4:	07c12d83          	lw	s11,124(sp)
   157a8:	0b010113          	addi	sp,sp,176
   157ac:	00008067          	ret
   157b0:	00090513          	mv	a0,s2
   157b4:	e41fe0ef          	jal	ra,145f4 <eisnan.part.0>
   157b8:	f60500e3          	beqz	a0,15718 <ediv+0x70>
   157bc:	01490713          	addi	a4,s2,20
   157c0:	00095783          	lhu	a5,0(s2)
   157c4:	00290913          	addi	s2,s2,2
   157c8:	00240413          	addi	s0,s0,2
   157cc:	fef41f23          	sh	a5,-2(s0)
   157d0:	fee918e3          	bne	s2,a4,157c0 <ediv+0x118>
   157d4:	fa1ff06f          	j	15774 <ediv+0xcc>
   157d8:	08fa8663          	beq	s5,a5,15864 <ediv+0x1bc>
   157dc:	01c10593          	addi	a1,sp,28
   157e0:	00048513          	mv	a0,s1
   157e4:	ec1fe0ef          	jal	ra,146a4 <emovi>
   157e8:	00090513          	mv	a0,s2
   157ec:	03810593          	addi	a1,sp,56
   157f0:	eb5fe0ef          	jal	ra,146a4 <emovi>
   157f4:	03a15c83          	lhu	s9,58(sp)
   157f8:	01e15903          	lhu	s2,30(sp)
   157fc:	0c0c9263          	bnez	s9,158c0 <ediv+0x218>
   15800:	03c10793          	addi	a5,sp,60
   15804:	05010493          	addi	s1,sp,80
   15808:	36f48063          	beq	s1,a5,15b68 <ediv+0x4c0>
   1580c:	0007d703          	lhu	a4,0(a5)
   15810:	00278793          	addi	a5,a5,2
   15814:	fe070ae3          	beqz	a4,15808 <ediv+0x160>
   15818:	03810513          	addi	a0,sp,56
   1581c:	ad4ff0ef          	jal	ra,14af0 <enormlz>
   15820:	40a007b3          	neg	a5,a0
   15824:	01e15603          	lhu	a2,30(sp)
   15828:	00f12623          	sw	a5,12(sp)
   1582c:	09c0006f          	j	158c8 <ediv+0x220>
   15830:	9fca0593          	addi	a1,s4,-1540
   15834:	00090513          	mv	a0,s2
   15838:	f65fe0ef          	jal	ra,1479c <ecmp>
   1583c:	ee0518e3          	bnez	a0,1572c <ediv+0x84>
   15840:	01040713          	addi	a4,s0,16
   15844:	00040793          	mv	a5,s0
   15848:	00278793          	addi	a5,a5,2
   1584c:	fe079f23          	sh	zero,-2(a5)
   15850:	fee79ce3          	bne	a5,a4,15848 <ediv+0x1a0>
   15854:	7fffc7b7          	lui	a5,0x7fffc
   15858:	00f42823          	sw	a5,16(s0)
   1585c:	f19ff06f          	j	15774 <ediv+0xcc>
   15860:	f74a9ee3          	bne	s5,s4,157dc <ediv+0x134>
   15864:	00090513          	mv	a0,s2
   15868:	850ff0ef          	jal	ra,148b8 <eisinf.part.0>
   1586c:	f60508e3          	beqz	a0,157dc <ediv+0x134>
   15870:	00048513          	mv	a0,s1
   15874:	df1fe0ef          	jal	ra,14664 <eisneg>
   15878:	00050493          	mv	s1,a0
   1587c:	00090513          	mv	a0,s2
   15880:	de5fe0ef          	jal	ra,14664 <eisneg>
   15884:	40a487b3          	sub	a5,s1,a0
   15888:	00f037b3          	snez	a5,a5
   1588c:	00f79793          	slli	a5,a5,0xf
   15890:	00f41923          	sh	a5,18(s0)
   15894:	01240713          	addi	a4,s0,18
   15898:	00040793          	mv	a5,s0
   1589c:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd5032>
   158a0:	fe079f23          	sh	zero,-2(a5)
   158a4:	fee79ce3          	bne	a5,a4,1589c <ediv+0x1f4>
   158a8:	01245783          	lhu	a5,18(s0)
   158ac:	00008737          	lui	a4,0x8
   158b0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   158b4:	00e7e7b3          	or	a5,a5,a4
   158b8:	00f41923          	sh	a5,18(s0)
   158bc:	eb9ff06f          	j	15774 <ediv+0xcc>
   158c0:	01912623          	sw	s9,12(sp)
   158c4:	00090613          	mv	a2,s2
   158c8:	01212423          	sw	s2,8(sp)
   158cc:	02010793          	addi	a5,sp,32
   158d0:	03410693          	addi	a3,sp,52
   158d4:	02061263          	bnez	a2,158f8 <ediv+0x250>
   158d8:	2af68263          	beq	a3,a5,15b7c <ediv+0x4d4>
   158dc:	0007d703          	lhu	a4,0(a5)
   158e0:	00278793          	addi	a5,a5,2
   158e4:	fe070ae3          	beqz	a4,158d8 <ediv+0x230>
   158e8:	01c10513          	addi	a0,sp,28
   158ec:	a04ff0ef          	jal	ra,14af0 <enormlz>
   158f0:	40a907b3          	sub	a5,s2,a0
   158f4:	00f12423          	sw	a5,8(sp)
   158f8:	03812703          	lw	a4,56(sp)
   158fc:	03898d93          	addi	s11,s3,56
   15900:	000d8793          	mv	a5,s11
   15904:	02e9aa23          	sw	a4,52(s3)
   15908:	04e98a13          	addi	s4,s3,78
   1590c:	00278793          	addi	a5,a5,2
   15910:	fe079f23          	sh	zero,-2(a5)
   15914:	fefa1ce3          	bne	s4,a5,1590c <ediv+0x264>
   15918:	03810513          	addi	a0,sp,56
   1591c:	b25fe0ef          	jal	ra,14440 <eshdn1>
   15920:	02215d03          	lhu	s10,34(sp)
   15924:	00010b37          	lui	s6,0x10
   15928:	05010493          	addi	s1,sp,80
   1592c:	010d1b93          	slli	s7,s10,0x10
   15930:	41ab8bb3          	sub	s7,s7,s10
   15934:	03a10c13          	addi	s8,sp,58
   15938:	fffb0b13          	addi	s6,s6,-1 # ffff <register_fini-0x75>
   1593c:	06e10913          	addi	s2,sp,110
   15940:	05610a93          	addi	s5,sp,86
   15944:	03c15783          	lhu	a5,60(sp)
   15948:	03e15703          	lhu	a4,62(sp)
   1594c:	000b0c93          	mv	s9,s6
   15950:	01079793          	slli	a5,a5,0x10
   15954:	00e78533          	add	a0,a5,a4
   15958:	00abea63          	bltu	s7,a0,1596c <ediv+0x2c4>
   1595c:	000d0593          	mv	a1,s10
   15960:	5910e0ef          	jal	ra,246f0 <__udivsi3>
   15964:	01051c93          	slli	s9,a0,0x10
   15968:	010cdc93          	srli	s9,s9,0x10
   1596c:	05410613          	addi	a2,sp,84
   15970:	01c10593          	addi	a1,sp,28
   15974:	000c8513          	mv	a0,s9
   15978:	ba1fe0ef          	jal	ra,14518 <m16m>
   1597c:	03c10713          	addi	a4,sp,60
   15980:	05810793          	addi	a5,sp,88
   15984:	0007d583          	lhu	a1,0(a5)
   15988:	00075603          	lhu	a2,0(a4)
   1598c:	00278793          	addi	a5,a5,2
   15990:	00270713          	addi	a4,a4,2
   15994:	12c59063          	bne	a1,a2,15ab4 <ediv+0x40c>
   15998:	ff2796e3          	bne	a5,s2,15984 <ediv+0x2dc>
   1599c:	00000613          	li	a2,0
   159a0:	06c10593          	addi	a1,sp,108
   159a4:	00048713          	mv	a4,s1
   159a8:	00075783          	lhu	a5,0(a4)
   159ac:	0005d803          	lhu	a6,0(a1)
   159b0:	ffe70713          	addi	a4,a4,-2
   159b4:	40c787b3          	sub	a5,a5,a2
   159b8:	410787b3          	sub	a5,a5,a6
   159bc:	0107d613          	srli	a2,a5,0x10
   159c0:	00f71123          	sh	a5,2(a4)
   159c4:	00167613          	andi	a2,a2,1
   159c8:	ffe58593          	addi	a1,a1,-2
   159cc:	fd871ee3          	bne	a4,s8,159a8 <ediv+0x300>
   159d0:	019d9023          	sh	s9,0(s11)
   159d4:	03c10793          	addi	a5,sp,60
   159d8:	0027d703          	lhu	a4,2(a5)
   159dc:	00278793          	addi	a5,a5,2
   159e0:	fee79f23          	sh	a4,-2(a5)
   159e4:	fe979ae3          	bne	a5,s1,159d8 <ediv+0x330>
   159e8:	04011823          	sh	zero,80(sp)
   159ec:	002d8d93          	addi	s11,s11,2
   159f0:	f5ba1ae3          	bne	s4,s11,15944 <ediv+0x29c>
   159f4:	00000593          	li	a1,0
   159f8:	03c10793          	addi	a5,sp,60
   159fc:	05210693          	addi	a3,sp,82
   15a00:	0007d703          	lhu	a4,0(a5)
   15a04:	00278793          	addi	a5,a5,2
   15a08:	00e5e5b3          	or	a1,a1,a4
   15a0c:	fed79ae3          	bne	a5,a3,15a00 <ediv+0x358>
   15a10:	01059793          	slli	a5,a1,0x10
   15a14:	4107d793          	srai	a5,a5,0x10
   15a18:	00078463          	beqz	a5,15a20 <ediv+0x378>
   15a1c:	00100593          	li	a1,1
   15a20:	01059593          	slli	a1,a1,0x10
   15a24:	0105d593          	srli	a1,a1,0x10
   15a28:	03498713          	addi	a4,s3,52
   15a2c:	03810793          	addi	a5,sp,56
   15a30:	00075603          	lhu	a2,0(a4)
   15a34:	00278793          	addi	a5,a5,2
   15a38:	00270713          	addi	a4,a4,2
   15a3c:	fec79f23          	sh	a2,-2(a5)
   15a40:	fef698e3          	bne	a3,a5,15a30 <ediv+0x388>
   15a44:	00c12783          	lw	a5,12(sp)
   15a48:	00812703          	lw	a4,8(sp)
   15a4c:	000046b7          	lui	a3,0x4
   15a50:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc075>
   15a54:	40e78cb3          	sub	s9,a5,a4
   15a58:	03810513          	addi	a0,sp,56
   15a5c:	00098793          	mv	a5,s3
   15a60:	04000713          	li	a4,64
   15a64:	00dc86b3          	add	a3,s9,a3
   15a68:	00000613          	li	a2,0
   15a6c:	a00ff0ef          	jal	ra,14c6c <emdnorm>
   15a70:	03815703          	lhu	a4,56(sp)
   15a74:	01c15783          	lhu	a5,28(sp)
   15a78:	00040593          	mv	a1,s0
   15a7c:	03810513          	addi	a0,sp,56
   15a80:	40e787b3          	sub	a5,a5,a4
   15a84:	00f037b3          	snez	a5,a5
   15a88:	40f007b3          	neg	a5,a5
   15a8c:	02f11c23          	sh	a5,56(sp)
   15a90:	f50ff0ef          	jal	ra,151e0 <emovo.isra.0>
   15a94:	ce1ff06f          	j	15774 <ediv+0xcc>
   15a98:	01448713          	addi	a4,s1,20
   15a9c:	0004d783          	lhu	a5,0(s1)
   15aa0:	00248493          	addi	s1,s1,2
   15aa4:	00240413          	addi	s0,s0,2
   15aa8:	fef41f23          	sh	a5,-2(s0)
   15aac:	fee498e3          	bne	s1,a4,15a9c <ediv+0x3f4>
   15ab0:	cc5ff06f          	j	15774 <ediv+0xcc>
   15ab4:	eeb674e3          	bgeu	a2,a1,1599c <ediv+0x2f4>
   15ab8:	fffc8793          	addi	a5,s9,-1
   15abc:	01079893          	slli	a7,a5,0x10
   15ac0:	0108d893          	srli	a7,a7,0x10
   15ac4:	00000613          	li	a2,0
   15ac8:	03410593          	addi	a1,sp,52
   15acc:	06c10713          	addi	a4,sp,108
   15ad0:	00075783          	lhu	a5,0(a4)
   15ad4:	0005d803          	lhu	a6,0(a1)
   15ad8:	ffe70713          	addi	a4,a4,-2
   15adc:	40c787b3          	sub	a5,a5,a2
   15ae0:	410787b3          	sub	a5,a5,a6
   15ae4:	0107d613          	srli	a2,a5,0x10
   15ae8:	00f71123          	sh	a5,2(a4)
   15aec:	00167613          	andi	a2,a2,1
   15af0:	ffe58593          	addi	a1,a1,-2
   15af4:	fd571ee3          	bne	a4,s5,15ad0 <ediv+0x428>
   15af8:	03c10713          	addi	a4,sp,60
   15afc:	05810793          	addi	a5,sp,88
   15b00:	0007d583          	lhu	a1,0(a5)
   15b04:	00075603          	lhu	a2,0(a4)
   15b08:	00278793          	addi	a5,a5,2
   15b0c:	00270713          	addi	a4,a4,2
   15b10:	00c59863          	bne	a1,a2,15b20 <ediv+0x478>
   15b14:	ff2796e3          	bne	a5,s2,15b00 <ediv+0x458>
   15b18:	00088c93          	mv	s9,a7
   15b1c:	e81ff06f          	j	1599c <ediv+0x2f4>
   15b20:	feb67ce3          	bgeu	a2,a1,15b18 <ediv+0x470>
   15b24:	ffec8513          	addi	a0,s9,-2
   15b28:	01051c93          	slli	s9,a0,0x10
   15b2c:	010cdc93          	srli	s9,s9,0x10
   15b30:	00000613          	li	a2,0
   15b34:	03410593          	addi	a1,sp,52
   15b38:	06c10713          	addi	a4,sp,108
   15b3c:	00075783          	lhu	a5,0(a4)
   15b40:	0005d803          	lhu	a6,0(a1)
   15b44:	ffe70713          	addi	a4,a4,-2
   15b48:	40c787b3          	sub	a5,a5,a2
   15b4c:	410787b3          	sub	a5,a5,a6
   15b50:	0107d613          	srli	a2,a5,0x10
   15b54:	00f71123          	sh	a5,2(a4)
   15b58:	00167613          	andi	a2,a2,1
   15b5c:	ffe58593          	addi	a1,a1,-2
   15b60:	fd571ee3          	bne	a4,s5,15b3c <ediv+0x494>
   15b64:	e39ff06f          	j	1599c <ediv+0x2f4>
   15b68:	01440793          	addi	a5,s0,20
   15b6c:	00240413          	addi	s0,s0,2
   15b70:	fe041f23          	sh	zero,-2(s0)
   15b74:	fe879ce3          	bne	a5,s0,15b6c <ediv+0x4c4>
   15b78:	bfdff06f          	j	15774 <ediv+0xcc>
   15b7c:	01c15703          	lhu	a4,28(sp)
   15b80:	03815783          	lhu	a5,56(sp)
   15b84:	00f70463          	beq	a4,a5,15b8c <ediv+0x4e4>
   15b88:	00008637          	lui	a2,0x8
   15b8c:	00c41923          	sh	a2,18(s0)
   15b90:	01240713          	addi	a4,s0,18
   15b94:	00040793          	mv	a5,s0
   15b98:	00278793          	addi	a5,a5,2
   15b9c:	fe079f23          	sh	zero,-2(a5)
   15ba0:	fef71ce3          	bne	a4,a5,15b98 <ediv+0x4f0>
   15ba4:	01245783          	lhu	a5,18(s0)
   15ba8:	00008737          	lui	a4,0x8
   15bac:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15bb0:	00e7e7b3          	or	a5,a5,a4
   15bb4:	00f41923          	sh	a5,18(s0)
   15bb8:	bbdff06f          	j	15774 <ediv+0xcc>

00015bbc <e113toe.isra.0>:
   15bbc:	fd010113          	addi	sp,sp,-48
   15bc0:	02812423          	sw	s0,40(sp)
   15bc4:	02112623          	sw	ra,44(sp)
   15bc8:	00058413          	mv	s0,a1
   15bcc:	00410793          	addi	a5,sp,4
   15bd0:	01e10713          	addi	a4,sp,30
   15bd4:	00278793          	addi	a5,a5,2
   15bd8:	fe079f23          	sh	zero,-2(a5)
   15bdc:	fee79ce3          	bne	a5,a4,15bd4 <e113toe.isra.0+0x18>
   15be0:	00e55603          	lhu	a2,14(a0)
   15be4:	01061793          	slli	a5,a2,0x10
   15be8:	4107d793          	srai	a5,a5,0x10
   15bec:	0607ca63          	bltz	a5,15c60 <e113toe.isra.0+0xa4>
   15bf0:	000087b7          	lui	a5,0x8
   15bf4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15bf8:	00011223          	sh	zero,4(sp)
   15bfc:	00f67633          	and	a2,a2,a5
   15c00:	06f60c63          	beq	a2,a5,15c78 <e113toe.isra.0+0xbc>
   15c04:	00e50793          	addi	a5,a0,14
   15c08:	00c11323          	sh	a2,6(sp)
   15c0c:	00a10713          	addi	a4,sp,10
   15c10:	ffe7d683          	lhu	a3,-2(a5)
   15c14:	ffe78793          	addi	a5,a5,-2
   15c18:	00270713          	addi	a4,a4,2
   15c1c:	fed71f23          	sh	a3,-2(a4)
   15c20:	fef518e3          	bne	a0,a5,15c10 <e113toe.isra.0+0x54>
   15c24:	02061263          	bnez	a2,15c48 <e113toe.isra.0+0x8c>
   15c28:	00011423          	sh	zero,8(sp)
   15c2c:	00040593          	mv	a1,s0
   15c30:	00410513          	addi	a0,sp,4
   15c34:	dacff0ef          	jal	ra,151e0 <emovo.isra.0>
   15c38:	02c12083          	lw	ra,44(sp)
   15c3c:	02812403          	lw	s0,40(sp)
   15c40:	03010113          	addi	sp,sp,48
   15c44:	00008067          	ret
   15c48:	00100793          	li	a5,1
   15c4c:	fff00593          	li	a1,-1
   15c50:	00410513          	addi	a0,sp,4
   15c54:	00f11423          	sh	a5,8(sp)
   15c58:	c7dfe0ef          	jal	ra,148d4 <eshift.part.0>
   15c5c:	fd1ff06f          	j	15c2c <e113toe.isra.0+0x70>
   15c60:	fff00793          	li	a5,-1
   15c64:	00f11223          	sh	a5,4(sp)
   15c68:	000087b7          	lui	a5,0x8
   15c6c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15c70:	00f67633          	and	a2,a2,a5
   15c74:	f8f618e3          	bne	a2,a5,15c04 <e113toe.isra.0+0x48>
   15c78:	00050793          	mv	a5,a0
   15c7c:	00e50693          	addi	a3,a0,14
   15c80:	0007d703          	lhu	a4,0(a5)
   15c84:	00278793          	addi	a5,a5,2
   15c88:	04071c63          	bnez	a4,15ce0 <e113toe.isra.0+0x124>
   15c8c:	fed79ae3          	bne	a5,a3,15c80 <e113toe.isra.0+0xc4>
   15c90:	01440713          	addi	a4,s0,20
   15c94:	00040793          	mv	a5,s0
   15c98:	00278793          	addi	a5,a5,2
   15c9c:	fe079f23          	sh	zero,-2(a5)
   15ca0:	fef71ce3          	bne	a4,a5,15c98 <e113toe.isra.0+0xdc>
   15ca4:	01240713          	addi	a4,s0,18
   15ca8:	00040793          	mv	a5,s0
   15cac:	00278793          	addi	a5,a5,2
   15cb0:	fe079f23          	sh	zero,-2(a5)
   15cb4:	fef71ce3          	bne	a4,a5,15cac <e113toe.isra.0+0xf0>
   15cb8:	01245783          	lhu	a5,18(s0)
   15cbc:	00008737          	lui	a4,0x8
   15cc0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15cc4:	00e7e7b3          	or	a5,a5,a4
   15cc8:	00f41923          	sh	a5,18(s0)
   15ccc:	00e51783          	lh	a5,14(a0)
   15cd0:	f607d4e3          	bgez	a5,15c38 <e113toe.isra.0+0x7c>
   15cd4:	00040513          	mv	a0,s0
   15cd8:	941fe0ef          	jal	ra,14618 <eneg>
   15cdc:	f5dff06f          	j	15c38 <e113toe.isra.0+0x7c>
   15ce0:	01040713          	addi	a4,s0,16
   15ce4:	00040793          	mv	a5,s0
   15ce8:	00278793          	addi	a5,a5,2
   15cec:	fe079f23          	sh	zero,-2(a5)
   15cf0:	fef71ce3          	bne	a4,a5,15ce8 <e113toe.isra.0+0x12c>
   15cf4:	7fffc7b7          	lui	a5,0x7fffc
   15cf8:	00f42823          	sw	a5,16(s0)
   15cfc:	f3dff06f          	j	15c38 <e113toe.isra.0+0x7c>

00015d00 <_ldtoa_r>:
   15d00:	00c5a883          	lw	a7,12(a1)
   15d04:	e1010113          	addi	sp,sp,-496
   15d08:	0005ae83          	lw	t4,0(a1)
   15d0c:	0045ae03          	lw	t3,4(a1)
   15d10:	0085a303          	lw	t1,8(a1)
   15d14:	03112e23          	sw	a7,60(sp)
   15d18:	04052583          	lw	a1,64(a0)
   15d1c:	fff00893          	li	a7,-1
   15d20:	17112023          	sw	a7,352(sp)
   15d24:	09000893          	li	a7,144
   15d28:	1e812423          	sw	s0,488(sp)
   15d2c:	1d412c23          	sw	s4,472(sp)
   15d30:	1e112623          	sw	ra,492(sp)
   15d34:	1e912223          	sw	s1,484(sp)
   15d38:	1f212023          	sw	s2,480(sp)
   15d3c:	1d312e23          	sw	s3,476(sp)
   15d40:	1d512a23          	sw	s5,468(sp)
   15d44:	1d612823          	sw	s6,464(sp)
   15d48:	1d712623          	sw	s7,460(sp)
   15d4c:	1d812423          	sw	s8,456(sp)
   15d50:	1d912223          	sw	s9,452(sp)
   15d54:	1da12023          	sw	s10,448(sp)
   15d58:	1bb12e23          	sw	s11,444(sp)
   15d5c:	03d12823          	sw	t4,48(sp)
   15d60:	03c12a23          	sw	t3,52(sp)
   15d64:	02612c23          	sw	t1,56(sp)
   15d68:	17112223          	sw	a7,356(sp)
   15d6c:	00c12023          	sw	a2,0(sp)
   15d70:	00d12423          	sw	a3,8(sp)
   15d74:	00e12623          	sw	a4,12(sp)
   15d78:	01012c23          	sw	a6,24(sp)
   15d7c:	00050a13          	mv	s4,a0
   15d80:	00078413          	mv	s0,a5
   15d84:	02058063          	beqz	a1,15da4 <_ldtoa_r+0xa4>
   15d88:	04452703          	lw	a4,68(a0)
   15d8c:	00100793          	li	a5,1
   15d90:	00e797b3          	sll	a5,a5,a4
   15d94:	00e5a223          	sw	a4,4(a1)
   15d98:	00f5a423          	sw	a5,8(a1)
   15d9c:	7c1010ef          	jal	ra,17d5c <_Bfree>
   15da0:	040a2023          	sw	zero,64(s4)
   15da4:	06010993          	addi	s3,sp,96
   15da8:	00098593          	mv	a1,s3
   15dac:	03010513          	addi	a0,sp,48
   15db0:	e0dff0ef          	jal	ra,15bbc <e113toe.isra.0>
   15db4:	00098513          	mv	a0,s3
   15db8:	8adfe0ef          	jal	ra,14664 <eisneg>
   15dbc:	00012703          	lw	a4,0(sp)
   15dc0:	00a03533          	snez	a0,a0
   15dc4:	00a42023          	sw	a0,0(s0)
   15dc8:	00300793          	li	a5,3
   15dcc:	14f702e3          	beq	a4,a5,16710 <_ldtoa_r+0xa10>
   15dd0:	01400793          	li	a5,20
   15dd4:	00f12223          	sw	a5,4(sp)
   15dd8:	5e0718e3          	bnez	a4,16bc8 <_ldtoa_r+0xec8>
   15ddc:	07215783          	lhu	a5,114(sp)
   15de0:	16412703          	lw	a4,356(sp)
   15de4:	fff7c793          	not	a5,a5
   15de8:	00e12a23          	sw	a4,20(sp)
   15dec:	01179713          	slli	a4,a5,0x11
   15df0:	00071863          	bnez	a4,15e00 <_ldtoa_r+0x100>
   15df4:	00098513          	mv	a0,s3
   15df8:	ffcfe0ef          	jal	ra,145f4 <eisnan.part.0>
   15dfc:	400514e3          	bnez	a0,16a04 <_ldtoa_r+0xd04>
   15e00:	09000793          	li	a5,144
   15e04:	16f12223          	sw	a5,356(sp)
   15e08:	07c10713          	addi	a4,sp,124
   15e0c:	00098793          	mv	a5,s3
   15e10:	07410613          	addi	a2,sp,116
   15e14:	0007d683          	lhu	a3,0(a5) # 7fffc000 <__BSS_END__+0x7ffd5030>
   15e18:	00278793          	addi	a5,a5,2
   15e1c:	00270713          	addi	a4,a4,2
   15e20:	fed71f23          	sh	a3,-2(a4)
   15e24:	fec798e3          	bne	a5,a2,15e14 <_ldtoa_r+0x114>
   15e28:	08e15603          	lhu	a2,142(sp)
   15e2c:	00012823          	sw	zero,16(sp)
   15e30:	01061793          	slli	a5,a2,0x10
   15e34:	4107d793          	srai	a5,a5,0x10
   15e38:	0007de63          	bgez	a5,15e54 <_ldtoa_r+0x154>
   15e3c:	01161613          	slli	a2,a2,0x11
   15e40:	000107b7          	lui	a5,0x10
   15e44:	01165613          	srli	a2,a2,0x11
   15e48:	fff78793          	addi	a5,a5,-1 # ffff <register_fini-0x75>
   15e4c:	08c11723          	sh	a2,142(sp)
   15e50:	00f12823          	sw	a5,16(sp)
   15e54:	00025b37          	lui	s6,0x25
   15e58:	9fcb0d93          	addi	s11,s6,-1540 # 249fc <ezero>
   15e5c:	014d8c13          	addi	s8,s11,20
   15e60:	00000693          	li	a3,0
   15e64:	09810793          	addi	a5,sp,152
   15e68:	000c0713          	mv	a4,s8
   15e6c:	0ac10d13          	addi	s10,sp,172
   15e70:	0080006f          	j	15e78 <_ldtoa_r+0x178>
   15e74:	00075683          	lhu	a3,0(a4)
   15e78:	00278793          	addi	a5,a5,2
   15e7c:	fed79f23          	sh	a3,-2(a5)
   15e80:	00270713          	addi	a4,a4,2
   15e84:	ffa798e3          	bne	a5,s10,15e74 <_ldtoa_r+0x174>
   15e88:	14060863          	beqz	a2,15fd8 <_ldtoa_r+0x2d8>
   15e8c:	000087b7          	lui	a5,0x8
   15e90:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15e94:	56f606e3          	beq	a2,a5,16c00 <_ldtoa_r+0xf00>
   15e98:	08c11783          	lh	a5,140(sp)
   15e9c:	5a07d8e3          	bgez	a5,16c4c <_ldtoa_r+0xf4c>
   15ea0:	07c10593          	addi	a1,sp,124
   15ea4:	000c0513          	mv	a0,s8
   15ea8:	8f5fe0ef          	jal	ra,1479c <ecmp>
   15eac:	14050263          	beqz	a0,15ff0 <_ldtoa_r+0x2f0>
   15eb0:	0c054ce3          	bltz	a0,16788 <_ldtoa_r+0xa88>
   15eb4:	08e15783          	lhu	a5,142(sp)
   15eb8:	62079ce3          	bnez	a5,16cf0 <_ldtoa_r+0xff0>
   15ebc:	08c11783          	lh	a5,140(sp)
   15ec0:	00000493          	li	s1,0
   15ec4:	16010913          	addi	s2,sp,352
   15ec8:	0207c463          	bltz	a5,15ef0 <_ldtoa_r+0x1f0>
   15ecc:	118d8413          	addi	s0,s11,280
   15ed0:	07c10613          	addi	a2,sp,124
   15ed4:	00090693          	mv	a3,s2
   15ed8:	00060593          	mv	a1,a2
   15edc:	00040513          	mv	a0,s0
   15ee0:	bb0ff0ef          	jal	ra,15290 <emul>
   15ee4:	08c11783          	lh	a5,140(sp)
   15ee8:	fff48493          	addi	s1,s1,-1
   15eec:	fe07d2e3          	bgez	a5,15ed0 <_ldtoa_r+0x1d0>
   15ef0:	0d010413          	addi	s0,sp,208
   15ef4:	0e810b93          	addi	s7,sp,232
   15ef8:	00040713          	mv	a4,s0
   15efc:	07c10793          	addi	a5,sp,124
   15f00:	09010613          	addi	a2,sp,144
   15f04:	0007d683          	lhu	a3,0(a5)
   15f08:	00278793          	addi	a5,a5,2
   15f0c:	00270713          	addi	a4,a4,2
   15f10:	fed71f23          	sh	a3,-2(a4)
   15f14:	fec798e3          	bne	a5,a2,15f04 <_ldtoa_r+0x204>
   15f18:	00000693          	li	a3,0
   15f1c:	09810793          	addi	a5,sp,152
   15f20:	000c0713          	mv	a4,s8
   15f24:	0080006f          	j	15f2c <_ldtoa_r+0x22c>
   15f28:	00075683          	lhu	a3,0(a4)
   15f2c:	00278793          	addi	a5,a5,2
   15f30:	fed79f23          	sh	a3,-2(a5)
   15f34:	00270713          	addi	a4,a4,2
   15f38:	ffa798e3          	bne	a5,s10,15f28 <_ldtoa_r+0x228>
   15f3c:	028d8c93          	addi	s9,s11,40
   15f40:	12cd8d13          	addi	s10,s11,300
   15f44:	fffffab7          	lui	s5,0xfffff
   15f48:	118d8d93          	addi	s11,s11,280
   15f4c:	00c0006f          	j	15f58 <_ldtoa_r+0x258>
   15f50:	014d0d13          	addi	s10,s10,20
   15f54:	014c8c93          	addi	s9,s9,20
   15f58:	00040593          	mv	a1,s0
   15f5c:	000c0513          	mv	a0,s8
   15f60:	83dfe0ef          	jal	ra,1479c <ecmp>
   15f64:	00050793          	mv	a5,a0
   15f68:	00040593          	mv	a1,s0
   15f6c:	000d0513          	mv	a0,s10
   15f70:	04f05663          	blez	a5,15fbc <_ldtoa_r+0x2bc>
   15f74:	829fe0ef          	jal	ra,1479c <ecmp>
   15f78:	00050793          	mv	a5,a0
   15f7c:	00090693          	mv	a3,s2
   15f80:	00040613          	mv	a2,s0
   15f84:	00040593          	mv	a1,s0
   15f88:	000c8513          	mv	a0,s9
   15f8c:	0207c063          	bltz	a5,15fac <_ldtoa_r+0x2ac>
   15f90:	b00ff0ef          	jal	ra,15290 <emul>
   15f94:	09810613          	addi	a2,sp,152
   15f98:	00090693          	mv	a3,s2
   15f9c:	00060593          	mv	a1,a2
   15fa0:	000c8513          	mv	a0,s9
   15fa4:	aecff0ef          	jal	ra,15290 <emul>
   15fa8:	015484b3          	add	s1,s1,s5
   15fac:	01fad793          	srli	a5,s5,0x1f
   15fb0:	015787b3          	add	a5,a5,s5
   15fb4:	4017da93          	srai	s5,a5,0x1
   15fb8:	f9bc9ce3          	bne	s9,s11,15f50 <_ldtoa_r+0x250>
   15fbc:	09810613          	addi	a2,sp,152
   15fc0:	00090693          	mv	a3,s2
   15fc4:	000c0593          	mv	a1,s8
   15fc8:	00060513          	mv	a0,a2
   15fcc:	edcff0ef          	jal	ra,156a8 <ediv>
   15fd0:	12410a93          	addi	s5,sp,292
   15fd4:	0300006f          	j	16004 <_ldtoa_r+0x304>
   15fd8:	07c10793          	addi	a5,sp,124
   15fdc:	08e10693          	addi	a3,sp,142
   15fe0:	0007d703          	lhu	a4,0(a5)
   15fe4:	00278793          	addi	a5,a5,2
   15fe8:	ea071ce3          	bnez	a4,15ea0 <_ldtoa_r+0x1a0>
   15fec:	fed79ae3          	bne	a5,a3,15fe0 <_ldtoa_r+0x2e0>
   15ff0:	00000493          	li	s1,0
   15ff4:	12410a93          	addi	s5,sp,292
   15ff8:	16010913          	addi	s2,sp,352
   15ffc:	0d010413          	addi	s0,sp,208
   16000:	0e810b93          	addi	s7,sp,232
   16004:	00040593          	mv	a1,s0
   16008:	09810513          	addi	a0,sp,152
   1600c:	e98fe0ef          	jal	ra,146a4 <emovi>
   16010:	09810713          	addi	a4,sp,152
   16014:	00040793          	mv	a5,s0
   16018:	0007d683          	lhu	a3,0(a5)
   1601c:	00278793          	addi	a5,a5,2
   16020:	00270713          	addi	a4,a4,2
   16024:	fed71f23          	sh	a3,-2(a4)
   16028:	ff7798e3          	bne	a5,s7,16018 <_ldtoa_r+0x318>
   1602c:	00040593          	mv	a1,s0
   16030:	07c10513          	addi	a0,sp,124
   16034:	0a011823          	sh	zero,176(sp)
   16038:	e6cfe0ef          	jal	ra,146a4 <emovi>
   1603c:	07c10793          	addi	a5,sp,124
   16040:	00045703          	lhu	a4,0(s0)
   16044:	00240413          	addi	s0,s0,2
   16048:	00278793          	addi	a5,a5,2
   1604c:	fee79f23          	sh	a4,-2(a5)
   16050:	ff7418e3          	bne	s0,s7,16040 <_ldtoa_r+0x340>
   16054:	09810513          	addi	a0,sp,152
   16058:	00090613          	mv	a2,s2
   1605c:	07c10593          	addi	a1,sp,124
   16060:	08011a23          	sh	zero,148(sp)
   16064:	814ff0ef          	jal	ra,15078 <eiremain>
   16068:	1ac15503          	lhu	a0,428(sp)
   1606c:	1c051463          	bnez	a0,16234 <_ldtoa_r+0x534>
   16070:	09410c93          	addi	s9,sp,148
   16074:	07e10413          	addi	s0,sp,126
   16078:	0b610c13          	addi	s8,sp,182
   1607c:	9fcb0593          	addi	a1,s6,-1540
   16080:	07c10513          	addi	a0,sp,124
   16084:	f18fe0ef          	jal	ra,1479c <ecmp>
   16088:	1a050663          	beqz	a0,16234 <_ldtoa_r+0x534>
   1608c:	00000713          	li	a4,0
   16090:	000c8693          	mv	a3,s9
   16094:	01c0006f          	j	160b0 <_ldtoa_r+0x3b0>
   16098:	00171713          	slli	a4,a4,0x1
   1609c:	00f69023          	sh	a5,0(a3)
   160a0:	01071713          	slli	a4,a4,0x10
   160a4:	ffe68693          	addi	a3,a3,-2
   160a8:	01075713          	srli	a4,a4,0x10
   160ac:	04868463          	beq	a3,s0,160f4 <_ldtoa_r+0x3f4>
   160b0:	0006d783          	lhu	a5,0(a3)
   160b4:	01079613          	slli	a2,a5,0x10
   160b8:	41065613          	srai	a2,a2,0x10
   160bc:	00179793          	slli	a5,a5,0x1
   160c0:	00065463          	bgez	a2,160c8 <_ldtoa_r+0x3c8>
   160c4:	00176713          	ori	a4,a4,1
   160c8:	01079793          	slli	a5,a5,0x10
   160cc:	0107d793          	srli	a5,a5,0x10
   160d0:	00277613          	andi	a2,a4,2
   160d4:	0017e593          	ori	a1,a5,1
   160d8:	fc0600e3          	beqz	a2,16098 <_ldtoa_r+0x398>
   160dc:	00171713          	slli	a4,a4,0x1
   160e0:	00b69023          	sh	a1,0(a3)
   160e4:	01071713          	slli	a4,a4,0x10
   160e8:	ffe68693          	addi	a3,a3,-2
   160ec:	01075713          	srli	a4,a4,0x10
   160f0:	fc8690e3          	bne	a3,s0,160b0 <_ldtoa_r+0x3b0>
   160f4:	0b410713          	addi	a4,sp,180
   160f8:	07c10793          	addi	a5,sp,124
   160fc:	0007d683          	lhu	a3,0(a5)
   16100:	00278793          	addi	a5,a5,2
   16104:	00270713          	addi	a4,a4,2
   16108:	fed71f23          	sh	a3,-2(a4)
   1610c:	ff9798e3          	bne	a5,s9,160fc <_ldtoa_r+0x3fc>
   16110:	0c011623          	sh	zero,204(sp)
   16114:	00000713          	li	a4,0
   16118:	0cc10693          	addi	a3,sp,204
   1611c:	01c0006f          	j	16138 <_ldtoa_r+0x438>
   16120:	00171713          	slli	a4,a4,0x1
   16124:	00f69023          	sh	a5,0(a3)
   16128:	01071713          	slli	a4,a4,0x10
   1612c:	ffe68693          	addi	a3,a3,-2
   16130:	01075713          	srli	a4,a4,0x10
   16134:	05868463          	beq	a3,s8,1617c <_ldtoa_r+0x47c>
   16138:	0006d783          	lhu	a5,0(a3)
   1613c:	01079613          	slli	a2,a5,0x10
   16140:	41065613          	srai	a2,a2,0x10
   16144:	00179793          	slli	a5,a5,0x1
   16148:	00065463          	bgez	a2,16150 <_ldtoa_r+0x450>
   1614c:	00176713          	ori	a4,a4,1
   16150:	01079793          	slli	a5,a5,0x10
   16154:	0107d793          	srli	a5,a5,0x10
   16158:	00277613          	andi	a2,a4,2
   1615c:	0017e593          	ori	a1,a5,1
   16160:	fc0600e3          	beqz	a2,16120 <_ldtoa_r+0x420>
   16164:	00171713          	slli	a4,a4,0x1
   16168:	00b69023          	sh	a1,0(a3)
   1616c:	01071713          	slli	a4,a4,0x10
   16170:	ffe68693          	addi	a3,a3,-2
   16174:	01075713          	srli	a4,a4,0x10
   16178:	fd8690e3          	bne	a3,s8,16138 <_ldtoa_r+0x438>
   1617c:	00000713          	li	a4,0
   16180:	0cc10693          	addi	a3,sp,204
   16184:	01c0006f          	j	161a0 <_ldtoa_r+0x4a0>
   16188:	00171713          	slli	a4,a4,0x1
   1618c:	00f69023          	sh	a5,0(a3)
   16190:	01071713          	slli	a4,a4,0x10
   16194:	ffe68693          	addi	a3,a3,-2
   16198:	01075713          	srli	a4,a4,0x10
   1619c:	05868463          	beq	a3,s8,161e4 <_ldtoa_r+0x4e4>
   161a0:	0006d783          	lhu	a5,0(a3)
   161a4:	01079613          	slli	a2,a5,0x10
   161a8:	41065613          	srai	a2,a2,0x10
   161ac:	00179793          	slli	a5,a5,0x1
   161b0:	00065463          	bgez	a2,161b8 <_ldtoa_r+0x4b8>
   161b4:	00176713          	ori	a4,a4,1
   161b8:	01079793          	slli	a5,a5,0x10
   161bc:	0107d793          	srli	a5,a5,0x10
   161c0:	00277613          	andi	a2,a4,2
   161c4:	0017e593          	ori	a1,a5,1
   161c8:	fc0600e3          	beqz	a2,16188 <_ldtoa_r+0x488>
   161cc:	00171713          	slli	a4,a4,0x1
   161d0:	00b69023          	sh	a1,0(a3)
   161d4:	01071713          	slli	a4,a4,0x10
   161d8:	ffe68693          	addi	a3,a3,-2
   161dc:	01075713          	srli	a4,a4,0x10
   161e0:	fd8690e3          	bne	a3,s8,161a0 <_ldtoa_r+0x4a0>
   161e4:	00000613          	li	a2,0
   161e8:	000c8693          	mv	a3,s9
   161ec:	0cc10713          	addi	a4,sp,204
   161f0:	0006d583          	lhu	a1,0(a3)
   161f4:	00075783          	lhu	a5,0(a4)
   161f8:	ffe68693          	addi	a3,a3,-2
   161fc:	ffe70713          	addi	a4,a4,-2
   16200:	00b787b3          	add	a5,a5,a1
   16204:	00c787b3          	add	a5,a5,a2
   16208:	0107d613          	srli	a2,a5,0x10
   1620c:	00f69123          	sh	a5,2(a3)
   16210:	00167613          	andi	a2,a2,1
   16214:	fd871ee3          	bne	a4,s8,161f0 <_ldtoa_r+0x4f0>
   16218:	09810513          	addi	a0,sp,152
   1621c:	00090613          	mv	a2,s2
   16220:	07c10593          	addi	a1,sp,124
   16224:	e55fe0ef          	jal	ra,15078 <eiremain>
   16228:	1ac15503          	lhu	a0,428(sp)
   1622c:	fff48493          	addi	s1,s1,-1
   16230:	e40506e3          	beqz	a0,1607c <_ldtoa_r+0x37c>
   16234:	01012783          	lw	a5,16(sp)
   16238:	00012683          	lw	a3,0(sp)
   1623c:	00300713          	li	a4,3
   16240:	00f037b3          	snez	a5,a5
   16244:	40f007b3          	neg	a5,a5
   16248:	00d7f793          	andi	a5,a5,13
   1624c:	02078793          	addi	a5,a5,32
   16250:	12f10223          	sb	a5,292(sp)
   16254:	00412783          	lw	a5,4(sp)
   16258:	00e69463          	bne	a3,a4,16260 <_ldtoa_r+0x560>
   1625c:	009787b3          	add	a5,a5,s1
   16260:	02a00713          	li	a4,42
   16264:	00078413          	mv	s0,a5
   16268:	00f75463          	bge	a4,a5,16270 <_ldtoa_r+0x570>
   1626c:	02a00413          	li	s0,42
   16270:	00a00713          	li	a4,10
   16274:	4ee50263          	beq	a0,a4,16758 <_ldtoa_r+0xa58>
   16278:	03050513          	addi	a0,a0,48
   1627c:	02e00713          	li	a4,46
   16280:	12a102a3          	sb	a0,293(sp)
   16284:	12e10323          	sb	a4,294(sp)
   16288:	1e07c2e3          	bltz	a5,16c6c <_ldtoa_r+0xf6c>
   1628c:	12710793          	addi	a5,sp,295
   16290:	00f12823          	sw	a5,16(sp)
   16294:	00000c13          	li	s8,0
   16298:	00912e23          	sw	s1,28(sp)
   1629c:	000c0493          	mv	s1,s8
   162a0:	00090c13          	mv	s8,s2
   162a4:	01012903          	lw	s2,16(sp)
   162a8:	0b410c93          	addi	s9,sp,180
   162ac:	09410d93          	addi	s11,sp,148
   162b0:	07e10b93          	addi	s7,sp,126
   162b4:	0b610d13          	addi	s10,sp,182
   162b8:	00000713          	li	a4,0
   162bc:	000d8613          	mv	a2,s11
   162c0:	01c0006f          	j	162dc <_ldtoa_r+0x5dc>
   162c4:	00171713          	slli	a4,a4,0x1
   162c8:	00f61023          	sh	a5,0(a2) # 8000 <register_fini-0x8074>
   162cc:	01071713          	slli	a4,a4,0x10
   162d0:	ffe60613          	addi	a2,a2,-2
   162d4:	01075713          	srli	a4,a4,0x10
   162d8:	05760463          	beq	a2,s7,16320 <_ldtoa_r+0x620>
   162dc:	00065783          	lhu	a5,0(a2)
   162e0:	01079593          	slli	a1,a5,0x10
   162e4:	4105d593          	srai	a1,a1,0x10
   162e8:	00179793          	slli	a5,a5,0x1
   162ec:	0005d463          	bgez	a1,162f4 <_ldtoa_r+0x5f4>
   162f0:	00176713          	ori	a4,a4,1
   162f4:	01079793          	slli	a5,a5,0x10
   162f8:	0107d793          	srli	a5,a5,0x10
   162fc:	00277593          	andi	a1,a4,2
   16300:	0017e513          	ori	a0,a5,1
   16304:	fc0580e3          	beqz	a1,162c4 <_ldtoa_r+0x5c4>
   16308:	00171713          	slli	a4,a4,0x1
   1630c:	00a61023          	sh	a0,0(a2)
   16310:	01071713          	slli	a4,a4,0x10
   16314:	ffe60613          	addi	a2,a2,-2
   16318:	01075713          	srli	a4,a4,0x10
   1631c:	fd7610e3          	bne	a2,s7,162dc <_ldtoa_r+0x5dc>
   16320:	000c8713          	mv	a4,s9
   16324:	07c10793          	addi	a5,sp,124
   16328:	0007d603          	lhu	a2,0(a5)
   1632c:	00278793          	addi	a5,a5,2
   16330:	00270713          	addi	a4,a4,2
   16334:	fec71f23          	sh	a2,-2(a4)
   16338:	ffb798e3          	bne	a5,s11,16328 <_ldtoa_r+0x628>
   1633c:	0c011623          	sh	zero,204(sp)
   16340:	00000713          	li	a4,0
   16344:	0cc10613          	addi	a2,sp,204
   16348:	01c0006f          	j	16364 <_ldtoa_r+0x664>
   1634c:	00171713          	slli	a4,a4,0x1
   16350:	00f61023          	sh	a5,0(a2)
   16354:	01071713          	slli	a4,a4,0x10
   16358:	ffe60613          	addi	a2,a2,-2
   1635c:	01075713          	srli	a4,a4,0x10
   16360:	05a60463          	beq	a2,s10,163a8 <_ldtoa_r+0x6a8>
   16364:	00065783          	lhu	a5,0(a2)
   16368:	01079593          	slli	a1,a5,0x10
   1636c:	4105d593          	srai	a1,a1,0x10
   16370:	00179793          	slli	a5,a5,0x1
   16374:	0005d463          	bgez	a1,1637c <_ldtoa_r+0x67c>
   16378:	00176713          	ori	a4,a4,1
   1637c:	01079793          	slli	a5,a5,0x10
   16380:	0107d793          	srli	a5,a5,0x10
   16384:	00277593          	andi	a1,a4,2
   16388:	0017e513          	ori	a0,a5,1
   1638c:	fc0580e3          	beqz	a1,1634c <_ldtoa_r+0x64c>
   16390:	00171713          	slli	a4,a4,0x1
   16394:	00a61023          	sh	a0,0(a2)
   16398:	01071713          	slli	a4,a4,0x10
   1639c:	ffe60613          	addi	a2,a2,-2
   163a0:	01075713          	srli	a4,a4,0x10
   163a4:	fda610e3          	bne	a2,s10,16364 <_ldtoa_r+0x664>
   163a8:	00000713          	li	a4,0
   163ac:	0cc10613          	addi	a2,sp,204
   163b0:	01c0006f          	j	163cc <_ldtoa_r+0x6cc>
   163b4:	00171713          	slli	a4,a4,0x1
   163b8:	00f61023          	sh	a5,0(a2)
   163bc:	01071713          	slli	a4,a4,0x10
   163c0:	ffe60613          	addi	a2,a2,-2
   163c4:	01075713          	srli	a4,a4,0x10
   163c8:	05a60463          	beq	a2,s10,16410 <_ldtoa_r+0x710>
   163cc:	00065783          	lhu	a5,0(a2)
   163d0:	01079593          	slli	a1,a5,0x10
   163d4:	4105d593          	srai	a1,a1,0x10
   163d8:	00179793          	slli	a5,a5,0x1
   163dc:	0005d463          	bgez	a1,163e4 <_ldtoa_r+0x6e4>
   163e0:	00176713          	ori	a4,a4,1
   163e4:	01079793          	slli	a5,a5,0x10
   163e8:	0107d793          	srli	a5,a5,0x10
   163ec:	00277593          	andi	a1,a4,2
   163f0:	0017e513          	ori	a0,a5,1
   163f4:	fc0580e3          	beqz	a1,163b4 <_ldtoa_r+0x6b4>
   163f8:	00171713          	slli	a4,a4,0x1
   163fc:	00a61023          	sh	a0,0(a2)
   16400:	01071713          	slli	a4,a4,0x10
   16404:	ffe60613          	addi	a2,a2,-2
   16408:	01075713          	srli	a4,a4,0x10
   1640c:	fda610e3          	bne	a2,s10,163cc <_ldtoa_r+0x6cc>
   16410:	00000593          	li	a1,0
   16414:	000d8613          	mv	a2,s11
   16418:	0cc10713          	addi	a4,sp,204
   1641c:	00065503          	lhu	a0,0(a2)
   16420:	00075783          	lhu	a5,0(a4)
   16424:	ffe60613          	addi	a2,a2,-2
   16428:	ffe70713          	addi	a4,a4,-2
   1642c:	00a787b3          	add	a5,a5,a0
   16430:	00b787b3          	add	a5,a5,a1
   16434:	0107d593          	srli	a1,a5,0x10
   16438:	00f61123          	sh	a5,2(a2)
   1643c:	0015f593          	andi	a1,a1,1
   16440:	fda71ee3          	bne	a4,s10,1641c <_ldtoa_r+0x71c>
   16444:	000c0613          	mv	a2,s8
   16448:	07c10593          	addi	a1,sp,124
   1644c:	09810513          	addi	a0,sp,152
   16450:	c29fe0ef          	jal	ra,15078 <eiremain>
   16454:	1ac15783          	lhu	a5,428(sp)
   16458:	00990733          	add	a4,s2,s1
   1645c:	00148493          	addi	s1,s1,1
   16460:	03078613          	addi	a2,a5,48
   16464:	00c70023          	sb	a2,0(a4)
   16468:	e49458e3          	bge	s0,s1,162b8 <_ldtoa_r+0x5b8>
   1646c:	fff44513          	not	a0,s0
   16470:	01012703          	lw	a4,16(sp)
   16474:	41f55513          	srai	a0,a0,0x1f
   16478:	00a47533          	and	a0,s0,a0
   1647c:	01c12483          	lw	s1,28(sp)
   16480:	00150913          	addi	s2,a0,1
   16484:	01270933          	add	s2,a4,s2
   16488:	00a70c33          	add	s8,a4,a0
   1648c:	00400713          	li	a4,4
   16490:	04f75e63          	bge	a4,a5,164ec <_ldtoa_r+0x7ec>
   16494:	00500713          	li	a4,5
   16498:	00e780e3          	beq	a5,a4,16c98 <_ldtoa_r+0xf98>
   1649c:	ffe94783          	lbu	a5,-2(s2)
   164a0:	ffe90713          	addi	a4,s2,-2
   164a4:	07f7f793          	andi	a5,a5,127
   164a8:	78044463          	bltz	s0,16c30 <_ldtoa_r+0xf30>
   164ac:	02e00693          	li	a3,46
   164b0:	03800613          	li	a2,56
   164b4:	03000593          	li	a1,48
   164b8:	00d78e63          	beq	a5,a3,164d4 <_ldtoa_r+0x7d4>
   164bc:	78f65263          	bge	a2,a5,16c40 <_ldtoa_r+0xf40>
   164c0:	fff74783          	lbu	a5,-1(a4)
   164c4:	00b70023          	sb	a1,0(a4)
   164c8:	fff70713          	addi	a4,a4,-1
   164cc:	07f7f793          	andi	a5,a5,127
   164d0:	fe9ff06f          	j	164b8 <_ldtoa_r+0x7b8>
   164d4:	fff74783          	lbu	a5,-1(a4)
   164d8:	03800693          	li	a3,56
   164dc:	00f6f4e3          	bgeu	a3,a5,16ce4 <_ldtoa_r+0xfe4>
   164e0:	03100793          	li	a5,49
   164e4:	00148493          	addi	s1,s1,1
   164e8:	fef70fa3          	sb	a5,-1(a4)
   164ec:	000255b7          	lui	a1,0x25
   164f0:	00048613          	mv	a2,s1
   164f4:	9f858593          	addi	a1,a1,-1544 # 249f8 <zeroes.4484+0x34>
   164f8:	000c0513          	mv	a0,s8
   164fc:	7b5020ef          	jal	ra,194b0 <sprintf>
   16500:	07215783          	lhu	a5,114(sp)
   16504:	01412703          	lw	a4,20(sp)
   16508:	16912823          	sw	s1,368(sp)
   1650c:	fff7c793          	not	a5,a5
   16510:	16e12223          	sw	a4,356(sp)
   16514:	01179713          	slli	a4,a5,0x11
   16518:	00071e63          	bnez	a4,16534 <_ldtoa_r+0x834>
   1651c:	00098513          	mv	a0,s3
   16520:	b98fe0ef          	jal	ra,148b8 <eisinf.part.0>
   16524:	22051063          	bnez	a0,16744 <_ldtoa_r+0xa44>
   16528:	00098513          	mv	a0,s3
   1652c:	8c8fe0ef          	jal	ra,145f4 <eisnan.part.0>
   16530:	20051a63          	bnez	a0,16744 <_ldtoa_r+0xa44>
   16534:	00c12683          	lw	a3,12(sp)
   16538:	12414703          	lbu	a4,292(sp)
   1653c:	00148793          	addi	a5,s1,1
   16540:	00f6a023          	sw	a5,0(a3)
   16544:	000a8793          	mv	a5,s5
   16548:	02070a63          	beqz	a4,1657c <_ldtoa_r+0x87c>
   1654c:	02e00693          	li	a3,46
   16550:	1cd70c63          	beq	a4,a3,16728 <_ldtoa_r+0xa28>
   16554:	0017c703          	lbu	a4,1(a5)
   16558:	00178793          	addi	a5,a5,1
   1655c:	fe071ae3          	bnez	a4,16550 <_ldtoa_r+0x850>
   16560:	04500693          	li	a3,69
   16564:	00fae663          	bltu	s5,a5,16570 <_ldtoa_r+0x870>
   16568:	0140006f          	j	1657c <_ldtoa_r+0x87c>
   1656c:	01578863          	beq	a5,s5,1657c <_ldtoa_r+0x87c>
   16570:	fff7c703          	lbu	a4,-1(a5)
   16574:	fff78793          	addi	a5,a5,-1
   16578:	fed71ae3          	bne	a4,a3,1656c <_ldtoa_r+0x86c>
   1657c:	00078023          	sb	zero,0(a5)
   16580:	000a8793          	mv	a5,s5
   16584:	02000693          	li	a3,32
   16588:	02d00613          	li	a2,45
   1658c:	0007c703          	lbu	a4,0(a5)
   16590:	00d70463          	beq	a4,a3,16598 <_ldtoa_r+0x898>
   16594:	00c71663          	bne	a4,a2,165a0 <_ldtoa_r+0x8a0>
   16598:	00178793          	addi	a5,a5,1
   1659c:	ff1ff06f          	j	1658c <_ldtoa_r+0x88c>
   165a0:	000a8413          	mv	s0,s5
   165a4:	00c0006f          	j	165b0 <_ldtoa_r+0x8b0>
   165a8:	0007c703          	lbu	a4,0(a5)
   165ac:	00068413          	mv	s0,a3
   165b0:	00e40023          	sb	a4,0(s0)
   165b4:	00140693          	addi	a3,s0,1
   165b8:	00178793          	addi	a5,a5,1
   165bc:	fe0716e3          	bnez	a4,165a8 <_ldtoa_r+0x8a8>
   165c0:	00012683          	lw	a3,0(sp)
   165c4:	00200793          	li	a5,2
   165c8:	fff44703          	lbu	a4,-1(s0)
   165cc:	12f68663          	beq	a3,a5,166f8 <_ldtoa_r+0x9f8>
   165d0:	00412783          	lw	a5,4(sp)
   165d4:	00078693          	mv	a3,a5
   165d8:	0097d463          	bge	a5,s1,165e0 <_ldtoa_r+0x8e0>
   165dc:	00048693          	mv	a3,s1
   165e0:	03000793          	li	a5,48
   165e4:	02f71663          	bne	a4,a5,16610 <_ldtoa_r+0x910>
   165e8:	415407b3          	sub	a5,s0,s5
   165ec:	02f6d263          	bge	a3,a5,16610 <_ldtoa_r+0x910>
   165f0:	03000613          	li	a2,48
   165f4:	0080006f          	j	165fc <_ldtoa_r+0x8fc>
   165f8:	00e6dc63          	bge	a3,a4,16610 <_ldtoa_r+0x910>
   165fc:	ffe44783          	lbu	a5,-2(s0)
   16600:	fe040fa3          	sb	zero,-1(s0)
   16604:	fff40413          	addi	s0,s0,-1
   16608:	41540733          	sub	a4,s0,s5
   1660c:	fec786e3          	beq	a5,a2,165f8 <_ldtoa_r+0x8f8>
   16610:	00012703          	lw	a4,0(sp)
   16614:	00300793          	li	a5,3
   16618:	0af70263          	beq	a4,a5,166bc <_ldtoa_r+0x9bc>
   1661c:	00812783          	lw	a5,8(sp)
   16620:	040a2223          	sw	zero,68(s4)
   16624:	00978693          	addi	a3,a5,9
   16628:	01700793          	li	a5,23
   1662c:	0cd7f263          	bgeu	a5,a3,166f0 <_ldtoa_r+0x9f0>
   16630:	00100713          	li	a4,1
   16634:	00400793          	li	a5,4
   16638:	00179793          	slli	a5,a5,0x1
   1663c:	01478613          	addi	a2,a5,20
   16640:	00070593          	mv	a1,a4
   16644:	00170713          	addi	a4,a4,1
   16648:	fec6f8e3          	bgeu	a3,a2,16638 <_ldtoa_r+0x938>
   1664c:	04ba2223          	sw	a1,68(s4)
   16650:	000a0513          	mv	a0,s4
   16654:	660010ef          	jal	ra,17cb4 <_Balloc>
   16658:	04aa2023          	sw	a0,64(s4)
   1665c:	000a8593          	mv	a1,s5
   16660:	00050493          	mv	s1,a0
   16664:	020030ef          	jal	ra,19684 <strcpy>
   16668:	01812783          	lw	a5,24(sp)
   1666c:	00078863          	beqz	a5,1667c <_ldtoa_r+0x97c>
   16670:	41540433          	sub	s0,s0,s5
   16674:	00848433          	add	s0,s1,s0
   16678:	0087a023          	sw	s0,0(a5)
   1667c:	1ec12083          	lw	ra,492(sp)
   16680:	1e812403          	lw	s0,488(sp)
   16684:	1e012903          	lw	s2,480(sp)
   16688:	1dc12983          	lw	s3,476(sp)
   1668c:	1d812a03          	lw	s4,472(sp)
   16690:	1d412a83          	lw	s5,468(sp)
   16694:	1d012b03          	lw	s6,464(sp)
   16698:	1cc12b83          	lw	s7,460(sp)
   1669c:	1c812c03          	lw	s8,456(sp)
   166a0:	1c412c83          	lw	s9,452(sp)
   166a4:	1c012d03          	lw	s10,448(sp)
   166a8:	1bc12d83          	lw	s11,444(sp)
   166ac:	00048513          	mv	a0,s1
   166b0:	1e412483          	lw	s1,484(sp)
   166b4:	1f010113          	addi	sp,sp,496
   166b8:	00008067          	ret
   166bc:	00412783          	lw	a5,4(sp)
   166c0:	009784b3          	add	s1,a5,s1
   166c4:	5004c863          	bltz	s1,16bd4 <_ldtoa_r+0xed4>
   166c8:	00c12783          	lw	a5,12(sp)
   166cc:	00812703          	lw	a4,8(sp)
   166d0:	0007a783          	lw	a5,0(a5)
   166d4:	00f707b3          	add	a5,a4,a5
   166d8:	00f12423          	sw	a5,8(sp)
   166dc:	00812783          	lw	a5,8(sp)
   166e0:	040a2223          	sw	zero,68(s4)
   166e4:	00378693          	addi	a3,a5,3
   166e8:	01700793          	li	a5,23
   166ec:	f4d7e2e3          	bltu	a5,a3,16630 <_ldtoa_r+0x930>
   166f0:	00000593          	li	a1,0
   166f4:	f5dff06f          	j	16650 <_ldtoa_r+0x950>
   166f8:	03000793          	li	a5,48
   166fc:	f2f710e3          	bne	a4,a5,1661c <_ldtoa_r+0x91c>
   16700:	415407b3          	sub	a5,s0,s5
   16704:	00100693          	li	a3,1
   16708:	eef6c4e3          	blt	a3,a5,165f0 <_ldtoa_r+0x8f0>
   1670c:	f11ff06f          	j	1661c <_ldtoa_r+0x91c>
   16710:	00812483          	lw	s1,8(sp)
   16714:	00912223          	sw	s1,4(sp)
   16718:	02a00793          	li	a5,42
   1671c:	ec97d063          	bge	a5,s1,15ddc <_ldtoa_r+0xdc>
   16720:	00f12223          	sw	a5,4(sp)
   16724:	eb8ff06f          	j	15ddc <_ldtoa_r+0xdc>
   16728:	0007c703          	lbu	a4,0(a5)
   1672c:	e2070ae3          	beqz	a4,16560 <_ldtoa_r+0x860>
   16730:	0017c703          	lbu	a4,1(a5)
   16734:	00178793          	addi	a5,a5,1
   16738:	fee78fa3          	sb	a4,-1(a5)
   1673c:	fe071ae3          	bnez	a4,16730 <_ldtoa_r+0xa30>
   16740:	e21ff06f          	j	16560 <_ldtoa_r+0x860>
   16744:	00c12703          	lw	a4,12(sp)
   16748:	000027b7          	lui	a5,0x2
   1674c:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd965>
   16750:	00f72023          	sw	a5,0(a4)
   16754:	e2dff06f          	j	16580 <_ldtoa_r+0x880>
   16758:	03100713          	li	a4,49
   1675c:	12e102a3          	sb	a4,293(sp)
   16760:	02e00713          	li	a4,46
   16764:	12e10323          	sb	a4,294(sp)
   16768:	00148493          	addi	s1,s1,1
   1676c:	2af05c63          	blez	a5,16a24 <_ldtoa_r+0xd24>
   16770:	03000793          	li	a5,48
   16774:	12f103a3          	sb	a5,295(sp)
   16778:	12810793          	addi	a5,sp,296
   1677c:	fff40413          	addi	s0,s0,-1
   16780:	00f12823          	sw	a5,16(sp)
   16784:	b11ff06f          	j	16294 <_ldtoa_r+0x594>
   16788:	0b410c93          	addi	s9,sp,180
   1678c:	000c8713          	mv	a4,s9
   16790:	07c10793          	addi	a5,sp,124
   16794:	09010613          	addi	a2,sp,144
   16798:	0007d683          	lhu	a3,0(a5)
   1679c:	00278793          	addi	a5,a5,2
   167a0:	00270713          	addi	a4,a4,2
   167a4:	fed71f23          	sh	a3,-2(a4)
   167a8:	fec798e3          	bne	a5,a2,16798 <_ldtoa_r+0xa98>
   167ac:	000047b7          	lui	a5,0x4
   167b0:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xbfe6>
   167b4:	0cf11323          	sh	a5,198(sp)
   167b8:	000087b7          	lui	a5,0x8
   167bc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   167c0:	00f12e23          	sw	a5,28(sp)
   167c4:	ffffc7b7          	lui	a5,0xffffc
   167c8:	12410a93          	addi	s5,sp,292
   167cc:	0d010413          	addi	s0,sp,208
   167d0:	01000e13          	li	t3,16
   167d4:	0c8d8313          	addi	t1,s11,200
   167d8:	00278793          	addi	a5,a5,2 # ffffc002 <__BSS_END__+0xfffd5032>
   167dc:	03412423          	sw	s4,40(sp)
   167e0:	03512223          	sw	s5,36(sp)
   167e4:	00000493          	li	s1,0
   167e8:	000c8a93          	mv	s5,s9
   167ec:	16010913          	addi	s2,sp,352
   167f0:	00040c93          	mv	s9,s0
   167f4:	0aa10b93          	addi	s7,sp,170
   167f8:	02f12023          	sw	a5,32(sp)
   167fc:	000e0a13          	mv	s4,t3
   16800:	00030413          	mv	s0,t1
   16804:	00090693          	mv	a3,s2
   16808:	09810613          	addi	a2,sp,152
   1680c:	000a8593          	mv	a1,s5
   16810:	00040513          	mv	a0,s0
   16814:	e95fe0ef          	jal	ra,156a8 <ediv>
   16818:	04c10713          	addi	a4,sp,76
   1681c:	09810793          	addi	a5,sp,152
   16820:	0007d683          	lhu	a3,0(a5)
   16824:	00278793          	addi	a5,a5,2
   16828:	00270713          	addi	a4,a4,2
   1682c:	fed71f23          	sh	a3,-2(a4)
   16830:	ffa798e3          	bne	a5,s10,16820 <_ldtoa_r+0xb20>
   16834:	01c12783          	lw	a5,28(sp)
   16838:	05e15583          	lhu	a1,94(sp)
   1683c:	00f5f633          	and	a2,a1,a5
   16840:	02012783          	lw	a5,32(sp)
   16844:	00f60533          	add	a0,a2,a5
   16848:	3aa05063          	blez	a0,16be8 <_ldtoa_r+0xee8>
   1684c:	09000613          	li	a2,144
   16850:	40a60633          	sub	a2,a2,a0
   16854:	000c8713          	mv	a4,s9
   16858:	04c10793          	addi	a5,sp,76
   1685c:	0007d683          	lhu	a3,0(a5)
   16860:	00278793          	addi	a5,a5,2
   16864:	00270713          	addi	a4,a4,2
   16868:	fed71f23          	sh	a3,-2(a4)
   1686c:	ff3798e3          	bne	a5,s3,1685c <_ldtoa_r+0xb5c>
   16870:	06c05463          	blez	a2,168d8 <_ldtoa_r+0xbd8>
   16874:	00f00793          	li	a5,15
   16878:	000c8713          	mv	a4,s9
   1687c:	02c7dc63          	bge	a5,a2,168b4 <_ldtoa_r+0xbb4>
   16880:	ff060613          	addi	a2,a2,-16
   16884:	00465693          	srli	a3,a2,0x4
   16888:	00168713          	addi	a4,a3,1
   1688c:	00171713          	slli	a4,a4,0x1
   16890:	00ec8733          	add	a4,s9,a4
   16894:	000c8793          	mv	a5,s9
   16898:	00278793          	addi	a5,a5,2
   1689c:	fe079f23          	sh	zero,-2(a5)
   168a0:	fee79ce3          	bne	a5,a4,16898 <_ldtoa_r+0xb98>
   168a4:	08000613          	li	a2,128
   168a8:	40a60633          	sub	a2,a2,a0
   168ac:	00469693          	slli	a3,a3,0x4
   168b0:	40d60633          	sub	a2,a2,a3
   168b4:	00161613          	slli	a2,a2,0x1
   168b8:	00cd8633          	add	a2,s11,a2
   168bc:	00075783          	lhu	a5,0(a4)
   168c0:	23065683          	lhu	a3,560(a2)
   168c4:	00d7f7b3          	and	a5,a5,a3
   168c8:	00f71023          	sh	a5,0(a4)
   168cc:	01059593          	slli	a1,a1,0x10
   168d0:	4105d593          	srai	a1,a1,0x10
   168d4:	1605c063          	bltz	a1,16a34 <_ldtoa_r+0xd34>
   168d8:	09810793          	addi	a5,sp,152
   168dc:	000c8713          	mv	a4,s9
   168e0:	0007d603          	lhu	a2,0(a5)
   168e4:	00075683          	lhu	a3,0(a4)
   168e8:	00278793          	addi	a5,a5,2
   168ec:	00270713          	addi	a4,a4,2
   168f0:	02d61463          	bne	a2,a3,16918 <_ldtoa_r+0xc18>
   168f4:	fefb96e3          	bne	s7,a5,168e0 <_ldtoa_r+0xbe0>
   168f8:	000a8713          	mv	a4,s5
   168fc:	09810793          	addi	a5,sp,152
   16900:	0007d683          	lhu	a3,0(a5)
   16904:	00278793          	addi	a5,a5,2
   16908:	00270713          	addi	a4,a4,2
   1690c:	fed71f23          	sh	a3,-2(a4)
   16910:	ffa798e3          	bne	a5,s10,16900 <_ldtoa_r+0xc00>
   16914:	014484b3          	add	s1,s1,s4
   16918:	01440413          	addi	s0,s0,20
   1691c:	12cd8793          	addi	a5,s11,300
   16920:	001a5a13          	srli	s4,s4,0x1
   16924:	eef410e3          	bne	s0,a5,16804 <_ldtoa_r+0xb04>
   16928:	0c615783          	lhu	a5,198(sp)
   1692c:	08e15703          	lhu	a4,142(sp)
   16930:	000c8413          	mv	s0,s9
   16934:	02812a03          	lw	s4,40(sp)
   16938:	00e787b3          	add	a5,a5,a4
   1693c:	ffffc737          	lui	a4,0xffffc
   16940:	000a8c93          	mv	s9,s5
   16944:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__BSS_END__+0xfffd4fa2>
   16948:	02412a83          	lw	s5,36(sp)
   1694c:	00e787b3          	add	a5,a5,a4
   16950:	0cf11323          	sh	a5,198(sp)
   16954:	07c10713          	addi	a4,sp,124
   16958:	000c8793          	mv	a5,s9
   1695c:	0c810613          	addi	a2,sp,200
   16960:	0007d683          	lhu	a3,0(a5)
   16964:	00278793          	addi	a5,a5,2
   16968:	00270713          	addi	a4,a4,2
   1696c:	fed71f23          	sh	a3,-2(a4)
   16970:	fec798e3          	bne	a5,a2,16960 <_ldtoa_r+0xc60>
   16974:	00000713          	li	a4,0
   16978:	09810793          	addi	a5,sp,152
   1697c:	0080006f          	j	16984 <_ldtoa_r+0xc84>
   16980:	000c5703          	lhu	a4,0(s8)
   16984:	00278793          	addi	a5,a5,2
   16988:	fee79f23          	sh	a4,-2(a5)
   1698c:	002c0c13          	addi	s8,s8,2
   16990:	ffa798e3          	bne	a5,s10,16980 <_ldtoa_r+0xc80>
   16994:	028d8d13          	addi	s10,s11,40
   16998:	00001c37          	lui	s8,0x1
   1699c:	118d8d93          	addi	s11,s11,280
   169a0:	0100006f          	j	169b0 <_ldtoa_r+0xcb0>
   169a4:	001c5c13          	srli	s8,s8,0x1
   169a8:	29bd0063          	beq	s10,s11,16c28 <_ldtoa_r+0xf28>
   169ac:	014d0d13          	addi	s10,s10,20
   169b0:	000c8593          	mv	a1,s9
   169b4:	000d8513          	mv	a0,s11
   169b8:	de5fd0ef          	jal	ra,1479c <ecmp>
   169bc:	00050793          	mv	a5,a0
   169c0:	000c8593          	mv	a1,s9
   169c4:	000d0513          	mv	a0,s10
   169c8:	26f04063          	bgtz	a5,16c28 <_ldtoa_r+0xf28>
   169cc:	dd1fd0ef          	jal	ra,1479c <ecmp>
   169d0:	fca04ae3          	bgtz	a0,169a4 <_ldtoa_r+0xca4>
   169d4:	00090693          	mv	a3,s2
   169d8:	000c8613          	mv	a2,s9
   169dc:	000c8593          	mv	a1,s9
   169e0:	000d0513          	mv	a0,s10
   169e4:	cc5fe0ef          	jal	ra,156a8 <ediv>
   169e8:	09810613          	addi	a2,sp,152
   169ec:	00090693          	mv	a3,s2
   169f0:	00060593          	mv	a1,a2
   169f4:	000d0513          	mv	a0,s10
   169f8:	899fe0ef          	jal	ra,15290 <emul>
   169fc:	018484b3          	add	s1,s1,s8
   16a00:	fa5ff06f          	j	169a4 <_ldtoa_r+0xca4>
   16a04:	12410a93          	addi	s5,sp,292
   16a08:	000255b7          	lui	a1,0x25
   16a0c:	9d458593          	addi	a1,a1,-1580 # 249d4 <zeroes.4484+0x10>
   16a10:	000a8513          	mv	a0,s5
   16a14:	000024b7          	lui	s1,0x2
   16a18:	299020ef          	jal	ra,194b0 <sprintf>
   16a1c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16a20:	ae1ff06f          	j	16500 <_ldtoa_r+0x800>
   16a24:	12710c13          	addi	s8,sp,295
   16a28:	ac0792e3          	bnez	a5,164ec <_ldtoa_r+0x7ec>
   16a2c:	01812823          	sw	s8,16(sp)
   16a30:	865ff06f          	j	16294 <_ldtoa_r+0x594>
   16a34:	04c10793          	addi	a5,sp,76
   16a38:	000c8713          	mv	a4,s9
   16a3c:	00c0006f          	j	16a48 <_ldtoa_r+0xd48>
   16a40:	05e10693          	addi	a3,sp,94
   16a44:	e8f68ae3          	beq	a3,a5,168d8 <_ldtoa_r+0xbd8>
   16a48:	0007d603          	lhu	a2,0(a5)
   16a4c:	00075683          	lhu	a3,0(a4)
   16a50:	00278793          	addi	a5,a5,2
   16a54:	00270713          	addi	a4,a4,2
   16a58:	fed604e3          	beq	a2,a3,16a40 <_ldtoa_r+0xd40>
   16a5c:	0e215783          	lhu	a5,226(sp)
   16a60:	01c12703          	lw	a4,28(sp)
   16a64:	00f777b3          	and	a5,a4,a5
   16a68:	00e79e63          	bne	a5,a4,16a84 <_ldtoa_r+0xd84>
   16a6c:	000c8513          	mv	a0,s9
   16a70:	b85fd0ef          	jal	ra,145f4 <eisnan.part.0>
   16a74:	e60512e3          	bnez	a0,168d8 <_ldtoa_r+0xbd8>
   16a78:	000c8513          	mv	a0,s9
   16a7c:	e3dfd0ef          	jal	ra,148b8 <eisinf.part.0>
   16a80:	e4051ce3          	bnez	a0,168d8 <_ldtoa_r+0xbd8>
   16a84:	0ec10593          	addi	a1,sp,236
   16a88:	000c0513          	mv	a0,s8
   16a8c:	c19fd0ef          	jal	ra,146a4 <emovi>
   16a90:	10810593          	addi	a1,sp,264
   16a94:	000c8513          	mv	a0,s9
   16a98:	c0dfd0ef          	jal	ra,146a4 <emovi>
   16a9c:	0ec15603          	lhu	a2,236(sp)
   16aa0:	10a15503          	lhu	a0,266(sp)
   16aa4:	0ee15883          	lhu	a7,238(sp)
   16aa8:	fff64613          	not	a2,a2
   16aac:	01061613          	slli	a2,a2,0x10
   16ab0:	01065613          	srli	a2,a2,0x10
   16ab4:	0ec11623          	sh	a2,236(sp)
   16ab8:	40a885b3          	sub	a1,a7,a0
   16abc:	00050693          	mv	a3,a0
   16ac0:	06b05e63          	blez	a1,16b3c <_ldtoa_r+0xe3c>
   16ac4:	02412683          	lw	a3,36(sp)
   16ac8:	10810713          	addi	a4,sp,264
   16acc:	12010793          	addi	a5,sp,288
   16ad0:	00075583          	lhu	a1,0(a4)
   16ad4:	00270713          	addi	a4,a4,2
   16ad8:	00268693          	addi	a3,a3,2
   16adc:	feb69f23          	sh	a1,-2(a3)
   16ae0:	fef718e3          	bne	a4,a5,16ad0 <_ldtoa_r+0xdd0>
   16ae4:	12011e23          	sh	zero,316(sp)
   16ae8:	10810713          	addi	a4,sp,264
   16aec:	0ec10693          	addi	a3,sp,236
   16af0:	0080006f          	j	16af8 <_ldtoa_r+0xdf8>
   16af4:	0006d603          	lhu	a2,0(a3)
   16af8:	00270713          	addi	a4,a4,2
   16afc:	fec71f23          	sh	a2,-2(a4)
   16b00:	00268693          	addi	a3,a3,2
   16b04:	fef718e3          	bne	a4,a5,16af4 <_ldtoa_r+0xdf4>
   16b08:	02412783          	lw	a5,36(sp)
   16b0c:	12011023          	sh	zero,288(sp)
   16b10:	0ec10713          	addi	a4,sp,236
   16b14:	13c10613          	addi	a2,sp,316
   16b18:	0007d683          	lhu	a3,0(a5)
   16b1c:	00278793          	addi	a5,a5,2
   16b20:	00270713          	addi	a4,a4,2
   16b24:	fed71f23          	sh	a3,-2(a4)
   16b28:	fec798e3          	bne	a5,a2,16b18 <_ldtoa_r+0xe18>
   16b2c:	10a15683          	lhu	a3,266(sp)
   16b30:	411505b3          	sub	a1,a0,a7
   16b34:	10011223          	sh	zero,260(sp)
   16b38:	00068513          	mv	a0,a3
   16b3c:	2c058663          	beqz	a1,16e08 <_ldtoa_r+0x1108>
   16b40:	02d12623          	sw	a3,44(sp)
   16b44:	f6f00793          	li	a5,-145
   16b48:	06f5c863          	blt	a1,a5,16bb8 <_ldtoa_r+0xeb8>
   16b4c:	0ec10513          	addi	a0,sp,236
   16b50:	d85fd0ef          	jal	ra,148d4 <eshift.part.0>
   16b54:	02c12683          	lw	a3,44(sp)
   16b58:	00050593          	mv	a1,a0
   16b5c:	12010793          	addi	a5,sp,288
   16b60:	10410513          	addi	a0,sp,260
   16b64:	0ec15603          	lhu	a2,236(sp)
   16b68:	10815703          	lhu	a4,264(sp)
   16b6c:	2ee60a63          	beq	a2,a4,16e60 <_ldtoa_r+0x1160>
   16b70:	00000713          	li	a4,0
   16b74:	00070613          	mv	a2,a4
   16b78:	0007d703          	lhu	a4,0(a5)
   16b7c:	00055803          	lhu	a6,0(a0)
   16b80:	ffe78793          	addi	a5,a5,-2
   16b84:	40c70733          	sub	a4,a4,a2
   16b88:	41070733          	sub	a4,a4,a6
   16b8c:	01075613          	srli	a2,a4,0x10
   16b90:	00e79123          	sh	a4,2(a5)
   16b94:	10a10713          	addi	a4,sp,266
   16b98:	00167613          	andi	a2,a2,1
   16b9c:	ffe50513          	addi	a0,a0,-2
   16ba0:	fce79ce3          	bne	a5,a4,16b78 <_ldtoa_r+0xe78>
   16ba4:	00100613          	li	a2,1
   16ba8:	00090793          	mv	a5,s2
   16bac:	04000713          	li	a4,64
   16bb0:	10810513          	addi	a0,sp,264
   16bb4:	8b8fe0ef          	jal	ra,14c6c <emdnorm>
   16bb8:	000c8593          	mv	a1,s9
   16bbc:	10810513          	addi	a0,sp,264
   16bc0:	e20fe0ef          	jal	ra,151e0 <emovo.isra.0>
   16bc4:	d15ff06f          	j	168d8 <_ldtoa_r+0xbd8>
   16bc8:	00812783          	lw	a5,8(sp)
   16bcc:	fff78493          	addi	s1,a5,-1
   16bd0:	b45ff06f          	j	16714 <_ldtoa_r+0xa14>
   16bd4:	00c12783          	lw	a5,12(sp)
   16bd8:	12010223          	sb	zero,292(sp)
   16bdc:	000a8413          	mv	s0,s5
   16be0:	0007a023          	sw	zero,0(a5)
   16be4:	af9ff06f          	j	166dc <_ldtoa_r+0x9dc>
   16be8:	000c8793          	mv	a5,s9
   16bec:	0e410713          	addi	a4,sp,228
   16bf0:	00278793          	addi	a5,a5,2
   16bf4:	fe079f23          	sh	zero,-2(a5)
   16bf8:	fee79ce3          	bne	a5,a4,16bf0 <_ldtoa_r+0xef0>
   16bfc:	cd1ff06f          	j	168cc <_ldtoa_r+0xbcc>
   16c00:	01012783          	lw	a5,16(sp)
   16c04:	12410a93          	addi	s5,sp,292
   16c08:	06078a63          	beqz	a5,16c7c <_ldtoa_r+0xf7c>
   16c0c:	000255b7          	lui	a1,0x25
   16c10:	9dc58593          	addi	a1,a1,-1572 # 249dc <zeroes.4484+0x18>
   16c14:	000a8513          	mv	a0,s5
   16c18:	000024b7          	lui	s1,0x2
   16c1c:	095020ef          	jal	ra,194b0 <sprintf>
   16c20:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16c24:	8ddff06f          	j	16500 <_ldtoa_r+0x800>
   16c28:	0e810b93          	addi	s7,sp,232
   16c2c:	bd8ff06f          	j	16004 <_ldtoa_r+0x304>
   16c30:	03100793          	li	a5,49
   16c34:	fef90f23          	sb	a5,-2(s2)
   16c38:	00148493          	addi	s1,s1,1
   16c3c:	8b1ff06f          	j	164ec <_ldtoa_r+0x7ec>
   16c40:	00178793          	addi	a5,a5,1
   16c44:	00f70023          	sb	a5,0(a4)
   16c48:	8a5ff06f          	j	164ec <_ldtoa_r+0x7ec>
   16c4c:	12410a93          	addi	s5,sp,292
   16c50:	000255b7          	lui	a1,0x25
   16c54:	9f458593          	addi	a1,a1,-1548 # 249f4 <zeroes.4484+0x30>
   16c58:	000a8513          	mv	a0,s5
   16c5c:	000024b7          	lui	s1,0x2
   16c60:	051020ef          	jal	ra,194b0 <sprintf>
   16c64:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16c68:	899ff06f          	j	16500 <_ldtoa_r+0x800>
   16c6c:	1ac15783          	lhu	a5,428(sp)
   16c70:	12610c13          	addi	s8,sp,294
   16c74:	12710913          	addi	s2,sp,295
   16c78:	815ff06f          	j	1648c <_ldtoa_r+0x78c>
   16c7c:	000255b7          	lui	a1,0x25
   16c80:	9e858593          	addi	a1,a1,-1560 # 249e8 <zeroes.4484+0x24>
   16c84:	000a8513          	mv	a0,s5
   16c88:	000024b7          	lui	s1,0x2
   16c8c:	025020ef          	jal	ra,194b0 <sprintf>
   16c90:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   16c94:	86dff06f          	j	16500 <_ldtoa_r+0x800>
   16c98:	09810593          	addi	a1,sp,152
   16c9c:	07c10513          	addi	a0,sp,124
   16ca0:	d40fe0ef          	jal	ra,151e0 <emovo.isra.0>
   16ca4:	9fcb0593          	addi	a1,s6,-1540
   16ca8:	09810513          	addi	a0,sp,152
   16cac:	af1fd0ef          	jal	ra,1479c <ecmp>
   16cb0:	fe051663          	bnez	a0,1649c <_ldtoa_r+0x79c>
   16cb4:	82044ce3          	bltz	s0,164ec <_ldtoa_r+0x7ec>
   16cb8:	ffe94783          	lbu	a5,-2(s2)
   16cbc:	fd278713          	addi	a4,a5,-46
   16cc0:	00173713          	seqz	a4,a4
   16cc4:	fff74713          	not	a4,a4
   16cc8:	00ec0733          	add	a4,s8,a4
   16ccc:	00074703          	lbu	a4,0(a4)
   16cd0:	00177713          	andi	a4,a4,1
   16cd4:	80070ce3          	beqz	a4,164ec <_ldtoa_r+0x7ec>
   16cd8:	ffe90713          	addi	a4,s2,-2
   16cdc:	07f7f793          	andi	a5,a5,127
   16ce0:	fccff06f          	j	164ac <_ldtoa_r+0x7ac>
   16ce4:	00178793          	addi	a5,a5,1
   16ce8:	fef70fa3          	sb	a5,-1(a4)
   16cec:	801ff06f          	j	164ec <_ldtoa_r+0x7ec>
   16cf0:	0d010413          	addi	s0,sp,208
   16cf4:	00040593          	mv	a1,s0
   16cf8:	07c10513          	addi	a0,sp,124
   16cfc:	00004cb7          	lui	s9,0x4
   16d00:	9a5fd0ef          	jal	ra,146a4 <emovi>
   16d04:	00000493          	li	s1,0
   16d08:	0e810b93          	addi	s7,sp,232
   16d0c:	0cc10913          	addi	s2,sp,204
   16d10:	0d210a93          	addi	s5,sp,210
   16d14:	ffec8c93          	addi	s9,s9,-2 # 3ffe <register_fini-0xc076>
   16d18:	0e815783          	lhu	a5,232(sp)
   16d1c:	0077f793          	andi	a5,a5,7
   16d20:	0c079a63          	bnez	a5,16df4 <_ldtoa_r+0x10f4>
   16d24:	0b410713          	addi	a4,sp,180
   16d28:	00040793          	mv	a5,s0
   16d2c:	0007d683          	lhu	a3,0(a5)
   16d30:	00278793          	addi	a5,a5,2
   16d34:	00270713          	addi	a4,a4,2
   16d38:	fed71f23          	sh	a3,-2(a4)
   16d3c:	ff7798e3          	bne	a5,s7,16d2c <_ldtoa_r+0x102c>
   16d40:	0b410513          	addi	a0,sp,180
   16d44:	0c011623          	sh	zero,204(sp)
   16d48:	ef8fd0ef          	jal	ra,14440 <eshdn1>
   16d4c:	0b410513          	addi	a0,sp,180
   16d50:	ef0fd0ef          	jal	ra,14440 <eshdn1>
   16d54:	00000613          	li	a2,0
   16d58:	00090693          	mv	a3,s2
   16d5c:	000b8713          	mv	a4,s7
   16d60:	0006d583          	lhu	a1,0(a3)
   16d64:	00075783          	lhu	a5,0(a4)
   16d68:	ffe68693          	addi	a3,a3,-2
   16d6c:	ffe70713          	addi	a4,a4,-2
   16d70:	00b787b3          	add	a5,a5,a1
   16d74:	00c787b3          	add	a5,a5,a2
   16d78:	0107d613          	srli	a2,a5,0x10
   16d7c:	00f69123          	sh	a5,2(a3)
   16d80:	00167613          	andi	a2,a2,1
   16d84:	fd571ee3          	bne	a4,s5,16d60 <_ldtoa_r+0x1060>
   16d88:	0b615783          	lhu	a5,182(sp)
   16d8c:	0b815703          	lhu	a4,184(sp)
   16d90:	00378793          	addi	a5,a5,3
   16d94:	0af11b23          	sh	a5,182(sp)
   16d98:	02070063          	beqz	a4,16db8 <_ldtoa_r+0x10b8>
   16d9c:	0b410513          	addi	a0,sp,180
   16da0:	ea0fd0ef          	jal	ra,14440 <eshdn1>
   16da4:	0b615783          	lhu	a5,182(sp)
   16da8:	0b815703          	lhu	a4,184(sp)
   16dac:	00178793          	addi	a5,a5,1
   16db0:	0af11b23          	sh	a5,182(sp)
   16db4:	fe0714e3          	bnez	a4,16d9c <_ldtoa_r+0x109c>
   16db8:	0cc15783          	lhu	a5,204(sp)
   16dbc:	02079c63          	bnez	a5,16df4 <_ldtoa_r+0x10f4>
   16dc0:	0b615783          	lhu	a5,182(sp)
   16dc4:	02fce863          	bltu	s9,a5,16df4 <_ldtoa_r+0x10f4>
   16dc8:	00040713          	mv	a4,s0
   16dcc:	0b410793          	addi	a5,sp,180
   16dd0:	0007d683          	lhu	a3,0(a5)
   16dd4:	00278793          	addi	a5,a5,2
   16dd8:	00270713          	addi	a4,a4,2
   16ddc:	fed71f23          	sh	a3,-2(a4)
   16de0:	ff2798e3          	bne	a5,s2,16dd0 <_ldtoa_r+0x10d0>
   16de4:	0e011423          	sh	zero,232(sp)
   16de8:	fff48493          	addi	s1,s1,-1
   16dec:	fd500793          	li	a5,-43
   16df0:	f2f494e3          	bne	s1,a5,16d18 <_ldtoa_r+0x1018>
   16df4:	07c10593          	addi	a1,sp,124
   16df8:	00040513          	mv	a0,s0
   16dfc:	be4fe0ef          	jal	ra,151e0 <emovo.isra.0>
   16e00:	16010913          	addi	s2,sp,352
   16e04:	8f4ff06f          	j	15ef8 <_ldtoa_r+0x1f8>
   16e08:	10c10713          	addi	a4,sp,268
   16e0c:	0f010793          	addi	a5,sp,240
   16e10:	0007d883          	lhu	a7,0(a5)
   16e14:	00075603          	lhu	a2,0(a4)
   16e18:	00278793          	addi	a5,a5,2
   16e1c:	00270713          	addi	a4,a4,2
   16e20:	02c89863          	bne	a7,a2,16e50 <_ldtoa_r+0x1150>
   16e24:	10610613          	addi	a2,sp,262
   16e28:	fec794e3          	bne	a5,a2,16e10 <_ldtoa_r+0x1110>
   16e2c:	0ec15703          	lhu	a4,236(sp)
   16e30:	10815783          	lhu	a5,264(sp)
   16e34:	06f70263          	beq	a4,a5,16e98 <_ldtoa_r+0x1198>
   16e38:	000c8793          	mv	a5,s9
   16e3c:	0e410713          	addi	a4,sp,228
   16e40:	00278793          	addi	a5,a5,2
   16e44:	fe079f23          	sh	zero,-2(a5)
   16e48:	fee79ce3          	bne	a5,a4,16e40 <_ldtoa_r+0x1140>
   16e4c:	a8dff06f          	j	168d8 <_ldtoa_r+0xbd8>
   16e50:	0d166663          	bltu	a2,a7,16f1c <_ldtoa_r+0x121c>
   16e54:	12010793          	addi	a5,sp,288
   16e58:	10410513          	addi	a0,sp,260
   16e5c:	d09ff06f          	j	16b64 <_ldtoa_r+0xe64>
   16e60:	00000713          	li	a4,0
   16e64:	0ee10313          	addi	t1,sp,238
   16e68:	0007d803          	lhu	a6,0(a5)
   16e6c:	00055603          	lhu	a2,0(a0)
   16e70:	ffe78793          	addi	a5,a5,-2
   16e74:	ffe50513          	addi	a0,a0,-2
   16e78:	01060633          	add	a2,a2,a6
   16e7c:	00e60733          	add	a4,a2,a4
   16e80:	01075613          	srli	a2,a4,0x10
   16e84:	00e79123          	sh	a4,2(a5)
   16e88:	00167713          	andi	a4,a2,1
   16e8c:	fc651ee3          	bne	a0,t1,16e68 <_ldtoa_r+0x1168>
   16e90:	00000613          	li	a2,0
   16e94:	d15ff06f          	j	16ba8 <_ldtoa_r+0xea8>
   16e98:	00068713          	mv	a4,a3
   16e9c:	06069263          	bnez	a3,16f00 <_ldtoa_r+0x1200>
   16ea0:	10e11783          	lh	a5,270(sp)
   16ea4:	0407ce63          	bltz	a5,16f00 <_ldtoa_r+0x1200>
   16ea8:	12010693          	addi	a3,sp,288
   16eac:	0200006f          	j	16ecc <_ldtoa_r+0x11cc>
   16eb0:	00f69023          	sh	a5,0(a3)
   16eb4:	00171713          	slli	a4,a4,0x1
   16eb8:	01071713          	slli	a4,a4,0x10
   16ebc:	ffe68693          	addi	a3,a3,-2
   16ec0:	10a10793          	addi	a5,sp,266
   16ec4:	01075713          	srli	a4,a4,0x10
   16ec8:	cef688e3          	beq	a3,a5,16bb8 <_ldtoa_r+0xeb8>
   16ecc:	0006d783          	lhu	a5,0(a3)
   16ed0:	01079613          	slli	a2,a5,0x10
   16ed4:	41065613          	srai	a2,a2,0x10
   16ed8:	00179793          	slli	a5,a5,0x1
   16edc:	00065463          	bgez	a2,16ee4 <_ldtoa_r+0x11e4>
   16ee0:	00176713          	ori	a4,a4,1
   16ee4:	01079793          	slli	a5,a5,0x10
   16ee8:	0107d793          	srli	a5,a5,0x10
   16eec:	00277613          	andi	a2,a4,2
   16ef0:	0017e593          	ori	a1,a5,1
   16ef4:	fa060ee3          	beqz	a2,16eb0 <_ldtoa_r+0x11b0>
   16ef8:	00b69023          	sh	a1,0(a3)
   16efc:	fb9ff06f          	j	16eb4 <_ldtoa_r+0x11b4>
   16f00:	10c10613          	addi	a2,sp,268
   16f04:	12010793          	addi	a5,sp,288
   16f08:	08071263          	bnez	a4,16f8c <_ldtoa_r+0x128c>
   16f0c:	08c78263          	beq	a5,a2,16f90 <_ldtoa_r+0x1290>
   16f10:	00065703          	lhu	a4,0(a2)
   16f14:	00260613          	addi	a2,a2,2
   16f18:	ff1ff06f          	j	16f08 <_ldtoa_r+0x1208>
   16f1c:	02412603          	lw	a2,36(sp)
   16f20:	10810713          	addi	a4,sp,264
   16f24:	12010793          	addi	a5,sp,288
   16f28:	00075503          	lhu	a0,0(a4)
   16f2c:	00270713          	addi	a4,a4,2
   16f30:	00260613          	addi	a2,a2,2
   16f34:	fea61f23          	sh	a0,-2(a2)
   16f38:	fef718e3          	bne	a4,a5,16f28 <_ldtoa_r+0x1228>
   16f3c:	12011e23          	sh	zero,316(sp)
   16f40:	10810613          	addi	a2,sp,264
   16f44:	0ec10713          	addi	a4,sp,236
   16f48:	10410513          	addi	a0,sp,260
   16f4c:	00075803          	lhu	a6,0(a4)
   16f50:	00270713          	addi	a4,a4,2
   16f54:	00260613          	addi	a2,a2,2
   16f58:	ff061f23          	sh	a6,-2(a2)
   16f5c:	fea718e3          	bne	a4,a0,16f4c <_ldtoa_r+0x124c>
   16f60:	02412703          	lw	a4,36(sp)
   16f64:	12011023          	sh	zero,288(sp)
   16f68:	0ec10893          	addi	a7,sp,236
   16f6c:	13c10613          	addi	a2,sp,316
   16f70:	00075803          	lhu	a6,0(a4)
   16f74:	00270713          	addi	a4,a4,2
   16f78:	00288893          	addi	a7,a7,2
   16f7c:	ff089f23          	sh	a6,-2(a7)
   16f80:	fec718e3          	bne	a4,a2,16f70 <_ldtoa_r+0x1270>
   16f84:	10011223          	sh	zero,260(sp)
   16f88:	bddff06f          	j	16b64 <_ldtoa_r+0xe64>
   16f8c:	00168513          	addi	a0,a3,1
   16f90:	10a11523          	sh	a0,266(sp)
   16f94:	c25ff06f          	j	16bb8 <_ldtoa_r+0xeb8>

00016f98 <_ldcheck>:
   16f98:	00852703          	lw	a4,8(a0)
   16f9c:	00c52783          	lw	a5,12(a0)
   16fa0:	00052603          	lw	a2,0(a0)
   16fa4:	00452683          	lw	a3,4(a0)
   16fa8:	fc010113          	addi	sp,sp,-64
   16fac:	00010513          	mv	a0,sp
   16fb0:	01410593          	addi	a1,sp,20
   16fb4:	00e12423          	sw	a4,8(sp)
   16fb8:	00f12623          	sw	a5,12(sp)
   16fbc:	02112e23          	sw	ra,60(sp)
   16fc0:	00c12023          	sw	a2,0(sp)
   16fc4:	00d12223          	sw	a3,4(sp)
   16fc8:	bf5fe0ef          	jal	ra,15bbc <e113toe.isra.0>
   16fcc:	02615783          	lhu	a5,38(sp)
   16fd0:	00000513          	li	a0,0
   16fd4:	fff7c793          	not	a5,a5
   16fd8:	01179713          	slli	a4,a5,0x11
   16fdc:	00071a63          	bnez	a4,16ff0 <_ldcheck+0x58>
   16fe0:	01410513          	addi	a0,sp,20
   16fe4:	e10fd0ef          	jal	ra,145f4 <eisnan.part.0>
   16fe8:	00153513          	seqz	a0,a0
   16fec:	00150513          	addi	a0,a0,1
   16ff0:	03c12083          	lw	ra,60(sp)
   16ff4:	04010113          	addi	sp,sp,64
   16ff8:	00008067          	ret

00016ffc <__localeconv_l>:
   16ffc:	0f050513          	addi	a0,a0,240
   17000:	00008067          	ret

00017004 <_localeconv_r>:
   17004:	12018513          	addi	a0,gp,288 # 26ec8 <__global_locale+0xf0>
   17008:	00008067          	ret

0001700c <localeconv>:
   1700c:	12018513          	addi	a0,gp,288 # 26ec8 <__global_locale+0xf0>
   17010:	00008067          	ret

00017014 <__swhatbuf_r>:
   17014:	f9010113          	addi	sp,sp,-112
   17018:	06812423          	sw	s0,104(sp)
   1701c:	00058413          	mv	s0,a1
   17020:	00e59583          	lh	a1,14(a1)
   17024:	06912223          	sw	s1,100(sp)
   17028:	07212023          	sw	s2,96(sp)
   1702c:	06112623          	sw	ra,108(sp)
   17030:	00060493          	mv	s1,a2
   17034:	00068913          	mv	s2,a3
   17038:	0405ca63          	bltz	a1,1708c <__swhatbuf_r+0x78>
   1703c:	00810613          	addi	a2,sp,8
   17040:	30d060ef          	jal	ra,1db4c <_fstat_r>
   17044:	04054463          	bltz	a0,1708c <__swhatbuf_r+0x78>
   17048:	00c12703          	lw	a4,12(sp)
   1704c:	0000f7b7          	lui	a5,0xf
   17050:	06c12083          	lw	ra,108(sp)
   17054:	00e7f7b3          	and	a5,a5,a4
   17058:	ffffe737          	lui	a4,0xffffe
   1705c:	00e787b3          	add	a5,a5,a4
   17060:	06812403          	lw	s0,104(sp)
   17064:	0017b793          	seqz	a5,a5
   17068:	00f92023          	sw	a5,0(s2)
   1706c:	40000793          	li	a5,1024
   17070:	00f4a023          	sw	a5,0(s1)
   17074:	00001537          	lui	a0,0x1
   17078:	06412483          	lw	s1,100(sp)
   1707c:	06012903          	lw	s2,96(sp)
   17080:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf874>
   17084:	07010113          	addi	sp,sp,112
   17088:	00008067          	ret
   1708c:	00c45783          	lhu	a5,12(s0)
   17090:	00092023          	sw	zero,0(s2)
   17094:	0807f793          	andi	a5,a5,128
   17098:	02078463          	beqz	a5,170c0 <__swhatbuf_r+0xac>
   1709c:	06c12083          	lw	ra,108(sp)
   170a0:	06812403          	lw	s0,104(sp)
   170a4:	04000793          	li	a5,64
   170a8:	00f4a023          	sw	a5,0(s1)
   170ac:	06012903          	lw	s2,96(sp)
   170b0:	06412483          	lw	s1,100(sp)
   170b4:	00000513          	li	a0,0
   170b8:	07010113          	addi	sp,sp,112
   170bc:	00008067          	ret
   170c0:	06c12083          	lw	ra,108(sp)
   170c4:	06812403          	lw	s0,104(sp)
   170c8:	40000793          	li	a5,1024
   170cc:	00f4a023          	sw	a5,0(s1)
   170d0:	06012903          	lw	s2,96(sp)
   170d4:	06412483          	lw	s1,100(sp)
   170d8:	00000513          	li	a0,0
   170dc:	07010113          	addi	sp,sp,112
   170e0:	00008067          	ret

000170e4 <__smakebuf_r>:
   170e4:	00c5d783          	lhu	a5,12(a1)
   170e8:	fe010113          	addi	sp,sp,-32
   170ec:	00812c23          	sw	s0,24(sp)
   170f0:	00112e23          	sw	ra,28(sp)
   170f4:	00912a23          	sw	s1,20(sp)
   170f8:	01212823          	sw	s2,16(sp)
   170fc:	0027f793          	andi	a5,a5,2
   17100:	00058413          	mv	s0,a1
   17104:	02078863          	beqz	a5,17134 <__smakebuf_r+0x50>
   17108:	04358793          	addi	a5,a1,67
   1710c:	00f5a023          	sw	a5,0(a1)
   17110:	00f5a823          	sw	a5,16(a1)
   17114:	00100793          	li	a5,1
   17118:	00f5aa23          	sw	a5,20(a1)
   1711c:	01c12083          	lw	ra,28(sp)
   17120:	01812403          	lw	s0,24(sp)
   17124:	01412483          	lw	s1,20(sp)
   17128:	01012903          	lw	s2,16(sp)
   1712c:	02010113          	addi	sp,sp,32
   17130:	00008067          	ret
   17134:	00c10693          	addi	a3,sp,12
   17138:	00810613          	addi	a2,sp,8
   1713c:	00050493          	mv	s1,a0
   17140:	ed5ff0ef          	jal	ra,17014 <__swhatbuf_r>
   17144:	00812583          	lw	a1,8(sp)
   17148:	00050913          	mv	s2,a0
   1714c:	00048513          	mv	a0,s1
   17150:	0b4000ef          	jal	ra,17204 <_malloc_r>
   17154:	00c41783          	lh	a5,12(s0)
   17158:	04050863          	beqz	a0,171a8 <__smakebuf_r+0xc4>
   1715c:	00013737          	lui	a4,0x13
   17160:	64870713          	addi	a4,a4,1608 # 13648 <_cleanup_r>
   17164:	02e4ae23          	sw	a4,60(s1)
   17168:	00812703          	lw	a4,8(sp)
   1716c:	00c12683          	lw	a3,12(sp)
   17170:	0807e793          	ori	a5,a5,128
   17174:	00f41623          	sh	a5,12(s0)
   17178:	00a42023          	sw	a0,0(s0)
   1717c:	00a42823          	sw	a0,16(s0)
   17180:	00e42a23          	sw	a4,20(s0)
   17184:	04069863          	bnez	a3,171d4 <__smakebuf_r+0xf0>
   17188:	0127e7b3          	or	a5,a5,s2
   1718c:	01c12083          	lw	ra,28(sp)
   17190:	00f41623          	sh	a5,12(s0)
   17194:	01812403          	lw	s0,24(sp)
   17198:	01412483          	lw	s1,20(sp)
   1719c:	01012903          	lw	s2,16(sp)
   171a0:	02010113          	addi	sp,sp,32
   171a4:	00008067          	ret
   171a8:	2007f713          	andi	a4,a5,512
   171ac:	f60718e3          	bnez	a4,1711c <__smakebuf_r+0x38>
   171b0:	ffc7f793          	andi	a5,a5,-4
   171b4:	0027e793          	ori	a5,a5,2
   171b8:	04340713          	addi	a4,s0,67
   171bc:	00f41623          	sh	a5,12(s0)
   171c0:	00100793          	li	a5,1
   171c4:	00e42023          	sw	a4,0(s0)
   171c8:	00e42823          	sw	a4,16(s0)
   171cc:	00f42a23          	sw	a5,20(s0)
   171d0:	f4dff06f          	j	1711c <__smakebuf_r+0x38>
   171d4:	00e41583          	lh	a1,14(s0)
   171d8:	00048513          	mv	a0,s1
   171dc:	1d5060ef          	jal	ra,1dbb0 <_isatty_r>
   171e0:	00051663          	bnez	a0,171ec <__smakebuf_r+0x108>
   171e4:	00c41783          	lh	a5,12(s0)
   171e8:	fa1ff06f          	j	17188 <__smakebuf_r+0xa4>
   171ec:	00c45703          	lhu	a4,12(s0)
   171f0:	ffc77713          	andi	a4,a4,-4
   171f4:	00176713          	ori	a4,a4,1
   171f8:	01071793          	slli	a5,a4,0x10
   171fc:	4107d793          	srai	a5,a5,0x10
   17200:	f89ff06f          	j	17188 <__smakebuf_r+0xa4>

00017204 <_malloc_r>:
   17204:	fd010113          	addi	sp,sp,-48
   17208:	01312e23          	sw	s3,28(sp)
   1720c:	02112623          	sw	ra,44(sp)
   17210:	02812423          	sw	s0,40(sp)
   17214:	02912223          	sw	s1,36(sp)
   17218:	03212023          	sw	s2,32(sp)
   1721c:	01412c23          	sw	s4,24(sp)
   17220:	01512a23          	sw	s5,20(sp)
   17224:	01612823          	sw	s6,16(sp)
   17228:	01712623          	sw	s7,12(sp)
   1722c:	01812423          	sw	s8,8(sp)
   17230:	01912223          	sw	s9,4(sp)
   17234:	00b58793          	addi	a5,a1,11
   17238:	01600713          	li	a4,22
   1723c:	00050993          	mv	s3,a0
   17240:	06f76463          	bltu	a4,a5,172a8 <_malloc_r+0xa4>
   17244:	01000793          	li	a5,16
   17248:	1eb7e263          	bltu	a5,a1,1742c <_malloc_r+0x228>
   1724c:	261000ef          	jal	ra,17cac <__malloc_lock>
   17250:	01000493          	li	s1,16
   17254:	00200613          	li	a2,2
   17258:	01800793          	li	a5,24
   1725c:	c2818913          	addi	s2,gp,-984 # 269d0 <__malloc_av_>
   17260:	00f907b3          	add	a5,s2,a5
   17264:	0047a403          	lw	s0,4(a5) # f004 <register_fini-0x1070>
   17268:	ff878713          	addi	a4,a5,-8
   1726c:	20e40863          	beq	s0,a4,1747c <_malloc_r+0x278>
   17270:	00442783          	lw	a5,4(s0)
   17274:	00c42683          	lw	a3,12(s0)
   17278:	00842603          	lw	a2,8(s0)
   1727c:	ffc7f793          	andi	a5,a5,-4
   17280:	00f407b3          	add	a5,s0,a5
   17284:	0047a703          	lw	a4,4(a5)
   17288:	00d62623          	sw	a3,12(a2)
   1728c:	00c6a423          	sw	a2,8(a3)
   17290:	00176713          	ori	a4,a4,1
   17294:	00098513          	mv	a0,s3
   17298:	00e7a223          	sw	a4,4(a5)
   1729c:	215000ef          	jal	ra,17cb0 <__malloc_unlock>
   172a0:	00840513          	addi	a0,s0,8
   172a4:	1940006f          	j	17438 <_malloc_r+0x234>
   172a8:	ff87f493          	andi	s1,a5,-8
   172ac:	1807c063          	bltz	a5,1742c <_malloc_r+0x228>
   172b0:	16b4ee63          	bltu	s1,a1,1742c <_malloc_r+0x228>
   172b4:	1f9000ef          	jal	ra,17cac <__malloc_lock>
   172b8:	1f700793          	li	a5,503
   172bc:	4497fa63          	bgeu	a5,s1,17710 <_malloc_r+0x50c>
   172c0:	0094d793          	srli	a5,s1,0x9
   172c4:	1a078463          	beqz	a5,1746c <_malloc_r+0x268>
   172c8:	00400713          	li	a4,4
   172cc:	3cf76063          	bltu	a4,a5,1768c <_malloc_r+0x488>
   172d0:	0064d793          	srli	a5,s1,0x6
   172d4:	03978613          	addi	a2,a5,57
   172d8:	03878513          	addi	a0,a5,56
   172dc:	00361693          	slli	a3,a2,0x3
   172e0:	c2818913          	addi	s2,gp,-984 # 269d0 <__malloc_av_>
   172e4:	00d906b3          	add	a3,s2,a3
   172e8:	0046a403          	lw	s0,4(a3)
   172ec:	ff868693          	addi	a3,a3,-8
   172f0:	02868663          	beq	a3,s0,1731c <_malloc_r+0x118>
   172f4:	00f00593          	li	a1,15
   172f8:	0100006f          	j	17308 <_malloc_r+0x104>
   172fc:	32075263          	bgez	a4,17620 <_malloc_r+0x41c>
   17300:	00c42403          	lw	s0,12(s0)
   17304:	00868c63          	beq	a3,s0,1731c <_malloc_r+0x118>
   17308:	00442783          	lw	a5,4(s0)
   1730c:	ffc7f793          	andi	a5,a5,-4
   17310:	40978733          	sub	a4,a5,s1
   17314:	fee5d4e3          	bge	a1,a4,172fc <_malloc_r+0xf8>
   17318:	00050613          	mv	a2,a0
   1731c:	01092403          	lw	s0,16(s2)
   17320:	00890893          	addi	a7,s2,8
   17324:	17140863          	beq	s0,a7,17494 <_malloc_r+0x290>
   17328:	00442503          	lw	a0,4(s0)
   1732c:	00f00693          	li	a3,15
   17330:	ffc57513          	andi	a0,a0,-4
   17334:	409507b3          	sub	a5,a0,s1
   17338:	40f6c263          	blt	a3,a5,1773c <_malloc_r+0x538>
   1733c:	01192a23          	sw	a7,20(s2)
   17340:	01192823          	sw	a7,16(s2)
   17344:	3c07dc63          	bgez	a5,1771c <_malloc_r+0x518>
   17348:	1ff00793          	li	a5,511
   1734c:	2ea7e063          	bltu	a5,a0,1762c <_malloc_r+0x428>
   17350:	ff857793          	andi	a5,a0,-8
   17354:	00878793          	addi	a5,a5,8
   17358:	00492583          	lw	a1,4(s2)
   1735c:	00f907b3          	add	a5,s2,a5
   17360:	0007a683          	lw	a3,0(a5)
   17364:	00555513          	srli	a0,a0,0x5
   17368:	00100713          	li	a4,1
   1736c:	00a71733          	sll	a4,a4,a0
   17370:	00b76733          	or	a4,a4,a1
   17374:	ff878593          	addi	a1,a5,-8
   17378:	00b42623          	sw	a1,12(s0)
   1737c:	00d42423          	sw	a3,8(s0)
   17380:	00e92223          	sw	a4,4(s2)
   17384:	0087a023          	sw	s0,0(a5)
   17388:	0086a623          	sw	s0,12(a3)
   1738c:	40265793          	srai	a5,a2,0x2
   17390:	00100593          	li	a1,1
   17394:	00f595b3          	sll	a1,a1,a5
   17398:	10b76863          	bltu	a4,a1,174a8 <_malloc_r+0x2a4>
   1739c:	00e5f7b3          	and	a5,a1,a4
   173a0:	02079463          	bnez	a5,173c8 <_malloc_r+0x1c4>
   173a4:	00159593          	slli	a1,a1,0x1
   173a8:	ffc67613          	andi	a2,a2,-4
   173ac:	00e5f7b3          	and	a5,a1,a4
   173b0:	00460613          	addi	a2,a2,4
   173b4:	00079a63          	bnez	a5,173c8 <_malloc_r+0x1c4>
   173b8:	00159593          	slli	a1,a1,0x1
   173bc:	00e5f7b3          	and	a5,a1,a4
   173c0:	00460613          	addi	a2,a2,4
   173c4:	fe078ae3          	beqz	a5,173b8 <_malloc_r+0x1b4>
   173c8:	00f00813          	li	a6,15
   173cc:	00361313          	slli	t1,a2,0x3
   173d0:	00690333          	add	t1,s2,t1
   173d4:	00030513          	mv	a0,t1
   173d8:	00c52783          	lw	a5,12(a0)
   173dc:	00060e13          	mv	t3,a2
   173e0:	2cf50863          	beq	a0,a5,176b0 <_malloc_r+0x4ac>
   173e4:	0047a703          	lw	a4,4(a5)
   173e8:	00078413          	mv	s0,a5
   173ec:	00c7a783          	lw	a5,12(a5)
   173f0:	ffc77713          	andi	a4,a4,-4
   173f4:	409706b3          	sub	a3,a4,s1
   173f8:	2cd84863          	blt	a6,a3,176c8 <_malloc_r+0x4c4>
   173fc:	fe06c2e3          	bltz	a3,173e0 <_malloc_r+0x1dc>
   17400:	00e40733          	add	a4,s0,a4
   17404:	00472683          	lw	a3,4(a4)
   17408:	00842603          	lw	a2,8(s0)
   1740c:	00098513          	mv	a0,s3
   17410:	0016e693          	ori	a3,a3,1
   17414:	00d72223          	sw	a3,4(a4)
   17418:	00f62623          	sw	a5,12(a2)
   1741c:	00c7a423          	sw	a2,8(a5)
   17420:	091000ef          	jal	ra,17cb0 <__malloc_unlock>
   17424:	00840513          	addi	a0,s0,8
   17428:	0100006f          	j	17438 <_malloc_r+0x234>
   1742c:	00c00793          	li	a5,12
   17430:	00f9a023          	sw	a5,0(s3)
   17434:	00000513          	li	a0,0
   17438:	02c12083          	lw	ra,44(sp)
   1743c:	02812403          	lw	s0,40(sp)
   17440:	02412483          	lw	s1,36(sp)
   17444:	02012903          	lw	s2,32(sp)
   17448:	01c12983          	lw	s3,28(sp)
   1744c:	01812a03          	lw	s4,24(sp)
   17450:	01412a83          	lw	s5,20(sp)
   17454:	01012b03          	lw	s6,16(sp)
   17458:	00c12b83          	lw	s7,12(sp)
   1745c:	00812c03          	lw	s8,8(sp)
   17460:	00412c83          	lw	s9,4(sp)
   17464:	03010113          	addi	sp,sp,48
   17468:	00008067          	ret
   1746c:	20000693          	li	a3,512
   17470:	04000613          	li	a2,64
   17474:	03f00513          	li	a0,63
   17478:	e69ff06f          	j	172e0 <_malloc_r+0xdc>
   1747c:	00c7a403          	lw	s0,12(a5)
   17480:	00260613          	addi	a2,a2,2
   17484:	de8796e3          	bne	a5,s0,17270 <_malloc_r+0x6c>
   17488:	01092403          	lw	s0,16(s2)
   1748c:	00890893          	addi	a7,s2,8
   17490:	e9141ce3          	bne	s0,a7,17328 <_malloc_r+0x124>
   17494:	00492703          	lw	a4,4(s2)
   17498:	40265793          	srai	a5,a2,0x2
   1749c:	00100593          	li	a1,1
   174a0:	00f595b3          	sll	a1,a1,a5
   174a4:	eeb77ce3          	bgeu	a4,a1,1739c <_malloc_r+0x198>
   174a8:	00892403          	lw	s0,8(s2)
   174ac:	00442a83          	lw	s5,4(s0)
   174b0:	ffcafb13          	andi	s6,s5,-4
   174b4:	009b6863          	bltu	s6,s1,174c4 <_malloc_r+0x2c0>
   174b8:	409b07b3          	sub	a5,s6,s1
   174bc:	00f00713          	li	a4,15
   174c0:	12f74c63          	blt	a4,a5,175f8 <_malloc_r+0x3f4>
   174c4:	1d41aa83          	lw	s5,468(gp) # 26f7c <__malloc_top_pad>
   174c8:	1c41a703          	lw	a4,452(gp) # 26f6c <__malloc_sbrk_base>
   174cc:	fff00793          	li	a5,-1
   174d0:	01640a33          	add	s4,s0,s6
   174d4:	01548ab3          	add	s5,s1,s5
   174d8:	34f70463          	beq	a4,a5,17820 <_malloc_r+0x61c>
   174dc:	000017b7          	lui	a5,0x1
   174e0:	00f78793          	addi	a5,a5,15 # 100f <register_fini-0xf065>
   174e4:	00fa8ab3          	add	s5,s5,a5
   174e8:	fffff7b7          	lui	a5,0xfffff
   174ec:	00fafab3          	and	s5,s5,a5
   174f0:	000a8593          	mv	a1,s5
   174f4:	00098513          	mv	a0,s3
   174f8:	6f1010ef          	jal	ra,193e8 <_sbrk_r>
   174fc:	fff00793          	li	a5,-1
   17500:	00050b93          	mv	s7,a0
   17504:	28f50663          	beq	a0,a5,17790 <_malloc_r+0x58c>
   17508:	29456263          	bltu	a0,s4,1778c <_malloc_r+0x588>
   1750c:	1fc18c13          	addi	s8,gp,508 # 26fa4 <__malloc_current_mallinfo>
   17510:	000c2583          	lw	a1,0(s8) # 1000 <register_fini-0xf074>
   17514:	00ba85b3          	add	a1,s5,a1
   17518:	00bc2023          	sw	a1,0(s8)
   1751c:	00058793          	mv	a5,a1
   17520:	38aa0e63          	beq	s4,a0,178bc <_malloc_r+0x6b8>
   17524:	1c41a683          	lw	a3,452(gp) # 26f6c <__malloc_sbrk_base>
   17528:	fff00713          	li	a4,-1
   1752c:	3ae68663          	beq	a3,a4,178d8 <_malloc_r+0x6d4>
   17530:	414b8a33          	sub	s4,s7,s4
   17534:	00fa07b3          	add	a5,s4,a5
   17538:	00fc2023          	sw	a5,0(s8)
   1753c:	007bfc93          	andi	s9,s7,7
   17540:	300c8263          	beqz	s9,17844 <_malloc_r+0x640>
   17544:	000017b7          	lui	a5,0x1
   17548:	419b8bb3          	sub	s7,s7,s9
   1754c:	00878593          	addi	a1,a5,8 # 1008 <register_fini-0xf06c>
   17550:	008b8b93          	addi	s7,s7,8
   17554:	419585b3          	sub	a1,a1,s9
   17558:	015b8ab3          	add	s5,s7,s5
   1755c:	fff78793          	addi	a5,a5,-1
   17560:	415585b3          	sub	a1,a1,s5
   17564:	00f5fa33          	and	s4,a1,a5
   17568:	000a0593          	mv	a1,s4
   1756c:	00098513          	mv	a0,s3
   17570:	679010ef          	jal	ra,193e8 <_sbrk_r>
   17574:	fff00793          	li	a5,-1
   17578:	3af50a63          	beq	a0,a5,1792c <_malloc_r+0x728>
   1757c:	41750533          	sub	a0,a0,s7
   17580:	01450ab3          	add	s5,a0,s4
   17584:	000c2583          	lw	a1,0(s8)
   17588:	01792423          	sw	s7,8(s2)
   1758c:	001aea93          	ori	s5,s5,1
   17590:	00ba05b3          	add	a1,s4,a1
   17594:	00bc2023          	sw	a1,0(s8)
   17598:	015ba223          	sw	s5,4(s7)
   1759c:	35240263          	beq	s0,s2,178e0 <_malloc_r+0x6dc>
   175a0:	00f00693          	li	a3,15
   175a4:	3566f263          	bgeu	a3,s6,178e8 <_malloc_r+0x6e4>
   175a8:	00442703          	lw	a4,4(s0)
   175ac:	ff4b0793          	addi	a5,s6,-12
   175b0:	ff87f793          	andi	a5,a5,-8
   175b4:	00177713          	andi	a4,a4,1
   175b8:	00f76733          	or	a4,a4,a5
   175bc:	00e42223          	sw	a4,4(s0)
   175c0:	00500613          	li	a2,5
   175c4:	00f40733          	add	a4,s0,a5
   175c8:	00c72223          	sw	a2,4(a4)
   175cc:	00c72423          	sw	a2,8(a4)
   175d0:	36f6e863          	bltu	a3,a5,17940 <_malloc_r+0x73c>
   175d4:	004baa83          	lw	s5,4(s7)
   175d8:	000b8413          	mv	s0,s7
   175dc:	1d01a703          	lw	a4,464(gp) # 26f78 <__malloc_max_sbrked_mem>
   175e0:	00b77463          	bgeu	a4,a1,175e8 <_malloc_r+0x3e4>
   175e4:	1cb1a823          	sw	a1,464(gp) # 26f78 <__malloc_max_sbrked_mem>
   175e8:	1cc1a703          	lw	a4,460(gp) # 26f74 <_edata>
   175ec:	1ab77663          	bgeu	a4,a1,17798 <_malloc_r+0x594>
   175f0:	1cb1a623          	sw	a1,460(gp) # 26f74 <_edata>
   175f4:	1a40006f          	j	17798 <_malloc_r+0x594>
   175f8:	0014e713          	ori	a4,s1,1
   175fc:	00e42223          	sw	a4,4(s0)
   17600:	009404b3          	add	s1,s0,s1
   17604:	00992423          	sw	s1,8(s2)
   17608:	0017e793          	ori	a5,a5,1
   1760c:	00098513          	mv	a0,s3
   17610:	00f4a223          	sw	a5,4(s1)
   17614:	69c000ef          	jal	ra,17cb0 <__malloc_unlock>
   17618:	00840513          	addi	a0,s0,8
   1761c:	e1dff06f          	j	17438 <_malloc_r+0x234>
   17620:	00c42683          	lw	a3,12(s0)
   17624:	00842603          	lw	a2,8(s0)
   17628:	c59ff06f          	j	17280 <_malloc_r+0x7c>
   1762c:	00955793          	srli	a5,a0,0x9
   17630:	00400713          	li	a4,4
   17634:	14f77263          	bgeu	a4,a5,17778 <_malloc_r+0x574>
   17638:	01400713          	li	a4,20
   1763c:	22f76a63          	bltu	a4,a5,17870 <_malloc_r+0x66c>
   17640:	05c78693          	addi	a3,a5,92
   17644:	05b78593          	addi	a1,a5,91
   17648:	00369693          	slli	a3,a3,0x3
   1764c:	00d906b3          	add	a3,s2,a3
   17650:	0006a783          	lw	a5,0(a3)
   17654:	ff868693          	addi	a3,a3,-8
   17658:	1cf68863          	beq	a3,a5,17828 <_malloc_r+0x624>
   1765c:	0047a703          	lw	a4,4(a5)
   17660:	ffc77713          	andi	a4,a4,-4
   17664:	00e57663          	bgeu	a0,a4,17670 <_malloc_r+0x46c>
   17668:	0087a783          	lw	a5,8(a5)
   1766c:	fef698e3          	bne	a3,a5,1765c <_malloc_r+0x458>
   17670:	00c7a683          	lw	a3,12(a5)
   17674:	00492703          	lw	a4,4(s2)
   17678:	00d42623          	sw	a3,12(s0)
   1767c:	00f42423          	sw	a5,8(s0)
   17680:	0086a423          	sw	s0,8(a3)
   17684:	0087a623          	sw	s0,12(a5)
   17688:	d05ff06f          	j	1738c <_malloc_r+0x188>
   1768c:	01400713          	li	a4,20
   17690:	12f77663          	bgeu	a4,a5,177bc <_malloc_r+0x5b8>
   17694:	05400713          	li	a4,84
   17698:	1ef76a63          	bltu	a4,a5,1788c <_malloc_r+0x688>
   1769c:	00c4d793          	srli	a5,s1,0xc
   176a0:	06f78613          	addi	a2,a5,111
   176a4:	06e78513          	addi	a0,a5,110
   176a8:	00361693          	slli	a3,a2,0x3
   176ac:	c35ff06f          	j	172e0 <_malloc_r+0xdc>
   176b0:	001e0e13          	addi	t3,t3,1
   176b4:	003e7793          	andi	a5,t3,3
   176b8:	00850513          	addi	a0,a0,8
   176bc:	10078e63          	beqz	a5,177d8 <_malloc_r+0x5d4>
   176c0:	00c52783          	lw	a5,12(a0)
   176c4:	d1dff06f          	j	173e0 <_malloc_r+0x1dc>
   176c8:	00842603          	lw	a2,8(s0)
   176cc:	0014e593          	ori	a1,s1,1
   176d0:	00b42223          	sw	a1,4(s0)
   176d4:	00f62623          	sw	a5,12(a2)
   176d8:	00c7a423          	sw	a2,8(a5)
   176dc:	009404b3          	add	s1,s0,s1
   176e0:	00992a23          	sw	s1,20(s2)
   176e4:	00992823          	sw	s1,16(s2)
   176e8:	0016e793          	ori	a5,a3,1
   176ec:	0114a623          	sw	a7,12(s1)
   176f0:	0114a423          	sw	a7,8(s1)
   176f4:	00f4a223          	sw	a5,4(s1)
   176f8:	00e40733          	add	a4,s0,a4
   176fc:	00098513          	mv	a0,s3
   17700:	00d72023          	sw	a3,0(a4)
   17704:	5ac000ef          	jal	ra,17cb0 <__malloc_unlock>
   17708:	00840513          	addi	a0,s0,8
   1770c:	d2dff06f          	j	17438 <_malloc_r+0x234>
   17710:	0034d613          	srli	a2,s1,0x3
   17714:	00848793          	addi	a5,s1,8
   17718:	b45ff06f          	j	1725c <_malloc_r+0x58>
   1771c:	00a40733          	add	a4,s0,a0
   17720:	00472783          	lw	a5,4(a4)
   17724:	00098513          	mv	a0,s3
   17728:	0017e793          	ori	a5,a5,1
   1772c:	00f72223          	sw	a5,4(a4)
   17730:	580000ef          	jal	ra,17cb0 <__malloc_unlock>
   17734:	00840513          	addi	a0,s0,8
   17738:	d01ff06f          	j	17438 <_malloc_r+0x234>
   1773c:	0014e713          	ori	a4,s1,1
   17740:	00e42223          	sw	a4,4(s0)
   17744:	009404b3          	add	s1,s0,s1
   17748:	00992a23          	sw	s1,20(s2)
   1774c:	00992823          	sw	s1,16(s2)
   17750:	0017e713          	ori	a4,a5,1
   17754:	0114a623          	sw	a7,12(s1)
   17758:	0114a423          	sw	a7,8(s1)
   1775c:	00e4a223          	sw	a4,4(s1)
   17760:	00a40533          	add	a0,s0,a0
   17764:	00f52023          	sw	a5,0(a0)
   17768:	00098513          	mv	a0,s3
   1776c:	544000ef          	jal	ra,17cb0 <__malloc_unlock>
   17770:	00840513          	addi	a0,s0,8
   17774:	cc5ff06f          	j	17438 <_malloc_r+0x234>
   17778:	00655793          	srli	a5,a0,0x6
   1777c:	03978693          	addi	a3,a5,57
   17780:	03878593          	addi	a1,a5,56
   17784:	00369693          	slli	a3,a3,0x3
   17788:	ec5ff06f          	j	1764c <_malloc_r+0x448>
   1778c:	11240e63          	beq	s0,s2,178a8 <_malloc_r+0x6a4>
   17790:	00892403          	lw	s0,8(s2)
   17794:	00442a83          	lw	s5,4(s0)
   17798:	ffcafa93          	andi	s5,s5,-4
   1779c:	409a87b3          	sub	a5,s5,s1
   177a0:	009ae663          	bltu	s5,s1,177ac <_malloc_r+0x5a8>
   177a4:	00f00713          	li	a4,15
   177a8:	e4f748e3          	blt	a4,a5,175f8 <_malloc_r+0x3f4>
   177ac:	00098513          	mv	a0,s3
   177b0:	500000ef          	jal	ra,17cb0 <__malloc_unlock>
   177b4:	00000513          	li	a0,0
   177b8:	c81ff06f          	j	17438 <_malloc_r+0x234>
   177bc:	05c78613          	addi	a2,a5,92
   177c0:	05b78513          	addi	a0,a5,91
   177c4:	00361693          	slli	a3,a2,0x3
   177c8:	b19ff06f          	j	172e0 <_malloc_r+0xdc>
   177cc:	00832783          	lw	a5,8(t1)
   177d0:	fff60613          	addi	a2,a2,-1
   177d4:	1c679063          	bne	a5,t1,17994 <_malloc_r+0x790>
   177d8:	00367793          	andi	a5,a2,3
   177dc:	ff830313          	addi	t1,t1,-8
   177e0:	fe0796e3          	bnez	a5,177cc <_malloc_r+0x5c8>
   177e4:	00492703          	lw	a4,4(s2)
   177e8:	fff5c793          	not	a5,a1
   177ec:	00e7f7b3          	and	a5,a5,a4
   177f0:	00f92223          	sw	a5,4(s2)
   177f4:	00159593          	slli	a1,a1,0x1
   177f8:	cab7e8e3          	bltu	a5,a1,174a8 <_malloc_r+0x2a4>
   177fc:	ca0586e3          	beqz	a1,174a8 <_malloc_r+0x2a4>
   17800:	00f5f733          	and	a4,a1,a5
   17804:	00071a63          	bnez	a4,17818 <_malloc_r+0x614>
   17808:	00159593          	slli	a1,a1,0x1
   1780c:	00f5f733          	and	a4,a1,a5
   17810:	004e0e13          	addi	t3,t3,4
   17814:	fe070ae3          	beqz	a4,17808 <_malloc_r+0x604>
   17818:	000e0613          	mv	a2,t3
   1781c:	bb1ff06f          	j	173cc <_malloc_r+0x1c8>
   17820:	010a8a93          	addi	s5,s5,16 # fffff010 <__BSS_END__+0xfffd8040>
   17824:	ccdff06f          	j	174f0 <_malloc_r+0x2ec>
   17828:	00492503          	lw	a0,4(s2)
   1782c:	4025d593          	srai	a1,a1,0x2
   17830:	00100713          	li	a4,1
   17834:	00b71733          	sll	a4,a4,a1
   17838:	00a76733          	or	a4,a4,a0
   1783c:	00e92223          	sw	a4,4(s2)
   17840:	e39ff06f          	j	17678 <_malloc_r+0x474>
   17844:	015b85b3          	add	a1,s7,s5
   17848:	40b005b3          	neg	a1,a1
   1784c:	01459593          	slli	a1,a1,0x14
   17850:	0145da13          	srli	s4,a1,0x14
   17854:	000a0593          	mv	a1,s4
   17858:	00098513          	mv	a0,s3
   1785c:	38d010ef          	jal	ra,193e8 <_sbrk_r>
   17860:	fff00793          	li	a5,-1
   17864:	d0f51ce3          	bne	a0,a5,1757c <_malloc_r+0x378>
   17868:	00000a13          	li	s4,0
   1786c:	d19ff06f          	j	17584 <_malloc_r+0x380>
   17870:	05400713          	li	a4,84
   17874:	08f76063          	bltu	a4,a5,178f4 <_malloc_r+0x6f0>
   17878:	00c55793          	srli	a5,a0,0xc
   1787c:	06f78693          	addi	a3,a5,111
   17880:	06e78593          	addi	a1,a5,110
   17884:	00369693          	slli	a3,a3,0x3
   17888:	dc5ff06f          	j	1764c <_malloc_r+0x448>
   1788c:	15400713          	li	a4,340
   17890:	08f76063          	bltu	a4,a5,17910 <_malloc_r+0x70c>
   17894:	00f4d793          	srli	a5,s1,0xf
   17898:	07878613          	addi	a2,a5,120
   1789c:	07778513          	addi	a0,a5,119
   178a0:	00361693          	slli	a3,a2,0x3
   178a4:	a3dff06f          	j	172e0 <_malloc_r+0xdc>
   178a8:	1fc18c13          	addi	s8,gp,508 # 26fa4 <__malloc_current_mallinfo>
   178ac:	000c2783          	lw	a5,0(s8)
   178b0:	00fa87b3          	add	a5,s5,a5
   178b4:	00fc2023          	sw	a5,0(s8)
   178b8:	c6dff06f          	j	17524 <_malloc_r+0x320>
   178bc:	014a1713          	slli	a4,s4,0x14
   178c0:	c60712e3          	bnez	a4,17524 <_malloc_r+0x320>
   178c4:	00892403          	lw	s0,8(s2)
   178c8:	015b0ab3          	add	s5,s6,s5
   178cc:	001aea93          	ori	s5,s5,1
   178d0:	01542223          	sw	s5,4(s0)
   178d4:	d09ff06f          	j	175dc <_malloc_r+0x3d8>
   178d8:	1d71a223          	sw	s7,452(gp) # 26f6c <__malloc_sbrk_base>
   178dc:	c61ff06f          	j	1753c <_malloc_r+0x338>
   178e0:	000b8413          	mv	s0,s7
   178e4:	cf9ff06f          	j	175dc <_malloc_r+0x3d8>
   178e8:	00100793          	li	a5,1
   178ec:	00fba223          	sw	a5,4(s7)
   178f0:	ebdff06f          	j	177ac <_malloc_r+0x5a8>
   178f4:	15400713          	li	a4,340
   178f8:	06f76263          	bltu	a4,a5,1795c <_malloc_r+0x758>
   178fc:	00f55793          	srli	a5,a0,0xf
   17900:	07878693          	addi	a3,a5,120
   17904:	07778593          	addi	a1,a5,119
   17908:	00369693          	slli	a3,a3,0x3
   1790c:	d41ff06f          	j	1764c <_malloc_r+0x448>
   17910:	55400713          	li	a4,1364
   17914:	06f76263          	bltu	a4,a5,17978 <_malloc_r+0x774>
   17918:	0124d793          	srli	a5,s1,0x12
   1791c:	07d78613          	addi	a2,a5,125
   17920:	07c78513          	addi	a0,a5,124
   17924:	00361693          	slli	a3,a2,0x3
   17928:	9b9ff06f          	j	172e0 <_malloc_r+0xdc>
   1792c:	ff8c8c93          	addi	s9,s9,-8
   17930:	019a8ab3          	add	s5,s5,s9
   17934:	417a8ab3          	sub	s5,s5,s7
   17938:	00000a13          	li	s4,0
   1793c:	c49ff06f          	j	17584 <_malloc_r+0x380>
   17940:	00840593          	addi	a1,s0,8
   17944:	00098513          	mv	a0,s3
   17948:	9ecfc0ef          	jal	ra,13b34 <_free_r>
   1794c:	00892403          	lw	s0,8(s2)
   17950:	000c2583          	lw	a1,0(s8)
   17954:	00442a83          	lw	s5,4(s0)
   17958:	c85ff06f          	j	175dc <_malloc_r+0x3d8>
   1795c:	55400713          	li	a4,1364
   17960:	02f76463          	bltu	a4,a5,17988 <_malloc_r+0x784>
   17964:	01255793          	srli	a5,a0,0x12
   17968:	07d78693          	addi	a3,a5,125
   1796c:	07c78593          	addi	a1,a5,124
   17970:	00369693          	slli	a3,a3,0x3
   17974:	cd9ff06f          	j	1764c <_malloc_r+0x448>
   17978:	3f800693          	li	a3,1016
   1797c:	07f00613          	li	a2,127
   17980:	07e00513          	li	a0,126
   17984:	95dff06f          	j	172e0 <_malloc_r+0xdc>
   17988:	3f800693          	li	a3,1016
   1798c:	07e00593          	li	a1,126
   17990:	cbdff06f          	j	1764c <_malloc_r+0x448>
   17994:	00492783          	lw	a5,4(s2)
   17998:	e5dff06f          	j	177f4 <_malloc_r+0x5f0>

0001799c <memchr>:
   1799c:	00357793          	andi	a5,a0,3
   179a0:	0ff5f693          	andi	a3,a1,255
   179a4:	02078a63          	beqz	a5,179d8 <memchr+0x3c>
   179a8:	fff60793          	addi	a5,a2,-1
   179ac:	02060e63          	beqz	a2,179e8 <memchr+0x4c>
   179b0:	fff00613          	li	a2,-1
   179b4:	0180006f          	j	179cc <memchr+0x30>
   179b8:	00150513          	addi	a0,a0,1
   179bc:	00357713          	andi	a4,a0,3
   179c0:	00070e63          	beqz	a4,179dc <memchr+0x40>
   179c4:	fff78793          	addi	a5,a5,-1
   179c8:	02c78063          	beq	a5,a2,179e8 <memchr+0x4c>
   179cc:	00054703          	lbu	a4,0(a0)
   179d0:	fed714e3          	bne	a4,a3,179b8 <memchr+0x1c>
   179d4:	00008067          	ret
   179d8:	00060793          	mv	a5,a2
   179dc:	00300713          	li	a4,3
   179e0:	02f76663          	bltu	a4,a5,17a0c <memchr+0x70>
   179e4:	00079663          	bnez	a5,179f0 <memchr+0x54>
   179e8:	00000513          	li	a0,0
   179ec:	00008067          	ret
   179f0:	00f507b3          	add	a5,a0,a5
   179f4:	00c0006f          	j	17a00 <memchr+0x64>
   179f8:	00150513          	addi	a0,a0,1
   179fc:	fea786e3          	beq	a5,a0,179e8 <memchr+0x4c>
   17a00:	00054703          	lbu	a4,0(a0)
   17a04:	fed71ae3          	bne	a4,a3,179f8 <memchr+0x5c>
   17a08:	00008067          	ret
   17a0c:	00010737          	lui	a4,0x10
   17a10:	00859893          	slli	a7,a1,0x8
   17a14:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   17a18:	00e8f8b3          	and	a7,a7,a4
   17a1c:	0ff5f593          	andi	a1,a1,255
   17a20:	00b8e5b3          	or	a1,a7,a1
   17a24:	01059893          	slli	a7,a1,0x10
   17a28:	00b8e8b3          	or	a7,a7,a1
   17a2c:	feff0837          	lui	a6,0xfeff0
   17a30:	808085b7          	lui	a1,0x80808
   17a34:	eff80813          	addi	a6,a6,-257 # fefefeff <__BSS_END__+0xfefc8f2f>
   17a38:	08058593          	addi	a1,a1,128 # 80808080 <__BSS_END__+0x807e10b0>
   17a3c:	00300313          	li	t1,3
   17a40:	00052703          	lw	a4,0(a0)
   17a44:	00e8c733          	xor	a4,a7,a4
   17a48:	01070633          	add	a2,a4,a6
   17a4c:	fff74713          	not	a4,a4
   17a50:	00e67733          	and	a4,a2,a4
   17a54:	00b77733          	and	a4,a4,a1
   17a58:	f8071ce3          	bnez	a4,179f0 <memchr+0x54>
   17a5c:	ffc78793          	addi	a5,a5,-4
   17a60:	00450513          	addi	a0,a0,4
   17a64:	fcf36ee3          	bltu	t1,a5,17a40 <memchr+0xa4>
   17a68:	f80794e3          	bnez	a5,179f0 <memchr+0x54>
   17a6c:	f7dff06f          	j	179e8 <memchr+0x4c>

00017a70 <memcpy>:
   17a70:	00a5c7b3          	xor	a5,a1,a0
   17a74:	0037f793          	andi	a5,a5,3
   17a78:	00c508b3          	add	a7,a0,a2
   17a7c:	06079263          	bnez	a5,17ae0 <memcpy+0x70>
   17a80:	00300793          	li	a5,3
   17a84:	04c7fe63          	bgeu	a5,a2,17ae0 <memcpy+0x70>
   17a88:	00357793          	andi	a5,a0,3
   17a8c:	00050713          	mv	a4,a0
   17a90:	06079863          	bnez	a5,17b00 <memcpy+0x90>
   17a94:	ffc8f613          	andi	a2,a7,-4
   17a98:	fe060793          	addi	a5,a2,-32
   17a9c:	08f76c63          	bltu	a4,a5,17b34 <memcpy+0xc4>
   17aa0:	02c77c63          	bgeu	a4,a2,17ad8 <memcpy+0x68>
   17aa4:	00058693          	mv	a3,a1
   17aa8:	00070793          	mv	a5,a4
   17aac:	0006a803          	lw	a6,0(a3)
   17ab0:	00478793          	addi	a5,a5,4
   17ab4:	00468693          	addi	a3,a3,4
   17ab8:	ff07ae23          	sw	a6,-4(a5)
   17abc:	fec7e8e3          	bltu	a5,a2,17aac <memcpy+0x3c>
   17ac0:	fff60793          	addi	a5,a2,-1
   17ac4:	40e787b3          	sub	a5,a5,a4
   17ac8:	ffc7f793          	andi	a5,a5,-4
   17acc:	00478793          	addi	a5,a5,4
   17ad0:	00f70733          	add	a4,a4,a5
   17ad4:	00f585b3          	add	a1,a1,a5
   17ad8:	01176863          	bltu	a4,a7,17ae8 <memcpy+0x78>
   17adc:	00008067          	ret
   17ae0:	00050713          	mv	a4,a0
   17ae4:	ff157ce3          	bgeu	a0,a7,17adc <memcpy+0x6c>
   17ae8:	0005c783          	lbu	a5,0(a1)
   17aec:	00170713          	addi	a4,a4,1
   17af0:	00158593          	addi	a1,a1,1
   17af4:	fef70fa3          	sb	a5,-1(a4)
   17af8:	ff1768e3          	bltu	a4,a7,17ae8 <memcpy+0x78>
   17afc:	00008067          	ret
   17b00:	0005c683          	lbu	a3,0(a1)
   17b04:	00170713          	addi	a4,a4,1
   17b08:	00377793          	andi	a5,a4,3
   17b0c:	fed70fa3          	sb	a3,-1(a4)
   17b10:	00158593          	addi	a1,a1,1
   17b14:	f80780e3          	beqz	a5,17a94 <memcpy+0x24>
   17b18:	0005c683          	lbu	a3,0(a1)
   17b1c:	00170713          	addi	a4,a4,1
   17b20:	00377793          	andi	a5,a4,3
   17b24:	fed70fa3          	sb	a3,-1(a4)
   17b28:	00158593          	addi	a1,a1,1
   17b2c:	fc079ae3          	bnez	a5,17b00 <memcpy+0x90>
   17b30:	f65ff06f          	j	17a94 <memcpy+0x24>
   17b34:	0045a683          	lw	a3,4(a1)
   17b38:	0005a283          	lw	t0,0(a1)
   17b3c:	0085af83          	lw	t6,8(a1)
   17b40:	00c5af03          	lw	t5,12(a1)
   17b44:	0105ae83          	lw	t4,16(a1)
   17b48:	0145ae03          	lw	t3,20(a1)
   17b4c:	0185a303          	lw	t1,24(a1)
   17b50:	01c5a803          	lw	a6,28(a1)
   17b54:	00d72223          	sw	a3,4(a4)
   17b58:	0205a683          	lw	a3,32(a1)
   17b5c:	00572023          	sw	t0,0(a4)
   17b60:	01f72423          	sw	t6,8(a4)
   17b64:	01e72623          	sw	t5,12(a4)
   17b68:	01d72823          	sw	t4,16(a4)
   17b6c:	01c72a23          	sw	t3,20(a4)
   17b70:	00672c23          	sw	t1,24(a4)
   17b74:	01072e23          	sw	a6,28(a4)
   17b78:	02d72023          	sw	a3,32(a4)
   17b7c:	02470713          	addi	a4,a4,36
   17b80:	02458593          	addi	a1,a1,36
   17b84:	faf768e3          	bltu	a4,a5,17b34 <memcpy+0xc4>
   17b88:	f19ff06f          	j	17aa0 <memcpy+0x30>

00017b8c <memmove>:
   17b8c:	02a5f663          	bgeu	a1,a0,17bb8 <memmove+0x2c>
   17b90:	00c587b3          	add	a5,a1,a2
   17b94:	02f57263          	bgeu	a0,a5,17bb8 <memmove+0x2c>
   17b98:	00c50733          	add	a4,a0,a2
   17b9c:	0e060a63          	beqz	a2,17c90 <memmove+0x104>
   17ba0:	fff7c683          	lbu	a3,-1(a5)
   17ba4:	fff78793          	addi	a5,a5,-1
   17ba8:	fff70713          	addi	a4,a4,-1
   17bac:	00d70023          	sb	a3,0(a4)
   17bb0:	fef598e3          	bne	a1,a5,17ba0 <memmove+0x14>
   17bb4:	00008067          	ret
   17bb8:	00f00793          	li	a5,15
   17bbc:	02c7e863          	bltu	a5,a2,17bec <memmove+0x60>
   17bc0:	00050793          	mv	a5,a0
   17bc4:	fff60693          	addi	a3,a2,-1
   17bc8:	0c060c63          	beqz	a2,17ca0 <memmove+0x114>
   17bcc:	00168693          	addi	a3,a3,1
   17bd0:	00d786b3          	add	a3,a5,a3
   17bd4:	0005c703          	lbu	a4,0(a1)
   17bd8:	00178793          	addi	a5,a5,1
   17bdc:	00158593          	addi	a1,a1,1
   17be0:	fee78fa3          	sb	a4,-1(a5)
   17be4:	fed798e3          	bne	a5,a3,17bd4 <memmove+0x48>
   17be8:	00008067          	ret
   17bec:	00a5e7b3          	or	a5,a1,a0
   17bf0:	0037f793          	andi	a5,a5,3
   17bf4:	0a079063          	bnez	a5,17c94 <memmove+0x108>
   17bf8:	ff060893          	addi	a7,a2,-16
   17bfc:	ff08f893          	andi	a7,a7,-16
   17c00:	01088893          	addi	a7,a7,16
   17c04:	01150833          	add	a6,a0,a7
   17c08:	00058713          	mv	a4,a1
   17c0c:	00050793          	mv	a5,a0
   17c10:	00072683          	lw	a3,0(a4)
   17c14:	01070713          	addi	a4,a4,16
   17c18:	01078793          	addi	a5,a5,16
   17c1c:	fed7a823          	sw	a3,-16(a5)
   17c20:	ff472683          	lw	a3,-12(a4)
   17c24:	fed7aa23          	sw	a3,-12(a5)
   17c28:	ff872683          	lw	a3,-8(a4)
   17c2c:	fed7ac23          	sw	a3,-8(a5)
   17c30:	ffc72683          	lw	a3,-4(a4)
   17c34:	fed7ae23          	sw	a3,-4(a5)
   17c38:	fcf81ce3          	bne	a6,a5,17c10 <memmove+0x84>
   17c3c:	00c67713          	andi	a4,a2,12
   17c40:	011585b3          	add	a1,a1,a7
   17c44:	00f67813          	andi	a6,a2,15
   17c48:	04070e63          	beqz	a4,17ca4 <memmove+0x118>
   17c4c:	00058713          	mv	a4,a1
   17c50:	00078893          	mv	a7,a5
   17c54:	00300e13          	li	t3,3
   17c58:	00072303          	lw	t1,0(a4)
   17c5c:	00470713          	addi	a4,a4,4
   17c60:	40e806b3          	sub	a3,a6,a4
   17c64:	0068a023          	sw	t1,0(a7)
   17c68:	00d586b3          	add	a3,a1,a3
   17c6c:	00488893          	addi	a7,a7,4
   17c70:	fede64e3          	bltu	t3,a3,17c58 <memmove+0xcc>
   17c74:	ffc80713          	addi	a4,a6,-4
   17c78:	ffc77713          	andi	a4,a4,-4
   17c7c:	00470713          	addi	a4,a4,4
   17c80:	00367613          	andi	a2,a2,3
   17c84:	00e787b3          	add	a5,a5,a4
   17c88:	00e585b3          	add	a1,a1,a4
   17c8c:	f39ff06f          	j	17bc4 <memmove+0x38>
   17c90:	00008067          	ret
   17c94:	fff60693          	addi	a3,a2,-1
   17c98:	00050793          	mv	a5,a0
   17c9c:	f31ff06f          	j	17bcc <memmove+0x40>
   17ca0:	00008067          	ret
   17ca4:	00080613          	mv	a2,a6
   17ca8:	f1dff06f          	j	17bc4 <memmove+0x38>

00017cac <__malloc_lock>:
   17cac:	00008067          	ret

00017cb0 <__malloc_unlock>:
   17cb0:	00008067          	ret

00017cb4 <_Balloc>:
   17cb4:	04c52783          	lw	a5,76(a0)
   17cb8:	ff010113          	addi	sp,sp,-16
   17cbc:	00812423          	sw	s0,8(sp)
   17cc0:	00912223          	sw	s1,4(sp)
   17cc4:	00112623          	sw	ra,12(sp)
   17cc8:	01212023          	sw	s2,0(sp)
   17ccc:	00050413          	mv	s0,a0
   17cd0:	00058493          	mv	s1,a1
   17cd4:	02078e63          	beqz	a5,17d10 <_Balloc+0x5c>
   17cd8:	00249513          	slli	a0,s1,0x2
   17cdc:	00a787b3          	add	a5,a5,a0
   17ce0:	0007a503          	lw	a0,0(a5)
   17ce4:	04050663          	beqz	a0,17d30 <_Balloc+0x7c>
   17ce8:	00052703          	lw	a4,0(a0)
   17cec:	00e7a023          	sw	a4,0(a5)
   17cf0:	00052823          	sw	zero,16(a0)
   17cf4:	00052623          	sw	zero,12(a0)
   17cf8:	00c12083          	lw	ra,12(sp)
   17cfc:	00812403          	lw	s0,8(sp)
   17d00:	00412483          	lw	s1,4(sp)
   17d04:	00012903          	lw	s2,0(sp)
   17d08:	01010113          	addi	sp,sp,16
   17d0c:	00008067          	ret
   17d10:	02100613          	li	a2,33
   17d14:	00400593          	li	a1,4
   17d18:	225050ef          	jal	ra,1d73c <_calloc_r>
   17d1c:	04a42623          	sw	a0,76(s0)
   17d20:	00050793          	mv	a5,a0
   17d24:	fa051ae3          	bnez	a0,17cd8 <_Balloc+0x24>
   17d28:	00000513          	li	a0,0
   17d2c:	fcdff06f          	j	17cf8 <_Balloc+0x44>
   17d30:	00100913          	li	s2,1
   17d34:	00991933          	sll	s2,s2,s1
   17d38:	00590613          	addi	a2,s2,5
   17d3c:	00261613          	slli	a2,a2,0x2
   17d40:	00100593          	li	a1,1
   17d44:	00040513          	mv	a0,s0
   17d48:	1f5050ef          	jal	ra,1d73c <_calloc_r>
   17d4c:	fc050ee3          	beqz	a0,17d28 <_Balloc+0x74>
   17d50:	00952223          	sw	s1,4(a0)
   17d54:	01252423          	sw	s2,8(a0)
   17d58:	f99ff06f          	j	17cf0 <_Balloc+0x3c>

00017d5c <_Bfree>:
   17d5c:	02058063          	beqz	a1,17d7c <_Bfree+0x20>
   17d60:	0045a703          	lw	a4,4(a1)
   17d64:	04c52783          	lw	a5,76(a0)
   17d68:	00271713          	slli	a4,a4,0x2
   17d6c:	00e787b3          	add	a5,a5,a4
   17d70:	0007a703          	lw	a4,0(a5)
   17d74:	00e5a023          	sw	a4,0(a1)
   17d78:	00b7a023          	sw	a1,0(a5)
   17d7c:	00008067          	ret

00017d80 <__multadd>:
   17d80:	fd010113          	addi	sp,sp,-48
   17d84:	03212023          	sw	s2,32(sp)
   17d88:	0105a903          	lw	s2,16(a1)
   17d8c:	01812423          	sw	s8,8(sp)
   17d90:	00010c37          	lui	s8,0x10
   17d94:	02812423          	sw	s0,40(sp)
   17d98:	02912223          	sw	s1,36(sp)
   17d9c:	01312e23          	sw	s3,28(sp)
   17da0:	01412c23          	sw	s4,24(sp)
   17da4:	01512a23          	sw	s5,20(sp)
   17da8:	01612823          	sw	s6,16(sp)
   17dac:	02112623          	sw	ra,44(sp)
   17db0:	01712623          	sw	s7,12(sp)
   17db4:	00058993          	mv	s3,a1
   17db8:	00050a13          	mv	s4,a0
   17dbc:	00060a93          	mv	s5,a2
   17dc0:	00068413          	mv	s0,a3
   17dc4:	01458493          	addi	s1,a1,20
   17dc8:	00000b13          	li	s6,0
   17dcc:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0x75>
   17dd0:	0004ab83          	lw	s7,0(s1)
   17dd4:	000a8593          	mv	a1,s5
   17dd8:	00448493          	addi	s1,s1,4
   17ddc:	018bf533          	and	a0,s7,s8
   17de0:	0e50c0ef          	jal	ra,246c4 <__mulsi3>
   17de4:	00850433          	add	s0,a0,s0
   17de8:	000a8593          	mv	a1,s5
   17dec:	010bd513          	srli	a0,s7,0x10
   17df0:	0d50c0ef          	jal	ra,246c4 <__mulsi3>
   17df4:	01045693          	srli	a3,s0,0x10
   17df8:	00d50533          	add	a0,a0,a3
   17dfc:	01051793          	slli	a5,a0,0x10
   17e00:	01847433          	and	s0,s0,s8
   17e04:	00878433          	add	s0,a5,s0
   17e08:	fe84ae23          	sw	s0,-4(s1)
   17e0c:	001b0b13          	addi	s6,s6,1
   17e10:	01055413          	srli	s0,a0,0x10
   17e14:	fb2b4ee3          	blt	s6,s2,17dd0 <__multadd+0x50>
   17e18:	02040263          	beqz	s0,17e3c <__multadd+0xbc>
   17e1c:	0089a783          	lw	a5,8(s3)
   17e20:	04f95863          	bge	s2,a5,17e70 <__multadd+0xf0>
   17e24:	00490793          	addi	a5,s2,4
   17e28:	00279793          	slli	a5,a5,0x2
   17e2c:	00f987b3          	add	a5,s3,a5
   17e30:	0087a223          	sw	s0,4(a5)
   17e34:	00190913          	addi	s2,s2,1
   17e38:	0129a823          	sw	s2,16(s3)
   17e3c:	02c12083          	lw	ra,44(sp)
   17e40:	02812403          	lw	s0,40(sp)
   17e44:	02412483          	lw	s1,36(sp)
   17e48:	02012903          	lw	s2,32(sp)
   17e4c:	01812a03          	lw	s4,24(sp)
   17e50:	01412a83          	lw	s5,20(sp)
   17e54:	01012b03          	lw	s6,16(sp)
   17e58:	00c12b83          	lw	s7,12(sp)
   17e5c:	00812c03          	lw	s8,8(sp)
   17e60:	00098513          	mv	a0,s3
   17e64:	01c12983          	lw	s3,28(sp)
   17e68:	03010113          	addi	sp,sp,48
   17e6c:	00008067          	ret
   17e70:	0049a583          	lw	a1,4(s3)
   17e74:	000a0513          	mv	a0,s4
   17e78:	00158593          	addi	a1,a1,1
   17e7c:	e39ff0ef          	jal	ra,17cb4 <_Balloc>
   17e80:	0109a603          	lw	a2,16(s3)
   17e84:	00050493          	mv	s1,a0
   17e88:	00c98593          	addi	a1,s3,12
   17e8c:	00260613          	addi	a2,a2,2
   17e90:	00261613          	slli	a2,a2,0x2
   17e94:	00c50513          	addi	a0,a0,12
   17e98:	bd9ff0ef          	jal	ra,17a70 <memcpy>
   17e9c:	0049a703          	lw	a4,4(s3)
   17ea0:	04ca2783          	lw	a5,76(s4)
   17ea4:	00271713          	slli	a4,a4,0x2
   17ea8:	00e787b3          	add	a5,a5,a4
   17eac:	0007a703          	lw	a4,0(a5)
   17eb0:	00e9a023          	sw	a4,0(s3)
   17eb4:	0137a023          	sw	s3,0(a5)
   17eb8:	00048993          	mv	s3,s1
   17ebc:	f69ff06f          	j	17e24 <__multadd+0xa4>

00017ec0 <__s2b>:
   17ec0:	fe010113          	addi	sp,sp,-32
   17ec4:	00812c23          	sw	s0,24(sp)
   17ec8:	01212823          	sw	s2,16(sp)
   17ecc:	00058413          	mv	s0,a1
   17ed0:	00050913          	mv	s2,a0
   17ed4:	00900593          	li	a1,9
   17ed8:	00868513          	addi	a0,a3,8
   17edc:	00912a23          	sw	s1,20(sp)
   17ee0:	01312623          	sw	s3,12(sp)
   17ee4:	01412423          	sw	s4,8(sp)
   17ee8:	00112e23          	sw	ra,28(sp)
   17eec:	01512223          	sw	s5,4(sp)
   17ef0:	00068493          	mv	s1,a3
   17ef4:	00060993          	mv	s3,a2
   17ef8:	00070a13          	mv	s4,a4
   17efc:	7ec0c0ef          	jal	ra,246e8 <__divsi3>
   17f00:	00900793          	li	a5,9
   17f04:	0c97d663          	bge	a5,s1,17fd0 <__s2b+0x110>
   17f08:	00100793          	li	a5,1
   17f0c:	00000593          	li	a1,0
   17f10:	00179793          	slli	a5,a5,0x1
   17f14:	00158593          	addi	a1,a1,1
   17f18:	fea7cce3          	blt	a5,a0,17f10 <__s2b+0x50>
   17f1c:	00090513          	mv	a0,s2
   17f20:	d95ff0ef          	jal	ra,17cb4 <_Balloc>
   17f24:	00100793          	li	a5,1
   17f28:	00f52823          	sw	a5,16(a0)
   17f2c:	01452a23          	sw	s4,20(a0)
   17f30:	00900793          	li	a5,9
   17f34:	00050593          	mv	a1,a0
   17f38:	0937d663          	bge	a5,s3,17fc4 <__s2b+0x104>
   17f3c:	00940a93          	addi	s5,s0,9
   17f40:	01340a33          	add	s4,s0,s3
   17f44:	000a8413          	mv	s0,s5
   17f48:	00044683          	lbu	a3,0(s0)
   17f4c:	00a00613          	li	a2,10
   17f50:	00090513          	mv	a0,s2
   17f54:	fd068693          	addi	a3,a3,-48
   17f58:	e29ff0ef          	jal	ra,17d80 <__multadd>
   17f5c:	00140413          	addi	s0,s0,1
   17f60:	00050593          	mv	a1,a0
   17f64:	ff4412e3          	bne	s0,s4,17f48 <__s2b+0x88>
   17f68:	ff898413          	addi	s0,s3,-8
   17f6c:	008a8433          	add	s0,s5,s0
   17f70:	0299d663          	bge	s3,s1,17f9c <__s2b+0xdc>
   17f74:	413484b3          	sub	s1,s1,s3
   17f78:	009404b3          	add	s1,s0,s1
   17f7c:	00044683          	lbu	a3,0(s0)
   17f80:	00a00613          	li	a2,10
   17f84:	00090513          	mv	a0,s2
   17f88:	fd068693          	addi	a3,a3,-48
   17f8c:	df5ff0ef          	jal	ra,17d80 <__multadd>
   17f90:	00140413          	addi	s0,s0,1
   17f94:	00050593          	mv	a1,a0
   17f98:	fe8492e3          	bne	s1,s0,17f7c <__s2b+0xbc>
   17f9c:	01c12083          	lw	ra,28(sp)
   17fa0:	01812403          	lw	s0,24(sp)
   17fa4:	01412483          	lw	s1,20(sp)
   17fa8:	01012903          	lw	s2,16(sp)
   17fac:	00c12983          	lw	s3,12(sp)
   17fb0:	00812a03          	lw	s4,8(sp)
   17fb4:	00412a83          	lw	s5,4(sp)
   17fb8:	00058513          	mv	a0,a1
   17fbc:	02010113          	addi	sp,sp,32
   17fc0:	00008067          	ret
   17fc4:	00a40413          	addi	s0,s0,10
   17fc8:	00900993          	li	s3,9
   17fcc:	fa5ff06f          	j	17f70 <__s2b+0xb0>
   17fd0:	00000593          	li	a1,0
   17fd4:	f49ff06f          	j	17f1c <__s2b+0x5c>

00017fd8 <__hi0bits>:
   17fd8:	ffff0737          	lui	a4,0xffff0
   17fdc:	00e57733          	and	a4,a0,a4
   17fe0:	00050793          	mv	a5,a0
   17fe4:	00000513          	li	a0,0
   17fe8:	00071663          	bnez	a4,17ff4 <__hi0bits+0x1c>
   17fec:	01079793          	slli	a5,a5,0x10
   17ff0:	01000513          	li	a0,16
   17ff4:	ff000737          	lui	a4,0xff000
   17ff8:	00e7f733          	and	a4,a5,a4
   17ffc:	00071663          	bnez	a4,18008 <__hi0bits+0x30>
   18000:	00850513          	addi	a0,a0,8
   18004:	00879793          	slli	a5,a5,0x8
   18008:	f0000737          	lui	a4,0xf0000
   1800c:	00e7f733          	and	a4,a5,a4
   18010:	00071663          	bnez	a4,1801c <__hi0bits+0x44>
   18014:	00450513          	addi	a0,a0,4
   18018:	00479793          	slli	a5,a5,0x4
   1801c:	c0000737          	lui	a4,0xc0000
   18020:	00e7f733          	and	a4,a5,a4
   18024:	00071663          	bnez	a4,18030 <__hi0bits+0x58>
   18028:	00250513          	addi	a0,a0,2
   1802c:	00279793          	slli	a5,a5,0x2
   18030:	0007c863          	bltz	a5,18040 <__hi0bits+0x68>
   18034:	00179713          	slli	a4,a5,0x1
   18038:	00150513          	addi	a0,a0,1
   1803c:	00075463          	bgez	a4,18044 <__hi0bits+0x6c>
   18040:	00008067          	ret
   18044:	02000513          	li	a0,32
   18048:	00008067          	ret

0001804c <__lo0bits>:
   1804c:	00052783          	lw	a5,0(a0)
   18050:	00050713          	mv	a4,a0
   18054:	0077f693          	andi	a3,a5,7
   18058:	02068463          	beqz	a3,18080 <__lo0bits+0x34>
   1805c:	0017f693          	andi	a3,a5,1
   18060:	00000513          	li	a0,0
   18064:	06069e63          	bnez	a3,180e0 <__lo0bits+0x94>
   18068:	0027f693          	andi	a3,a5,2
   1806c:	08068063          	beqz	a3,180ec <__lo0bits+0xa0>
   18070:	0017d793          	srli	a5,a5,0x1
   18074:	00f72023          	sw	a5,0(a4) # c0000000 <__BSS_END__+0xbffd9030>
   18078:	00100513          	li	a0,1
   1807c:	00008067          	ret
   18080:	01079693          	slli	a3,a5,0x10
   18084:	0106d693          	srli	a3,a3,0x10
   18088:	00000513          	li	a0,0
   1808c:	00069663          	bnez	a3,18098 <__lo0bits+0x4c>
   18090:	0107d793          	srli	a5,a5,0x10
   18094:	01000513          	li	a0,16
   18098:	0ff7f693          	andi	a3,a5,255
   1809c:	00069663          	bnez	a3,180a8 <__lo0bits+0x5c>
   180a0:	00850513          	addi	a0,a0,8
   180a4:	0087d793          	srli	a5,a5,0x8
   180a8:	00f7f693          	andi	a3,a5,15
   180ac:	00069663          	bnez	a3,180b8 <__lo0bits+0x6c>
   180b0:	00450513          	addi	a0,a0,4
   180b4:	0047d793          	srli	a5,a5,0x4
   180b8:	0037f693          	andi	a3,a5,3
   180bc:	00069663          	bnez	a3,180c8 <__lo0bits+0x7c>
   180c0:	00250513          	addi	a0,a0,2
   180c4:	0027d793          	srli	a5,a5,0x2
   180c8:	0017f693          	andi	a3,a5,1
   180cc:	00069c63          	bnez	a3,180e4 <__lo0bits+0x98>
   180d0:	0017d793          	srli	a5,a5,0x1
   180d4:	00150513          	addi	a0,a0,1
   180d8:	00079663          	bnez	a5,180e4 <__lo0bits+0x98>
   180dc:	02000513          	li	a0,32
   180e0:	00008067          	ret
   180e4:	00f72023          	sw	a5,0(a4)
   180e8:	00008067          	ret
   180ec:	0027d793          	srli	a5,a5,0x2
   180f0:	00f72023          	sw	a5,0(a4)
   180f4:	00200513          	li	a0,2
   180f8:	00008067          	ret

000180fc <__i2b>:
   180fc:	ff010113          	addi	sp,sp,-16
   18100:	00812423          	sw	s0,8(sp)
   18104:	00058413          	mv	s0,a1
   18108:	00100593          	li	a1,1
   1810c:	00112623          	sw	ra,12(sp)
   18110:	ba5ff0ef          	jal	ra,17cb4 <_Balloc>
   18114:	00c12083          	lw	ra,12(sp)
   18118:	00852a23          	sw	s0,20(a0)
   1811c:	00812403          	lw	s0,8(sp)
   18120:	00100713          	li	a4,1
   18124:	00e52823          	sw	a4,16(a0)
   18128:	01010113          	addi	sp,sp,16
   1812c:	00008067          	ret

00018130 <__multiply>:
   18130:	fb010113          	addi	sp,sp,-80
   18134:	03312e23          	sw	s3,60(sp)
   18138:	03812423          	sw	s8,40(sp)
   1813c:	01062983          	lw	s3,16(a2)
   18140:	0105ac03          	lw	s8,16(a1)
   18144:	04812423          	sw	s0,72(sp)
   18148:	03412c23          	sw	s4,56(sp)
   1814c:	04112623          	sw	ra,76(sp)
   18150:	04912223          	sw	s1,68(sp)
   18154:	05212023          	sw	s2,64(sp)
   18158:	03512a23          	sw	s5,52(sp)
   1815c:	03612823          	sw	s6,48(sp)
   18160:	03712623          	sw	s7,44(sp)
   18164:	03912223          	sw	s9,36(sp)
   18168:	03a12023          	sw	s10,32(sp)
   1816c:	01b12e23          	sw	s11,28(sp)
   18170:	00058a13          	mv	s4,a1
   18174:	00060413          	mv	s0,a2
   18178:	013c4c63          	blt	s8,s3,18190 <__multiply+0x60>
   1817c:	00098713          	mv	a4,s3
   18180:	00058413          	mv	s0,a1
   18184:	000c0993          	mv	s3,s8
   18188:	00060a13          	mv	s4,a2
   1818c:	00070c13          	mv	s8,a4
   18190:	00842783          	lw	a5,8(s0)
   18194:	00442583          	lw	a1,4(s0)
   18198:	01898bb3          	add	s7,s3,s8
   1819c:	0177a7b3          	slt	a5,a5,s7
   181a0:	00f585b3          	add	a1,a1,a5
   181a4:	b11ff0ef          	jal	ra,17cb4 <_Balloc>
   181a8:	01450b13          	addi	s6,a0,20
   181ac:	002b9a93          	slli	s5,s7,0x2
   181b0:	00a12623          	sw	a0,12(sp)
   181b4:	015b0ab3          	add	s5,s6,s5
   181b8:	000b0793          	mv	a5,s6
   181bc:	015b7863          	bgeu	s6,s5,181cc <__multiply+0x9c>
   181c0:	0007a023          	sw	zero,0(a5)
   181c4:	00478793          	addi	a5,a5,4
   181c8:	ff57ece3          	bltu	a5,s5,181c0 <__multiply+0x90>
   181cc:	014a0a13          	addi	s4,s4,20
   181d0:	002c1c13          	slli	s8,s8,0x2
   181d4:	01440793          	addi	a5,s0,20
   181d8:	018a0733          	add	a4,s4,s8
   181dc:	00299993          	slli	s3,s3,0x2
   181e0:	00f12423          	sw	a5,8(sp)
   181e4:	00e12023          	sw	a4,0(sp)
   181e8:	013789b3          	add	s3,a5,s3
   181ec:	14ea7863          	bgeu	s4,a4,1833c <__multiply+0x20c>
   181f0:	00400713          	li	a4,4
   181f4:	01540793          	addi	a5,s0,21
   181f8:	00e12223          	sw	a4,4(sp)
   181fc:	1af9f263          	bgeu	s3,a5,183a0 <__multiply+0x270>
   18200:	000104b7          	lui	s1,0x10
   18204:	fff48493          	addi	s1,s1,-1 # ffff <register_fini-0x75>
   18208:	01c0006f          	j	18224 <__multiply+0xf4>
   1820c:	0107dc13          	srli	s8,a5,0x10
   18210:	0a0c1063          	bnez	s8,182b0 <__multiply+0x180>
   18214:	00012783          	lw	a5,0(sp)
   18218:	004a0a13          	addi	s4,s4,4
   1821c:	004b0b13          	addi	s6,s6,4
   18220:	10fa7e63          	bgeu	s4,a5,1833c <__multiply+0x20c>
   18224:	000a2783          	lw	a5,0(s4)
   18228:	0097fd33          	and	s10,a5,s1
   1822c:	fe0d00e3          	beqz	s10,1820c <__multiply+0xdc>
   18230:	00812c03          	lw	s8,8(sp)
   18234:	000b0c93          	mv	s9,s6
   18238:	00000413          	li	s0,0
   1823c:	000c2d83          	lw	s11,0(s8)
   18240:	000ca903          	lw	s2,0(s9)
   18244:	000d0593          	mv	a1,s10
   18248:	009df533          	and	a0,s11,s1
   1824c:	4780c0ef          	jal	ra,246c4 <__mulsi3>
   18250:	009977b3          	and	a5,s2,s1
   18254:	00f507b3          	add	a5,a0,a5
   18258:	000d0593          	mv	a1,s10
   1825c:	010dd513          	srli	a0,s11,0x10
   18260:	00878433          	add	s0,a5,s0
   18264:	01095913          	srli	s2,s2,0x10
   18268:	45c0c0ef          	jal	ra,246c4 <__mulsi3>
   1826c:	01045793          	srli	a5,s0,0x10
   18270:	01250533          	add	a0,a0,s2
   18274:	00f50533          	add	a0,a0,a5
   18278:	01051793          	slli	a5,a0,0x10
   1827c:	00947433          	and	s0,s0,s1
   18280:	0087e433          	or	s0,a5,s0
   18284:	008ca023          	sw	s0,0(s9)
   18288:	004c0c13          	addi	s8,s8,4
   1828c:	004c8c93          	addi	s9,s9,4
   18290:	01055413          	srli	s0,a0,0x10
   18294:	fb3c64e3          	bltu	s8,s3,1823c <__multiply+0x10c>
   18298:	00412783          	lw	a5,4(sp)
   1829c:	00fb07b3          	add	a5,s6,a5
   182a0:	0087a023          	sw	s0,0(a5)
   182a4:	000a2783          	lw	a5,0(s4)
   182a8:	0107dc13          	srli	s8,a5,0x10
   182ac:	f60c04e3          	beqz	s8,18214 <__multiply+0xe4>
   182b0:	000b2403          	lw	s0,0(s6)
   182b4:	00812d83          	lw	s11,8(sp)
   182b8:	000b0c93          	mv	s9,s6
   182bc:	00040913          	mv	s2,s0
   182c0:	00000d13          	li	s10,0
   182c4:	000da503          	lw	a0,0(s11)
   182c8:	000c0593          	mv	a1,s8
   182cc:	00947433          	and	s0,s0,s1
   182d0:	00957533          	and	a0,a0,s1
   182d4:	3f00c0ef          	jal	ra,246c4 <__mulsi3>
   182d8:	01095793          	srli	a5,s2,0x10
   182dc:	00f507b3          	add	a5,a0,a5
   182e0:	01a78d33          	add	s10,a5,s10
   182e4:	010d1613          	slli	a2,s10,0x10
   182e8:	00866433          	or	s0,a2,s0
   182ec:	008ca023          	sw	s0,0(s9)
   182f0:	002dd503          	lhu	a0,2(s11)
   182f4:	004ca903          	lw	s2,4(s9)
   182f8:	000c0593          	mv	a1,s8
   182fc:	3c80c0ef          	jal	ra,246c4 <__mulsi3>
   18300:	00997433          	and	s0,s2,s1
   18304:	00850533          	add	a0,a0,s0
   18308:	010d5413          	srli	s0,s10,0x10
   1830c:	00850433          	add	s0,a0,s0
   18310:	004d8d93          	addi	s11,s11,4
   18314:	004c8c93          	addi	s9,s9,4
   18318:	01045d13          	srli	s10,s0,0x10
   1831c:	fb3de4e3          	bltu	s11,s3,182c4 <__multiply+0x194>
   18320:	00412783          	lw	a5,4(sp)
   18324:	004a0a13          	addi	s4,s4,4
   18328:	00fb07b3          	add	a5,s6,a5
   1832c:	0087a023          	sw	s0,0(a5)
   18330:	00012783          	lw	a5,0(sp)
   18334:	004b0b13          	addi	s6,s6,4
   18338:	eefa66e3          	bltu	s4,a5,18224 <__multiply+0xf4>
   1833c:	01704863          	bgtz	s7,1834c <__multiply+0x21c>
   18340:	0180006f          	j	18358 <__multiply+0x228>
   18344:	fffb8b93          	addi	s7,s7,-1
   18348:	000b8863          	beqz	s7,18358 <__multiply+0x228>
   1834c:	ffcaa783          	lw	a5,-4(s5)
   18350:	ffca8a93          	addi	s5,s5,-4
   18354:	fe0788e3          	beqz	a5,18344 <__multiply+0x214>
   18358:	00c12783          	lw	a5,12(sp)
   1835c:	04c12083          	lw	ra,76(sp)
   18360:	04812403          	lw	s0,72(sp)
   18364:	0177a823          	sw	s7,16(a5)
   18368:	04412483          	lw	s1,68(sp)
   1836c:	04012903          	lw	s2,64(sp)
   18370:	03c12983          	lw	s3,60(sp)
   18374:	03812a03          	lw	s4,56(sp)
   18378:	03412a83          	lw	s5,52(sp)
   1837c:	03012b03          	lw	s6,48(sp)
   18380:	02c12b83          	lw	s7,44(sp)
   18384:	02812c03          	lw	s8,40(sp)
   18388:	02412c83          	lw	s9,36(sp)
   1838c:	02012d03          	lw	s10,32(sp)
   18390:	01c12d83          	lw	s11,28(sp)
   18394:	00078513          	mv	a0,a5
   18398:	05010113          	addi	sp,sp,80
   1839c:	00008067          	ret
   183a0:	40898db3          	sub	s11,s3,s0
   183a4:	febd8d93          	addi	s11,s11,-21
   183a8:	ffcdfd93          	andi	s11,s11,-4
   183ac:	004d8793          	addi	a5,s11,4
   183b0:	00f12223          	sw	a5,4(sp)
   183b4:	e4dff06f          	j	18200 <__multiply+0xd0>

000183b8 <__pow5mult>:
   183b8:	fe010113          	addi	sp,sp,-32
   183bc:	00812c23          	sw	s0,24(sp)
   183c0:	01312623          	sw	s3,12(sp)
   183c4:	01412423          	sw	s4,8(sp)
   183c8:	00112e23          	sw	ra,28(sp)
   183cc:	00912a23          	sw	s1,20(sp)
   183d0:	01212823          	sw	s2,16(sp)
   183d4:	00367793          	andi	a5,a2,3
   183d8:	00060413          	mv	s0,a2
   183dc:	00050993          	mv	s3,a0
   183e0:	00058a13          	mv	s4,a1
   183e4:	0c079463          	bnez	a5,184ac <__pow5mult+0xf4>
   183e8:	40245413          	srai	s0,s0,0x2
   183ec:	000a0913          	mv	s2,s4
   183f0:	06040863          	beqz	s0,18460 <__pow5mult+0xa8>
   183f4:	0489a483          	lw	s1,72(s3)
   183f8:	0c048e63          	beqz	s1,184d4 <__pow5mult+0x11c>
   183fc:	00147793          	andi	a5,s0,1
   18400:	000a0913          	mv	s2,s4
   18404:	02079063          	bnez	a5,18424 <__pow5mult+0x6c>
   18408:	40145413          	srai	s0,s0,0x1
   1840c:	04040a63          	beqz	s0,18460 <__pow5mult+0xa8>
   18410:	0004a503          	lw	a0,0(s1)
   18414:	06050863          	beqz	a0,18484 <__pow5mult+0xcc>
   18418:	00050493          	mv	s1,a0
   1841c:	00147793          	andi	a5,s0,1
   18420:	fe0784e3          	beqz	a5,18408 <__pow5mult+0x50>
   18424:	00048613          	mv	a2,s1
   18428:	00090593          	mv	a1,s2
   1842c:	00098513          	mv	a0,s3
   18430:	d01ff0ef          	jal	ra,18130 <__multiply>
   18434:	06090863          	beqz	s2,184a4 <__pow5mult+0xec>
   18438:	00492703          	lw	a4,4(s2)
   1843c:	04c9a783          	lw	a5,76(s3)
   18440:	40145413          	srai	s0,s0,0x1
   18444:	00271713          	slli	a4,a4,0x2
   18448:	00e787b3          	add	a5,a5,a4
   1844c:	0007a703          	lw	a4,0(a5)
   18450:	00e92023          	sw	a4,0(s2)
   18454:	0127a023          	sw	s2,0(a5)
   18458:	00050913          	mv	s2,a0
   1845c:	fa041ae3          	bnez	s0,18410 <__pow5mult+0x58>
   18460:	01c12083          	lw	ra,28(sp)
   18464:	01812403          	lw	s0,24(sp)
   18468:	01412483          	lw	s1,20(sp)
   1846c:	00c12983          	lw	s3,12(sp)
   18470:	00812a03          	lw	s4,8(sp)
   18474:	00090513          	mv	a0,s2
   18478:	01012903          	lw	s2,16(sp)
   1847c:	02010113          	addi	sp,sp,32
   18480:	00008067          	ret
   18484:	00048613          	mv	a2,s1
   18488:	00048593          	mv	a1,s1
   1848c:	00098513          	mv	a0,s3
   18490:	ca1ff0ef          	jal	ra,18130 <__multiply>
   18494:	00a4a023          	sw	a0,0(s1)
   18498:	00052023          	sw	zero,0(a0)
   1849c:	00050493          	mv	s1,a0
   184a0:	f7dff06f          	j	1841c <__pow5mult+0x64>
   184a4:	00050913          	mv	s2,a0
   184a8:	f61ff06f          	j	18408 <__pow5mult+0x50>
   184ac:	fff78793          	addi	a5,a5,-1
   184b0:	00025737          	lui	a4,0x25
   184b4:	c5070713          	addi	a4,a4,-944 # 24c50 <p05.3277>
   184b8:	00279793          	slli	a5,a5,0x2
   184bc:	00f707b3          	add	a5,a4,a5
   184c0:	0007a603          	lw	a2,0(a5)
   184c4:	00000693          	li	a3,0
   184c8:	8b9ff0ef          	jal	ra,17d80 <__multadd>
   184cc:	00050a13          	mv	s4,a0
   184d0:	f19ff06f          	j	183e8 <__pow5mult+0x30>
   184d4:	00100593          	li	a1,1
   184d8:	00098513          	mv	a0,s3
   184dc:	fd8ff0ef          	jal	ra,17cb4 <_Balloc>
   184e0:	27100793          	li	a5,625
   184e4:	00f52a23          	sw	a5,20(a0)
   184e8:	00100793          	li	a5,1
   184ec:	00f52823          	sw	a5,16(a0)
   184f0:	04a9a423          	sw	a0,72(s3)
   184f4:	00050493          	mv	s1,a0
   184f8:	00052023          	sw	zero,0(a0)
   184fc:	f01ff06f          	j	183fc <__pow5mult+0x44>

00018500 <__lshift>:
   18500:	fe010113          	addi	sp,sp,-32
   18504:	01412423          	sw	s4,8(sp)
   18508:	0105aa03          	lw	s4,16(a1)
   1850c:	0085a783          	lw	a5,8(a1)
   18510:	01312623          	sw	s3,12(sp)
   18514:	40565993          	srai	s3,a2,0x5
   18518:	01498a33          	add	s4,s3,s4
   1851c:	00812c23          	sw	s0,24(sp)
   18520:	00912a23          	sw	s1,20(sp)
   18524:	01212823          	sw	s2,16(sp)
   18528:	01512223          	sw	s5,4(sp)
   1852c:	00112e23          	sw	ra,28(sp)
   18530:	001a0913          	addi	s2,s4,1
   18534:	00058493          	mv	s1,a1
   18538:	00060413          	mv	s0,a2
   1853c:	0045a583          	lw	a1,4(a1)
   18540:	00050a93          	mv	s5,a0
   18544:	0127d863          	bge	a5,s2,18554 <__lshift+0x54>
   18548:	00179793          	slli	a5,a5,0x1
   1854c:	00158593          	addi	a1,a1,1
   18550:	ff27cce3          	blt	a5,s2,18548 <__lshift+0x48>
   18554:	000a8513          	mv	a0,s5
   18558:	f5cff0ef          	jal	ra,17cb4 <_Balloc>
   1855c:	01450813          	addi	a6,a0,20
   18560:	03305463          	blez	s3,18588 <__lshift+0x88>
   18564:	00598993          	addi	s3,s3,5
   18568:	00299993          	slli	s3,s3,0x2
   1856c:	01350733          	add	a4,a0,s3
   18570:	00080793          	mv	a5,a6
   18574:	00478793          	addi	a5,a5,4
   18578:	fe07ae23          	sw	zero,-4(a5)
   1857c:	fee79ce3          	bne	a5,a4,18574 <__lshift+0x74>
   18580:	fec98993          	addi	s3,s3,-20
   18584:	01380833          	add	a6,a6,s3
   18588:	0104a703          	lw	a4,16(s1)
   1858c:	01448793          	addi	a5,s1,20
   18590:	01f47313          	andi	t1,s0,31
   18594:	00271613          	slli	a2,a4,0x2
   18598:	00c78633          	add	a2,a5,a2
   1859c:	08030c63          	beqz	t1,18634 <__lshift+0x134>
   185a0:	02000593          	li	a1,32
   185a4:	406585b3          	sub	a1,a1,t1
   185a8:	00080893          	mv	a7,a6
   185ac:	00000693          	li	a3,0
   185b0:	0007a703          	lw	a4,0(a5)
   185b4:	00488893          	addi	a7,a7,4
   185b8:	00478793          	addi	a5,a5,4
   185bc:	00671733          	sll	a4,a4,t1
   185c0:	00d76733          	or	a4,a4,a3
   185c4:	fee8ae23          	sw	a4,-4(a7)
   185c8:	ffc7a703          	lw	a4,-4(a5)
   185cc:	00b756b3          	srl	a3,a4,a1
   185d0:	fec7e0e3          	bltu	a5,a2,185b0 <__lshift+0xb0>
   185d4:	01548713          	addi	a4,s1,21
   185d8:	00400793          	li	a5,4
   185dc:	08e67263          	bgeu	a2,a4,18660 <__lshift+0x160>
   185e0:	00f80833          	add	a6,a6,a5
   185e4:	00d82023          	sw	a3,0(a6)
   185e8:	00068463          	beqz	a3,185f0 <__lshift+0xf0>
   185ec:	00090a13          	mv	s4,s2
   185f0:	0044a703          	lw	a4,4(s1)
   185f4:	04caa783          	lw	a5,76(s5)
   185f8:	01c12083          	lw	ra,28(sp)
   185fc:	00271713          	slli	a4,a4,0x2
   18600:	00e787b3          	add	a5,a5,a4
   18604:	0007a703          	lw	a4,0(a5)
   18608:	01452823          	sw	s4,16(a0)
   1860c:	01812403          	lw	s0,24(sp)
   18610:	00e4a023          	sw	a4,0(s1)
   18614:	0097a023          	sw	s1,0(a5)
   18618:	01012903          	lw	s2,16(sp)
   1861c:	01412483          	lw	s1,20(sp)
   18620:	00c12983          	lw	s3,12(sp)
   18624:	00812a03          	lw	s4,8(sp)
   18628:	00412a83          	lw	s5,4(sp)
   1862c:	02010113          	addi	sp,sp,32
   18630:	00008067          	ret
   18634:	0007a703          	lw	a4,0(a5)
   18638:	00478793          	addi	a5,a5,4
   1863c:	00480813          	addi	a6,a6,4
   18640:	fee82e23          	sw	a4,-4(a6)
   18644:	fac7f6e3          	bgeu	a5,a2,185f0 <__lshift+0xf0>
   18648:	0007a703          	lw	a4,0(a5)
   1864c:	00478793          	addi	a5,a5,4
   18650:	00480813          	addi	a6,a6,4
   18654:	fee82e23          	sw	a4,-4(a6)
   18658:	fcc7eee3          	bltu	a5,a2,18634 <__lshift+0x134>
   1865c:	f95ff06f          	j	185f0 <__lshift+0xf0>
   18660:	409607b3          	sub	a5,a2,s1
   18664:	feb78793          	addi	a5,a5,-21
   18668:	ffc7f793          	andi	a5,a5,-4
   1866c:	00478793          	addi	a5,a5,4
   18670:	00f80833          	add	a6,a6,a5
   18674:	00d82023          	sw	a3,0(a6)
   18678:	f6068ce3          	beqz	a3,185f0 <__lshift+0xf0>
   1867c:	f71ff06f          	j	185ec <__lshift+0xec>

00018680 <__mcmp>:
   18680:	01052703          	lw	a4,16(a0)
   18684:	0105a783          	lw	a5,16(a1)
   18688:	00050813          	mv	a6,a0
   1868c:	40f70533          	sub	a0,a4,a5
   18690:	04f71463          	bne	a4,a5,186d8 <__mcmp+0x58>
   18694:	00279793          	slli	a5,a5,0x2
   18698:	01480813          	addi	a6,a6,20
   1869c:	01458593          	addi	a1,a1,20
   186a0:	00f80733          	add	a4,a6,a5
   186a4:	00f587b3          	add	a5,a1,a5
   186a8:	0080006f          	j	186b0 <__mcmp+0x30>
   186ac:	02e87663          	bgeu	a6,a4,186d8 <__mcmp+0x58>
   186b0:	ffc72683          	lw	a3,-4(a4)
   186b4:	ffc7a603          	lw	a2,-4(a5)
   186b8:	ffc70713          	addi	a4,a4,-4
   186bc:	ffc78793          	addi	a5,a5,-4
   186c0:	fec686e3          	beq	a3,a2,186ac <__mcmp+0x2c>
   186c4:	00c6b6b3          	sltu	a3,a3,a2
   186c8:	40d00533          	neg	a0,a3
   186cc:	ffe57513          	andi	a0,a0,-2
   186d0:	00150513          	addi	a0,a0,1
   186d4:	00008067          	ret
   186d8:	00008067          	ret

000186dc <__mdiff>:
   186dc:	0105a783          	lw	a5,16(a1)
   186e0:	01062703          	lw	a4,16(a2)
   186e4:	fe010113          	addi	sp,sp,-32
   186e8:	00812c23          	sw	s0,24(sp)
   186ec:	00912a23          	sw	s1,20(sp)
   186f0:	01212823          	sw	s2,16(sp)
   186f4:	01312623          	sw	s3,12(sp)
   186f8:	01412423          	sw	s4,8(sp)
   186fc:	00112e23          	sw	ra,28(sp)
   18700:	00058913          	mv	s2,a1
   18704:	00060993          	mv	s3,a2
   18708:	40e78a33          	sub	s4,a5,a4
   1870c:	01458413          	addi	s0,a1,20
   18710:	01460493          	addi	s1,a2,20
   18714:	04e79863          	bne	a5,a4,18764 <__mdiff+0x88>
   18718:	00271713          	slli	a4,a4,0x2
   1871c:	00e407b3          	add	a5,s0,a4
   18720:	00e48733          	add	a4,s1,a4
   18724:	0080006f          	j	1872c <__mdiff+0x50>
   18728:	1af47063          	bgeu	s0,a5,188c8 <__mdiff+0x1ec>
   1872c:	ffc7a803          	lw	a6,-4(a5)
   18730:	ffc72683          	lw	a3,-4(a4)
   18734:	ffc78793          	addi	a5,a5,-4
   18738:	ffc70713          	addi	a4,a4,-4
   1873c:	fed806e3          	beq	a6,a3,18728 <__mdiff+0x4c>
   18740:	02d87663          	bgeu	a6,a3,1876c <__mdiff+0x90>
   18744:	00040713          	mv	a4,s0
   18748:	00090793          	mv	a5,s2
   1874c:	00048413          	mv	s0,s1
   18750:	00098913          	mv	s2,s3
   18754:	00070493          	mv	s1,a4
   18758:	00078993          	mv	s3,a5
   1875c:	00100a13          	li	s4,1
   18760:	00c0006f          	j	1876c <__mdiff+0x90>
   18764:	fe0a40e3          	bltz	s4,18744 <__mdiff+0x68>
   18768:	00000a13          	li	s4,0
   1876c:	00492583          	lw	a1,4(s2)
   18770:	d44ff0ef          	jal	ra,17cb4 <_Balloc>
   18774:	01092e03          	lw	t3,16(s2)
   18778:	0109af83          	lw	t6,16(s3)
   1877c:	01450293          	addi	t0,a0,20
   18780:	002e1e93          	slli	t4,t3,0x2
   18784:	002f9f93          	slli	t6,t6,0x2
   18788:	000108b7          	lui	a7,0x10
   1878c:	01452623          	sw	s4,12(a0)
   18790:	01d40eb3          	add	t4,s0,t4
   18794:	01f48fb3          	add	t6,s1,t6
   18798:	00028f13          	mv	t5,t0
   1879c:	00048813          	mv	a6,s1
   187a0:	00040313          	mv	t1,s0
   187a4:	00000793          	li	a5,0
   187a8:	fff88893          	addi	a7,a7,-1 # ffff <register_fini-0x75>
   187ac:	00032703          	lw	a4,0(t1)
   187b0:	00082583          	lw	a1,0(a6)
   187b4:	004f0f13          	addi	t5,t5,4
   187b8:	011776b3          	and	a3,a4,a7
   187bc:	00f686b3          	add	a3,a3,a5
   187c0:	0115f7b3          	and	a5,a1,a7
   187c4:	40f686b3          	sub	a3,a3,a5
   187c8:	0105d593          	srli	a1,a1,0x10
   187cc:	01075793          	srli	a5,a4,0x10
   187d0:	40b787b3          	sub	a5,a5,a1
   187d4:	4106d713          	srai	a4,a3,0x10
   187d8:	00e787b3          	add	a5,a5,a4
   187dc:	01079713          	slli	a4,a5,0x10
   187e0:	0116f6b3          	and	a3,a3,a7
   187e4:	00d766b3          	or	a3,a4,a3
   187e8:	00480813          	addi	a6,a6,4
   187ec:	fedf2e23          	sw	a3,-4(t5)
   187f0:	00430313          	addi	t1,t1,4
   187f4:	4107d793          	srai	a5,a5,0x10
   187f8:	fbf86ae3          	bltu	a6,t6,187ac <__mdiff+0xd0>
   187fc:	fff4c613          	not	a2,s1
   18800:	00cf8633          	add	a2,t6,a2
   18804:	00148493          	addi	s1,s1,1
   18808:	00265613          	srli	a2,a2,0x2
   1880c:	00000713          	li	a4,0
   18810:	009fe463          	bltu	t6,s1,18818 <__mdiff+0x13c>
   18814:	00261713          	slli	a4,a2,0x2
   18818:	00e28733          	add	a4,t0,a4
   1881c:	00400593          	li	a1,4
   18820:	009fe663          	bltu	t6,s1,1882c <__mdiff+0x150>
   18824:	00160613          	addi	a2,a2,1
   18828:	00261593          	slli	a1,a2,0x2
   1882c:	00b40433          	add	s0,s0,a1
   18830:	00b282b3          	add	t0,t0,a1
   18834:	05d47e63          	bgeu	s0,t4,18890 <__mdiff+0x1b4>
   18838:	000108b7          	lui	a7,0x10
   1883c:	00028813          	mv	a6,t0
   18840:	00040593          	mv	a1,s0
   18844:	fff88893          	addi	a7,a7,-1 # ffff <register_fini-0x75>
   18848:	0005a703          	lw	a4,0(a1)
   1884c:	00480813          	addi	a6,a6,4
   18850:	00458593          	addi	a1,a1,4
   18854:	01177633          	and	a2,a4,a7
   18858:	00f60633          	add	a2,a2,a5
   1885c:	41065693          	srai	a3,a2,0x10
   18860:	01075793          	srli	a5,a4,0x10
   18864:	00d787b3          	add	a5,a5,a3
   18868:	01079693          	slli	a3,a5,0x10
   1886c:	01167633          	and	a2,a2,a7
   18870:	00c6e6b3          	or	a3,a3,a2
   18874:	fed82e23          	sw	a3,-4(a6)
   18878:	4107d793          	srai	a5,a5,0x10
   1887c:	fdd5e6e3          	bltu	a1,t4,18848 <__mdiff+0x16c>
   18880:	fffe8713          	addi	a4,t4,-1
   18884:	40870733          	sub	a4,a4,s0
   18888:	ffc77713          	andi	a4,a4,-4
   1888c:	00e28733          	add	a4,t0,a4
   18890:	00069a63          	bnez	a3,188a4 <__mdiff+0x1c8>
   18894:	ffc72783          	lw	a5,-4(a4)
   18898:	fffe0e13          	addi	t3,t3,-1
   1889c:	ffc70713          	addi	a4,a4,-4
   188a0:	fe078ae3          	beqz	a5,18894 <__mdiff+0x1b8>
   188a4:	01c12083          	lw	ra,28(sp)
   188a8:	01812403          	lw	s0,24(sp)
   188ac:	01c52823          	sw	t3,16(a0)
   188b0:	01412483          	lw	s1,20(sp)
   188b4:	01012903          	lw	s2,16(sp)
   188b8:	00c12983          	lw	s3,12(sp)
   188bc:	00812a03          	lw	s4,8(sp)
   188c0:	02010113          	addi	sp,sp,32
   188c4:	00008067          	ret
   188c8:	00000593          	li	a1,0
   188cc:	be8ff0ef          	jal	ra,17cb4 <_Balloc>
   188d0:	01c12083          	lw	ra,28(sp)
   188d4:	01812403          	lw	s0,24(sp)
   188d8:	00100793          	li	a5,1
   188dc:	00f52823          	sw	a5,16(a0)
   188e0:	00052a23          	sw	zero,20(a0)
   188e4:	01412483          	lw	s1,20(sp)
   188e8:	01012903          	lw	s2,16(sp)
   188ec:	00c12983          	lw	s3,12(sp)
   188f0:	00812a03          	lw	s4,8(sp)
   188f4:	02010113          	addi	sp,sp,32
   188f8:	00008067          	ret

000188fc <__ulp>:
   188fc:	7ff007b7          	lui	a5,0x7ff00
   18900:	00b7f5b3          	and	a1,a5,a1
   18904:	fcc007b7          	lui	a5,0xfcc00
   18908:	00f585b3          	add	a1,a1,a5
   1890c:	00b05863          	blez	a1,1891c <__ulp+0x20>
   18910:	00000793          	li	a5,0
   18914:	00078513          	mv	a0,a5
   18918:	00008067          	ret
   1891c:	40b005b3          	neg	a1,a1
   18920:	4145d593          	srai	a1,a1,0x14
   18924:	01300793          	li	a5,19
   18928:	00b7c863          	blt	a5,a1,18938 <__ulp+0x3c>
   1892c:	000807b7          	lui	a5,0x80
   18930:	40b7d5b3          	sra	a1,a5,a1
   18934:	fddff06f          	j	18910 <__ulp+0x14>
   18938:	fec58713          	addi	a4,a1,-20
   1893c:	01e00693          	li	a3,30
   18940:	00000593          	li	a1,0
   18944:	00100793          	li	a5,1
   18948:	fce6c6e3          	blt	a3,a4,18914 <__ulp+0x18>
   1894c:	800007b7          	lui	a5,0x80000
   18950:	00e7d7b3          	srl	a5,a5,a4
   18954:	00078513          	mv	a0,a5
   18958:	00008067          	ret

0001895c <__b2d>:
   1895c:	fe010113          	addi	sp,sp,-32
   18960:	00912a23          	sw	s1,20(sp)
   18964:	01052483          	lw	s1,16(a0)
   18968:	00812c23          	sw	s0,24(sp)
   1896c:	01450413          	addi	s0,a0,20
   18970:	00249493          	slli	s1,s1,0x2
   18974:	009404b3          	add	s1,s0,s1
   18978:	01212823          	sw	s2,16(sp)
   1897c:	ffc4a903          	lw	s2,-4(s1)
   18980:	01312623          	sw	s3,12(sp)
   18984:	01412423          	sw	s4,8(sp)
   18988:	00090513          	mv	a0,s2
   1898c:	00058993          	mv	s3,a1
   18990:	00112e23          	sw	ra,28(sp)
   18994:	e44ff0ef          	jal	ra,17fd8 <__hi0bits>
   18998:	02000713          	li	a4,32
   1899c:	40a707b3          	sub	a5,a4,a0
   189a0:	00f9a023          	sw	a5,0(s3)
   189a4:	00a00793          	li	a5,10
   189a8:	ffc48a13          	addi	s4,s1,-4
   189ac:	08a7d063          	bge	a5,a0,18a2c <__b2d+0xd0>
   189b0:	ff550513          	addi	a0,a0,-11
   189b4:	05447063          	bgeu	s0,s4,189f4 <__b2d+0x98>
   189b8:	ff84a783          	lw	a5,-8(s1)
   189bc:	04050063          	beqz	a0,189fc <__b2d+0xa0>
   189c0:	40a706b3          	sub	a3,a4,a0
   189c4:	00d7d733          	srl	a4,a5,a3
   189c8:	00a91933          	sll	s2,s2,a0
   189cc:	00e96933          	or	s2,s2,a4
   189d0:	ff848613          	addi	a2,s1,-8
   189d4:	3ff00737          	lui	a4,0x3ff00
   189d8:	00e96733          	or	a4,s2,a4
   189dc:	00a797b3          	sll	a5,a5,a0
   189e0:	02c47263          	bgeu	s0,a2,18a04 <__b2d+0xa8>
   189e4:	ff44a603          	lw	a2,-12(s1)
   189e8:	00d656b3          	srl	a3,a2,a3
   189ec:	00d7e7b3          	or	a5,a5,a3
   189f0:	0140006f          	j	18a04 <__b2d+0xa8>
   189f4:	00000793          	li	a5,0
   189f8:	06051463          	bnez	a0,18a60 <__b2d+0x104>
   189fc:	3ff00737          	lui	a4,0x3ff00
   18a00:	00e96733          	or	a4,s2,a4
   18a04:	01c12083          	lw	ra,28(sp)
   18a08:	01812403          	lw	s0,24(sp)
   18a0c:	01412483          	lw	s1,20(sp)
   18a10:	01012903          	lw	s2,16(sp)
   18a14:	00c12983          	lw	s3,12(sp)
   18a18:	00812a03          	lw	s4,8(sp)
   18a1c:	00078513          	mv	a0,a5
   18a20:	00070593          	mv	a1,a4
   18a24:	02010113          	addi	sp,sp,32
   18a28:	00008067          	ret
   18a2c:	00b00693          	li	a3,11
   18a30:	40a686b3          	sub	a3,a3,a0
   18a34:	3ff007b7          	lui	a5,0x3ff00
   18a38:	00d95733          	srl	a4,s2,a3
   18a3c:	00f76733          	or	a4,a4,a5
   18a40:	00000793          	li	a5,0
   18a44:	01447663          	bgeu	s0,s4,18a50 <__b2d+0xf4>
   18a48:	ff84a783          	lw	a5,-8(s1)
   18a4c:	00d7d7b3          	srl	a5,a5,a3
   18a50:	01550513          	addi	a0,a0,21
   18a54:	00a91533          	sll	a0,s2,a0
   18a58:	00f567b3          	or	a5,a0,a5
   18a5c:	fa9ff06f          	j	18a04 <__b2d+0xa8>
   18a60:	00a91533          	sll	a0,s2,a0
   18a64:	3ff00737          	lui	a4,0x3ff00
   18a68:	00e56733          	or	a4,a0,a4
   18a6c:	00000793          	li	a5,0
   18a70:	f95ff06f          	j	18a04 <__b2d+0xa8>

00018a74 <__d2b>:
   18a74:	fd010113          	addi	sp,sp,-48
   18a78:	01512a23          	sw	s5,20(sp)
   18a7c:	00058a93          	mv	s5,a1
   18a80:	00100593          	li	a1,1
   18a84:	02812423          	sw	s0,40(sp)
   18a88:	02912223          	sw	s1,36(sp)
   18a8c:	03212023          	sw	s2,32(sp)
   18a90:	00060493          	mv	s1,a2
   18a94:	01312e23          	sw	s3,28(sp)
   18a98:	01412c23          	sw	s4,24(sp)
   18a9c:	00068993          	mv	s3,a3
   18aa0:	00070913          	mv	s2,a4
   18aa4:	02112623          	sw	ra,44(sp)
   18aa8:	a0cff0ef          	jal	ra,17cb4 <_Balloc>
   18aac:	0144d713          	srli	a4,s1,0x14
   18ab0:	00100637          	lui	a2,0x100
   18ab4:	fff60793          	addi	a5,a2,-1 # fffff <__BSS_END__+0xd902f>
   18ab8:	01571693          	slli	a3,a4,0x15
   18abc:	00050413          	mv	s0,a0
   18ac0:	0097f7b3          	and	a5,a5,s1
   18ac4:	7ff77a13          	andi	s4,a4,2047
   18ac8:	00068463          	beqz	a3,18ad0 <__d2b+0x5c>
   18acc:	00c7e7b3          	or	a5,a5,a2
   18ad0:	00f12623          	sw	a5,12(sp)
   18ad4:	060a8c63          	beqz	s5,18b4c <__d2b+0xd8>
   18ad8:	00810513          	addi	a0,sp,8
   18adc:	01512423          	sw	s5,8(sp)
   18ae0:	d6cff0ef          	jal	ra,1804c <__lo0bits>
   18ae4:	00c12703          	lw	a4,12(sp)
   18ae8:	00050793          	mv	a5,a0
   18aec:	0a051663          	bnez	a0,18b98 <__d2b+0x124>
   18af0:	00812683          	lw	a3,8(sp)
   18af4:	00d42a23          	sw	a3,20(s0)
   18af8:	00e034b3          	snez	s1,a4
   18afc:	00148493          	addi	s1,s1,1
   18b00:	00e42c23          	sw	a4,24(s0)
   18b04:	00942823          	sw	s1,16(s0)
   18b08:	060a0463          	beqz	s4,18b70 <__d2b+0xfc>
   18b0c:	bcda0a13          	addi	s4,s4,-1075
   18b10:	00fa0a33          	add	s4,s4,a5
   18b14:	03500513          	li	a0,53
   18b18:	0149a023          	sw	s4,0(s3)
   18b1c:	40f507b3          	sub	a5,a0,a5
   18b20:	00f92023          	sw	a5,0(s2)
   18b24:	02c12083          	lw	ra,44(sp)
   18b28:	00040513          	mv	a0,s0
   18b2c:	02812403          	lw	s0,40(sp)
   18b30:	02412483          	lw	s1,36(sp)
   18b34:	02012903          	lw	s2,32(sp)
   18b38:	01c12983          	lw	s3,28(sp)
   18b3c:	01812a03          	lw	s4,24(sp)
   18b40:	01412a83          	lw	s5,20(sp)
   18b44:	03010113          	addi	sp,sp,48
   18b48:	00008067          	ret
   18b4c:	00c10513          	addi	a0,sp,12
   18b50:	cfcff0ef          	jal	ra,1804c <__lo0bits>
   18b54:	00100793          	li	a5,1
   18b58:	00f42823          	sw	a5,16(s0)
   18b5c:	00c12783          	lw	a5,12(sp)
   18b60:	00100493          	li	s1,1
   18b64:	00f42a23          	sw	a5,20(s0)
   18b68:	02050793          	addi	a5,a0,32
   18b6c:	fa0a10e3          	bnez	s4,18b0c <__d2b+0x98>
   18b70:	00249713          	slli	a4,s1,0x2
   18b74:	00e40733          	add	a4,s0,a4
   18b78:	01072503          	lw	a0,16(a4) # 3ff00010 <__BSS_END__+0x3fed9040>
   18b7c:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fed8bfe>
   18b80:	00f9a023          	sw	a5,0(s3)
   18b84:	c54ff0ef          	jal	ra,17fd8 <__hi0bits>
   18b88:	00549493          	slli	s1,s1,0x5
   18b8c:	40a484b3          	sub	s1,s1,a0
   18b90:	00992023          	sw	s1,0(s2)
   18b94:	f91ff06f          	j	18b24 <__d2b+0xb0>
   18b98:	00812603          	lw	a2,8(sp)
   18b9c:	02000693          	li	a3,32
   18ba0:	40a686b3          	sub	a3,a3,a0
   18ba4:	00d716b3          	sll	a3,a4,a3
   18ba8:	00c6e6b3          	or	a3,a3,a2
   18bac:	00a75733          	srl	a4,a4,a0
   18bb0:	00d42a23          	sw	a3,20(s0)
   18bb4:	00e12623          	sw	a4,12(sp)
   18bb8:	f41ff06f          	j	18af8 <__d2b+0x84>

00018bbc <__ratio>:
   18bbc:	fd010113          	addi	sp,sp,-48
   18bc0:	03212023          	sw	s2,32(sp)
   18bc4:	00058913          	mv	s2,a1
   18bc8:	00810593          	addi	a1,sp,8
   18bcc:	02112623          	sw	ra,44(sp)
   18bd0:	02812423          	sw	s0,40(sp)
   18bd4:	02912223          	sw	s1,36(sp)
   18bd8:	01312e23          	sw	s3,28(sp)
   18bdc:	00050993          	mv	s3,a0
   18be0:	d7dff0ef          	jal	ra,1895c <__b2d>
   18be4:	00050493          	mv	s1,a0
   18be8:	00058413          	mv	s0,a1
   18bec:	00090513          	mv	a0,s2
   18bf0:	00c10593          	addi	a1,sp,12
   18bf4:	d69ff0ef          	jal	ra,1895c <__b2d>
   18bf8:	01092783          	lw	a5,16(s2)
   18bfc:	0109a703          	lw	a4,16(s3)
   18c00:	00c12683          	lw	a3,12(sp)
   18c04:	40f70733          	sub	a4,a4,a5
   18c08:	00812783          	lw	a5,8(sp)
   18c0c:	00571713          	slli	a4,a4,0x5
   18c10:	40d787b3          	sub	a5,a5,a3
   18c14:	00f707b3          	add	a5,a4,a5
   18c18:	00050693          	mv	a3,a0
   18c1c:	02f05e63          	blez	a5,18c58 <__ratio+0x9c>
   18c20:	01479793          	slli	a5,a5,0x14
   18c24:	00878433          	add	s0,a5,s0
   18c28:	00068613          	mv	a2,a3
   18c2c:	00048513          	mv	a0,s1
   18c30:	00058693          	mv	a3,a1
   18c34:	00040593          	mv	a1,s0
   18c38:	005070ef          	jal	ra,2043c <__divdf3>
   18c3c:	02c12083          	lw	ra,44(sp)
   18c40:	02812403          	lw	s0,40(sp)
   18c44:	02412483          	lw	s1,36(sp)
   18c48:	02012903          	lw	s2,32(sp)
   18c4c:	01c12983          	lw	s3,28(sp)
   18c50:	03010113          	addi	sp,sp,48
   18c54:	00008067          	ret
   18c58:	01479713          	slli	a4,a5,0x14
   18c5c:	40e585b3          	sub	a1,a1,a4
   18c60:	fc9ff06f          	j	18c28 <__ratio+0x6c>

00018c64 <_mprec_log10>:
   18c64:	ff010113          	addi	sp,sp,-16
   18c68:	01212023          	sw	s2,0(sp)
   18c6c:	00112623          	sw	ra,12(sp)
   18c70:	00812423          	sw	s0,8(sp)
   18c74:	00912223          	sw	s1,4(sp)
   18c78:	01700793          	li	a5,23
   18c7c:	00050913          	mv	s2,a0
   18c80:	04a7d663          	bge	a5,a0,18ccc <_mprec_log10+0x68>
   18c84:	1a01a783          	lw	a5,416(gp) # 26f48 <__SDATA_BEGIN__>
   18c88:	1a41a583          	lw	a1,420(gp) # 26f4c <__SDATA_BEGIN__+0x4>
   18c8c:	1a81a403          	lw	s0,424(gp) # 26f50 <__SDATA_BEGIN__+0x8>
   18c90:	1ac1a483          	lw	s1,428(gp) # 26f54 <__SDATA_BEGIN__+0xc>
   18c94:	00078513          	mv	a0,a5
   18c98:	00040613          	mv	a2,s0
   18c9c:	00048693          	mv	a3,s1
   18ca0:	775070ef          	jal	ra,20c14 <__muldf3>
   18ca4:	fff90913          	addi	s2,s2,-1
   18ca8:	00050793          	mv	a5,a0
   18cac:	fe0914e3          	bnez	s2,18c94 <_mprec_log10+0x30>
   18cb0:	00c12083          	lw	ra,12(sp)
   18cb4:	00812403          	lw	s0,8(sp)
   18cb8:	00412483          	lw	s1,4(sp)
   18cbc:	00012903          	lw	s2,0(sp)
   18cc0:	00078513          	mv	a0,a5
   18cc4:	01010113          	addi	sp,sp,16
   18cc8:	00008067          	ret
   18ccc:	000257b7          	lui	a5,0x25
   18cd0:	00351913          	slli	s2,a0,0x3
   18cd4:	c5078793          	addi	a5,a5,-944 # 24c50 <p05.3277>
   18cd8:	01278933          	add	s2,a5,s2
   18cdc:	01092783          	lw	a5,16(s2)
   18ce0:	00c12083          	lw	ra,12(sp)
   18ce4:	00812403          	lw	s0,8(sp)
   18ce8:	01492583          	lw	a1,20(s2)
   18cec:	00412483          	lw	s1,4(sp)
   18cf0:	00012903          	lw	s2,0(sp)
   18cf4:	00078513          	mv	a0,a5
   18cf8:	01010113          	addi	sp,sp,16
   18cfc:	00008067          	ret

00018d00 <__copybits>:
   18d00:	01062683          	lw	a3,16(a2)
   18d04:	fff58593          	addi	a1,a1,-1
   18d08:	4055d593          	srai	a1,a1,0x5
   18d0c:	00158593          	addi	a1,a1,1
   18d10:	01460793          	addi	a5,a2,20
   18d14:	00269693          	slli	a3,a3,0x2
   18d18:	00259593          	slli	a1,a1,0x2
   18d1c:	00d786b3          	add	a3,a5,a3
   18d20:	00b505b3          	add	a1,a0,a1
   18d24:	02d7f863          	bgeu	a5,a3,18d54 <__copybits+0x54>
   18d28:	00050713          	mv	a4,a0
   18d2c:	0007a803          	lw	a6,0(a5)
   18d30:	00478793          	addi	a5,a5,4
   18d34:	00470713          	addi	a4,a4,4
   18d38:	ff072e23          	sw	a6,-4(a4)
   18d3c:	fed7e8e3          	bltu	a5,a3,18d2c <__copybits+0x2c>
   18d40:	40c687b3          	sub	a5,a3,a2
   18d44:	feb78793          	addi	a5,a5,-21
   18d48:	ffc7f793          	andi	a5,a5,-4
   18d4c:	00478793          	addi	a5,a5,4
   18d50:	00f50533          	add	a0,a0,a5
   18d54:	00b57863          	bgeu	a0,a1,18d64 <__copybits+0x64>
   18d58:	00450513          	addi	a0,a0,4
   18d5c:	fe052e23          	sw	zero,-4(a0)
   18d60:	feb56ce3          	bltu	a0,a1,18d58 <__copybits+0x58>
   18d64:	00008067          	ret

00018d68 <__any_on>:
   18d68:	01052703          	lw	a4,16(a0)
   18d6c:	4055d613          	srai	a2,a1,0x5
   18d70:	01450693          	addi	a3,a0,20
   18d74:	02c75263          	bge	a4,a2,18d98 <__any_on+0x30>
   18d78:	00271793          	slli	a5,a4,0x2
   18d7c:	00f687b3          	add	a5,a3,a5
   18d80:	04f6f263          	bgeu	a3,a5,18dc4 <__any_on+0x5c>
   18d84:	ffc7a703          	lw	a4,-4(a5)
   18d88:	ffc78793          	addi	a5,a5,-4
   18d8c:	fe070ae3          	beqz	a4,18d80 <__any_on+0x18>
   18d90:	00100513          	li	a0,1
   18d94:	00008067          	ret
   18d98:	00261793          	slli	a5,a2,0x2
   18d9c:	00f687b3          	add	a5,a3,a5
   18da0:	fee650e3          	bge	a2,a4,18d80 <__any_on+0x18>
   18da4:	01f5f593          	andi	a1,a1,31
   18da8:	fc058ce3          	beqz	a1,18d80 <__any_on+0x18>
   18dac:	0007a603          	lw	a2,0(a5)
   18db0:	00100513          	li	a0,1
   18db4:	00b65733          	srl	a4,a2,a1
   18db8:	00b715b3          	sll	a1,a4,a1
   18dbc:	fcb602e3          	beq	a2,a1,18d80 <__any_on+0x18>
   18dc0:	00008067          	ret
   18dc4:	00000513          	li	a0,0
   18dc8:	00008067          	ret

00018dcc <_realloc_r>:
   18dcc:	fd010113          	addi	sp,sp,-48
   18dd0:	03212023          	sw	s2,32(sp)
   18dd4:	02112623          	sw	ra,44(sp)
   18dd8:	02812423          	sw	s0,40(sp)
   18ddc:	02912223          	sw	s1,36(sp)
   18de0:	01312e23          	sw	s3,28(sp)
   18de4:	01412c23          	sw	s4,24(sp)
   18de8:	01512a23          	sw	s5,20(sp)
   18dec:	01612823          	sw	s6,16(sp)
   18df0:	01712623          	sw	s7,12(sp)
   18df4:	01812423          	sw	s8,8(sp)
   18df8:	00060913          	mv	s2,a2
   18dfc:	22058263          	beqz	a1,19020 <_realloc_r+0x254>
   18e00:	00058413          	mv	s0,a1
   18e04:	00050993          	mv	s3,a0
   18e08:	ea5fe0ef          	jal	ra,17cac <__malloc_lock>
   18e0c:	00b90493          	addi	s1,s2,11
   18e10:	01600793          	li	a5,22
   18e14:	0e97fc63          	bgeu	a5,s1,18f0c <_realloc_r+0x140>
   18e18:	ff84f493          	andi	s1,s1,-8
   18e1c:	00048713          	mv	a4,s1
   18e20:	0e04cc63          	bltz	s1,18f18 <_realloc_r+0x14c>
   18e24:	0f24ea63          	bltu	s1,s2,18f18 <_realloc_r+0x14c>
   18e28:	ffc42783          	lw	a5,-4(s0)
   18e2c:	ff840a93          	addi	s5,s0,-8
   18e30:	ffc7fa13          	andi	s4,a5,-4
   18e34:	014a8b33          	add	s6,s5,s4
   18e38:	18ea5a63          	bge	s4,a4,18fcc <_realloc_r+0x200>
   18e3c:	c2818b93          	addi	s7,gp,-984 # 269d0 <__malloc_av_>
   18e40:	008ba603          	lw	a2,8(s7)
   18e44:	004b2683          	lw	a3,4(s6)
   18e48:	23660e63          	beq	a2,s6,19084 <_realloc_r+0x2b8>
   18e4c:	ffe6f613          	andi	a2,a3,-2
   18e50:	00cb0633          	add	a2,s6,a2
   18e54:	00462603          	lw	a2,4(a2)
   18e58:	00167613          	andi	a2,a2,1
   18e5c:	1a061463          	bnez	a2,19004 <_realloc_r+0x238>
   18e60:	ffc6f693          	andi	a3,a3,-4
   18e64:	00da0633          	add	a2,s4,a3
   18e68:	32e65e63          	bge	a2,a4,191a4 <_realloc_r+0x3d8>
   18e6c:	0017f793          	andi	a5,a5,1
   18e70:	02079463          	bnez	a5,18e98 <_realloc_r+0xcc>
   18e74:	ff842c03          	lw	s8,-8(s0)
   18e78:	418a8c33          	sub	s8,s5,s8
   18e7c:	004c2783          	lw	a5,4(s8)
   18e80:	ffc7f793          	andi	a5,a5,-4
   18e84:	00d786b3          	add	a3,a5,a3
   18e88:	01468bb3          	add	s7,a3,s4
   18e8c:	34ebda63          	bge	s7,a4,191e0 <_realloc_r+0x414>
   18e90:	00fa0bb3          	add	s7,s4,a5
   18e94:	0cebd263          	bge	s7,a4,18f58 <_realloc_r+0x18c>
   18e98:	00090593          	mv	a1,s2
   18e9c:	00098513          	mv	a0,s3
   18ea0:	b64fe0ef          	jal	ra,17204 <_malloc_r>
   18ea4:	00050913          	mv	s2,a0
   18ea8:	04050c63          	beqz	a0,18f00 <_realloc_r+0x134>
   18eac:	ffc42783          	lw	a5,-4(s0)
   18eb0:	ff850713          	addi	a4,a0,-8
   18eb4:	ffe7f793          	andi	a5,a5,-2
   18eb8:	00fa87b3          	add	a5,s5,a5
   18ebc:	30e78263          	beq	a5,a4,191c0 <_realloc_r+0x3f4>
   18ec0:	ffca0613          	addi	a2,s4,-4
   18ec4:	02400793          	li	a5,36
   18ec8:	30c7e663          	bltu	a5,a2,191d4 <_realloc_r+0x408>
   18ecc:	01300713          	li	a4,19
   18ed0:	00042683          	lw	a3,0(s0)
   18ed4:	26c76c63          	bltu	a4,a2,1914c <_realloc_r+0x380>
   18ed8:	00050793          	mv	a5,a0
   18edc:	00040713          	mv	a4,s0
   18ee0:	00d7a023          	sw	a3,0(a5)
   18ee4:	00472683          	lw	a3,4(a4)
   18ee8:	00d7a223          	sw	a3,4(a5)
   18eec:	00872703          	lw	a4,8(a4)
   18ef0:	00e7a423          	sw	a4,8(a5)
   18ef4:	00040593          	mv	a1,s0
   18ef8:	00098513          	mv	a0,s3
   18efc:	c39fa0ef          	jal	ra,13b34 <_free_r>
   18f00:	00098513          	mv	a0,s3
   18f04:	dadfe0ef          	jal	ra,17cb0 <__malloc_unlock>
   18f08:	01c0006f          	j	18f24 <_realloc_r+0x158>
   18f0c:	01000493          	li	s1,16
   18f10:	01000713          	li	a4,16
   18f14:	f124fae3          	bgeu	s1,s2,18e28 <_realloc_r+0x5c>
   18f18:	00c00793          	li	a5,12
   18f1c:	00f9a023          	sw	a5,0(s3)
   18f20:	00000913          	li	s2,0
   18f24:	02c12083          	lw	ra,44(sp)
   18f28:	02812403          	lw	s0,40(sp)
   18f2c:	02412483          	lw	s1,36(sp)
   18f30:	01c12983          	lw	s3,28(sp)
   18f34:	01812a03          	lw	s4,24(sp)
   18f38:	01412a83          	lw	s5,20(sp)
   18f3c:	01012b03          	lw	s6,16(sp)
   18f40:	00c12b83          	lw	s7,12(sp)
   18f44:	00812c03          	lw	s8,8(sp)
   18f48:	00090513          	mv	a0,s2
   18f4c:	02012903          	lw	s2,32(sp)
   18f50:	03010113          	addi	sp,sp,48
   18f54:	00008067          	ret
   18f58:	00cc2783          	lw	a5,12(s8)
   18f5c:	008c2703          	lw	a4,8(s8)
   18f60:	ffca0613          	addi	a2,s4,-4
   18f64:	02400693          	li	a3,36
   18f68:	00f72623          	sw	a5,12(a4)
   18f6c:	00e7a423          	sw	a4,8(a5)
   18f70:	008c0913          	addi	s2,s8,8
   18f74:	017c0b33          	add	s6,s8,s7
   18f78:	2ec6e463          	bltu	a3,a2,19260 <_realloc_r+0x494>
   18f7c:	01300593          	li	a1,19
   18f80:	00042703          	lw	a4,0(s0)
   18f84:	00090793          	mv	a5,s2
   18f88:	02c5f263          	bgeu	a1,a2,18fac <_realloc_r+0x1e0>
   18f8c:	00ec2423          	sw	a4,8(s8)
   18f90:	00442703          	lw	a4,4(s0)
   18f94:	01b00793          	li	a5,27
   18f98:	00ec2623          	sw	a4,12(s8)
   18f9c:	30c7e263          	bltu	a5,a2,192a0 <_realloc_r+0x4d4>
   18fa0:	00842703          	lw	a4,8(s0)
   18fa4:	010c0793          	addi	a5,s8,16
   18fa8:	00840413          	addi	s0,s0,8
   18fac:	00e7a023          	sw	a4,0(a5)
   18fb0:	00442703          	lw	a4,4(s0)
   18fb4:	000b8a13          	mv	s4,s7
   18fb8:	000c0a93          	mv	s5,s8
   18fbc:	00e7a223          	sw	a4,4(a5)
   18fc0:	00842703          	lw	a4,8(s0)
   18fc4:	00090413          	mv	s0,s2
   18fc8:	00e7a423          	sw	a4,8(a5)
   18fcc:	004aa783          	lw	a5,4(s5)
   18fd0:	409a0733          	sub	a4,s4,s1
   18fd4:	00f00693          	li	a3,15
   18fd8:	0017f793          	andi	a5,a5,1
   18fdc:	06e6ec63          	bltu	a3,a4,19054 <_realloc_r+0x288>
   18fe0:	00fa67b3          	or	a5,s4,a5
   18fe4:	00faa223          	sw	a5,4(s5)
   18fe8:	004b2783          	lw	a5,4(s6)
   18fec:	0017e793          	ori	a5,a5,1
   18ff0:	00fb2223          	sw	a5,4(s6)
   18ff4:	00098513          	mv	a0,s3
   18ff8:	cb9fe0ef          	jal	ra,17cb0 <__malloc_unlock>
   18ffc:	00040913          	mv	s2,s0
   19000:	f25ff06f          	j	18f24 <_realloc_r+0x158>
   19004:	0017f793          	andi	a5,a5,1
   19008:	e80798e3          	bnez	a5,18e98 <_realloc_r+0xcc>
   1900c:	ff842c03          	lw	s8,-8(s0)
   19010:	418a8c33          	sub	s8,s5,s8
   19014:	004c2783          	lw	a5,4(s8)
   19018:	ffc7f793          	andi	a5,a5,-4
   1901c:	e75ff06f          	j	18e90 <_realloc_r+0xc4>
   19020:	02812403          	lw	s0,40(sp)
   19024:	02c12083          	lw	ra,44(sp)
   19028:	02412483          	lw	s1,36(sp)
   1902c:	02012903          	lw	s2,32(sp)
   19030:	01c12983          	lw	s3,28(sp)
   19034:	01812a03          	lw	s4,24(sp)
   19038:	01412a83          	lw	s5,20(sp)
   1903c:	01012b03          	lw	s6,16(sp)
   19040:	00c12b83          	lw	s7,12(sp)
   19044:	00812c03          	lw	s8,8(sp)
   19048:	00060593          	mv	a1,a2
   1904c:	03010113          	addi	sp,sp,48
   19050:	9b4fe06f          	j	17204 <_malloc_r>
   19054:	0097e7b3          	or	a5,a5,s1
   19058:	00faa223          	sw	a5,4(s5)
   1905c:	009a85b3          	add	a1,s5,s1
   19060:	00176713          	ori	a4,a4,1
   19064:	00e5a223          	sw	a4,4(a1)
   19068:	004b2783          	lw	a5,4(s6)
   1906c:	00858593          	addi	a1,a1,8
   19070:	00098513          	mv	a0,s3
   19074:	0017e793          	ori	a5,a5,1
   19078:	00fb2223          	sw	a5,4(s6)
   1907c:	ab9fa0ef          	jal	ra,13b34 <_free_r>
   19080:	f75ff06f          	j	18ff4 <_realloc_r+0x228>
   19084:	ffc6f693          	andi	a3,a3,-4
   19088:	00da0633          	add	a2,s4,a3
   1908c:	01048593          	addi	a1,s1,16
   19090:	0eb65063          	bge	a2,a1,19170 <_realloc_r+0x3a4>
   19094:	0017f793          	andi	a5,a5,1
   19098:	e00790e3          	bnez	a5,18e98 <_realloc_r+0xcc>
   1909c:	ff842c03          	lw	s8,-8(s0)
   190a0:	418a8c33          	sub	s8,s5,s8
   190a4:	004c2783          	lw	a5,4(s8)
   190a8:	ffc7f793          	andi	a5,a5,-4
   190ac:	00d786b3          	add	a3,a5,a3
   190b0:	01468b33          	add	s6,a3,s4
   190b4:	dcbb4ee3          	blt	s6,a1,18e90 <_realloc_r+0xc4>
   190b8:	00cc2783          	lw	a5,12(s8)
   190bc:	008c2703          	lw	a4,8(s8)
   190c0:	ffca0613          	addi	a2,s4,-4
   190c4:	02400693          	li	a3,36
   190c8:	00f72623          	sw	a5,12(a4)
   190cc:	00e7a423          	sw	a4,8(a5)
   190d0:	008c0913          	addi	s2,s8,8
   190d4:	20c6ee63          	bltu	a3,a2,192f0 <_realloc_r+0x524>
   190d8:	01300593          	li	a1,19
   190dc:	00042703          	lw	a4,0(s0)
   190e0:	00090793          	mv	a5,s2
   190e4:	02c5f263          	bgeu	a1,a2,19108 <_realloc_r+0x33c>
   190e8:	00ec2423          	sw	a4,8(s8)
   190ec:	00442703          	lw	a4,4(s0)
   190f0:	01b00793          	li	a5,27
   190f4:	00ec2623          	sw	a4,12(s8)
   190f8:	20c7e463          	bltu	a5,a2,19300 <_realloc_r+0x534>
   190fc:	00842703          	lw	a4,8(s0)
   19100:	010c0793          	addi	a5,s8,16
   19104:	00840413          	addi	s0,s0,8
   19108:	00e7a023          	sw	a4,0(a5)
   1910c:	00442703          	lw	a4,4(s0)
   19110:	00e7a223          	sw	a4,4(a5)
   19114:	00842703          	lw	a4,8(s0)
   19118:	00e7a423          	sw	a4,8(a5)
   1911c:	009c0733          	add	a4,s8,s1
   19120:	409b07b3          	sub	a5,s6,s1
   19124:	00eba423          	sw	a4,8(s7)
   19128:	0017e793          	ori	a5,a5,1
   1912c:	00f72223          	sw	a5,4(a4)
   19130:	004c2783          	lw	a5,4(s8)
   19134:	00098513          	mv	a0,s3
   19138:	0017f793          	andi	a5,a5,1
   1913c:	0097e4b3          	or	s1,a5,s1
   19140:	009c2223          	sw	s1,4(s8)
   19144:	b6dfe0ef          	jal	ra,17cb0 <__malloc_unlock>
   19148:	dddff06f          	j	18f24 <_realloc_r+0x158>
   1914c:	00d52023          	sw	a3,0(a0)
   19150:	00442683          	lw	a3,4(s0)
   19154:	01b00713          	li	a4,27
   19158:	00d52223          	sw	a3,4(a0)
   1915c:	12c76063          	bltu	a4,a2,1927c <_realloc_r+0x4b0>
   19160:	00842683          	lw	a3,8(s0)
   19164:	00840713          	addi	a4,s0,8
   19168:	00850793          	addi	a5,a0,8
   1916c:	d75ff06f          	j	18ee0 <_realloc_r+0x114>
   19170:	009a8ab3          	add	s5,s5,s1
   19174:	409607b3          	sub	a5,a2,s1
   19178:	015ba423          	sw	s5,8(s7)
   1917c:	0017e793          	ori	a5,a5,1
   19180:	00faa223          	sw	a5,4(s5)
   19184:	ffc42783          	lw	a5,-4(s0)
   19188:	00098513          	mv	a0,s3
   1918c:	00040913          	mv	s2,s0
   19190:	0017f793          	andi	a5,a5,1
   19194:	0097e4b3          	or	s1,a5,s1
   19198:	fe942e23          	sw	s1,-4(s0)
   1919c:	b15fe0ef          	jal	ra,17cb0 <__malloc_unlock>
   191a0:	d85ff06f          	j	18f24 <_realloc_r+0x158>
   191a4:	00cb2783          	lw	a5,12(s6)
   191a8:	008b2703          	lw	a4,8(s6)
   191ac:	00060a13          	mv	s4,a2
   191b0:	00ca8b33          	add	s6,s5,a2
   191b4:	00f72623          	sw	a5,12(a4)
   191b8:	00e7a423          	sw	a4,8(a5)
   191bc:	e11ff06f          	j	18fcc <_realloc_r+0x200>
   191c0:	ffc52783          	lw	a5,-4(a0)
   191c4:	ffc7f793          	andi	a5,a5,-4
   191c8:	00fa0a33          	add	s4,s4,a5
   191cc:	014a8b33          	add	s6,s5,s4
   191d0:	dfdff06f          	j	18fcc <_realloc_r+0x200>
   191d4:	00040593          	mv	a1,s0
   191d8:	9b5fe0ef          	jal	ra,17b8c <memmove>
   191dc:	d19ff06f          	j	18ef4 <_realloc_r+0x128>
   191e0:	00cb2783          	lw	a5,12(s6)
   191e4:	008b2703          	lw	a4,8(s6)
   191e8:	ffca0613          	addi	a2,s4,-4
   191ec:	02400693          	li	a3,36
   191f0:	00f72623          	sw	a5,12(a4)
   191f4:	00e7a423          	sw	a4,8(a5)
   191f8:	008c2703          	lw	a4,8(s8)
   191fc:	00cc2783          	lw	a5,12(s8)
   19200:	008c0913          	addi	s2,s8,8
   19204:	017c0b33          	add	s6,s8,s7
   19208:	00f72623          	sw	a5,12(a4)
   1920c:	00e7a423          	sw	a4,8(a5)
   19210:	04c6e863          	bltu	a3,a2,19260 <_realloc_r+0x494>
   19214:	01300693          	li	a3,19
   19218:	00042703          	lw	a4,0(s0)
   1921c:	00090793          	mv	a5,s2
   19220:	d8c6f6e3          	bgeu	a3,a2,18fac <_realloc_r+0x1e0>
   19224:	00ec2423          	sw	a4,8(s8)
   19228:	00442703          	lw	a4,4(s0)
   1922c:	01b00793          	li	a5,27
   19230:	00ec2623          	sw	a4,12(s8)
   19234:	00842703          	lw	a4,8(s0)
   19238:	d6c7f6e3          	bgeu	a5,a2,18fa4 <_realloc_r+0x1d8>
   1923c:	00ec2823          	sw	a4,16(s8)
   19240:	00c42703          	lw	a4,12(s0)
   19244:	02400793          	li	a5,36
   19248:	00ec2a23          	sw	a4,20(s8)
   1924c:	01042703          	lw	a4,16(s0)
   19250:	06f60463          	beq	a2,a5,192b8 <_realloc_r+0x4ec>
   19254:	018c0793          	addi	a5,s8,24
   19258:	01040413          	addi	s0,s0,16
   1925c:	d51ff06f          	j	18fac <_realloc_r+0x1e0>
   19260:	00040593          	mv	a1,s0
   19264:	00090513          	mv	a0,s2
   19268:	925fe0ef          	jal	ra,17b8c <memmove>
   1926c:	00090413          	mv	s0,s2
   19270:	000b8a13          	mv	s4,s7
   19274:	000c0a93          	mv	s5,s8
   19278:	d55ff06f          	j	18fcc <_realloc_r+0x200>
   1927c:	00842703          	lw	a4,8(s0)
   19280:	00e52423          	sw	a4,8(a0)
   19284:	00c42703          	lw	a4,12(s0)
   19288:	00e52623          	sw	a4,12(a0)
   1928c:	01042683          	lw	a3,16(s0)
   19290:	04f60263          	beq	a2,a5,192d4 <_realloc_r+0x508>
   19294:	01040713          	addi	a4,s0,16
   19298:	01050793          	addi	a5,a0,16
   1929c:	c45ff06f          	j	18ee0 <_realloc_r+0x114>
   192a0:	00842783          	lw	a5,8(s0)
   192a4:	00fc2823          	sw	a5,16(s8)
   192a8:	00c42783          	lw	a5,12(s0)
   192ac:	00fc2a23          	sw	a5,20(s8)
   192b0:	01042703          	lw	a4,16(s0)
   192b4:	fad610e3          	bne	a2,a3,19254 <_realloc_r+0x488>
   192b8:	00ec2c23          	sw	a4,24(s8)
   192bc:	01442703          	lw	a4,20(s0)
   192c0:	020c0793          	addi	a5,s8,32
   192c4:	01840413          	addi	s0,s0,24
   192c8:	00ec2e23          	sw	a4,28(s8)
   192cc:	00042703          	lw	a4,0(s0)
   192d0:	cddff06f          	j	18fac <_realloc_r+0x1e0>
   192d4:	00d52823          	sw	a3,16(a0)
   192d8:	01442683          	lw	a3,20(s0)
   192dc:	01840713          	addi	a4,s0,24
   192e0:	01850793          	addi	a5,a0,24
   192e4:	00d52a23          	sw	a3,20(a0)
   192e8:	01842683          	lw	a3,24(s0)
   192ec:	bf5ff06f          	j	18ee0 <_realloc_r+0x114>
   192f0:	00040593          	mv	a1,s0
   192f4:	00090513          	mv	a0,s2
   192f8:	895fe0ef          	jal	ra,17b8c <memmove>
   192fc:	e21ff06f          	j	1911c <_realloc_r+0x350>
   19300:	00842783          	lw	a5,8(s0)
   19304:	00fc2823          	sw	a5,16(s8)
   19308:	00c42783          	lw	a5,12(s0)
   1930c:	00fc2a23          	sw	a5,20(s8)
   19310:	01042703          	lw	a4,16(s0)
   19314:	00d60863          	beq	a2,a3,19324 <_realloc_r+0x558>
   19318:	018c0793          	addi	a5,s8,24
   1931c:	01040413          	addi	s0,s0,16
   19320:	de9ff06f          	j	19108 <_realloc_r+0x33c>
   19324:	00ec2c23          	sw	a4,24(s8)
   19328:	01442703          	lw	a4,20(s0)
   1932c:	020c0793          	addi	a5,s8,32
   19330:	01840413          	addi	s0,s0,24
   19334:	00ec2e23          	sw	a4,28(s8)
   19338:	00042703          	lw	a4,0(s0)
   1933c:	dcdff06f          	j	19108 <_realloc_r+0x33c>

00019340 <frexp>:
   19340:	ff010113          	addi	sp,sp,-16
   19344:	00912223          	sw	s1,4(sp)
   19348:	800004b7          	lui	s1,0x80000
   1934c:	00812423          	sw	s0,8(sp)
   19350:	00112623          	sw	ra,12(sp)
   19354:	fff4c493          	not	s1,s1
   19358:	00060413          	mv	s0,a2
   1935c:	00062023          	sw	zero,0(a2)
   19360:	00b4f6b3          	and	a3,s1,a1
   19364:	7ff00637          	lui	a2,0x7ff00
   19368:	00058793          	mv	a5,a1
   1936c:	00050713          	mv	a4,a0
   19370:	04c6de63          	bge	a3,a2,193cc <frexp+0x8c>
   19374:	00a6e8b3          	or	a7,a3,a0
   19378:	04088a63          	beqz	a7,193cc <frexp+0x8c>
   1937c:	00c5f633          	and	a2,a1,a2
   19380:	00058813          	mv	a6,a1
   19384:	00000893          	li	a7,0
   19388:	02061063          	bnez	a2,193a8 <frexp+0x68>
   1938c:	1b41a683          	lw	a3,436(gp) # 26f5c <__SDATA_BEGIN__+0x14>
   19390:	1b01a603          	lw	a2,432(gp) # 26f58 <__SDATA_BEGIN__+0x10>
   19394:	081070ef          	jal	ra,20c14 <__muldf3>
   19398:	00050713          	mv	a4,a0
   1939c:	00058813          	mv	a6,a1
   193a0:	00b4f6b3          	and	a3,s1,a1
   193a4:	fca00893          	li	a7,-54
   193a8:	4146d693          	srai	a3,a3,0x14
   193ac:	801007b7          	lui	a5,0x80100
   193b0:	fff78793          	addi	a5,a5,-1 # 800fffff <__BSS_END__+0x800d902f>
   193b4:	c0268693          	addi	a3,a3,-1022
   193b8:	00f87833          	and	a6,a6,a5
   193bc:	011686b3          	add	a3,a3,a7
   193c0:	3fe007b7          	lui	a5,0x3fe00
   193c4:	00f867b3          	or	a5,a6,a5
   193c8:	00d42023          	sw	a3,0(s0)
   193cc:	00c12083          	lw	ra,12(sp)
   193d0:	00812403          	lw	s0,8(sp)
   193d4:	00412483          	lw	s1,4(sp)
   193d8:	00070513          	mv	a0,a4
   193dc:	00078593          	mv	a1,a5
   193e0:	01010113          	addi	sp,sp,16
   193e4:	00008067          	ret

000193e8 <_sbrk_r>:
   193e8:	ff010113          	addi	sp,sp,-16
   193ec:	00812423          	sw	s0,8(sp)
   193f0:	00912223          	sw	s1,4(sp)
   193f4:	00050413          	mv	s0,a0
   193f8:	00058513          	mv	a0,a1
   193fc:	00112623          	sw	ra,12(sp)
   19400:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   19404:	3d8060ef          	jal	ra,1f7dc <_sbrk>
   19408:	fff00793          	li	a5,-1
   1940c:	00f50c63          	beq	a0,a5,19424 <_sbrk_r+0x3c>
   19410:	00c12083          	lw	ra,12(sp)
   19414:	00812403          	lw	s0,8(sp)
   19418:	00412483          	lw	s1,4(sp)
   1941c:	01010113          	addi	sp,sp,16
   19420:	00008067          	ret
   19424:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   19428:	fe0784e3          	beqz	a5,19410 <_sbrk_r+0x28>
   1942c:	00c12083          	lw	ra,12(sp)
   19430:	00f42023          	sw	a5,0(s0)
   19434:	00812403          	lw	s0,8(sp)
   19438:	00412483          	lw	s1,4(sp)
   1943c:	01010113          	addi	sp,sp,16
   19440:	00008067          	ret

00019444 <_sprintf_r>:
   19444:	f6010113          	addi	sp,sp,-160
   19448:	08c10e93          	addi	t4,sp,140
   1944c:	08f12a23          	sw	a5,148(sp)
   19450:	80000337          	lui	t1,0x80000
   19454:	ffff07b7          	lui	a5,0xffff0
   19458:	00058e13          	mv	t3,a1
   1945c:	fff34313          	not	t1,t1
   19460:	08d12623          	sw	a3,140(sp)
   19464:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9238>
   19468:	00810593          	addi	a1,sp,8
   1946c:	000e8693          	mv	a3,t4
   19470:	06112e23          	sw	ra,124(sp)
   19474:	00f12a23          	sw	a5,20(sp)
   19478:	08e12823          	sw	a4,144(sp)
   1947c:	09012c23          	sw	a6,152(sp)
   19480:	09112e23          	sw	a7,156(sp)
   19484:	01c12423          	sw	t3,8(sp)
   19488:	01c12c23          	sw	t3,24(sp)
   1948c:	00612e23          	sw	t1,28(sp)
   19490:	00612823          	sw	t1,16(sp)
   19494:	01d12223          	sw	t4,4(sp)
   19498:	344000ef          	jal	ra,197dc <_svfprintf_r>
   1949c:	00812783          	lw	a5,8(sp)
   194a0:	00078023          	sb	zero,0(a5)
   194a4:	07c12083          	lw	ra,124(sp)
   194a8:	0a010113          	addi	sp,sp,160
   194ac:	00008067          	ret

000194b0 <sprintf>:
   194b0:	00050e13          	mv	t3,a0
   194b4:	f6010113          	addi	sp,sp,-160
   194b8:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   194bc:	08810e93          	addi	t4,sp,136
   194c0:	08f12a23          	sw	a5,148(sp)
   194c4:	80000337          	lui	t1,0x80000
   194c8:	ffff07b7          	lui	a5,0xffff0
   194cc:	fff34313          	not	t1,t1
   194d0:	08c12423          	sw	a2,136(sp)
   194d4:	08d12623          	sw	a3,140(sp)
   194d8:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9238>
   194dc:	00058613          	mv	a2,a1
   194e0:	000e8693          	mv	a3,t4
   194e4:	00810593          	addi	a1,sp,8
   194e8:	06112e23          	sw	ra,124(sp)
   194ec:	00f12a23          	sw	a5,20(sp)
   194f0:	08e12823          	sw	a4,144(sp)
   194f4:	09012c23          	sw	a6,152(sp)
   194f8:	09112e23          	sw	a7,156(sp)
   194fc:	01c12423          	sw	t3,8(sp)
   19500:	01c12c23          	sw	t3,24(sp)
   19504:	00612e23          	sw	t1,28(sp)
   19508:	00612823          	sw	t1,16(sp)
   1950c:	01d12223          	sw	t4,4(sp)
   19510:	2cc000ef          	jal	ra,197dc <_svfprintf_r>
   19514:	00812783          	lw	a5,8(sp)
   19518:	00078023          	sb	zero,0(a5)
   1951c:	07c12083          	lw	ra,124(sp)
   19520:	0a010113          	addi	sp,sp,160
   19524:	00008067          	ret

00019528 <__sread>:
   19528:	ff010113          	addi	sp,sp,-16
   1952c:	00812423          	sw	s0,8(sp)
   19530:	00058413          	mv	s0,a1
   19534:	00e59583          	lh	a1,14(a1)
   19538:	00112623          	sw	ra,12(sp)
   1953c:	041040ef          	jal	ra,1dd7c <_read_r>
   19540:	02054063          	bltz	a0,19560 <__sread+0x38>
   19544:	05042783          	lw	a5,80(s0)
   19548:	00c12083          	lw	ra,12(sp)
   1954c:	00a787b3          	add	a5,a5,a0
   19550:	04f42823          	sw	a5,80(s0)
   19554:	00812403          	lw	s0,8(sp)
   19558:	01010113          	addi	sp,sp,16
   1955c:	00008067          	ret
   19560:	00c45783          	lhu	a5,12(s0)
   19564:	fffff737          	lui	a4,0xfffff
   19568:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd802f>
   1956c:	00e7f7b3          	and	a5,a5,a4
   19570:	00c12083          	lw	ra,12(sp)
   19574:	00f41623          	sh	a5,12(s0)
   19578:	00812403          	lw	s0,8(sp)
   1957c:	01010113          	addi	sp,sp,16
   19580:	00008067          	ret

00019584 <__seofread>:
   19584:	00000513          	li	a0,0
   19588:	00008067          	ret

0001958c <__swrite>:
   1958c:	00c59783          	lh	a5,12(a1)
   19590:	fe010113          	addi	sp,sp,-32
   19594:	00812c23          	sw	s0,24(sp)
   19598:	00912a23          	sw	s1,20(sp)
   1959c:	01212823          	sw	s2,16(sp)
   195a0:	01312623          	sw	s3,12(sp)
   195a4:	00112e23          	sw	ra,28(sp)
   195a8:	1007f713          	andi	a4,a5,256
   195ac:	00058413          	mv	s0,a1
   195b0:	00050493          	mv	s1,a0
   195b4:	00e59583          	lh	a1,14(a1)
   195b8:	00060913          	mv	s2,a2
   195bc:	00068993          	mv	s3,a3
   195c0:	02071e63          	bnez	a4,195fc <__swrite+0x70>
   195c4:	fffff737          	lui	a4,0xfffff
   195c8:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd802f>
   195cc:	00e7f7b3          	and	a5,a5,a4
   195d0:	00f41623          	sh	a5,12(s0)
   195d4:	01812403          	lw	s0,24(sp)
   195d8:	01c12083          	lw	ra,28(sp)
   195dc:	00098693          	mv	a3,s3
   195e0:	00090613          	mv	a2,s2
   195e4:	00c12983          	lw	s3,12(sp)
   195e8:	01012903          	lw	s2,16(sp)
   195ec:	00048513          	mv	a0,s1
   195f0:	01412483          	lw	s1,20(sp)
   195f4:	02010113          	addi	sp,sp,32
   195f8:	0440406f          	j	1d63c <_write_r>
   195fc:	00200693          	li	a3,2
   19600:	00000613          	li	a2,0
   19604:	6a0040ef          	jal	ra,1dca4 <_lseek_r>
   19608:	00c41783          	lh	a5,12(s0)
   1960c:	00e41583          	lh	a1,14(s0)
   19610:	fb5ff06f          	j	195c4 <__swrite+0x38>

00019614 <__sseek>:
   19614:	ff010113          	addi	sp,sp,-16
   19618:	00812423          	sw	s0,8(sp)
   1961c:	00058413          	mv	s0,a1
   19620:	00e59583          	lh	a1,14(a1)
   19624:	00112623          	sw	ra,12(sp)
   19628:	67c040ef          	jal	ra,1dca4 <_lseek_r>
   1962c:	fff00793          	li	a5,-1
   19630:	02f50463          	beq	a0,a5,19658 <__sseek+0x44>
   19634:	00c45783          	lhu	a5,12(s0)
   19638:	00001737          	lui	a4,0x1
   1963c:	00c12083          	lw	ra,12(sp)
   19640:	00e7e7b3          	or	a5,a5,a4
   19644:	04a42823          	sw	a0,80(s0)
   19648:	00f41623          	sh	a5,12(s0)
   1964c:	00812403          	lw	s0,8(sp)
   19650:	01010113          	addi	sp,sp,16
   19654:	00008067          	ret
   19658:	00c45783          	lhu	a5,12(s0)
   1965c:	fffff737          	lui	a4,0xfffff
   19660:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd802f>
   19664:	00e7f7b3          	and	a5,a5,a4
   19668:	00c12083          	lw	ra,12(sp)
   1966c:	00f41623          	sh	a5,12(s0)
   19670:	00812403          	lw	s0,8(sp)
   19674:	01010113          	addi	sp,sp,16
   19678:	00008067          	ret

0001967c <__sclose>:
   1967c:	00e59583          	lh	a1,14(a1)
   19680:	1800406f          	j	1d800 <_close_r>

00019684 <strcpy>:
   19684:	00b567b3          	or	a5,a0,a1
   19688:	0037f793          	andi	a5,a5,3
   1968c:	08079263          	bnez	a5,19710 <strcpy+0x8c>
   19690:	0005a703          	lw	a4,0(a1)
   19694:	7f7f86b7          	lui	a3,0x7f7f8
   19698:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d0faf>
   1969c:	00d777b3          	and	a5,a4,a3
   196a0:	00d787b3          	add	a5,a5,a3
   196a4:	00e7e7b3          	or	a5,a5,a4
   196a8:	00d7e7b3          	or	a5,a5,a3
   196ac:	fff00613          	li	a2,-1
   196b0:	06c79e63          	bne	a5,a2,1972c <strcpy+0xa8>
   196b4:	00050613          	mv	a2,a0
   196b8:	fff00813          	li	a6,-1
   196bc:	00e62023          	sw	a4,0(a2) # 7ff00000 <__BSS_END__+0x7fed9030>
   196c0:	0045a703          	lw	a4,4(a1)
   196c4:	00458593          	addi	a1,a1,4
   196c8:	00460613          	addi	a2,a2,4
   196cc:	00d777b3          	and	a5,a4,a3
   196d0:	00d787b3          	add	a5,a5,a3
   196d4:	00e7e7b3          	or	a5,a5,a4
   196d8:	00d7e7b3          	or	a5,a5,a3
   196dc:	ff0780e3          	beq	a5,a6,196bc <strcpy+0x38>
   196e0:	0005c783          	lbu	a5,0(a1)
   196e4:	0015c703          	lbu	a4,1(a1)
   196e8:	0025c683          	lbu	a3,2(a1)
   196ec:	00f60023          	sb	a5,0(a2)
   196f0:	00078a63          	beqz	a5,19704 <strcpy+0x80>
   196f4:	00e600a3          	sb	a4,1(a2)
   196f8:	00070663          	beqz	a4,19704 <strcpy+0x80>
   196fc:	00d60123          	sb	a3,2(a2)
   19700:	00069463          	bnez	a3,19708 <strcpy+0x84>
   19704:	00008067          	ret
   19708:	000601a3          	sb	zero,3(a2)
   1970c:	00008067          	ret
   19710:	00050793          	mv	a5,a0
   19714:	0005c703          	lbu	a4,0(a1)
   19718:	00178793          	addi	a5,a5,1
   1971c:	00158593          	addi	a1,a1,1
   19720:	fee78fa3          	sb	a4,-1(a5)
   19724:	fe0718e3          	bnez	a4,19714 <strcpy+0x90>
   19728:	00008067          	ret
   1972c:	00050613          	mv	a2,a0
   19730:	fb1ff06f          	j	196e0 <strcpy+0x5c>

00019734 <strncpy>:
   19734:	00a5e7b3          	or	a5,a1,a0
   19738:	0037f793          	andi	a5,a5,3
   1973c:	00050713          	mv	a4,a0
   19740:	06079863          	bnez	a5,197b0 <strncpy+0x7c>
   19744:	00300793          	li	a5,3
   19748:	06c7f463          	bgeu	a5,a2,197b0 <strncpy+0x7c>
   1974c:	feff0337          	lui	t1,0xfeff0
   19750:	808088b7          	lui	a7,0x80808
   19754:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefc8f2f>
   19758:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e10b0>
   1975c:	00300e13          	li	t3,3
   19760:	0005a683          	lw	a3,0(a1)
   19764:	006687b3          	add	a5,a3,t1
   19768:	fff6c813          	not	a6,a3
   1976c:	0107f7b3          	and	a5,a5,a6
   19770:	0117f7b3          	and	a5,a5,a7
   19774:	02079e63          	bnez	a5,197b0 <strncpy+0x7c>
   19778:	00d72023          	sw	a3,0(a4)
   1977c:	ffc60613          	addi	a2,a2,-4
   19780:	00470713          	addi	a4,a4,4
   19784:	00458593          	addi	a1,a1,4
   19788:	fcce6ce3          	bltu	t3,a2,19760 <strncpy+0x2c>
   1978c:	00158593          	addi	a1,a1,1
   19790:	00170793          	addi	a5,a4,1
   19794:	02060463          	beqz	a2,197bc <strncpy+0x88>
   19798:	fff5c683          	lbu	a3,-1(a1)
   1979c:	fff60813          	addi	a6,a2,-1
   197a0:	fed78fa3          	sb	a3,-1(a5)
   197a4:	00068e63          	beqz	a3,197c0 <strncpy+0x8c>
   197a8:	00078713          	mv	a4,a5
   197ac:	00080613          	mv	a2,a6
   197b0:	00158593          	addi	a1,a1,1
   197b4:	00170793          	addi	a5,a4,1
   197b8:	fe0610e3          	bnez	a2,19798 <strncpy+0x64>
   197bc:	00008067          	ret
   197c0:	00c70633          	add	a2,a4,a2
   197c4:	00080a63          	beqz	a6,197d8 <strncpy+0xa4>
   197c8:	00178793          	addi	a5,a5,1
   197cc:	fe078fa3          	sb	zero,-1(a5)
   197d0:	fec79ce3          	bne	a5,a2,197c8 <strncpy+0x94>
   197d4:	00008067          	ret
   197d8:	00008067          	ret

000197dc <_svfprintf_r>:
   197dc:	e1010113          	addi	sp,sp,-496
   197e0:	1e112623          	sw	ra,492(sp)
   197e4:	1f212023          	sw	s2,480(sp)
   197e8:	1d812423          	sw	s8,456(sp)
   197ec:	1da12023          	sw	s10,448(sp)
   197f0:	00058c13          	mv	s8,a1
   197f4:	00060913          	mv	s2,a2
   197f8:	00d12a23          	sw	a3,20(sp)
   197fc:	1e812423          	sw	s0,488(sp)
   19800:	1e912223          	sw	s1,484(sp)
   19804:	1d312e23          	sw	s3,476(sp)
   19808:	1d412c23          	sw	s4,472(sp)
   1980c:	1d512a23          	sw	s5,468(sp)
   19810:	1d612823          	sw	s6,464(sp)
   19814:	1d712623          	sw	s7,460(sp)
   19818:	1d912223          	sw	s9,452(sp)
   1981c:	1bb12e23          	sw	s11,444(sp)
   19820:	00050d13          	mv	s10,a0
   19824:	fe0fd0ef          	jal	ra,17004 <_localeconv_r>
   19828:	00052783          	lw	a5,0(a0)
   1982c:	00078513          	mv	a0,a5
   19830:	02f12823          	sw	a5,48(sp)
   19834:	c85f60ef          	jal	ra,104b8 <strlen>
   19838:	00cc5703          	lhu	a4,12(s8)
   1983c:	0e012823          	sw	zero,240(sp)
   19840:	0e012a23          	sw	zero,244(sp)
   19844:	0e012c23          	sw	zero,248(sp)
   19848:	0e012e23          	sw	zero,252(sp)
   1984c:	08077713          	andi	a4,a4,128
   19850:	02a12623          	sw	a0,44(sp)
   19854:	00070863          	beqz	a4,19864 <_svfprintf_r+0x88>
   19858:	010c2703          	lw	a4,16(s8)
   1985c:	00071463          	bnez	a4,19864 <_svfprintf_r+0x88>
   19860:	58c0106f          	j	1adec <_svfprintf_r+0x1610>
   19864:	10c10793          	addi	a5,sp,268
   19868:	00025737          	lui	a4,0x25
   1986c:	0ef12223          	sw	a5,228(sp)
   19870:	00078893          	mv	a7,a5
   19874:	d7870793          	addi	a5,a4,-648 # 24d78 <__mprec_bigtens+0x28>
   19878:	00025737          	lui	a4,0x25
   1987c:	00f12c23          	sw	a5,24(sp)
   19880:	00090b13          	mv	s6,s2
   19884:	ef470793          	addi	a5,a4,-268 # 24ef4 <zeroes.4469>
   19888:	00f12423          	sw	a5,8(sp)
   1988c:	000b4783          	lbu	a5,0(s6)
   19890:	0e012623          	sw	zero,236(sp)
   19894:	0e012423          	sw	zero,232(sp)
   19898:	02012023          	sw	zero,32(sp)
   1989c:	02012a23          	sw	zero,52(sp)
   198a0:	02012c23          	sw	zero,56(sp)
   198a4:	02012e23          	sw	zero,60(sp)
   198a8:	04012423          	sw	zero,72(sp)
   198ac:	04012623          	sw	zero,76(sp)
   198b0:	00012623          	sw	zero,12(sp)
   198b4:	22078463          	beqz	a5,19adc <_svfprintf_r+0x300>
   198b8:	000b0413          	mv	s0,s6
   198bc:	02500693          	li	a3,37
   198c0:	2cd78463          	beq	a5,a3,19b88 <_svfprintf_r+0x3ac>
   198c4:	00144783          	lbu	a5,1(s0)
   198c8:	00140413          	addi	s0,s0,1
   198cc:	fe079ae3          	bnez	a5,198c0 <_svfprintf_r+0xe4>
   198d0:	416404b3          	sub	s1,s0,s6
   198d4:	21640463          	beq	s0,s6,19adc <_svfprintf_r+0x300>
   198d8:	0ec12683          	lw	a3,236(sp)
   198dc:	0e812783          	lw	a5,232(sp)
   198e0:	0168a023          	sw	s6,0(a7)
   198e4:	009686b3          	add	a3,a3,s1
   198e8:	00178793          	addi	a5,a5,1
   198ec:	0098a223          	sw	s1,4(a7)
   198f0:	0ed12623          	sw	a3,236(sp)
   198f4:	0ef12423          	sw	a5,232(sp)
   198f8:	00700693          	li	a3,7
   198fc:	00888893          	addi	a7,a7,8
   19900:	28f6cc63          	blt	a3,a5,19b98 <_svfprintf_r+0x3bc>
   19904:	00c12703          	lw	a4,12(sp)
   19908:	00044783          	lbu	a5,0(s0)
   1990c:	00970733          	add	a4,a4,s1
   19910:	00e12623          	sw	a4,12(sp)
   19914:	1c078463          	beqz	a5,19adc <_svfprintf_r+0x300>
   19918:	00144483          	lbu	s1,1(s0)
   1991c:	0c0103a3          	sb	zero,199(sp)
   19920:	00140413          	addi	s0,s0,1
   19924:	fff00d93          	li	s11,-1
   19928:	00000993          	li	s3,0
   1992c:	00000a13          	li	s4,0
   19930:	05a00913          	li	s2,90
   19934:	00900a93          	li	s5,9
   19938:	02a00b93          	li	s7,42
   1993c:	00088c93          	mv	s9,a7
   19940:	00140413          	addi	s0,s0,1
   19944:	fe048793          	addi	a5,s1,-32 # 7fffffe0 <__BSS_END__+0x7ffd9010>
   19948:	04f96463          	bltu	s2,a5,19990 <_svfprintf_r+0x1b4>
   1994c:	01812703          	lw	a4,24(sp)
   19950:	00279793          	slli	a5,a5,0x2
   19954:	00e787b3          	add	a5,a5,a4
   19958:	0007a783          	lw	a5,0(a5)
   1995c:	00078067          	jr	a5
   19960:	00000993          	li	s3,0
   19964:	fd048693          	addi	a3,s1,-48
   19968:	00044483          	lbu	s1,0(s0)
   1996c:	00299793          	slli	a5,s3,0x2
   19970:	013787b3          	add	a5,a5,s3
   19974:	00179793          	slli	a5,a5,0x1
   19978:	00f689b3          	add	s3,a3,a5
   1997c:	fd048693          	addi	a3,s1,-48
   19980:	00140413          	addi	s0,s0,1
   19984:	fedaf2e3          	bgeu	s5,a3,19968 <_svfprintf_r+0x18c>
   19988:	fe048793          	addi	a5,s1,-32
   1998c:	fcf970e3          	bgeu	s2,a5,1994c <_svfprintf_r+0x170>
   19990:	000c8893          	mv	a7,s9
   19994:	14048463          	beqz	s1,19adc <_svfprintf_r+0x300>
   19998:	14910623          	sb	s1,332(sp)
   1999c:	0c0103a3          	sb	zero,199(sp)
   199a0:	00100a93          	li	s5,1
   199a4:	00100c93          	li	s9,1
   199a8:	14c10b13          	addi	s6,sp,332
   199ac:	00012823          	sw	zero,16(sp)
   199b0:	00000d93          	li	s11,0
   199b4:	02012423          	sw	zero,40(sp)
   199b8:	02012223          	sw	zero,36(sp)
   199bc:	00012e23          	sw	zero,28(sp)
   199c0:	002a7b93          	andi	s7,s4,2
   199c4:	000b8463          	beqz	s7,199cc <_svfprintf_r+0x1f0>
   199c8:	002a8a93          	addi	s5,s5,2
   199cc:	084a7913          	andi	s2,s4,132
   199d0:	0ec12783          	lw	a5,236(sp)
   199d4:	00091663          	bnez	s2,199e0 <_svfprintf_r+0x204>
   199d8:	41598833          	sub	a6,s3,s5
   199dc:	65004ce3          	bgtz	a6,1a834 <_svfprintf_r+0x1058>
   199e0:	0c714683          	lbu	a3,199(sp)
   199e4:	02068a63          	beqz	a3,19a18 <_svfprintf_r+0x23c>
   199e8:	0e812683          	lw	a3,232(sp)
   199ec:	0c710613          	addi	a2,sp,199
   199f0:	00c8a023          	sw	a2,0(a7)
   199f4:	00178793          	addi	a5,a5,1
   199f8:	00100613          	li	a2,1
   199fc:	00168693          	addi	a3,a3,1
   19a00:	00c8a223          	sw	a2,4(a7)
   19a04:	0ef12623          	sw	a5,236(sp)
   19a08:	0ed12423          	sw	a3,232(sp)
   19a0c:	00700613          	li	a2,7
   19a10:	00888893          	addi	a7,a7,8
   19a14:	4ed64c63          	blt	a2,a3,19f0c <_svfprintf_r+0x730>
   19a18:	020b8a63          	beqz	s7,19a4c <_svfprintf_r+0x270>
   19a1c:	0e812683          	lw	a3,232(sp)
   19a20:	0c810613          	addi	a2,sp,200
   19a24:	00c8a023          	sw	a2,0(a7)
   19a28:	00278793          	addi	a5,a5,2
   19a2c:	00200613          	li	a2,2
   19a30:	00168693          	addi	a3,a3,1
   19a34:	00c8a223          	sw	a2,4(a7)
   19a38:	0ef12623          	sw	a5,236(sp)
   19a3c:	0ed12423          	sw	a3,232(sp)
   19a40:	00700613          	li	a2,7
   19a44:	00888893          	addi	a7,a7,8
   19a48:	6cd64ce3          	blt	a2,a3,1a920 <_svfprintf_r+0x1144>
   19a4c:	08000693          	li	a3,128
   19a50:	44d900e3          	beq	s2,a3,1a690 <_svfprintf_r+0xeb4>
   19a54:	419d8db3          	sub	s11,s11,s9
   19a58:	4fb04ee3          	bgtz	s11,1a754 <_svfprintf_r+0xf78>
   19a5c:	100a7693          	andi	a3,s4,256
   19a60:	2e069ae3          	bnez	a3,1a554 <_svfprintf_r+0xd78>
   19a64:	0e812703          	lw	a4,232(sp)
   19a68:	019787b3          	add	a5,a5,s9
   19a6c:	0168a023          	sw	s6,0(a7)
   19a70:	00170713          	addi	a4,a4,1
   19a74:	0198a223          	sw	s9,4(a7)
   19a78:	0ef12623          	sw	a5,236(sp)
   19a7c:	0ee12423          	sw	a4,232(sp)
   19a80:	00700693          	li	a3,7
   19a84:	5ce6c063          	blt	a3,a4,1a044 <_svfprintf_r+0x868>
   19a88:	00888893          	addi	a7,a7,8
   19a8c:	004a7a13          	andi	s4,s4,4
   19a90:	000a0663          	beqz	s4,19a9c <_svfprintf_r+0x2c0>
   19a94:	415984b3          	sub	s1,s3,s5
   19a98:	5c904663          	bgtz	s1,1a064 <_svfprintf_r+0x888>
   19a9c:	0159d463          	bge	s3,s5,19aa4 <_svfprintf_r+0x2c8>
   19aa0:	000a8993          	mv	s3,s5
   19aa4:	00c12703          	lw	a4,12(sp)
   19aa8:	01370733          	add	a4,a4,s3
   19aac:	00e12623          	sw	a4,12(sp)
   19ab0:	54079ce3          	bnez	a5,1a808 <_svfprintf_r+0x102c>
   19ab4:	01012783          	lw	a5,16(sp)
   19ab8:	0e012423          	sw	zero,232(sp)
   19abc:	00078863          	beqz	a5,19acc <_svfprintf_r+0x2f0>
   19ac0:	01012583          	lw	a1,16(sp)
   19ac4:	000d0513          	mv	a0,s10
   19ac8:	86cfa0ef          	jal	ra,13b34 <_free_r>
   19acc:	10c10893          	addi	a7,sp,268
   19ad0:	00040b13          	mv	s6,s0
   19ad4:	000b4783          	lbu	a5,0(s6)
   19ad8:	de0790e3          	bnez	a5,198b8 <_svfprintf_r+0xdc>
   19adc:	0ec12783          	lw	a5,236(sp)
   19ae0:	00078463          	beqz	a5,19ae8 <_svfprintf_r+0x30c>
   19ae4:	3650106f          	j	1b648 <_svfprintf_r+0x1e6c>
   19ae8:	00cc5703          	lhu	a4,12(s8)
   19aec:	04077713          	andi	a4,a4,64
   19af0:	00070463          	beqz	a4,19af8 <_svfprintf_r+0x31c>
   19af4:	4180206f          	j	1bf0c <_svfprintf_r+0x2730>
   19af8:	1ec12083          	lw	ra,492(sp)
   19afc:	1e812403          	lw	s0,488(sp)
   19b00:	00c12503          	lw	a0,12(sp)
   19b04:	1e412483          	lw	s1,484(sp)
   19b08:	1e012903          	lw	s2,480(sp)
   19b0c:	1dc12983          	lw	s3,476(sp)
   19b10:	1d812a03          	lw	s4,472(sp)
   19b14:	1d412a83          	lw	s5,468(sp)
   19b18:	1d012b03          	lw	s6,464(sp)
   19b1c:	1cc12b83          	lw	s7,460(sp)
   19b20:	1c812c03          	lw	s8,456(sp)
   19b24:	1c412c83          	lw	s9,452(sp)
   19b28:	1c012d03          	lw	s10,448(sp)
   19b2c:	1bc12d83          	lw	s11,444(sp)
   19b30:	1f010113          	addi	sp,sp,496
   19b34:	00008067          	ret
   19b38:	000d0513          	mv	a0,s10
   19b3c:	cc8fd0ef          	jal	ra,17004 <_localeconv_r>
   19b40:	00452783          	lw	a5,4(a0)
   19b44:	00078513          	mv	a0,a5
   19b48:	04f12623          	sw	a5,76(sp)
   19b4c:	96df60ef          	jal	ra,104b8 <strlen>
   19b50:	00050793          	mv	a5,a0
   19b54:	000d0513          	mv	a0,s10
   19b58:	00078493          	mv	s1,a5
   19b5c:	04f12423          	sw	a5,72(sp)
   19b60:	ca4fd0ef          	jal	ra,17004 <_localeconv_r>
   19b64:	00852783          	lw	a5,8(a0)
   19b68:	02f12e23          	sw	a5,60(sp)
   19b6c:	00048463          	beqz	s1,19b74 <_svfprintf_r+0x398>
   19b70:	1840106f          	j	1acf4 <_svfprintf_r+0x1518>
   19b74:	00044483          	lbu	s1,0(s0)
   19b78:	dc9ff06f          	j	19940 <_svfprintf_r+0x164>
   19b7c:	00044483          	lbu	s1,0(s0)
   19b80:	020a6a13          	ori	s4,s4,32
   19b84:	dbdff06f          	j	19940 <_svfprintf_r+0x164>
   19b88:	416404b3          	sub	s1,s0,s6
   19b8c:	d56416e3          	bne	s0,s6,198d8 <_svfprintf_r+0xfc>
   19b90:	00044783          	lbu	a5,0(s0)
   19b94:	d81ff06f          	j	19914 <_svfprintf_r+0x138>
   19b98:	0e410613          	addi	a2,sp,228
   19b9c:	000c0593          	mv	a1,s8
   19ba0:	000d0513          	mv	a0,s10
   19ba4:	504040ef          	jal	ra,1e0a8 <__ssprint_r>
   19ba8:	f40510e3          	bnez	a0,19ae8 <_svfprintf_r+0x30c>
   19bac:	10c10893          	addi	a7,sp,268
   19bb0:	d55ff06f          	j	19904 <_svfprintf_r+0x128>
   19bb4:	008a7793          	andi	a5,s4,8
   19bb8:	000c8893          	mv	a7,s9
   19bbc:	00078463          	beqz	a5,19bc4 <_svfprintf_r+0x3e8>
   19bc0:	0c80106f          	j	1ac88 <_svfprintf_r+0x14ac>
   19bc4:	01412783          	lw	a5,20(sp)
   19bc8:	0b010513          	addi	a0,sp,176
   19bcc:	01912823          	sw	s9,16(sp)
   19bd0:	00778793          	addi	a5,a5,7
   19bd4:	ff87f793          	andi	a5,a5,-8
   19bd8:	0007a583          	lw	a1,0(a5)
   19bdc:	0047a603          	lw	a2,4(a5)
   19be0:	00878793          	addi	a5,a5,8
   19be4:	00f12a23          	sw	a5,20(sp)
   19be8:	5a00a0ef          	jal	ra,24188 <__extenddftf2>
   19bec:	0b012783          	lw	a5,176(sp)
   19bf0:	01012883          	lw	a7,16(sp)
   19bf4:	0ef12823          	sw	a5,240(sp)
   19bf8:	0b412783          	lw	a5,180(sp)
   19bfc:	0ef12a23          	sw	a5,244(sp)
   19c00:	0b812783          	lw	a5,184(sp)
   19c04:	0ef12c23          	sw	a5,248(sp)
   19c08:	0bc12783          	lw	a5,188(sp)
   19c0c:	0ef12e23          	sw	a5,252(sp)
   19c10:	0f010513          	addi	a0,sp,240
   19c14:	01112823          	sw	a7,16(sp)
   19c18:	b80fd0ef          	jal	ra,16f98 <_ldcheck>
   19c1c:	0ca12623          	sw	a0,204(sp)
   19c20:	00200793          	li	a5,2
   19c24:	01012883          	lw	a7,16(sp)
   19c28:	00f51463          	bne	a0,a5,19c30 <_svfprintf_r+0x454>
   19c2c:	6780106f          	j	1b2a4 <_svfprintf_r+0x1ac8>
   19c30:	00100793          	li	a5,1
   19c34:	00f51463          	bne	a0,a5,19c3c <_svfprintf_r+0x460>
   19c38:	0950106f          	j	1b4cc <_svfprintf_r+0x1cf0>
   19c3c:	06100793          	li	a5,97
   19c40:	00f49463          	bne	s1,a5,19c48 <_svfprintf_r+0x46c>
   19c44:	1bc0206f          	j	1be00 <_svfprintf_r+0x2624>
   19c48:	04100793          	li	a5,65
   19c4c:	00f49463          	bne	s1,a5,19c54 <_svfprintf_r+0x478>
   19c50:	54d0106f          	j	1b99c <_svfprintf_r+0x21c0>
   19c54:	fdf4fb93          	andi	s7,s1,-33
   19c58:	fff00793          	li	a5,-1
   19c5c:	05712a23          	sw	s7,84(sp)
   19c60:	00fd9463          	bne	s11,a5,19c68 <_svfprintf_r+0x48c>
   19c64:	2350106f          	j	1b698 <_svfprintf_r+0x1ebc>
   19c68:	04700793          	li	a5,71
   19c6c:	00fb9463          	bne	s7,a5,19c74 <_svfprintf_r+0x498>
   19c70:	2080206f          	j	1be78 <_svfprintf_r+0x269c>
   19c74:	0fc12303          	lw	t1,252(sp)
   19c78:	03412423          	sw	s4,40(sp)
   19c7c:	0f012e03          	lw	t3,240(sp)
   19c80:	0f412e83          	lw	t4,244(sp)
   19c84:	0f812f03          	lw	t5,248(sp)
   19c88:	100a6793          	ori	a5,s4,256
   19c8c:	00035463          	bgez	t1,19c94 <_svfprintf_r+0x4b8>
   19c90:	3bc0206f          	j	1c04c <_svfprintf_r+0x2870>
   19c94:	04012c23          	sw	zero,88(sp)
   19c98:	00078a13          	mv	s4,a5
   19c9c:	00012823          	sw	zero,16(sp)
   19ca0:	04600793          	li	a5,70
   19ca4:	00fb9463          	bne	s7,a5,19cac <_svfprintf_r+0x4d0>
   19ca8:	2d90106f          	j	1b780 <_svfprintf_r+0x1fa4>
   19cac:	04500793          	li	a5,69
   19cb0:	05112223          	sw	a7,68(sp)
   19cb4:	00fb8463          	beq	s7,a5,19cbc <_svfprintf_r+0x4e0>
   19cb8:	35d0106f          	j	1b814 <_svfprintf_r+0x2038>
   19cbc:	001d8913          	addi	s2,s11,1
   19cc0:	0b010a93          	addi	s5,sp,176
   19cc4:	00090693          	mv	a3,s2
   19cc8:	0dc10813          	addi	a6,sp,220
   19ccc:	0d010793          	addi	a5,sp,208
   19cd0:	0cc10713          	addi	a4,sp,204
   19cd4:	00200613          	li	a2,2
   19cd8:	000a8593          	mv	a1,s5
   19cdc:	000d0513          	mv	a0,s10
   19ce0:	0bc12823          	sw	t3,176(sp)
   19ce4:	05c12023          	sw	t3,64(sp)
   19ce8:	0bd12a23          	sw	t4,180(sp)
   19cec:	03d12223          	sw	t4,36(sp)
   19cf0:	0be12c23          	sw	t5,184(sp)
   19cf4:	03e12023          	sw	t5,32(sp)
   19cf8:	0a612e23          	sw	t1,188(sp)
   19cfc:	00612e23          	sw	t1,28(sp)
   19d00:	800fc0ef          	jal	ra,15d00 <_ldtoa_r>
   19d04:	01c12303          	lw	t1,28(sp)
   19d08:	02012f03          	lw	t5,32(sp)
   19d0c:	02412e83          	lw	t4,36(sp)
   19d10:	04012e03          	lw	t3,64(sp)
   19d14:	04412883          	lw	a7,68(sp)
   19d18:	00050b13          	mv	s6,a0
   19d1c:	01250933          	add	s2,a0,s2
   19d20:	0a010c93          	addi	s9,sp,160
   19d24:	000c8593          	mv	a1,s9
   19d28:	000a8513          	mv	a0,s5
   19d2c:	01112e23          	sw	a7,28(sp)
   19d30:	0bc12823          	sw	t3,176(sp)
   19d34:	0bd12a23          	sw	t4,180(sp)
   19d38:	0be12c23          	sw	t5,184(sp)
   19d3c:	0a612e23          	sw	t1,188(sp)
   19d40:	0a012023          	sw	zero,160(sp)
   19d44:	0a012223          	sw	zero,164(sp)
   19d48:	0a012423          	sw	zero,168(sp)
   19d4c:	0a012623          	sw	zero,172(sp)
   19d50:	544070ef          	jal	ra,21294 <__eqtf2>
   19d54:	01c12883          	lw	a7,28(sp)
   19d58:	00090713          	mv	a4,s2
   19d5c:	02050263          	beqz	a0,19d80 <_svfprintf_r+0x5a4>
   19d60:	0dc12703          	lw	a4,220(sp)
   19d64:	01277e63          	bgeu	a4,s2,19d80 <_svfprintf_r+0x5a4>
   19d68:	03000693          	li	a3,48
   19d6c:	00170793          	addi	a5,a4,1
   19d70:	0cf12e23          	sw	a5,220(sp)
   19d74:	00d70023          	sb	a3,0(a4)
   19d78:	0dc12703          	lw	a4,220(sp)
   19d7c:	ff2768e3          	bltu	a4,s2,19d6c <_svfprintf_r+0x590>
   19d80:	416707b3          	sub	a5,a4,s6
   19d84:	02f12023          	sw	a5,32(sp)
   19d88:	0cc12703          	lw	a4,204(sp)
   19d8c:	04700793          	li	a5,71
   19d90:	00e12e23          	sw	a4,28(sp)
   19d94:	05412703          	lw	a4,84(sp)
   19d98:	00f71463          	bne	a4,a5,19da0 <_svfprintf_r+0x5c4>
   19d9c:	1350106f          	j	1b6d0 <_svfprintf_r+0x1ef4>
   19da0:	05412703          	lw	a4,84(sp)
   19da4:	04600793          	li	a5,70
   19da8:	00f71463          	bne	a4,a5,19db0 <_svfprintf_r+0x5d4>
   19dac:	36d0106f          	j	1b918 <_svfprintf_r+0x213c>
   19db0:	01c12783          	lw	a5,28(sp)
   19db4:	05412703          	lw	a4,84(sp)
   19db8:	04100613          	li	a2,65
   19dbc:	fff78a93          	addi	s5,a5,-1
   19dc0:	0d512623          	sw	s5,204(sp)
   19dc4:	0ff4f793          	andi	a5,s1,255
   19dc8:	00000693          	li	a3,0
   19dcc:	00c71863          	bne	a4,a2,19ddc <_svfprintf_r+0x600>
   19dd0:	00f78793          	addi	a5,a5,15
   19dd4:	0ff7f793          	andi	a5,a5,255
   19dd8:	00100693          	li	a3,1
   19ddc:	0cf10a23          	sb	a5,212(sp)
   19de0:	02b00793          	li	a5,43
   19de4:	000ada63          	bgez	s5,19df8 <_svfprintf_r+0x61c>
   19de8:	01c12783          	lw	a5,28(sp)
   19dec:	00100a93          	li	s5,1
   19df0:	40fa8ab3          	sub	s5,s5,a5
   19df4:	02d00793          	li	a5,45
   19df8:	0cf10aa3          	sb	a5,213(sp)
   19dfc:	00900793          	li	a5,9
   19e00:	0157c463          	blt	a5,s5,19e08 <_svfprintf_r+0x62c>
   19e04:	1140206f          	j	1bf18 <_svfprintf_r+0x273c>
   19e08:	0e310b93          	addi	s7,sp,227
   19e0c:	000b8c93          	mv	s9,s7
   19e10:	06300a13          	li	s4,99
   19e14:	00812e23          	sw	s0,28(sp)
   19e18:	00088d93          	mv	s11,a7
   19e1c:	00a00593          	li	a1,10
   19e20:	000a8513          	mv	a0,s5
   19e24:	1490a0ef          	jal	ra,2476c <__modsi3>
   19e28:	03050793          	addi	a5,a0,48
   19e2c:	fefc8fa3          	sb	a5,-1(s9)
   19e30:	000a8513          	mv	a0,s5
   19e34:	00a00593          	li	a1,10
   19e38:	000a8413          	mv	s0,s5
   19e3c:	0ad0a0ef          	jal	ra,246e8 <__divsi3>
   19e40:	000c8913          	mv	s2,s9
   19e44:	00050a93          	mv	s5,a0
   19e48:	fffc8c93          	addi	s9,s9,-1
   19e4c:	fc8a48e3          	blt	s4,s0,19e1c <_svfprintf_r+0x640>
   19e50:	03050613          	addi	a2,a0,48
   19e54:	0ff67613          	andi	a2,a2,255
   19e58:	ffe90793          	addi	a5,s2,-2
   19e5c:	fecc8fa3          	sb	a2,-1(s9)
   19e60:	01c12403          	lw	s0,28(sp)
   19e64:	000d8893          	mv	a7,s11
   19e68:	0177e463          	bltu	a5,s7,19e70 <_svfprintf_r+0x694>
   19e6c:	3a00206f          	j	1c20c <_svfprintf_r+0x2a30>
   19e70:	0d610693          	addi	a3,sp,214
   19e74:	0080006f          	j	19e7c <_svfprintf_r+0x6a0>
   19e78:	0007c603          	lbu	a2,0(a5)
   19e7c:	00c68023          	sb	a2,0(a3)
   19e80:	00178793          	addi	a5,a5,1
   19e84:	00168693          	addi	a3,a3,1
   19e88:	ff7798e3          	bne	a5,s7,19e78 <_svfprintf_r+0x69c>
   19e8c:	0e510793          	addi	a5,sp,229
   19e90:	412787b3          	sub	a5,a5,s2
   19e94:	0d610713          	addi	a4,sp,214
   19e98:	00f707b3          	add	a5,a4,a5
   19e9c:	0d410693          	addi	a3,sp,212
   19ea0:	40d787b3          	sub	a5,a5,a3
   19ea4:	02f12c23          	sw	a5,56(sp)
   19ea8:	02012703          	lw	a4,32(sp)
   19eac:	03812683          	lw	a3,56(sp)
   19eb0:	00100793          	li	a5,1
   19eb4:	00d70cb3          	add	s9,a4,a3
   19eb8:	00e7c463          	blt	a5,a4,19ec0 <_svfprintf_r+0x6e4>
   19ebc:	2380206f          	j	1c0f4 <_svfprintf_r+0x2918>
   19ec0:	02c12783          	lw	a5,44(sp)
   19ec4:	00fc8cb3          	add	s9,s9,a5
   19ec8:	02812783          	lw	a5,40(sp)
   19ecc:	fffcca93          	not	s5,s9
   19ed0:	41fada93          	srai	s5,s5,0x1f
   19ed4:	bff7fa13          	andi	s4,a5,-1025
   19ed8:	100a6a13          	ori	s4,s4,256
   19edc:	015cfab3          	and	s5,s9,s5
   19ee0:	02012423          	sw	zero,40(sp)
   19ee4:	02012223          	sw	zero,36(sp)
   19ee8:	00012e23          	sw	zero,28(sp)
   19eec:	05812783          	lw	a5,88(sp)
   19ef0:	00079463          	bnez	a5,19ef8 <_svfprintf_r+0x71c>
   19ef4:	0510106f          	j	1b744 <_svfprintf_r+0x1f68>
   19ef8:	02d00793          	li	a5,45
   19efc:	0cf103a3          	sb	a5,199(sp)
   19f00:	00000d93          	li	s11,0
   19f04:	001a8a93          	addi	s5,s5,1
   19f08:	ab9ff06f          	j	199c0 <_svfprintf_r+0x1e4>
   19f0c:	0e410613          	addi	a2,sp,228
   19f10:	000c0593          	mv	a1,s8
   19f14:	000d0513          	mv	a0,s10
   19f18:	190040ef          	jal	ra,1e0a8 <__ssprint_r>
   19f1c:	100510e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   19f20:	0ec12783          	lw	a5,236(sp)
   19f24:	10c10893          	addi	a7,sp,268
   19f28:	af1ff06f          	j	19a18 <_svfprintf_r+0x23c>
   19f2c:	0e812683          	lw	a3,232(sp)
   19f30:	00178c93          	addi	s9,a5,1
   19f34:	02012783          	lw	a5,32(sp)
   19f38:	00100613          	li	a2,1
   19f3c:	0168a023          	sw	s6,0(a7)
   19f40:	00168493          	addi	s1,a3,1
   19f44:	00888913          	addi	s2,a7,8
   19f48:	36f658e3          	bge	a2,a5,1aab8 <_svfprintf_r+0x12dc>
   19f4c:	00100793          	li	a5,1
   19f50:	00f8a223          	sw	a5,4(a7)
   19f54:	0f912623          	sw	s9,236(sp)
   19f58:	0e912423          	sw	s1,232(sp)
   19f5c:	00700793          	li	a5,7
   19f60:	4a97c0e3          	blt	a5,s1,1ac00 <_svfprintf_r+0x1424>
   19f64:	02c12783          	lw	a5,44(sp)
   19f68:	03012703          	lw	a4,48(sp)
   19f6c:	00148493          	addi	s1,s1,1
   19f70:	00fc8cb3          	add	s9,s9,a5
   19f74:	00f92223          	sw	a5,4(s2)
   19f78:	00e92023          	sw	a4,0(s2)
   19f7c:	0f912623          	sw	s9,236(sp)
   19f80:	0e912423          	sw	s1,232(sp)
   19f84:	00700793          	li	a5,7
   19f88:	00890913          	addi	s2,s2,8
   19f8c:	4897cce3          	blt	a5,s1,1ac24 <_svfprintf_r+0x1448>
   19f90:	0f012783          	lw	a5,240(sp)
   19f94:	00148613          	addi	a2,s1,1
   19f98:	0a010593          	addi	a1,sp,160
   19f9c:	0af12823          	sw	a5,176(sp)
   19fa0:	0f412783          	lw	a5,244(sp)
   19fa4:	0b010513          	addi	a0,sp,176
   19fa8:	00c12e23          	sw	a2,28(sp)
   19fac:	0af12a23          	sw	a5,180(sp)
   19fb0:	0f812783          	lw	a5,248(sp)
   19fb4:	0a012023          	sw	zero,160(sp)
   19fb8:	0a012223          	sw	zero,164(sp)
   19fbc:	0af12c23          	sw	a5,184(sp)
   19fc0:	0fc12783          	lw	a5,252(sp)
   19fc4:	0a012423          	sw	zero,168(sp)
   19fc8:	0a012623          	sw	zero,172(sp)
   19fcc:	0af12e23          	sw	a5,188(sp)
   19fd0:	2c4070ef          	jal	ra,21294 <__eqtf2>
   19fd4:	01c12603          	lw	a2,28(sp)
   19fd8:	02012783          	lw	a5,32(sp)
   19fdc:	00890893          	addi	a7,s2,8
   19fe0:	00060693          	mv	a3,a2
   19fe4:	fff78d93          	addi	s11,a5,-1
   19fe8:	2e050ce3          	beqz	a0,1aae0 <_svfprintf_r+0x1304>
   19fec:	001b0713          	addi	a4,s6,1
   19ff0:	01bc8cb3          	add	s9,s9,s11
   19ff4:	00e92023          	sw	a4,0(s2)
   19ff8:	01b92223          	sw	s11,4(s2)
   19ffc:	0f912623          	sw	s9,236(sp)
   1a000:	0ec12423          	sw	a2,232(sp)
   1a004:	00700793          	li	a5,7
   1a008:	00c7d463          	bge	a5,a2,1a010 <_svfprintf_r+0x834>
   1a00c:	0180106f          	j	1b024 <_svfprintf_r+0x1848>
   1a010:	01090793          	addi	a5,s2,16
   1a014:	00248693          	addi	a3,s1,2
   1a018:	00088913          	mv	s2,a7
   1a01c:	00078893          	mv	a7,a5
   1a020:	03812603          	lw	a2,56(sp)
   1a024:	0d410713          	addi	a4,sp,212
   1a028:	00e92023          	sw	a4,0(s2)
   1a02c:	019607b3          	add	a5,a2,s9
   1a030:	00c92223          	sw	a2,4(s2)
   1a034:	0ef12623          	sw	a5,236(sp)
   1a038:	0ed12423          	sw	a3,232(sp)
   1a03c:	00700713          	li	a4,7
   1a040:	a4d756e3          	bge	a4,a3,19a8c <_svfprintf_r+0x2b0>
   1a044:	0e410613          	addi	a2,sp,228
   1a048:	000c0593          	mv	a1,s8
   1a04c:	000d0513          	mv	a0,s10
   1a050:	058040ef          	jal	ra,1e0a8 <__ssprint_r>
   1a054:	7c051463          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a058:	0ec12783          	lw	a5,236(sp)
   1a05c:	10c10893          	addi	a7,sp,268
   1a060:	a2dff06f          	j	19a8c <_svfprintf_r+0x2b0>
   1a064:	01000693          	li	a3,16
   1a068:	0e812703          	lw	a4,232(sp)
   1a06c:	0096c463          	blt	a3,s1,1a074 <_svfprintf_r+0x898>
   1a070:	1210106f          	j	1b990 <_svfprintf_r+0x21b4>
   1a074:	000256b7          	lui	a3,0x25
   1a078:	ee468e93          	addi	t4,a3,-284 # 24ee4 <blanks.4468>
   1a07c:	01000913          	li	s2,16
   1a080:	00700a13          	li	s4,7
   1a084:	000e8b13          	mv	s6,t4
   1a088:	00c0006f          	j	1a094 <_svfprintf_r+0x8b8>
   1a08c:	ff048493          	addi	s1,s1,-16
   1a090:	04995663          	bge	s2,s1,1a0dc <_svfprintf_r+0x900>
   1a094:	01078793          	addi	a5,a5,16
   1a098:	00170713          	addi	a4,a4,1
   1a09c:	0168a023          	sw	s6,0(a7)
   1a0a0:	0128a223          	sw	s2,4(a7)
   1a0a4:	0ef12623          	sw	a5,236(sp)
   1a0a8:	0ee12423          	sw	a4,232(sp)
   1a0ac:	00888893          	addi	a7,a7,8
   1a0b0:	fcea5ee3          	bge	s4,a4,1a08c <_svfprintf_r+0x8b0>
   1a0b4:	0e410613          	addi	a2,sp,228
   1a0b8:	000c0593          	mv	a1,s8
   1a0bc:	000d0513          	mv	a0,s10
   1a0c0:	7e9030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a0c4:	74051c63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a0c8:	ff048493          	addi	s1,s1,-16
   1a0cc:	0ec12783          	lw	a5,236(sp)
   1a0d0:	0e812703          	lw	a4,232(sp)
   1a0d4:	10c10893          	addi	a7,sp,268
   1a0d8:	fa994ee3          	blt	s2,s1,1a094 <_svfprintf_r+0x8b8>
   1a0dc:	000b0e93          	mv	t4,s6
   1a0e0:	009787b3          	add	a5,a5,s1
   1a0e4:	00170713          	addi	a4,a4,1
   1a0e8:	01d8a023          	sw	t4,0(a7)
   1a0ec:	0098a223          	sw	s1,4(a7)
   1a0f0:	0ef12623          	sw	a5,236(sp)
   1a0f4:	0ee12423          	sw	a4,232(sp)
   1a0f8:	00700693          	li	a3,7
   1a0fc:	9ae6d0e3          	bge	a3,a4,19a9c <_svfprintf_r+0x2c0>
   1a100:	0e410613          	addi	a2,sp,228
   1a104:	000c0593          	mv	a1,s8
   1a108:	000d0513          	mv	a0,s10
   1a10c:	79d030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a110:	70051663          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a114:	0ec12783          	lw	a5,236(sp)
   1a118:	985ff06f          	j	19a9c <_svfprintf_r+0x2c0>
   1a11c:	01412783          	lw	a5,20(sp)
   1a120:	0c0103a3          	sb	zero,199(sp)
   1a124:	000c8893          	mv	a7,s9
   1a128:	0007ab03          	lw	s6,0(a5)
   1a12c:	00478913          	addi	s2,a5,4
   1a130:	4e0b02e3          	beqz	s6,1ae14 <_svfprintf_r+0x1638>
   1a134:	fff00793          	li	a5,-1
   1a138:	00fd9463          	bne	s11,a5,1a140 <_svfprintf_r+0x964>
   1a13c:	1fc0106f          	j	1b338 <_svfprintf_r+0x1b5c>
   1a140:	000d8613          	mv	a2,s11
   1a144:	00000593          	li	a1,0
   1a148:	000b0513          	mv	a0,s6
   1a14c:	01912a23          	sw	s9,20(sp)
   1a150:	84dfd0ef          	jal	ra,1799c <memchr>
   1a154:	00a12823          	sw	a0,16(sp)
   1a158:	01412883          	lw	a7,20(sp)
   1a15c:	00051463          	bnez	a0,1a164 <_svfprintf_r+0x988>
   1a160:	75c0106f          	j	1b8bc <_svfprintf_r+0x20e0>
   1a164:	01012783          	lw	a5,16(sp)
   1a168:	01212a23          	sw	s2,20(sp)
   1a16c:	00012823          	sw	zero,16(sp)
   1a170:	41678cb3          	sub	s9,a5,s6
   1a174:	0c714783          	lbu	a5,199(sp)
   1a178:	fffcca93          	not	s5,s9
   1a17c:	41fada93          	srai	s5,s5,0x1f
   1a180:	02012423          	sw	zero,40(sp)
   1a184:	02012223          	sw	zero,36(sp)
   1a188:	00012e23          	sw	zero,28(sp)
   1a18c:	015cfab3          	and	s5,s9,s5
   1a190:	00000d93          	li	s11,0
   1a194:	820786e3          	beqz	a5,199c0 <_svfprintf_r+0x1e4>
   1a198:	001a8a93          	addi	s5,s5,1
   1a19c:	825ff06f          	j	199c0 <_svfprintf_r+0x1e4>
   1a1a0:	01412703          	lw	a4,20(sp)
   1a1a4:	000c8893          	mv	a7,s9
   1a1a8:	0c0103a3          	sb	zero,199(sp)
   1a1ac:	00072783          	lw	a5,0(a4)
   1a1b0:	00470713          	addi	a4,a4,4
   1a1b4:	00e12a23          	sw	a4,20(sp)
   1a1b8:	14f10623          	sb	a5,332(sp)
   1a1bc:	00100a93          	li	s5,1
   1a1c0:	00100c93          	li	s9,1
   1a1c4:	14c10b13          	addi	s6,sp,332
   1a1c8:	fe4ff06f          	j	199ac <_svfprintf_r+0x1d0>
   1a1cc:	00044483          	lbu	s1,0(s0)
   1a1d0:	004a6a13          	ori	s4,s4,4
   1a1d4:	f6cff06f          	j	19940 <_svfprintf_r+0x164>
   1a1d8:	01412683          	lw	a3,20(sp)
   1a1dc:	020a7793          	andi	a5,s4,32
   1a1e0:	000c8893          	mv	a7,s9
   1a1e4:	0006a703          	lw	a4,0(a3)
   1a1e8:	00468693          	addi	a3,a3,4
   1a1ec:	00d12a23          	sw	a3,20(sp)
   1a1f0:	280790e3          	bnez	a5,1ac70 <_svfprintf_r+0x1494>
   1a1f4:	010a7793          	andi	a5,s4,16
   1a1f8:	00078463          	beqz	a5,1a200 <_svfprintf_r+0xa24>
   1a1fc:	12c0106f          	j	1b328 <_svfprintf_r+0x1b4c>
   1a200:	040a7793          	andi	a5,s4,64
   1a204:	00078463          	beqz	a5,1a20c <_svfprintf_r+0xa30>
   1a208:	3d80106f          	j	1b5e0 <_svfprintf_r+0x1e04>
   1a20c:	200a7a13          	andi	s4,s4,512
   1a210:	000a1463          	bnez	s4,1a218 <_svfprintf_r+0xa3c>
   1a214:	1140106f          	j	1b328 <_svfprintf_r+0x1b4c>
   1a218:	00c12783          	lw	a5,12(sp)
   1a21c:	00040b13          	mv	s6,s0
   1a220:	00f70023          	sb	a5,0(a4)
   1a224:	8b1ff06f          	j	19ad4 <_svfprintf_r+0x2f8>
   1a228:	00044483          	lbu	s1,0(s0)
   1a22c:	06c00793          	li	a5,108
   1a230:	38f48ee3          	beq	s1,a5,1adcc <_svfprintf_r+0x15f0>
   1a234:	010a6a13          	ori	s4,s4,16
   1a238:	f08ff06f          	j	19940 <_svfprintf_r+0x164>
   1a23c:	01412703          	lw	a4,20(sp)
   1a240:	ffff87b7          	lui	a5,0xffff8
   1a244:	8307c793          	xori	a5,a5,-2000
   1a248:	0cf11423          	sh	a5,200(sp)
   1a24c:	00470793          	addi	a5,a4,4
   1a250:	00f12a23          	sw	a5,20(sp)
   1a254:	00072903          	lw	s2,0(a4)
   1a258:	000257b7          	lui	a5,0x25
   1a25c:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1a260:	000c8893          	mv	a7,s9
   1a264:	02f12a23          	sw	a5,52(sp)
   1a268:	00000c93          	li	s9,0
   1a26c:	002a6b93          	ori	s7,s4,2
   1a270:	00200793          	li	a5,2
   1a274:	07800493          	li	s1,120
   1a278:	0c0103a3          	sb	zero,199(sp)
   1a27c:	fff00713          	li	a4,-1
   1a280:	20ed8663          	beq	s11,a4,1a48c <_svfprintf_r+0xcb0>
   1a284:	01996733          	or	a4,s2,s9
   1a288:	f7fbfa13          	andi	s4,s7,-129
   1a28c:	1e071e63          	bnez	a4,1a488 <_svfprintf_r+0xcac>
   1a290:	260d9463          	bnez	s11,1a4f8 <_svfprintf_r+0xd1c>
   1a294:	1c079063          	bnez	a5,1a454 <_svfprintf_r+0xc78>
   1a298:	001bfc93          	andi	s9,s7,1
   1a29c:	1b010b13          	addi	s6,sp,432
   1a2a0:	1c0c90e3          	bnez	s9,1ac60 <_svfprintf_r+0x1484>
   1a2a4:	000c8a93          	mv	s5,s9
   1a2a8:	01bcd463          	bge	s9,s11,1a2b0 <_svfprintf_r+0xad4>
   1a2ac:	000d8a93          	mv	s5,s11
   1a2b0:	0c714783          	lbu	a5,199(sp)
   1a2b4:	00012823          	sw	zero,16(sp)
   1a2b8:	02012423          	sw	zero,40(sp)
   1a2bc:	02012223          	sw	zero,36(sp)
   1a2c0:	00012e23          	sw	zero,28(sp)
   1a2c4:	ec079ae3          	bnez	a5,1a198 <_svfprintf_r+0x9bc>
   1a2c8:	ef8ff06f          	j	199c0 <_svfprintf_r+0x1e4>
   1a2cc:	000c8893          	mv	a7,s9
   1a2d0:	010a6a13          	ori	s4,s4,16
   1a2d4:	020a7793          	andi	a5,s4,32
   1a2d8:	06078ce3          	beqz	a5,1ab50 <_svfprintf_r+0x1374>
   1a2dc:	01412783          	lw	a5,20(sp)
   1a2e0:	00778b13          	addi	s6,a5,7
   1a2e4:	ff8b7b13          	andi	s6,s6,-8
   1a2e8:	000b2903          	lw	s2,0(s6)
   1a2ec:	004b2c83          	lw	s9,4(s6)
   1a2f0:	008b0793          	addi	a5,s6,8
   1a2f4:	00f12a23          	sw	a5,20(sp)
   1a2f8:	bffa7b93          	andi	s7,s4,-1025
   1a2fc:	00000793          	li	a5,0
   1a300:	f79ff06f          	j	1a278 <_svfprintf_r+0xa9c>
   1a304:	00044483          	lbu	s1,0(s0)
   1a308:	06800793          	li	a5,104
   1a30c:	2cf488e3          	beq	s1,a5,1addc <_svfprintf_r+0x1600>
   1a310:	040a6a13          	ori	s4,s4,64
   1a314:	e2cff06f          	j	19940 <_svfprintf_r+0x164>
   1a318:	000c8893          	mv	a7,s9
   1a31c:	010a6b93          	ori	s7,s4,16
   1a320:	020bf793          	andi	a5,s7,32
   1a324:	04078ce3          	beqz	a5,1ab7c <_svfprintf_r+0x13a0>
   1a328:	01412783          	lw	a5,20(sp)
   1a32c:	00778b13          	addi	s6,a5,7
   1a330:	ff8b7b13          	andi	s6,s6,-8
   1a334:	008b0793          	addi	a5,s6,8
   1a338:	00f12a23          	sw	a5,20(sp)
   1a33c:	000b2903          	lw	s2,0(s6)
   1a340:	004b2c83          	lw	s9,4(s6)
   1a344:	00100793          	li	a5,1
   1a348:	f31ff06f          	j	1a278 <_svfprintf_r+0xa9c>
   1a34c:	00044483          	lbu	s1,0(s0)
   1a350:	008a6a13          	ori	s4,s4,8
   1a354:	decff06f          	j	19940 <_svfprintf_r+0x164>
   1a358:	01412783          	lw	a5,20(sp)
   1a35c:	00044483          	lbu	s1,0(s0)
   1a360:	0007a983          	lw	s3,0(a5)
   1a364:	00478793          	addi	a5,a5,4
   1a368:	00f12a23          	sw	a5,20(sp)
   1a36c:	dc09da63          	bgez	s3,19940 <_svfprintf_r+0x164>
   1a370:	413009b3          	neg	s3,s3
   1a374:	004a6a13          	ori	s4,s4,4
   1a378:	dc8ff06f          	j	19940 <_svfprintf_r+0x164>
   1a37c:	00044483          	lbu	s1,0(s0)
   1a380:	001a6a13          	ori	s4,s4,1
   1a384:	dbcff06f          	j	19940 <_svfprintf_r+0x164>
   1a388:	0c714783          	lbu	a5,199(sp)
   1a38c:	00044483          	lbu	s1,0(s0)
   1a390:	da079863          	bnez	a5,19940 <_svfprintf_r+0x164>
   1a394:	02000793          	li	a5,32
   1a398:	0cf103a3          	sb	a5,199(sp)
   1a39c:	da4ff06f          	j	19940 <_svfprintf_r+0x164>
   1a3a0:	00044483          	lbu	s1,0(s0)
   1a3a4:	080a6a13          	ori	s4,s4,128
   1a3a8:	d98ff06f          	j	19940 <_svfprintf_r+0x164>
   1a3ac:	00044483          	lbu	s1,0(s0)
   1a3b0:	00140713          	addi	a4,s0,1
   1a3b4:	01749463          	bne	s1,s7,1a3bc <_svfprintf_r+0xbe0>
   1a3b8:	5fd0106f          	j	1c1b4 <_svfprintf_r+0x29d8>
   1a3bc:	fd048693          	addi	a3,s1,-48
   1a3c0:	00070413          	mv	s0,a4
   1a3c4:	00000d93          	li	s11,0
   1a3c8:	d6daee63          	bltu	s5,a3,19944 <_svfprintf_r+0x168>
   1a3cc:	00044483          	lbu	s1,0(s0)
   1a3d0:	002d9793          	slli	a5,s11,0x2
   1a3d4:	01b787b3          	add	a5,a5,s11
   1a3d8:	00179793          	slli	a5,a5,0x1
   1a3dc:	00d78db3          	add	s11,a5,a3
   1a3e0:	fd048693          	addi	a3,s1,-48
   1a3e4:	00140413          	addi	s0,s0,1
   1a3e8:	fedaf2e3          	bgeu	s5,a3,1a3cc <_svfprintf_r+0xbf0>
   1a3ec:	d58ff06f          	j	19944 <_svfprintf_r+0x168>
   1a3f0:	02b00793          	li	a5,43
   1a3f4:	00044483          	lbu	s1,0(s0)
   1a3f8:	0cf103a3          	sb	a5,199(sp)
   1a3fc:	d44ff06f          	j	19940 <_svfprintf_r+0x164>
   1a400:	000c8893          	mv	a7,s9
   1a404:	010a6a13          	ori	s4,s4,16
   1a408:	020a7793          	andi	a5,s4,32
   1a40c:	7a078063          	beqz	a5,1abac <_svfprintf_r+0x13d0>
   1a410:	01412783          	lw	a5,20(sp)
   1a414:	00778b13          	addi	s6,a5,7
   1a418:	ff8b7b13          	andi	s6,s6,-8
   1a41c:	004b2783          	lw	a5,4(s6)
   1a420:	000b2903          	lw	s2,0(s6)
   1a424:	008b0713          	addi	a4,s6,8
   1a428:	00e12a23          	sw	a4,20(sp)
   1a42c:	00078c93          	mv	s9,a5
   1a430:	7a07c663          	bltz	a5,1abdc <_svfprintf_r+0x1400>
   1a434:	fff00793          	li	a5,-1
   1a438:	000a0b93          	mv	s7,s4
   1a43c:	02fd8463          	beq	s11,a5,1a464 <_svfprintf_r+0xc88>
   1a440:	019967b3          	or	a5,s2,s9
   1a444:	f7fa7b93          	andi	s7,s4,-129
   1a448:	00079e63          	bnez	a5,1a464 <_svfprintf_r+0xc88>
   1a44c:	020d9263          	bnez	s11,1a470 <_svfprintf_r+0xc94>
   1a450:	000b8a13          	mv	s4,s7
   1a454:	00000d93          	li	s11,0
   1a458:	00000c93          	li	s9,0
   1a45c:	1b010b13          	addi	s6,sp,432
   1a460:	e45ff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1a464:	400c96e3          	bnez	s9,1b070 <_svfprintf_r+0x1894>
   1a468:	00900793          	li	a5,9
   1a46c:	4127e2e3          	bltu	a5,s2,1b070 <_svfprintf_r+0x1894>
   1a470:	03090913          	addi	s2,s2,48
   1a474:	1b2107a3          	sb	s2,431(sp)
   1a478:	000b8a13          	mv	s4,s7
   1a47c:	00100c93          	li	s9,1
   1a480:	1af10b13          	addi	s6,sp,431
   1a484:	e21ff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1a488:	000a0b93          	mv	s7,s4
   1a48c:	00100713          	li	a4,1
   1a490:	fce78ae3          	beq	a5,a4,1a464 <_svfprintf_r+0xc88>
   1a494:	00200713          	li	a4,2
   1a498:	06e78c63          	beq	a5,a4,1a510 <_svfprintf_r+0xd34>
   1a49c:	1b010b13          	addi	s6,sp,432
   1a4a0:	01dc9713          	slli	a4,s9,0x1d
   1a4a4:	00797793          	andi	a5,s2,7
   1a4a8:	00395913          	srli	s2,s2,0x3
   1a4ac:	03078793          	addi	a5,a5,48
   1a4b0:	01276933          	or	s2,a4,s2
   1a4b4:	003cdc93          	srli	s9,s9,0x3
   1a4b8:	fefb0fa3          	sb	a5,-1(s6)
   1a4bc:	01996733          	or	a4,s2,s9
   1a4c0:	000b0613          	mv	a2,s6
   1a4c4:	fffb0b13          	addi	s6,s6,-1
   1a4c8:	fc071ce3          	bnez	a4,1a4a0 <_svfprintf_r+0xcc4>
   1a4cc:	001bf693          	andi	a3,s7,1
   1a4d0:	06068a63          	beqz	a3,1a544 <_svfprintf_r+0xd68>
   1a4d4:	03000693          	li	a3,48
   1a4d8:	06d78663          	beq	a5,a3,1a544 <_svfprintf_r+0xd68>
   1a4dc:	ffe60613          	addi	a2,a2,-2
   1a4e0:	1b010793          	addi	a5,sp,432
   1a4e4:	fedb0fa3          	sb	a3,-1(s6)
   1a4e8:	40c78cb3          	sub	s9,a5,a2
   1a4ec:	000b8a13          	mv	s4,s7
   1a4f0:	00060b13          	mv	s6,a2
   1a4f4:	db1ff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1a4f8:	00100713          	li	a4,1
   1a4fc:	00e79463          	bne	a5,a4,1a504 <_svfprintf_r+0xd28>
   1a500:	1710106f          	j	1be70 <_svfprintf_r+0x2694>
   1a504:	00200713          	li	a4,2
   1a508:	000a0b93          	mv	s7,s4
   1a50c:	f8e798e3          	bne	a5,a4,1a49c <_svfprintf_r+0xcc0>
   1a510:	03412683          	lw	a3,52(sp)
   1a514:	1b010b13          	addi	s6,sp,432
   1a518:	00f97793          	andi	a5,s2,15
   1a51c:	00f687b3          	add	a5,a3,a5
   1a520:	0007c703          	lbu	a4,0(a5)
   1a524:	00495913          	srli	s2,s2,0x4
   1a528:	01cc9793          	slli	a5,s9,0x1c
   1a52c:	0127e933          	or	s2,a5,s2
   1a530:	004cdc93          	srli	s9,s9,0x4
   1a534:	feeb0fa3          	sb	a4,-1(s6)
   1a538:	019967b3          	or	a5,s2,s9
   1a53c:	fffb0b13          	addi	s6,s6,-1
   1a540:	fc079ce3          	bnez	a5,1a518 <_svfprintf_r+0xd3c>
   1a544:	1b010793          	addi	a5,sp,432
   1a548:	41678cb3          	sub	s9,a5,s6
   1a54c:	000b8a13          	mv	s4,s7
   1a550:	d55ff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1a554:	06500693          	li	a3,101
   1a558:	9c96dae3          	bge	a3,s1,19f2c <_svfprintf_r+0x750>
   1a55c:	0f012683          	lw	a3,240(sp)
   1a560:	0a010593          	addi	a1,sp,160
   1a564:	0b010513          	addi	a0,sp,176
   1a568:	0ad12823          	sw	a3,176(sp)
   1a56c:	0f412683          	lw	a3,244(sp)
   1a570:	05112223          	sw	a7,68(sp)
   1a574:	04f12023          	sw	a5,64(sp)
   1a578:	0ad12a23          	sw	a3,180(sp)
   1a57c:	0f812683          	lw	a3,248(sp)
   1a580:	0a012023          	sw	zero,160(sp)
   1a584:	0a012223          	sw	zero,164(sp)
   1a588:	0ad12c23          	sw	a3,184(sp)
   1a58c:	0fc12683          	lw	a3,252(sp)
   1a590:	0a012423          	sw	zero,168(sp)
   1a594:	0a012623          	sw	zero,172(sp)
   1a598:	0ad12e23          	sw	a3,188(sp)
   1a59c:	4f9060ef          	jal	ra,21294 <__eqtf2>
   1a5a0:	04012783          	lw	a5,64(sp)
   1a5a4:	04412883          	lw	a7,68(sp)
   1a5a8:	38051c63          	bnez	a0,1a940 <_svfprintf_r+0x1164>
   1a5ac:	0e812703          	lw	a4,232(sp)
   1a5b0:	000256b7          	lui	a3,0x25
   1a5b4:	84468693          	addi	a3,a3,-1980 # 24844 <__clzsi2+0xa8>
   1a5b8:	00d8a023          	sw	a3,0(a7)
   1a5bc:	00178793          	addi	a5,a5,1
   1a5c0:	00100693          	li	a3,1
   1a5c4:	00170713          	addi	a4,a4,1
   1a5c8:	00d8a223          	sw	a3,4(a7)
   1a5cc:	0ef12623          	sw	a5,236(sp)
   1a5d0:	0ee12423          	sw	a4,232(sp)
   1a5d4:	00700693          	li	a3,7
   1a5d8:	00888893          	addi	a7,a7,8
   1a5dc:	44e6cce3          	blt	a3,a4,1b234 <_svfprintf_r+0x1a58>
   1a5e0:	0cc12703          	lw	a4,204(sp)
   1a5e4:	02012683          	lw	a3,32(sp)
   1a5e8:	66d75063          	bge	a4,a3,1ac48 <_svfprintf_r+0x146c>
   1a5ec:	03012703          	lw	a4,48(sp)
   1a5f0:	02c12683          	lw	a3,44(sp)
   1a5f4:	00888893          	addi	a7,a7,8
   1a5f8:	fee8ac23          	sw	a4,-8(a7)
   1a5fc:	0e812703          	lw	a4,232(sp)
   1a600:	00d787b3          	add	a5,a5,a3
   1a604:	fed8ae23          	sw	a3,-4(a7)
   1a608:	00170713          	addi	a4,a4,1
   1a60c:	0ef12623          	sw	a5,236(sp)
   1a610:	0ee12423          	sw	a4,232(sp)
   1a614:	00700693          	li	a3,7
   1a618:	76e6cc63          	blt	a3,a4,1ad90 <_svfprintf_r+0x15b4>
   1a61c:	02012703          	lw	a4,32(sp)
   1a620:	fff70493          	addi	s1,a4,-1
   1a624:	c6905463          	blez	s1,19a8c <_svfprintf_r+0x2b0>
   1a628:	01000693          	li	a3,16
   1a62c:	0e812703          	lw	a4,232(sp)
   1a630:	4296d2e3          	bge	a3,s1,1b254 <_svfprintf_r+0x1a78>
   1a634:	01000913          	li	s2,16
   1a638:	00700c93          	li	s9,7
   1a63c:	00c0006f          	j	1a648 <_svfprintf_r+0xe6c>
   1a640:	ff048493          	addi	s1,s1,-16
   1a644:	409958e3          	bge	s2,s1,1b254 <_svfprintf_r+0x1a78>
   1a648:	00812683          	lw	a3,8(sp)
   1a64c:	01078793          	addi	a5,a5,16
   1a650:	00170713          	addi	a4,a4,1
   1a654:	00d8a023          	sw	a3,0(a7)
   1a658:	0128a223          	sw	s2,4(a7)
   1a65c:	0ef12623          	sw	a5,236(sp)
   1a660:	0ee12423          	sw	a4,232(sp)
   1a664:	00888893          	addi	a7,a7,8
   1a668:	fcecdce3          	bge	s9,a4,1a640 <_svfprintf_r+0xe64>
   1a66c:	0e410613          	addi	a2,sp,228
   1a670:	000c0593          	mv	a1,s8
   1a674:	000d0513          	mv	a0,s10
   1a678:	231030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a67c:	1a051063          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a680:	0ec12783          	lw	a5,236(sp)
   1a684:	0e812703          	lw	a4,232(sp)
   1a688:	10c10893          	addi	a7,sp,268
   1a68c:	fb5ff06f          	j	1a640 <_svfprintf_r+0xe64>
   1a690:	41598933          	sub	s2,s3,s5
   1a694:	bd205063          	blez	s2,19a54 <_svfprintf_r+0x278>
   1a698:	01000613          	li	a2,16
   1a69c:	0e812683          	lw	a3,232(sp)
   1a6a0:	07265463          	bge	a2,s2,1a708 <_svfprintf_r+0xf2c>
   1a6a4:	01000e13          	li	t3,16
   1a6a8:	00700b93          	li	s7,7
   1a6ac:	00c0006f          	j	1a6b8 <_svfprintf_r+0xedc>
   1a6b0:	ff090913          	addi	s2,s2,-16
   1a6b4:	052e5a63          	bge	t3,s2,1a708 <_svfprintf_r+0xf2c>
   1a6b8:	00812703          	lw	a4,8(sp)
   1a6bc:	01078793          	addi	a5,a5,16
   1a6c0:	00168693          	addi	a3,a3,1
   1a6c4:	00e8a023          	sw	a4,0(a7)
   1a6c8:	01c8a223          	sw	t3,4(a7)
   1a6cc:	0ef12623          	sw	a5,236(sp)
   1a6d0:	0ed12423          	sw	a3,232(sp)
   1a6d4:	00888893          	addi	a7,a7,8
   1a6d8:	fcdbdce3          	bge	s7,a3,1a6b0 <_svfprintf_r+0xed4>
   1a6dc:	0e410613          	addi	a2,sp,228
   1a6e0:	000c0593          	mv	a1,s8
   1a6e4:	000d0513          	mv	a0,s10
   1a6e8:	1c1030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a6ec:	12051863          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a6f0:	01000e13          	li	t3,16
   1a6f4:	ff090913          	addi	s2,s2,-16
   1a6f8:	0ec12783          	lw	a5,236(sp)
   1a6fc:	0e812683          	lw	a3,232(sp)
   1a700:	10c10893          	addi	a7,sp,268
   1a704:	fb2e4ae3          	blt	t3,s2,1a6b8 <_svfprintf_r+0xedc>
   1a708:	00812703          	lw	a4,8(sp)
   1a70c:	012787b3          	add	a5,a5,s2
   1a710:	00168693          	addi	a3,a3,1
   1a714:	00e8a023          	sw	a4,0(a7)
   1a718:	0128a223          	sw	s2,4(a7)
   1a71c:	0ef12623          	sw	a5,236(sp)
   1a720:	0ed12423          	sw	a3,232(sp)
   1a724:	00700613          	li	a2,7
   1a728:	00888893          	addi	a7,a7,8
   1a72c:	b2d65463          	bge	a2,a3,19a54 <_svfprintf_r+0x278>
   1a730:	0e410613          	addi	a2,sp,228
   1a734:	000c0593          	mv	a1,s8
   1a738:	000d0513          	mv	a0,s10
   1a73c:	16d030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a740:	0c051e63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a744:	419d8db3          	sub	s11,s11,s9
   1a748:	0ec12783          	lw	a5,236(sp)
   1a74c:	10c10893          	addi	a7,sp,268
   1a750:	b1b05663          	blez	s11,19a5c <_svfprintf_r+0x280>
   1a754:	01000613          	li	a2,16
   1a758:	0e812683          	lw	a3,232(sp)
   1a75c:	07b65263          	bge	a2,s11,1a7c0 <_svfprintf_r+0xfe4>
   1a760:	01000b93          	li	s7,16
   1a764:	00700913          	li	s2,7
   1a768:	00c0006f          	j	1a774 <_svfprintf_r+0xf98>
   1a76c:	ff0d8d93          	addi	s11,s11,-16
   1a770:	05bbd863          	bge	s7,s11,1a7c0 <_svfprintf_r+0xfe4>
   1a774:	00812703          	lw	a4,8(sp)
   1a778:	01078793          	addi	a5,a5,16
   1a77c:	00168693          	addi	a3,a3,1
   1a780:	00e8a023          	sw	a4,0(a7)
   1a784:	0178a223          	sw	s7,4(a7)
   1a788:	0ef12623          	sw	a5,236(sp)
   1a78c:	0ed12423          	sw	a3,232(sp)
   1a790:	00888893          	addi	a7,a7,8
   1a794:	fcd95ce3          	bge	s2,a3,1a76c <_svfprintf_r+0xf90>
   1a798:	0e410613          	addi	a2,sp,228
   1a79c:	000c0593          	mv	a1,s8
   1a7a0:	000d0513          	mv	a0,s10
   1a7a4:	105030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a7a8:	06051a63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a7ac:	ff0d8d93          	addi	s11,s11,-16
   1a7b0:	0ec12783          	lw	a5,236(sp)
   1a7b4:	0e812683          	lw	a3,232(sp)
   1a7b8:	10c10893          	addi	a7,sp,268
   1a7bc:	fbbbcce3          	blt	s7,s11,1a774 <_svfprintf_r+0xf98>
   1a7c0:	00812703          	lw	a4,8(sp)
   1a7c4:	01b787b3          	add	a5,a5,s11
   1a7c8:	00168693          	addi	a3,a3,1
   1a7cc:	00e8a023          	sw	a4,0(a7)
   1a7d0:	01b8a223          	sw	s11,4(a7)
   1a7d4:	0ef12623          	sw	a5,236(sp)
   1a7d8:	0ed12423          	sw	a3,232(sp)
   1a7dc:	00700613          	li	a2,7
   1a7e0:	00888893          	addi	a7,a7,8
   1a7e4:	a6d65c63          	bge	a2,a3,19a5c <_svfprintf_r+0x280>
   1a7e8:	0e410613          	addi	a2,sp,228
   1a7ec:	000c0593          	mv	a1,s8
   1a7f0:	000d0513          	mv	a0,s10
   1a7f4:	0b5030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a7f8:	02051263          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a7fc:	0ec12783          	lw	a5,236(sp)
   1a800:	10c10893          	addi	a7,sp,268
   1a804:	a58ff06f          	j	19a5c <_svfprintf_r+0x280>
   1a808:	0e410613          	addi	a2,sp,228
   1a80c:	000c0593          	mv	a1,s8
   1a810:	000d0513          	mv	a0,s10
   1a814:	095030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a818:	a8050e63          	beqz	a0,19ab4 <_svfprintf_r+0x2d8>
   1a81c:	01012b83          	lw	s7,16(sp)
   1a820:	ac0b8463          	beqz	s7,19ae8 <_svfprintf_r+0x30c>
   1a824:	000b8593          	mv	a1,s7
   1a828:	000d0513          	mv	a0,s10
   1a82c:	b08f90ef          	jal	ra,13b34 <_free_r>
   1a830:	ab8ff06f          	j	19ae8 <_svfprintf_r+0x30c>
   1a834:	00025737          	lui	a4,0x25
   1a838:	01000613          	li	a2,16
   1a83c:	0e812683          	lw	a3,232(sp)
   1a840:	ee470e93          	addi	t4,a4,-284 # 24ee4 <blanks.4468>
   1a844:	09065c63          	bge	a2,a6,1a8dc <_svfprintf_r+0x1100>
   1a848:	04812023          	sw	s0,64(sp)
   1a84c:	04912223          	sw	s1,68(sp)
   1a850:	000d0413          	mv	s0,s10
   1a854:	000c0493          	mv	s1,s8
   1a858:	01000e13          	li	t3,16
   1a85c:	00700293          	li	t0,7
   1a860:	00080c13          	mv	s8,a6
   1a864:	000e8d13          	mv	s10,t4
   1a868:	00c0006f          	j	1a874 <_svfprintf_r+0x1098>
   1a86c:	ff0c0c13          	addi	s8,s8,-16
   1a870:	058e5a63          	bge	t3,s8,1a8c4 <_svfprintf_r+0x10e8>
   1a874:	01078793          	addi	a5,a5,16
   1a878:	00168693          	addi	a3,a3,1
   1a87c:	01a8a023          	sw	s10,0(a7)
   1a880:	01c8a223          	sw	t3,4(a7)
   1a884:	0ef12623          	sw	a5,236(sp)
   1a888:	0ed12423          	sw	a3,232(sp)
   1a88c:	00888893          	addi	a7,a7,8
   1a890:	fcd2dee3          	bge	t0,a3,1a86c <_svfprintf_r+0x1090>
   1a894:	0e410613          	addi	a2,sp,228
   1a898:	00048593          	mv	a1,s1
   1a89c:	00040513          	mv	a0,s0
   1a8a0:	009030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a8a4:	160512e3          	bnez	a0,1b208 <_svfprintf_r+0x1a2c>
   1a8a8:	01000e13          	li	t3,16
   1a8ac:	ff0c0c13          	addi	s8,s8,-16
   1a8b0:	0ec12783          	lw	a5,236(sp)
   1a8b4:	0e812683          	lw	a3,232(sp)
   1a8b8:	10c10893          	addi	a7,sp,268
   1a8bc:	00700293          	li	t0,7
   1a8c0:	fb8e4ae3          	blt	t3,s8,1a874 <_svfprintf_r+0x1098>
   1a8c4:	000c0813          	mv	a6,s8
   1a8c8:	000d0e93          	mv	t4,s10
   1a8cc:	00048c13          	mv	s8,s1
   1a8d0:	00040d13          	mv	s10,s0
   1a8d4:	04412483          	lw	s1,68(sp)
   1a8d8:	04012403          	lw	s0,64(sp)
   1a8dc:	010787b3          	add	a5,a5,a6
   1a8e0:	00168693          	addi	a3,a3,1
   1a8e4:	01d8a023          	sw	t4,0(a7)
   1a8e8:	0108a223          	sw	a6,4(a7)
   1a8ec:	0ef12623          	sw	a5,236(sp)
   1a8f0:	0ed12423          	sw	a3,232(sp)
   1a8f4:	00700613          	li	a2,7
   1a8f8:	00888893          	addi	a7,a7,8
   1a8fc:	8ed65263          	bge	a2,a3,199e0 <_svfprintf_r+0x204>
   1a900:	0e410613          	addi	a2,sp,228
   1a904:	000c0593          	mv	a1,s8
   1a908:	000d0513          	mv	a0,s10
   1a90c:	79c030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a910:	f00516e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a914:	0ec12783          	lw	a5,236(sp)
   1a918:	10c10893          	addi	a7,sp,268
   1a91c:	8c4ff06f          	j	199e0 <_svfprintf_r+0x204>
   1a920:	0e410613          	addi	a2,sp,228
   1a924:	000c0593          	mv	a1,s8
   1a928:	000d0513          	mv	a0,s10
   1a92c:	77c030ef          	jal	ra,1e0a8 <__ssprint_r>
   1a930:	ee0516e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1a934:	0ec12783          	lw	a5,236(sp)
   1a938:	10c10893          	addi	a7,sp,268
   1a93c:	910ff06f          	j	19a4c <_svfprintf_r+0x270>
   1a940:	0cc12583          	lw	a1,204(sp)
   1a944:	7eb05c63          	blez	a1,1b13c <_svfprintf_r+0x1960>
   1a948:	01c12703          	lw	a4,28(sp)
   1a94c:	02012683          	lw	a3,32(sp)
   1a950:	00070493          	mv	s1,a4
   1a954:	3ce6c263          	blt	a3,a4,1ad18 <_svfprintf_r+0x153c>
   1a958:	02905663          	blez	s1,1a984 <_svfprintf_r+0x11a8>
   1a95c:	0e812683          	lw	a3,232(sp)
   1a960:	009787b3          	add	a5,a5,s1
   1a964:	0168a023          	sw	s6,0(a7)
   1a968:	00168693          	addi	a3,a3,1
   1a96c:	0098a223          	sw	s1,4(a7)
   1a970:	0ef12623          	sw	a5,236(sp)
   1a974:	0ed12423          	sw	a3,232(sp)
   1a978:	00700613          	li	a2,7
   1a97c:	00888893          	addi	a7,a7,8
   1a980:	40d64ce3          	blt	a2,a3,1b598 <_svfprintf_r+0x1dbc>
   1a984:	fff4c693          	not	a3,s1
   1a988:	01c12703          	lw	a4,28(sp)
   1a98c:	41f6d693          	srai	a3,a3,0x1f
   1a990:	00d4f4b3          	and	s1,s1,a3
   1a994:	409704b3          	sub	s1,a4,s1
   1a998:	48904e63          	bgtz	s1,1ae34 <_svfprintf_r+0x1658>
   1a99c:	01c12703          	lw	a4,28(sp)
   1a9a0:	400a7693          	andi	a3,s4,1024
   1a9a4:	00eb0db3          	add	s11,s6,a4
   1a9a8:	4e069a63          	bnez	a3,1ae9c <_svfprintf_r+0x16c0>
   1a9ac:	0cc12483          	lw	s1,204(sp)
   1a9b0:	02012703          	lw	a4,32(sp)
   1a9b4:	00e4c663          	blt	s1,a4,1a9c0 <_svfprintf_r+0x11e4>
   1a9b8:	001a7693          	andi	a3,s4,1
   1a9bc:	400682e3          	beqz	a3,1b5c0 <_svfprintf_r+0x1de4>
   1a9c0:	03012683          	lw	a3,48(sp)
   1a9c4:	02c12703          	lw	a4,44(sp)
   1a9c8:	00700613          	li	a2,7
   1a9cc:	00d8a023          	sw	a3,0(a7)
   1a9d0:	0e812683          	lw	a3,232(sp)
   1a9d4:	00e787b3          	add	a5,a5,a4
   1a9d8:	00e8a223          	sw	a4,4(a7)
   1a9dc:	00168693          	addi	a3,a3,1
   1a9e0:	0ef12623          	sw	a5,236(sp)
   1a9e4:	0ed12423          	sw	a3,232(sp)
   1a9e8:	00888893          	addi	a7,a7,8
   1a9ec:	6ad644e3          	blt	a2,a3,1b894 <_svfprintf_r+0x20b8>
   1a9f0:	02012683          	lw	a3,32(sp)
   1a9f4:	00db0733          	add	a4,s6,a3
   1a9f8:	409684b3          	sub	s1,a3,s1
   1a9fc:	41b70733          	sub	a4,a4,s11
   1aa00:	00048913          	mv	s2,s1
   1aa04:	00975463          	bge	a4,s1,1aa0c <_svfprintf_r+0x1230>
   1aa08:	00070913          	mv	s2,a4
   1aa0c:	03205663          	blez	s2,1aa38 <_svfprintf_r+0x125c>
   1aa10:	0e812703          	lw	a4,232(sp)
   1aa14:	012787b3          	add	a5,a5,s2
   1aa18:	01b8a023          	sw	s11,0(a7)
   1aa1c:	00170713          	addi	a4,a4,1
   1aa20:	0128a223          	sw	s2,4(a7)
   1aa24:	0ef12623          	sw	a5,236(sp)
   1aa28:	0ee12423          	sw	a4,232(sp)
   1aa2c:	00700693          	li	a3,7
   1aa30:	00888893          	addi	a7,a7,8
   1aa34:	6ae6cae3          	blt	a3,a4,1b8e8 <_svfprintf_r+0x210c>
   1aa38:	fff94713          	not	a4,s2
   1aa3c:	41f75713          	srai	a4,a4,0x1f
   1aa40:	00e97733          	and	a4,s2,a4
   1aa44:	40e484b3          	sub	s1,s1,a4
   1aa48:	00904463          	bgtz	s1,1aa50 <_svfprintf_r+0x1274>
   1aa4c:	840ff06f          	j	19a8c <_svfprintf_r+0x2b0>
   1aa50:	01000693          	li	a3,16
   1aa54:	0e812703          	lw	a4,232(sp)
   1aa58:	7e96de63          	bge	a3,s1,1b254 <_svfprintf_r+0x1a78>
   1aa5c:	01000913          	li	s2,16
   1aa60:	00700c93          	li	s9,7
   1aa64:	00c0006f          	j	1aa70 <_svfprintf_r+0x1294>
   1aa68:	ff048493          	addi	s1,s1,-16
   1aa6c:	7e995463          	bge	s2,s1,1b254 <_svfprintf_r+0x1a78>
   1aa70:	00812683          	lw	a3,8(sp)
   1aa74:	01078793          	addi	a5,a5,16
   1aa78:	00170713          	addi	a4,a4,1
   1aa7c:	00d8a023          	sw	a3,0(a7)
   1aa80:	0128a223          	sw	s2,4(a7)
   1aa84:	0ef12623          	sw	a5,236(sp)
   1aa88:	0ee12423          	sw	a4,232(sp)
   1aa8c:	00888893          	addi	a7,a7,8
   1aa90:	fcecdce3          	bge	s9,a4,1aa68 <_svfprintf_r+0x128c>
   1aa94:	0e410613          	addi	a2,sp,228
   1aa98:	000c0593          	mv	a1,s8
   1aa9c:	000d0513          	mv	a0,s10
   1aaa0:	608030ef          	jal	ra,1e0a8 <__ssprint_r>
   1aaa4:	d6051ce3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1aaa8:	0ec12783          	lw	a5,236(sp)
   1aaac:	0e812703          	lw	a4,232(sp)
   1aab0:	10c10893          	addi	a7,sp,268
   1aab4:	fb5ff06f          	j	1aa68 <_svfprintf_r+0x128c>
   1aab8:	001a7793          	andi	a5,s4,1
   1aabc:	c8079863          	bnez	a5,19f4c <_svfprintf_r+0x770>
   1aac0:	00c8a223          	sw	a2,4(a7)
   1aac4:	0f912623          	sw	s9,236(sp)
   1aac8:	0e912423          	sw	s1,232(sp)
   1aacc:	00700793          	li	a5,7
   1aad0:	5497ca63          	blt	a5,s1,1b024 <_svfprintf_r+0x1848>
   1aad4:	00268693          	addi	a3,a3,2
   1aad8:	01088893          	addi	a7,a7,16
   1aadc:	d44ff06f          	j	1a020 <_svfprintf_r+0x844>
   1aae0:	d5b05063          	blez	s11,1a020 <_svfprintf_r+0x844>
   1aae4:	01000713          	li	a4,16
   1aae8:	01b74463          	blt	a4,s11,1aaf0 <_svfprintf_r+0x1314>
   1aaec:	6c00106f          	j	1c1ac <_svfprintf_r+0x29d0>
   1aaf0:	00700b13          	li	s6,7
   1aaf4:	00060493          	mv	s1,a2
   1aaf8:	0100006f          	j	1ab08 <_svfprintf_r+0x132c>
   1aafc:	ff0d8d93          	addi	s11,s11,-16
   1ab00:	11b75ee3          	bge	a4,s11,1b41c <_svfprintf_r+0x1c40>
   1ab04:	00148493          	addi	s1,s1,1
   1ab08:	00812783          	lw	a5,8(sp)
   1ab0c:	010c8c93          	addi	s9,s9,16
   1ab10:	00e92223          	sw	a4,4(s2)
   1ab14:	00f92023          	sw	a5,0(s2)
   1ab18:	0f912623          	sw	s9,236(sp)
   1ab1c:	0e912423          	sw	s1,232(sp)
   1ab20:	00890913          	addi	s2,s2,8
   1ab24:	fc9b5ce3          	bge	s6,s1,1aafc <_svfprintf_r+0x1320>
   1ab28:	0e410613          	addi	a2,sp,228
   1ab2c:	000c0593          	mv	a1,s8
   1ab30:	000d0513          	mv	a0,s10
   1ab34:	574030ef          	jal	ra,1e0a8 <__ssprint_r>
   1ab38:	ce0512e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1ab3c:	0ec12c83          	lw	s9,236(sp)
   1ab40:	0e812483          	lw	s1,232(sp)
   1ab44:	10c10913          	addi	s2,sp,268
   1ab48:	01000713          	li	a4,16
   1ab4c:	fb1ff06f          	j	1aafc <_svfprintf_r+0x1320>
   1ab50:	01412683          	lw	a3,20(sp)
   1ab54:	010a7793          	andi	a5,s4,16
   1ab58:	00468713          	addi	a4,a3,4
   1ab5c:	18079463          	bnez	a5,1ace4 <_svfprintf_r+0x1508>
   1ab60:	040a7793          	andi	a5,s4,64
   1ab64:	140786e3          	beqz	a5,1b4b0 <_svfprintf_r+0x1cd4>
   1ab68:	01412783          	lw	a5,20(sp)
   1ab6c:	00000c93          	li	s9,0
   1ab70:	00e12a23          	sw	a4,20(sp)
   1ab74:	0007d903          	lhu	s2,0(a5)
   1ab78:	f80ff06f          	j	1a2f8 <_svfprintf_r+0xb1c>
   1ab7c:	01412683          	lw	a3,20(sp)
   1ab80:	010bf793          	andi	a5,s7,16
   1ab84:	00468713          	addi	a4,a3,4
   1ab88:	14079463          	bnez	a5,1acd0 <_svfprintf_r+0x14f4>
   1ab8c:	040bf793          	andi	a5,s7,64
   1ab90:	100780e3          	beqz	a5,1b490 <_svfprintf_r+0x1cb4>
   1ab94:	01412783          	lw	a5,20(sp)
   1ab98:	00000c93          	li	s9,0
   1ab9c:	00e12a23          	sw	a4,20(sp)
   1aba0:	0007d903          	lhu	s2,0(a5)
   1aba4:	00100793          	li	a5,1
   1aba8:	ed0ff06f          	j	1a278 <_svfprintf_r+0xa9c>
   1abac:	01412683          	lw	a3,20(sp)
   1abb0:	010a7793          	andi	a5,s4,16
   1abb4:	00468713          	addi	a4,a3,4
   1abb8:	10079263          	bnez	a5,1acbc <_svfprintf_r+0x14e0>
   1abbc:	040a7793          	andi	a5,s4,64
   1abc0:	0a0788e3          	beqz	a5,1b470 <_svfprintf_r+0x1c94>
   1abc4:	01412783          	lw	a5,20(sp)
   1abc8:	00e12a23          	sw	a4,20(sp)
   1abcc:	00079903          	lh	s2,0(a5)
   1abd0:	41f95c93          	srai	s9,s2,0x1f
   1abd4:	000c8793          	mv	a5,s9
   1abd8:	8407dee3          	bgez	a5,1a434 <_svfprintf_r+0xc58>
   1abdc:	012037b3          	snez	a5,s2
   1abe0:	41900cb3          	neg	s9,s9
   1abe4:	40fc8cb3          	sub	s9,s9,a5
   1abe8:	02d00793          	li	a5,45
   1abec:	0cf103a3          	sb	a5,199(sp)
   1abf0:	41200933          	neg	s2,s2
   1abf4:	000a0b93          	mv	s7,s4
   1abf8:	00100793          	li	a5,1
   1abfc:	e80ff06f          	j	1a27c <_svfprintf_r+0xaa0>
   1ac00:	0e410613          	addi	a2,sp,228
   1ac04:	000c0593          	mv	a1,s8
   1ac08:	000d0513          	mv	a0,s10
   1ac0c:	49c030ef          	jal	ra,1e0a8 <__ssprint_r>
   1ac10:	c00516e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1ac14:	0ec12c83          	lw	s9,236(sp)
   1ac18:	0e812483          	lw	s1,232(sp)
   1ac1c:	10c10913          	addi	s2,sp,268
   1ac20:	b44ff06f          	j	19f64 <_svfprintf_r+0x788>
   1ac24:	0e410613          	addi	a2,sp,228
   1ac28:	000c0593          	mv	a1,s8
   1ac2c:	000d0513          	mv	a0,s10
   1ac30:	478030ef          	jal	ra,1e0a8 <__ssprint_r>
   1ac34:	be0514e3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1ac38:	0ec12c83          	lw	s9,236(sp)
   1ac3c:	0e812483          	lw	s1,232(sp)
   1ac40:	10c10913          	addi	s2,sp,268
   1ac44:	b4cff06f          	j	19f90 <_svfprintf_r+0x7b4>
   1ac48:	001a7713          	andi	a4,s4,1
   1ac4c:	00071463          	bnez	a4,1ac54 <_svfprintf_r+0x1478>
   1ac50:	e3dfe06f          	j	19a8c <_svfprintf_r+0x2b0>
   1ac54:	999ff06f          	j	1a5ec <_svfprintf_r+0xe10>
   1ac58:	000c8893          	mv	a7,s9
   1ac5c:	facff06f          	j	1a408 <_svfprintf_r+0xc2c>
   1ac60:	03000793          	li	a5,48
   1ac64:	1af107a3          	sb	a5,431(sp)
   1ac68:	1af10b13          	addi	s6,sp,431
   1ac6c:	e38ff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1ac70:	00c12683          	lw	a3,12(sp)
   1ac74:	00040b13          	mv	s6,s0
   1ac78:	41f6d793          	srai	a5,a3,0x1f
   1ac7c:	00d72023          	sw	a3,0(a4)
   1ac80:	00f72223          	sw	a5,4(a4)
   1ac84:	e51fe06f          	j	19ad4 <_svfprintf_r+0x2f8>
   1ac88:	01412703          	lw	a4,20(sp)
   1ac8c:	00072783          	lw	a5,0(a4)
   1ac90:	00470713          	addi	a4,a4,4
   1ac94:	00e12a23          	sw	a4,20(sp)
   1ac98:	0007a583          	lw	a1,0(a5)
   1ac9c:	0047a603          	lw	a2,4(a5)
   1aca0:	0087a683          	lw	a3,8(a5)
   1aca4:	00c7a783          	lw	a5,12(a5)
   1aca8:	0eb12823          	sw	a1,240(sp)
   1acac:	0ec12a23          	sw	a2,244(sp)
   1acb0:	0ed12c23          	sw	a3,248(sp)
   1acb4:	0ef12e23          	sw	a5,252(sp)
   1acb8:	f59fe06f          	j	19c10 <_svfprintf_r+0x434>
   1acbc:	0006a903          	lw	s2,0(a3)
   1acc0:	00e12a23          	sw	a4,20(sp)
   1acc4:	41f95c93          	srai	s9,s2,0x1f
   1acc8:	000c8793          	mv	a5,s9
   1accc:	f64ff06f          	j	1a430 <_svfprintf_r+0xc54>
   1acd0:	0006a903          	lw	s2,0(a3)
   1acd4:	00000c93          	li	s9,0
   1acd8:	00e12a23          	sw	a4,20(sp)
   1acdc:	00100793          	li	a5,1
   1ace0:	d98ff06f          	j	1a278 <_svfprintf_r+0xa9c>
   1ace4:	0006a903          	lw	s2,0(a3)
   1ace8:	00000c93          	li	s9,0
   1acec:	00e12a23          	sw	a4,20(sp)
   1acf0:	e08ff06f          	j	1a2f8 <_svfprintf_r+0xb1c>
   1acf4:	03c12783          	lw	a5,60(sp)
   1acf8:	00044483          	lbu	s1,0(s0)
   1acfc:	00079463          	bnez	a5,1ad04 <_svfprintf_r+0x1528>
   1ad00:	c41fe06f          	j	19940 <_svfprintf_r+0x164>
   1ad04:	0007c783          	lbu	a5,0(a5)
   1ad08:	00079463          	bnez	a5,1ad10 <_svfprintf_r+0x1534>
   1ad0c:	c35fe06f          	j	19940 <_svfprintf_r+0x164>
   1ad10:	400a6a13          	ori	s4,s4,1024
   1ad14:	c2dfe06f          	j	19940 <_svfprintf_r+0x164>
   1ad18:	00068493          	mv	s1,a3
   1ad1c:	c49040e3          	bgtz	s1,1a95c <_svfprintf_r+0x1180>
   1ad20:	c65ff06f          	j	1a984 <_svfprintf_r+0x11a8>
   1ad24:	000c8893          	mv	a7,s9
   1ad28:	000a0b93          	mv	s7,s4
   1ad2c:	df4ff06f          	j	1a320 <_svfprintf_r+0xb44>
   1ad30:	000257b7          	lui	a5,0x25
   1ad34:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1ad38:	000c8893          	mv	a7,s9
   1ad3c:	02f12a23          	sw	a5,52(sp)
   1ad40:	020a7793          	andi	a5,s4,32
   1ad44:	2c078063          	beqz	a5,1b004 <_svfprintf_r+0x1828>
   1ad48:	01412783          	lw	a5,20(sp)
   1ad4c:	00778b13          	addi	s6,a5,7
   1ad50:	ff8b7b13          	andi	s6,s6,-8
   1ad54:	000b2903          	lw	s2,0(s6)
   1ad58:	004b2c83          	lw	s9,4(s6)
   1ad5c:	008b0793          	addi	a5,s6,8
   1ad60:	00f12a23          	sw	a5,20(sp)
   1ad64:	001a7793          	andi	a5,s4,1
   1ad68:	00078e63          	beqz	a5,1ad84 <_svfprintf_r+0x15a8>
   1ad6c:	019967b3          	or	a5,s2,s9
   1ad70:	00078a63          	beqz	a5,1ad84 <_svfprintf_r+0x15a8>
   1ad74:	03000793          	li	a5,48
   1ad78:	0cf10423          	sb	a5,200(sp)
   1ad7c:	0c9104a3          	sb	s1,201(sp)
   1ad80:	002a6a13          	ori	s4,s4,2
   1ad84:	bffa7b93          	andi	s7,s4,-1025
   1ad88:	00200793          	li	a5,2
   1ad8c:	cecff06f          	j	1a278 <_svfprintf_r+0xa9c>
   1ad90:	0e410613          	addi	a2,sp,228
   1ad94:	000c0593          	mv	a1,s8
   1ad98:	000d0513          	mv	a0,s10
   1ad9c:	30c030ef          	jal	ra,1e0a8 <__ssprint_r>
   1ada0:	a6051ee3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1ada4:	0ec12783          	lw	a5,236(sp)
   1ada8:	10c10893          	addi	a7,sp,268
   1adac:	871ff06f          	j	1a61c <_svfprintf_r+0xe40>
   1adb0:	000257b7          	lui	a5,0x25
   1adb4:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   1adb8:	000c8893          	mv	a7,s9
   1adbc:	02f12a23          	sw	a5,52(sp)
   1adc0:	f81ff06f          	j	1ad40 <_svfprintf_r+0x1564>
   1adc4:	000c8893          	mv	a7,s9
   1adc8:	d0cff06f          	j	1a2d4 <_svfprintf_r+0xaf8>
   1adcc:	00144483          	lbu	s1,1(s0)
   1add0:	020a6a13          	ori	s4,s4,32
   1add4:	00140413          	addi	s0,s0,1
   1add8:	b69fe06f          	j	19940 <_svfprintf_r+0x164>
   1addc:	00144483          	lbu	s1,1(s0)
   1ade0:	200a6a13          	ori	s4,s4,512
   1ade4:	00140413          	addi	s0,s0,1
   1ade8:	b59fe06f          	j	19940 <_svfprintf_r+0x164>
   1adec:	04000593          	li	a1,64
   1adf0:	000d0513          	mv	a0,s10
   1adf4:	c10fc0ef          	jal	ra,17204 <_malloc_r>
   1adf8:	00ac2023          	sw	a0,0(s8)
   1adfc:	00ac2823          	sw	a0,16(s8)
   1ae00:	00051463          	bnez	a0,1ae08 <_svfprintf_r+0x162c>
   1ae04:	3d40106f          	j	1c1d8 <_svfprintf_r+0x29fc>
   1ae08:	04000713          	li	a4,64
   1ae0c:	00ec2a23          	sw	a4,20(s8)
   1ae10:	a55fe06f          	j	19864 <_svfprintf_r+0x88>
   1ae14:	00600793          	li	a5,6
   1ae18:	000d8c93          	mv	s9,s11
   1ae1c:	79b7ee63          	bltu	a5,s11,1b5b8 <_svfprintf_r+0x1ddc>
   1ae20:	00025737          	lui	a4,0x25
   1ae24:	000c8a93          	mv	s5,s9
   1ae28:	01212a23          	sw	s2,20(sp)
   1ae2c:	83c70b13          	addi	s6,a4,-1988 # 2483c <__clzsi2+0xa0>
   1ae30:	b7dfe06f          	j	199ac <_svfprintf_r+0x1d0>
   1ae34:	01000613          	li	a2,16
   1ae38:	0e812683          	lw	a3,232(sp)
   1ae3c:	6a965863          	bge	a2,s1,1b4ec <_svfprintf_r+0x1d10>
   1ae40:	01000c93          	li	s9,16
   1ae44:	00700d93          	li	s11,7
   1ae48:	00c0006f          	j	1ae54 <_svfprintf_r+0x1678>
   1ae4c:	ff048493          	addi	s1,s1,-16
   1ae50:	689cde63          	bge	s9,s1,1b4ec <_svfprintf_r+0x1d10>
   1ae54:	00812703          	lw	a4,8(sp)
   1ae58:	01078793          	addi	a5,a5,16
   1ae5c:	00168693          	addi	a3,a3,1
   1ae60:	00e8a023          	sw	a4,0(a7)
   1ae64:	0198a223          	sw	s9,4(a7)
   1ae68:	0ef12623          	sw	a5,236(sp)
   1ae6c:	0ed12423          	sw	a3,232(sp)
   1ae70:	00888893          	addi	a7,a7,8
   1ae74:	fcdddce3          	bge	s11,a3,1ae4c <_svfprintf_r+0x1670>
   1ae78:	0e410613          	addi	a2,sp,228
   1ae7c:	000c0593          	mv	a1,s8
   1ae80:	000d0513          	mv	a0,s10
   1ae84:	224030ef          	jal	ra,1e0a8 <__ssprint_r>
   1ae88:	98051ae3          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1ae8c:	0ec12783          	lw	a5,236(sp)
   1ae90:	0e812683          	lw	a3,232(sp)
   1ae94:	10c10893          	addi	a7,sp,268
   1ae98:	fb5ff06f          	j	1ae4c <_svfprintf_r+0x1670>
   1ae9c:	02012703          	lw	a4,32(sp)
   1aea0:	02412c83          	lw	s9,36(sp)
   1aea4:	01412e23          	sw	s4,28(sp)
   1aea8:	04812023          	sw	s0,64(sp)
   1aeac:	05312223          	sw	s3,68(sp)
   1aeb0:	03512223          	sw	s5,36(sp)
   1aeb4:	02812983          	lw	s3,40(sp)
   1aeb8:	03612423          	sw	s6,40(sp)
   1aebc:	00eb0bb3          	add	s7,s6,a4
   1aec0:	03c12403          	lw	s0,60(sp)
   1aec4:	04812a03          	lw	s4,72(sp)
   1aec8:	04c12a83          	lw	s5,76(sp)
   1aecc:	00700493          	li	s1,7
   1aed0:	01000913          	li	s2,16
   1aed4:	000c0b13          	mv	s6,s8
   1aed8:	080c8863          	beqz	s9,1af68 <_svfprintf_r+0x178c>
   1aedc:	08099863          	bnez	s3,1af6c <_svfprintf_r+0x1790>
   1aee0:	fff40413          	addi	s0,s0,-1
   1aee4:	fffc8c93          	addi	s9,s9,-1
   1aee8:	0e812703          	lw	a4,232(sp)
   1aeec:	014787b3          	add	a5,a5,s4
   1aef0:	0158a023          	sw	s5,0(a7)
   1aef4:	00170713          	addi	a4,a4,1
   1aef8:	0148a223          	sw	s4,4(a7)
   1aefc:	0ef12623          	sw	a5,236(sp)
   1af00:	0ee12423          	sw	a4,232(sp)
   1af04:	00888893          	addi	a7,a7,8
   1af08:	14e4c463          	blt	s1,a4,1b050 <_svfprintf_r+0x1874>
   1af0c:	00044683          	lbu	a3,0(s0)
   1af10:	41bb8633          	sub	a2,s7,s11
   1af14:	00068c13          	mv	s8,a3
   1af18:	00d65463          	bge	a2,a3,1af20 <_svfprintf_r+0x1744>
   1af1c:	00060c13          	mv	s8,a2
   1af20:	03805663          	blez	s8,1af4c <_svfprintf_r+0x1770>
   1af24:	0e812683          	lw	a3,232(sp)
   1af28:	018787b3          	add	a5,a5,s8
   1af2c:	01b8a023          	sw	s11,0(a7)
   1af30:	00168693          	addi	a3,a3,1
   1af34:	0188a223          	sw	s8,4(a7)
   1af38:	0ef12623          	sw	a5,236(sp)
   1af3c:	0ed12423          	sw	a3,232(sp)
   1af40:	34d4c063          	blt	s1,a3,1b280 <_svfprintf_r+0x1aa4>
   1af44:	00044683          	lbu	a3,0(s0)
   1af48:	00888893          	addi	a7,a7,8
   1af4c:	fffc4613          	not	a2,s8
   1af50:	41f65613          	srai	a2,a2,0x1f
   1af54:	00cc7733          	and	a4,s8,a2
   1af58:	40e68c33          	sub	s8,a3,a4
   1af5c:	01804c63          	bgtz	s8,1af74 <_svfprintf_r+0x1798>
   1af60:	00dd8db3          	add	s11,s11,a3
   1af64:	f60c9ce3          	bnez	s9,1aedc <_svfprintf_r+0x1700>
   1af68:	72098c63          	beqz	s3,1b6a0 <_svfprintf_r+0x1ec4>
   1af6c:	fff98993          	addi	s3,s3,-1
   1af70:	f79ff06f          	j	1aee8 <_svfprintf_r+0x170c>
   1af74:	0e812683          	lw	a3,232(sp)
   1af78:	01894863          	blt	s2,s8,1af88 <_svfprintf_r+0x17ac>
   1af7c:	0580006f          	j	1afd4 <_svfprintf_r+0x17f8>
   1af80:	ff0c0c13          	addi	s8,s8,-16
   1af84:	05895863          	bge	s2,s8,1afd4 <_svfprintf_r+0x17f8>
   1af88:	00812703          	lw	a4,8(sp)
   1af8c:	01078793          	addi	a5,a5,16
   1af90:	00168693          	addi	a3,a3,1
   1af94:	00e8a023          	sw	a4,0(a7)
   1af98:	0128a223          	sw	s2,4(a7)
   1af9c:	0ef12623          	sw	a5,236(sp)
   1afa0:	0ed12423          	sw	a3,232(sp)
   1afa4:	00888893          	addi	a7,a7,8
   1afa8:	fcd4dce3          	bge	s1,a3,1af80 <_svfprintf_r+0x17a4>
   1afac:	0e410613          	addi	a2,sp,228
   1afb0:	000b0593          	mv	a1,s6
   1afb4:	000d0513          	mv	a0,s10
   1afb8:	0f0030ef          	jal	ra,1e0a8 <__ssprint_r>
   1afbc:	5a051c63          	bnez	a0,1b574 <_svfprintf_r+0x1d98>
   1afc0:	ff0c0c13          	addi	s8,s8,-16
   1afc4:	0ec12783          	lw	a5,236(sp)
   1afc8:	0e812683          	lw	a3,232(sp)
   1afcc:	10c10893          	addi	a7,sp,268
   1afd0:	fb894ce3          	blt	s2,s8,1af88 <_svfprintf_r+0x17ac>
   1afd4:	00812703          	lw	a4,8(sp)
   1afd8:	018787b3          	add	a5,a5,s8
   1afdc:	00168693          	addi	a3,a3,1
   1afe0:	00e8a023          	sw	a4,0(a7)
   1afe4:	0188a223          	sw	s8,4(a7)
   1afe8:	0ef12623          	sw	a5,236(sp)
   1afec:	0ed12423          	sw	a3,232(sp)
   1aff0:	76d4c463          	blt	s1,a3,1b758 <_svfprintf_r+0x1f7c>
   1aff4:	00044683          	lbu	a3,0(s0)
   1aff8:	00888893          	addi	a7,a7,8
   1affc:	00dd8db3          	add	s11,s11,a3
   1b000:	f65ff06f          	j	1af64 <_svfprintf_r+0x1788>
   1b004:	01412683          	lw	a3,20(sp)
   1b008:	010a7793          	andi	a5,s4,16
   1b00c:	00468713          	addi	a4,a3,4
   1b010:	20078463          	beqz	a5,1b218 <_svfprintf_r+0x1a3c>
   1b014:	0006a903          	lw	s2,0(a3)
   1b018:	00000c93          	li	s9,0
   1b01c:	00e12a23          	sw	a4,20(sp)
   1b020:	d45ff06f          	j	1ad64 <_svfprintf_r+0x1588>
   1b024:	0e410613          	addi	a2,sp,228
   1b028:	000c0593          	mv	a1,s8
   1b02c:	000d0513          	mv	a0,s10
   1b030:	078030ef          	jal	ra,1e0a8 <__ssprint_r>
   1b034:	fe051463          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b038:	0e812683          	lw	a3,232(sp)
   1b03c:	0ec12c83          	lw	s9,236(sp)
   1b040:	11410893          	addi	a7,sp,276
   1b044:	00168693          	addi	a3,a3,1
   1b048:	10c10913          	addi	s2,sp,268
   1b04c:	fd5fe06f          	j	1a020 <_svfprintf_r+0x844>
   1b050:	0e410613          	addi	a2,sp,228
   1b054:	000b0593          	mv	a1,s6
   1b058:	000d0513          	mv	a0,s10
   1b05c:	04c030ef          	jal	ra,1e0a8 <__ssprint_r>
   1b060:	50051a63          	bnez	a0,1b574 <_svfprintf_r+0x1d98>
   1b064:	0ec12783          	lw	a5,236(sp)
   1b068:	10c10893          	addi	a7,sp,268
   1b06c:	ea1ff06f          	j	1af0c <_svfprintf_r+0x1730>
   1b070:	1b010b13          	addi	s6,sp,432
   1b074:	00000793          	li	a5,0
   1b078:	00812823          	sw	s0,16(sp)
   1b07c:	00912e23          	sw	s1,28(sp)
   1b080:	000b0413          	mv	s0,s6
   1b084:	03312223          	sw	s3,36(sp)
   1b088:	000c0b13          	mv	s6,s8
   1b08c:	00090493          	mv	s1,s2
   1b090:	000c8993          	mv	s3,s9
   1b094:	400bfa13          	andi	s4,s7,1024
   1b098:	03c12c83          	lw	s9,60(sp)
   1b09c:	0ff00a93          	li	s5,255
   1b0a0:	00088c13          	mv	s8,a7
   1b0a4:	00078913          	mv	s2,a5
   1b0a8:	0240006f          	j	1b0cc <_svfprintf_r+0x18f0>
   1b0ac:	00a00613          	li	a2,10
   1b0b0:	00000693          	li	a3,0
   1b0b4:	00048513          	mv	a0,s1
   1b0b8:	00098593          	mv	a1,s3
   1b0bc:	0b9040ef          	jal	ra,1f974 <__udivdi3>
   1b0c0:	4c098063          	beqz	s3,1b580 <_svfprintf_r+0x1da4>
   1b0c4:	00050493          	mv	s1,a0
   1b0c8:	00058993          	mv	s3,a1
   1b0cc:	00a00613          	li	a2,10
   1b0d0:	00000693          	li	a3,0
   1b0d4:	00048513          	mv	a0,s1
   1b0d8:	00098593          	mv	a1,s3
   1b0dc:	671040ef          	jal	ra,1ff4c <__umoddi3>
   1b0e0:	03050513          	addi	a0,a0,48
   1b0e4:	fea40fa3          	sb	a0,-1(s0)
   1b0e8:	00190913          	addi	s2,s2,1
   1b0ec:	fff40413          	addi	s0,s0,-1
   1b0f0:	fa0a0ee3          	beqz	s4,1b0ac <_svfprintf_r+0x18d0>
   1b0f4:	000cc683          	lbu	a3,0(s9)
   1b0f8:	fad91ae3          	bne	s2,a3,1b0ac <_svfprintf_r+0x18d0>
   1b0fc:	fb5908e3          	beq	s2,s5,1b0ac <_svfprintf_r+0x18d0>
   1b100:	42099a63          	bnez	s3,1b534 <_svfprintf_r+0x1d58>
   1b104:	00900793          	li	a5,9
   1b108:	4297e663          	bltu	a5,s1,1b534 <_svfprintf_r+0x1d58>
   1b10c:	000c0893          	mv	a7,s8
   1b110:	1b010793          	addi	a5,sp,432
   1b114:	000b0c13          	mv	s8,s6
   1b118:	00040b13          	mv	s6,s0
   1b11c:	03912e23          	sw	s9,60(sp)
   1b120:	01c12483          	lw	s1,28(sp)
   1b124:	02412983          	lw	s3,36(sp)
   1b128:	01012403          	lw	s0,16(sp)
   1b12c:	03212023          	sw	s2,32(sp)
   1b130:	41678cb3          	sub	s9,a5,s6
   1b134:	000b8a13          	mv	s4,s7
   1b138:	96cff06f          	j	1a2a4 <_svfprintf_r+0xac8>
   1b13c:	0e812683          	lw	a3,232(sp)
   1b140:	00025637          	lui	a2,0x25
   1b144:	84460613          	addi	a2,a2,-1980 # 24844 <__clzsi2+0xa8>
   1b148:	00c8a023          	sw	a2,0(a7)
   1b14c:	00178793          	addi	a5,a5,1
   1b150:	00100613          	li	a2,1
   1b154:	00168693          	addi	a3,a3,1
   1b158:	00c8a223          	sw	a2,4(a7)
   1b15c:	0ef12623          	sw	a5,236(sp)
   1b160:	0ed12423          	sw	a3,232(sp)
   1b164:	00700613          	li	a2,7
   1b168:	00888893          	addi	a7,a7,8
   1b16c:	06d64c63          	blt	a2,a3,1b1e4 <_svfprintf_r+0x1a08>
   1b170:	20059863          	bnez	a1,1b380 <_svfprintf_r+0x1ba4>
   1b174:	02012703          	lw	a4,32(sp)
   1b178:	001a7693          	andi	a3,s4,1
   1b17c:	00e6e6b3          	or	a3,a3,a4
   1b180:	00069463          	bnez	a3,1b188 <_svfprintf_r+0x19ac>
   1b184:	909fe06f          	j	19a8c <_svfprintf_r+0x2b0>
   1b188:	03012683          	lw	a3,48(sp)
   1b18c:	02c12703          	lw	a4,44(sp)
   1b190:	00700613          	li	a2,7
   1b194:	00d8a023          	sw	a3,0(a7)
   1b198:	0e812683          	lw	a3,232(sp)
   1b19c:	00e787b3          	add	a5,a5,a4
   1b1a0:	00e8a223          	sw	a4,4(a7)
   1b1a4:	00168693          	addi	a3,a3,1
   1b1a8:	0ef12623          	sw	a5,236(sp)
   1b1ac:	0ed12423          	sw	a3,232(sp)
   1b1b0:	4ad64e63          	blt	a2,a3,1b66c <_svfprintf_r+0x1e90>
   1b1b4:	00888893          	addi	a7,a7,8
   1b1b8:	02012703          	lw	a4,32(sp)
   1b1bc:	00168693          	addi	a3,a3,1
   1b1c0:	0168a023          	sw	s6,0(a7)
   1b1c4:	00e787b3          	add	a5,a5,a4
   1b1c8:	00e8a223          	sw	a4,4(a7)
   1b1cc:	0ef12623          	sw	a5,236(sp)
   1b1d0:	0ed12423          	sw	a3,232(sp)
   1b1d4:	00700713          	li	a4,7
   1b1d8:	00d74463          	blt	a4,a3,1b1e0 <_svfprintf_r+0x1a04>
   1b1dc:	8adfe06f          	j	19a88 <_svfprintf_r+0x2ac>
   1b1e0:	e65fe06f          	j	1a044 <_svfprintf_r+0x868>
   1b1e4:	0e410613          	addi	a2,sp,228
   1b1e8:	000c0593          	mv	a1,s8
   1b1ec:	000d0513          	mv	a0,s10
   1b1f0:	6b9020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b1f4:	e2051463          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b1f8:	0cc12583          	lw	a1,204(sp)
   1b1fc:	0ec12783          	lw	a5,236(sp)
   1b200:	10c10893          	addi	a7,sp,268
   1b204:	f6dff06f          	j	1b170 <_svfprintf_r+0x1994>
   1b208:	01012b83          	lw	s7,16(sp)
   1b20c:	00040d13          	mv	s10,s0
   1b210:	00048c13          	mv	s8,s1
   1b214:	e0cff06f          	j	1a820 <_svfprintf_r+0x1044>
   1b218:	040a7793          	andi	a5,s4,64
   1b21c:	22078c63          	beqz	a5,1b454 <_svfprintf_r+0x1c78>
   1b220:	01412783          	lw	a5,20(sp)
   1b224:	00000c93          	li	s9,0
   1b228:	00e12a23          	sw	a4,20(sp)
   1b22c:	0007d903          	lhu	s2,0(a5)
   1b230:	b35ff06f          	j	1ad64 <_svfprintf_r+0x1588>
   1b234:	0e410613          	addi	a2,sp,228
   1b238:	000c0593          	mv	a1,s8
   1b23c:	000d0513          	mv	a0,s10
   1b240:	669020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b244:	dc051c63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b248:	0ec12783          	lw	a5,236(sp)
   1b24c:	10c10893          	addi	a7,sp,268
   1b250:	b90ff06f          	j	1a5e0 <_svfprintf_r+0xe04>
   1b254:	00812683          	lw	a3,8(sp)
   1b258:	009787b3          	add	a5,a5,s1
   1b25c:	0098a223          	sw	s1,4(a7)
   1b260:	00d8a023          	sw	a3,0(a7)
   1b264:	00170713          	addi	a4,a4,1
   1b268:	0ef12623          	sw	a5,236(sp)
   1b26c:	0ee12423          	sw	a4,232(sp)
   1b270:	00700693          	li	a3,7
   1b274:	00e6c463          	blt	a3,a4,1b27c <_svfprintf_r+0x1aa0>
   1b278:	811fe06f          	j	19a88 <_svfprintf_r+0x2ac>
   1b27c:	dc9fe06f          	j	1a044 <_svfprintf_r+0x868>
   1b280:	0e410613          	addi	a2,sp,228
   1b284:	000b0593          	mv	a1,s6
   1b288:	000d0513          	mv	a0,s10
   1b28c:	61d020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b290:	2e051263          	bnez	a0,1b574 <_svfprintf_r+0x1d98>
   1b294:	00044683          	lbu	a3,0(s0)
   1b298:	0ec12783          	lw	a5,236(sp)
   1b29c:	10c10893          	addi	a7,sp,268
   1b2a0:	cadff06f          	j	1af4c <_svfprintf_r+0x1770>
   1b2a4:	0f012783          	lw	a5,240(sp)
   1b2a8:	0a010593          	addi	a1,sp,160
   1b2ac:	0b010513          	addi	a0,sp,176
   1b2b0:	0af12823          	sw	a5,176(sp)
   1b2b4:	0f412783          	lw	a5,244(sp)
   1b2b8:	0a012023          	sw	zero,160(sp)
   1b2bc:	0a012223          	sw	zero,164(sp)
   1b2c0:	0af12a23          	sw	a5,180(sp)
   1b2c4:	0f812783          	lw	a5,248(sp)
   1b2c8:	0a012423          	sw	zero,168(sp)
   1b2cc:	0a012623          	sw	zero,172(sp)
   1b2d0:	0af12c23          	sw	a5,184(sp)
   1b2d4:	0fc12783          	lw	a5,252(sp)
   1b2d8:	0af12e23          	sw	a5,188(sp)
   1b2dc:	1c8060ef          	jal	ra,214a4 <__letf2>
   1b2e0:	01012883          	lw	a7,16(sp)
   1b2e4:	52054263          	bltz	a0,1b808 <_svfprintf_r+0x202c>
   1b2e8:	0c714783          	lbu	a5,199(sp)
   1b2ec:	04700713          	li	a4,71
   1b2f0:	28975e63          	bge	a4,s1,1b58c <_svfprintf_r+0x1db0>
   1b2f4:	00025737          	lui	a4,0x25
   1b2f8:	80870b13          	addi	s6,a4,-2040 # 24808 <__clzsi2+0x6c>
   1b2fc:	00012823          	sw	zero,16(sp)
   1b300:	02012423          	sw	zero,40(sp)
   1b304:	02012223          	sw	zero,36(sp)
   1b308:	00012e23          	sw	zero,28(sp)
   1b30c:	f7fa7a13          	andi	s4,s4,-129
   1b310:	00300a93          	li	s5,3
   1b314:	00300c93          	li	s9,3
   1b318:	00000d93          	li	s11,0
   1b31c:	00078463          	beqz	a5,1b324 <_svfprintf_r+0x1b48>
   1b320:	e79fe06f          	j	1a198 <_svfprintf_r+0x9bc>
   1b324:	e9cfe06f          	j	199c0 <_svfprintf_r+0x1e4>
   1b328:	00c12783          	lw	a5,12(sp)
   1b32c:	00040b13          	mv	s6,s0
   1b330:	00f72023          	sw	a5,0(a4)
   1b334:	fa0fe06f          	j	19ad4 <_svfprintf_r+0x2f8>
   1b338:	000b0513          	mv	a0,s6
   1b33c:	05912023          	sw	s9,64(sp)
   1b340:	978f50ef          	jal	ra,104b8 <strlen>
   1b344:	0c714783          	lbu	a5,199(sp)
   1b348:	fff54a93          	not	s5,a0
   1b34c:	41fada93          	srai	s5,s5,0x1f
   1b350:	01212a23          	sw	s2,20(sp)
   1b354:	00012823          	sw	zero,16(sp)
   1b358:	02012423          	sw	zero,40(sp)
   1b35c:	02012223          	sw	zero,36(sp)
   1b360:	00012e23          	sw	zero,28(sp)
   1b364:	04012883          	lw	a7,64(sp)
   1b368:	00050c93          	mv	s9,a0
   1b36c:	01557ab3          	and	s5,a0,s5
   1b370:	00000d93          	li	s11,0
   1b374:	00078463          	beqz	a5,1b37c <_svfprintf_r+0x1ba0>
   1b378:	e21fe06f          	j	1a198 <_svfprintf_r+0x9bc>
   1b37c:	e44fe06f          	j	199c0 <_svfprintf_r+0x1e4>
   1b380:	03012683          	lw	a3,48(sp)
   1b384:	02c12703          	lw	a4,44(sp)
   1b388:	00700613          	li	a2,7
   1b38c:	00d8a023          	sw	a3,0(a7)
   1b390:	0e812683          	lw	a3,232(sp)
   1b394:	00e787b3          	add	a5,a5,a4
   1b398:	00e8a223          	sw	a4,4(a7)
   1b39c:	00168693          	addi	a3,a3,1
   1b3a0:	0ef12623          	sw	a5,236(sp)
   1b3a4:	0ed12423          	sw	a3,232(sp)
   1b3a8:	00888893          	addi	a7,a7,8
   1b3ac:	2cd64063          	blt	a2,a3,1b66c <_svfprintf_r+0x1e90>
   1b3b0:	e005d4e3          	bgez	a1,1b1b8 <_svfprintf_r+0x19dc>
   1b3b4:	ff000613          	li	a2,-16
   1b3b8:	40b004b3          	neg	s1,a1
   1b3bc:	26c5d4e3          	bge	a1,a2,1be24 <_svfprintf_r+0x2648>
   1b3c0:	01000913          	li	s2,16
   1b3c4:	00700c93          	li	s9,7
   1b3c8:	00c0006f          	j	1b3d4 <_svfprintf_r+0x1bf8>
   1b3cc:	ff048493          	addi	s1,s1,-16
   1b3d0:	24995ae3          	bge	s2,s1,1be24 <_svfprintf_r+0x2648>
   1b3d4:	00812703          	lw	a4,8(sp)
   1b3d8:	01078793          	addi	a5,a5,16
   1b3dc:	00168693          	addi	a3,a3,1
   1b3e0:	00e8a023          	sw	a4,0(a7)
   1b3e4:	0128a223          	sw	s2,4(a7)
   1b3e8:	0ef12623          	sw	a5,236(sp)
   1b3ec:	0ed12423          	sw	a3,232(sp)
   1b3f0:	00888893          	addi	a7,a7,8
   1b3f4:	fcdcdce3          	bge	s9,a3,1b3cc <_svfprintf_r+0x1bf0>
   1b3f8:	0e410613          	addi	a2,sp,228
   1b3fc:	000c0593          	mv	a1,s8
   1b400:	000d0513          	mv	a0,s10
   1b404:	4a5020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b408:	c0051a63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b40c:	0ec12783          	lw	a5,236(sp)
   1b410:	0e812683          	lw	a3,232(sp)
   1b414:	10c10893          	addi	a7,sp,268
   1b418:	fb5ff06f          	j	1b3cc <_svfprintf_r+0x1bf0>
   1b41c:	00148693          	addi	a3,s1,1
   1b420:	00890713          	addi	a4,s2,8
   1b424:	00812783          	lw	a5,8(sp)
   1b428:	01bc8cb3          	add	s9,s9,s11
   1b42c:	01b92223          	sw	s11,4(s2)
   1b430:	00f92023          	sw	a5,0(s2)
   1b434:	0f912623          	sw	s9,236(sp)
   1b438:	0ed12423          	sw	a3,232(sp)
   1b43c:	00700793          	li	a5,7
   1b440:	bed7c2e3          	blt	a5,a3,1b024 <_svfprintf_r+0x1848>
   1b444:	00168693          	addi	a3,a3,1
   1b448:	00870893          	addi	a7,a4,8
   1b44c:	00070913          	mv	s2,a4
   1b450:	bd1fe06f          	j	1a020 <_svfprintf_r+0x844>
   1b454:	200a7793          	andi	a5,s4,512
   1b458:	1c078e63          	beqz	a5,1b634 <_svfprintf_r+0x1e58>
   1b45c:	01412783          	lw	a5,20(sp)
   1b460:	00000c93          	li	s9,0
   1b464:	00e12a23          	sw	a4,20(sp)
   1b468:	0007c903          	lbu	s2,0(a5)
   1b46c:	8f9ff06f          	j	1ad64 <_svfprintf_r+0x1588>
   1b470:	200a7793          	andi	a5,s4,512
   1b474:	1a078463          	beqz	a5,1b61c <_svfprintf_r+0x1e40>
   1b478:	01412783          	lw	a5,20(sp)
   1b47c:	00e12a23          	sw	a4,20(sp)
   1b480:	00078903          	lb	s2,0(a5)
   1b484:	41f95c93          	srai	s9,s2,0x1f
   1b488:	000c8793          	mv	a5,s9
   1b48c:	fa5fe06f          	j	1a430 <_svfprintf_r+0xc54>
   1b490:	200bf793          	andi	a5,s7,512
   1b494:	16078863          	beqz	a5,1b604 <_svfprintf_r+0x1e28>
   1b498:	01412783          	lw	a5,20(sp)
   1b49c:	00000c93          	li	s9,0
   1b4a0:	00e12a23          	sw	a4,20(sp)
   1b4a4:	0007c903          	lbu	s2,0(a5)
   1b4a8:	00100793          	li	a5,1
   1b4ac:	dcdfe06f          	j	1a278 <_svfprintf_r+0xa9c>
   1b4b0:	200a7793          	andi	a5,s4,512
   1b4b4:	12078e63          	beqz	a5,1b5f0 <_svfprintf_r+0x1e14>
   1b4b8:	01412783          	lw	a5,20(sp)
   1b4bc:	00000c93          	li	s9,0
   1b4c0:	00e12a23          	sw	a4,20(sp)
   1b4c4:	0007c903          	lbu	s2,0(a5)
   1b4c8:	e31fe06f          	j	1a2f8 <_svfprintf_r+0xb1c>
   1b4cc:	0fc12783          	lw	a5,252(sp)
   1b4d0:	1807c863          	bltz	a5,1b660 <_svfprintf_r+0x1e84>
   1b4d4:	0c714783          	lbu	a5,199(sp)
   1b4d8:	04700713          	li	a4,71
   1b4dc:	46975c63          	bge	a4,s1,1b954 <_svfprintf_r+0x2178>
   1b4e0:	00025737          	lui	a4,0x25
   1b4e4:	81070b13          	addi	s6,a4,-2032 # 24810 <__clzsi2+0x74>
   1b4e8:	e15ff06f          	j	1b2fc <_svfprintf_r+0x1b20>
   1b4ec:	00812703          	lw	a4,8(sp)
   1b4f0:	009787b3          	add	a5,a5,s1
   1b4f4:	00168693          	addi	a3,a3,1
   1b4f8:	00e8a023          	sw	a4,0(a7)
   1b4fc:	0098a223          	sw	s1,4(a7)
   1b500:	0ef12623          	sw	a5,236(sp)
   1b504:	0ed12423          	sw	a3,232(sp)
   1b508:	00700613          	li	a2,7
   1b50c:	00888893          	addi	a7,a7,8
   1b510:	c8d65663          	bge	a2,a3,1a99c <_svfprintf_r+0x11c0>
   1b514:	0e410613          	addi	a2,sp,228
   1b518:	000c0593          	mv	a1,s8
   1b51c:	000d0513          	mv	a0,s10
   1b520:	389020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b524:	ae051c63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b528:	0ec12783          	lw	a5,236(sp)
   1b52c:	10c10893          	addi	a7,sp,268
   1b530:	c6cff06f          	j	1a99c <_svfprintf_r+0x11c0>
   1b534:	04812783          	lw	a5,72(sp)
   1b538:	04c12583          	lw	a1,76(sp)
   1b53c:	00000913          	li	s2,0
   1b540:	40f40433          	sub	s0,s0,a5
   1b544:	00078613          	mv	a2,a5
   1b548:	00040513          	mv	a0,s0
   1b54c:	9e8fe0ef          	jal	ra,19734 <strncpy>
   1b550:	001cc583          	lbu	a1,1(s9)
   1b554:	00a00613          	li	a2,10
   1b558:	00000693          	li	a3,0
   1b55c:	00b03833          	snez	a6,a1
   1b560:	00048513          	mv	a0,s1
   1b564:	00098593          	mv	a1,s3
   1b568:	010c8cb3          	add	s9,s9,a6
   1b56c:	408040ef          	jal	ra,1f974 <__udivdi3>
   1b570:	b55ff06f          	j	1b0c4 <_svfprintf_r+0x18e8>
   1b574:	01012b83          	lw	s7,16(sp)
   1b578:	000b0c13          	mv	s8,s6
   1b57c:	aa4ff06f          	j	1a820 <_svfprintf_r+0x1044>
   1b580:	00900793          	li	a5,9
   1b584:	b497e0e3          	bltu	a5,s1,1b0c4 <_svfprintf_r+0x18e8>
   1b588:	b85ff06f          	j	1b10c <_svfprintf_r+0x1930>
   1b58c:	00025737          	lui	a4,0x25
   1b590:	80470b13          	addi	s6,a4,-2044 # 24804 <__clzsi2+0x68>
   1b594:	d69ff06f          	j	1b2fc <_svfprintf_r+0x1b20>
   1b598:	0e410613          	addi	a2,sp,228
   1b59c:	000c0593          	mv	a1,s8
   1b5a0:	000d0513          	mv	a0,s10
   1b5a4:	305020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b5a8:	a6051a63          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b5ac:	0ec12783          	lw	a5,236(sp)
   1b5b0:	10c10893          	addi	a7,sp,268
   1b5b4:	bd0ff06f          	j	1a984 <_svfprintf_r+0x11a8>
   1b5b8:	00600c93          	li	s9,6
   1b5bc:	865ff06f          	j	1ae20 <_svfprintf_r+0x1644>
   1b5c0:	02012683          	lw	a3,32(sp)
   1b5c4:	00db0733          	add	a4,s6,a3
   1b5c8:	409684b3          	sub	s1,a3,s1
   1b5cc:	41b70833          	sub	a6,a4,s11
   1b5d0:	00048913          	mv	s2,s1
   1b5d4:	c6985263          	bge	a6,s1,1aa38 <_svfprintf_r+0x125c>
   1b5d8:	00080913          	mv	s2,a6
   1b5dc:	c5cff06f          	j	1aa38 <_svfprintf_r+0x125c>
   1b5e0:	00c12783          	lw	a5,12(sp)
   1b5e4:	00040b13          	mv	s6,s0
   1b5e8:	00f71023          	sh	a5,0(a4)
   1b5ec:	ce8fe06f          	j	19ad4 <_svfprintf_r+0x2f8>
   1b5f0:	01412783          	lw	a5,20(sp)
   1b5f4:	00000c93          	li	s9,0
   1b5f8:	00e12a23          	sw	a4,20(sp)
   1b5fc:	0007a903          	lw	s2,0(a5)
   1b600:	cf9fe06f          	j	1a2f8 <_svfprintf_r+0xb1c>
   1b604:	01412783          	lw	a5,20(sp)
   1b608:	00000c93          	li	s9,0
   1b60c:	00e12a23          	sw	a4,20(sp)
   1b610:	0007a903          	lw	s2,0(a5)
   1b614:	00100793          	li	a5,1
   1b618:	c61fe06f          	j	1a278 <_svfprintf_r+0xa9c>
   1b61c:	01412783          	lw	a5,20(sp)
   1b620:	00e12a23          	sw	a4,20(sp)
   1b624:	0007a903          	lw	s2,0(a5)
   1b628:	41f95c93          	srai	s9,s2,0x1f
   1b62c:	000c8793          	mv	a5,s9
   1b630:	e01fe06f          	j	1a430 <_svfprintf_r+0xc54>
   1b634:	01412783          	lw	a5,20(sp)
   1b638:	00000c93          	li	s9,0
   1b63c:	00e12a23          	sw	a4,20(sp)
   1b640:	0007a903          	lw	s2,0(a5)
   1b644:	f20ff06f          	j	1ad64 <_svfprintf_r+0x1588>
   1b648:	0e410613          	addi	a2,sp,228
   1b64c:	000c0593          	mv	a1,s8
   1b650:	000d0513          	mv	a0,s10
   1b654:	255020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b658:	00cc5703          	lhu	a4,12(s8)
   1b65c:	c90fe06f          	j	19aec <_svfprintf_r+0x310>
   1b660:	02d00793          	li	a5,45
   1b664:	0cf103a3          	sb	a5,199(sp)
   1b668:	e71ff06f          	j	1b4d8 <_svfprintf_r+0x1cfc>
   1b66c:	0e410613          	addi	a2,sp,228
   1b670:	000c0593          	mv	a1,s8
   1b674:	000d0513          	mv	a0,s10
   1b678:	231020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b67c:	9a051063          	bnez	a0,1a81c <_svfprintf_r+0x1040>
   1b680:	0cc12583          	lw	a1,204(sp)
   1b684:	0ec12783          	lw	a5,236(sp)
   1b688:	0e812683          	lw	a3,232(sp)
   1b68c:	10c10893          	addi	a7,sp,268
   1b690:	b205d4e3          	bgez	a1,1b1b8 <_svfprintf_r+0x19dc>
   1b694:	d21ff06f          	j	1b3b4 <_svfprintf_r+0x1bd8>
   1b698:	00600d93          	li	s11,6
   1b69c:	dd8fe06f          	j	19c74 <_svfprintf_r+0x498>
   1b6a0:	02012703          	lw	a4,32(sp)
   1b6a4:	000b0c13          	mv	s8,s6
   1b6a8:	02812b03          	lw	s6,40(sp)
   1b6ac:	02812e23          	sw	s0,60(sp)
   1b6b0:	01c12a03          	lw	s4,28(sp)
   1b6b4:	00eb06b3          	add	a3,s6,a4
   1b6b8:	04012403          	lw	s0,64(sp)
   1b6bc:	04412983          	lw	s3,68(sp)
   1b6c0:	02412a83          	lw	s5,36(sp)
   1b6c4:	afb6f463          	bgeu	a3,s11,1a9ac <_svfprintf_r+0x11d0>
   1b6c8:	00068d93          	mv	s11,a3
   1b6cc:	ae0ff06f          	j	1a9ac <_svfprintf_r+0x11d0>
   1b6d0:	01c12703          	lw	a4,28(sp)
   1b6d4:	ffd00793          	li	a5,-3
   1b6d8:	00f74463          	blt	a4,a5,1b6e0 <_svfprintf_r+0x1f04>
   1b6dc:	00edda63          	bge	s11,a4,1b6f0 <_svfprintf_r+0x1f14>
   1b6e0:	ffe48493          	addi	s1,s1,-2
   1b6e4:	fdf4f793          	andi	a5,s1,-33
   1b6e8:	04f12a23          	sw	a5,84(sp)
   1b6ec:	ec4fe06f          	j	19db0 <_svfprintf_r+0x5d4>
   1b6f0:	02012783          	lw	a5,32(sp)
   1b6f4:	01c12703          	lw	a4,28(sp)
   1b6f8:	26f74463          	blt	a4,a5,1b960 <_svfprintf_r+0x2184>
   1b6fc:	02812783          	lw	a5,40(sp)
   1b700:	00070c93          	mv	s9,a4
   1b704:	0017f793          	andi	a5,a5,1
   1b708:	00078663          	beqz	a5,1b714 <_svfprintf_r+0x1f38>
   1b70c:	02c12783          	lw	a5,44(sp)
   1b710:	00f70cb3          	add	s9,a4,a5
   1b714:	02812783          	lw	a5,40(sp)
   1b718:	4007f793          	andi	a5,a5,1024
   1b71c:	00078663          	beqz	a5,1b728 <_svfprintf_r+0x1f4c>
   1b720:	01c12783          	lw	a5,28(sp)
   1b724:	12f04ae3          	bgtz	a5,1c058 <_svfprintf_r+0x287c>
   1b728:	fffcca93          	not	s5,s9
   1b72c:	41fada93          	srai	s5,s5,0x1f
   1b730:	015cfab3          	and	s5,s9,s5
   1b734:	06700493          	li	s1,103
   1b738:	02012423          	sw	zero,40(sp)
   1b73c:	02012223          	sw	zero,36(sp)
   1b740:	facfe06f          	j	19eec <_svfprintf_r+0x710>
   1b744:	0c714783          	lbu	a5,199(sp)
   1b748:	00000d93          	li	s11,0
   1b74c:	00078463          	beqz	a5,1b754 <_svfprintf_r+0x1f78>
   1b750:	a49fe06f          	j	1a198 <_svfprintf_r+0x9bc>
   1b754:	a6cfe06f          	j	199c0 <_svfprintf_r+0x1e4>
   1b758:	0e410613          	addi	a2,sp,228
   1b75c:	000b0593          	mv	a1,s6
   1b760:	000d0513          	mv	a0,s10
   1b764:	145020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b768:	e00516e3          	bnez	a0,1b574 <_svfprintf_r+0x1d98>
   1b76c:	00044683          	lbu	a3,0(s0)
   1b770:	0ec12783          	lw	a5,236(sp)
   1b774:	10c10893          	addi	a7,sp,268
   1b778:	00dd8db3          	add	s11,s11,a3
   1b77c:	fe8ff06f          	j	1af64 <_svfprintf_r+0x1788>
   1b780:	0b010a93          	addi	s5,sp,176
   1b784:	0dc10813          	addi	a6,sp,220
   1b788:	0d010793          	addi	a5,sp,208
   1b78c:	0cc10713          	addi	a4,sp,204
   1b790:	000d8693          	mv	a3,s11
   1b794:	00300613          	li	a2,3
   1b798:	000a8593          	mv	a1,s5
   1b79c:	000d0513          	mv	a0,s10
   1b7a0:	05112223          	sw	a7,68(sp)
   1b7a4:	0bc12823          	sw	t3,176(sp)
   1b7a8:	05c12023          	sw	t3,64(sp)
   1b7ac:	0bd12a23          	sw	t4,180(sp)
   1b7b0:	03d12223          	sw	t4,36(sp)
   1b7b4:	0be12c23          	sw	t5,184(sp)
   1b7b8:	03e12023          	sw	t5,32(sp)
   1b7bc:	0a612e23          	sw	t1,188(sp)
   1b7c0:	00612e23          	sw	t1,28(sp)
   1b7c4:	d3cfa0ef          	jal	ra,15d00 <_ldtoa_r>
   1b7c8:	01c12303          	lw	t1,28(sp)
   1b7cc:	02012f03          	lw	t5,32(sp)
   1b7d0:	02412e83          	lw	t4,36(sp)
   1b7d4:	04012e03          	lw	t3,64(sp)
   1b7d8:	04412883          	lw	a7,68(sp)
   1b7dc:	00050b13          	mv	s6,a0
   1b7e0:	04600793          	li	a5,70
   1b7e4:	01bb0933          	add	s2,s6,s11
   1b7e8:	62fb9a63          	bne	s7,a5,1be1c <_svfprintf_r+0x2640>
   1b7ec:	000b4683          	lbu	a3,0(s6)
   1b7f0:	03000793          	li	a5,48
   1b7f4:	10f68ae3          	beq	a3,a5,1c108 <_svfprintf_r+0x292c>
   1b7f8:	0a010c93          	addi	s9,sp,160
   1b7fc:	0cc12783          	lw	a5,204(sp)
   1b800:	00f90933          	add	s2,s2,a5
   1b804:	d20fe06f          	j	19d24 <_svfprintf_r+0x548>
   1b808:	02d00793          	li	a5,45
   1b80c:	0cf103a3          	sb	a5,199(sp)
   1b810:	addff06f          	j	1b2ec <_svfprintf_r+0x1b10>
   1b814:	0b010a93          	addi	s5,sp,176
   1b818:	0d010793          	addi	a5,sp,208
   1b81c:	0dc10813          	addi	a6,sp,220
   1b820:	0cc10713          	addi	a4,sp,204
   1b824:	000d8693          	mv	a3,s11
   1b828:	00200613          	li	a2,2
   1b82c:	000a8593          	mv	a1,s5
   1b830:	000d0513          	mv	a0,s10
   1b834:	0bc12823          	sw	t3,176(sp)
   1b838:	05c12023          	sw	t3,64(sp)
   1b83c:	0bd12a23          	sw	t4,180(sp)
   1b840:	03d12223          	sw	t4,36(sp)
   1b844:	0be12c23          	sw	t5,184(sp)
   1b848:	03e12023          	sw	t5,32(sp)
   1b84c:	0a612e23          	sw	t1,188(sp)
   1b850:	00612e23          	sw	t1,28(sp)
   1b854:	cacfa0ef          	jal	ra,15d00 <_ldtoa_r>
   1b858:	04700793          	li	a5,71
   1b85c:	01c12303          	lw	t1,28(sp)
   1b860:	02012f03          	lw	t5,32(sp)
   1b864:	02412e83          	lw	t4,36(sp)
   1b868:	04012e03          	lw	t3,64(sp)
   1b86c:	04412883          	lw	a7,68(sp)
   1b870:	00050b13          	mv	s6,a0
   1b874:	f6fb96e3          	bne	s7,a5,1b7e0 <_svfprintf_r+0x2004>
   1b878:	02812783          	lw	a5,40(sp)
   1b87c:	0017f793          	andi	a5,a5,1
   1b880:	58079863          	bnez	a5,1be10 <_svfprintf_r+0x2634>
   1b884:	04700793          	li	a5,71
   1b888:	0dc12703          	lw	a4,220(sp)
   1b88c:	04f12a23          	sw	a5,84(sp)
   1b890:	cf0fe06f          	j	19d80 <_svfprintf_r+0x5a4>
   1b894:	0e410613          	addi	a2,sp,228
   1b898:	000c0593          	mv	a1,s8
   1b89c:	000d0513          	mv	a0,s10
   1b8a0:	009020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b8a4:	00050463          	beqz	a0,1b8ac <_svfprintf_r+0x20d0>
   1b8a8:	f75fe06f          	j	1a81c <_svfprintf_r+0x1040>
   1b8ac:	0cc12483          	lw	s1,204(sp)
   1b8b0:	0ec12783          	lw	a5,236(sp)
   1b8b4:	10c10893          	addi	a7,sp,268
   1b8b8:	938ff06f          	j	1a9f0 <_svfprintf_r+0x1214>
   1b8bc:	0c714783          	lbu	a5,199(sp)
   1b8c0:	01212a23          	sw	s2,20(sp)
   1b8c4:	02012423          	sw	zero,40(sp)
   1b8c8:	02012223          	sw	zero,36(sp)
   1b8cc:	00012e23          	sw	zero,28(sp)
   1b8d0:	000d8a93          	mv	s5,s11
   1b8d4:	000d8c93          	mv	s9,s11
   1b8d8:	00000d93          	li	s11,0
   1b8dc:	00078463          	beqz	a5,1b8e4 <_svfprintf_r+0x2108>
   1b8e0:	8b9fe06f          	j	1a198 <_svfprintf_r+0x9bc>
   1b8e4:	8dcfe06f          	j	199c0 <_svfprintf_r+0x1e4>
   1b8e8:	0e410613          	addi	a2,sp,228
   1b8ec:	000c0593          	mv	a1,s8
   1b8f0:	000d0513          	mv	a0,s10
   1b8f4:	7b4020ef          	jal	ra,1e0a8 <__ssprint_r>
   1b8f8:	00050463          	beqz	a0,1b900 <_svfprintf_r+0x2124>
   1b8fc:	f21fe06f          	j	1a81c <_svfprintf_r+0x1040>
   1b900:	0cc12483          	lw	s1,204(sp)
   1b904:	02012703          	lw	a4,32(sp)
   1b908:	0ec12783          	lw	a5,236(sp)
   1b90c:	10c10893          	addi	a7,sp,268
   1b910:	409704b3          	sub	s1,a4,s1
   1b914:	924ff06f          	j	1aa38 <_svfprintf_r+0x125c>
   1b918:	02812783          	lw	a5,40(sp)
   1b91c:	01c12703          	lw	a4,28(sp)
   1b920:	0017f793          	andi	a5,a5,1
   1b924:	01b7e7b3          	or	a5,a5,s11
   1b928:	04e058e3          	blez	a4,1c178 <_svfprintf_r+0x299c>
   1b92c:	7a079a63          	bnez	a5,1c0e0 <_svfprintf_r+0x2904>
   1b930:	01c12c83          	lw	s9,28(sp)
   1b934:	06600493          	li	s1,102
   1b938:	02812783          	lw	a5,40(sp)
   1b93c:	4007f793          	andi	a5,a5,1024
   1b940:	70079e63          	bnez	a5,1c05c <_svfprintf_r+0x2880>
   1b944:	fffcca93          	not	s5,s9
   1b948:	41fada93          	srai	s5,s5,0x1f
   1b94c:	015cfab3          	and	s5,s9,s5
   1b950:	de9ff06f          	j	1b738 <_svfprintf_r+0x1f5c>
   1b954:	00025737          	lui	a4,0x25
   1b958:	80c70b13          	addi	s6,a4,-2036 # 2480c <__clzsi2+0x70>
   1b95c:	9a1ff06f          	j	1b2fc <_svfprintf_r+0x1b20>
   1b960:	02012783          	lw	a5,32(sp)
   1b964:	02c12703          	lw	a4,44(sp)
   1b968:	06700493          	li	s1,103
   1b96c:	00e78cb3          	add	s9,a5,a4
   1b970:	01c12783          	lw	a5,28(sp)
   1b974:	fcf042e3          	bgtz	a5,1b938 <_svfprintf_r+0x215c>
   1b978:	40fc8cb3          	sub	s9,s9,a5
   1b97c:	001c8c93          	addi	s9,s9,1
   1b980:	fffcca93          	not	s5,s9
   1b984:	41fada93          	srai	s5,s5,0x1f
   1b988:	015cfab3          	and	s5,s9,s5
   1b98c:	dadff06f          	j	1b738 <_svfprintf_r+0x1f5c>
   1b990:	000256b7          	lui	a3,0x25
   1b994:	ee468e93          	addi	t4,a3,-284 # 24ee4 <blanks.4468>
   1b998:	f48fe06f          	j	1a0e0 <_svfprintf_r+0x904>
   1b99c:	03000793          	li	a5,48
   1b9a0:	0cf10423          	sb	a5,200(sp)
   1b9a4:	05800793          	li	a5,88
   1b9a8:	002a6713          	ori	a4,s4,2
   1b9ac:	0cf104a3          	sb	a5,201(sp)
   1b9b0:	02e12423          	sw	a4,40(sp)
   1b9b4:	06300793          	li	a5,99
   1b9b8:	00012823          	sw	zero,16(sp)
   1b9bc:	14c10b13          	addi	s6,sp,332
   1b9c0:	41b7ce63          	blt	a5,s11,1bddc <_svfprintf_r+0x2600>
   1b9c4:	0fc12303          	lw	t1,252(sp)
   1b9c8:	fdf4fb93          	andi	s7,s1,-33
   1b9cc:	05712a23          	sw	s7,84(sp)
   1b9d0:	04012c23          	sw	zero,88(sp)
   1b9d4:	0f012e03          	lw	t3,240(sp)
   1b9d8:	0f412e83          	lw	t4,244(sp)
   1b9dc:	0f812f03          	lw	t5,248(sp)
   1b9e0:	102a6a13          	ori	s4,s4,258
   1b9e4:	38034263          	bltz	t1,1bd68 <_svfprintf_r+0x258c>
   1b9e8:	06100793          	li	a5,97
   1b9ec:	54f48e63          	beq	s1,a5,1bf48 <_svfprintf_r+0x276c>
   1b9f0:	04100793          	li	a5,65
   1b9f4:	00f48463          	beq	s1,a5,1b9fc <_svfprintf_r+0x2220>
   1b9f8:	aa8fe06f          	j	19ca0 <_svfprintf_r+0x4c4>
   1b9fc:	0b010a93          	addi	s5,sp,176
   1ba00:	000a8513          	mv	a0,s5
   1ba04:	05112823          	sw	a7,80(sp)
   1ba08:	0bc12823          	sw	t3,176(sp)
   1ba0c:	0bd12a23          	sw	t4,180(sp)
   1ba10:	0be12c23          	sw	t5,184(sp)
   1ba14:	0a612e23          	sw	t1,188(sp)
   1ba18:	161080ef          	jal	ra,24378 <__trunctfdf2>
   1ba1c:	0cc10613          	addi	a2,sp,204
   1ba20:	921fd0ef          	jal	ra,19340 <frexp>
   1ba24:	00058613          	mv	a2,a1
   1ba28:	00050593          	mv	a1,a0
   1ba2c:	000a8513          	mv	a0,s5
   1ba30:	758080ef          	jal	ra,24188 <__extenddftf2>
   1ba34:	0b012783          	lw	a5,176(sp)
   1ba38:	0a010c93          	addi	s9,sp,160
   1ba3c:	09010913          	addi	s2,sp,144
   1ba40:	08f12823          	sw	a5,144(sp)
   1ba44:	0b412783          	lw	a5,180(sp)
   1ba48:	08010613          	addi	a2,sp,128
   1ba4c:	00090593          	mv	a1,s2
   1ba50:	08f12a23          	sw	a5,148(sp)
   1ba54:	0b812783          	lw	a5,184(sp)
   1ba58:	000c8513          	mv	a0,s9
   1ba5c:	04c12023          	sw	a2,64(sp)
   1ba60:	08f12c23          	sw	a5,152(sp)
   1ba64:	0bc12783          	lw	a5,188(sp)
   1ba68:	08012023          	sw	zero,128(sp)
   1ba6c:	08012223          	sw	zero,132(sp)
   1ba70:	08f12e23          	sw	a5,156(sp)
   1ba74:	3ffc07b7          	lui	a5,0x3ffc0
   1ba78:	08f12623          	sw	a5,140(sp)
   1ba7c:	08012423          	sw	zero,136(sp)
   1ba80:	369050ef          	jal	ra,215e8 <__multf3>
   1ba84:	0a012803          	lw	a6,160(sp)
   1ba88:	0a412e03          	lw	t3,164(sp)
   1ba8c:	0a812e83          	lw	t4,168(sp)
   1ba90:	0ac12f03          	lw	t5,172(sp)
   1ba94:	000c8593          	mv	a1,s9
   1ba98:	000a8513          	mv	a0,s5
   1ba9c:	0b012823          	sw	a6,176(sp)
   1baa0:	05012223          	sw	a6,68(sp)
   1baa4:	0bc12a23          	sw	t3,180(sp)
   1baa8:	03c12223          	sw	t3,36(sp)
   1baac:	0bd12c23          	sw	t4,184(sp)
   1bab0:	03d12023          	sw	t4,32(sp)
   1bab4:	0be12e23          	sw	t5,188(sp)
   1bab8:	01e12e23          	sw	t5,28(sp)
   1babc:	0a012023          	sw	zero,160(sp)
   1bac0:	0a012223          	sw	zero,164(sp)
   1bac4:	0a012423          	sw	zero,168(sp)
   1bac8:	0a012623          	sw	zero,172(sp)
   1bacc:	7c8050ef          	jal	ra,21294 <__eqtf2>
   1bad0:	01c12f03          	lw	t5,28(sp)
   1bad4:	02012e83          	lw	t4,32(sp)
   1bad8:	02412e03          	lw	t3,36(sp)
   1badc:	04412803          	lw	a6,68(sp)
   1bae0:	05012883          	lw	a7,80(sp)
   1bae4:	00051663          	bnez	a0,1baf0 <_svfprintf_r+0x2314>
   1bae8:	00100793          	li	a5,1
   1baec:	0cf12623          	sw	a5,204(sp)
   1baf0:	000257b7          	lui	a5,0x25
   1baf4:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   1baf8:	02f12223          	sw	a5,36(sp)
   1bafc:	fffd8693          	addi	a3,s11,-1
   1bb00:	05412e23          	sw	s4,92(sp)
   1bb04:	06912223          	sw	s1,100(sp)
   1bb08:	07b12623          	sw	s11,108(sp)
   1bb0c:	07a12a23          	sw	s10,116(sp)
   1bb10:	07812c23          	sw	s8,120(sp)
   1bb14:	000b0b93          	mv	s7,s6
   1bb18:	06812023          	sw	s0,96(sp)
   1bb1c:	07312423          	sw	s3,104(sp)
   1bb20:	07112823          	sw	a7,112(sp)
   1bb24:	00068c13          	mv	s8,a3
   1bb28:	07612e23          	sw	s6,124(sp)
   1bb2c:	00080d13          	mv	s10,a6
   1bb30:	000e0d93          	mv	s11,t3
   1bb34:	000e8493          	mv	s1,t4
   1bb38:	000f0a13          	mv	s4,t5
   1bb3c:	0480006f          	j	1bb84 <_svfprintf_r+0x23a8>
   1bb40:	000c8593          	mv	a1,s9
   1bb44:	000a8513          	mv	a0,s5
   1bb48:	02c12023          	sw	a2,32(sp)
   1bb4c:	01f12e23          	sw	t6,28(sp)
   1bb50:	0bf12c23          	sw	t6,184(sp)
   1bb54:	0ac12e23          	sw	a2,188(sp)
   1bb58:	0b612823          	sw	s6,176(sp)
   1bb5c:	0b312a23          	sw	s3,180(sp)
   1bb60:	0a012023          	sw	zero,160(sp)
   1bb64:	0a012223          	sw	zero,164(sp)
   1bb68:	0a012423          	sw	zero,168(sp)
   1bb6c:	0a012623          	sw	zero,172(sp)
   1bb70:	724050ef          	jal	ra,21294 <__eqtf2>
   1bb74:	01c12f83          	lw	t6,28(sp)
   1bb78:	02012603          	lw	a2,32(sp)
   1bb7c:	fffc0c13          	addi	s8,s8,-1
   1bb80:	0e050263          	beqz	a0,1bc64 <_svfprintf_r+0x2488>
   1bb84:	400307b7          	lui	a5,0x40030
   1bb88:	00090613          	mv	a2,s2
   1bb8c:	000c8593          	mv	a1,s9
   1bb90:	000a8513          	mv	a0,s5
   1bb94:	08f12e23          	sw	a5,156(sp)
   1bb98:	0ba12023          	sw	s10,160(sp)
   1bb9c:	0bb12223          	sw	s11,164(sp)
   1bba0:	0a912423          	sw	s1,168(sp)
   1bba4:	0b412623          	sw	s4,172(sp)
   1bba8:	08012823          	sw	zero,144(sp)
   1bbac:	08012a23          	sw	zero,148(sp)
   1bbb0:	08012c23          	sw	zero,152(sp)
   1bbb4:	235050ef          	jal	ra,215e8 <__multf3>
   1bbb8:	000a8513          	mv	a0,s5
   1bbbc:	368080ef          	jal	ra,23f24 <__fixtfsi>
   1bbc0:	00050593          	mv	a1,a0
   1bbc4:	00050413          	mv	s0,a0
   1bbc8:	000a8513          	mv	a0,s5
   1bbcc:	0b012983          	lw	s3,176(sp)
   1bbd0:	0b412483          	lw	s1,180(sp)
   1bbd4:	0b812b03          	lw	s6,184(sp)
   1bbd8:	0bc12a03          	lw	s4,188(sp)
   1bbdc:	45c080ef          	jal	ra,24038 <__floatsitf>
   1bbe0:	0b012703          	lw	a4,176(sp)
   1bbe4:	04012603          	lw	a2,64(sp)
   1bbe8:	00090593          	mv	a1,s2
   1bbec:	08e12023          	sw	a4,128(sp)
   1bbf0:	0b412703          	lw	a4,180(sp)
   1bbf4:	000c8513          	mv	a0,s9
   1bbf8:	09312823          	sw	s3,144(sp)
   1bbfc:	08e12223          	sw	a4,132(sp)
   1bc00:	0b812703          	lw	a4,184(sp)
   1bc04:	08912a23          	sw	s1,148(sp)
   1bc08:	09612c23          	sw	s6,152(sp)
   1bc0c:	08e12423          	sw	a4,136(sp)
   1bc10:	0bc12703          	lw	a4,188(sp)
   1bc14:	09412e23          	sw	s4,156(sp)
   1bc18:	08e12623          	sw	a4,140(sp)
   1bc1c:	569060ef          	jal	ra,22984 <__subtf3>
   1bc20:	02412783          	lw	a5,36(sp)
   1bc24:	0a012b03          	lw	s6,160(sp)
   1bc28:	0a412983          	lw	s3,164(sp)
   1bc2c:	00878733          	add	a4,a5,s0
   1bc30:	00074703          	lbu	a4,0(a4)
   1bc34:	0a812f83          	lw	t6,168(sp)
   1bc38:	0ac12603          	lw	a2,172(sp)
   1bc3c:	05712823          	sw	s7,80(sp)
   1bc40:	00eb8023          	sb	a4,0(s7)
   1bc44:	05812223          	sw	s8,68(sp)
   1bc48:	fff00793          	li	a5,-1
   1bc4c:	001b8b93          	addi	s7,s7,1
   1bc50:	000b0d13          	mv	s10,s6
   1bc54:	00098d93          	mv	s11,s3
   1bc58:	000f8493          	mv	s1,t6
   1bc5c:	00060a13          	mv	s4,a2
   1bc60:	eefc10e3          	bne	s8,a5,1bb40 <_svfprintf_r+0x2364>
   1bc64:	07012883          	lw	a7,112(sp)
   1bc68:	000b0393          	mv	t2,s6
   1bc6c:	00098293          	mv	t0,s3
   1bc70:	3ffe0937          	lui	s2,0x3ffe0
   1bc74:	000c8593          	mv	a1,s9
   1bc78:	000a8513          	mv	a0,s5
   1bc7c:	03112023          	sw	a7,32(sp)
   1bc80:	00812e23          	sw	s0,28(sp)
   1bc84:	05c12a03          	lw	s4,92(sp)
   1bc88:	06412483          	lw	s1,100(sp)
   1bc8c:	06012403          	lw	s0,96(sp)
   1bc90:	0a712823          	sw	t2,176(sp)
   1bc94:	06712223          	sw	t2,100(sp)
   1bc98:	0a512a23          	sw	t0,180(sp)
   1bc9c:	06512023          	sw	t0,96(sp)
   1bca0:	0bf12c23          	sw	t6,184(sp)
   1bca4:	05f12e23          	sw	t6,92(sp)
   1bca8:	0ac12e23          	sw	a2,188(sp)
   1bcac:	04c12023          	sw	a2,64(sp)
   1bcb0:	0a012023          	sw	zero,160(sp)
   1bcb4:	0a012223          	sw	zero,164(sp)
   1bcb8:	0a012423          	sw	zero,168(sp)
   1bcbc:	0b212623          	sw	s2,172(sp)
   1bcc0:	6a0050ef          	jal	ra,21360 <__getf2>
   1bcc4:	06c12d83          	lw	s11,108(sp)
   1bcc8:	07412d03          	lw	s10,116(sp)
   1bccc:	07812c03          	lw	s8,120(sp)
   1bcd0:	07c12b03          	lw	s6,124(sp)
   1bcd4:	06812983          	lw	s3,104(sp)
   1bcd8:	02012883          	lw	a7,32(sp)
   1bcdc:	0aa04063          	bgtz	a0,1bd7c <_svfprintf_r+0x25a0>
   1bce0:	06412383          	lw	t2,100(sp)
   1bce4:	06012283          	lw	t0,96(sp)
   1bce8:	05c12f83          	lw	t6,92(sp)
   1bcec:	04012603          	lw	a2,64(sp)
   1bcf0:	000c8593          	mv	a1,s9
   1bcf4:	000a8513          	mv	a0,s5
   1bcf8:	0a712823          	sw	t2,176(sp)
   1bcfc:	0a512a23          	sw	t0,180(sp)
   1bd00:	0bf12c23          	sw	t6,184(sp)
   1bd04:	0ac12e23          	sw	a2,188(sp)
   1bd08:	0a012023          	sw	zero,160(sp)
   1bd0c:	0a012223          	sw	zero,164(sp)
   1bd10:	0a012423          	sw	zero,168(sp)
   1bd14:	0b212623          	sw	s2,172(sp)
   1bd18:	57c050ef          	jal	ra,21294 <__eqtf2>
   1bd1c:	02012883          	lw	a7,32(sp)
   1bd20:	00051863          	bnez	a0,1bd30 <_svfprintf_r+0x2554>
   1bd24:	01c12783          	lw	a5,28(sp)
   1bd28:	0017fc93          	andi	s9,a5,1
   1bd2c:	040c9863          	bnez	s9,1bd7c <_svfprintf_r+0x25a0>
   1bd30:	04412783          	lw	a5,68(sp)
   1bd34:	03000613          	li	a2,48
   1bd38:	00178693          	addi	a3,a5,1 # 40030001 <__BSS_END__+0x40009031>
   1bd3c:	00db86b3          	add	a3,s7,a3
   1bd40:	0007c863          	bltz	a5,1bd50 <_svfprintf_r+0x2574>
   1bd44:	001b8b93          	addi	s7,s7,1
   1bd48:	fecb8fa3          	sb	a2,-1(s7)
   1bd4c:	fedb9ce3          	bne	s7,a3,1bd44 <_svfprintf_r+0x2568>
   1bd50:	416b87b3          	sub	a5,s7,s6
   1bd54:	02f12023          	sw	a5,32(sp)
   1bd58:	830fe06f          	j	19d88 <_svfprintf_r+0x5ac>
   1bd5c:	03412423          	sw	s4,40(sp)
   1bd60:	00012823          	sw	zero,16(sp)
   1bd64:	00090a13          	mv	s4,s2
   1bd68:	800007b7          	lui	a5,0x80000
   1bd6c:	0067c333          	xor	t1,a5,t1
   1bd70:	02d00793          	li	a5,45
   1bd74:	04f12c23          	sw	a5,88(sp)
   1bd78:	c71ff06f          	j	1b9e8 <_svfprintf_r+0x220c>
   1bd7c:	05012783          	lw	a5,80(sp)
   1bd80:	000b8693          	mv	a3,s7
   1bd84:	0cf12e23          	sw	a5,220(sp)
   1bd88:	02412783          	lw	a5,36(sp)
   1bd8c:	fffbc603          	lbu	a2,-1(s7)
   1bd90:	00f7c583          	lbu	a1,15(a5) # 8000000f <__BSS_END__+0x7ffd903f>
   1bd94:	02b61063          	bne	a2,a1,1bdb4 <_svfprintf_r+0x25d8>
   1bd98:	03000513          	li	a0,48
   1bd9c:	fea68fa3          	sb	a0,-1(a3)
   1bda0:	0dc12683          	lw	a3,220(sp)
   1bda4:	fff68793          	addi	a5,a3,-1
   1bda8:	0cf12e23          	sw	a5,220(sp)
   1bdac:	fff6c603          	lbu	a2,-1(a3)
   1bdb0:	fec586e3          	beq	a1,a2,1bd9c <_svfprintf_r+0x25c0>
   1bdb4:	00160593          	addi	a1,a2,1
   1bdb8:	03900513          	li	a0,57
   1bdbc:	0ff5f593          	andi	a1,a1,255
   1bdc0:	00a60663          	beq	a2,a0,1bdcc <_svfprintf_r+0x25f0>
   1bdc4:	feb68fa3          	sb	a1,-1(a3)
   1bdc8:	f89ff06f          	j	1bd50 <_svfprintf_r+0x2574>
   1bdcc:	02412783          	lw	a5,36(sp)
   1bdd0:	00a7c583          	lbu	a1,10(a5)
   1bdd4:	feb68fa3          	sb	a1,-1(a3)
   1bdd8:	f79ff06f          	j	1bd50 <_svfprintf_r+0x2574>
   1bddc:	001d8593          	addi	a1,s11,1
   1bde0:	000d0513          	mv	a0,s10
   1bde4:	01112823          	sw	a7,16(sp)
   1bde8:	c1cfb0ef          	jal	ra,17204 <_malloc_r>
   1bdec:	01012883          	lw	a7,16(sp)
   1bdf0:	00050b13          	mv	s6,a0
   1bdf4:	3e050c63          	beqz	a0,1c1ec <_svfprintf_r+0x2a10>
   1bdf8:	00a12823          	sw	a0,16(sp)
   1bdfc:	bc9ff06f          	j	1b9c4 <_svfprintf_r+0x21e8>
   1be00:	03000793          	li	a5,48
   1be04:	0cf10423          	sb	a5,200(sp)
   1be08:	07800793          	li	a5,120
   1be0c:	b9dff06f          	j	1b9a8 <_svfprintf_r+0x21cc>
   1be10:	04700793          	li	a5,71
   1be14:	01bb0933          	add	s2,s6,s11
   1be18:	04f12a23          	sw	a5,84(sp)
   1be1c:	0a010c93          	addi	s9,sp,160
   1be20:	f05fd06f          	j	19d24 <_svfprintf_r+0x548>
   1be24:	00812703          	lw	a4,8(sp)
   1be28:	009787b3          	add	a5,a5,s1
   1be2c:	00168693          	addi	a3,a3,1
   1be30:	00e8a023          	sw	a4,0(a7)
   1be34:	0098a223          	sw	s1,4(a7)
   1be38:	0ef12623          	sw	a5,236(sp)
   1be3c:	0ed12423          	sw	a3,232(sp)
   1be40:	00700613          	li	a2,7
   1be44:	b6d65863          	bge	a2,a3,1b1b4 <_svfprintf_r+0x19d8>
   1be48:	0e410613          	addi	a2,sp,228
   1be4c:	000c0593          	mv	a1,s8
   1be50:	000d0513          	mv	a0,s10
   1be54:	254020ef          	jal	ra,1e0a8 <__ssprint_r>
   1be58:	00050463          	beqz	a0,1be60 <_svfprintf_r+0x2684>
   1be5c:	9c1fe06f          	j	1a81c <_svfprintf_r+0x1040>
   1be60:	0ec12783          	lw	a5,236(sp)
   1be64:	0e812683          	lw	a3,232(sp)
   1be68:	10c10893          	addi	a7,sp,268
   1be6c:	b4cff06f          	j	1b1b8 <_svfprintf_r+0x19dc>
   1be70:	000a0b93          	mv	s7,s4
   1be74:	dfcfe06f          	j	1a470 <_svfprintf_r+0xc94>
   1be78:	000d9463          	bnez	s11,1be80 <_svfprintf_r+0x26a4>
   1be7c:	00100d93          	li	s11,1
   1be80:	0fc12303          	lw	t1,252(sp)
   1be84:	0f012e03          	lw	t3,240(sp)
   1be88:	0f412e83          	lw	t4,244(sp)
   1be8c:	0f812f03          	lw	t5,248(sp)
   1be90:	100a6913          	ori	s2,s4,256
   1be94:	ec0344e3          	bltz	t1,1bd5c <_svfprintf_r+0x2580>
   1be98:	0b010a93          	addi	s5,sp,176
   1be9c:	0dc10813          	addi	a6,sp,220
   1bea0:	0d010793          	addi	a5,sp,208
   1bea4:	0cc10713          	addi	a4,sp,204
   1bea8:	000d8693          	mv	a3,s11
   1beac:	00200613          	li	a2,2
   1beb0:	000a8593          	mv	a1,s5
   1beb4:	000d0513          	mv	a0,s10
   1beb8:	05112223          	sw	a7,68(sp)
   1bebc:	0bc12823          	sw	t3,176(sp)
   1bec0:	05c12023          	sw	t3,64(sp)
   1bec4:	0bd12a23          	sw	t4,180(sp)
   1bec8:	03d12223          	sw	t4,36(sp)
   1becc:	0be12c23          	sw	t5,184(sp)
   1bed0:	03e12023          	sw	t5,32(sp)
   1bed4:	0a612e23          	sw	t1,188(sp)
   1bed8:	00612e23          	sw	t1,28(sp)
   1bedc:	e25f90ef          	jal	ra,15d00 <_ldtoa_r>
   1bee0:	01c12303          	lw	t1,28(sp)
   1bee4:	03412423          	sw	s4,40(sp)
   1bee8:	02012f03          	lw	t5,32(sp)
   1beec:	02412e83          	lw	t4,36(sp)
   1bef0:	04012e03          	lw	t3,64(sp)
   1bef4:	04412883          	lw	a7,68(sp)
   1bef8:	00050b13          	mv	s6,a0
   1befc:	00090a13          	mv	s4,s2
   1bf00:	00012823          	sw	zero,16(sp)
   1bf04:	04012c23          	sw	zero,88(sp)
   1bf08:	971ff06f          	j	1b878 <_svfprintf_r+0x209c>
   1bf0c:	fff00793          	li	a5,-1
   1bf10:	00f12623          	sw	a5,12(sp)
   1bf14:	be5fd06f          	j	19af8 <_svfprintf_r+0x31c>
   1bf18:	0d610793          	addi	a5,sp,214
   1bf1c:	00069863          	bnez	a3,1bf2c <_svfprintf_r+0x2750>
   1bf20:	03000793          	li	a5,48
   1bf24:	0cf10b23          	sb	a5,214(sp)
   1bf28:	0d710793          	addi	a5,sp,215
   1bf2c:	1b010713          	addi	a4,sp,432
   1bf30:	030a8a93          	addi	s5,s5,48
   1bf34:	40e786b3          	sub	a3,a5,a4
   1bf38:	01578023          	sb	s5,0(a5)
   1bf3c:	0dd68793          	addi	a5,a3,221
   1bf40:	02f12c23          	sw	a5,56(sp)
   1bf44:	f65fd06f          	j	19ea8 <_svfprintf_r+0x6cc>
   1bf48:	0b010a93          	addi	s5,sp,176
   1bf4c:	000a8513          	mv	a0,s5
   1bf50:	05112823          	sw	a7,80(sp)
   1bf54:	0bc12823          	sw	t3,176(sp)
   1bf58:	0bd12a23          	sw	t4,180(sp)
   1bf5c:	0be12c23          	sw	t5,184(sp)
   1bf60:	0a612e23          	sw	t1,188(sp)
   1bf64:	414080ef          	jal	ra,24378 <__trunctfdf2>
   1bf68:	0cc10613          	addi	a2,sp,204
   1bf6c:	bd4fd0ef          	jal	ra,19340 <frexp>
   1bf70:	00058613          	mv	a2,a1
   1bf74:	00050593          	mv	a1,a0
   1bf78:	000a8513          	mv	a0,s5
   1bf7c:	20c080ef          	jal	ra,24188 <__extenddftf2>
   1bf80:	0b012783          	lw	a5,176(sp)
   1bf84:	0a010c93          	addi	s9,sp,160
   1bf88:	09010913          	addi	s2,sp,144
   1bf8c:	08f12823          	sw	a5,144(sp)
   1bf90:	0b412783          	lw	a5,180(sp)
   1bf94:	08010613          	addi	a2,sp,128
   1bf98:	00090593          	mv	a1,s2
   1bf9c:	08f12a23          	sw	a5,148(sp)
   1bfa0:	0b812783          	lw	a5,184(sp)
   1bfa4:	000c8513          	mv	a0,s9
   1bfa8:	04c12023          	sw	a2,64(sp)
   1bfac:	08f12c23          	sw	a5,152(sp)
   1bfb0:	0bc12783          	lw	a5,188(sp)
   1bfb4:	08012023          	sw	zero,128(sp)
   1bfb8:	08012223          	sw	zero,132(sp)
   1bfbc:	08f12e23          	sw	a5,156(sp)
   1bfc0:	3ffc07b7          	lui	a5,0x3ffc0
   1bfc4:	08f12623          	sw	a5,140(sp)
   1bfc8:	08012423          	sw	zero,136(sp)
   1bfcc:	61c050ef          	jal	ra,215e8 <__multf3>
   1bfd0:	0a012803          	lw	a6,160(sp)
   1bfd4:	0a412e03          	lw	t3,164(sp)
   1bfd8:	0a812e83          	lw	t4,168(sp)
   1bfdc:	0ac12f03          	lw	t5,172(sp)
   1bfe0:	000c8593          	mv	a1,s9
   1bfe4:	000a8513          	mv	a0,s5
   1bfe8:	0b012823          	sw	a6,176(sp)
   1bfec:	05012223          	sw	a6,68(sp)
   1bff0:	0bc12a23          	sw	t3,180(sp)
   1bff4:	03c12223          	sw	t3,36(sp)
   1bff8:	0bd12c23          	sw	t4,184(sp)
   1bffc:	03d12023          	sw	t4,32(sp)
   1c000:	0be12e23          	sw	t5,188(sp)
   1c004:	01e12e23          	sw	t5,28(sp)
   1c008:	0a012023          	sw	zero,160(sp)
   1c00c:	0a012223          	sw	zero,164(sp)
   1c010:	0a012423          	sw	zero,168(sp)
   1c014:	0a012623          	sw	zero,172(sp)
   1c018:	27c050ef          	jal	ra,21294 <__eqtf2>
   1c01c:	01c12f03          	lw	t5,28(sp)
   1c020:	02012e83          	lw	t4,32(sp)
   1c024:	02412e03          	lw	t3,36(sp)
   1c028:	04412803          	lw	a6,68(sp)
   1c02c:	05012883          	lw	a7,80(sp)
   1c030:	00051663          	bnez	a0,1c03c <_svfprintf_r+0x2860>
   1c034:	00100793          	li	a5,1
   1c038:	0cf12623          	sw	a5,204(sp)
   1c03c:	000257b7          	lui	a5,0x25
   1c040:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1c044:	02f12223          	sw	a5,36(sp)
   1c048:	ab5ff06f          	j	1bafc <_svfprintf_r+0x2320>
   1c04c:	00012823          	sw	zero,16(sp)
   1c050:	00078a13          	mv	s4,a5
   1c054:	d15ff06f          	j	1bd68 <_svfprintf_r+0x258c>
   1c058:	06700493          	li	s1,103
   1c05c:	03c12603          	lw	a2,60(sp)
   1c060:	0ff00693          	li	a3,255
   1c064:	00064783          	lbu	a5,0(a2)
   1c068:	18d78c63          	beq	a5,a3,1c200 <_svfprintf_r+0x2a24>
   1c06c:	01c12703          	lw	a4,28(sp)
   1c070:	00000513          	li	a0,0
   1c074:	00000593          	li	a1,0
   1c078:	00e7de63          	bge	a5,a4,1c094 <_svfprintf_r+0x28b8>
   1c07c:	40f70733          	sub	a4,a4,a5
   1c080:	00164783          	lbu	a5,1(a2)
   1c084:	04078863          	beqz	a5,1c0d4 <_svfprintf_r+0x28f8>
   1c088:	00158593          	addi	a1,a1,1
   1c08c:	00160613          	addi	a2,a2,1
   1c090:	fed794e3          	bne	a5,a3,1c078 <_svfprintf_r+0x289c>
   1c094:	02c12e23          	sw	a2,60(sp)
   1c098:	00e12e23          	sw	a4,28(sp)
   1c09c:	02b12223          	sw	a1,36(sp)
   1c0a0:	02a12423          	sw	a0,40(sp)
   1c0a4:	02412783          	lw	a5,36(sp)
   1c0a8:	02812703          	lw	a4,40(sp)
   1c0ac:	04812583          	lw	a1,72(sp)
   1c0b0:	05112023          	sw	a7,64(sp)
   1c0b4:	00e78533          	add	a0,a5,a4
   1c0b8:	60c080ef          	jal	ra,246c4 <__mulsi3>
   1c0bc:	01950cb3          	add	s9,a0,s9
   1c0c0:	fffcca93          	not	s5,s9
   1c0c4:	41fada93          	srai	s5,s5,0x1f
   1c0c8:	04012883          	lw	a7,64(sp)
   1c0cc:	015cfab3          	and	s5,s9,s5
   1c0d0:	e1dfd06f          	j	19eec <_svfprintf_r+0x710>
   1c0d4:	00064783          	lbu	a5,0(a2)
   1c0d8:	00150513          	addi	a0,a0,1
   1c0dc:	fb5ff06f          	j	1c090 <_svfprintf_r+0x28b4>
   1c0e0:	02c12783          	lw	a5,44(sp)
   1c0e4:	06600493          	li	s1,102
   1c0e8:	00f70cb3          	add	s9,a4,a5
   1c0ec:	01bc8cb3          	add	s9,s9,s11
   1c0f0:	849ff06f          	j	1b938 <_svfprintf_r+0x215c>
   1c0f4:	02812783          	lw	a5,40(sp)
   1c0f8:	0017f793          	andi	a5,a5,1
   1c0fc:	00079463          	bnez	a5,1c104 <_svfprintf_r+0x2928>
   1c100:	dc9fd06f          	j	19ec8 <_svfprintf_r+0x6ec>
   1c104:	dbdfd06f          	j	19ec0 <_svfprintf_r+0x6e4>
   1c108:	0a010c93          	addi	s9,sp,160
   1c10c:	000c8593          	mv	a1,s9
   1c110:	000a8513          	mv	a0,s5
   1c114:	05112223          	sw	a7,68(sp)
   1c118:	0bc12823          	sw	t3,176(sp)
   1c11c:	05c12023          	sw	t3,64(sp)
   1c120:	0bd12a23          	sw	t4,180(sp)
   1c124:	03d12223          	sw	t4,36(sp)
   1c128:	0be12c23          	sw	t5,184(sp)
   1c12c:	03e12023          	sw	t5,32(sp)
   1c130:	0a612e23          	sw	t1,188(sp)
   1c134:	00612e23          	sw	t1,28(sp)
   1c138:	0a012023          	sw	zero,160(sp)
   1c13c:	0a012223          	sw	zero,164(sp)
   1c140:	0a012423          	sw	zero,168(sp)
   1c144:	0a012623          	sw	zero,172(sp)
   1c148:	14c050ef          	jal	ra,21294 <__eqtf2>
   1c14c:	01c12303          	lw	t1,28(sp)
   1c150:	02012f03          	lw	t5,32(sp)
   1c154:	02412e83          	lw	t4,36(sp)
   1c158:	04012e03          	lw	t3,64(sp)
   1c15c:	04412883          	lw	a7,68(sp)
   1c160:	e8050e63          	beqz	a0,1b7fc <_svfprintf_r+0x2020>
   1c164:	00100793          	li	a5,1
   1c168:	41b787b3          	sub	a5,a5,s11
   1c16c:	0cf12623          	sw	a5,204(sp)
   1c170:	00f90933          	add	s2,s2,a5
   1c174:	bb1fd06f          	j	19d24 <_svfprintf_r+0x548>
   1c178:	00079a63          	bnez	a5,1c18c <_svfprintf_r+0x29b0>
   1c17c:	00100a93          	li	s5,1
   1c180:	06600493          	li	s1,102
   1c184:	00100c93          	li	s9,1
   1c188:	db0ff06f          	j	1b738 <_svfprintf_r+0x1f5c>
   1c18c:	02c12783          	lw	a5,44(sp)
   1c190:	06600493          	li	s1,102
   1c194:	00178c93          	addi	s9,a5,1
   1c198:	01bc8cb3          	add	s9,s9,s11
   1c19c:	fffcca93          	not	s5,s9
   1c1a0:	41fada93          	srai	s5,s5,0x1f
   1c1a4:	015cfab3          	and	s5,s9,s5
   1c1a8:	d90ff06f          	j	1b738 <_svfprintf_r+0x1f5c>
   1c1ac:	00088713          	mv	a4,a7
   1c1b0:	a74ff06f          	j	1b424 <_svfprintf_r+0x1c48>
   1c1b4:	01412783          	lw	a5,20(sp)
   1c1b8:	0007ad83          	lw	s11,0(a5)
   1c1bc:	00478793          	addi	a5,a5,4
   1c1c0:	000dd463          	bgez	s11,1c1c8 <_svfprintf_r+0x29ec>
   1c1c4:	fff00d93          	li	s11,-1
   1c1c8:	00144483          	lbu	s1,1(s0)
   1c1cc:	00f12a23          	sw	a5,20(sp)
   1c1d0:	00070413          	mv	s0,a4
   1c1d4:	f6cfd06f          	j	19940 <_svfprintf_r+0x164>
   1c1d8:	00c00793          	li	a5,12
   1c1dc:	00fd2023          	sw	a5,0(s10)
   1c1e0:	fff00793          	li	a5,-1
   1c1e4:	00f12623          	sw	a5,12(sp)
   1c1e8:	911fd06f          	j	19af8 <_svfprintf_r+0x31c>
   1c1ec:	00cc5703          	lhu	a4,12(s8)
   1c1f0:	04076793          	ori	a5,a4,64
   1c1f4:	00078713          	mv	a4,a5
   1c1f8:	00fc1623          	sh	a5,12(s8)
   1c1fc:	8f1fd06f          	j	19aec <_svfprintf_r+0x310>
   1c200:	02012423          	sw	zero,40(sp)
   1c204:	02012223          	sw	zero,36(sp)
   1c208:	e9dff06f          	j	1c0a4 <_svfprintf_r+0x28c8>
   1c20c:	00200793          	li	a5,2
   1c210:	02f12c23          	sw	a5,56(sp)
   1c214:	c95fd06f          	j	19ea8 <_svfprintf_r+0x6cc>

0001c218 <__sprint_r.part.0>:
   1c218:	0645a783          	lw	a5,100(a1)
   1c21c:	fd010113          	addi	sp,sp,-48
   1c220:	01612823          	sw	s6,16(sp)
   1c224:	02112623          	sw	ra,44(sp)
   1c228:	02812423          	sw	s0,40(sp)
   1c22c:	02912223          	sw	s1,36(sp)
   1c230:	03212023          	sw	s2,32(sp)
   1c234:	01312e23          	sw	s3,28(sp)
   1c238:	01412c23          	sw	s4,24(sp)
   1c23c:	01512a23          	sw	s5,20(sp)
   1c240:	01712623          	sw	s7,12(sp)
   1c244:	01812423          	sw	s8,8(sp)
   1c248:	01279713          	slli	a4,a5,0x12
   1c24c:	00060b13          	mv	s6,a2
   1c250:	0a075863          	bgez	a4,1c300 <__sprint_r.part.0+0xe8>
   1c254:	00862783          	lw	a5,8(a2)
   1c258:	00062b83          	lw	s7,0(a2)
   1c25c:	00058913          	mv	s2,a1
   1c260:	00050993          	mv	s3,a0
   1c264:	fff00a93          	li	s5,-1
   1c268:	08078863          	beqz	a5,1c2f8 <__sprint_r.part.0+0xe0>
   1c26c:	004bac03          	lw	s8,4(s7)
   1c270:	000ba403          	lw	s0,0(s7)
   1c274:	002c5a13          	srli	s4,s8,0x2
   1c278:	060a0663          	beqz	s4,1c2e4 <__sprint_r.part.0+0xcc>
   1c27c:	00000493          	li	s1,0
   1c280:	00c0006f          	j	1c28c <__sprint_r.part.0+0x74>
   1c284:	00440413          	addi	s0,s0,4
   1c288:	049a0c63          	beq	s4,s1,1c2e0 <__sprint_r.part.0+0xc8>
   1c28c:	00042583          	lw	a1,0(s0)
   1c290:	00090613          	mv	a2,s2
   1c294:	00098513          	mv	a0,s3
   1c298:	00d010ef          	jal	ra,1daa4 <_fputwc_r>
   1c29c:	00148493          	addi	s1,s1,1
   1c2a0:	ff5512e3          	bne	a0,s5,1c284 <__sprint_r.part.0+0x6c>
   1c2a4:	fff00513          	li	a0,-1
   1c2a8:	02c12083          	lw	ra,44(sp)
   1c2ac:	02812403          	lw	s0,40(sp)
   1c2b0:	000b2423          	sw	zero,8(s6)
   1c2b4:	000b2223          	sw	zero,4(s6)
   1c2b8:	02412483          	lw	s1,36(sp)
   1c2bc:	02012903          	lw	s2,32(sp)
   1c2c0:	01c12983          	lw	s3,28(sp)
   1c2c4:	01812a03          	lw	s4,24(sp)
   1c2c8:	01412a83          	lw	s5,20(sp)
   1c2cc:	01012b03          	lw	s6,16(sp)
   1c2d0:	00c12b83          	lw	s7,12(sp)
   1c2d4:	00812c03          	lw	s8,8(sp)
   1c2d8:	03010113          	addi	sp,sp,48
   1c2dc:	00008067          	ret
   1c2e0:	008b2783          	lw	a5,8(s6)
   1c2e4:	ffcc7c13          	andi	s8,s8,-4
   1c2e8:	418787b3          	sub	a5,a5,s8
   1c2ec:	00fb2423          	sw	a5,8(s6)
   1c2f0:	008b8b93          	addi	s7,s7,8
   1c2f4:	f6079ce3          	bnez	a5,1c26c <__sprint_r.part.0+0x54>
   1c2f8:	00000513          	li	a0,0
   1c2fc:	fadff06f          	j	1c2a8 <__sprint_r.part.0+0x90>
   1c300:	b35f70ef          	jal	ra,13e34 <__sfvwrite_r>
   1c304:	fa5ff06f          	j	1c2a8 <__sprint_r.part.0+0x90>

0001c308 <__sprint_r>:
   1c308:	00862703          	lw	a4,8(a2)
   1c30c:	00070463          	beqz	a4,1c314 <__sprint_r+0xc>
   1c310:	f09ff06f          	j	1c218 <__sprint_r.part.0>
   1c314:	00062223          	sw	zero,4(a2)
   1c318:	00000513          	li	a0,0
   1c31c:	00008067          	ret

0001c320 <_vfiprintf_r>:
   1c320:	ed010113          	addi	sp,sp,-304
   1c324:	11312e23          	sw	s3,284(sp)
   1c328:	11412c23          	sw	s4,280(sp)
   1c32c:	11712623          	sw	s7,268(sp)
   1c330:	12112623          	sw	ra,300(sp)
   1c334:	12812423          	sw	s0,296(sp)
   1c338:	12912223          	sw	s1,292(sp)
   1c33c:	13212023          	sw	s2,288(sp)
   1c340:	11512a23          	sw	s5,276(sp)
   1c344:	11612823          	sw	s6,272(sp)
   1c348:	11812423          	sw	s8,264(sp)
   1c34c:	11912223          	sw	s9,260(sp)
   1c350:	11a12023          	sw	s10,256(sp)
   1c354:	0fb12e23          	sw	s11,252(sp)
   1c358:	00d12823          	sw	a3,16(sp)
   1c35c:	00050a13          	mv	s4,a0
   1c360:	00058993          	mv	s3,a1
   1c364:	00060b93          	mv	s7,a2
   1c368:	00050663          	beqz	a0,1c374 <_vfiprintf_r+0x54>
   1c36c:	03852783          	lw	a5,56(a0)
   1c370:	5e078e63          	beqz	a5,1c96c <_vfiprintf_r+0x64c>
   1c374:	00c99703          	lh	a4,12(s3)
   1c378:	01071793          	slli	a5,a4,0x10
   1c37c:	01271693          	slli	a3,a4,0x12
   1c380:	0107d793          	srli	a5,a5,0x10
   1c384:	0206ca63          	bltz	a3,1c3b8 <_vfiprintf_r+0x98>
   1c388:	000027b7          	lui	a5,0x2
   1c38c:	0649a683          	lw	a3,100(s3)
   1c390:	00f767b3          	or	a5,a4,a5
   1c394:	01079793          	slli	a5,a5,0x10
   1c398:	ffffe737          	lui	a4,0xffffe
   1c39c:	4107d793          	srai	a5,a5,0x10
   1c3a0:	fff70713          	addi	a4,a4,-1 # ffffdfff <__BSS_END__+0xfffd702f>
   1c3a4:	00e6f733          	and	a4,a3,a4
   1c3a8:	00f99623          	sh	a5,12(s3)
   1c3ac:	01079793          	slli	a5,a5,0x10
   1c3b0:	06e9a223          	sw	a4,100(s3)
   1c3b4:	0107d793          	srli	a5,a5,0x10
   1c3b8:	0087f713          	andi	a4,a5,8
   1c3bc:	40070063          	beqz	a4,1c7bc <_vfiprintf_r+0x49c>
   1c3c0:	0109a703          	lw	a4,16(s3)
   1c3c4:	3e070c63          	beqz	a4,1c7bc <_vfiprintf_r+0x49c>
   1c3c8:	01a7f793          	andi	a5,a5,26
   1c3cc:	00a00713          	li	a4,10
   1c3d0:	40e78663          	beq	a5,a4,1c7dc <_vfiprintf_r+0x4bc>
   1c3d4:	000257b7          	lui	a5,0x25
   1c3d8:	f0478793          	addi	a5,a5,-252 # 24f04 <zeroes.4469+0x10>
   1c3dc:	00025b37          	lui	s6,0x25
   1c3e0:	04c10493          	addi	s1,sp,76
   1c3e4:	00f12a23          	sw	a5,20(sp)
   1c3e8:	00025937          	lui	s2,0x25
   1c3ec:	070b0793          	addi	a5,s6,112 # 25070 <blanks.4459>
   1c3f0:	000b8c13          	mv	s8,s7
   1c3f4:	04912023          	sw	s1,64(sp)
   1c3f8:	04012423          	sw	zero,72(sp)
   1c3fc:	04012223          	sw	zero,68(sp)
   1c400:	00012c23          	sw	zero,24(sp)
   1c404:	00012e23          	sw	zero,28(sp)
   1c408:	02012223          	sw	zero,36(sp)
   1c40c:	02012023          	sw	zero,32(sp)
   1c410:	00012623          	sw	zero,12(sp)
   1c414:	00f12423          	sw	a5,8(sp)
   1c418:	08090913          	addi	s2,s2,128 # 25080 <zeroes.4460>
   1c41c:	00048b93          	mv	s7,s1
   1c420:	000c4783          	lbu	a5,0(s8)
   1c424:	26078863          	beqz	a5,1c694 <_vfiprintf_r+0x374>
   1c428:	000c0413          	mv	s0,s8
   1c42c:	02500713          	li	a4,37
   1c430:	42e78e63          	beq	a5,a4,1c86c <_vfiprintf_r+0x54c>
   1c434:	00144783          	lbu	a5,1(s0)
   1c438:	00140413          	addi	s0,s0,1
   1c43c:	fe079ae3          	bnez	a5,1c430 <_vfiprintf_r+0x110>
   1c440:	41840cb3          	sub	s9,s0,s8
   1c444:	25840863          	beq	s0,s8,1c694 <_vfiprintf_r+0x374>
   1c448:	04812703          	lw	a4,72(sp)
   1c44c:	04412783          	lw	a5,68(sp)
   1c450:	018ba023          	sw	s8,0(s7)
   1c454:	00ec8733          	add	a4,s9,a4
   1c458:	00178793          	addi	a5,a5,1
   1c45c:	019ba223          	sw	s9,4(s7)
   1c460:	04e12423          	sw	a4,72(sp)
   1c464:	04f12223          	sw	a5,68(sp)
   1c468:	00700693          	li	a3,7
   1c46c:	008b8b93          	addi	s7,s7,8
   1c470:	02f6d063          	bge	a3,a5,1c490 <_vfiprintf_r+0x170>
   1c474:	3a070ae3          	beqz	a4,1d028 <_vfiprintf_r+0xd08>
   1c478:	04010613          	addi	a2,sp,64
   1c47c:	00098593          	mv	a1,s3
   1c480:	000a0513          	mv	a0,s4
   1c484:	d95ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1c488:	20051a63          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1c48c:	00048b93          	mv	s7,s1
   1c490:	00c12703          	lw	a4,12(sp)
   1c494:	00044783          	lbu	a5,0(s0)
   1c498:	01970733          	add	a4,a4,s9
   1c49c:	00e12623          	sw	a4,12(sp)
   1c4a0:	1e078a63          	beqz	a5,1c694 <_vfiprintf_r+0x374>
   1c4a4:	00144703          	lbu	a4,1(s0)
   1c4a8:	00140c13          	addi	s8,s0,1
   1c4ac:	02010da3          	sb	zero,59(sp)
   1c4b0:	fff00a93          	li	s5,-1
   1c4b4:	00012223          	sw	zero,4(sp)
   1c4b8:	00000b13          	li	s6,0
   1c4bc:	05a00c93          	li	s9,90
   1c4c0:	00900d13          	li	s10,9
   1c4c4:	02a00613          	li	a2,42
   1c4c8:	001c0c13          	addi	s8,s8,1
   1c4cc:	fe070793          	addi	a5,a4,-32
   1c4d0:	04fce863          	bltu	s9,a5,1c520 <_vfiprintf_r+0x200>
   1c4d4:	01412683          	lw	a3,20(sp)
   1c4d8:	00279793          	slli	a5,a5,0x2
   1c4dc:	00d787b3          	add	a5,a5,a3
   1c4e0:	0007a783          	lw	a5,0(a5)
   1c4e4:	00078067          	jr	a5
   1c4e8:	00012223          	sw	zero,4(sp)
   1c4ec:	fd070793          	addi	a5,a4,-48
   1c4f0:	00412583          	lw	a1,4(sp)
   1c4f4:	000c4703          	lbu	a4,0(s8)
   1c4f8:	001c0c13          	addi	s8,s8,1
   1c4fc:	00259693          	slli	a3,a1,0x2
   1c500:	00b686b3          	add	a3,a3,a1
   1c504:	00169693          	slli	a3,a3,0x1
   1c508:	00d787b3          	add	a5,a5,a3
   1c50c:	00f12223          	sw	a5,4(sp)
   1c510:	fd070793          	addi	a5,a4,-48
   1c514:	fcfd7ee3          	bgeu	s10,a5,1c4f0 <_vfiprintf_r+0x1d0>
   1c518:	fe070793          	addi	a5,a4,-32
   1c51c:	fafcfce3          	bgeu	s9,a5,1c4d4 <_vfiprintf_r+0x1b4>
   1c520:	16070a63          	beqz	a4,1c694 <_vfiprintf_r+0x374>
   1c524:	08e10623          	sb	a4,140(sp)
   1c528:	02010da3          	sb	zero,59(sp)
   1c52c:	00100c93          	li	s9,1
   1c530:	00100d13          	li	s10,1
   1c534:	08c10413          	addi	s0,sp,140
   1c538:	00000a93          	li	s5,0
   1c53c:	002b7f93          	andi	t6,s6,2
   1c540:	000f8463          	beqz	t6,1c548 <_vfiprintf_r+0x228>
   1c544:	002c8c93          	addi	s9,s9,2
   1c548:	04412703          	lw	a4,68(sp)
   1c54c:	084b7f13          	andi	t5,s6,132
   1c550:	04812783          	lw	a5,72(sp)
   1c554:	00170693          	addi	a3,a4,1
   1c558:	00068613          	mv	a2,a3
   1c55c:	000f1863          	bnez	t5,1c56c <_vfiprintf_r+0x24c>
   1c560:	00412583          	lw	a1,4(sp)
   1c564:	41958db3          	sub	s11,a1,s9
   1c568:	09b042e3          	bgtz	s11,1cdec <_vfiprintf_r+0xacc>
   1c56c:	03b14583          	lbu	a1,59(sp)
   1c570:	008b8693          	addi	a3,s7,8
   1c574:	02058c63          	beqz	a1,1c5ac <_vfiprintf_r+0x28c>
   1c578:	03b10713          	addi	a4,sp,59
   1c57c:	00178793          	addi	a5,a5,1
   1c580:	00eba023          	sw	a4,0(s7)
   1c584:	00100713          	li	a4,1
   1c588:	00eba223          	sw	a4,4(s7)
   1c58c:	04f12423          	sw	a5,72(sp)
   1c590:	04c12223          	sw	a2,68(sp)
   1c594:	00700713          	li	a4,7
   1c598:	7ec74063          	blt	a4,a2,1cd78 <_vfiprintf_r+0xa58>
   1c59c:	00060713          	mv	a4,a2
   1c5a0:	00068b93          	mv	s7,a3
   1c5a4:	00160613          	addi	a2,a2,1
   1c5a8:	00868693          	addi	a3,a3,8
   1c5ac:	040f8e63          	beqz	t6,1c608 <_vfiprintf_r+0x2e8>
   1c5b0:	03c10713          	addi	a4,sp,60
   1c5b4:	00278793          	addi	a5,a5,2
   1c5b8:	00eba023          	sw	a4,0(s7)
   1c5bc:	00200713          	li	a4,2
   1c5c0:	00eba223          	sw	a4,4(s7)
   1c5c4:	04f12423          	sw	a5,72(sp)
   1c5c8:	04c12223          	sw	a2,68(sp)
   1c5cc:	00700713          	li	a4,7
   1c5d0:	00c750e3          	bge	a4,a2,1cdd0 <_vfiprintf_r+0xab0>
   1c5d4:	2a0784e3          	beqz	a5,1d07c <_vfiprintf_r+0xd5c>
   1c5d8:	04010613          	addi	a2,sp,64
   1c5dc:	00098593          	mv	a1,s3
   1c5e0:	000a0513          	mv	a0,s4
   1c5e4:	03e12423          	sw	t5,40(sp)
   1c5e8:	c31ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1c5ec:	0a051863          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1c5f0:	04412703          	lw	a4,68(sp)
   1c5f4:	04812783          	lw	a5,72(sp)
   1c5f8:	02812f03          	lw	t5,40(sp)
   1c5fc:	05410693          	addi	a3,sp,84
   1c600:	00170613          	addi	a2,a4,1
   1c604:	00048b93          	mv	s7,s1
   1c608:	08000593          	li	a1,128
   1c60c:	5abf0663          	beq	t5,a1,1cbb8 <_vfiprintf_r+0x898>
   1c610:	41aa8ab3          	sub	s5,s5,s10
   1c614:	69504263          	bgtz	s5,1cc98 <_vfiprintf_r+0x978>
   1c618:	00fd07b3          	add	a5,s10,a5
   1c61c:	008ba023          	sw	s0,0(s7)
   1c620:	01aba223          	sw	s10,4(s7)
   1c624:	04f12423          	sw	a5,72(sp)
   1c628:	04c12223          	sw	a2,68(sp)
   1c62c:	00700713          	li	a4,7
   1c630:	02c75263          	bge	a4,a2,1c654 <_vfiprintf_r+0x334>
   1c634:	0a078ee3          	beqz	a5,1cef0 <_vfiprintf_r+0xbd0>
   1c638:	04010613          	addi	a2,sp,64
   1c63c:	00098593          	mv	a1,s3
   1c640:	000a0513          	mv	a0,s4
   1c644:	bd5ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1c648:	04051a63          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1c64c:	04812783          	lw	a5,72(sp)
   1c650:	00048693          	mv	a3,s1
   1c654:	004b7313          	andi	t1,s6,4
   1c658:	00030863          	beqz	t1,1c668 <_vfiprintf_r+0x348>
   1c65c:	00412703          	lw	a4,4(sp)
   1c660:	41970bb3          	sub	s7,a4,s9
   1c664:	0b7044e3          	bgtz	s7,1cf0c <_vfiprintf_r+0xbec>
   1c668:	00412403          	lw	s0,4(sp)
   1c66c:	01945463          	bge	s0,s9,1c674 <_vfiprintf_r+0x354>
   1c670:	000c8413          	mv	s0,s9
   1c674:	00c12703          	lw	a4,12(sp)
   1c678:	00870733          	add	a4,a4,s0
   1c67c:	00e12623          	sw	a4,12(sp)
   1c680:	6c079863          	bnez	a5,1cd50 <_vfiprintf_r+0xa30>
   1c684:	000c4783          	lbu	a5,0(s8)
   1c688:	04012223          	sw	zero,68(sp)
   1c68c:	00048b93          	mv	s7,s1
   1c690:	d8079ce3          	bnez	a5,1c428 <_vfiprintf_r+0x108>
   1c694:	04812783          	lw	a5,72(sp)
   1c698:	64079ae3          	bnez	a5,1d4ec <_vfiprintf_r+0x11cc>
   1c69c:	00c9d783          	lhu	a5,12(s3)
   1c6a0:	0407f793          	andi	a5,a5,64
   1c6a4:	680792e3          	bnez	a5,1d528 <_vfiprintf_r+0x1208>
   1c6a8:	12c12083          	lw	ra,300(sp)
   1c6ac:	12812403          	lw	s0,296(sp)
   1c6b0:	00c12503          	lw	a0,12(sp)
   1c6b4:	12412483          	lw	s1,292(sp)
   1c6b8:	12012903          	lw	s2,288(sp)
   1c6bc:	11c12983          	lw	s3,284(sp)
   1c6c0:	11812a03          	lw	s4,280(sp)
   1c6c4:	11412a83          	lw	s5,276(sp)
   1c6c8:	11012b03          	lw	s6,272(sp)
   1c6cc:	10c12b83          	lw	s7,268(sp)
   1c6d0:	10812c03          	lw	s8,264(sp)
   1c6d4:	10412c83          	lw	s9,260(sp)
   1c6d8:	10012d03          	lw	s10,256(sp)
   1c6dc:	0fc12d83          	lw	s11,252(sp)
   1c6e0:	13010113          	addi	sp,sp,304
   1c6e4:	00008067          	ret
   1c6e8:	000a0513          	mv	a0,s4
   1c6ec:	919fa0ef          	jal	ra,17004 <_localeconv_r>
   1c6f0:	00452783          	lw	a5,4(a0)
   1c6f4:	00078513          	mv	a0,a5
   1c6f8:	02f12023          	sw	a5,32(sp)
   1c6fc:	dbdf30ef          	jal	ra,104b8 <strlen>
   1c700:	00050793          	mv	a5,a0
   1c704:	000a0513          	mv	a0,s4
   1c708:	00078413          	mv	s0,a5
   1c70c:	02f12223          	sw	a5,36(sp)
   1c710:	8f5fa0ef          	jal	ra,17004 <_localeconv_r>
   1c714:	00852783          	lw	a5,8(a0)
   1c718:	02a00613          	li	a2,42
   1c71c:	00f12e23          	sw	a5,28(sp)
   1c720:	2a0418e3          	bnez	s0,1d1d0 <_vfiprintf_r+0xeb0>
   1c724:	000c4703          	lbu	a4,0(s8)
   1c728:	da1ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1c72c:	000c4703          	lbu	a4,0(s8)
   1c730:	020b6b13          	ori	s6,s6,32
   1c734:	d95ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1c738:	010b6b13          	ori	s6,s6,16
   1c73c:	020b7793          	andi	a5,s6,32
   1c740:	16078463          	beqz	a5,1c8a8 <_vfiprintf_r+0x588>
   1c744:	01012783          	lw	a5,16(sp)
   1c748:	00778793          	addi	a5,a5,7
   1c74c:	ff87f793          	andi	a5,a5,-8
   1c750:	0047a703          	lw	a4,4(a5)
   1c754:	0007ad03          	lw	s10,0(a5)
   1c758:	00878793          	addi	a5,a5,8
   1c75c:	00f12823          	sw	a5,16(sp)
   1c760:	00070c93          	mv	s9,a4
   1c764:	16074a63          	bltz	a4,1c8d8 <_vfiprintf_r+0x5b8>
   1c768:	fff00713          	li	a4,-1
   1c76c:	000b0d93          	mv	s11,s6
   1c770:	00ea8863          	beq	s5,a4,1c780 <_vfiprintf_r+0x460>
   1c774:	019d6733          	or	a4,s10,s9
   1c778:	f7fb7d93          	andi	s11,s6,-129
   1c77c:	0a070ce3          	beqz	a4,1d034 <_vfiprintf_r+0xd14>
   1c780:	160c96e3          	bnez	s9,1d0ec <_vfiprintf_r+0xdcc>
   1c784:	00900713          	li	a4,9
   1c788:	17a762e3          	bltu	a4,s10,1d0ec <_vfiprintf_r+0xdcc>
   1c78c:	030d0793          	addi	a5,s10,48
   1c790:	0ef107a3          	sb	a5,239(sp)
   1c794:	000d8b13          	mv	s6,s11
   1c798:	00100d13          	li	s10,1
   1c79c:	0ef10413          	addi	s0,sp,239
   1c7a0:	000a8c93          	mv	s9,s5
   1c7a4:	01aad463          	bge	s5,s10,1c7ac <_vfiprintf_r+0x48c>
   1c7a8:	000d0c93          	mv	s9,s10
   1c7ac:	03b14783          	lbu	a5,59(sp)
   1c7b0:	00f037b3          	snez	a5,a5
   1c7b4:	00fc8cb3          	add	s9,s9,a5
   1c7b8:	d85ff06f          	j	1c53c <_vfiprintf_r+0x21c>
   1c7bc:	00098593          	mv	a1,s3
   1c7c0:	000a0513          	mv	a0,s4
   1c7c4:	911f60ef          	jal	ra,130d4 <__swsetup_r>
   1c7c8:	560510e3          	bnez	a0,1d528 <_vfiprintf_r+0x1208>
   1c7cc:	00c9d783          	lhu	a5,12(s3)
   1c7d0:	00a00713          	li	a4,10
   1c7d4:	01a7f793          	andi	a5,a5,26
   1c7d8:	bee79ee3          	bne	a5,a4,1c3d4 <_vfiprintf_r+0xb4>
   1c7dc:	00e99783          	lh	a5,14(s3)
   1c7e0:	be07cae3          	bltz	a5,1c3d4 <_vfiprintf_r+0xb4>
   1c7e4:	01012683          	lw	a3,16(sp)
   1c7e8:	000b8613          	mv	a2,s7
   1c7ec:	00098593          	mv	a1,s3
   1c7f0:	000a0513          	mv	a0,s4
   1c7f4:	589000ef          	jal	ra,1d57c <__sbprintf>
   1c7f8:	00a12623          	sw	a0,12(sp)
   1c7fc:	eadff06f          	j	1c6a8 <_vfiprintf_r+0x388>
   1c800:	010b6b13          	ori	s6,s6,16
   1c804:	020b7793          	andi	a5,s6,32
   1c808:	06078a63          	beqz	a5,1c87c <_vfiprintf_r+0x55c>
   1c80c:	01012783          	lw	a5,16(sp)
   1c810:	00778793          	addi	a5,a5,7
   1c814:	ff87f793          	andi	a5,a5,-8
   1c818:	0007ad03          	lw	s10,0(a5)
   1c81c:	0047ac83          	lw	s9,4(a5)
   1c820:	00878793          	addi	a5,a5,8
   1c824:	00f12823          	sw	a5,16(sp)
   1c828:	bffb7d93          	andi	s11,s6,-1025
   1c82c:	00000713          	li	a4,0
   1c830:	02010da3          	sb	zero,59(sp)
   1c834:	fff00693          	li	a3,-1
   1c838:	0cda8463          	beq	s5,a3,1c900 <_vfiprintf_r+0x5e0>
   1c83c:	019d66b3          	or	a3,s10,s9
   1c840:	f7fdfb13          	andi	s6,s11,-129
   1c844:	5a069063          	bnez	a3,1cde4 <_vfiprintf_r+0xac4>
   1c848:	300a9c63          	bnez	s5,1cb60 <_vfiprintf_r+0x840>
   1c84c:	7e071863          	bnez	a4,1d03c <_vfiprintf_r+0xd1c>
   1c850:	001dfd13          	andi	s10,s11,1
   1c854:	0f010413          	addi	s0,sp,240
   1c858:	f40d04e3          	beqz	s10,1c7a0 <_vfiprintf_r+0x480>
   1c85c:	03000793          	li	a5,48
   1c860:	0ef107a3          	sb	a5,239(sp)
   1c864:	0ef10413          	addi	s0,sp,239
   1c868:	f39ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1c86c:	41840cb3          	sub	s9,s0,s8
   1c870:	bd841ce3          	bne	s0,s8,1c448 <_vfiprintf_r+0x128>
   1c874:	00044783          	lbu	a5,0(s0)
   1c878:	c29ff06f          	j	1c4a0 <_vfiprintf_r+0x180>
   1c87c:	01012683          	lw	a3,16(sp)
   1c880:	010b7793          	andi	a5,s6,16
   1c884:	00468713          	addi	a4,a3,4
   1c888:	16079ce3          	bnez	a5,1d200 <_vfiprintf_r+0xee0>
   1c88c:	040b7793          	andi	a5,s6,64
   1c890:	380788e3          	beqz	a5,1d420 <_vfiprintf_r+0x1100>
   1c894:	01012783          	lw	a5,16(sp)
   1c898:	00000c93          	li	s9,0
   1c89c:	00e12823          	sw	a4,16(sp)
   1c8a0:	0007dd03          	lhu	s10,0(a5)
   1c8a4:	f85ff06f          	j	1c828 <_vfiprintf_r+0x508>
   1c8a8:	01012683          	lw	a3,16(sp)
   1c8ac:	010b7793          	andi	a5,s6,16
   1c8b0:	00468713          	addi	a4,a3,4
   1c8b4:	100794e3          	bnez	a5,1d1bc <_vfiprintf_r+0xe9c>
   1c8b8:	040b7793          	andi	a5,s6,64
   1c8bc:	320782e3          	beqz	a5,1d3e0 <_vfiprintf_r+0x10c0>
   1c8c0:	01012783          	lw	a5,16(sp)
   1c8c4:	00e12823          	sw	a4,16(sp)
   1c8c8:	00079d03          	lh	s10,0(a5)
   1c8cc:	41fd5c93          	srai	s9,s10,0x1f
   1c8d0:	000c8713          	mv	a4,s9
   1c8d4:	e8075ae3          	bgez	a4,1c768 <_vfiprintf_r+0x448>
   1c8d8:	01a03733          	snez	a4,s10
   1c8dc:	41900eb3          	neg	t4,s9
   1c8e0:	40ee8cb3          	sub	s9,t4,a4
   1c8e4:	02d00713          	li	a4,45
   1c8e8:	02e10da3          	sb	a4,59(sp)
   1c8ec:	fff00693          	li	a3,-1
   1c8f0:	41a00d33          	neg	s10,s10
   1c8f4:	000b0d93          	mv	s11,s6
   1c8f8:	00100713          	li	a4,1
   1c8fc:	f4da90e3          	bne	s5,a3,1c83c <_vfiprintf_r+0x51c>
   1c900:	00100693          	li	a3,1
   1c904:	e6d70ee3          	beq	a4,a3,1c780 <_vfiprintf_r+0x460>
   1c908:	00200693          	li	a3,2
   1c90c:	26d70463          	beq	a4,a3,1cb74 <_vfiprintf_r+0x854>
   1c910:	0f010413          	addi	s0,sp,240
   1c914:	01dc9793          	slli	a5,s9,0x1d
   1c918:	007d7713          	andi	a4,s10,7
   1c91c:	003d5d13          	srli	s10,s10,0x3
   1c920:	03070713          	addi	a4,a4,48
   1c924:	01a7ed33          	or	s10,a5,s10
   1c928:	003cdc93          	srli	s9,s9,0x3
   1c92c:	fee40fa3          	sb	a4,-1(s0)
   1c930:	019d67b3          	or	a5,s10,s9
   1c934:	00040613          	mv	a2,s0
   1c938:	fff40413          	addi	s0,s0,-1
   1c93c:	fc079ce3          	bnez	a5,1c914 <_vfiprintf_r+0x5f4>
   1c940:	001df793          	andi	a5,s11,1
   1c944:	26078263          	beqz	a5,1cba8 <_vfiprintf_r+0x888>
   1c948:	03000793          	li	a5,48
   1c94c:	24f70e63          	beq	a4,a5,1cba8 <_vfiprintf_r+0x888>
   1c950:	ffe60613          	addi	a2,a2,-2
   1c954:	fef40fa3          	sb	a5,-1(s0)
   1c958:	0f010793          	addi	a5,sp,240
   1c95c:	40c78d33          	sub	s10,a5,a2
   1c960:	000d8b13          	mv	s6,s11
   1c964:	00060413          	mv	s0,a2
   1c968:	e39ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1c96c:	ffdf60ef          	jal	ra,13968 <__sinit>
   1c970:	a05ff06f          	j	1c374 <_vfiprintf_r+0x54>
   1c974:	01012783          	lw	a5,16(sp)
   1c978:	02010da3          	sb	zero,59(sp)
   1c97c:	0007a403          	lw	s0,0(a5)
   1c980:	00478d93          	addi	s11,a5,4
   1c984:	220400e3          	beqz	s0,1d3a4 <_vfiprintf_r+0x1084>
   1c988:	fff00793          	li	a5,-1
   1c98c:	12fa88e3          	beq	s5,a5,1d2bc <_vfiprintf_r+0xf9c>
   1c990:	000a8613          	mv	a2,s5
   1c994:	00000593          	li	a1,0
   1c998:	00040513          	mv	a0,s0
   1c99c:	800fb0ef          	jal	ra,1799c <memchr>
   1c9a0:	360500e3          	beqz	a0,1d500 <_vfiprintf_r+0x11e0>
   1c9a4:	40850d33          	sub	s10,a0,s0
   1c9a8:	01b12823          	sw	s11,16(sp)
   1c9ac:	00000a93          	li	s5,0
   1c9b0:	df1ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1c9b4:	01012703          	lw	a4,16(sp)
   1c9b8:	02010da3          	sb	zero,59(sp)
   1c9bc:	00100c93          	li	s9,1
   1c9c0:	00072783          	lw	a5,0(a4)
   1c9c4:	00470713          	addi	a4,a4,4
   1c9c8:	00e12823          	sw	a4,16(sp)
   1c9cc:	08f10623          	sb	a5,140(sp)
   1c9d0:	00100d13          	li	s10,1
   1c9d4:	08c10413          	addi	s0,sp,140
   1c9d8:	b61ff06f          	j	1c538 <_vfiprintf_r+0x218>
   1c9dc:	01012783          	lw	a5,16(sp)
   1c9e0:	ffff8737          	lui	a4,0xffff8
   1c9e4:	83074713          	xori	a4,a4,-2000
   1c9e8:	0007ad03          	lw	s10,0(a5)
   1c9ec:	00478793          	addi	a5,a5,4
   1c9f0:	00f12823          	sw	a5,16(sp)
   1c9f4:	000257b7          	lui	a5,0x25
   1c9f8:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1c9fc:	02e11e23          	sh	a4,60(sp)
   1ca00:	00000c93          	li	s9,0
   1ca04:	002b6d93          	ori	s11,s6,2
   1ca08:	00f12c23          	sw	a5,24(sp)
   1ca0c:	00200713          	li	a4,2
   1ca10:	e21ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1ca14:	000c4703          	lbu	a4,0(s8)
   1ca18:	06c00793          	li	a5,108
   1ca1c:	16f706e3          	beq	a4,a5,1d388 <_vfiprintf_r+0x1068>
   1ca20:	010b6b13          	ori	s6,s6,16
   1ca24:	aa5ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1ca28:	000c4703          	lbu	a4,0(s8)
   1ca2c:	06800793          	li	a5,104
   1ca30:	14f704e3          	beq	a4,a5,1d378 <_vfiprintf_r+0x1058>
   1ca34:	040b6b13          	ori	s6,s6,64
   1ca38:	a91ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1ca3c:	010b6d93          	ori	s11,s6,16
   1ca40:	020df793          	andi	a5,s11,32
   1ca44:	60078463          	beqz	a5,1d04c <_vfiprintf_r+0xd2c>
   1ca48:	01012783          	lw	a5,16(sp)
   1ca4c:	00100713          	li	a4,1
   1ca50:	00778793          	addi	a5,a5,7
   1ca54:	ff87f793          	andi	a5,a5,-8
   1ca58:	0007ad03          	lw	s10,0(a5)
   1ca5c:	0047ac83          	lw	s9,4(a5)
   1ca60:	00878793          	addi	a5,a5,8
   1ca64:	00f12823          	sw	a5,16(sp)
   1ca68:	dc9ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1ca6c:	000c4703          	lbu	a4,0(s8)
   1ca70:	080b6b13          	ori	s6,s6,128
   1ca74:	a55ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1ca78:	01012683          	lw	a3,16(sp)
   1ca7c:	000c4703          	lbu	a4,0(s8)
   1ca80:	0006a783          	lw	a5,0(a3)
   1ca84:	00468693          	addi	a3,a3,4
   1ca88:	00d12823          	sw	a3,16(sp)
   1ca8c:	00f12223          	sw	a5,4(sp)
   1ca90:	a207dce3          	bgez	a5,1c4c8 <_vfiprintf_r+0x1a8>
   1ca94:	40f007b3          	neg	a5,a5
   1ca98:	00f12223          	sw	a5,4(sp)
   1ca9c:	004b6b13          	ori	s6,s6,4
   1caa0:	a29ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1caa4:	000c4703          	lbu	a4,0(s8)
   1caa8:	001b6b13          	ori	s6,s6,1
   1caac:	a1dff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1cab0:	03b14783          	lbu	a5,59(sp)
   1cab4:	000c4703          	lbu	a4,0(s8)
   1cab8:	a00798e3          	bnez	a5,1c4c8 <_vfiprintf_r+0x1a8>
   1cabc:	02000793          	li	a5,32
   1cac0:	02f10da3          	sb	a5,59(sp)
   1cac4:	a05ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1cac8:	000c4703          	lbu	a4,0(s8)
   1cacc:	004b6b13          	ori	s6,s6,4
   1cad0:	9f9ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1cad4:	02b00793          	li	a5,43
   1cad8:	000c4703          	lbu	a4,0(s8)
   1cadc:	02f10da3          	sb	a5,59(sp)
   1cae0:	9e9ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1cae4:	000c4703          	lbu	a4,0(s8)
   1cae8:	001c0693          	addi	a3,s8,1
   1caec:	24c70ae3          	beq	a4,a2,1d540 <_vfiprintf_r+0x1220>
   1caf0:	fd070793          	addi	a5,a4,-48 # ffff7fd0 <__BSS_END__+0xfffd1000>
   1caf4:	00068c13          	mv	s8,a3
   1caf8:	00000a93          	li	s5,0
   1cafc:	9cfd68e3          	bltu	s10,a5,1c4cc <_vfiprintf_r+0x1ac>
   1cb00:	000c4703          	lbu	a4,0(s8)
   1cb04:	002a9693          	slli	a3,s5,0x2
   1cb08:	01568ab3          	add	s5,a3,s5
   1cb0c:	001a9a93          	slli	s5,s5,0x1
   1cb10:	00fa8ab3          	add	s5,s5,a5
   1cb14:	fd070793          	addi	a5,a4,-48
   1cb18:	001c0c13          	addi	s8,s8,1
   1cb1c:	fefd72e3          	bgeu	s10,a5,1cb00 <_vfiprintf_r+0x7e0>
   1cb20:	9adff06f          	j	1c4cc <_vfiprintf_r+0x1ac>
   1cb24:	01012683          	lw	a3,16(sp)
   1cb28:	020b7793          	andi	a5,s6,32
   1cb2c:	0006a703          	lw	a4,0(a3)
   1cb30:	00468693          	addi	a3,a3,4
   1cb34:	00d12823          	sw	a3,16(sp)
   1cb38:	6a079a63          	bnez	a5,1d1ec <_vfiprintf_r+0xecc>
   1cb3c:	010b7793          	andi	a5,s6,16
   1cb40:	04079ce3          	bnez	a5,1d398 <_vfiprintf_r+0x1078>
   1cb44:	040b7793          	andi	a5,s6,64
   1cb48:	140790e3          	bnez	a5,1d488 <_vfiprintf_r+0x1168>
   1cb4c:	200b7313          	andi	t1,s6,512
   1cb50:	040304e3          	beqz	t1,1d398 <_vfiprintf_r+0x1078>
   1cb54:	00c12783          	lw	a5,12(sp)
   1cb58:	00f70023          	sb	a5,0(a4)
   1cb5c:	8c5ff06f          	j	1c420 <_vfiprintf_r+0x100>
   1cb60:	00100693          	li	a3,1
   1cb64:	1ad70ee3          	beq	a4,a3,1d520 <_vfiprintf_r+0x1200>
   1cb68:	00200693          	li	a3,2
   1cb6c:	000b0d93          	mv	s11,s6
   1cb70:	dad710e3          	bne	a4,a3,1c910 <_vfiprintf_r+0x5f0>
   1cb74:	01812683          	lw	a3,24(sp)
   1cb78:	0f010413          	addi	s0,sp,240
   1cb7c:	00fd7793          	andi	a5,s10,15
   1cb80:	00f687b3          	add	a5,a3,a5
   1cb84:	0007c703          	lbu	a4,0(a5)
   1cb88:	004d5d13          	srli	s10,s10,0x4
   1cb8c:	01cc9793          	slli	a5,s9,0x1c
   1cb90:	01a7ed33          	or	s10,a5,s10
   1cb94:	004cdc93          	srli	s9,s9,0x4
   1cb98:	fee40fa3          	sb	a4,-1(s0)
   1cb9c:	019d67b3          	or	a5,s10,s9
   1cba0:	fff40413          	addi	s0,s0,-1
   1cba4:	fc079ce3          	bnez	a5,1cb7c <_vfiprintf_r+0x85c>
   1cba8:	0f010793          	addi	a5,sp,240
   1cbac:	40878d33          	sub	s10,a5,s0
   1cbb0:	000d8b13          	mv	s6,s11
   1cbb4:	bedff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1cbb8:	00412583          	lw	a1,4(sp)
   1cbbc:	41958db3          	sub	s11,a1,s9
   1cbc0:	a5b058e3          	blez	s11,1c610 <_vfiprintf_r+0x2f0>
   1cbc4:	01000593          	li	a1,16
   1cbc8:	17b5d6e3          	bge	a1,s11,1d534 <_vfiprintf_r+0x1214>
   1cbcc:	01000e93          	li	t4,16
   1cbd0:	00700f13          	li	t5,7
   1cbd4:	0180006f          	j	1cbec <_vfiprintf_r+0x8cc>
   1cbd8:	00270613          	addi	a2,a4,2
   1cbdc:	008b8b93          	addi	s7,s7,8
   1cbe0:	00068713          	mv	a4,a3
   1cbe4:	ff0d8d93          	addi	s11,s11,-16
   1cbe8:	05bedc63          	bge	t4,s11,1cc40 <_vfiprintf_r+0x920>
   1cbec:	01078793          	addi	a5,a5,16
   1cbf0:	00170693          	addi	a3,a4,1
   1cbf4:	012ba023          	sw	s2,0(s7)
   1cbf8:	01dba223          	sw	t4,4(s7)
   1cbfc:	04f12423          	sw	a5,72(sp)
   1cc00:	04d12223          	sw	a3,68(sp)
   1cc04:	fcdf5ae3          	bge	t5,a3,1cbd8 <_vfiprintf_r+0x8b8>
   1cc08:	16078063          	beqz	a5,1cd68 <_vfiprintf_r+0xa48>
   1cc0c:	04010613          	addi	a2,sp,64
   1cc10:	00098593          	mv	a1,s3
   1cc14:	000a0513          	mv	a0,s4
   1cc18:	e00ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cc1c:	a80510e3          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1cc20:	04412703          	lw	a4,68(sp)
   1cc24:	01000e93          	li	t4,16
   1cc28:	ff0d8d93          	addi	s11,s11,-16
   1cc2c:	04812783          	lw	a5,72(sp)
   1cc30:	00048b93          	mv	s7,s1
   1cc34:	00170613          	addi	a2,a4,1
   1cc38:	00700f13          	li	t5,7
   1cc3c:	fbbec8e3          	blt	t4,s11,1cbec <_vfiprintf_r+0x8cc>
   1cc40:	00060593          	mv	a1,a2
   1cc44:	008b8513          	addi	a0,s7,8
   1cc48:	01b787b3          	add	a5,a5,s11
   1cc4c:	012ba023          	sw	s2,0(s7)
   1cc50:	01bba223          	sw	s11,4(s7)
   1cc54:	04f12423          	sw	a5,72(sp)
   1cc58:	04b12223          	sw	a1,68(sp)
   1cc5c:	00700713          	li	a4,7
   1cc60:	52b75a63          	bge	a4,a1,1d194 <_vfiprintf_r+0xe74>
   1cc64:	7e078663          	beqz	a5,1d450 <_vfiprintf_r+0x1130>
   1cc68:	04010613          	addi	a2,sp,64
   1cc6c:	00098593          	mv	a1,s3
   1cc70:	000a0513          	mv	a0,s4
   1cc74:	da4ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cc78:	a20512e3          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1cc7c:	04412703          	lw	a4,68(sp)
   1cc80:	41aa8ab3          	sub	s5,s5,s10
   1cc84:	04812783          	lw	a5,72(sp)
   1cc88:	05410693          	addi	a3,sp,84
   1cc8c:	00170613          	addi	a2,a4,1
   1cc90:	00048b93          	mv	s7,s1
   1cc94:	995052e3          	blez	s5,1c618 <_vfiprintf_r+0x2f8>
   1cc98:	01000593          	li	a1,16
   1cc9c:	7b55d063          	bge	a1,s5,1d43c <_vfiprintf_r+0x111c>
   1cca0:	01000893          	li	a7,16
   1cca4:	00700d93          	li	s11,7
   1cca8:	0180006f          	j	1ccc0 <_vfiprintf_r+0x9a0>
   1ccac:	00270613          	addi	a2,a4,2
   1ccb0:	008b8b93          	addi	s7,s7,8
   1ccb4:	00068713          	mv	a4,a3
   1ccb8:	ff0a8a93          	addi	s5,s5,-16
   1ccbc:	0558da63          	bge	a7,s5,1cd10 <_vfiprintf_r+0x9f0>
   1ccc0:	01078793          	addi	a5,a5,16
   1ccc4:	00170693          	addi	a3,a4,1
   1ccc8:	012ba023          	sw	s2,0(s7)
   1cccc:	011ba223          	sw	a7,4(s7)
   1ccd0:	04f12423          	sw	a5,72(sp)
   1ccd4:	04d12223          	sw	a3,68(sp)
   1ccd8:	fcdddae3          	bge	s11,a3,1ccac <_vfiprintf_r+0x98c>
   1ccdc:	06078263          	beqz	a5,1cd40 <_vfiprintf_r+0xa20>
   1cce0:	04010613          	addi	a2,sp,64
   1cce4:	00098593          	mv	a1,s3
   1cce8:	000a0513          	mv	a0,s4
   1ccec:	d2cff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1ccf0:	9a0516e3          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1ccf4:	04412703          	lw	a4,68(sp)
   1ccf8:	01000893          	li	a7,16
   1ccfc:	ff0a8a93          	addi	s5,s5,-16
   1cd00:	04812783          	lw	a5,72(sp)
   1cd04:	00048b93          	mv	s7,s1
   1cd08:	00170613          	addi	a2,a4,1
   1cd0c:	fb58cae3          	blt	a7,s5,1ccc0 <_vfiprintf_r+0x9a0>
   1cd10:	008b8593          	addi	a1,s7,8
   1cd14:	015787b3          	add	a5,a5,s5
   1cd18:	012ba023          	sw	s2,0(s7)
   1cd1c:	015ba223          	sw	s5,4(s7)
   1cd20:	04f12423          	sw	a5,72(sp)
   1cd24:	04c12223          	sw	a2,68(sp)
   1cd28:	00700713          	li	a4,7
   1cd2c:	2cc74663          	blt	a4,a2,1cff8 <_vfiprintf_r+0xcd8>
   1cd30:	00160613          	addi	a2,a2,1
   1cd34:	00858693          	addi	a3,a1,8
   1cd38:	00058b93          	mv	s7,a1
   1cd3c:	8ddff06f          	j	1c618 <_vfiprintf_r+0x2f8>
   1cd40:	00100613          	li	a2,1
   1cd44:	00000713          	li	a4,0
   1cd48:	00048b93          	mv	s7,s1
   1cd4c:	f6dff06f          	j	1ccb8 <_vfiprintf_r+0x998>
   1cd50:	04010613          	addi	a2,sp,64
   1cd54:	00098593          	mv	a1,s3
   1cd58:	000a0513          	mv	a0,s4
   1cd5c:	cbcff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cd60:	920502e3          	beqz	a0,1c684 <_vfiprintf_r+0x364>
   1cd64:	939ff06f          	j	1c69c <_vfiprintf_r+0x37c>
   1cd68:	00100613          	li	a2,1
   1cd6c:	00000713          	li	a4,0
   1cd70:	00048b93          	mv	s7,s1
   1cd74:	e71ff06f          	j	1cbe4 <_vfiprintf_r+0x8c4>
   1cd78:	30078c63          	beqz	a5,1d090 <_vfiprintf_r+0xd70>
   1cd7c:	04010613          	addi	a2,sp,64
   1cd80:	00098593          	mv	a1,s3
   1cd84:	000a0513          	mv	a0,s4
   1cd88:	03e12623          	sw	t5,44(sp)
   1cd8c:	03f12423          	sw	t6,40(sp)
   1cd90:	c88ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cd94:	900514e3          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1cd98:	04412703          	lw	a4,68(sp)
   1cd9c:	04812783          	lw	a5,72(sp)
   1cda0:	02c12f03          	lw	t5,44(sp)
   1cda4:	02812f83          	lw	t6,40(sp)
   1cda8:	05410693          	addi	a3,sp,84
   1cdac:	00170613          	addi	a2,a4,1
   1cdb0:	00048b93          	mv	s7,s1
   1cdb4:	ff8ff06f          	j	1c5ac <_vfiprintf_r+0x28c>
   1cdb8:	03c10793          	addi	a5,sp,60
   1cdbc:	04f12623          	sw	a5,76(sp)
   1cdc0:	00200793          	li	a5,2
   1cdc4:	04f12823          	sw	a5,80(sp)
   1cdc8:	00100613          	li	a2,1
   1cdcc:	05410693          	addi	a3,sp,84
   1cdd0:	00060713          	mv	a4,a2
   1cdd4:	00068b93          	mv	s7,a3
   1cdd8:	00170613          	addi	a2,a4,1
   1cddc:	008b8693          	addi	a3,s7,8
   1cde0:	829ff06f          	j	1c608 <_vfiprintf_r+0x2e8>
   1cde4:	000b0d93          	mv	s11,s6
   1cde8:	b19ff06f          	j	1c900 <_vfiprintf_r+0x5e0>
   1cdec:	01000613          	li	a2,16
   1cdf0:	73b65063          	bge	a2,s11,1d510 <_vfiprintf_r+0x11f0>
   1cdf4:	000b8613          	mv	a2,s7
   1cdf8:	01000e93          	li	t4,16
   1cdfc:	00040b93          	mv	s7,s0
   1ce00:	00700293          	li	t0,7
   1ce04:	00098413          	mv	s0,s3
   1ce08:	03f12423          	sw	t6,40(sp)
   1ce0c:	000d8993          	mv	s3,s11
   1ce10:	000c0d93          	mv	s11,s8
   1ce14:	000a8c13          	mv	s8,s5
   1ce18:	000f0a93          	mv	s5,t5
   1ce1c:	01c0006f          	j	1ce38 <_vfiprintf_r+0xb18>
   1ce20:	00270513          	addi	a0,a4,2
   1ce24:	00860613          	addi	a2,a2,8
   1ce28:	00068713          	mv	a4,a3
   1ce2c:	ff098993          	addi	s3,s3,-16
   1ce30:	053ede63          	bge	t4,s3,1ce8c <_vfiprintf_r+0xb6c>
   1ce34:	00170693          	addi	a3,a4,1
   1ce38:	00812583          	lw	a1,8(sp)
   1ce3c:	01078793          	addi	a5,a5,16
   1ce40:	01d62223          	sw	t4,4(a2)
   1ce44:	00b62023          	sw	a1,0(a2)
   1ce48:	04f12423          	sw	a5,72(sp)
   1ce4c:	04d12223          	sw	a3,68(sp)
   1ce50:	fcd2d8e3          	bge	t0,a3,1ce20 <_vfiprintf_r+0xb00>
   1ce54:	08078663          	beqz	a5,1cee0 <_vfiprintf_r+0xbc0>
   1ce58:	04010613          	addi	a2,sp,64
   1ce5c:	00040593          	mv	a1,s0
   1ce60:	000a0513          	mv	a0,s4
   1ce64:	bb4ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1ce68:	4c051663          	bnez	a0,1d334 <_vfiprintf_r+0x1014>
   1ce6c:	04412703          	lw	a4,68(sp)
   1ce70:	01000e93          	li	t4,16
   1ce74:	ff098993          	addi	s3,s3,-16
   1ce78:	04812783          	lw	a5,72(sp)
   1ce7c:	00048613          	mv	a2,s1
   1ce80:	00170513          	addi	a0,a4,1
   1ce84:	00700293          	li	t0,7
   1ce88:	fb3ec6e3          	blt	t4,s3,1ce34 <_vfiprintf_r+0xb14>
   1ce8c:	02812f83          	lw	t6,40(sp)
   1ce90:	000a8f13          	mv	t5,s5
   1ce94:	00050593          	mv	a1,a0
   1ce98:	000c0a93          	mv	s5,s8
   1ce9c:	000d8c13          	mv	s8,s11
   1cea0:	00098d93          	mv	s11,s3
   1cea4:	00040993          	mv	s3,s0
   1cea8:	000b8413          	mv	s0,s7
   1ceac:	00060b93          	mv	s7,a2
   1ceb0:	00812703          	lw	a4,8(sp)
   1ceb4:	01b787b3          	add	a5,a5,s11
   1ceb8:	01bba223          	sw	s11,4(s7)
   1cebc:	00eba023          	sw	a4,0(s7)
   1cec0:	04f12423          	sw	a5,72(sp)
   1cec4:	04b12223          	sw	a1,68(sp)
   1cec8:	00700713          	li	a4,7
   1cecc:	1eb74263          	blt	a4,a1,1d0b0 <_vfiprintf_r+0xd90>
   1ced0:	008b8b93          	addi	s7,s7,8
   1ced4:	00158613          	addi	a2,a1,1
   1ced8:	00058713          	mv	a4,a1
   1cedc:	e90ff06f          	j	1c56c <_vfiprintf_r+0x24c>
   1cee0:	00000713          	li	a4,0
   1cee4:	00100513          	li	a0,1
   1cee8:	00048613          	mv	a2,s1
   1ceec:	f41ff06f          	j	1ce2c <_vfiprintf_r+0xb0c>
   1cef0:	04012223          	sw	zero,68(sp)
   1cef4:	004b7313          	andi	t1,s6,4
   1cef8:	0e030263          	beqz	t1,1cfdc <_vfiprintf_r+0xcbc>
   1cefc:	00412703          	lw	a4,4(sp)
   1cf00:	41970bb3          	sub	s7,a4,s9
   1cf04:	0d705c63          	blez	s7,1cfdc <_vfiprintf_r+0xcbc>
   1cf08:	00048693          	mv	a3,s1
   1cf0c:	01000713          	li	a4,16
   1cf10:	04412603          	lw	a2,68(sp)
   1cf14:	61775263          	bge	a4,s7,1d518 <_vfiprintf_r+0x11f8>
   1cf18:	01000d13          	li	s10,16
   1cf1c:	00700d93          	li	s11,7
   1cf20:	0180006f          	j	1cf38 <_vfiprintf_r+0xc18>
   1cf24:	00260513          	addi	a0,a2,2
   1cf28:	00868693          	addi	a3,a3,8
   1cf2c:	00070613          	mv	a2,a4
   1cf30:	ff0b8b93          	addi	s7,s7,-16
   1cf34:	057d5a63          	bge	s10,s7,1cf88 <_vfiprintf_r+0xc68>
   1cf38:	00812583          	lw	a1,8(sp)
   1cf3c:	01078793          	addi	a5,a5,16
   1cf40:	00160713          	addi	a4,a2,1
   1cf44:	00b6a023          	sw	a1,0(a3)
   1cf48:	01a6a223          	sw	s10,4(a3)
   1cf4c:	04f12423          	sw	a5,72(sp)
   1cf50:	04e12223          	sw	a4,68(sp)
   1cf54:	fcedd8e3          	bge	s11,a4,1cf24 <_vfiprintf_r+0xc04>
   1cf58:	06078a63          	beqz	a5,1cfcc <_vfiprintf_r+0xcac>
   1cf5c:	04010613          	addi	a2,sp,64
   1cf60:	00098593          	mv	a1,s3
   1cf64:	000a0513          	mv	a0,s4
   1cf68:	ab0ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cf6c:	f2051863          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1cf70:	04412603          	lw	a2,68(sp)
   1cf74:	ff0b8b93          	addi	s7,s7,-16
   1cf78:	04812783          	lw	a5,72(sp)
   1cf7c:	00048693          	mv	a3,s1
   1cf80:	00160513          	addi	a0,a2,1
   1cf84:	fb7d4ae3          	blt	s10,s7,1cf38 <_vfiprintf_r+0xc18>
   1cf88:	00050593          	mv	a1,a0
   1cf8c:	00812703          	lw	a4,8(sp)
   1cf90:	017787b3          	add	a5,a5,s7
   1cf94:	0176a223          	sw	s7,4(a3)
   1cf98:	00e6a023          	sw	a4,0(a3)
   1cf9c:	04f12423          	sw	a5,72(sp)
   1cfa0:	04b12223          	sw	a1,68(sp)
   1cfa4:	00700713          	li	a4,7
   1cfa8:	ecb75063          	bge	a4,a1,1c668 <_vfiprintf_r+0x348>
   1cfac:	02078863          	beqz	a5,1cfdc <_vfiprintf_r+0xcbc>
   1cfb0:	04010613          	addi	a2,sp,64
   1cfb4:	00098593          	mv	a1,s3
   1cfb8:	000a0513          	mv	a0,s4
   1cfbc:	a5cff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1cfc0:	ec051e63          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1cfc4:	04812783          	lw	a5,72(sp)
   1cfc8:	ea0ff06f          	j	1c668 <_vfiprintf_r+0x348>
   1cfcc:	00100513          	li	a0,1
   1cfd0:	00000613          	li	a2,0
   1cfd4:	00048693          	mv	a3,s1
   1cfd8:	f59ff06f          	j	1cf30 <_vfiprintf_r+0xc10>
   1cfdc:	00412403          	lw	s0,4(sp)
   1cfe0:	01945463          	bge	s0,s9,1cfe8 <_vfiprintf_r+0xcc8>
   1cfe4:	000c8413          	mv	s0,s9
   1cfe8:	00c12783          	lw	a5,12(sp)
   1cfec:	008787b3          	add	a5,a5,s0
   1cff0:	00f12623          	sw	a5,12(sp)
   1cff4:	e90ff06f          	j	1c684 <_vfiprintf_r+0x364>
   1cff8:	34078263          	beqz	a5,1d33c <_vfiprintf_r+0x101c>
   1cffc:	04010613          	addi	a2,sp,64
   1d000:	00098593          	mv	a1,s3
   1d004:	000a0513          	mv	a0,s4
   1d008:	a10ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1d00c:	e8051863          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1d010:	04412603          	lw	a2,68(sp)
   1d014:	04812783          	lw	a5,72(sp)
   1d018:	05410693          	addi	a3,sp,84
   1d01c:	00160613          	addi	a2,a2,1
   1d020:	00048b93          	mv	s7,s1
   1d024:	df4ff06f          	j	1c618 <_vfiprintf_r+0x2f8>
   1d028:	04012223          	sw	zero,68(sp)
   1d02c:	00048b93          	mv	s7,s1
   1d030:	c60ff06f          	j	1c490 <_vfiprintf_r+0x170>
   1d034:	f40a9c63          	bnez	s5,1c78c <_vfiprintf_r+0x46c>
   1d038:	000d8b13          	mv	s6,s11
   1d03c:	00000a93          	li	s5,0
   1d040:	00000d13          	li	s10,0
   1d044:	0f010413          	addi	s0,sp,240
   1d048:	f58ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1d04c:	01012683          	lw	a3,16(sp)
   1d050:	010df793          	andi	a5,s11,16
   1d054:	00468713          	addi	a4,a3,4
   1d058:	14079863          	bnez	a5,1d1a8 <_vfiprintf_r+0xe88>
   1d05c:	040df793          	andi	a5,s11,64
   1d060:	3a078063          	beqz	a5,1d400 <_vfiprintf_r+0x10e0>
   1d064:	01012783          	lw	a5,16(sp)
   1d068:	00000c93          	li	s9,0
   1d06c:	00e12823          	sw	a4,16(sp)
   1d070:	0007dd03          	lhu	s10,0(a5)
   1d074:	00100713          	li	a4,1
   1d078:	fb8ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1d07c:	05410693          	addi	a3,sp,84
   1d080:	00100613          	li	a2,1
   1d084:	00000713          	li	a4,0
   1d088:	00048b93          	mv	s7,s1
   1d08c:	d7cff06f          	j	1c608 <_vfiprintf_r+0x2e8>
   1d090:	180f8063          	beqz	t6,1d210 <_vfiprintf_r+0xef0>
   1d094:	03c10793          	addi	a5,sp,60
   1d098:	04f12623          	sw	a5,76(sp)
   1d09c:	00200793          	li	a5,2
   1d0a0:	04f12823          	sw	a5,80(sp)
   1d0a4:	00100713          	li	a4,1
   1d0a8:	05410b93          	addi	s7,sp,84
   1d0ac:	d2dff06f          	j	1cdd8 <_vfiprintf_r+0xab8>
   1d0b0:	22078263          	beqz	a5,1d2d4 <_vfiprintf_r+0xfb4>
   1d0b4:	04010613          	addi	a2,sp,64
   1d0b8:	00098593          	mv	a1,s3
   1d0bc:	000a0513          	mv	a0,s4
   1d0c0:	03e12623          	sw	t5,44(sp)
   1d0c4:	03f12423          	sw	t6,40(sp)
   1d0c8:	950ff0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1d0cc:	dc051863          	bnez	a0,1c69c <_vfiprintf_r+0x37c>
   1d0d0:	04412703          	lw	a4,68(sp)
   1d0d4:	04812783          	lw	a5,72(sp)
   1d0d8:	02c12f03          	lw	t5,44(sp)
   1d0dc:	02812f83          	lw	t6,40(sp)
   1d0e0:	00048b93          	mv	s7,s1
   1d0e4:	00170613          	addi	a2,a4,1
   1d0e8:	c84ff06f          	j	1c56c <_vfiprintf_r+0x24c>
   1d0ec:	400df793          	andi	a5,s11,1024
   1d0f0:	03412423          	sw	s4,40(sp)
   1d0f4:	03312623          	sw	s3,44(sp)
   1d0f8:	000c8a13          	mv	s4,s9
   1d0fc:	000d0993          	mv	s3,s10
   1d100:	00000b13          	li	s6,0
   1d104:	01c12d03          	lw	s10,28(sp)
   1d108:	0f010413          	addi	s0,sp,240
   1d10c:	00078c93          	mv	s9,a5
   1d110:	0240006f          	j	1d134 <_vfiprintf_r+0xe14>
   1d114:	00a00613          	li	a2,10
   1d118:	00000693          	li	a3,0
   1d11c:	00098513          	mv	a0,s3
   1d120:	000a0593          	mv	a1,s4
   1d124:	051020ef          	jal	ra,1f974 <__udivdi3>
   1d128:	300a0e63          	beqz	s4,1d444 <_vfiprintf_r+0x1124>
   1d12c:	00050993          	mv	s3,a0
   1d130:	00058a13          	mv	s4,a1
   1d134:	00a00613          	li	a2,10
   1d138:	00000693          	li	a3,0
   1d13c:	00098513          	mv	a0,s3
   1d140:	000a0593          	mv	a1,s4
   1d144:	609020ef          	jal	ra,1ff4c <__umoddi3>
   1d148:	03050513          	addi	a0,a0,48
   1d14c:	fea40fa3          	sb	a0,-1(s0)
   1d150:	001b0b13          	addi	s6,s6,1
   1d154:	fff40413          	addi	s0,s0,-1
   1d158:	fa0c8ee3          	beqz	s9,1d114 <_vfiprintf_r+0xdf4>
   1d15c:	000d4683          	lbu	a3,0(s10)
   1d160:	fb669ae3          	bne	a3,s6,1d114 <_vfiprintf_r+0xdf4>
   1d164:	0ff00793          	li	a5,255
   1d168:	fafb06e3          	beq	s6,a5,1d114 <_vfiprintf_r+0xdf4>
   1d16c:	180a1463          	bnez	s4,1d2f4 <_vfiprintf_r+0xfd4>
   1d170:	00900793          	li	a5,9
   1d174:	1937e063          	bltu	a5,s3,1d2f4 <_vfiprintf_r+0xfd4>
   1d178:	0f010793          	addi	a5,sp,240
   1d17c:	01a12e23          	sw	s10,28(sp)
   1d180:	02812a03          	lw	s4,40(sp)
   1d184:	02c12983          	lw	s3,44(sp)
   1d188:	40878d33          	sub	s10,a5,s0
   1d18c:	000d8b13          	mv	s6,s11
   1d190:	e10ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1d194:	00158613          	addi	a2,a1,1
   1d198:	00850693          	addi	a3,a0,8
   1d19c:	00058713          	mv	a4,a1
   1d1a0:	00050b93          	mv	s7,a0
   1d1a4:	c6cff06f          	j	1c610 <_vfiprintf_r+0x2f0>
   1d1a8:	00e12823          	sw	a4,16(sp)
   1d1ac:	0006ad03          	lw	s10,0(a3)
   1d1b0:	00000c93          	li	s9,0
   1d1b4:	00100713          	li	a4,1
   1d1b8:	e78ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1d1bc:	0006ad03          	lw	s10,0(a3)
   1d1c0:	00e12823          	sw	a4,16(sp)
   1d1c4:	41fd5c93          	srai	s9,s10,0x1f
   1d1c8:	000c8713          	mv	a4,s9
   1d1cc:	d98ff06f          	j	1c764 <_vfiprintf_r+0x444>
   1d1d0:	01c12783          	lw	a5,28(sp)
   1d1d4:	000c4703          	lbu	a4,0(s8)
   1d1d8:	ae078863          	beqz	a5,1c4c8 <_vfiprintf_r+0x1a8>
   1d1dc:	0007c783          	lbu	a5,0(a5)
   1d1e0:	ae078463          	beqz	a5,1c4c8 <_vfiprintf_r+0x1a8>
   1d1e4:	400b6b13          	ori	s6,s6,1024
   1d1e8:	ae0ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1d1ec:	00c12683          	lw	a3,12(sp)
   1d1f0:	41f6d793          	srai	a5,a3,0x1f
   1d1f4:	00d72023          	sw	a3,0(a4)
   1d1f8:	00f72223          	sw	a5,4(a4)
   1d1fc:	a24ff06f          	j	1c420 <_vfiprintf_r+0x100>
   1d200:	0006ad03          	lw	s10,0(a3)
   1d204:	00000c93          	li	s9,0
   1d208:	00e12823          	sw	a4,16(sp)
   1d20c:	e1cff06f          	j	1c828 <_vfiprintf_r+0x508>
   1d210:	00000713          	li	a4,0
   1d214:	05410693          	addi	a3,sp,84
   1d218:	00100613          	li	a2,1
   1d21c:	00048b93          	mv	s7,s1
   1d220:	be8ff06f          	j	1c608 <_vfiprintf_r+0x2e8>
   1d224:	000b0d93          	mv	s11,s6
   1d228:	819ff06f          	j	1ca40 <_vfiprintf_r+0x720>
   1d22c:	000257b7          	lui	a5,0x25
   1d230:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   1d234:	00f12c23          	sw	a5,24(sp)
   1d238:	020b7793          	andi	a5,s6,32
   1d23c:	06078063          	beqz	a5,1d29c <_vfiprintf_r+0xf7c>
   1d240:	01012783          	lw	a5,16(sp)
   1d244:	00778793          	addi	a5,a5,7
   1d248:	ff87f793          	andi	a5,a5,-8
   1d24c:	0007ad03          	lw	s10,0(a5)
   1d250:	0047ac83          	lw	s9,4(a5)
   1d254:	00878793          	addi	a5,a5,8
   1d258:	00f12823          	sw	a5,16(sp)
   1d25c:	001b7693          	andi	a3,s6,1
   1d260:	00068e63          	beqz	a3,1d27c <_vfiprintf_r+0xf5c>
   1d264:	019d66b3          	or	a3,s10,s9
   1d268:	00068a63          	beqz	a3,1d27c <_vfiprintf_r+0xf5c>
   1d26c:	03000693          	li	a3,48
   1d270:	02d10e23          	sb	a3,60(sp)
   1d274:	02e10ea3          	sb	a4,61(sp)
   1d278:	002b6b13          	ori	s6,s6,2
   1d27c:	bffb7d93          	andi	s11,s6,-1025
   1d280:	00200713          	li	a4,2
   1d284:	dacff06f          	j	1c830 <_vfiprintf_r+0x510>
   1d288:	000257b7          	lui	a5,0x25
   1d28c:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1d290:	00f12c23          	sw	a5,24(sp)
   1d294:	020b7793          	andi	a5,s6,32
   1d298:	fa0794e3          	bnez	a5,1d240 <_vfiprintf_r+0xf20>
   1d29c:	01012603          	lw	a2,16(sp)
   1d2a0:	010b7793          	andi	a5,s6,16
   1d2a4:	00460693          	addi	a3,a2,4
   1d2a8:	0a078a63          	beqz	a5,1d35c <_vfiprintf_r+0x103c>
   1d2ac:	00062d03          	lw	s10,0(a2)
   1d2b0:	00000c93          	li	s9,0
   1d2b4:	00d12823          	sw	a3,16(sp)
   1d2b8:	fa5ff06f          	j	1d25c <_vfiprintf_r+0xf3c>
   1d2bc:	00040513          	mv	a0,s0
   1d2c0:	9f8f30ef          	jal	ra,104b8 <strlen>
   1d2c4:	00050d13          	mv	s10,a0
   1d2c8:	01b12823          	sw	s11,16(sp)
   1d2cc:	00000a93          	li	s5,0
   1d2d0:	cd0ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1d2d4:	03b14703          	lbu	a4,59(sp)
   1d2d8:	18071a63          	bnez	a4,1d46c <_vfiprintf_r+0x114c>
   1d2dc:	ac0f9ee3          	bnez	t6,1cdb8 <_vfiprintf_r+0xa98>
   1d2e0:	00000713          	li	a4,0
   1d2e4:	00100613          	li	a2,1
   1d2e8:	05410693          	addi	a3,sp,84
   1d2ec:	00048b93          	mv	s7,s1
   1d2f0:	b18ff06f          	j	1c608 <_vfiprintf_r+0x2e8>
   1d2f4:	02412783          	lw	a5,36(sp)
   1d2f8:	02012583          	lw	a1,32(sp)
   1d2fc:	00000b13          	li	s6,0
   1d300:	40f40433          	sub	s0,s0,a5
   1d304:	00078613          	mv	a2,a5
   1d308:	00040513          	mv	a0,s0
   1d30c:	c28fc0ef          	jal	ra,19734 <strncpy>
   1d310:	001d4583          	lbu	a1,1(s10)
   1d314:	00a00613          	li	a2,10
   1d318:	00000693          	li	a3,0
   1d31c:	00b03733          	snez	a4,a1
   1d320:	00098513          	mv	a0,s3
   1d324:	000a0593          	mv	a1,s4
   1d328:	00ed0d33          	add	s10,s10,a4
   1d32c:	648020ef          	jal	ra,1f974 <__udivdi3>
   1d330:	dfdff06f          	j	1d12c <_vfiprintf_r+0xe0c>
   1d334:	00040993          	mv	s3,s0
   1d338:	b64ff06f          	j	1c69c <_vfiprintf_r+0x37c>
   1d33c:	00100713          	li	a4,1
   1d340:	000d0793          	mv	a5,s10
   1d344:	04812623          	sw	s0,76(sp)
   1d348:	05a12823          	sw	s10,80(sp)
   1d34c:	05a12423          	sw	s10,72(sp)
   1d350:	04e12223          	sw	a4,68(sp)
   1d354:	05410693          	addi	a3,sp,84
   1d358:	afcff06f          	j	1c654 <_vfiprintf_r+0x334>
   1d35c:	040b7793          	andi	a5,s6,64
   1d360:	06078263          	beqz	a5,1d3c4 <_vfiprintf_r+0x10a4>
   1d364:	01012783          	lw	a5,16(sp)
   1d368:	00000c93          	li	s9,0
   1d36c:	00d12823          	sw	a3,16(sp)
   1d370:	0007dd03          	lhu	s10,0(a5)
   1d374:	ee9ff06f          	j	1d25c <_vfiprintf_r+0xf3c>
   1d378:	001c4703          	lbu	a4,1(s8)
   1d37c:	200b6b13          	ori	s6,s6,512
   1d380:	001c0c13          	addi	s8,s8,1
   1d384:	944ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1d388:	001c4703          	lbu	a4,1(s8)
   1d38c:	020b6b13          	ori	s6,s6,32
   1d390:	001c0c13          	addi	s8,s8,1
   1d394:	934ff06f          	j	1c4c8 <_vfiprintf_r+0x1a8>
   1d398:	00c12783          	lw	a5,12(sp)
   1d39c:	00f72023          	sw	a5,0(a4)
   1d3a0:	880ff06f          	j	1c420 <_vfiprintf_r+0x100>
   1d3a4:	00600793          	li	a5,6
   1d3a8:	000a8d13          	mv	s10,s5
   1d3ac:	0b57ec63          	bltu	a5,s5,1d464 <_vfiprintf_r+0x1144>
   1d3b0:	00025e37          	lui	t3,0x25
   1d3b4:	000d0c93          	mv	s9,s10
   1d3b8:	01b12823          	sw	s11,16(sp)
   1d3bc:	83ce0413          	addi	s0,t3,-1988 # 2483c <__clzsi2+0xa0>
   1d3c0:	978ff06f          	j	1c538 <_vfiprintf_r+0x218>
   1d3c4:	200b7793          	andi	a5,s6,512
   1d3c8:	10078863          	beqz	a5,1d4d8 <_vfiprintf_r+0x11b8>
   1d3cc:	01012783          	lw	a5,16(sp)
   1d3d0:	00000c93          	li	s9,0
   1d3d4:	00d12823          	sw	a3,16(sp)
   1d3d8:	0007cd03          	lbu	s10,0(a5)
   1d3dc:	e81ff06f          	j	1d25c <_vfiprintf_r+0xf3c>
   1d3e0:	200b7793          	andi	a5,s6,512
   1d3e4:	0c078e63          	beqz	a5,1d4c0 <_vfiprintf_r+0x11a0>
   1d3e8:	01012783          	lw	a5,16(sp)
   1d3ec:	00e12823          	sw	a4,16(sp)
   1d3f0:	00078d03          	lb	s10,0(a5)
   1d3f4:	41fd5c93          	srai	s9,s10,0x1f
   1d3f8:	000c8713          	mv	a4,s9
   1d3fc:	b68ff06f          	j	1c764 <_vfiprintf_r+0x444>
   1d400:	200df793          	andi	a5,s11,512
   1d404:	0a078263          	beqz	a5,1d4a8 <_vfiprintf_r+0x1188>
   1d408:	01012783          	lw	a5,16(sp)
   1d40c:	00000c93          	li	s9,0
   1d410:	00e12823          	sw	a4,16(sp)
   1d414:	0007cd03          	lbu	s10,0(a5)
   1d418:	00100713          	li	a4,1
   1d41c:	c14ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1d420:	200b7793          	andi	a5,s6,512
   1d424:	06078863          	beqz	a5,1d494 <_vfiprintf_r+0x1174>
   1d428:	01012783          	lw	a5,16(sp)
   1d42c:	00000c93          	li	s9,0
   1d430:	00e12823          	sw	a4,16(sp)
   1d434:	0007cd03          	lbu	s10,0(a5)
   1d438:	bf0ff06f          	j	1c828 <_vfiprintf_r+0x508>
   1d43c:	00068593          	mv	a1,a3
   1d440:	8d5ff06f          	j	1cd14 <_vfiprintf_r+0x9f4>
   1d444:	00900793          	li	a5,9
   1d448:	cf37e2e3          	bltu	a5,s3,1d12c <_vfiprintf_r+0xe0c>
   1d44c:	d2dff06f          	j	1d178 <_vfiprintf_r+0xe58>
   1d450:	05410693          	addi	a3,sp,84
   1d454:	00100613          	li	a2,1
   1d458:	00000713          	li	a4,0
   1d45c:	00048b93          	mv	s7,s1
   1d460:	9b0ff06f          	j	1c610 <_vfiprintf_r+0x2f0>
   1d464:	00600d13          	li	s10,6
   1d468:	f49ff06f          	j	1d3b0 <_vfiprintf_r+0x1090>
   1d46c:	03b10793          	addi	a5,sp,59
   1d470:	04f12623          	sw	a5,76(sp)
   1d474:	00100793          	li	a5,1
   1d478:	04f12823          	sw	a5,80(sp)
   1d47c:	00100613          	li	a2,1
   1d480:	05410693          	addi	a3,sp,84
   1d484:	918ff06f          	j	1c59c <_vfiprintf_r+0x27c>
   1d488:	00c12783          	lw	a5,12(sp)
   1d48c:	00f71023          	sh	a5,0(a4)
   1d490:	f91fe06f          	j	1c420 <_vfiprintf_r+0x100>
   1d494:	01012783          	lw	a5,16(sp)
   1d498:	00000c93          	li	s9,0
   1d49c:	00e12823          	sw	a4,16(sp)
   1d4a0:	0007ad03          	lw	s10,0(a5)
   1d4a4:	b84ff06f          	j	1c828 <_vfiprintf_r+0x508>
   1d4a8:	01012783          	lw	a5,16(sp)
   1d4ac:	00000c93          	li	s9,0
   1d4b0:	00e12823          	sw	a4,16(sp)
   1d4b4:	0007ad03          	lw	s10,0(a5)
   1d4b8:	00100713          	li	a4,1
   1d4bc:	b74ff06f          	j	1c830 <_vfiprintf_r+0x510>
   1d4c0:	01012783          	lw	a5,16(sp)
   1d4c4:	00e12823          	sw	a4,16(sp)
   1d4c8:	0007ad03          	lw	s10,0(a5)
   1d4cc:	41fd5c93          	srai	s9,s10,0x1f
   1d4d0:	000c8713          	mv	a4,s9
   1d4d4:	a90ff06f          	j	1c764 <_vfiprintf_r+0x444>
   1d4d8:	01012783          	lw	a5,16(sp)
   1d4dc:	00000c93          	li	s9,0
   1d4e0:	00d12823          	sw	a3,16(sp)
   1d4e4:	0007ad03          	lw	s10,0(a5)
   1d4e8:	d75ff06f          	j	1d25c <_vfiprintf_r+0xf3c>
   1d4ec:	04010613          	addi	a2,sp,64
   1d4f0:	00098593          	mv	a1,s3
   1d4f4:	000a0513          	mv	a0,s4
   1d4f8:	d21fe0ef          	jal	ra,1c218 <__sprint_r.part.0>
   1d4fc:	9a0ff06f          	j	1c69c <_vfiprintf_r+0x37c>
   1d500:	000a8d13          	mv	s10,s5
   1d504:	01b12823          	sw	s11,16(sp)
   1d508:	00000a93          	li	s5,0
   1d50c:	a94ff06f          	j	1c7a0 <_vfiprintf_r+0x480>
   1d510:	00068593          	mv	a1,a3
   1d514:	99dff06f          	j	1ceb0 <_vfiprintf_r+0xb90>
   1d518:	00160593          	addi	a1,a2,1
   1d51c:	a71ff06f          	j	1cf8c <_vfiprintf_r+0xc6c>
   1d520:	000b0d93          	mv	s11,s6
   1d524:	a68ff06f          	j	1c78c <_vfiprintf_r+0x46c>
   1d528:	fff00793          	li	a5,-1
   1d52c:	00f12623          	sw	a5,12(sp)
   1d530:	978ff06f          	j	1c6a8 <_vfiprintf_r+0x388>
   1d534:	00068513          	mv	a0,a3
   1d538:	00060593          	mv	a1,a2
   1d53c:	f0cff06f          	j	1cc48 <_vfiprintf_r+0x928>
   1d540:	01012783          	lw	a5,16(sp)
   1d544:	0007aa83          	lw	s5,0(a5)
   1d548:	00478793          	addi	a5,a5,4
   1d54c:	000ad463          	bgez	s5,1d554 <_vfiprintf_r+0x1234>
   1d550:	fff00a93          	li	s5,-1
   1d554:	001c4703          	lbu	a4,1(s8)
   1d558:	00f12823          	sw	a5,16(sp)
   1d55c:	00068c13          	mv	s8,a3
   1d560:	f69fe06f          	j	1c4c8 <_vfiprintf_r+0x1a8>

0001d564 <vfiprintf>:
   1d564:	00050793          	mv	a5,a0
   1d568:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1d56c:	00060693          	mv	a3,a2
   1d570:	00058613          	mv	a2,a1
   1d574:	00078593          	mv	a1,a5
   1d578:	da9fe06f          	j	1c320 <_vfiprintf_r>

0001d57c <__sbprintf>:
   1d57c:	00c5d783          	lhu	a5,12(a1)
   1d580:	0645ae03          	lw	t3,100(a1)
   1d584:	00e5d303          	lhu	t1,14(a1)
   1d588:	01c5a883          	lw	a7,28(a1)
   1d58c:	0245a803          	lw	a6,36(a1)
   1d590:	b8010113          	addi	sp,sp,-1152
   1d594:	ffd7f793          	andi	a5,a5,-3
   1d598:	40000713          	li	a4,1024
   1d59c:	46812c23          	sw	s0,1144(sp)
   1d5a0:	00f11a23          	sh	a5,20(sp)
   1d5a4:	00058413          	mv	s0,a1
   1d5a8:	07010793          	addi	a5,sp,112
   1d5ac:	00810593          	addi	a1,sp,8
   1d5b0:	46912a23          	sw	s1,1140(sp)
   1d5b4:	47212823          	sw	s2,1136(sp)
   1d5b8:	46112e23          	sw	ra,1148(sp)
   1d5bc:	00050913          	mv	s2,a0
   1d5c0:	07c12623          	sw	t3,108(sp)
   1d5c4:	00611b23          	sh	t1,22(sp)
   1d5c8:	03112223          	sw	a7,36(sp)
   1d5cc:	03012623          	sw	a6,44(sp)
   1d5d0:	00f12423          	sw	a5,8(sp)
   1d5d4:	00f12c23          	sw	a5,24(sp)
   1d5d8:	00e12823          	sw	a4,16(sp)
   1d5dc:	00e12e23          	sw	a4,28(sp)
   1d5e0:	02012023          	sw	zero,32(sp)
   1d5e4:	d3dfe0ef          	jal	ra,1c320 <_vfiprintf_r>
   1d5e8:	00050493          	mv	s1,a0
   1d5ec:	02055c63          	bgez	a0,1d624 <__sbprintf+0xa8>
   1d5f0:	01415783          	lhu	a5,20(sp)
   1d5f4:	0407f793          	andi	a5,a5,64
   1d5f8:	00078863          	beqz	a5,1d608 <__sbprintf+0x8c>
   1d5fc:	00c45783          	lhu	a5,12(s0)
   1d600:	0407e793          	ori	a5,a5,64
   1d604:	00f41623          	sh	a5,12(s0)
   1d608:	47c12083          	lw	ra,1148(sp)
   1d60c:	47812403          	lw	s0,1144(sp)
   1d610:	47012903          	lw	s2,1136(sp)
   1d614:	00048513          	mv	a0,s1
   1d618:	47412483          	lw	s1,1140(sp)
   1d61c:	48010113          	addi	sp,sp,1152
   1d620:	00008067          	ret
   1d624:	00810593          	addi	a1,sp,8
   1d628:	00090513          	mv	a0,s2
   1d62c:	f95f50ef          	jal	ra,135c0 <_fflush_r>
   1d630:	fc0500e3          	beqz	a0,1d5f0 <__sbprintf+0x74>
   1d634:	fff00493          	li	s1,-1
   1d638:	fb9ff06f          	j	1d5f0 <__sbprintf+0x74>

0001d63c <_write_r>:
   1d63c:	ff010113          	addi	sp,sp,-16
   1d640:	00058713          	mv	a4,a1
   1d644:	00812423          	sw	s0,8(sp)
   1d648:	00912223          	sw	s1,4(sp)
   1d64c:	00060593          	mv	a1,a2
   1d650:	00050413          	mv	s0,a0
   1d654:	00068613          	mv	a2,a3
   1d658:	00070513          	mv	a0,a4
   1d65c:	00112623          	sw	ra,12(sp)
   1d660:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1d664:	214020ef          	jal	ra,1f878 <_write>
   1d668:	fff00793          	li	a5,-1
   1d66c:	00f50c63          	beq	a0,a5,1d684 <_write_r+0x48>
   1d670:	00c12083          	lw	ra,12(sp)
   1d674:	00812403          	lw	s0,8(sp)
   1d678:	00412483          	lw	s1,4(sp)
   1d67c:	01010113          	addi	sp,sp,16
   1d680:	00008067          	ret
   1d684:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1d688:	fe0784e3          	beqz	a5,1d670 <_write_r+0x34>
   1d68c:	00c12083          	lw	ra,12(sp)
   1d690:	00f42023          	sw	a5,0(s0)
   1d694:	00812403          	lw	s0,8(sp)
   1d698:	00412483          	lw	s1,4(sp)
   1d69c:	01010113          	addi	sp,sp,16
   1d6a0:	00008067          	ret

0001d6a4 <__register_exitproc>:
   1d6a4:	1b81a703          	lw	a4,440(gp) # 26f60 <_global_impure_ptr>
   1d6a8:	14872783          	lw	a5,328(a4)
   1d6ac:	04078c63          	beqz	a5,1d704 <__register_exitproc+0x60>
   1d6b0:	0047a703          	lw	a4,4(a5)
   1d6b4:	01f00813          	li	a6,31
   1d6b8:	06e84e63          	blt	a6,a4,1d734 <__register_exitproc+0x90>
   1d6bc:	00271813          	slli	a6,a4,0x2
   1d6c0:	02050663          	beqz	a0,1d6ec <__register_exitproc+0x48>
   1d6c4:	01078333          	add	t1,a5,a6
   1d6c8:	08c32423          	sw	a2,136(t1)
   1d6cc:	1887a883          	lw	a7,392(a5)
   1d6d0:	00100613          	li	a2,1
   1d6d4:	00e61633          	sll	a2,a2,a4
   1d6d8:	00c8e8b3          	or	a7,a7,a2
   1d6dc:	1917a423          	sw	a7,392(a5)
   1d6e0:	10d32423          	sw	a3,264(t1)
   1d6e4:	00200693          	li	a3,2
   1d6e8:	02d50463          	beq	a0,a3,1d710 <__register_exitproc+0x6c>
   1d6ec:	00170713          	addi	a4,a4,1
   1d6f0:	00e7a223          	sw	a4,4(a5)
   1d6f4:	010787b3          	add	a5,a5,a6
   1d6f8:	00b7a423          	sw	a1,8(a5)
   1d6fc:	00000513          	li	a0,0
   1d700:	00008067          	ret
   1d704:	14c70793          	addi	a5,a4,332
   1d708:	14f72423          	sw	a5,328(a4)
   1d70c:	fa5ff06f          	j	1d6b0 <__register_exitproc+0xc>
   1d710:	18c7a683          	lw	a3,396(a5)
   1d714:	00170713          	addi	a4,a4,1
   1d718:	00e7a223          	sw	a4,4(a5)
   1d71c:	00c6e633          	or	a2,a3,a2
   1d720:	18c7a623          	sw	a2,396(a5)
   1d724:	010787b3          	add	a5,a5,a6
   1d728:	00b7a423          	sw	a1,8(a5)
   1d72c:	00000513          	li	a0,0
   1d730:	00008067          	ret
   1d734:	fff00513          	li	a0,-1
   1d738:	00008067          	ret

0001d73c <_calloc_r>:
   1d73c:	ff010113          	addi	sp,sp,-16
   1d740:	00812423          	sw	s0,8(sp)
   1d744:	00050413          	mv	s0,a0
   1d748:	00058513          	mv	a0,a1
   1d74c:	00060593          	mv	a1,a2
   1d750:	00112623          	sw	ra,12(sp)
   1d754:	771060ef          	jal	ra,246c4 <__mulsi3>
   1d758:	00050593          	mv	a1,a0
   1d75c:	00040513          	mv	a0,s0
   1d760:	aa5f90ef          	jal	ra,17204 <_malloc_r>
   1d764:	00050413          	mv	s0,a0
   1d768:	02050863          	beqz	a0,1d798 <_calloc_r+0x5c>
   1d76c:	ffc52603          	lw	a2,-4(a0)
   1d770:	02400713          	li	a4,36
   1d774:	ffc67613          	andi	a2,a2,-4
   1d778:	ffc60613          	addi	a2,a2,-4
   1d77c:	06c76063          	bltu	a4,a2,1d7dc <_calloc_r+0xa0>
   1d780:	01300693          	li	a3,19
   1d784:	00050793          	mv	a5,a0
   1d788:	02c6e263          	bltu	a3,a2,1d7ac <_calloc_r+0x70>
   1d78c:	0007a023          	sw	zero,0(a5)
   1d790:	0007a223          	sw	zero,4(a5)
   1d794:	0007a423          	sw	zero,8(a5)
   1d798:	00c12083          	lw	ra,12(sp)
   1d79c:	00040513          	mv	a0,s0
   1d7a0:	00812403          	lw	s0,8(sp)
   1d7a4:	01010113          	addi	sp,sp,16
   1d7a8:	00008067          	ret
   1d7ac:	00052023          	sw	zero,0(a0)
   1d7b0:	00052223          	sw	zero,4(a0)
   1d7b4:	01b00793          	li	a5,27
   1d7b8:	04c7f063          	bgeu	a5,a2,1d7f8 <_calloc_r+0xbc>
   1d7bc:	00052423          	sw	zero,8(a0)
   1d7c0:	00052623          	sw	zero,12(a0)
   1d7c4:	01050793          	addi	a5,a0,16
   1d7c8:	fce612e3          	bne	a2,a4,1d78c <_calloc_r+0x50>
   1d7cc:	00052823          	sw	zero,16(a0)
   1d7d0:	01850793          	addi	a5,a0,24
   1d7d4:	00052a23          	sw	zero,20(a0)
   1d7d8:	fb5ff06f          	j	1d78c <_calloc_r+0x50>
   1d7dc:	00000593          	li	a1,0
   1d7e0:	a95f20ef          	jal	ra,10274 <memset>
   1d7e4:	00c12083          	lw	ra,12(sp)
   1d7e8:	00040513          	mv	a0,s0
   1d7ec:	00812403          	lw	s0,8(sp)
   1d7f0:	01010113          	addi	sp,sp,16
   1d7f4:	00008067          	ret
   1d7f8:	00850793          	addi	a5,a0,8
   1d7fc:	f91ff06f          	j	1d78c <_calloc_r+0x50>

0001d800 <_close_r>:
   1d800:	ff010113          	addi	sp,sp,-16
   1d804:	00812423          	sw	s0,8(sp)
   1d808:	00912223          	sw	s1,4(sp)
   1d80c:	00050413          	mv	s0,a0
   1d810:	00058513          	mv	a0,a1
   1d814:	00112623          	sw	ra,12(sp)
   1d818:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1d81c:	5d5010ef          	jal	ra,1f5f0 <_close>
   1d820:	fff00793          	li	a5,-1
   1d824:	00f50c63          	beq	a0,a5,1d83c <_close_r+0x3c>
   1d828:	00c12083          	lw	ra,12(sp)
   1d82c:	00812403          	lw	s0,8(sp)
   1d830:	00412483          	lw	s1,4(sp)
   1d834:	01010113          	addi	sp,sp,16
   1d838:	00008067          	ret
   1d83c:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1d840:	fe0784e3          	beqz	a5,1d828 <_close_r+0x28>
   1d844:	00c12083          	lw	ra,12(sp)
   1d848:	00f42023          	sw	a5,0(s0)
   1d84c:	00812403          	lw	s0,8(sp)
   1d850:	00412483          	lw	s1,4(sp)
   1d854:	01010113          	addi	sp,sp,16
   1d858:	00008067          	ret

0001d85c <_fclose_r>:
   1d85c:	ff010113          	addi	sp,sp,-16
   1d860:	00112623          	sw	ra,12(sp)
   1d864:	00812423          	sw	s0,8(sp)
   1d868:	00912223          	sw	s1,4(sp)
   1d86c:	01212023          	sw	s2,0(sp)
   1d870:	02058063          	beqz	a1,1d890 <_fclose_r+0x34>
   1d874:	00058413          	mv	s0,a1
   1d878:	00050493          	mv	s1,a0
   1d87c:	00050663          	beqz	a0,1d888 <_fclose_r+0x2c>
   1d880:	03852783          	lw	a5,56(a0)
   1d884:	0a078c63          	beqz	a5,1d93c <_fclose_r+0xe0>
   1d888:	00c41783          	lh	a5,12(s0)
   1d88c:	02079263          	bnez	a5,1d8b0 <_fclose_r+0x54>
   1d890:	00c12083          	lw	ra,12(sp)
   1d894:	00812403          	lw	s0,8(sp)
   1d898:	00000913          	li	s2,0
   1d89c:	00412483          	lw	s1,4(sp)
   1d8a0:	00090513          	mv	a0,s2
   1d8a4:	00012903          	lw	s2,0(sp)
   1d8a8:	01010113          	addi	sp,sp,16
   1d8ac:	00008067          	ret
   1d8b0:	00040593          	mv	a1,s0
   1d8b4:	00048513          	mv	a0,s1
   1d8b8:	aadf50ef          	jal	ra,13364 <__sflush_r>
   1d8bc:	02c42783          	lw	a5,44(s0)
   1d8c0:	00050913          	mv	s2,a0
   1d8c4:	00078a63          	beqz	a5,1d8d8 <_fclose_r+0x7c>
   1d8c8:	01c42583          	lw	a1,28(s0)
   1d8cc:	00048513          	mv	a0,s1
   1d8d0:	000780e7          	jalr	a5
   1d8d4:	06054c63          	bltz	a0,1d94c <_fclose_r+0xf0>
   1d8d8:	00c45783          	lhu	a5,12(s0)
   1d8dc:	0807f793          	andi	a5,a5,128
   1d8e0:	06079e63          	bnez	a5,1d95c <_fclose_r+0x100>
   1d8e4:	03042583          	lw	a1,48(s0)
   1d8e8:	00058c63          	beqz	a1,1d900 <_fclose_r+0xa4>
   1d8ec:	04040793          	addi	a5,s0,64
   1d8f0:	00f58663          	beq	a1,a5,1d8fc <_fclose_r+0xa0>
   1d8f4:	00048513          	mv	a0,s1
   1d8f8:	a3cf60ef          	jal	ra,13b34 <_free_r>
   1d8fc:	02042823          	sw	zero,48(s0)
   1d900:	04442583          	lw	a1,68(s0)
   1d904:	00058863          	beqz	a1,1d914 <_fclose_r+0xb8>
   1d908:	00048513          	mv	a0,s1
   1d90c:	a28f60ef          	jal	ra,13b34 <_free_r>
   1d910:	04042223          	sw	zero,68(s0)
   1d914:	864f60ef          	jal	ra,13978 <__sfp_lock_acquire>
   1d918:	00041623          	sh	zero,12(s0)
   1d91c:	860f60ef          	jal	ra,1397c <__sfp_lock_release>
   1d920:	00c12083          	lw	ra,12(sp)
   1d924:	00812403          	lw	s0,8(sp)
   1d928:	00412483          	lw	s1,4(sp)
   1d92c:	00090513          	mv	a0,s2
   1d930:	00012903          	lw	s2,0(sp)
   1d934:	01010113          	addi	sp,sp,16
   1d938:	00008067          	ret
   1d93c:	82cf60ef          	jal	ra,13968 <__sinit>
   1d940:	00c41783          	lh	a5,12(s0)
   1d944:	f40786e3          	beqz	a5,1d890 <_fclose_r+0x34>
   1d948:	f69ff06f          	j	1d8b0 <_fclose_r+0x54>
   1d94c:	00c45783          	lhu	a5,12(s0)
   1d950:	fff00913          	li	s2,-1
   1d954:	0807f793          	andi	a5,a5,128
   1d958:	f80786e3          	beqz	a5,1d8e4 <_fclose_r+0x88>
   1d95c:	01042583          	lw	a1,16(s0)
   1d960:	00048513          	mv	a0,s1
   1d964:	9d0f60ef          	jal	ra,13b34 <_free_r>
   1d968:	f7dff06f          	j	1d8e4 <_fclose_r+0x88>

0001d96c <fclose>:
   1d96c:	00050593          	mv	a1,a0
   1d970:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1d974:	ee9ff06f          	j	1d85c <_fclose_r>

0001d978 <__fputwc>:
   1d978:	fd010113          	addi	sp,sp,-48
   1d97c:	02812423          	sw	s0,40(sp)
   1d980:	01312e23          	sw	s3,28(sp)
   1d984:	01612823          	sw	s6,16(sp)
   1d988:	02112623          	sw	ra,44(sp)
   1d98c:	02912223          	sw	s1,36(sp)
   1d990:	03212023          	sw	s2,32(sp)
   1d994:	01412c23          	sw	s4,24(sp)
   1d998:	01512a23          	sw	s5,20(sp)
   1d99c:	00050b13          	mv	s6,a0
   1d9a0:	00058993          	mv	s3,a1
   1d9a4:	00060413          	mv	s0,a2
   1d9a8:	2e0000ef          	jal	ra,1dc88 <__locale_mb_cur_max>
   1d9ac:	00100793          	li	a5,1
   1d9b0:	02f51063          	bne	a0,a5,1d9d0 <__fputwc+0x58>
   1d9b4:	fff98793          	addi	a5,s3,-1
   1d9b8:	0fe00713          	li	a4,254
   1d9bc:	00f76a63          	bltu	a4,a5,1d9d0 <__fputwc+0x58>
   1d9c0:	0ff9f713          	andi	a4,s3,255
   1d9c4:	00e10623          	sb	a4,12(sp)
   1d9c8:	00100913          	li	s2,1
   1d9cc:	02c0006f          	j	1d9f8 <__fputwc+0x80>
   1d9d0:	05c40693          	addi	a3,s0,92
   1d9d4:	00098613          	mv	a2,s3
   1d9d8:	00c10593          	addi	a1,sp,12
   1d9dc:	000b0513          	mv	a0,s6
   1d9e0:	2d9010ef          	jal	ra,1f4b8 <_wcrtomb_r>
   1d9e4:	fff00793          	li	a5,-1
   1d9e8:	00050913          	mv	s2,a0
   1d9ec:	0af50463          	beq	a0,a5,1da94 <__fputwc+0x11c>
   1d9f0:	08050e63          	beqz	a0,1da8c <__fputwc+0x114>
   1d9f4:	00c14703          	lbu	a4,12(sp)
   1d9f8:	00000493          	li	s1,0
   1d9fc:	fff00a13          	li	s4,-1
   1da00:	00a00a93          	li	s5,10
   1da04:	0280006f          	j	1da2c <__fputwc+0xb4>
   1da08:	00042783          	lw	a5,0(s0)
   1da0c:	00178693          	addi	a3,a5,1
   1da10:	00d42023          	sw	a3,0(s0)
   1da14:	00e78023          	sb	a4,0(a5)
   1da18:	00148493          	addi	s1,s1,1
   1da1c:	00c10793          	addi	a5,sp,12
   1da20:	009787b3          	add	a5,a5,s1
   1da24:	0724f463          	bgeu	s1,s2,1da8c <__fputwc+0x114>
   1da28:	0007c703          	lbu	a4,0(a5)
   1da2c:	00842783          	lw	a5,8(s0)
   1da30:	fff78793          	addi	a5,a5,-1
   1da34:	00f42423          	sw	a5,8(s0)
   1da38:	fc07d8e3          	bgez	a5,1da08 <__fputwc+0x90>
   1da3c:	01842683          	lw	a3,24(s0)
   1da40:	00070593          	mv	a1,a4
   1da44:	00040613          	mv	a2,s0
   1da48:	000b0513          	mv	a0,s6
   1da4c:	00d7c463          	blt	a5,a3,1da54 <__fputwc+0xdc>
   1da50:	fb571ce3          	bne	a4,s5,1da08 <__fputwc+0x90>
   1da54:	0cd010ef          	jal	ra,1f320 <__swbuf_r>
   1da58:	fd4510e3          	bne	a0,s4,1da18 <__fputwc+0xa0>
   1da5c:	fff00913          	li	s2,-1
   1da60:	02c12083          	lw	ra,44(sp)
   1da64:	02812403          	lw	s0,40(sp)
   1da68:	02412483          	lw	s1,36(sp)
   1da6c:	01c12983          	lw	s3,28(sp)
   1da70:	01812a03          	lw	s4,24(sp)
   1da74:	01412a83          	lw	s5,20(sp)
   1da78:	01012b03          	lw	s6,16(sp)
   1da7c:	00090513          	mv	a0,s2
   1da80:	02012903          	lw	s2,32(sp)
   1da84:	03010113          	addi	sp,sp,48
   1da88:	00008067          	ret
   1da8c:	00098913          	mv	s2,s3
   1da90:	fd1ff06f          	j	1da60 <__fputwc+0xe8>
   1da94:	00c45783          	lhu	a5,12(s0)
   1da98:	0407e793          	ori	a5,a5,64
   1da9c:	00f41623          	sh	a5,12(s0)
   1daa0:	fc1ff06f          	j	1da60 <__fputwc+0xe8>

0001daa4 <_fputwc_r>:
   1daa4:	00c61783          	lh	a5,12(a2)
   1daa8:	01279713          	slli	a4,a5,0x12
   1daac:	02074063          	bltz	a4,1dacc <_fputwc_r+0x28>
   1dab0:	06462703          	lw	a4,100(a2)
   1dab4:	000026b7          	lui	a3,0x2
   1dab8:	00d7e7b3          	or	a5,a5,a3
   1dabc:	000026b7          	lui	a3,0x2
   1dac0:	00d76733          	or	a4,a4,a3
   1dac4:	00f61623          	sh	a5,12(a2)
   1dac8:	06e62223          	sw	a4,100(a2)
   1dacc:	eadff06f          	j	1d978 <__fputwc>

0001dad0 <fputwc>:
   1dad0:	fe010113          	addi	sp,sp,-32
   1dad4:	00812c23          	sw	s0,24(sp)
   1dad8:	1c01a403          	lw	s0,448(gp) # 26f68 <_impure_ptr>
   1dadc:	00112e23          	sw	ra,28(sp)
   1dae0:	00058613          	mv	a2,a1
   1dae4:	00050593          	mv	a1,a0
   1dae8:	00040663          	beqz	s0,1daf4 <fputwc+0x24>
   1daec:	03842783          	lw	a5,56(s0)
   1daf0:	04078063          	beqz	a5,1db30 <fputwc+0x60>
   1daf4:	00c61783          	lh	a5,12(a2)
   1daf8:	01279713          	slli	a4,a5,0x12
   1dafc:	02074063          	bltz	a4,1db1c <fputwc+0x4c>
   1db00:	06462703          	lw	a4,100(a2)
   1db04:	000026b7          	lui	a3,0x2
   1db08:	00d7e7b3          	or	a5,a5,a3
   1db0c:	000026b7          	lui	a3,0x2
   1db10:	00d76733          	or	a4,a4,a3
   1db14:	00f61623          	sh	a5,12(a2)
   1db18:	06e62223          	sw	a4,100(a2)
   1db1c:	00040513          	mv	a0,s0
   1db20:	01812403          	lw	s0,24(sp)
   1db24:	01c12083          	lw	ra,28(sp)
   1db28:	02010113          	addi	sp,sp,32
   1db2c:	e4dff06f          	j	1d978 <__fputwc>
   1db30:	00a12423          	sw	a0,8(sp)
   1db34:	00040513          	mv	a0,s0
   1db38:	00c12623          	sw	a2,12(sp)
   1db3c:	e2df50ef          	jal	ra,13968 <__sinit>
   1db40:	00c12603          	lw	a2,12(sp)
   1db44:	00812583          	lw	a1,8(sp)
   1db48:	fadff06f          	j	1daf4 <fputwc+0x24>

0001db4c <_fstat_r>:
   1db4c:	ff010113          	addi	sp,sp,-16
   1db50:	00058713          	mv	a4,a1
   1db54:	00812423          	sw	s0,8(sp)
   1db58:	00912223          	sw	s1,4(sp)
   1db5c:	00050413          	mv	s0,a0
   1db60:	00060593          	mv	a1,a2
   1db64:	00070513          	mv	a0,a4
   1db68:	00112623          	sw	ra,12(sp)
   1db6c:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1db70:	31d010ef          	jal	ra,1f68c <_fstat>
   1db74:	fff00793          	li	a5,-1
   1db78:	00f50c63          	beq	a0,a5,1db90 <_fstat_r+0x44>
   1db7c:	00c12083          	lw	ra,12(sp)
   1db80:	00812403          	lw	s0,8(sp)
   1db84:	00412483          	lw	s1,4(sp)
   1db88:	01010113          	addi	sp,sp,16
   1db8c:	00008067          	ret
   1db90:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1db94:	fe0784e3          	beqz	a5,1db7c <_fstat_r+0x30>
   1db98:	00c12083          	lw	ra,12(sp)
   1db9c:	00f42023          	sw	a5,0(s0)
   1dba0:	00812403          	lw	s0,8(sp)
   1dba4:	00412483          	lw	s1,4(sp)
   1dba8:	01010113          	addi	sp,sp,16
   1dbac:	00008067          	ret

0001dbb0 <_isatty_r>:
   1dbb0:	ff010113          	addi	sp,sp,-16
   1dbb4:	00812423          	sw	s0,8(sp)
   1dbb8:	00912223          	sw	s1,4(sp)
   1dbbc:	00050413          	mv	s0,a0
   1dbc0:	00058513          	mv	a0,a1
   1dbc4:	00112623          	sw	ra,12(sp)
   1dbc8:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1dbcc:	331010ef          	jal	ra,1f6fc <_isatty>
   1dbd0:	fff00793          	li	a5,-1
   1dbd4:	00f50c63          	beq	a0,a5,1dbec <_isatty_r+0x3c>
   1dbd8:	00c12083          	lw	ra,12(sp)
   1dbdc:	00812403          	lw	s0,8(sp)
   1dbe0:	00412483          	lw	s1,4(sp)
   1dbe4:	01010113          	addi	sp,sp,16
   1dbe8:	00008067          	ret
   1dbec:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1dbf0:	fe0784e3          	beqz	a5,1dbd8 <_isatty_r+0x28>
   1dbf4:	00c12083          	lw	ra,12(sp)
   1dbf8:	00f42023          	sw	a5,0(s0)
   1dbfc:	00812403          	lw	s0,8(sp)
   1dc00:	00412483          	lw	s1,4(sp)
   1dc04:	01010113          	addi	sp,sp,16
   1dc08:	00008067          	ret

0001dc0c <_setlocale_r>:
   1dc0c:	ff010113          	addi	sp,sp,-16
   1dc10:	00112623          	sw	ra,12(sp)
   1dc14:	00812423          	sw	s0,8(sp)
   1dc18:	00912223          	sw	s1,4(sp)
   1dc1c:	02060c63          	beqz	a2,1dc54 <_setlocale_r+0x48>
   1dc20:	000255b7          	lui	a1,0x25
   1dc24:	09458593          	addi	a1,a1,148 # 25094 <zeroes.4460+0x14>
   1dc28:	00060513          	mv	a0,a2
   1dc2c:	00060413          	mv	s0,a2
   1dc30:	2fc000ef          	jal	ra,1df2c <strcmp>
   1dc34:	000254b7          	lui	s1,0x25
   1dc38:	02051263          	bnez	a0,1dc5c <_setlocale_r+0x50>
   1dc3c:	09048513          	addi	a0,s1,144 # 25090 <zeroes.4460+0x10>
   1dc40:	00c12083          	lw	ra,12(sp)
   1dc44:	00812403          	lw	s0,8(sp)
   1dc48:	00412483          	lw	s1,4(sp)
   1dc4c:	01010113          	addi	sp,sp,16
   1dc50:	00008067          	ret
   1dc54:	000254b7          	lui	s1,0x25
   1dc58:	fe5ff06f          	j	1dc3c <_setlocale_r+0x30>
   1dc5c:	09048593          	addi	a1,s1,144 # 25090 <zeroes.4460+0x10>
   1dc60:	00040513          	mv	a0,s0
   1dc64:	2c8000ef          	jal	ra,1df2c <strcmp>
   1dc68:	fc050ae3          	beqz	a0,1dc3c <_setlocale_r+0x30>
   1dc6c:	000255b7          	lui	a1,0x25
   1dc70:	83858593          	addi	a1,a1,-1992 # 24838 <__clzsi2+0x9c>
   1dc74:	00040513          	mv	a0,s0
   1dc78:	2b4000ef          	jal	ra,1df2c <strcmp>
   1dc7c:	fc0500e3          	beqz	a0,1dc3c <_setlocale_r+0x30>
   1dc80:	00000513          	li	a0,0
   1dc84:	fbdff06f          	j	1dc40 <_setlocale_r+0x34>

0001dc88 <__locale_mb_cur_max>:
   1dc88:	1581c503          	lbu	a0,344(gp) # 26f00 <__global_locale+0x128>
   1dc8c:	00008067          	ret

0001dc90 <setlocale>:
   1dc90:	00050793          	mv	a5,a0
   1dc94:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1dc98:	00058613          	mv	a2,a1
   1dc9c:	00078593          	mv	a1,a5
   1dca0:	f6dff06f          	j	1dc0c <_setlocale_r>

0001dca4 <_lseek_r>:
   1dca4:	ff010113          	addi	sp,sp,-16
   1dca8:	00058713          	mv	a4,a1
   1dcac:	00812423          	sw	s0,8(sp)
   1dcb0:	00912223          	sw	s1,4(sp)
   1dcb4:	00060593          	mv	a1,a2
   1dcb8:	00050413          	mv	s0,a0
   1dcbc:	00068613          	mv	a2,a3
   1dcc0:	00070513          	mv	a0,a4
   1dcc4:	00112623          	sw	ra,12(sp)
   1dcc8:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1dccc:	271010ef          	jal	ra,1f73c <_lseek>
   1dcd0:	fff00793          	li	a5,-1
   1dcd4:	00f50c63          	beq	a0,a5,1dcec <_lseek_r+0x48>
   1dcd8:	00c12083          	lw	ra,12(sp)
   1dcdc:	00812403          	lw	s0,8(sp)
   1dce0:	00412483          	lw	s1,4(sp)
   1dce4:	01010113          	addi	sp,sp,16
   1dce8:	00008067          	ret
   1dcec:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1dcf0:	fe0784e3          	beqz	a5,1dcd8 <_lseek_r+0x34>
   1dcf4:	00c12083          	lw	ra,12(sp)
   1dcf8:	00f42023          	sw	a5,0(s0)
   1dcfc:	00812403          	lw	s0,8(sp)
   1dd00:	00412483          	lw	s1,4(sp)
   1dd04:	01010113          	addi	sp,sp,16
   1dd08:	00008067          	ret

0001dd0c <_mbtowc_r>:
   1dd0c:	1141a303          	lw	t1,276(gp) # 26ebc <__global_locale+0xe4>
   1dd10:	00030067          	jr	t1

0001dd14 <__ascii_mbtowc>:
   1dd14:	02058063          	beqz	a1,1dd34 <__ascii_mbtowc+0x20>
   1dd18:	04060263          	beqz	a2,1dd5c <__ascii_mbtowc+0x48>
   1dd1c:	04068863          	beqz	a3,1dd6c <__ascii_mbtowc+0x58>
   1dd20:	00064783          	lbu	a5,0(a2)
   1dd24:	00f5a023          	sw	a5,0(a1)
   1dd28:	00064503          	lbu	a0,0(a2)
   1dd2c:	00a03533          	snez	a0,a0
   1dd30:	00008067          	ret
   1dd34:	ff010113          	addi	sp,sp,-16
   1dd38:	00c10593          	addi	a1,sp,12
   1dd3c:	02060463          	beqz	a2,1dd64 <__ascii_mbtowc+0x50>
   1dd40:	02068a63          	beqz	a3,1dd74 <__ascii_mbtowc+0x60>
   1dd44:	00064783          	lbu	a5,0(a2)
   1dd48:	00f5a023          	sw	a5,0(a1)
   1dd4c:	00064503          	lbu	a0,0(a2)
   1dd50:	00a03533          	snez	a0,a0
   1dd54:	01010113          	addi	sp,sp,16
   1dd58:	00008067          	ret
   1dd5c:	00000513          	li	a0,0
   1dd60:	00008067          	ret
   1dd64:	00000513          	li	a0,0
   1dd68:	fedff06f          	j	1dd54 <__ascii_mbtowc+0x40>
   1dd6c:	ffe00513          	li	a0,-2
   1dd70:	00008067          	ret
   1dd74:	ffe00513          	li	a0,-2
   1dd78:	fddff06f          	j	1dd54 <__ascii_mbtowc+0x40>

0001dd7c <_read_r>:
   1dd7c:	ff010113          	addi	sp,sp,-16
   1dd80:	00058713          	mv	a4,a1
   1dd84:	00812423          	sw	s0,8(sp)
   1dd88:	00912223          	sw	s1,4(sp)
   1dd8c:	00060593          	mv	a1,a2
   1dd90:	00050413          	mv	s0,a0
   1dd94:	00068613          	mv	a2,a3
   1dd98:	00070513          	mv	a0,a4
   1dd9c:	00112623          	sw	ra,12(sp)
   1dda0:	2201a223          	sw	zero,548(gp) # 26fcc <errno>
   1dda4:	1e9010ef          	jal	ra,1f78c <_read>
   1dda8:	fff00793          	li	a5,-1
   1ddac:	00f50c63          	beq	a0,a5,1ddc4 <_read_r+0x48>
   1ddb0:	00c12083          	lw	ra,12(sp)
   1ddb4:	00812403          	lw	s0,8(sp)
   1ddb8:	00412483          	lw	s1,4(sp)
   1ddbc:	01010113          	addi	sp,sp,16
   1ddc0:	00008067          	ret
   1ddc4:	2241a783          	lw	a5,548(gp) # 26fcc <errno>
   1ddc8:	fe0784e3          	beqz	a5,1ddb0 <_read_r+0x34>
   1ddcc:	00c12083          	lw	ra,12(sp)
   1ddd0:	00f42023          	sw	a5,0(s0)
   1ddd4:	00812403          	lw	s0,8(sp)
   1ddd8:	00412483          	lw	s1,4(sp)
   1dddc:	01010113          	addi	sp,sp,16
   1dde0:	00008067          	ret

0001dde4 <cleanup_glue>:
   1dde4:	ff010113          	addi	sp,sp,-16
   1dde8:	00812423          	sw	s0,8(sp)
   1ddec:	00058413          	mv	s0,a1
   1ddf0:	0005a583          	lw	a1,0(a1)
   1ddf4:	00912223          	sw	s1,4(sp)
   1ddf8:	00112623          	sw	ra,12(sp)
   1ddfc:	00050493          	mv	s1,a0
   1de00:	00058463          	beqz	a1,1de08 <cleanup_glue+0x24>
   1de04:	fe1ff0ef          	jal	ra,1dde4 <cleanup_glue>
   1de08:	00040593          	mv	a1,s0
   1de0c:	00812403          	lw	s0,8(sp)
   1de10:	00c12083          	lw	ra,12(sp)
   1de14:	00048513          	mv	a0,s1
   1de18:	00412483          	lw	s1,4(sp)
   1de1c:	01010113          	addi	sp,sp,16
   1de20:	d15f506f          	j	13b34 <_free_r>

0001de24 <_reclaim_reent>:
   1de24:	1c01a783          	lw	a5,448(gp) # 26f68 <_impure_ptr>
   1de28:	10a78063          	beq	a5,a0,1df28 <_reclaim_reent+0x104>
   1de2c:	04c52583          	lw	a1,76(a0)
   1de30:	fe010113          	addi	sp,sp,-32
   1de34:	00912a23          	sw	s1,20(sp)
   1de38:	00112e23          	sw	ra,28(sp)
   1de3c:	00812c23          	sw	s0,24(sp)
   1de40:	01212823          	sw	s2,16(sp)
   1de44:	01312623          	sw	s3,12(sp)
   1de48:	00050493          	mv	s1,a0
   1de4c:	04058063          	beqz	a1,1de8c <_reclaim_reent+0x68>
   1de50:	00000913          	li	s2,0
   1de54:	08000993          	li	s3,128
   1de58:	012587b3          	add	a5,a1,s2
   1de5c:	0007a403          	lw	s0,0(a5)
   1de60:	00040e63          	beqz	s0,1de7c <_reclaim_reent+0x58>
   1de64:	00040593          	mv	a1,s0
   1de68:	00042403          	lw	s0,0(s0)
   1de6c:	00048513          	mv	a0,s1
   1de70:	cc5f50ef          	jal	ra,13b34 <_free_r>
   1de74:	fe0418e3          	bnez	s0,1de64 <_reclaim_reent+0x40>
   1de78:	04c4a583          	lw	a1,76(s1)
   1de7c:	00490913          	addi	s2,s2,4
   1de80:	fd391ce3          	bne	s2,s3,1de58 <_reclaim_reent+0x34>
   1de84:	00048513          	mv	a0,s1
   1de88:	cadf50ef          	jal	ra,13b34 <_free_r>
   1de8c:	0404a583          	lw	a1,64(s1)
   1de90:	00058663          	beqz	a1,1de9c <_reclaim_reent+0x78>
   1de94:	00048513          	mv	a0,s1
   1de98:	c9df50ef          	jal	ra,13b34 <_free_r>
   1de9c:	1484a403          	lw	s0,328(s1)
   1dea0:	02040063          	beqz	s0,1dec0 <_reclaim_reent+0x9c>
   1dea4:	14c48913          	addi	s2,s1,332
   1dea8:	01240c63          	beq	s0,s2,1dec0 <_reclaim_reent+0x9c>
   1deac:	00040593          	mv	a1,s0
   1deb0:	00042403          	lw	s0,0(s0)
   1deb4:	00048513          	mv	a0,s1
   1deb8:	c7df50ef          	jal	ra,13b34 <_free_r>
   1debc:	fe8918e3          	bne	s2,s0,1deac <_reclaim_reent+0x88>
   1dec0:	0544a583          	lw	a1,84(s1)
   1dec4:	00058663          	beqz	a1,1ded0 <_reclaim_reent+0xac>
   1dec8:	00048513          	mv	a0,s1
   1decc:	c69f50ef          	jal	ra,13b34 <_free_r>
   1ded0:	0384a783          	lw	a5,56(s1)
   1ded4:	02078c63          	beqz	a5,1df0c <_reclaim_reent+0xe8>
   1ded8:	03c4a783          	lw	a5,60(s1)
   1dedc:	00048513          	mv	a0,s1
   1dee0:	000780e7          	jalr	a5
   1dee4:	2e04a583          	lw	a1,736(s1)
   1dee8:	02058263          	beqz	a1,1df0c <_reclaim_reent+0xe8>
   1deec:	01812403          	lw	s0,24(sp)
   1def0:	01c12083          	lw	ra,28(sp)
   1def4:	01012903          	lw	s2,16(sp)
   1def8:	00c12983          	lw	s3,12(sp)
   1defc:	00048513          	mv	a0,s1
   1df00:	01412483          	lw	s1,20(sp)
   1df04:	02010113          	addi	sp,sp,32
   1df08:	eddff06f          	j	1dde4 <cleanup_glue>
   1df0c:	01c12083          	lw	ra,28(sp)
   1df10:	01812403          	lw	s0,24(sp)
   1df14:	01412483          	lw	s1,20(sp)
   1df18:	01012903          	lw	s2,16(sp)
   1df1c:	00c12983          	lw	s3,12(sp)
   1df20:	02010113          	addi	sp,sp,32
   1df24:	00008067          	ret
   1df28:	00008067          	ret

0001df2c <strcmp>:
   1df2c:	00b56733          	or	a4,a0,a1
   1df30:	fff00393          	li	t2,-1
   1df34:	00377713          	andi	a4,a4,3
   1df38:	10071063          	bnez	a4,1e038 <strcmp+0x10c>
   1df3c:	7f7f87b7          	lui	a5,0x7f7f8
   1df40:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d0faf>
   1df44:	00052603          	lw	a2,0(a0)
   1df48:	0005a683          	lw	a3,0(a1)
   1df4c:	00f672b3          	and	t0,a2,a5
   1df50:	00f66333          	or	t1,a2,a5
   1df54:	00f282b3          	add	t0,t0,a5
   1df58:	0062e2b3          	or	t0,t0,t1
   1df5c:	10729263          	bne	t0,t2,1e060 <strcmp+0x134>
   1df60:	08d61663          	bne	a2,a3,1dfec <strcmp+0xc0>
   1df64:	00452603          	lw	a2,4(a0)
   1df68:	0045a683          	lw	a3,4(a1)
   1df6c:	00f672b3          	and	t0,a2,a5
   1df70:	00f66333          	or	t1,a2,a5
   1df74:	00f282b3          	add	t0,t0,a5
   1df78:	0062e2b3          	or	t0,t0,t1
   1df7c:	0c729e63          	bne	t0,t2,1e058 <strcmp+0x12c>
   1df80:	06d61663          	bne	a2,a3,1dfec <strcmp+0xc0>
   1df84:	00852603          	lw	a2,8(a0)
   1df88:	0085a683          	lw	a3,8(a1)
   1df8c:	00f672b3          	and	t0,a2,a5
   1df90:	00f66333          	or	t1,a2,a5
   1df94:	00f282b3          	add	t0,t0,a5
   1df98:	0062e2b3          	or	t0,t0,t1
   1df9c:	0c729863          	bne	t0,t2,1e06c <strcmp+0x140>
   1dfa0:	04d61663          	bne	a2,a3,1dfec <strcmp+0xc0>
   1dfa4:	00c52603          	lw	a2,12(a0)
   1dfa8:	00c5a683          	lw	a3,12(a1)
   1dfac:	00f672b3          	and	t0,a2,a5
   1dfb0:	00f66333          	or	t1,a2,a5
   1dfb4:	00f282b3          	add	t0,t0,a5
   1dfb8:	0062e2b3          	or	t0,t0,t1
   1dfbc:	0c729263          	bne	t0,t2,1e080 <strcmp+0x154>
   1dfc0:	02d61663          	bne	a2,a3,1dfec <strcmp+0xc0>
   1dfc4:	01052603          	lw	a2,16(a0)
   1dfc8:	0105a683          	lw	a3,16(a1)
   1dfcc:	00f672b3          	and	t0,a2,a5
   1dfd0:	00f66333          	or	t1,a2,a5
   1dfd4:	00f282b3          	add	t0,t0,a5
   1dfd8:	0062e2b3          	or	t0,t0,t1
   1dfdc:	0a729c63          	bne	t0,t2,1e094 <strcmp+0x168>
   1dfe0:	01450513          	addi	a0,a0,20
   1dfe4:	01458593          	addi	a1,a1,20
   1dfe8:	f4d60ee3          	beq	a2,a3,1df44 <strcmp+0x18>
   1dfec:	01061713          	slli	a4,a2,0x10
   1dff0:	01069793          	slli	a5,a3,0x10
   1dff4:	00f71e63          	bne	a4,a5,1e010 <strcmp+0xe4>
   1dff8:	01065713          	srli	a4,a2,0x10
   1dffc:	0106d793          	srli	a5,a3,0x10
   1e000:	40f70533          	sub	a0,a4,a5
   1e004:	0ff57593          	andi	a1,a0,255
   1e008:	02059063          	bnez	a1,1e028 <strcmp+0xfc>
   1e00c:	00008067          	ret
   1e010:	01075713          	srli	a4,a4,0x10
   1e014:	0107d793          	srli	a5,a5,0x10
   1e018:	40f70533          	sub	a0,a4,a5
   1e01c:	0ff57593          	andi	a1,a0,255
   1e020:	00059463          	bnez	a1,1e028 <strcmp+0xfc>
   1e024:	00008067          	ret
   1e028:	0ff77713          	andi	a4,a4,255
   1e02c:	0ff7f793          	andi	a5,a5,255
   1e030:	40f70533          	sub	a0,a4,a5
   1e034:	00008067          	ret
   1e038:	00054603          	lbu	a2,0(a0)
   1e03c:	0005c683          	lbu	a3,0(a1)
   1e040:	00150513          	addi	a0,a0,1
   1e044:	00158593          	addi	a1,a1,1
   1e048:	00d61463          	bne	a2,a3,1e050 <strcmp+0x124>
   1e04c:	fe0616e3          	bnez	a2,1e038 <strcmp+0x10c>
   1e050:	40d60533          	sub	a0,a2,a3
   1e054:	00008067          	ret
   1e058:	00450513          	addi	a0,a0,4
   1e05c:	00458593          	addi	a1,a1,4
   1e060:	fcd61ce3          	bne	a2,a3,1e038 <strcmp+0x10c>
   1e064:	00000513          	li	a0,0
   1e068:	00008067          	ret
   1e06c:	00850513          	addi	a0,a0,8
   1e070:	00858593          	addi	a1,a1,8
   1e074:	fcd612e3          	bne	a2,a3,1e038 <strcmp+0x10c>
   1e078:	00000513          	li	a0,0
   1e07c:	00008067          	ret
   1e080:	00c50513          	addi	a0,a0,12
   1e084:	00c58593          	addi	a1,a1,12
   1e088:	fad618e3          	bne	a2,a3,1e038 <strcmp+0x10c>
   1e08c:	00000513          	li	a0,0
   1e090:	00008067          	ret
   1e094:	01050513          	addi	a0,a0,16
   1e098:	01058593          	addi	a1,a1,16
   1e09c:	f8d61ee3          	bne	a2,a3,1e038 <strcmp+0x10c>
   1e0a0:	00000513          	li	a0,0
   1e0a4:	00008067          	ret

0001e0a8 <__ssprint_r>:
   1e0a8:	00862783          	lw	a5,8(a2)
   1e0ac:	fd010113          	addi	sp,sp,-48
   1e0b0:	01512a23          	sw	s5,20(sp)
   1e0b4:	02112623          	sw	ra,44(sp)
   1e0b8:	02812423          	sw	s0,40(sp)
   1e0bc:	02912223          	sw	s1,36(sp)
   1e0c0:	03212023          	sw	s2,32(sp)
   1e0c4:	01312e23          	sw	s3,28(sp)
   1e0c8:	01412c23          	sw	s4,24(sp)
   1e0cc:	01612823          	sw	s6,16(sp)
   1e0d0:	01712623          	sw	s7,12(sp)
   1e0d4:	01812423          	sw	s8,8(sp)
   1e0d8:	00060a93          	mv	s5,a2
   1e0dc:	14078863          	beqz	a5,1e22c <__ssprint_r+0x184>
   1e0e0:	00050b13          	mv	s6,a0
   1e0e4:	00062983          	lw	s3,0(a2)
   1e0e8:	0005a503          	lw	a0,0(a1)
   1e0ec:	0085a483          	lw	s1,8(a1)
   1e0f0:	00058413          	mv	s0,a1
   1e0f4:	0d40006f          	j	1e1c8 <__ssprint_r+0x120>
   1e0f8:	00c45783          	lhu	a5,12(s0)
   1e0fc:	4807f713          	andi	a4,a5,1152
   1e100:	08070a63          	beqz	a4,1e194 <__ssprint_r+0xec>
   1e104:	01442683          	lw	a3,20(s0)
   1e108:	01042583          	lw	a1,16(s0)
   1e10c:	00190713          	addi	a4,s2,1
   1e110:	00169493          	slli	s1,a3,0x1
   1e114:	00d486b3          	add	a3,s1,a3
   1e118:	01f6d493          	srli	s1,a3,0x1f
   1e11c:	40b50a33          	sub	s4,a0,a1
   1e120:	00d484b3          	add	s1,s1,a3
   1e124:	4014d493          	srai	s1,s1,0x1
   1e128:	01470733          	add	a4,a4,s4
   1e12c:	00048613          	mv	a2,s1
   1e130:	00e4f663          	bgeu	s1,a4,1e13c <__ssprint_r+0x94>
   1e134:	00070493          	mv	s1,a4
   1e138:	00070613          	mv	a2,a4
   1e13c:	4007f793          	andi	a5,a5,1024
   1e140:	0a078663          	beqz	a5,1e1ec <__ssprint_r+0x144>
   1e144:	00060593          	mv	a1,a2
   1e148:	000b0513          	mv	a0,s6
   1e14c:	8b8f90ef          	jal	ra,17204 <_malloc_r>
   1e150:	00050c13          	mv	s8,a0
   1e154:	0a050a63          	beqz	a0,1e208 <__ssprint_r+0x160>
   1e158:	01042583          	lw	a1,16(s0)
   1e15c:	000a0613          	mv	a2,s4
   1e160:	911f90ef          	jal	ra,17a70 <memcpy>
   1e164:	00c45783          	lhu	a5,12(s0)
   1e168:	b7f7f793          	andi	a5,a5,-1153
   1e16c:	0807e793          	ori	a5,a5,128
   1e170:	00f41623          	sh	a5,12(s0)
   1e174:	014c0533          	add	a0,s8,s4
   1e178:	41448a33          	sub	s4,s1,s4
   1e17c:	00942a23          	sw	s1,20(s0)
   1e180:	01442423          	sw	s4,8(s0)
   1e184:	01842823          	sw	s8,16(s0)
   1e188:	00a42023          	sw	a0,0(s0)
   1e18c:	00090493          	mv	s1,s2
   1e190:	00090a13          	mv	s4,s2
   1e194:	000a0613          	mv	a2,s4
   1e198:	000b8593          	mv	a1,s7
   1e19c:	9f1f90ef          	jal	ra,17b8c <memmove>
   1e1a0:	00842703          	lw	a4,8(s0)
   1e1a4:	00042503          	lw	a0,0(s0)
   1e1a8:	008aa783          	lw	a5,8(s5)
   1e1ac:	409704b3          	sub	s1,a4,s1
   1e1b0:	01450533          	add	a0,a0,s4
   1e1b4:	00942423          	sw	s1,8(s0)
   1e1b8:	00a42023          	sw	a0,0(s0)
   1e1bc:	41278933          	sub	s2,a5,s2
   1e1c0:	012aa423          	sw	s2,8(s5)
   1e1c4:	06090463          	beqz	s2,1e22c <__ssprint_r+0x184>
   1e1c8:	0049a903          	lw	s2,4(s3)
   1e1cc:	0009ab83          	lw	s7,0(s3)
   1e1d0:	00048a13          	mv	s4,s1
   1e1d4:	00898993          	addi	s3,s3,8
   1e1d8:	fe0908e3          	beqz	s2,1e1c8 <__ssprint_r+0x120>
   1e1dc:	f0997ee3          	bgeu	s2,s1,1e0f8 <__ssprint_r+0x50>
   1e1e0:	00090493          	mv	s1,s2
   1e1e4:	00090a13          	mv	s4,s2
   1e1e8:	fadff06f          	j	1e194 <__ssprint_r+0xec>
   1e1ec:	000b0513          	mv	a0,s6
   1e1f0:	bddfa0ef          	jal	ra,18dcc <_realloc_r>
   1e1f4:	00050c13          	mv	s8,a0
   1e1f8:	f6051ee3          	bnez	a0,1e174 <__ssprint_r+0xcc>
   1e1fc:	01042583          	lw	a1,16(s0)
   1e200:	000b0513          	mv	a0,s6
   1e204:	931f50ef          	jal	ra,13b34 <_free_r>
   1e208:	00c00793          	li	a5,12
   1e20c:	00fb2023          	sw	a5,0(s6)
   1e210:	00c45783          	lhu	a5,12(s0)
   1e214:	fff00513          	li	a0,-1
   1e218:	0407e793          	ori	a5,a5,64
   1e21c:	00f41623          	sh	a5,12(s0)
   1e220:	000aa423          	sw	zero,8(s5)
   1e224:	000aa223          	sw	zero,4(s5)
   1e228:	00c0006f          	j	1e234 <__ssprint_r+0x18c>
   1e22c:	000aa223          	sw	zero,4(s5)
   1e230:	00000513          	li	a0,0
   1e234:	02c12083          	lw	ra,44(sp)
   1e238:	02812403          	lw	s0,40(sp)
   1e23c:	02412483          	lw	s1,36(sp)
   1e240:	02012903          	lw	s2,32(sp)
   1e244:	01c12983          	lw	s3,28(sp)
   1e248:	01812a03          	lw	s4,24(sp)
   1e24c:	01412a83          	lw	s5,20(sp)
   1e250:	01012b03          	lw	s6,16(sp)
   1e254:	00c12b83          	lw	s7,12(sp)
   1e258:	00812c03          	lw	s8,8(sp)
   1e25c:	03010113          	addi	sp,sp,48
   1e260:	00008067          	ret

0001e264 <_svfiprintf_r>:
   1e264:	00c5d783          	lhu	a5,12(a1)
   1e268:	ed010113          	addi	sp,sp,-304
   1e26c:	11412c23          	sw	s4,280(sp)
   1e270:	11612823          	sw	s6,272(sp)
   1e274:	11a12023          	sw	s10,256(sp)
   1e278:	12112623          	sw	ra,300(sp)
   1e27c:	12812423          	sw	s0,296(sp)
   1e280:	12912223          	sw	s1,292(sp)
   1e284:	13212023          	sw	s2,288(sp)
   1e288:	11312e23          	sw	s3,284(sp)
   1e28c:	11512a23          	sw	s5,276(sp)
   1e290:	11712623          	sw	s7,268(sp)
   1e294:	11812423          	sw	s8,264(sp)
   1e298:	11912223          	sw	s9,260(sp)
   1e29c:	0fb12e23          	sw	s11,252(sp)
   1e2a0:	0807f793          	andi	a5,a5,128
   1e2a4:	00d12623          	sw	a3,12(sp)
   1e2a8:	00058a13          	mv	s4,a1
   1e2ac:	00050b13          	mv	s6,a0
   1e2b0:	00060d13          	mv	s10,a2
   1e2b4:	00078663          	beqz	a5,1e2c0 <_svfiprintf_r+0x5c>
   1e2b8:	0105a783          	lw	a5,16(a1)
   1e2bc:	5e0784e3          	beqz	a5,1f0a4 <_svfiprintf_r+0xe40>
   1e2c0:	000257b7          	lui	a5,0x25
   1e2c4:	04c10a93          	addi	s5,sp,76
   1e2c8:	0a078793          	addi	a5,a5,160 # 250a0 <zeroes.4460+0x20>
   1e2cc:	00025bb7          	lui	s7,0x25
   1e2d0:	000254b7          	lui	s1,0x25
   1e2d4:	000d0993          	mv	s3,s10
   1e2d8:	05512023          	sw	s5,64(sp)
   1e2dc:	04012423          	sw	zero,72(sp)
   1e2e0:	04012223          	sw	zero,68(sp)
   1e2e4:	00012a23          	sw	zero,20(sp)
   1e2e8:	00012c23          	sw	zero,24(sp)
   1e2ec:	02012023          	sw	zero,32(sp)
   1e2f0:	00012e23          	sw	zero,28(sp)
   1e2f4:	00012423          	sw	zero,8(sp)
   1e2f8:	00f12823          	sw	a5,16(sp)
   1e2fc:	20cb8b93          	addi	s7,s7,524 # 2520c <blanks.4445>
   1e300:	21c48493          	addi	s1,s1,540 # 2521c <zeroes.4446>
   1e304:	000a8d13          	mv	s10,s5
   1e308:	0009c783          	lbu	a5,0(s3)
   1e30c:	20078c63          	beqz	a5,1e524 <_svfiprintf_r+0x2c0>
   1e310:	00098413          	mv	s0,s3
   1e314:	02500693          	li	a3,37
   1e318:	2ad78863          	beq	a5,a3,1e5c8 <_svfiprintf_r+0x364>
   1e31c:	00144783          	lbu	a5,1(s0)
   1e320:	00140413          	addi	s0,s0,1
   1e324:	fe079ae3          	bnez	a5,1e318 <_svfiprintf_r+0xb4>
   1e328:	41340c33          	sub	s8,s0,s3
   1e32c:	1f340c63          	beq	s0,s3,1e524 <_svfiprintf_r+0x2c0>
   1e330:	04812683          	lw	a3,72(sp)
   1e334:	04412783          	lw	a5,68(sp)
   1e338:	013d2023          	sw	s3,0(s10)
   1e33c:	018686b3          	add	a3,a3,s8
   1e340:	00178793          	addi	a5,a5,1
   1e344:	018d2223          	sw	s8,4(s10)
   1e348:	04d12423          	sw	a3,72(sp)
   1e34c:	04f12223          	sw	a5,68(sp)
   1e350:	00700693          	li	a3,7
   1e354:	008d0d13          	addi	s10,s10,8
   1e358:	28f6c063          	blt	a3,a5,1e5d8 <_svfiprintf_r+0x374>
   1e35c:	00812703          	lw	a4,8(sp)
   1e360:	00044783          	lbu	a5,0(s0)
   1e364:	01870733          	add	a4,a4,s8
   1e368:	00e12423          	sw	a4,8(sp)
   1e36c:	1a078c63          	beqz	a5,1e524 <_svfiprintf_r+0x2c0>
   1e370:	fff00893          	li	a7,-1
   1e374:	00144683          	lbu	a3,1(s0)
   1e378:	00140993          	addi	s3,s0,1
   1e37c:	02010da3          	sb	zero,59(sp)
   1e380:	00012223          	sw	zero,4(sp)
   1e384:	00000913          	li	s2,0
   1e388:	05a00c13          	li	s8,90
   1e38c:	00900c93          	li	s9,9
   1e390:	02a00593          	li	a1,42
   1e394:	00088413          	mv	s0,a7
   1e398:	00198993          	addi	s3,s3,1
   1e39c:	fe068793          	addi	a5,a3,-32 # 1fe0 <register_fini-0xe094>
   1e3a0:	04fc6863          	bltu	s8,a5,1e3f0 <_svfiprintf_r+0x18c>
   1e3a4:	01012703          	lw	a4,16(sp)
   1e3a8:	00279793          	slli	a5,a5,0x2
   1e3ac:	00e787b3          	add	a5,a5,a4
   1e3b0:	0007a783          	lw	a5,0(a5)
   1e3b4:	00078067          	jr	a5
   1e3b8:	00012223          	sw	zero,4(sp)
   1e3bc:	fd068793          	addi	a5,a3,-48
   1e3c0:	00412603          	lw	a2,4(sp)
   1e3c4:	0009c683          	lbu	a3,0(s3)
   1e3c8:	00198993          	addi	s3,s3,1
   1e3cc:	00261713          	slli	a4,a2,0x2
   1e3d0:	00c70733          	add	a4,a4,a2
   1e3d4:	00171713          	slli	a4,a4,0x1
   1e3d8:	00e787b3          	add	a5,a5,a4
   1e3dc:	00f12223          	sw	a5,4(sp)
   1e3e0:	fd068793          	addi	a5,a3,-48
   1e3e4:	fcfcfee3          	bgeu	s9,a5,1e3c0 <_svfiprintf_r+0x15c>
   1e3e8:	fe068793          	addi	a5,a3,-32
   1e3ec:	fafc7ce3          	bgeu	s8,a5,1e3a4 <_svfiprintf_r+0x140>
   1e3f0:	12068a63          	beqz	a3,1e524 <_svfiprintf_r+0x2c0>
   1e3f4:	08d10623          	sb	a3,140(sp)
   1e3f8:	02010da3          	sb	zero,59(sp)
   1e3fc:	00100c13          	li	s8,1
   1e400:	00100c93          	li	s9,1
   1e404:	08c10413          	addi	s0,sp,140
   1e408:	00000893          	li	a7,0
   1e40c:	00297f13          	andi	t5,s2,2
   1e410:	000f0463          	beqz	t5,1e418 <_svfiprintf_r+0x1b4>
   1e414:	002c0c13          	addi	s8,s8,2
   1e418:	08497e93          	andi	t4,s2,132
   1e41c:	04812783          	lw	a5,72(sp)
   1e420:	04412603          	lw	a2,68(sp)
   1e424:	000e9863          	bnez	t4,1e434 <_svfiprintf_r+0x1d0>
   1e428:	00412703          	lw	a4,4(sp)
   1e42c:	41870db3          	sub	s11,a4,s8
   1e430:	7bb04a63          	bgtz	s11,1ebe4 <_svfiprintf_r+0x980>
   1e434:	03b14503          	lbu	a0,59(sp)
   1e438:	00160593          	addi	a1,a2,1
   1e43c:	008d0693          	addi	a3,s10,8
   1e440:	04050063          	beqz	a0,1e480 <_svfiprintf_r+0x21c>
   1e444:	03b10513          	addi	a0,sp,59
   1e448:	00178793          	addi	a5,a5,1
   1e44c:	00ad2023          	sw	a0,0(s10)
   1e450:	00100513          	li	a0,1
   1e454:	00ad2223          	sw	a0,4(s10)
   1e458:	04f12423          	sw	a5,72(sp)
   1e45c:	04b12223          	sw	a1,68(sp)
   1e460:	00700513          	li	a0,7
   1e464:	0ab540e3          	blt	a0,a1,1ed04 <_svfiprintf_r+0xaa0>
   1e468:	00260f93          	addi	t6,a2,2
   1e46c:	010d0513          	addi	a0,s10,16
   1e470:	00058613          	mv	a2,a1
   1e474:	00068d13          	mv	s10,a3
   1e478:	000f8593          	mv	a1,t6
   1e47c:	00050693          	mv	a3,a0
   1e480:	020f0c63          	beqz	t5,1e4b8 <_svfiprintf_r+0x254>
   1e484:	03c10613          	addi	a2,sp,60
   1e488:	00278793          	addi	a5,a5,2
   1e48c:	00cd2023          	sw	a2,0(s10)
   1e490:	00200613          	li	a2,2
   1e494:	00cd2223          	sw	a2,4(s10)
   1e498:	04f12423          	sw	a5,72(sp)
   1e49c:	04b12223          	sw	a1,68(sp)
   1e4a0:	00700713          	li	a4,7
   1e4a4:	0ab742e3          	blt	a4,a1,1ed48 <_svfiprintf_r+0xae4>
   1e4a8:	00058613          	mv	a2,a1
   1e4ac:	00068d13          	mv	s10,a3
   1e4b0:	00158593          	addi	a1,a1,1
   1e4b4:	00868693          	addi	a3,a3,8
   1e4b8:	08000513          	li	a0,128
   1e4bc:	54ae8c63          	beq	t4,a0,1ea14 <_svfiprintf_r+0x7b0>
   1e4c0:	41988db3          	sub	s11,a7,s9
   1e4c4:	63b04463          	bgtz	s11,1eaec <_svfiprintf_r+0x888>
   1e4c8:	00fc87b3          	add	a5,s9,a5
   1e4cc:	008d2023          	sw	s0,0(s10)
   1e4d0:	019d2223          	sw	s9,4(s10)
   1e4d4:	04f12423          	sw	a5,72(sp)
   1e4d8:	04b12223          	sw	a1,68(sp)
   1e4dc:	00700713          	li	a4,7
   1e4e0:	6cb74263          	blt	a4,a1,1eba4 <_svfiprintf_r+0x940>
   1e4e4:	00497313          	andi	t1,s2,4
   1e4e8:	00030863          	beqz	t1,1e4f8 <_svfiprintf_r+0x294>
   1e4ec:	00412703          	lw	a4,4(sp)
   1e4f0:	41870cb3          	sub	s9,a4,s8
   1e4f4:	099048e3          	bgtz	s9,1ed84 <_svfiprintf_r+0xb20>
   1e4f8:	00412403          	lw	s0,4(sp)
   1e4fc:	01845463          	bge	s0,s8,1e504 <_svfiprintf_r+0x2a0>
   1e500:	000c0413          	mv	s0,s8
   1e504:	00812703          	lw	a4,8(sp)
   1e508:	00870733          	add	a4,a4,s0
   1e50c:	00e12423          	sw	a4,8(sp)
   1e510:	6a079a63          	bnez	a5,1ebc4 <_svfiprintf_r+0x960>
   1e514:	0009c783          	lbu	a5,0(s3)
   1e518:	04012223          	sw	zero,68(sp)
   1e51c:	000a8d13          	mv	s10,s5
   1e520:	de0798e3          	bnez	a5,1e310 <_svfiprintf_r+0xac>
   1e524:	04812783          	lw	a5,72(sp)
   1e528:	56079ee3          	bnez	a5,1f2a4 <_svfiprintf_r+0x1040>
   1e52c:	00ca5783          	lhu	a5,12(s4)
   1e530:	0407f793          	andi	a5,a5,64
   1e534:	5a0794e3          	bnez	a5,1f2dc <_svfiprintf_r+0x1078>
   1e538:	12c12083          	lw	ra,300(sp)
   1e53c:	12812403          	lw	s0,296(sp)
   1e540:	00812503          	lw	a0,8(sp)
   1e544:	12412483          	lw	s1,292(sp)
   1e548:	12012903          	lw	s2,288(sp)
   1e54c:	11c12983          	lw	s3,284(sp)
   1e550:	11812a03          	lw	s4,280(sp)
   1e554:	11412a83          	lw	s5,276(sp)
   1e558:	11012b03          	lw	s6,272(sp)
   1e55c:	10c12b83          	lw	s7,268(sp)
   1e560:	10812c03          	lw	s8,264(sp)
   1e564:	10412c83          	lw	s9,260(sp)
   1e568:	10012d03          	lw	s10,256(sp)
   1e56c:	0fc12d83          	lw	s11,252(sp)
   1e570:	13010113          	addi	sp,sp,304
   1e574:	00008067          	ret
   1e578:	000b0513          	mv	a0,s6
   1e57c:	a89f80ef          	jal	ra,17004 <_localeconv_r>
   1e580:	00452783          	lw	a5,4(a0)
   1e584:	00078513          	mv	a0,a5
   1e588:	00f12e23          	sw	a5,28(sp)
   1e58c:	f2df10ef          	jal	ra,104b8 <strlen>
   1e590:	00050793          	mv	a5,a0
   1e594:	000b0513          	mv	a0,s6
   1e598:	00078d93          	mv	s11,a5
   1e59c:	02f12023          	sw	a5,32(sp)
   1e5a0:	a65f80ef          	jal	ra,17004 <_localeconv_r>
   1e5a4:	00852783          	lw	a5,8(a0)
   1e5a8:	02a00593          	li	a1,42
   1e5ac:	00f12c23          	sw	a5,24(sp)
   1e5b0:	1e0d98e3          	bnez	s11,1efa0 <_svfiprintf_r+0xd3c>
   1e5b4:	0009c683          	lbu	a3,0(s3)
   1e5b8:	de1ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e5bc:	0009c683          	lbu	a3,0(s3)
   1e5c0:	02096913          	ori	s2,s2,32
   1e5c4:	dd5ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e5c8:	41340c33          	sub	s8,s0,s3
   1e5cc:	d73412e3          	bne	s0,s3,1e330 <_svfiprintf_r+0xcc>
   1e5d0:	00044783          	lbu	a5,0(s0)
   1e5d4:	d99ff06f          	j	1e36c <_svfiprintf_r+0x108>
   1e5d8:	04010613          	addi	a2,sp,64
   1e5dc:	000a0593          	mv	a1,s4
   1e5e0:	000b0513          	mv	a0,s6
   1e5e4:	ac5ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1e5e8:	f40512e3          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1e5ec:	000a8d13          	mv	s10,s5
   1e5f0:	d6dff06f          	j	1e35c <_svfiprintf_r+0xf8>
   1e5f4:	00c12783          	lw	a5,12(sp)
   1e5f8:	00040893          	mv	a7,s0
   1e5fc:	02010da3          	sb	zero,59(sp)
   1e600:	0007a403          	lw	s0,0(a5)
   1e604:	00478d93          	addi	s11,a5,4
   1e608:	380404e3          	beqz	s0,1f190 <_svfiprintf_r+0xf2c>
   1e60c:	fff00793          	li	a5,-1
   1e610:	26f88ee3          	beq	a7,a5,1f08c <_svfiprintf_r+0xe28>
   1e614:	00088613          	mv	a2,a7
   1e618:	00000593          	li	a1,0
   1e61c:	00040513          	mv	a0,s0
   1e620:	01112623          	sw	a7,12(sp)
   1e624:	b78f90ef          	jal	ra,1799c <memchr>
   1e628:	00c12883          	lw	a7,12(sp)
   1e62c:	480506e3          	beqz	a0,1f2b8 <_svfiprintf_r+0x1054>
   1e630:	40850cb3          	sub	s9,a0,s0
   1e634:	01b12623          	sw	s11,12(sp)
   1e638:	00000893          	li	a7,0
   1e63c:	0940006f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1e640:	00c12703          	lw	a4,12(sp)
   1e644:	02010da3          	sb	zero,59(sp)
   1e648:	00100c13          	li	s8,1
   1e64c:	00072783          	lw	a5,0(a4)
   1e650:	00470713          	addi	a4,a4,4
   1e654:	00e12623          	sw	a4,12(sp)
   1e658:	08f10623          	sb	a5,140(sp)
   1e65c:	00100c93          	li	s9,1
   1e660:	08c10413          	addi	s0,sp,140
   1e664:	da5ff06f          	j	1e408 <_svfiprintf_r+0x1a4>
   1e668:	02097793          	andi	a5,s2,32
   1e66c:	00040893          	mv	a7,s0
   1e670:	0e078e63          	beqz	a5,1e76c <_svfiprintf_r+0x508>
   1e674:	00c12783          	lw	a5,12(sp)
   1e678:	00778793          	addi	a5,a5,7
   1e67c:	ff87f793          	andi	a5,a5,-8
   1e680:	0047a683          	lw	a3,4(a5)
   1e684:	0007ac83          	lw	s9,0(a5)
   1e688:	00878793          	addi	a5,a5,8
   1e68c:	00f12623          	sw	a5,12(sp)
   1e690:	00068c13          	mv	s8,a3
   1e694:	1006c463          	bltz	a3,1e79c <_svfiprintf_r+0x538>
   1e698:	fff00693          	li	a3,-1
   1e69c:	00090d93          	mv	s11,s2
   1e6a0:	00d88863          	beq	a7,a3,1e6b0 <_svfiprintf_r+0x44c>
   1e6a4:	018ce6b3          	or	a3,s9,s8
   1e6a8:	f7f97d93          	andi	s11,s2,-129
   1e6ac:	76068e63          	beqz	a3,1ee28 <_svfiprintf_r+0xbc4>
   1e6b0:	000c1ce3          	bnez	s8,1eec8 <_svfiprintf_r+0xc64>
   1e6b4:	00900693          	li	a3,9
   1e6b8:	0196e8e3          	bltu	a3,s9,1eec8 <_svfiprintf_r+0xc64>
   1e6bc:	030c8793          	addi	a5,s9,48
   1e6c0:	0ef107a3          	sb	a5,239(sp)
   1e6c4:	000d8913          	mv	s2,s11
   1e6c8:	00100c93          	li	s9,1
   1e6cc:	0ef10413          	addi	s0,sp,239
   1e6d0:	00088c13          	mv	s8,a7
   1e6d4:	0198d463          	bge	a7,s9,1e6dc <_svfiprintf_r+0x478>
   1e6d8:	000c8c13          	mv	s8,s9
   1e6dc:	03b14783          	lbu	a5,59(sp)
   1e6e0:	00f037b3          	snez	a5,a5
   1e6e4:	00fc0c33          	add	s8,s8,a5
   1e6e8:	d25ff06f          	j	1e40c <_svfiprintf_r+0x1a8>
   1e6ec:	00040893          	mv	a7,s0
   1e6f0:	01096913          	ori	s2,s2,16
   1e6f4:	02097793          	andi	a5,s2,32
   1e6f8:	74078463          	beqz	a5,1ee40 <_svfiprintf_r+0xbdc>
   1e6fc:	00c12783          	lw	a5,12(sp)
   1e700:	00778793          	addi	a5,a5,7
   1e704:	ff87f793          	andi	a5,a5,-8
   1e708:	0007ac83          	lw	s9,0(a5)
   1e70c:	0047ac03          	lw	s8,4(a5)
   1e710:	00878793          	addi	a5,a5,8
   1e714:	00f12623          	sw	a5,12(sp)
   1e718:	bff97d93          	andi	s11,s2,-1025
   1e71c:	00000693          	li	a3,0
   1e720:	02010da3          	sb	zero,59(sp)
   1e724:	fff00613          	li	a2,-1
   1e728:	08c88e63          	beq	a7,a2,1e7c4 <_svfiprintf_r+0x560>
   1e72c:	018ce633          	or	a2,s9,s8
   1e730:	f7fdf913          	andi	s2,s11,-129
   1e734:	4a061463          	bnez	a2,1ebdc <_svfiprintf_r+0x978>
   1e738:	28089263          	bnez	a7,1e9bc <_svfiprintf_r+0x758>
   1e73c:	6e069a63          	bnez	a3,1ee30 <_svfiprintf_r+0xbcc>
   1e740:	001dfc93          	andi	s9,s11,1
   1e744:	0f010413          	addi	s0,sp,240
   1e748:	f80c84e3          	beqz	s9,1e6d0 <_svfiprintf_r+0x46c>
   1e74c:	03000793          	li	a5,48
   1e750:	0ef107a3          	sb	a5,239(sp)
   1e754:	0ef10413          	addi	s0,sp,239
   1e758:	f79ff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1e75c:	01096913          	ori	s2,s2,16
   1e760:	02097793          	andi	a5,s2,32
   1e764:	00040893          	mv	a7,s0
   1e768:	f00796e3          	bnez	a5,1e674 <_svfiprintf_r+0x410>
   1e76c:	00c12703          	lw	a4,12(sp)
   1e770:	01097793          	andi	a5,s2,16
   1e774:	00470693          	addi	a3,a4,4
   1e778:	040792e3          	bnez	a5,1efbc <_svfiprintf_r+0xd58>
   1e77c:	04097793          	andi	a5,s2,64
   1e780:	260786e3          	beqz	a5,1f1ec <_svfiprintf_r+0xf88>
   1e784:	00c12783          	lw	a5,12(sp)
   1e788:	00d12623          	sw	a3,12(sp)
   1e78c:	00079c83          	lh	s9,0(a5)
   1e790:	41fcdc13          	srai	s8,s9,0x1f
   1e794:	000c0693          	mv	a3,s8
   1e798:	f006d0e3          	bgez	a3,1e698 <_svfiprintf_r+0x434>
   1e79c:	019036b3          	snez	a3,s9
   1e7a0:	41800eb3          	neg	t4,s8
   1e7a4:	40de8c33          	sub	s8,t4,a3
   1e7a8:	02d00693          	li	a3,45
   1e7ac:	02d10da3          	sb	a3,59(sp)
   1e7b0:	fff00613          	li	a2,-1
   1e7b4:	41900cb3          	neg	s9,s9
   1e7b8:	00090d93          	mv	s11,s2
   1e7bc:	00100693          	li	a3,1
   1e7c0:	f6c896e3          	bne	a7,a2,1e72c <_svfiprintf_r+0x4c8>
   1e7c4:	00100613          	li	a2,1
   1e7c8:	eec684e3          	beq	a3,a2,1e6b0 <_svfiprintf_r+0x44c>
   1e7cc:	00200613          	li	a2,2
   1e7d0:	20c68063          	beq	a3,a2,1e9d0 <_svfiprintf_r+0x76c>
   1e7d4:	0f010413          	addi	s0,sp,240
   1e7d8:	01dc1793          	slli	a5,s8,0x1d
   1e7dc:	007cf693          	andi	a3,s9,7
   1e7e0:	003cdc93          	srli	s9,s9,0x3
   1e7e4:	03068693          	addi	a3,a3,48
   1e7e8:	0197ecb3          	or	s9,a5,s9
   1e7ec:	003c5c13          	srli	s8,s8,0x3
   1e7f0:	fed40fa3          	sb	a3,-1(s0)
   1e7f4:	018ce7b3          	or	a5,s9,s8
   1e7f8:	00040593          	mv	a1,s0
   1e7fc:	fff40413          	addi	s0,s0,-1
   1e800:	fc079ce3          	bnez	a5,1e7d8 <_svfiprintf_r+0x574>
   1e804:	001df793          	andi	a5,s11,1
   1e808:	1e078e63          	beqz	a5,1ea04 <_svfiprintf_r+0x7a0>
   1e80c:	03000793          	li	a5,48
   1e810:	1ef68a63          	beq	a3,a5,1ea04 <_svfiprintf_r+0x7a0>
   1e814:	ffe58593          	addi	a1,a1,-2
   1e818:	fef40fa3          	sb	a5,-1(s0)
   1e81c:	0f010793          	addi	a5,sp,240
   1e820:	40b78cb3          	sub	s9,a5,a1
   1e824:	000d8913          	mv	s2,s11
   1e828:	00058413          	mv	s0,a1
   1e82c:	ea5ff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1e830:	00040893          	mv	a7,s0
   1e834:	01096d93          	ori	s11,s2,16
   1e838:	020df793          	andi	a5,s11,32
   1e83c:	62078863          	beqz	a5,1ee6c <_svfiprintf_r+0xc08>
   1e840:	00c12783          	lw	a5,12(sp)
   1e844:	00100693          	li	a3,1
   1e848:	00778913          	addi	s2,a5,7
   1e84c:	ff897913          	andi	s2,s2,-8
   1e850:	00890793          	addi	a5,s2,8
   1e854:	00092c83          	lw	s9,0(s2)
   1e858:	00492c03          	lw	s8,4(s2)
   1e85c:	00f12623          	sw	a5,12(sp)
   1e860:	ec1ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1e864:	00c12783          	lw	a5,12(sp)
   1e868:	ffff86b7          	lui	a3,0xffff8
   1e86c:	8306c693          	xori	a3,a3,-2000
   1e870:	0007ac83          	lw	s9,0(a5)
   1e874:	00478793          	addi	a5,a5,4
   1e878:	00f12623          	sw	a5,12(sp)
   1e87c:	000257b7          	lui	a5,0x25
   1e880:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1e884:	02d11e23          	sh	a3,60(sp)
   1e888:	00040893          	mv	a7,s0
   1e88c:	00000c13          	li	s8,0
   1e890:	00296d93          	ori	s11,s2,2
   1e894:	00f12a23          	sw	a5,20(sp)
   1e898:	00200693          	li	a3,2
   1e89c:	e85ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1e8a0:	0009c683          	lbu	a3,0(s3)
   1e8a4:	08096913          	ori	s2,s2,128
   1e8a8:	af1ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e8ac:	0009c683          	lbu	a3,0(s3)
   1e8b0:	00198713          	addi	a4,s3,1
   1e8b4:	22b68ae3          	beq	a3,a1,1f2e8 <_svfiprintf_r+0x1084>
   1e8b8:	fd068793          	addi	a5,a3,-48 # ffff7fd0 <__BSS_END__+0xfffd1000>
   1e8bc:	00070993          	mv	s3,a4
   1e8c0:	00000413          	li	s0,0
   1e8c4:	acfcece3          	bltu	s9,a5,1e39c <_svfiprintf_r+0x138>
   1e8c8:	0009c683          	lbu	a3,0(s3)
   1e8cc:	00241713          	slli	a4,s0,0x2
   1e8d0:	008708b3          	add	a7,a4,s0
   1e8d4:	00189893          	slli	a7,a7,0x1
   1e8d8:	00f88433          	add	s0,a7,a5
   1e8dc:	fd068793          	addi	a5,a3,-48
   1e8e0:	00198993          	addi	s3,s3,1
   1e8e4:	fefcf2e3          	bgeu	s9,a5,1e8c8 <_svfiprintf_r+0x664>
   1e8e8:	ab5ff06f          	j	1e39c <_svfiprintf_r+0x138>
   1e8ec:	0009c683          	lbu	a3,0(s3)
   1e8f0:	00496913          	ori	s2,s2,4
   1e8f4:	aa5ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e8f8:	02b00793          	li	a5,43
   1e8fc:	0009c683          	lbu	a3,0(s3)
   1e900:	02f10da3          	sb	a5,59(sp)
   1e904:	a95ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e908:	00c12703          	lw	a4,12(sp)
   1e90c:	0009c683          	lbu	a3,0(s3)
   1e910:	00072783          	lw	a5,0(a4)
   1e914:	00470713          	addi	a4,a4,4
   1e918:	00e12623          	sw	a4,12(sp)
   1e91c:	00f12223          	sw	a5,4(sp)
   1e920:	a607dce3          	bgez	a5,1e398 <_svfiprintf_r+0x134>
   1e924:	40f007b3          	neg	a5,a5
   1e928:	00f12223          	sw	a5,4(sp)
   1e92c:	00496913          	ori	s2,s2,4
   1e930:	a69ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e934:	0009c683          	lbu	a3,0(s3)
   1e938:	00196913          	ori	s2,s2,1
   1e93c:	a5dff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e940:	03b14783          	lbu	a5,59(sp)
   1e944:	0009c683          	lbu	a3,0(s3)
   1e948:	a40798e3          	bnez	a5,1e398 <_svfiprintf_r+0x134>
   1e94c:	02000793          	li	a5,32
   1e950:	02f10da3          	sb	a5,59(sp)
   1e954:	a45ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e958:	0009c683          	lbu	a3,0(s3)
   1e95c:	06800793          	li	a5,104
   1e960:	7ef68e63          	beq	a3,a5,1f15c <_svfiprintf_r+0xef8>
   1e964:	04096913          	ori	s2,s2,64
   1e968:	a31ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e96c:	00c12703          	lw	a4,12(sp)
   1e970:	02097793          	andi	a5,s2,32
   1e974:	00072683          	lw	a3,0(a4)
   1e978:	00470713          	addi	a4,a4,4
   1e97c:	00e12623          	sw	a4,12(sp)
   1e980:	5e079c63          	bnez	a5,1ef78 <_svfiprintf_r+0xd14>
   1e984:	01097793          	andi	a5,s2,16
   1e988:	7e079e63          	bnez	a5,1f184 <_svfiprintf_r+0xf20>
   1e98c:	04097793          	andi	a5,s2,64
   1e990:	100794e3          	bnez	a5,1f298 <_svfiprintf_r+0x1034>
   1e994:	20097313          	andi	t1,s2,512
   1e998:	7e030663          	beqz	t1,1f184 <_svfiprintf_r+0xf20>
   1e99c:	00812783          	lw	a5,8(sp)
   1e9a0:	00f68023          	sb	a5,0(a3)
   1e9a4:	965ff06f          	j	1e308 <_svfiprintf_r+0xa4>
   1e9a8:	0009c683          	lbu	a3,0(s3)
   1e9ac:	06c00793          	li	a5,108
   1e9b0:	7af68e63          	beq	a3,a5,1f16c <_svfiprintf_r+0xf08>
   1e9b4:	01096913          	ori	s2,s2,16
   1e9b8:	9e1ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1e9bc:	00100613          	li	a2,1
   1e9c0:	10c684e3          	beq	a3,a2,1f2c8 <_svfiprintf_r+0x1064>
   1e9c4:	00200613          	li	a2,2
   1e9c8:	00090d93          	mv	s11,s2
   1e9cc:	e0c694e3          	bne	a3,a2,1e7d4 <_svfiprintf_r+0x570>
   1e9d0:	01412683          	lw	a3,20(sp)
   1e9d4:	0f010413          	addi	s0,sp,240
   1e9d8:	00fcf793          	andi	a5,s9,15
   1e9dc:	00f687b3          	add	a5,a3,a5
   1e9e0:	0007c703          	lbu	a4,0(a5)
   1e9e4:	004cdc93          	srli	s9,s9,0x4
   1e9e8:	01cc1793          	slli	a5,s8,0x1c
   1e9ec:	0197ecb3          	or	s9,a5,s9
   1e9f0:	004c5c13          	srli	s8,s8,0x4
   1e9f4:	fee40fa3          	sb	a4,-1(s0)
   1e9f8:	018ce7b3          	or	a5,s9,s8
   1e9fc:	fff40413          	addi	s0,s0,-1
   1ea00:	fc079ce3          	bnez	a5,1e9d8 <_svfiprintf_r+0x774>
   1ea04:	0f010793          	addi	a5,sp,240
   1ea08:	40878cb3          	sub	s9,a5,s0
   1ea0c:	000d8913          	mv	s2,s11
   1ea10:	cc1ff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1ea14:	00412703          	lw	a4,4(sp)
   1ea18:	41870db3          	sub	s11,a4,s8
   1ea1c:	abb052e3          	blez	s11,1e4c0 <_svfiprintf_r+0x25c>
   1ea20:	01000513          	li	a0,16
   1ea24:	0bb556e3          	bge	a0,s11,1f2d0 <_svfiprintf_r+0x106c>
   1ea28:	02812223          	sw	s0,36(sp)
   1ea2c:	01000693          	li	a3,16
   1ea30:	000a0413          	mv	s0,s4
   1ea34:	00700e93          	li	t4,7
   1ea38:	000d8a13          	mv	s4,s11
   1ea3c:	00098d93          	mv	s11,s3
   1ea40:	00088993          	mv	s3,a7
   1ea44:	00c0006f          	j	1ea50 <_svfiprintf_r+0x7ec>
   1ea48:	ff0a0a13          	addi	s4,s4,-16
   1ea4c:	0546da63          	bge	a3,s4,1eaa0 <_svfiprintf_r+0x83c>
   1ea50:	01078793          	addi	a5,a5,16
   1ea54:	00160613          	addi	a2,a2,1
   1ea58:	009d2023          	sw	s1,0(s10)
   1ea5c:	00dd2223          	sw	a3,4(s10)
   1ea60:	04f12423          	sw	a5,72(sp)
   1ea64:	04c12223          	sw	a2,68(sp)
   1ea68:	008d0d13          	addi	s10,s10,8
   1ea6c:	fccedee3          	bge	t4,a2,1ea48 <_svfiprintf_r+0x7e4>
   1ea70:	04010613          	addi	a2,sp,64
   1ea74:	00040593          	mv	a1,s0
   1ea78:	000b0513          	mv	a0,s6
   1ea7c:	e2cff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ea80:	6e051e63          	bnez	a0,1f17c <_svfiprintf_r+0xf18>
   1ea84:	01000693          	li	a3,16
   1ea88:	ff0a0a13          	addi	s4,s4,-16
   1ea8c:	04812783          	lw	a5,72(sp)
   1ea90:	04412603          	lw	a2,68(sp)
   1ea94:	000a8d13          	mv	s10,s5
   1ea98:	00700e93          	li	t4,7
   1ea9c:	fb46cae3          	blt	a3,s4,1ea50 <_svfiprintf_r+0x7ec>
   1eaa0:	00098893          	mv	a7,s3
   1eaa4:	000d8993          	mv	s3,s11
   1eaa8:	000a0d93          	mv	s11,s4
   1eaac:	00040a13          	mv	s4,s0
   1eab0:	02412403          	lw	s0,36(sp)
   1eab4:	00160613          	addi	a2,a2,1
   1eab8:	008d0513          	addi	a0,s10,8
   1eabc:	01b787b3          	add	a5,a5,s11
   1eac0:	009d2023          	sw	s1,0(s10)
   1eac4:	01bd2223          	sw	s11,4(s10)
   1eac8:	04f12423          	sw	a5,72(sp)
   1eacc:	04c12223          	sw	a2,68(sp)
   1ead0:	00700713          	li	a4,7
   1ead4:	64c74a63          	blt	a4,a2,1f128 <_svfiprintf_r+0xec4>
   1ead8:	41988db3          	sub	s11,a7,s9
   1eadc:	00160593          	addi	a1,a2,1
   1eae0:	00850693          	addi	a3,a0,8
   1eae4:	00050d13          	mv	s10,a0
   1eae8:	9fb050e3          	blez	s11,1e4c8 <_svfiprintf_r+0x264>
   1eaec:	01000513          	li	a0,16
   1eaf0:	73b55e63          	bge	a0,s11,1f22c <_svfiprintf_r+0xfc8>
   1eaf4:	01000693          	li	a3,16
   1eaf8:	00700893          	li	a7,7
   1eafc:	00c0006f          	j	1eb08 <_svfiprintf_r+0x8a4>
   1eb00:	ff0d8d93          	addi	s11,s11,-16
   1eb04:	05b6da63          	bge	a3,s11,1eb58 <_svfiprintf_r+0x8f4>
   1eb08:	01078793          	addi	a5,a5,16
   1eb0c:	00160613          	addi	a2,a2,1
   1eb10:	009d2023          	sw	s1,0(s10)
   1eb14:	00dd2223          	sw	a3,4(s10)
   1eb18:	04f12423          	sw	a5,72(sp)
   1eb1c:	04c12223          	sw	a2,68(sp)
   1eb20:	008d0d13          	addi	s10,s10,8
   1eb24:	fcc8dee3          	bge	a7,a2,1eb00 <_svfiprintf_r+0x89c>
   1eb28:	04010613          	addi	a2,sp,64
   1eb2c:	000a0593          	mv	a1,s4
   1eb30:	000b0513          	mv	a0,s6
   1eb34:	d74ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1eb38:	9e051ae3          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1eb3c:	01000693          	li	a3,16
   1eb40:	ff0d8d93          	addi	s11,s11,-16
   1eb44:	04812783          	lw	a5,72(sp)
   1eb48:	04412603          	lw	a2,68(sp)
   1eb4c:	000a8d13          	mv	s10,s5
   1eb50:	00700893          	li	a7,7
   1eb54:	fbb6cae3          	blt	a3,s11,1eb08 <_svfiprintf_r+0x8a4>
   1eb58:	00160593          	addi	a1,a2,1
   1eb5c:	008d0613          	addi	a2,s10,8
   1eb60:	01b787b3          	add	a5,a5,s11
   1eb64:	009d2023          	sw	s1,0(s10)
   1eb68:	01bd2223          	sw	s11,4(s10)
   1eb6c:	04f12423          	sw	a5,72(sp)
   1eb70:	04b12223          	sw	a1,68(sp)
   1eb74:	00700713          	li	a4,7
   1eb78:	32b74263          	blt	a4,a1,1ee9c <_svfiprintf_r+0xc38>
   1eb7c:	00060d13          	mv	s10,a2
   1eb80:	00158593          	addi	a1,a1,1
   1eb84:	00fc87b3          	add	a5,s9,a5
   1eb88:	008d2023          	sw	s0,0(s10)
   1eb8c:	019d2223          	sw	s9,4(s10)
   1eb90:	04f12423          	sw	a5,72(sp)
   1eb94:	04b12223          	sw	a1,68(sp)
   1eb98:	00700713          	li	a4,7
   1eb9c:	00860693          	addi	a3,a2,8
   1eba0:	94b752e3          	bge	a4,a1,1e4e4 <_svfiprintf_r+0x280>
   1eba4:	04010613          	addi	a2,sp,64
   1eba8:	000a0593          	mv	a1,s4
   1ebac:	000b0513          	mv	a0,s6
   1ebb0:	cf8ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ebb4:	96051ce3          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1ebb8:	04812783          	lw	a5,72(sp)
   1ebbc:	000a8693          	mv	a3,s5
   1ebc0:	925ff06f          	j	1e4e4 <_svfiprintf_r+0x280>
   1ebc4:	04010613          	addi	a2,sp,64
   1ebc8:	000a0593          	mv	a1,s4
   1ebcc:	000b0513          	mv	a0,s6
   1ebd0:	cd8ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ebd4:	940500e3          	beqz	a0,1e514 <_svfiprintf_r+0x2b0>
   1ebd8:	955ff06f          	j	1e52c <_svfiprintf_r+0x2c8>
   1ebdc:	00090d93          	mv	s11,s2
   1ebe0:	be5ff06f          	j	1e7c4 <_svfiprintf_r+0x560>
   1ebe4:	01000693          	li	a3,16
   1ebe8:	0bb6de63          	bge	a3,s11,1eca4 <_svfiprintf_r+0xa40>
   1ebec:	000d0713          	mv	a4,s10
   1ebf0:	00700f93          	li	t6,7
   1ebf4:	000c0d13          	mv	s10,s8
   1ebf8:	03e12223          	sw	t5,36(sp)
   1ebfc:	00090c13          	mv	s8,s2
   1ec00:	03d12423          	sw	t4,40(sp)
   1ec04:	000a0913          	mv	s2,s4
   1ec08:	00098a13          	mv	s4,s3
   1ec0c:	00040993          	mv	s3,s0
   1ec10:	000d8413          	mv	s0,s11
   1ec14:	000c8d93          	mv	s11,s9
   1ec18:	00088c93          	mv	s9,a7
   1ec1c:	00c0006f          	j	1ec28 <_svfiprintf_r+0x9c4>
   1ec20:	ff040413          	addi	s0,s0,-16
   1ec24:	0486da63          	bge	a3,s0,1ec78 <_svfiprintf_r+0xa14>
   1ec28:	01078793          	addi	a5,a5,16
   1ec2c:	00160613          	addi	a2,a2,1
   1ec30:	01772023          	sw	s7,0(a4)
   1ec34:	00d72223          	sw	a3,4(a4)
   1ec38:	04f12423          	sw	a5,72(sp)
   1ec3c:	04c12223          	sw	a2,68(sp)
   1ec40:	00870713          	addi	a4,a4,8
   1ec44:	fccfdee3          	bge	t6,a2,1ec20 <_svfiprintf_r+0x9bc>
   1ec48:	04010613          	addi	a2,sp,64
   1ec4c:	00090593          	mv	a1,s2
   1ec50:	000b0513          	mv	a0,s6
   1ec54:	c54ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ec58:	4a051663          	bnez	a0,1f104 <_svfiprintf_r+0xea0>
   1ec5c:	01000693          	li	a3,16
   1ec60:	ff040413          	addi	s0,s0,-16
   1ec64:	04812783          	lw	a5,72(sp)
   1ec68:	04412603          	lw	a2,68(sp)
   1ec6c:	000a8713          	mv	a4,s5
   1ec70:	00700f93          	li	t6,7
   1ec74:	fa86cae3          	blt	a3,s0,1ec28 <_svfiprintf_r+0x9c4>
   1ec78:	02412f03          	lw	t5,36(sp)
   1ec7c:	02812e83          	lw	t4,40(sp)
   1ec80:	000c8893          	mv	a7,s9
   1ec84:	000d8c93          	mv	s9,s11
   1ec88:	00040d93          	mv	s11,s0
   1ec8c:	00098413          	mv	s0,s3
   1ec90:	000a0993          	mv	s3,s4
   1ec94:	00090a13          	mv	s4,s2
   1ec98:	000c0913          	mv	s2,s8
   1ec9c:	000d0c13          	mv	s8,s10
   1eca0:	00070d13          	mv	s10,a4
   1eca4:	01b787b3          	add	a5,a5,s11
   1eca8:	00160613          	addi	a2,a2,1
   1ecac:	017d2023          	sw	s7,0(s10)
   1ecb0:	01bd2223          	sw	s11,4(s10)
   1ecb4:	04f12423          	sw	a5,72(sp)
   1ecb8:	04c12223          	sw	a2,68(sp)
   1ecbc:	00700693          	li	a3,7
   1ecc0:	008d0d13          	addi	s10,s10,8
   1ecc4:	f6c6d863          	bge	a3,a2,1e434 <_svfiprintf_r+0x1d0>
   1ecc8:	04010613          	addi	a2,sp,64
   1eccc:	000a0593          	mv	a1,s4
   1ecd0:	000b0513          	mv	a0,s6
   1ecd4:	03112623          	sw	a7,44(sp)
   1ecd8:	03d12423          	sw	t4,40(sp)
   1ecdc:	03e12223          	sw	t5,36(sp)
   1ece0:	bc8ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ece4:	840514e3          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1ece8:	04812783          	lw	a5,72(sp)
   1ecec:	04412603          	lw	a2,68(sp)
   1ecf0:	02c12883          	lw	a7,44(sp)
   1ecf4:	02812e83          	lw	t4,40(sp)
   1ecf8:	02412f03          	lw	t5,36(sp)
   1ecfc:	000a8d13          	mv	s10,s5
   1ed00:	f34ff06f          	j	1e434 <_svfiprintf_r+0x1d0>
   1ed04:	04010613          	addi	a2,sp,64
   1ed08:	000a0593          	mv	a1,s4
   1ed0c:	000b0513          	mv	a0,s6
   1ed10:	03112623          	sw	a7,44(sp)
   1ed14:	03d12423          	sw	t4,40(sp)
   1ed18:	03e12223          	sw	t5,36(sp)
   1ed1c:	b8cff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ed20:	800516e3          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1ed24:	04412603          	lw	a2,68(sp)
   1ed28:	04812783          	lw	a5,72(sp)
   1ed2c:	02c12883          	lw	a7,44(sp)
   1ed30:	02812e83          	lw	t4,40(sp)
   1ed34:	02412f03          	lw	t5,36(sp)
   1ed38:	05410693          	addi	a3,sp,84
   1ed3c:	00160593          	addi	a1,a2,1
   1ed40:	000a8d13          	mv	s10,s5
   1ed44:	f3cff06f          	j	1e480 <_svfiprintf_r+0x21c>
   1ed48:	04010613          	addi	a2,sp,64
   1ed4c:	000a0593          	mv	a1,s4
   1ed50:	000b0513          	mv	a0,s6
   1ed54:	03112423          	sw	a7,40(sp)
   1ed58:	03d12223          	sw	t4,36(sp)
   1ed5c:	b4cff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ed60:	fc051663          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1ed64:	04412603          	lw	a2,68(sp)
   1ed68:	04812783          	lw	a5,72(sp)
   1ed6c:	02812883          	lw	a7,40(sp)
   1ed70:	02412e83          	lw	t4,36(sp)
   1ed74:	05410693          	addi	a3,sp,84
   1ed78:	00160593          	addi	a1,a2,1
   1ed7c:	000a8d13          	mv	s10,s5
   1ed80:	f38ff06f          	j	1e4b8 <_svfiprintf_r+0x254>
   1ed84:	01000613          	li	a2,16
   1ed88:	04412703          	lw	a4,68(sp)
   1ed8c:	07965063          	bge	a2,s9,1edec <_svfiprintf_r+0xb88>
   1ed90:	01000d93          	li	s11,16
   1ed94:	00700413          	li	s0,7
   1ed98:	00c0006f          	j	1eda4 <_svfiprintf_r+0xb40>
   1ed9c:	ff0c8c93          	addi	s9,s9,-16
   1eda0:	059dd663          	bge	s11,s9,1edec <_svfiprintf_r+0xb88>
   1eda4:	01078793          	addi	a5,a5,16
   1eda8:	00170713          	addi	a4,a4,1
   1edac:	0176a023          	sw	s7,0(a3)
   1edb0:	01b6a223          	sw	s11,4(a3)
   1edb4:	04f12423          	sw	a5,72(sp)
   1edb8:	04e12223          	sw	a4,68(sp)
   1edbc:	00868693          	addi	a3,a3,8
   1edc0:	fce45ee3          	bge	s0,a4,1ed9c <_svfiprintf_r+0xb38>
   1edc4:	04010613          	addi	a2,sp,64
   1edc8:	000a0593          	mv	a1,s4
   1edcc:	000b0513          	mv	a0,s6
   1edd0:	ad8ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1edd4:	f4051c63          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1edd8:	ff0c8c93          	addi	s9,s9,-16
   1eddc:	04812783          	lw	a5,72(sp)
   1ede0:	04412703          	lw	a4,68(sp)
   1ede4:	000a8693          	mv	a3,s5
   1ede8:	fb9dcee3          	blt	s11,s9,1eda4 <_svfiprintf_r+0xb40>
   1edec:	019787b3          	add	a5,a5,s9
   1edf0:	00170713          	addi	a4,a4,1
   1edf4:	0176a023          	sw	s7,0(a3)
   1edf8:	0196a223          	sw	s9,4(a3)
   1edfc:	04f12423          	sw	a5,72(sp)
   1ee00:	04e12223          	sw	a4,68(sp)
   1ee04:	00700693          	li	a3,7
   1ee08:	eee6d863          	bge	a3,a4,1e4f8 <_svfiprintf_r+0x294>
   1ee0c:	04010613          	addi	a2,sp,64
   1ee10:	000a0593          	mv	a1,s4
   1ee14:	000b0513          	mv	a0,s6
   1ee18:	a90ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1ee1c:	f0051863          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1ee20:	04812783          	lw	a5,72(sp)
   1ee24:	ed4ff06f          	j	1e4f8 <_svfiprintf_r+0x294>
   1ee28:	88089ae3          	bnez	a7,1e6bc <_svfiprintf_r+0x458>
   1ee2c:	000d8913          	mv	s2,s11
   1ee30:	00000893          	li	a7,0
   1ee34:	00000c93          	li	s9,0
   1ee38:	0f010413          	addi	s0,sp,240
   1ee3c:	895ff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1ee40:	00c12703          	lw	a4,12(sp)
   1ee44:	01097793          	andi	a5,s2,16
   1ee48:	00470693          	addi	a3,a4,4
   1ee4c:	18079263          	bnez	a5,1efd0 <_svfiprintf_r+0xd6c>
   1ee50:	04097793          	andi	a5,s2,64
   1ee54:	36078e63          	beqz	a5,1f1d0 <_svfiprintf_r+0xf6c>
   1ee58:	00c12783          	lw	a5,12(sp)
   1ee5c:	00000c13          	li	s8,0
   1ee60:	00d12623          	sw	a3,12(sp)
   1ee64:	0007dc83          	lhu	s9,0(a5)
   1ee68:	8b1ff06f          	j	1e718 <_svfiprintf_r+0x4b4>
   1ee6c:	00c12703          	lw	a4,12(sp)
   1ee70:	010df793          	andi	a5,s11,16
   1ee74:	00470693          	addi	a3,a4,4
   1ee78:	10079a63          	bnez	a5,1ef8c <_svfiprintf_r+0xd28>
   1ee7c:	040df793          	andi	a5,s11,64
   1ee80:	38078663          	beqz	a5,1f20c <_svfiprintf_r+0xfa8>
   1ee84:	00c12783          	lw	a5,12(sp)
   1ee88:	00000c13          	li	s8,0
   1ee8c:	00d12623          	sw	a3,12(sp)
   1ee90:	0007dc83          	lhu	s9,0(a5)
   1ee94:	00100693          	li	a3,1
   1ee98:	889ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1ee9c:	04010613          	addi	a2,sp,64
   1eea0:	000a0593          	mv	a1,s4
   1eea4:	000b0513          	mv	a0,s6
   1eea8:	a00ff0ef          	jal	ra,1e0a8 <__ssprint_r>
   1eeac:	e8051063          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1eeb0:	04412583          	lw	a1,68(sp)
   1eeb4:	04812783          	lw	a5,72(sp)
   1eeb8:	05410693          	addi	a3,sp,84
   1eebc:	00158593          	addi	a1,a1,1
   1eec0:	000a8d13          	mv	s10,s5
   1eec4:	e04ff06f          	j	1e4c8 <_svfiprintf_r+0x264>
   1eec8:	400df793          	andi	a5,s11,1024
   1eecc:	03412423          	sw	s4,40(sp)
   1eed0:	03312623          	sw	s3,44(sp)
   1eed4:	000c0a13          	mv	s4,s8
   1eed8:	000c8993          	mv	s3,s9
   1eedc:	00000913          	li	s2,0
   1eee0:	01812c83          	lw	s9,24(sp)
   1eee4:	0f010413          	addi	s0,sp,240
   1eee8:	03112223          	sw	a7,36(sp)
   1eeec:	00078c13          	mv	s8,a5
   1eef0:	0240006f          	j	1ef14 <_svfiprintf_r+0xcb0>
   1eef4:	00a00613          	li	a2,10
   1eef8:	00000693          	li	a3,0
   1eefc:	00098513          	mv	a0,s3
   1ef00:	000a0593          	mv	a1,s4
   1ef04:	271000ef          	jal	ra,1f974 <__udivdi3>
   1ef08:	320a0663          	beqz	s4,1f234 <_svfiprintf_r+0xfd0>
   1ef0c:	00050993          	mv	s3,a0
   1ef10:	00058a13          	mv	s4,a1
   1ef14:	00a00613          	li	a2,10
   1ef18:	00000693          	li	a3,0
   1ef1c:	00098513          	mv	a0,s3
   1ef20:	000a0593          	mv	a1,s4
   1ef24:	028010ef          	jal	ra,1ff4c <__umoddi3>
   1ef28:	03050513          	addi	a0,a0,48
   1ef2c:	fea40fa3          	sb	a0,-1(s0)
   1ef30:	00190913          	addi	s2,s2,1
   1ef34:	fff40413          	addi	s0,s0,-1
   1ef38:	fa0c0ee3          	beqz	s8,1eef4 <_svfiprintf_r+0xc90>
   1ef3c:	000cc683          	lbu	a3,0(s9)
   1ef40:	fb269ae3          	bne	a3,s2,1eef4 <_svfiprintf_r+0xc90>
   1ef44:	0ff00793          	li	a5,255
   1ef48:	faf906e3          	beq	s2,a5,1eef4 <_svfiprintf_r+0xc90>
   1ef4c:	160a1c63          	bnez	s4,1f0c4 <_svfiprintf_r+0xe60>
   1ef50:	00900793          	li	a5,9
   1ef54:	1737e863          	bltu	a5,s3,1f0c4 <_svfiprintf_r+0xe60>
   1ef58:	0f010793          	addi	a5,sp,240
   1ef5c:	01912c23          	sw	s9,24(sp)
   1ef60:	02412883          	lw	a7,36(sp)
   1ef64:	02812a03          	lw	s4,40(sp)
   1ef68:	02c12983          	lw	s3,44(sp)
   1ef6c:	40878cb3          	sub	s9,a5,s0
   1ef70:	000d8913          	mv	s2,s11
   1ef74:	f5cff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1ef78:	00812703          	lw	a4,8(sp)
   1ef7c:	41f75793          	srai	a5,a4,0x1f
   1ef80:	00e6a023          	sw	a4,0(a3)
   1ef84:	00f6a223          	sw	a5,4(a3)
   1ef88:	b80ff06f          	j	1e308 <_svfiprintf_r+0xa4>
   1ef8c:	00d12623          	sw	a3,12(sp)
   1ef90:	00072c83          	lw	s9,0(a4)
   1ef94:	00000c13          	li	s8,0
   1ef98:	00100693          	li	a3,1
   1ef9c:	f84ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1efa0:	01812783          	lw	a5,24(sp)
   1efa4:	0009c683          	lbu	a3,0(s3)
   1efa8:	be078863          	beqz	a5,1e398 <_svfiprintf_r+0x134>
   1efac:	0007c783          	lbu	a5,0(a5)
   1efb0:	be078463          	beqz	a5,1e398 <_svfiprintf_r+0x134>
   1efb4:	40096913          	ori	s2,s2,1024
   1efb8:	be0ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1efbc:	00072c83          	lw	s9,0(a4)
   1efc0:	00d12623          	sw	a3,12(sp)
   1efc4:	41fcdc13          	srai	s8,s9,0x1f
   1efc8:	000c0693          	mv	a3,s8
   1efcc:	ec8ff06f          	j	1e694 <_svfiprintf_r+0x430>
   1efd0:	00072c83          	lw	s9,0(a4)
   1efd4:	00000c13          	li	s8,0
   1efd8:	00d12623          	sw	a3,12(sp)
   1efdc:	f3cff06f          	j	1e718 <_svfiprintf_r+0x4b4>
   1efe0:	000257b7          	lui	a5,0x25
   1efe4:	82878793          	addi	a5,a5,-2008 # 24828 <__clzsi2+0x8c>
   1efe8:	00f12a23          	sw	a5,20(sp)
   1efec:	02097793          	andi	a5,s2,32
   1eff0:	00040893          	mv	a7,s0
   1eff4:	06078c63          	beqz	a5,1f06c <_svfiprintf_r+0xe08>
   1eff8:	00c12783          	lw	a5,12(sp)
   1effc:	00778793          	addi	a5,a5,7
   1f000:	ff87f793          	andi	a5,a5,-8
   1f004:	0007ac83          	lw	s9,0(a5)
   1f008:	0047ac03          	lw	s8,4(a5)
   1f00c:	00878793          	addi	a5,a5,8
   1f010:	00f12623          	sw	a5,12(sp)
   1f014:	00197613          	andi	a2,s2,1
   1f018:	00060e63          	beqz	a2,1f034 <_svfiprintf_r+0xdd0>
   1f01c:	018ce633          	or	a2,s9,s8
   1f020:	00060a63          	beqz	a2,1f034 <_svfiprintf_r+0xdd0>
   1f024:	03000613          	li	a2,48
   1f028:	02c10e23          	sb	a2,60(sp)
   1f02c:	02d10ea3          	sb	a3,61(sp)
   1f030:	00296913          	ori	s2,s2,2
   1f034:	bff97d93          	andi	s11,s2,-1025
   1f038:	00200693          	li	a3,2
   1f03c:	ee4ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1f040:	00040893          	mv	a7,s0
   1f044:	00090d93          	mv	s11,s2
   1f048:	ff0ff06f          	j	1e838 <_svfiprintf_r+0x5d4>
   1f04c:	00040893          	mv	a7,s0
   1f050:	ea4ff06f          	j	1e6f4 <_svfiprintf_r+0x490>
   1f054:	000257b7          	lui	a5,0x25
   1f058:	81478793          	addi	a5,a5,-2028 # 24814 <__clzsi2+0x78>
   1f05c:	00f12a23          	sw	a5,20(sp)
   1f060:	02097793          	andi	a5,s2,32
   1f064:	00040893          	mv	a7,s0
   1f068:	f80798e3          	bnez	a5,1eff8 <_svfiprintf_r+0xd94>
   1f06c:	00c12703          	lw	a4,12(sp)
   1f070:	01097793          	andi	a5,s2,16
   1f074:	00470613          	addi	a2,a4,4
   1f078:	08078a63          	beqz	a5,1f10c <_svfiprintf_r+0xea8>
   1f07c:	00072c83          	lw	s9,0(a4)
   1f080:	00000c13          	li	s8,0
   1f084:	00c12623          	sw	a2,12(sp)
   1f088:	f8dff06f          	j	1f014 <_svfiprintf_r+0xdb0>
   1f08c:	00040513          	mv	a0,s0
   1f090:	c28f10ef          	jal	ra,104b8 <strlen>
   1f094:	00050c93          	mv	s9,a0
   1f098:	01b12623          	sw	s11,12(sp)
   1f09c:	00000893          	li	a7,0
   1f0a0:	e30ff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1f0a4:	04000593          	li	a1,64
   1f0a8:	95cf80ef          	jal	ra,17204 <_malloc_r>
   1f0ac:	00aa2023          	sw	a0,0(s4)
   1f0b0:	00aa2823          	sw	a0,16(s4)
   1f0b4:	24050c63          	beqz	a0,1f30c <_svfiprintf_r+0x10a8>
   1f0b8:	04000793          	li	a5,64
   1f0bc:	00fa2a23          	sw	a5,20(s4)
   1f0c0:	a00ff06f          	j	1e2c0 <_svfiprintf_r+0x5c>
   1f0c4:	02012783          	lw	a5,32(sp)
   1f0c8:	01c12583          	lw	a1,28(sp)
   1f0cc:	00000913          	li	s2,0
   1f0d0:	40f40433          	sub	s0,s0,a5
   1f0d4:	00078613          	mv	a2,a5
   1f0d8:	00040513          	mv	a0,s0
   1f0dc:	e58fa0ef          	jal	ra,19734 <strncpy>
   1f0e0:	001cc583          	lbu	a1,1(s9)
   1f0e4:	00a00613          	li	a2,10
   1f0e8:	00000693          	li	a3,0
   1f0ec:	00b03833          	snez	a6,a1
   1f0f0:	00098513          	mv	a0,s3
   1f0f4:	000a0593          	mv	a1,s4
   1f0f8:	010c8cb3          	add	s9,s9,a6
   1f0fc:	079000ef          	jal	ra,1f974 <__udivdi3>
   1f100:	e0dff06f          	j	1ef0c <_svfiprintf_r+0xca8>
   1f104:	00090a13          	mv	s4,s2
   1f108:	c24ff06f          	j	1e52c <_svfiprintf_r+0x2c8>
   1f10c:	04097793          	andi	a5,s2,64
   1f110:	0a078263          	beqz	a5,1f1b4 <_svfiprintf_r+0xf50>
   1f114:	00c12783          	lw	a5,12(sp)
   1f118:	00000c13          	li	s8,0
   1f11c:	00c12623          	sw	a2,12(sp)
   1f120:	0007dc83          	lhu	s9,0(a5)
   1f124:	ef1ff06f          	j	1f014 <_svfiprintf_r+0xdb0>
   1f128:	04010613          	addi	a2,sp,64
   1f12c:	000a0593          	mv	a1,s4
   1f130:	000b0513          	mv	a0,s6
   1f134:	03112223          	sw	a7,36(sp)
   1f138:	f71fe0ef          	jal	ra,1e0a8 <__ssprint_r>
   1f13c:	be051863          	bnez	a0,1e52c <_svfiprintf_r+0x2c8>
   1f140:	04412603          	lw	a2,68(sp)
   1f144:	04812783          	lw	a5,72(sp)
   1f148:	02412883          	lw	a7,36(sp)
   1f14c:	05410693          	addi	a3,sp,84
   1f150:	00160593          	addi	a1,a2,1
   1f154:	000a8d13          	mv	s10,s5
   1f158:	b68ff06f          	j	1e4c0 <_svfiprintf_r+0x25c>
   1f15c:	0019c683          	lbu	a3,1(s3)
   1f160:	20096913          	ori	s2,s2,512
   1f164:	00198993          	addi	s3,s3,1
   1f168:	a30ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1f16c:	0019c683          	lbu	a3,1(s3)
   1f170:	02096913          	ori	s2,s2,32
   1f174:	00198993          	addi	s3,s3,1
   1f178:	a20ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1f17c:	00040a13          	mv	s4,s0
   1f180:	bacff06f          	j	1e52c <_svfiprintf_r+0x2c8>
   1f184:	00812783          	lw	a5,8(sp)
   1f188:	00f6a023          	sw	a5,0(a3)
   1f18c:	97cff06f          	j	1e308 <_svfiprintf_r+0xa4>
   1f190:	00600793          	li	a5,6
   1f194:	00088c93          	mv	s9,a7
   1f198:	0117f463          	bgeu	a5,a7,1f1a0 <_svfiprintf_r+0xf3c>
   1f19c:	00600c93          	li	s9,6
   1f1a0:	00025e37          	lui	t3,0x25
   1f1a4:	000c8c13          	mv	s8,s9
   1f1a8:	01b12623          	sw	s11,12(sp)
   1f1ac:	83ce0413          	addi	s0,t3,-1988 # 2483c <__clzsi2+0xa0>
   1f1b0:	a58ff06f          	j	1e408 <_svfiprintf_r+0x1a4>
   1f1b4:	20097793          	andi	a5,s2,512
   1f1b8:	0c078663          	beqz	a5,1f284 <_svfiprintf_r+0x1020>
   1f1bc:	00c12783          	lw	a5,12(sp)
   1f1c0:	00000c13          	li	s8,0
   1f1c4:	00c12623          	sw	a2,12(sp)
   1f1c8:	0007cc83          	lbu	s9,0(a5)
   1f1cc:	e49ff06f          	j	1f014 <_svfiprintf_r+0xdb0>
   1f1d0:	20097793          	andi	a5,s2,512
   1f1d4:	08078e63          	beqz	a5,1f270 <_svfiprintf_r+0x100c>
   1f1d8:	00c12783          	lw	a5,12(sp)
   1f1dc:	00000c13          	li	s8,0
   1f1e0:	00d12623          	sw	a3,12(sp)
   1f1e4:	0007cc83          	lbu	s9,0(a5)
   1f1e8:	d30ff06f          	j	1e718 <_svfiprintf_r+0x4b4>
   1f1ec:	20097793          	andi	a5,s2,512
   1f1f0:	06078463          	beqz	a5,1f258 <_svfiprintf_r+0xff4>
   1f1f4:	00c12783          	lw	a5,12(sp)
   1f1f8:	00d12623          	sw	a3,12(sp)
   1f1fc:	00078c83          	lb	s9,0(a5)
   1f200:	41fcdc13          	srai	s8,s9,0x1f
   1f204:	000c0693          	mv	a3,s8
   1f208:	c8cff06f          	j	1e694 <_svfiprintf_r+0x430>
   1f20c:	200df793          	andi	a5,s11,512
   1f210:	02078863          	beqz	a5,1f240 <_svfiprintf_r+0xfdc>
   1f214:	00c12783          	lw	a5,12(sp)
   1f218:	00000c13          	li	s8,0
   1f21c:	00d12623          	sw	a3,12(sp)
   1f220:	0007cc83          	lbu	s9,0(a5)
   1f224:	00100693          	li	a3,1
   1f228:	cf8ff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1f22c:	00068613          	mv	a2,a3
   1f230:	931ff06f          	j	1eb60 <_svfiprintf_r+0x8fc>
   1f234:	00900793          	li	a5,9
   1f238:	cd37eae3          	bltu	a5,s3,1ef0c <_svfiprintf_r+0xca8>
   1f23c:	d1dff06f          	j	1ef58 <_svfiprintf_r+0xcf4>
   1f240:	00c12783          	lw	a5,12(sp)
   1f244:	00000c13          	li	s8,0
   1f248:	00d12623          	sw	a3,12(sp)
   1f24c:	0007ac83          	lw	s9,0(a5)
   1f250:	00100693          	li	a3,1
   1f254:	cccff06f          	j	1e720 <_svfiprintf_r+0x4bc>
   1f258:	00c12783          	lw	a5,12(sp)
   1f25c:	00d12623          	sw	a3,12(sp)
   1f260:	0007ac83          	lw	s9,0(a5)
   1f264:	41fcdc13          	srai	s8,s9,0x1f
   1f268:	000c0693          	mv	a3,s8
   1f26c:	c28ff06f          	j	1e694 <_svfiprintf_r+0x430>
   1f270:	00c12783          	lw	a5,12(sp)
   1f274:	00000c13          	li	s8,0
   1f278:	00d12623          	sw	a3,12(sp)
   1f27c:	0007ac83          	lw	s9,0(a5)
   1f280:	c98ff06f          	j	1e718 <_svfiprintf_r+0x4b4>
   1f284:	00c12783          	lw	a5,12(sp)
   1f288:	00000c13          	li	s8,0
   1f28c:	00c12623          	sw	a2,12(sp)
   1f290:	0007ac83          	lw	s9,0(a5)
   1f294:	d81ff06f          	j	1f014 <_svfiprintf_r+0xdb0>
   1f298:	00812783          	lw	a5,8(sp)
   1f29c:	00f69023          	sh	a5,0(a3)
   1f2a0:	868ff06f          	j	1e308 <_svfiprintf_r+0xa4>
   1f2a4:	04010613          	addi	a2,sp,64
   1f2a8:	000a0593          	mv	a1,s4
   1f2ac:	000b0513          	mv	a0,s6
   1f2b0:	df9fe0ef          	jal	ra,1e0a8 <__ssprint_r>
   1f2b4:	a78ff06f          	j	1e52c <_svfiprintf_r+0x2c8>
   1f2b8:	00088c93          	mv	s9,a7
   1f2bc:	01b12623          	sw	s11,12(sp)
   1f2c0:	00000893          	li	a7,0
   1f2c4:	c0cff06f          	j	1e6d0 <_svfiprintf_r+0x46c>
   1f2c8:	00090d93          	mv	s11,s2
   1f2cc:	bf0ff06f          	j	1e6bc <_svfiprintf_r+0x458>
   1f2d0:	00068513          	mv	a0,a3
   1f2d4:	00058613          	mv	a2,a1
   1f2d8:	fe4ff06f          	j	1eabc <_svfiprintf_r+0x858>
   1f2dc:	fff00793          	li	a5,-1
   1f2e0:	00f12423          	sw	a5,8(sp)
   1f2e4:	a54ff06f          	j	1e538 <_svfiprintf_r+0x2d4>
   1f2e8:	00c12783          	lw	a5,12(sp)
   1f2ec:	0007a403          	lw	s0,0(a5)
   1f2f0:	00478793          	addi	a5,a5,4
   1f2f4:	00045463          	bgez	s0,1f2fc <_svfiprintf_r+0x1098>
   1f2f8:	fff00413          	li	s0,-1
   1f2fc:	0019c683          	lbu	a3,1(s3)
   1f300:	00f12623          	sw	a5,12(sp)
   1f304:	00070993          	mv	s3,a4
   1f308:	890ff06f          	j	1e398 <_svfiprintf_r+0x134>
   1f30c:	00c00793          	li	a5,12
   1f310:	00fb2023          	sw	a5,0(s6)
   1f314:	fff00793          	li	a5,-1
   1f318:	00f12423          	sw	a5,8(sp)
   1f31c:	a1cff06f          	j	1e538 <_svfiprintf_r+0x2d4>

0001f320 <__swbuf_r>:
   1f320:	fe010113          	addi	sp,sp,-32
   1f324:	00812c23          	sw	s0,24(sp)
   1f328:	00912a23          	sw	s1,20(sp)
   1f32c:	01212823          	sw	s2,16(sp)
   1f330:	00112e23          	sw	ra,28(sp)
   1f334:	01312623          	sw	s3,12(sp)
   1f338:	00050913          	mv	s2,a0
   1f33c:	00058493          	mv	s1,a1
   1f340:	00060413          	mv	s0,a2
   1f344:	00050663          	beqz	a0,1f350 <__swbuf_r+0x30>
   1f348:	03852783          	lw	a5,56(a0)
   1f34c:	14078863          	beqz	a5,1f49c <__swbuf_r+0x17c>
   1f350:	00c41703          	lh	a4,12(s0)
   1f354:	01842683          	lw	a3,24(s0)
   1f358:	00877793          	andi	a5,a4,8
   1f35c:	00d42423          	sw	a3,8(s0)
   1f360:	01071693          	slli	a3,a4,0x10
   1f364:	0106d693          	srli	a3,a3,0x10
   1f368:	08078263          	beqz	a5,1f3ec <__swbuf_r+0xcc>
   1f36c:	01042783          	lw	a5,16(s0)
   1f370:	06078e63          	beqz	a5,1f3ec <__swbuf_r+0xcc>
   1f374:	01269613          	slli	a2,a3,0x12
   1f378:	0ff4f993          	andi	s3,s1,255
   1f37c:	0ff4f493          	andi	s1,s1,255
   1f380:	08065e63          	bgez	a2,1f41c <__swbuf_r+0xfc>
   1f384:	00042703          	lw	a4,0(s0)
   1f388:	01442683          	lw	a3,20(s0)
   1f38c:	40f707b3          	sub	a5,a4,a5
   1f390:	0ad7de63          	bge	a5,a3,1f44c <__swbuf_r+0x12c>
   1f394:	00842683          	lw	a3,8(s0)
   1f398:	00170613          	addi	a2,a4,1
   1f39c:	00c42023          	sw	a2,0(s0)
   1f3a0:	fff68693          	addi	a3,a3,-1
   1f3a4:	00d42423          	sw	a3,8(s0)
   1f3a8:	01370023          	sb	s3,0(a4)
   1f3ac:	01442703          	lw	a4,20(s0)
   1f3b0:	00178793          	addi	a5,a5,1
   1f3b4:	0cf70863          	beq	a4,a5,1f484 <__swbuf_r+0x164>
   1f3b8:	00c45783          	lhu	a5,12(s0)
   1f3bc:	0017f793          	andi	a5,a5,1
   1f3c0:	00078663          	beqz	a5,1f3cc <__swbuf_r+0xac>
   1f3c4:	00a00793          	li	a5,10
   1f3c8:	0af48e63          	beq	s1,a5,1f484 <__swbuf_r+0x164>
   1f3cc:	01c12083          	lw	ra,28(sp)
   1f3d0:	01812403          	lw	s0,24(sp)
   1f3d4:	01012903          	lw	s2,16(sp)
   1f3d8:	00c12983          	lw	s3,12(sp)
   1f3dc:	00048513          	mv	a0,s1
   1f3e0:	01412483          	lw	s1,20(sp)
   1f3e4:	02010113          	addi	sp,sp,32
   1f3e8:	00008067          	ret
   1f3ec:	00040593          	mv	a1,s0
   1f3f0:	00090513          	mv	a0,s2
   1f3f4:	ce1f30ef          	jal	ra,130d4 <__swsetup_r>
   1f3f8:	08051e63          	bnez	a0,1f494 <__swbuf_r+0x174>
   1f3fc:	00c41703          	lh	a4,12(s0)
   1f400:	0ff4f993          	andi	s3,s1,255
   1f404:	01042783          	lw	a5,16(s0)
   1f408:	01071693          	slli	a3,a4,0x10
   1f40c:	0106d693          	srli	a3,a3,0x10
   1f410:	01269613          	slli	a2,a3,0x12
   1f414:	0ff4f493          	andi	s1,s1,255
   1f418:	f60646e3          	bltz	a2,1f384 <__swbuf_r+0x64>
   1f41c:	06442683          	lw	a3,100(s0)
   1f420:	00002637          	lui	a2,0x2
   1f424:	00c76733          	or	a4,a4,a2
   1f428:	ffffe637          	lui	a2,0xffffe
   1f42c:	fff60613          	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffd702f>
   1f430:	00c6f6b3          	and	a3,a3,a2
   1f434:	00e41623          	sh	a4,12(s0)
   1f438:	00042703          	lw	a4,0(s0)
   1f43c:	06d42223          	sw	a3,100(s0)
   1f440:	01442683          	lw	a3,20(s0)
   1f444:	40f707b3          	sub	a5,a4,a5
   1f448:	f4d7c6e3          	blt	a5,a3,1f394 <__swbuf_r+0x74>
   1f44c:	00040593          	mv	a1,s0
   1f450:	00090513          	mv	a0,s2
   1f454:	96cf40ef          	jal	ra,135c0 <_fflush_r>
   1f458:	02051e63          	bnez	a0,1f494 <__swbuf_r+0x174>
   1f45c:	00042703          	lw	a4,0(s0)
   1f460:	00842683          	lw	a3,8(s0)
   1f464:	00100793          	li	a5,1
   1f468:	00170613          	addi	a2,a4,1
   1f46c:	fff68693          	addi	a3,a3,-1
   1f470:	00c42023          	sw	a2,0(s0)
   1f474:	00d42423          	sw	a3,8(s0)
   1f478:	01370023          	sb	s3,0(a4)
   1f47c:	01442703          	lw	a4,20(s0)
   1f480:	f2f71ce3          	bne	a4,a5,1f3b8 <__swbuf_r+0x98>
   1f484:	00040593          	mv	a1,s0
   1f488:	00090513          	mv	a0,s2
   1f48c:	934f40ef          	jal	ra,135c0 <_fflush_r>
   1f490:	f2050ee3          	beqz	a0,1f3cc <__swbuf_r+0xac>
   1f494:	fff00493          	li	s1,-1
   1f498:	f35ff06f          	j	1f3cc <__swbuf_r+0xac>
   1f49c:	cccf40ef          	jal	ra,13968 <__sinit>
   1f4a0:	eb1ff06f          	j	1f350 <__swbuf_r+0x30>

0001f4a4 <__swbuf>:
   1f4a4:	00050793          	mv	a5,a0
   1f4a8:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1f4ac:	00058613          	mv	a2,a1
   1f4b0:	00078593          	mv	a1,a5
   1f4b4:	e6dff06f          	j	1f320 <__swbuf_r>

0001f4b8 <_wcrtomb_r>:
   1f4b8:	fe010113          	addi	sp,sp,-32
   1f4bc:	00812c23          	sw	s0,24(sp)
   1f4c0:	00912a23          	sw	s1,20(sp)
   1f4c4:	00112e23          	sw	ra,28(sp)
   1f4c8:	1101a783          	lw	a5,272(gp) # 26eb8 <__global_locale+0xe0>
   1f4cc:	00050413          	mv	s0,a0
   1f4d0:	00068493          	mv	s1,a3
   1f4d4:	02058263          	beqz	a1,1f4f8 <_wcrtomb_r+0x40>
   1f4d8:	000780e7          	jalr	a5
   1f4dc:	fff00793          	li	a5,-1
   1f4e0:	02f50663          	beq	a0,a5,1f50c <_wcrtomb_r+0x54>
   1f4e4:	01c12083          	lw	ra,28(sp)
   1f4e8:	01812403          	lw	s0,24(sp)
   1f4ec:	01412483          	lw	s1,20(sp)
   1f4f0:	02010113          	addi	sp,sp,32
   1f4f4:	00008067          	ret
   1f4f8:	00000613          	li	a2,0
   1f4fc:	00410593          	addi	a1,sp,4
   1f500:	000780e7          	jalr	a5
   1f504:	fff00793          	li	a5,-1
   1f508:	fcf51ee3          	bne	a0,a5,1f4e4 <_wcrtomb_r+0x2c>
   1f50c:	0004a023          	sw	zero,0(s1)
   1f510:	08a00793          	li	a5,138
   1f514:	01c12083          	lw	ra,28(sp)
   1f518:	00f42023          	sw	a5,0(s0)
   1f51c:	01812403          	lw	s0,24(sp)
   1f520:	01412483          	lw	s1,20(sp)
   1f524:	02010113          	addi	sp,sp,32
   1f528:	00008067          	ret

0001f52c <wcrtomb>:
   1f52c:	fe010113          	addi	sp,sp,-32
   1f530:	00812c23          	sw	s0,24(sp)
   1f534:	00912a23          	sw	s1,20(sp)
   1f538:	00112e23          	sw	ra,28(sp)
   1f53c:	1c01a483          	lw	s1,448(gp) # 26f68 <_impure_ptr>
   1f540:	1101a783          	lw	a5,272(gp) # 26eb8 <__global_locale+0xe0>
   1f544:	00060413          	mv	s0,a2
   1f548:	02050a63          	beqz	a0,1f57c <wcrtomb+0x50>
   1f54c:	00058613          	mv	a2,a1
   1f550:	00040693          	mv	a3,s0
   1f554:	00050593          	mv	a1,a0
   1f558:	00048513          	mv	a0,s1
   1f55c:	000780e7          	jalr	a5
   1f560:	fff00793          	li	a5,-1
   1f564:	02f50a63          	beq	a0,a5,1f598 <wcrtomb+0x6c>
   1f568:	01c12083          	lw	ra,28(sp)
   1f56c:	01812403          	lw	s0,24(sp)
   1f570:	01412483          	lw	s1,20(sp)
   1f574:	02010113          	addi	sp,sp,32
   1f578:	00008067          	ret
   1f57c:	00060693          	mv	a3,a2
   1f580:	00410593          	addi	a1,sp,4
   1f584:	00000613          	li	a2,0
   1f588:	00048513          	mv	a0,s1
   1f58c:	000780e7          	jalr	a5
   1f590:	fff00793          	li	a5,-1
   1f594:	fcf51ae3          	bne	a0,a5,1f568 <wcrtomb+0x3c>
   1f598:	00042023          	sw	zero,0(s0)
   1f59c:	01c12083          	lw	ra,28(sp)
   1f5a0:	01812403          	lw	s0,24(sp)
   1f5a4:	08a00793          	li	a5,138
   1f5a8:	00f4a023          	sw	a5,0(s1)
   1f5ac:	01412483          	lw	s1,20(sp)
   1f5b0:	02010113          	addi	sp,sp,32
   1f5b4:	00008067          	ret

0001f5b8 <_wctomb_r>:
   1f5b8:	1101a303          	lw	t1,272(gp) # 26eb8 <__global_locale+0xe0>
   1f5bc:	00030067          	jr	t1

0001f5c0 <__ascii_wctomb>:
   1f5c0:	02058463          	beqz	a1,1f5e8 <__ascii_wctomb+0x28>
   1f5c4:	0ff00793          	li	a5,255
   1f5c8:	00c7e863          	bltu	a5,a2,1f5d8 <__ascii_wctomb+0x18>
   1f5cc:	00c58023          	sb	a2,0(a1)
   1f5d0:	00100513          	li	a0,1
   1f5d4:	00008067          	ret
   1f5d8:	08a00793          	li	a5,138
   1f5dc:	00f52023          	sw	a5,0(a0)
   1f5e0:	fff00513          	li	a0,-1
   1f5e4:	00008067          	ret
   1f5e8:	00000513          	li	a0,0
   1f5ec:	00008067          	ret

0001f5f0 <_close>:
   1f5f0:	ff010113          	addi	sp,sp,-16
   1f5f4:	00112623          	sw	ra,12(sp)
   1f5f8:	00812423          	sw	s0,8(sp)
   1f5fc:	00000593          	li	a1,0
   1f600:	00000613          	li	a2,0
   1f604:	00000693          	li	a3,0
   1f608:	00000713          	li	a4,0
   1f60c:	00000793          	li	a5,0
   1f610:	03900893          	li	a7,57
   1f614:	00000073          	ecall
   1f618:	00050413          	mv	s0,a0
   1f61c:	00054c63          	bltz	a0,1f634 <_close+0x44>
   1f620:	00c12083          	lw	ra,12(sp)
   1f624:	00040513          	mv	a0,s0
   1f628:	00812403          	lw	s0,8(sp)
   1f62c:	01010113          	addi	sp,sp,16
   1f630:	00008067          	ret
   1f634:	40800433          	neg	s0,s0
   1f638:	334000ef          	jal	ra,1f96c <__errno>
   1f63c:	00852023          	sw	s0,0(a0)
   1f640:	fff00413          	li	s0,-1
   1f644:	fddff06f          	j	1f620 <_close+0x30>

0001f648 <_exit>:
   1f648:	00000593          	li	a1,0
   1f64c:	00000613          	li	a2,0
   1f650:	00000693          	li	a3,0
   1f654:	00000713          	li	a4,0
   1f658:	00000793          	li	a5,0
   1f65c:	05d00893          	li	a7,93
   1f660:	00000073          	ecall
   1f664:	00054463          	bltz	a0,1f66c <_exit+0x24>
   1f668:	0000006f          	j	1f668 <_exit+0x20>
   1f66c:	ff010113          	addi	sp,sp,-16
   1f670:	00812423          	sw	s0,8(sp)
   1f674:	00050413          	mv	s0,a0
   1f678:	00112623          	sw	ra,12(sp)
   1f67c:	40800433          	neg	s0,s0
   1f680:	2ec000ef          	jal	ra,1f96c <__errno>
   1f684:	00852023          	sw	s0,0(a0)
   1f688:	0000006f          	j	1f688 <_exit+0x40>

0001f68c <_fstat>:
   1f68c:	f7010113          	addi	sp,sp,-144
   1f690:	08912223          	sw	s1,132(sp)
   1f694:	08112623          	sw	ra,140(sp)
   1f698:	00058493          	mv	s1,a1
   1f69c:	08812423          	sw	s0,136(sp)
   1f6a0:	00010593          	mv	a1,sp
   1f6a4:	00000613          	li	a2,0
   1f6a8:	00000693          	li	a3,0
   1f6ac:	00000713          	li	a4,0
   1f6b0:	00000793          	li	a5,0
   1f6b4:	05000893          	li	a7,80
   1f6b8:	00000073          	ecall
   1f6bc:	00050413          	mv	s0,a0
   1f6c0:	02054463          	bltz	a0,1f6e8 <_fstat+0x5c>
   1f6c4:	00048513          	mv	a0,s1
   1f6c8:	00010593          	mv	a1,sp
   1f6cc:	1fc000ef          	jal	ra,1f8c8 <_conv_stat>
   1f6d0:	08c12083          	lw	ra,140(sp)
   1f6d4:	00040513          	mv	a0,s0
   1f6d8:	08812403          	lw	s0,136(sp)
   1f6dc:	08412483          	lw	s1,132(sp)
   1f6e0:	09010113          	addi	sp,sp,144
   1f6e4:	00008067          	ret
   1f6e8:	40800433          	neg	s0,s0
   1f6ec:	280000ef          	jal	ra,1f96c <__errno>
   1f6f0:	00852023          	sw	s0,0(a0)
   1f6f4:	fff00413          	li	s0,-1
   1f6f8:	fcdff06f          	j	1f6c4 <_fstat+0x38>

0001f6fc <_isatty>:
   1f6fc:	f9010113          	addi	sp,sp,-112
   1f700:	00810593          	addi	a1,sp,8
   1f704:	06112623          	sw	ra,108(sp)
   1f708:	f85ff0ef          	jal	ra,1f68c <_fstat>
   1f70c:	fff00793          	li	a5,-1
   1f710:	00f50e63          	beq	a0,a5,1f72c <_isatty+0x30>
   1f714:	00c12503          	lw	a0,12(sp)
   1f718:	06c12083          	lw	ra,108(sp)
   1f71c:	00d55513          	srli	a0,a0,0xd
   1f720:	00157513          	andi	a0,a0,1
   1f724:	07010113          	addi	sp,sp,112
   1f728:	00008067          	ret
   1f72c:	06c12083          	lw	ra,108(sp)
   1f730:	00000513          	li	a0,0
   1f734:	07010113          	addi	sp,sp,112
   1f738:	00008067          	ret

0001f73c <_lseek>:
   1f73c:	ff010113          	addi	sp,sp,-16
   1f740:	00112623          	sw	ra,12(sp)
   1f744:	00812423          	sw	s0,8(sp)
   1f748:	00000693          	li	a3,0
   1f74c:	00000713          	li	a4,0
   1f750:	00000793          	li	a5,0
   1f754:	03e00893          	li	a7,62
   1f758:	00000073          	ecall
   1f75c:	00050413          	mv	s0,a0
   1f760:	00054c63          	bltz	a0,1f778 <_lseek+0x3c>
   1f764:	00c12083          	lw	ra,12(sp)
   1f768:	00040513          	mv	a0,s0
   1f76c:	00812403          	lw	s0,8(sp)
   1f770:	01010113          	addi	sp,sp,16
   1f774:	00008067          	ret
   1f778:	40800433          	neg	s0,s0
   1f77c:	1f0000ef          	jal	ra,1f96c <__errno>
   1f780:	00852023          	sw	s0,0(a0)
   1f784:	fff00413          	li	s0,-1
   1f788:	fddff06f          	j	1f764 <_lseek+0x28>

0001f78c <_read>:
   1f78c:	ff010113          	addi	sp,sp,-16
   1f790:	00112623          	sw	ra,12(sp)
   1f794:	00812423          	sw	s0,8(sp)
   1f798:	00000693          	li	a3,0
   1f79c:	00000713          	li	a4,0
   1f7a0:	00000793          	li	a5,0
   1f7a4:	03f00893          	li	a7,63
   1f7a8:	00000073          	ecall
   1f7ac:	00050413          	mv	s0,a0
   1f7b0:	00054c63          	bltz	a0,1f7c8 <_read+0x3c>
   1f7b4:	00c12083          	lw	ra,12(sp)
   1f7b8:	00040513          	mv	a0,s0
   1f7bc:	00812403          	lw	s0,8(sp)
   1f7c0:	01010113          	addi	sp,sp,16
   1f7c4:	00008067          	ret
   1f7c8:	40800433          	neg	s0,s0
   1f7cc:	1a0000ef          	jal	ra,1f96c <__errno>
   1f7d0:	00852023          	sw	s0,0(a0)
   1f7d4:	fff00413          	li	s0,-1
   1f7d8:	fddff06f          	j	1f7b4 <_read+0x28>

0001f7dc <_sbrk>:
   1f7dc:	1dc1a783          	lw	a5,476(gp) # 26f84 <heap_end.1813>
   1f7e0:	ff010113          	addi	sp,sp,-16
   1f7e4:	00112623          	sw	ra,12(sp)
   1f7e8:	00050813          	mv	a6,a0
   1f7ec:	02079863          	bnez	a5,1f81c <_sbrk+0x40>
   1f7f0:	00000513          	li	a0,0
   1f7f4:	00000593          	li	a1,0
   1f7f8:	00000613          	li	a2,0
   1f7fc:	00000693          	li	a3,0
   1f800:	00000713          	li	a4,0
   1f804:	0d600893          	li	a7,214
   1f808:	00000073          	ecall
   1f80c:	fff00713          	li	a4,-1
   1f810:	00050793          	mv	a5,a0
   1f814:	04e50463          	beq	a0,a4,1f85c <_sbrk+0x80>
   1f818:	1ca1ae23          	sw	a0,476(gp) # 26f84 <heap_end.1813>
   1f81c:	00f80533          	add	a0,a6,a5
   1f820:	00000593          	li	a1,0
   1f824:	00000613          	li	a2,0
   1f828:	00000693          	li	a3,0
   1f82c:	00000713          	li	a4,0
   1f830:	00000793          	li	a5,0
   1f834:	0d600893          	li	a7,214
   1f838:	00000073          	ecall
   1f83c:	1dc1a783          	lw	a5,476(gp) # 26f84 <heap_end.1813>
   1f840:	00f80833          	add	a6,a6,a5
   1f844:	01051c63          	bne	a0,a6,1f85c <_sbrk+0x80>
   1f848:	00c12083          	lw	ra,12(sp)
   1f84c:	1ca1ae23          	sw	a0,476(gp) # 26f84 <heap_end.1813>
   1f850:	00078513          	mv	a0,a5
   1f854:	01010113          	addi	sp,sp,16
   1f858:	00008067          	ret
   1f85c:	110000ef          	jal	ra,1f96c <__errno>
   1f860:	00c12083          	lw	ra,12(sp)
   1f864:	00c00793          	li	a5,12
   1f868:	00f52023          	sw	a5,0(a0)
   1f86c:	fff00513          	li	a0,-1
   1f870:	01010113          	addi	sp,sp,16
   1f874:	00008067          	ret

0001f878 <_write>:
   1f878:	ff010113          	addi	sp,sp,-16
   1f87c:	00112623          	sw	ra,12(sp)
   1f880:	00812423          	sw	s0,8(sp)
   1f884:	00000693          	li	a3,0
   1f888:	00000713          	li	a4,0
   1f88c:	00000793          	li	a5,0
   1f890:	04000893          	li	a7,64
   1f894:	00000073          	ecall
   1f898:	00050413          	mv	s0,a0
   1f89c:	00054c63          	bltz	a0,1f8b4 <_write+0x3c>
   1f8a0:	00c12083          	lw	ra,12(sp)
   1f8a4:	00040513          	mv	a0,s0
   1f8a8:	00812403          	lw	s0,8(sp)
   1f8ac:	01010113          	addi	sp,sp,16
   1f8b0:	00008067          	ret
   1f8b4:	40800433          	neg	s0,s0
   1f8b8:	0b4000ef          	jal	ra,1f96c <__errno>
   1f8bc:	00852023          	sw	s0,0(a0)
   1f8c0:	fff00413          	li	s0,-1
   1f8c4:	fddff06f          	j	1f8a0 <_write+0x28>

0001f8c8 <_conv_stat>:
   1f8c8:	ff010113          	addi	sp,sp,-16
   1f8cc:	0145a383          	lw	t2,20(a1)
   1f8d0:	0185a283          	lw	t0,24(a1)
   1f8d4:	01c5af83          	lw	t6,28(a1)
   1f8d8:	0205af03          	lw	t5,32(a1)
   1f8dc:	0305ae83          	lw	t4,48(a1)
   1f8e0:	0405ae03          	lw	t3,64(a1)
   1f8e4:	0385a303          	lw	t1,56(a1)
   1f8e8:	0485a803          	lw	a6,72(a1)
   1f8ec:	04c5a883          	lw	a7,76(a1)
   1f8f0:	0585a603          	lw	a2,88(a1)
   1f8f4:	00812623          	sw	s0,12(sp)
   1f8f8:	00912423          	sw	s1,8(sp)
   1f8fc:	0105a403          	lw	s0,16(a1)
   1f900:	0085a483          	lw	s1,8(a1)
   1f904:	01212223          	sw	s2,4(sp)
   1f908:	0005a903          	lw	s2,0(a1)
   1f90c:	05c5a683          	lw	a3,92(a1)
   1f910:	0685a703          	lw	a4,104(a1)
   1f914:	06c5a783          	lw	a5,108(a1)
   1f918:	01251023          	sh	s2,0(a0)
   1f91c:	00951123          	sh	s1,2(a0)
   1f920:	00852223          	sw	s0,4(a0)
   1f924:	00751423          	sh	t2,8(a0)
   1f928:	00551523          	sh	t0,10(a0)
   1f92c:	01f51623          	sh	t6,12(a0)
   1f930:	01e51723          	sh	t5,14(a0)
   1f934:	01d52823          	sw	t4,16(a0)
   1f938:	05c52423          	sw	t3,72(a0)
   1f93c:	04652223          	sw	t1,68(a0)
   1f940:	01052c23          	sw	a6,24(a0)
   1f944:	01152e23          	sw	a7,28(a0)
   1f948:	02c52423          	sw	a2,40(a0)
   1f94c:	02d52623          	sw	a3,44(a0)
   1f950:	00c12403          	lw	s0,12(sp)
   1f954:	02e52c23          	sw	a4,56(a0)
   1f958:	02f52e23          	sw	a5,60(a0)
   1f95c:	00812483          	lw	s1,8(sp)
   1f960:	00412903          	lw	s2,4(sp)
   1f964:	01010113          	addi	sp,sp,16
   1f968:	00008067          	ret

0001f96c <__errno>:
   1f96c:	1c01a503          	lw	a0,448(gp) # 26f68 <_impure_ptr>
   1f970:	00008067          	ret

0001f974 <__udivdi3>:
   1f974:	fd010113          	addi	sp,sp,-48
   1f978:	02812423          	sw	s0,40(sp)
   1f97c:	01712623          	sw	s7,12(sp)
   1f980:	02112623          	sw	ra,44(sp)
   1f984:	02912223          	sw	s1,36(sp)
   1f988:	03212023          	sw	s2,32(sp)
   1f98c:	01312e23          	sw	s3,28(sp)
   1f990:	01412c23          	sw	s4,24(sp)
   1f994:	01512a23          	sw	s5,20(sp)
   1f998:	01612823          	sw	s6,16(sp)
   1f99c:	01812423          	sw	s8,8(sp)
   1f9a0:	01912223          	sw	s9,4(sp)
   1f9a4:	00050b93          	mv	s7,a0
   1f9a8:	00058413          	mv	s0,a1
   1f9ac:	38069c63          	bnez	a3,1fd44 <__udivdi3+0x3d0>
   1f9b0:	000254b7          	lui	s1,0x25
   1f9b4:	00060913          	mv	s2,a2
   1f9b8:	00050a13          	mv	s4,a0
   1f9bc:	3e448493          	addi	s1,s1,996 # 253e4 <__clz_tab>
   1f9c0:	12c5f863          	bgeu	a1,a2,1faf0 <__udivdi3+0x17c>
   1f9c4:	000107b7          	lui	a5,0x10
   1f9c8:	00058c13          	mv	s8,a1
   1f9cc:	10f67863          	bgeu	a2,a5,1fadc <__udivdi3+0x168>
   1f9d0:	0ff00713          	li	a4,255
   1f9d4:	00c73733          	sltu	a4,a4,a2
   1f9d8:	00371713          	slli	a4,a4,0x3
   1f9dc:	00e657b3          	srl	a5,a2,a4
   1f9e0:	00f484b3          	add	s1,s1,a5
   1f9e4:	0004c683          	lbu	a3,0(s1)
   1f9e8:	00e68733          	add	a4,a3,a4
   1f9ec:	02000693          	li	a3,32
   1f9f0:	40e687b3          	sub	a5,a3,a4
   1f9f4:	00e68c63          	beq	a3,a4,1fa0c <__udivdi3+0x98>
   1f9f8:	00f41433          	sll	s0,s0,a5
   1f9fc:	00ebd733          	srl	a4,s7,a4
   1fa00:	00f61933          	sll	s2,a2,a5
   1fa04:	00876c33          	or	s8,a4,s0
   1fa08:	00fb9a33          	sll	s4,s7,a5
   1fa0c:	01095b13          	srli	s6,s2,0x10
   1fa10:	000b0593          	mv	a1,s6
   1fa14:	000c0513          	mv	a0,s8
   1fa18:	521040ef          	jal	ra,24738 <__umodsi3>
   1fa1c:	00050493          	mv	s1,a0
   1fa20:	000b0593          	mv	a1,s6
   1fa24:	01091a93          	slli	s5,s2,0x10
   1fa28:	000c0513          	mv	a0,s8
   1fa2c:	4c5040ef          	jal	ra,246f0 <__udivsi3>
   1fa30:	010ada93          	srli	s5,s5,0x10
   1fa34:	00050413          	mv	s0,a0
   1fa38:	00050593          	mv	a1,a0
   1fa3c:	000a8513          	mv	a0,s5
   1fa40:	485040ef          	jal	ra,246c4 <__mulsi3>
   1fa44:	01049493          	slli	s1,s1,0x10
   1fa48:	010a5713          	srli	a4,s4,0x10
   1fa4c:	00e4e733          	or	a4,s1,a4
   1fa50:	00040993          	mv	s3,s0
   1fa54:	00a77e63          	bgeu	a4,a0,1fa70 <__udivdi3+0xfc>
   1fa58:	01270733          	add	a4,a4,s2
   1fa5c:	fff40993          	addi	s3,s0,-1
   1fa60:	01276863          	bltu	a4,s2,1fa70 <__udivdi3+0xfc>
   1fa64:	00a77663          	bgeu	a4,a0,1fa70 <__udivdi3+0xfc>
   1fa68:	ffe40993          	addi	s3,s0,-2
   1fa6c:	01270733          	add	a4,a4,s2
   1fa70:	40a70433          	sub	s0,a4,a0
   1fa74:	000b0593          	mv	a1,s6
   1fa78:	00040513          	mv	a0,s0
   1fa7c:	4bd040ef          	jal	ra,24738 <__umodsi3>
   1fa80:	00050493          	mv	s1,a0
   1fa84:	000b0593          	mv	a1,s6
   1fa88:	00040513          	mv	a0,s0
   1fa8c:	465040ef          	jal	ra,246f0 <__udivsi3>
   1fa90:	010a1a13          	slli	s4,s4,0x10
   1fa94:	00050413          	mv	s0,a0
   1fa98:	00050593          	mv	a1,a0
   1fa9c:	01049493          	slli	s1,s1,0x10
   1faa0:	000a8513          	mv	a0,s5
   1faa4:	010a5a13          	srli	s4,s4,0x10
   1faa8:	41d040ef          	jal	ra,246c4 <__mulsi3>
   1faac:	0144ea33          	or	s4,s1,s4
   1fab0:	00040613          	mv	a2,s0
   1fab4:	00aa7c63          	bgeu	s4,a0,1facc <__udivdi3+0x158>
   1fab8:	01490a33          	add	s4,s2,s4
   1fabc:	fff40613          	addi	a2,s0,-1
   1fac0:	012a6663          	bltu	s4,s2,1facc <__udivdi3+0x158>
   1fac4:	00aa7463          	bgeu	s4,a0,1facc <__udivdi3+0x158>
   1fac8:	ffe40613          	addi	a2,s0,-2
   1facc:	01099793          	slli	a5,s3,0x10
   1fad0:	00c7e7b3          	or	a5,a5,a2
   1fad4:	00000493          	li	s1,0
   1fad8:	1300006f          	j	1fc08 <__udivdi3+0x294>
   1fadc:	010007b7          	lui	a5,0x1000
   1fae0:	01000713          	li	a4,16
   1fae4:	eef66ce3          	bltu	a2,a5,1f9dc <__udivdi3+0x68>
   1fae8:	01800713          	li	a4,24
   1faec:	ef1ff06f          	j	1f9dc <__udivdi3+0x68>
   1faf0:	00068993          	mv	s3,a3
   1faf4:	00061a63          	bnez	a2,1fb08 <__udivdi3+0x194>
   1faf8:	00000593          	li	a1,0
   1fafc:	00100513          	li	a0,1
   1fb00:	3f1040ef          	jal	ra,246f0 <__udivsi3>
   1fb04:	00050913          	mv	s2,a0
   1fb08:	000107b7          	lui	a5,0x10
   1fb0c:	12f97c63          	bgeu	s2,a5,1fc44 <__udivdi3+0x2d0>
   1fb10:	0ff00793          	li	a5,255
   1fb14:	0127f463          	bgeu	a5,s2,1fb1c <__udivdi3+0x1a8>
   1fb18:	00800993          	li	s3,8
   1fb1c:	013957b3          	srl	a5,s2,s3
   1fb20:	00f484b3          	add	s1,s1,a5
   1fb24:	0004c783          	lbu	a5,0(s1)
   1fb28:	02000693          	li	a3,32
   1fb2c:	013787b3          	add	a5,a5,s3
   1fb30:	40f68733          	sub	a4,a3,a5
   1fb34:	12f69263          	bne	a3,a5,1fc58 <__udivdi3+0x2e4>
   1fb38:	41240433          	sub	s0,s0,s2
   1fb3c:	00100493          	li	s1,1
   1fb40:	01095a93          	srli	s5,s2,0x10
   1fb44:	000a8593          	mv	a1,s5
   1fb48:	00040513          	mv	a0,s0
   1fb4c:	3ed040ef          	jal	ra,24738 <__umodsi3>
   1fb50:	00050993          	mv	s3,a0
   1fb54:	000a8593          	mv	a1,s5
   1fb58:	00040513          	mv	a0,s0
   1fb5c:	01091b13          	slli	s6,s2,0x10
   1fb60:	391040ef          	jal	ra,246f0 <__udivsi3>
   1fb64:	010b5b13          	srli	s6,s6,0x10
   1fb68:	00050413          	mv	s0,a0
   1fb6c:	00050593          	mv	a1,a0
   1fb70:	000b0513          	mv	a0,s6
   1fb74:	351040ef          	jal	ra,246c4 <__mulsi3>
   1fb78:	01099993          	slli	s3,s3,0x10
   1fb7c:	010a5713          	srli	a4,s4,0x10
   1fb80:	00e9e733          	or	a4,s3,a4
   1fb84:	00040b93          	mv	s7,s0
   1fb88:	00a77e63          	bgeu	a4,a0,1fba4 <__udivdi3+0x230>
   1fb8c:	01270733          	add	a4,a4,s2
   1fb90:	fff40b93          	addi	s7,s0,-1
   1fb94:	01276863          	bltu	a4,s2,1fba4 <__udivdi3+0x230>
   1fb98:	00a77663          	bgeu	a4,a0,1fba4 <__udivdi3+0x230>
   1fb9c:	ffe40b93          	addi	s7,s0,-2
   1fba0:	01270733          	add	a4,a4,s2
   1fba4:	40a70433          	sub	s0,a4,a0
   1fba8:	000a8593          	mv	a1,s5
   1fbac:	00040513          	mv	a0,s0
   1fbb0:	389040ef          	jal	ra,24738 <__umodsi3>
   1fbb4:	00050993          	mv	s3,a0
   1fbb8:	000a8593          	mv	a1,s5
   1fbbc:	00040513          	mv	a0,s0
   1fbc0:	331040ef          	jal	ra,246f0 <__udivsi3>
   1fbc4:	010a1a13          	slli	s4,s4,0x10
   1fbc8:	00050413          	mv	s0,a0
   1fbcc:	00050593          	mv	a1,a0
   1fbd0:	01099993          	slli	s3,s3,0x10
   1fbd4:	000b0513          	mv	a0,s6
   1fbd8:	010a5a13          	srli	s4,s4,0x10
   1fbdc:	2e9040ef          	jal	ra,246c4 <__mulsi3>
   1fbe0:	0149ea33          	or	s4,s3,s4
   1fbe4:	00040613          	mv	a2,s0
   1fbe8:	00aa7c63          	bgeu	s4,a0,1fc00 <__udivdi3+0x28c>
   1fbec:	01490a33          	add	s4,s2,s4
   1fbf0:	fff40613          	addi	a2,s0,-1
   1fbf4:	012a6663          	bltu	s4,s2,1fc00 <__udivdi3+0x28c>
   1fbf8:	00aa7463          	bgeu	s4,a0,1fc00 <__udivdi3+0x28c>
   1fbfc:	ffe40613          	addi	a2,s0,-2
   1fc00:	010b9793          	slli	a5,s7,0x10
   1fc04:	00c7e7b3          	or	a5,a5,a2
   1fc08:	00078513          	mv	a0,a5
   1fc0c:	00048593          	mv	a1,s1
   1fc10:	02c12083          	lw	ra,44(sp)
   1fc14:	02812403          	lw	s0,40(sp)
   1fc18:	02412483          	lw	s1,36(sp)
   1fc1c:	02012903          	lw	s2,32(sp)
   1fc20:	01c12983          	lw	s3,28(sp)
   1fc24:	01812a03          	lw	s4,24(sp)
   1fc28:	01412a83          	lw	s5,20(sp)
   1fc2c:	01012b03          	lw	s6,16(sp)
   1fc30:	00c12b83          	lw	s7,12(sp)
   1fc34:	00812c03          	lw	s8,8(sp)
   1fc38:	00412c83          	lw	s9,4(sp)
   1fc3c:	03010113          	addi	sp,sp,48
   1fc40:	00008067          	ret
   1fc44:	010007b7          	lui	a5,0x1000
   1fc48:	01000993          	li	s3,16
   1fc4c:	ecf968e3          	bltu	s2,a5,1fb1c <__udivdi3+0x1a8>
   1fc50:	01800993          	li	s3,24
   1fc54:	ec9ff06f          	j	1fb1c <__udivdi3+0x1a8>
   1fc58:	00e91933          	sll	s2,s2,a4
   1fc5c:	00f459b3          	srl	s3,s0,a5
   1fc60:	00fbd7b3          	srl	a5,s7,a5
   1fc64:	00e41433          	sll	s0,s0,a4
   1fc68:	0087eab3          	or	s5,a5,s0
   1fc6c:	01095413          	srli	s0,s2,0x10
   1fc70:	00040593          	mv	a1,s0
   1fc74:	00098513          	mv	a0,s3
   1fc78:	00eb9a33          	sll	s4,s7,a4
   1fc7c:	2bd040ef          	jal	ra,24738 <__umodsi3>
   1fc80:	00050493          	mv	s1,a0
   1fc84:	00040593          	mv	a1,s0
   1fc88:	00098513          	mv	a0,s3
   1fc8c:	01091b13          	slli	s6,s2,0x10
   1fc90:	261040ef          	jal	ra,246f0 <__udivsi3>
   1fc94:	010b5b13          	srli	s6,s6,0x10
   1fc98:	00050993          	mv	s3,a0
   1fc9c:	00050593          	mv	a1,a0
   1fca0:	000b0513          	mv	a0,s6
   1fca4:	221040ef          	jal	ra,246c4 <__mulsi3>
   1fca8:	01049493          	slli	s1,s1,0x10
   1fcac:	010ad793          	srli	a5,s5,0x10
   1fcb0:	00f4e7b3          	or	a5,s1,a5
   1fcb4:	00098b93          	mv	s7,s3
   1fcb8:	00a7fe63          	bgeu	a5,a0,1fcd4 <__udivdi3+0x360>
   1fcbc:	012787b3          	add	a5,a5,s2
   1fcc0:	fff98b93          	addi	s7,s3,-1
   1fcc4:	0127e863          	bltu	a5,s2,1fcd4 <__udivdi3+0x360>
   1fcc8:	00a7f663          	bgeu	a5,a0,1fcd4 <__udivdi3+0x360>
   1fccc:	ffe98b93          	addi	s7,s3,-2
   1fcd0:	012787b3          	add	a5,a5,s2
   1fcd4:	40a789b3          	sub	s3,a5,a0
   1fcd8:	00040593          	mv	a1,s0
   1fcdc:	00098513          	mv	a0,s3
   1fce0:	259040ef          	jal	ra,24738 <__umodsi3>
   1fce4:	00040593          	mv	a1,s0
   1fce8:	00050493          	mv	s1,a0
   1fcec:	00098513          	mv	a0,s3
   1fcf0:	201040ef          	jal	ra,246f0 <__udivsi3>
   1fcf4:	010a9413          	slli	s0,s5,0x10
   1fcf8:	00050993          	mv	s3,a0
   1fcfc:	00050593          	mv	a1,a0
   1fd00:	01049493          	slli	s1,s1,0x10
   1fd04:	000b0513          	mv	a0,s6
   1fd08:	01045413          	srli	s0,s0,0x10
   1fd0c:	1b9040ef          	jal	ra,246c4 <__mulsi3>
   1fd10:	0084e433          	or	s0,s1,s0
   1fd14:	00098793          	mv	a5,s3
   1fd18:	00a47e63          	bgeu	s0,a0,1fd34 <__udivdi3+0x3c0>
   1fd1c:	01240433          	add	s0,s0,s2
   1fd20:	fff98793          	addi	a5,s3,-1
   1fd24:	01246863          	bltu	s0,s2,1fd34 <__udivdi3+0x3c0>
   1fd28:	00a47663          	bgeu	s0,a0,1fd34 <__udivdi3+0x3c0>
   1fd2c:	ffe98793          	addi	a5,s3,-2
   1fd30:	01240433          	add	s0,s0,s2
   1fd34:	010b9493          	slli	s1,s7,0x10
   1fd38:	40a40433          	sub	s0,s0,a0
   1fd3c:	00f4e4b3          	or	s1,s1,a5
   1fd40:	e01ff06f          	j	1fb40 <__udivdi3+0x1cc>
   1fd44:	1ed5ee63          	bltu	a1,a3,1ff40 <__udivdi3+0x5cc>
   1fd48:	000107b7          	lui	a5,0x10
   1fd4c:	04f6f463          	bgeu	a3,a5,1fd94 <__udivdi3+0x420>
   1fd50:	0ff00a93          	li	s5,255
   1fd54:	00dab733          	sltu	a4,s5,a3
   1fd58:	00371713          	slli	a4,a4,0x3
   1fd5c:	000257b7          	lui	a5,0x25
   1fd60:	00e6d5b3          	srl	a1,a3,a4
   1fd64:	3e478793          	addi	a5,a5,996 # 253e4 <__clz_tab>
   1fd68:	00b787b3          	add	a5,a5,a1
   1fd6c:	0007ca83          	lbu	s5,0(a5)
   1fd70:	02000793          	li	a5,32
   1fd74:	00ea8ab3          	add	s5,s5,a4
   1fd78:	415784b3          	sub	s1,a5,s5
   1fd7c:	03579663          	bne	a5,s5,1fda8 <__udivdi3+0x434>
   1fd80:	00100793          	li	a5,1
   1fd84:	e886e2e3          	bltu	a3,s0,1fc08 <__udivdi3+0x294>
   1fd88:	00cbb7b3          	sltu	a5,s7,a2
   1fd8c:	0017c793          	xori	a5,a5,1
   1fd90:	e79ff06f          	j	1fc08 <__udivdi3+0x294>
   1fd94:	010007b7          	lui	a5,0x1000
   1fd98:	01000713          	li	a4,16
   1fd9c:	fcf6e0e3          	bltu	a3,a5,1fd5c <__udivdi3+0x3e8>
   1fda0:	01800713          	li	a4,24
   1fda4:	fb9ff06f          	j	1fd5c <__udivdi3+0x3e8>
   1fda8:	01565cb3          	srl	s9,a2,s5
   1fdac:	009696b3          	sll	a3,a3,s1
   1fdb0:	00dcecb3          	or	s9,s9,a3
   1fdb4:	015459b3          	srl	s3,s0,s5
   1fdb8:	00941433          	sll	s0,s0,s1
   1fdbc:	015bdab3          	srl	s5,s7,s5
   1fdc0:	008aeab3          	or	s5,s5,s0
   1fdc4:	010cd413          	srli	s0,s9,0x10
   1fdc8:	00040593          	mv	a1,s0
   1fdcc:	00098513          	mv	a0,s3
   1fdd0:	00961933          	sll	s2,a2,s1
   1fdd4:	165040ef          	jal	ra,24738 <__umodsi3>
   1fdd8:	00050a13          	mv	s4,a0
   1fddc:	00040593          	mv	a1,s0
   1fde0:	00098513          	mv	a0,s3
   1fde4:	010c9b13          	slli	s6,s9,0x10
   1fde8:	109040ef          	jal	ra,246f0 <__udivsi3>
   1fdec:	010b5b13          	srli	s6,s6,0x10
   1fdf0:	00050993          	mv	s3,a0
   1fdf4:	00050593          	mv	a1,a0
   1fdf8:	000b0513          	mv	a0,s6
   1fdfc:	0c9040ef          	jal	ra,246c4 <__mulsi3>
   1fe00:	010a1a13          	slli	s4,s4,0x10
   1fe04:	010ad713          	srli	a4,s5,0x10
   1fe08:	00ea6733          	or	a4,s4,a4
   1fe0c:	00098c13          	mv	s8,s3
   1fe10:	00a77e63          	bgeu	a4,a0,1fe2c <__udivdi3+0x4b8>
   1fe14:	01970733          	add	a4,a4,s9
   1fe18:	fff98c13          	addi	s8,s3,-1
   1fe1c:	01976863          	bltu	a4,s9,1fe2c <__udivdi3+0x4b8>
   1fe20:	00a77663          	bgeu	a4,a0,1fe2c <__udivdi3+0x4b8>
   1fe24:	ffe98c13          	addi	s8,s3,-2
   1fe28:	01970733          	add	a4,a4,s9
   1fe2c:	40a709b3          	sub	s3,a4,a0
   1fe30:	00040593          	mv	a1,s0
   1fe34:	00098513          	mv	a0,s3
   1fe38:	101040ef          	jal	ra,24738 <__umodsi3>
   1fe3c:	00040593          	mv	a1,s0
   1fe40:	00050a13          	mv	s4,a0
   1fe44:	00098513          	mv	a0,s3
   1fe48:	0a9040ef          	jal	ra,246f0 <__udivsi3>
   1fe4c:	010a9413          	slli	s0,s5,0x10
   1fe50:	00050993          	mv	s3,a0
   1fe54:	00050593          	mv	a1,a0
   1fe58:	010a1a13          	slli	s4,s4,0x10
   1fe5c:	000b0513          	mv	a0,s6
   1fe60:	01045413          	srli	s0,s0,0x10
   1fe64:	061040ef          	jal	ra,246c4 <__mulsi3>
   1fe68:	008a6433          	or	s0,s4,s0
   1fe6c:	00098613          	mv	a2,s3
   1fe70:	00a47e63          	bgeu	s0,a0,1fe8c <__udivdi3+0x518>
   1fe74:	01940433          	add	s0,s0,s9
   1fe78:	fff98613          	addi	a2,s3,-1
   1fe7c:	01946863          	bltu	s0,s9,1fe8c <__udivdi3+0x518>
   1fe80:	00a47663          	bgeu	s0,a0,1fe8c <__udivdi3+0x518>
   1fe84:	ffe98613          	addi	a2,s3,-2
   1fe88:	01940433          	add	s0,s0,s9
   1fe8c:	010c1793          	slli	a5,s8,0x10
   1fe90:	00010e37          	lui	t3,0x10
   1fe94:	00c7e7b3          	or	a5,a5,a2
   1fe98:	fffe0313          	addi	t1,t3,-1 # ffff <register_fini-0x75>
   1fe9c:	0067f8b3          	and	a7,a5,t1
   1fea0:	00697333          	and	t1,s2,t1
   1fea4:	40a40433          	sub	s0,s0,a0
   1fea8:	0107de93          	srli	t4,a5,0x10
   1feac:	01095913          	srli	s2,s2,0x10
   1feb0:	00088513          	mv	a0,a7
   1feb4:	00030593          	mv	a1,t1
   1feb8:	00d040ef          	jal	ra,246c4 <__mulsi3>
   1febc:	00050813          	mv	a6,a0
   1fec0:	00090593          	mv	a1,s2
   1fec4:	00088513          	mv	a0,a7
   1fec8:	7fc040ef          	jal	ra,246c4 <__mulsi3>
   1fecc:	00050893          	mv	a7,a0
   1fed0:	00030593          	mv	a1,t1
   1fed4:	000e8513          	mv	a0,t4
   1fed8:	7ec040ef          	jal	ra,246c4 <__mulsi3>
   1fedc:	00050313          	mv	t1,a0
   1fee0:	00090593          	mv	a1,s2
   1fee4:	000e8513          	mv	a0,t4
   1fee8:	7dc040ef          	jal	ra,246c4 <__mulsi3>
   1feec:	01085713          	srli	a4,a6,0x10
   1fef0:	006888b3          	add	a7,a7,t1
   1fef4:	01170733          	add	a4,a4,a7
   1fef8:	00050693          	mv	a3,a0
   1fefc:	00677463          	bgeu	a4,t1,1ff04 <__udivdi3+0x590>
   1ff00:	01c506b3          	add	a3,a0,t3
   1ff04:	01075513          	srli	a0,a4,0x10
   1ff08:	00d506b3          	add	a3,a0,a3
   1ff0c:	02d46663          	bltu	s0,a3,1ff38 <__udivdi3+0x5c4>
   1ff10:	bcd412e3          	bne	s0,a3,1fad4 <__udivdi3+0x160>
   1ff14:	00010537          	lui	a0,0x10
   1ff18:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   1ff1c:	00a77733          	and	a4,a4,a0
   1ff20:	01071713          	slli	a4,a4,0x10
   1ff24:	00a87833          	and	a6,a6,a0
   1ff28:	009b9bb3          	sll	s7,s7,s1
   1ff2c:	01070733          	add	a4,a4,a6
   1ff30:	00000493          	li	s1,0
   1ff34:	ccebfae3          	bgeu	s7,a4,1fc08 <__udivdi3+0x294>
   1ff38:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfd902f>
   1ff3c:	b99ff06f          	j	1fad4 <__udivdi3+0x160>
   1ff40:	00000493          	li	s1,0
   1ff44:	00000793          	li	a5,0
   1ff48:	cc1ff06f          	j	1fc08 <__udivdi3+0x294>

0001ff4c <__umoddi3>:
   1ff4c:	fd010113          	addi	sp,sp,-48
   1ff50:	02812423          	sw	s0,40(sp)
   1ff54:	02912223          	sw	s1,36(sp)
   1ff58:	03212023          	sw	s2,32(sp)
   1ff5c:	01612823          	sw	s6,16(sp)
   1ff60:	02112623          	sw	ra,44(sp)
   1ff64:	01312e23          	sw	s3,28(sp)
   1ff68:	01412c23          	sw	s4,24(sp)
   1ff6c:	01512a23          	sw	s5,20(sp)
   1ff70:	01712623          	sw	s7,12(sp)
   1ff74:	01812423          	sw	s8,8(sp)
   1ff78:	01912223          	sw	s9,4(sp)
   1ff7c:	01a12023          	sw	s10,0(sp)
   1ff80:	00050913          	mv	s2,a0
   1ff84:	00058b13          	mv	s6,a1
   1ff88:	00050413          	mv	s0,a0
   1ff8c:	00058493          	mv	s1,a1
   1ff90:	26069c63          	bnez	a3,20208 <__umoddi3+0x2bc>
   1ff94:	00025ab7          	lui	s5,0x25
   1ff98:	00060a13          	mv	s4,a2
   1ff9c:	00068993          	mv	s3,a3
   1ffa0:	3e4a8a93          	addi	s5,s5,996 # 253e4 <__clz_tab>
   1ffa4:	14c5f263          	bgeu	a1,a2,200e8 <__umoddi3+0x19c>
   1ffa8:	000107b7          	lui	a5,0x10
   1ffac:	12f67463          	bgeu	a2,a5,200d4 <__umoddi3+0x188>
   1ffb0:	0ff00793          	li	a5,255
   1ffb4:	00c7f463          	bgeu	a5,a2,1ffbc <__umoddi3+0x70>
   1ffb8:	00800993          	li	s3,8
   1ffbc:	013657b3          	srl	a5,a2,s3
   1ffc0:	00fa8ab3          	add	s5,s5,a5
   1ffc4:	000ac783          	lbu	a5,0(s5)
   1ffc8:	02000713          	li	a4,32
   1ffcc:	013787b3          	add	a5,a5,s3
   1ffd0:	40f709b3          	sub	s3,a4,a5
   1ffd4:	00f70c63          	beq	a4,a5,1ffec <__umoddi3+0xa0>
   1ffd8:	013b15b3          	sll	a1,s6,s3
   1ffdc:	00f957b3          	srl	a5,s2,a5
   1ffe0:	01361a33          	sll	s4,a2,s3
   1ffe4:	00b7e4b3          	or	s1,a5,a1
   1ffe8:	01391433          	sll	s0,s2,s3
   1ffec:	010a5a93          	srli	s5,s4,0x10
   1fff0:	000a8593          	mv	a1,s5
   1fff4:	00048513          	mv	a0,s1
   1fff8:	740040ef          	jal	ra,24738 <__umodsi3>
   1fffc:	00050913          	mv	s2,a0
   20000:	000a8593          	mv	a1,s5
   20004:	010a1b13          	slli	s6,s4,0x10
   20008:	00048513          	mv	a0,s1
   2000c:	6e4040ef          	jal	ra,246f0 <__udivsi3>
   20010:	010b5b13          	srli	s6,s6,0x10
   20014:	00050593          	mv	a1,a0
   20018:	000b0513          	mv	a0,s6
   2001c:	6a8040ef          	jal	ra,246c4 <__mulsi3>
   20020:	01091913          	slli	s2,s2,0x10
   20024:	01045793          	srli	a5,s0,0x10
   20028:	00f967b3          	or	a5,s2,a5
   2002c:	00a7fa63          	bgeu	a5,a0,20040 <__umoddi3+0xf4>
   20030:	014787b3          	add	a5,a5,s4
   20034:	0147e663          	bltu	a5,s4,20040 <__umoddi3+0xf4>
   20038:	00a7f463          	bgeu	a5,a0,20040 <__umoddi3+0xf4>
   2003c:	014787b3          	add	a5,a5,s4
   20040:	40a784b3          	sub	s1,a5,a0
   20044:	000a8593          	mv	a1,s5
   20048:	00048513          	mv	a0,s1
   2004c:	6ec040ef          	jal	ra,24738 <__umodsi3>
   20050:	00050913          	mv	s2,a0
   20054:	000a8593          	mv	a1,s5
   20058:	00048513          	mv	a0,s1
   2005c:	694040ef          	jal	ra,246f0 <__udivsi3>
   20060:	01041413          	slli	s0,s0,0x10
   20064:	00050593          	mv	a1,a0
   20068:	01091913          	slli	s2,s2,0x10
   2006c:	000b0513          	mv	a0,s6
   20070:	01045413          	srli	s0,s0,0x10
   20074:	650040ef          	jal	ra,246c4 <__mulsi3>
   20078:	00896433          	or	s0,s2,s0
   2007c:	00a47a63          	bgeu	s0,a0,20090 <__umoddi3+0x144>
   20080:	01440433          	add	s0,s0,s4
   20084:	01446663          	bltu	s0,s4,20090 <__umoddi3+0x144>
   20088:	00a47463          	bgeu	s0,a0,20090 <__umoddi3+0x144>
   2008c:	01440433          	add	s0,s0,s4
   20090:	40a40433          	sub	s0,s0,a0
   20094:	01345533          	srl	a0,s0,s3
   20098:	00000593          	li	a1,0
   2009c:	02c12083          	lw	ra,44(sp)
   200a0:	02812403          	lw	s0,40(sp)
   200a4:	02412483          	lw	s1,36(sp)
   200a8:	02012903          	lw	s2,32(sp)
   200ac:	01c12983          	lw	s3,28(sp)
   200b0:	01812a03          	lw	s4,24(sp)
   200b4:	01412a83          	lw	s5,20(sp)
   200b8:	01012b03          	lw	s6,16(sp)
   200bc:	00c12b83          	lw	s7,12(sp)
   200c0:	00812c03          	lw	s8,8(sp)
   200c4:	00412c83          	lw	s9,4(sp)
   200c8:	00012d03          	lw	s10,0(sp)
   200cc:	03010113          	addi	sp,sp,48
   200d0:	00008067          	ret
   200d4:	010007b7          	lui	a5,0x1000
   200d8:	01000993          	li	s3,16
   200dc:	eef660e3          	bltu	a2,a5,1ffbc <__umoddi3+0x70>
   200e0:	01800993          	li	s3,24
   200e4:	ed9ff06f          	j	1ffbc <__umoddi3+0x70>
   200e8:	00061a63          	bnez	a2,200fc <__umoddi3+0x1b0>
   200ec:	00000593          	li	a1,0
   200f0:	00100513          	li	a0,1
   200f4:	5fc040ef          	jal	ra,246f0 <__udivsi3>
   200f8:	00050a13          	mv	s4,a0
   200fc:	000107b7          	lui	a5,0x10
   20100:	0efa7a63          	bgeu	s4,a5,201f4 <__umoddi3+0x2a8>
   20104:	0ff00793          	li	a5,255
   20108:	0147f463          	bgeu	a5,s4,20110 <__umoddi3+0x1c4>
   2010c:	00800993          	li	s3,8
   20110:	013a57b3          	srl	a5,s4,s3
   20114:	00fa8ab3          	add	s5,s5,a5
   20118:	000ac783          	lbu	a5,0(s5)
   2011c:	02000713          	li	a4,32
   20120:	414b04b3          	sub	s1,s6,s4
   20124:	013787b3          	add	a5,a5,s3
   20128:	40f709b3          	sub	s3,a4,a5
   2012c:	ecf700e3          	beq	a4,a5,1ffec <__umoddi3+0xa0>
   20130:	013a1a33          	sll	s4,s4,s3
   20134:	00fb5ab3          	srl	s5,s6,a5
   20138:	013b15b3          	sll	a1,s6,s3
   2013c:	00f957b3          	srl	a5,s2,a5
   20140:	010a5493          	srli	s1,s4,0x10
   20144:	00b7eb33          	or	s6,a5,a1
   20148:	000a8513          	mv	a0,s5
   2014c:	00048593          	mv	a1,s1
   20150:	5e8040ef          	jal	ra,24738 <__umodsi3>
   20154:	00048593          	mv	a1,s1
   20158:	01391433          	sll	s0,s2,s3
   2015c:	010a1b93          	slli	s7,s4,0x10
   20160:	00050913          	mv	s2,a0
   20164:	000a8513          	mv	a0,s5
   20168:	588040ef          	jal	ra,246f0 <__udivsi3>
   2016c:	010bdb93          	srli	s7,s7,0x10
   20170:	00050593          	mv	a1,a0
   20174:	000b8513          	mv	a0,s7
   20178:	54c040ef          	jal	ra,246c4 <__mulsi3>
   2017c:	01091913          	slli	s2,s2,0x10
   20180:	010b5793          	srli	a5,s6,0x10
   20184:	00f967b3          	or	a5,s2,a5
   20188:	00a7fa63          	bgeu	a5,a0,2019c <__umoddi3+0x250>
   2018c:	014787b3          	add	a5,a5,s4
   20190:	0147e663          	bltu	a5,s4,2019c <__umoddi3+0x250>
   20194:	00a7f463          	bgeu	a5,a0,2019c <__umoddi3+0x250>
   20198:	014787b3          	add	a5,a5,s4
   2019c:	40a78ab3          	sub	s5,a5,a0
   201a0:	00048593          	mv	a1,s1
   201a4:	000a8513          	mv	a0,s5
   201a8:	590040ef          	jal	ra,24738 <__umodsi3>
   201ac:	00050913          	mv	s2,a0
   201b0:	00048593          	mv	a1,s1
   201b4:	000a8513          	mv	a0,s5
   201b8:	538040ef          	jal	ra,246f0 <__udivsi3>
   201bc:	00050593          	mv	a1,a0
   201c0:	000b8513          	mv	a0,s7
   201c4:	500040ef          	jal	ra,246c4 <__mulsi3>
   201c8:	010b1593          	slli	a1,s6,0x10
   201cc:	01091913          	slli	s2,s2,0x10
   201d0:	0105d593          	srli	a1,a1,0x10
   201d4:	00b965b3          	or	a1,s2,a1
   201d8:	00a5fa63          	bgeu	a1,a0,201ec <__umoddi3+0x2a0>
   201dc:	014585b3          	add	a1,a1,s4
   201e0:	0145e663          	bltu	a1,s4,201ec <__umoddi3+0x2a0>
   201e4:	00a5f463          	bgeu	a1,a0,201ec <__umoddi3+0x2a0>
   201e8:	014585b3          	add	a1,a1,s4
   201ec:	40a584b3          	sub	s1,a1,a0
   201f0:	dfdff06f          	j	1ffec <__umoddi3+0xa0>
   201f4:	010007b7          	lui	a5,0x1000
   201f8:	01000993          	li	s3,16
   201fc:	f0fa6ae3          	bltu	s4,a5,20110 <__umoddi3+0x1c4>
   20200:	01800993          	li	s3,24
   20204:	f0dff06f          	j	20110 <__umoddi3+0x1c4>
   20208:	e8d5eae3          	bltu	a1,a3,2009c <__umoddi3+0x150>
   2020c:	000107b7          	lui	a5,0x10
   20210:	04f6fc63          	bgeu	a3,a5,20268 <__umoddi3+0x31c>
   20214:	0ff00a93          	li	s5,255
   20218:	00dab533          	sltu	a0,s5,a3
   2021c:	00351513          	slli	a0,a0,0x3
   20220:	000257b7          	lui	a5,0x25
   20224:	00a6d733          	srl	a4,a3,a0
   20228:	3e478793          	addi	a5,a5,996 # 253e4 <__clz_tab>
   2022c:	00e787b3          	add	a5,a5,a4
   20230:	0007ca83          	lbu	s5,0(a5)
   20234:	02000793          	li	a5,32
   20238:	00aa8ab3          	add	s5,s5,a0
   2023c:	41578a33          	sub	s4,a5,s5
   20240:	03579e63          	bne	a5,s5,2027c <__umoddi3+0x330>
   20244:	0166e463          	bltu	a3,s6,2024c <__umoddi3+0x300>
   20248:	00c96a63          	bltu	s2,a2,2025c <__umoddi3+0x310>
   2024c:	40c90433          	sub	s0,s2,a2
   20250:	40db05b3          	sub	a1,s6,a3
   20254:	008934b3          	sltu	s1,s2,s0
   20258:	409584b3          	sub	s1,a1,s1
   2025c:	00040513          	mv	a0,s0
   20260:	00048593          	mv	a1,s1
   20264:	e39ff06f          	j	2009c <__umoddi3+0x150>
   20268:	010007b7          	lui	a5,0x1000
   2026c:	01000513          	li	a0,16
   20270:	faf6e8e3          	bltu	a3,a5,20220 <__umoddi3+0x2d4>
   20274:	01800513          	li	a0,24
   20278:	fa9ff06f          	j	20220 <__umoddi3+0x2d4>
   2027c:	014696b3          	sll	a3,a3,s4
   20280:	015657b3          	srl	a5,a2,s5
   20284:	00d7ecb3          	or	s9,a5,a3
   20288:	015b5433          	srl	s0,s6,s5
   2028c:	014b15b3          	sll	a1,s6,s4
   20290:	010cdb93          	srli	s7,s9,0x10
   20294:	01595b33          	srl	s6,s2,s5
   20298:	00bb6b33          	or	s6,s6,a1
   2029c:	00040513          	mv	a0,s0
   202a0:	000b8593          	mv	a1,s7
   202a4:	01461d33          	sll	s10,a2,s4
   202a8:	490040ef          	jal	ra,24738 <__umodsi3>
   202ac:	00050993          	mv	s3,a0
   202b0:	000b8593          	mv	a1,s7
   202b4:	00040513          	mv	a0,s0
   202b8:	010c9c13          	slli	s8,s9,0x10
   202bc:	434040ef          	jal	ra,246f0 <__udivsi3>
   202c0:	010c5c13          	srli	s8,s8,0x10
   202c4:	00050593          	mv	a1,a0
   202c8:	014914b3          	sll	s1,s2,s4
   202cc:	00050913          	mv	s2,a0
   202d0:	000c0513          	mv	a0,s8
   202d4:	3f0040ef          	jal	ra,246c4 <__mulsi3>
   202d8:	01099993          	slli	s3,s3,0x10
   202dc:	010b5713          	srli	a4,s6,0x10
   202e0:	00e9e733          	or	a4,s3,a4
   202e4:	00090413          	mv	s0,s2
   202e8:	00a77e63          	bgeu	a4,a0,20304 <__umoddi3+0x3b8>
   202ec:	01970733          	add	a4,a4,s9
   202f0:	fff90413          	addi	s0,s2,-1
   202f4:	01976863          	bltu	a4,s9,20304 <__umoddi3+0x3b8>
   202f8:	00a77663          	bgeu	a4,a0,20304 <__umoddi3+0x3b8>
   202fc:	ffe90413          	addi	s0,s2,-2
   20300:	01970733          	add	a4,a4,s9
   20304:	40a70933          	sub	s2,a4,a0
   20308:	000b8593          	mv	a1,s7
   2030c:	00090513          	mv	a0,s2
   20310:	428040ef          	jal	ra,24738 <__umodsi3>
   20314:	00050993          	mv	s3,a0
   20318:	000b8593          	mv	a1,s7
   2031c:	00090513          	mv	a0,s2
   20320:	3d0040ef          	jal	ra,246f0 <__udivsi3>
   20324:	00050913          	mv	s2,a0
   20328:	00050593          	mv	a1,a0
   2032c:	000c0513          	mv	a0,s8
   20330:	394040ef          	jal	ra,246c4 <__mulsi3>
   20334:	010b1713          	slli	a4,s6,0x10
   20338:	01099993          	slli	s3,s3,0x10
   2033c:	01075713          	srli	a4,a4,0x10
   20340:	00e9e733          	or	a4,s3,a4
   20344:	00090793          	mv	a5,s2
   20348:	00a77e63          	bgeu	a4,a0,20364 <__umoddi3+0x418>
   2034c:	01970733          	add	a4,a4,s9
   20350:	fff90793          	addi	a5,s2,-1
   20354:	01976863          	bltu	a4,s9,20364 <__umoddi3+0x418>
   20358:	00a77663          	bgeu	a4,a0,20364 <__umoddi3+0x418>
   2035c:	ffe90793          	addi	a5,s2,-2
   20360:	01970733          	add	a4,a4,s9
   20364:	00010eb7          	lui	t4,0x10
   20368:	01041413          	slli	s0,s0,0x10
   2036c:	40a70833          	sub	a6,a4,a0
   20370:	00f46433          	or	s0,s0,a5
   20374:	fffe8713          	addi	a4,t4,-1 # ffff <register_fini-0x75>
   20378:	00e478b3          	and	a7,s0,a4
   2037c:	00ed7733          	and	a4,s10,a4
   20380:	01045413          	srli	s0,s0,0x10
   20384:	010d5e13          	srli	t3,s10,0x10
   20388:	00088513          	mv	a0,a7
   2038c:	00070593          	mv	a1,a4
   20390:	334040ef          	jal	ra,246c4 <__mulsi3>
   20394:	00050793          	mv	a5,a0
   20398:	000e0593          	mv	a1,t3
   2039c:	00088513          	mv	a0,a7
   203a0:	324040ef          	jal	ra,246c4 <__mulsi3>
   203a4:	00050893          	mv	a7,a0
   203a8:	00070593          	mv	a1,a4
   203ac:	00040513          	mv	a0,s0
   203b0:	314040ef          	jal	ra,246c4 <__mulsi3>
   203b4:	00050313          	mv	t1,a0
   203b8:	000e0593          	mv	a1,t3
   203bc:	00040513          	mv	a0,s0
   203c0:	304040ef          	jal	ra,246c4 <__mulsi3>
   203c4:	0107d713          	srli	a4,a5,0x10
   203c8:	006888b3          	add	a7,a7,t1
   203cc:	01170733          	add	a4,a4,a7
   203d0:	00677463          	bgeu	a4,t1,203d8 <__umoddi3+0x48c>
   203d4:	01d50533          	add	a0,a0,t4
   203d8:	01075593          	srli	a1,a4,0x10
   203dc:	00a585b3          	add	a1,a1,a0
   203e0:	00010537          	lui	a0,0x10
   203e4:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   203e8:	00a77733          	and	a4,a4,a0
   203ec:	01071713          	slli	a4,a4,0x10
   203f0:	00a7f7b3          	and	a5,a5,a0
   203f4:	00f707b3          	add	a5,a4,a5
   203f8:	00b86663          	bltu	a6,a1,20404 <__umoddi3+0x4b8>
   203fc:	00b81e63          	bne	a6,a1,20418 <__umoddi3+0x4cc>
   20400:	00f4fc63          	bgeu	s1,a5,20418 <__umoddi3+0x4cc>
   20404:	41a78633          	sub	a2,a5,s10
   20408:	00c7b7b3          	sltu	a5,a5,a2
   2040c:	019787b3          	add	a5,a5,s9
   20410:	40f585b3          	sub	a1,a1,a5
   20414:	00060793          	mv	a5,a2
   20418:	40f487b3          	sub	a5,s1,a5
   2041c:	00f4b4b3          	sltu	s1,s1,a5
   20420:	40b805b3          	sub	a1,a6,a1
   20424:	409585b3          	sub	a1,a1,s1
   20428:	01559433          	sll	s0,a1,s5
   2042c:	0147d7b3          	srl	a5,a5,s4
   20430:	00f46533          	or	a0,s0,a5
   20434:	0145d5b3          	srl	a1,a1,s4
   20438:	c65ff06f          	j	2009c <__umoddi3+0x150>

0002043c <__divdf3>:
   2043c:	fb010113          	addi	sp,sp,-80
   20440:	0145d793          	srli	a5,a1,0x14
   20444:	04912223          	sw	s1,68(sp)
   20448:	03312e23          	sw	s3,60(sp)
   2044c:	03412c23          	sw	s4,56(sp)
   20450:	03512a23          	sw	s5,52(sp)
   20454:	03612823          	sw	s6,48(sp)
   20458:	00c59493          	slli	s1,a1,0xc
   2045c:	04112623          	sw	ra,76(sp)
   20460:	04812423          	sw	s0,72(sp)
   20464:	05212023          	sw	s2,64(sp)
   20468:	03712623          	sw	s7,44(sp)
   2046c:	03812423          	sw	s8,40(sp)
   20470:	03912223          	sw	s9,36(sp)
   20474:	03a12023          	sw	s10,32(sp)
   20478:	01b12e23          	sw	s11,28(sp)
   2047c:	01579713          	slli	a4,a5,0x15
   20480:	00050993          	mv	s3,a0
   20484:	00060a13          	mv	s4,a2
   20488:	00068b13          	mv	s6,a3
   2048c:	00c4d493          	srli	s1,s1,0xc
   20490:	01f5da93          	srli	s5,a1,0x1f
   20494:	0a070463          	beqz	a4,2053c <__divdf3+0x100>
   20498:	7ff7f913          	andi	s2,a5,2047
   2049c:	7ff00793          	li	a5,2047
   204a0:	10f90063          	beq	s2,a5,205a0 <__divdf3+0x164>
   204a4:	01d55c93          	srli	s9,a0,0x1d
   204a8:	00349493          	slli	s1,s1,0x3
   204ac:	009ce4b3          	or	s1,s9,s1
   204b0:	00800cb7          	lui	s9,0x800
   204b4:	0194ecb3          	or	s9,s1,s9
   204b8:	00351413          	slli	s0,a0,0x3
   204bc:	c0190913          	addi	s2,s2,-1023
   204c0:	00000c13          	li	s8,0
   204c4:	014b5793          	srli	a5,s6,0x14
   204c8:	00cb1593          	slli	a1,s6,0xc
   204cc:	01579713          	slli	a4,a5,0x15
   204d0:	00c5d993          	srli	s3,a1,0xc
   204d4:	7ff7f513          	andi	a0,a5,2047
   204d8:	01fb5b13          	srli	s6,s6,0x1f
   204dc:	10070063          	beqz	a4,205dc <__divdf3+0x1a0>
   204e0:	7ff00793          	li	a5,2047
   204e4:	16f50063          	beq	a0,a5,20644 <__divdf3+0x208>
   204e8:	00399593          	slli	a1,s3,0x3
   204ec:	01da5793          	srli	a5,s4,0x1d
   204f0:	00b7e5b3          	or	a1,a5,a1
   204f4:	008009b7          	lui	s3,0x800
   204f8:	0135e9b3          	or	s3,a1,s3
   204fc:	003a1813          	slli	a6,s4,0x3
   20500:	c0150513          	addi	a0,a0,-1023
   20504:	00000693          	li	a3,0
   20508:	002c1793          	slli	a5,s8,0x2
   2050c:	00d7e7b3          	or	a5,a5,a3
   20510:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfd902f>
   20514:	00e00713          	li	a4,14
   20518:	016ac4b3          	xor	s1,s5,s6
   2051c:	40a90933          	sub	s2,s2,a0
   20520:	14f76e63          	bltu	a4,a5,2067c <__divdf3+0x240>
   20524:	00025737          	lui	a4,0x25
   20528:	00279793          	slli	a5,a5,0x2
   2052c:	33070713          	addi	a4,a4,816 # 25330 <_ctype_+0x104>
   20530:	00e787b3          	add	a5,a5,a4
   20534:	0007a783          	lw	a5,0(a5)
   20538:	00078067          	jr	a5
   2053c:	00a4ecb3          	or	s9,s1,a0
   20540:	060c8e63          	beqz	s9,205bc <__divdf3+0x180>
   20544:	04048063          	beqz	s1,20584 <__divdf3+0x148>
   20548:	00048513          	mv	a0,s1
   2054c:	250040ef          	jal	ra,2479c <__clzsi2>
   20550:	ff550793          	addi	a5,a0,-11
   20554:	01c00713          	li	a4,28
   20558:	02f74c63          	blt	a4,a5,20590 <__divdf3+0x154>
   2055c:	01d00c93          	li	s9,29
   20560:	ff850413          	addi	s0,a0,-8
   20564:	40fc8cb3          	sub	s9,s9,a5
   20568:	008494b3          	sll	s1,s1,s0
   2056c:	0199dcb3          	srl	s9,s3,s9
   20570:	009cecb3          	or	s9,s9,s1
   20574:	00899433          	sll	s0,s3,s0
   20578:	c0d00913          	li	s2,-1011
   2057c:	40a90933          	sub	s2,s2,a0
   20580:	f41ff06f          	j	204c0 <__divdf3+0x84>
   20584:	218040ef          	jal	ra,2479c <__clzsi2>
   20588:	02050513          	addi	a0,a0,32
   2058c:	fc5ff06f          	j	20550 <__divdf3+0x114>
   20590:	fd850493          	addi	s1,a0,-40
   20594:	00999cb3          	sll	s9,s3,s1
   20598:	00000413          	li	s0,0
   2059c:	fddff06f          	j	20578 <__divdf3+0x13c>
   205a0:	00a4ecb3          	or	s9,s1,a0
   205a4:	020c8463          	beqz	s9,205cc <__divdf3+0x190>
   205a8:	00050413          	mv	s0,a0
   205ac:	00048c93          	mv	s9,s1
   205b0:	7ff00913          	li	s2,2047
   205b4:	00300c13          	li	s8,3
   205b8:	f0dff06f          	j	204c4 <__divdf3+0x88>
   205bc:	00000413          	li	s0,0
   205c0:	00000913          	li	s2,0
   205c4:	00100c13          	li	s8,1
   205c8:	efdff06f          	j	204c4 <__divdf3+0x88>
   205cc:	00000413          	li	s0,0
   205d0:	7ff00913          	li	s2,2047
   205d4:	00200c13          	li	s8,2
   205d8:	eedff06f          	j	204c4 <__divdf3+0x88>
   205dc:	0149e833          	or	a6,s3,s4
   205e0:	06080e63          	beqz	a6,2065c <__divdf3+0x220>
   205e4:	04098063          	beqz	s3,20624 <__divdf3+0x1e8>
   205e8:	00098513          	mv	a0,s3
   205ec:	1b0040ef          	jal	ra,2479c <__clzsi2>
   205f0:	ff550793          	addi	a5,a0,-11
   205f4:	01c00713          	li	a4,28
   205f8:	02f74e63          	blt	a4,a5,20634 <__divdf3+0x1f8>
   205fc:	01d00693          	li	a3,29
   20600:	ff850813          	addi	a6,a0,-8
   20604:	40f686b3          	sub	a3,a3,a5
   20608:	010995b3          	sll	a1,s3,a6
   2060c:	00da56b3          	srl	a3,s4,a3
   20610:	00b6e9b3          	or	s3,a3,a1
   20614:	010a1833          	sll	a6,s4,a6
   20618:	c0d00713          	li	a4,-1011
   2061c:	40a70533          	sub	a0,a4,a0
   20620:	ee5ff06f          	j	20504 <__divdf3+0xc8>
   20624:	000a0513          	mv	a0,s4
   20628:	174040ef          	jal	ra,2479c <__clzsi2>
   2062c:	02050513          	addi	a0,a0,32
   20630:	fc1ff06f          	j	205f0 <__divdf3+0x1b4>
   20634:	fd850593          	addi	a1,a0,-40
   20638:	00ba19b3          	sll	s3,s4,a1
   2063c:	00000813          	li	a6,0
   20640:	fd9ff06f          	j	20618 <__divdf3+0x1dc>
   20644:	0149e833          	or	a6,s3,s4
   20648:	02080263          	beqz	a6,2066c <__divdf3+0x230>
   2064c:	000a0813          	mv	a6,s4
   20650:	7ff00513          	li	a0,2047
   20654:	00300693          	li	a3,3
   20658:	eb1ff06f          	j	20508 <__divdf3+0xcc>
   2065c:	00000993          	li	s3,0
   20660:	00000513          	li	a0,0
   20664:	00100693          	li	a3,1
   20668:	ea1ff06f          	j	20508 <__divdf3+0xcc>
   2066c:	00000993          	li	s3,0
   20670:	7ff00513          	li	a0,2047
   20674:	00200693          	li	a3,2
   20678:	e91ff06f          	j	20508 <__divdf3+0xcc>
   2067c:	0199e663          	bltu	s3,s9,20688 <__divdf3+0x24c>
   20680:	453c9463          	bne	s9,s3,20ac8 <__divdf3+0x68c>
   20684:	45046263          	bltu	s0,a6,20ac8 <__divdf3+0x68c>
   20688:	01fc9713          	slli	a4,s9,0x1f
   2068c:	00145793          	srli	a5,s0,0x1
   20690:	01f41d93          	slli	s11,s0,0x1f
   20694:	001cdc93          	srli	s9,s9,0x1
   20698:	00f76433          	or	s0,a4,a5
   2069c:	00899593          	slli	a1,s3,0x8
   206a0:	01885a93          	srli	s5,a6,0x18
   206a4:	00baeab3          	or	s5,s5,a1
   206a8:	0105db93          	srli	s7,a1,0x10
   206ac:	000b8593          	mv	a1,s7
   206b0:	010a9c13          	slli	s8,s5,0x10
   206b4:	000c8513          	mv	a0,s9
   206b8:	00881b13          	slli	s6,a6,0x8
   206bc:	010c5c13          	srli	s8,s8,0x10
   206c0:	030040ef          	jal	ra,246f0 <__udivsi3>
   206c4:	00050593          	mv	a1,a0
   206c8:	00050d13          	mv	s10,a0
   206cc:	000c0513          	mv	a0,s8
   206d0:	7f5030ef          	jal	ra,246c4 <__mulsi3>
   206d4:	00050993          	mv	s3,a0
   206d8:	000b8593          	mv	a1,s7
   206dc:	000c8513          	mv	a0,s9
   206e0:	058040ef          	jal	ra,24738 <__umodsi3>
   206e4:	01051513          	slli	a0,a0,0x10
   206e8:	01045713          	srli	a4,s0,0x10
   206ec:	00a76733          	or	a4,a4,a0
   206f0:	000d0a13          	mv	s4,s10
   206f4:	01377e63          	bgeu	a4,s3,20710 <__divdf3+0x2d4>
   206f8:	01570733          	add	a4,a4,s5
   206fc:	fffd0a13          	addi	s4,s10,-1
   20700:	01576863          	bltu	a4,s5,20710 <__divdf3+0x2d4>
   20704:	01377663          	bgeu	a4,s3,20710 <__divdf3+0x2d4>
   20708:	ffed0a13          	addi	s4,s10,-2
   2070c:	01570733          	add	a4,a4,s5
   20710:	413709b3          	sub	s3,a4,s3
   20714:	000b8593          	mv	a1,s7
   20718:	00098513          	mv	a0,s3
   2071c:	7d5030ef          	jal	ra,246f0 <__udivsi3>
   20720:	00050593          	mv	a1,a0
   20724:	00050d13          	mv	s10,a0
   20728:	000c0513          	mv	a0,s8
   2072c:	799030ef          	jal	ra,246c4 <__mulsi3>
   20730:	00050c93          	mv	s9,a0
   20734:	000b8593          	mv	a1,s7
   20738:	00098513          	mv	a0,s3
   2073c:	7fd030ef          	jal	ra,24738 <__umodsi3>
   20740:	01041413          	slli	s0,s0,0x10
   20744:	01051513          	slli	a0,a0,0x10
   20748:	01045413          	srli	s0,s0,0x10
   2074c:	00a46433          	or	s0,s0,a0
   20750:	000d0793          	mv	a5,s10
   20754:	01947e63          	bgeu	s0,s9,20770 <__divdf3+0x334>
   20758:	01540433          	add	s0,s0,s5
   2075c:	fffd0793          	addi	a5,s10,-1
   20760:	01546863          	bltu	s0,s5,20770 <__divdf3+0x334>
   20764:	01947663          	bgeu	s0,s9,20770 <__divdf3+0x334>
   20768:	ffed0793          	addi	a5,s10,-2
   2076c:	01540433          	add	s0,s0,s5
   20770:	010a1813          	slli	a6,s4,0x10
   20774:	00010337          	lui	t1,0x10
   20778:	00f86833          	or	a6,a6,a5
   2077c:	41940433          	sub	s0,s0,s9
   20780:	fff30c93          	addi	s9,t1,-1 # ffff <register_fini-0x75>
   20784:	019878b3          	and	a7,a6,s9
   20788:	019b7cb3          	and	s9,s6,s9
   2078c:	01085713          	srli	a4,a6,0x10
   20790:	010b5d13          	srli	s10,s6,0x10
   20794:	00088513          	mv	a0,a7
   20798:	000c8593          	mv	a1,s9
   2079c:	729030ef          	jal	ra,246c4 <__mulsi3>
   207a0:	00050793          	mv	a5,a0
   207a4:	000d0593          	mv	a1,s10
   207a8:	00088513          	mv	a0,a7
   207ac:	719030ef          	jal	ra,246c4 <__mulsi3>
   207b0:	00050a13          	mv	s4,a0
   207b4:	000c8593          	mv	a1,s9
   207b8:	00070513          	mv	a0,a4
   207bc:	709030ef          	jal	ra,246c4 <__mulsi3>
   207c0:	00050893          	mv	a7,a0
   207c4:	000d0593          	mv	a1,s10
   207c8:	00070513          	mv	a0,a4
   207cc:	6f9030ef          	jal	ra,246c4 <__mulsi3>
   207d0:	0107d713          	srli	a4,a5,0x10
   207d4:	011a0a33          	add	s4,s4,a7
   207d8:	01470733          	add	a4,a4,s4
   207dc:	01177463          	bgeu	a4,a7,207e4 <__divdf3+0x3a8>
   207e0:	00650533          	add	a0,a0,t1
   207e4:	01075693          	srli	a3,a4,0x10
   207e8:	00a686b3          	add	a3,a3,a0
   207ec:	00010537          	lui	a0,0x10
   207f0:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   207f4:	00a77a33          	and	s4,a4,a0
   207f8:	010a1a13          	slli	s4,s4,0x10
   207fc:	00a7f7b3          	and	a5,a5,a0
   20800:	00fa0a33          	add	s4,s4,a5
   20804:	00d46863          	bltu	s0,a3,20814 <__divdf3+0x3d8>
   20808:	00080993          	mv	s3,a6
   2080c:	04d41463          	bne	s0,a3,20854 <__divdf3+0x418>
   20810:	054df263          	bgeu	s11,s4,20854 <__divdf3+0x418>
   20814:	016d8db3          	add	s11,s11,s6
   20818:	016db7b3          	sltu	a5,s11,s6
   2081c:	015787b3          	add	a5,a5,s5
   20820:	00f40433          	add	s0,s0,a5
   20824:	fff80993          	addi	s3,a6,-1
   20828:	008ae663          	bltu	s5,s0,20834 <__divdf3+0x3f8>
   2082c:	028a9463          	bne	s5,s0,20854 <__divdf3+0x418>
   20830:	036de263          	bltu	s11,s6,20854 <__divdf3+0x418>
   20834:	00d46663          	bltu	s0,a3,20840 <__divdf3+0x404>
   20838:	00869e63          	bne	a3,s0,20854 <__divdf3+0x418>
   2083c:	014dfc63          	bgeu	s11,s4,20854 <__divdf3+0x418>
   20840:	016d8db3          	add	s11,s11,s6
   20844:	016db7b3          	sltu	a5,s11,s6
   20848:	015787b3          	add	a5,a5,s5
   2084c:	ffe80993          	addi	s3,a6,-2
   20850:	00f40433          	add	s0,s0,a5
   20854:	414d8a33          	sub	s4,s11,s4
   20858:	40d40433          	sub	s0,s0,a3
   2085c:	014db7b3          	sltu	a5,s11,s4
   20860:	40f40433          	sub	s0,s0,a5
   20864:	fff00813          	li	a6,-1
   20868:	1a8a8063          	beq	s5,s0,20a08 <__divdf3+0x5cc>
   2086c:	000b8593          	mv	a1,s7
   20870:	00040513          	mv	a0,s0
   20874:	67d030ef          	jal	ra,246f0 <__udivsi3>
   20878:	00050593          	mv	a1,a0
   2087c:	00a12623          	sw	a0,12(sp)
   20880:	000c0513          	mv	a0,s8
   20884:	641030ef          	jal	ra,246c4 <__mulsi3>
   20888:	00a12423          	sw	a0,8(sp)
   2088c:	000b8593          	mv	a1,s7
   20890:	00040513          	mv	a0,s0
   20894:	6a5030ef          	jal	ra,24738 <__umodsi3>
   20898:	00c12683          	lw	a3,12(sp)
   2089c:	00812703          	lw	a4,8(sp)
   208a0:	01051513          	slli	a0,a0,0x10
   208a4:	010a5793          	srli	a5,s4,0x10
   208a8:	00a7e7b3          	or	a5,a5,a0
   208ac:	00068d93          	mv	s11,a3
   208b0:	00e7fe63          	bgeu	a5,a4,208cc <__divdf3+0x490>
   208b4:	015787b3          	add	a5,a5,s5
   208b8:	fff68d93          	addi	s11,a3,-1
   208bc:	0157e863          	bltu	a5,s5,208cc <__divdf3+0x490>
   208c0:	00e7f663          	bgeu	a5,a4,208cc <__divdf3+0x490>
   208c4:	ffe68d93          	addi	s11,a3,-2
   208c8:	015787b3          	add	a5,a5,s5
   208cc:	40e78433          	sub	s0,a5,a4
   208d0:	000b8593          	mv	a1,s7
   208d4:	00040513          	mv	a0,s0
   208d8:	619030ef          	jal	ra,246f0 <__udivsi3>
   208dc:	00050593          	mv	a1,a0
   208e0:	00a12423          	sw	a0,8(sp)
   208e4:	000c0513          	mv	a0,s8
   208e8:	5dd030ef          	jal	ra,246c4 <__mulsi3>
   208ec:	00050c13          	mv	s8,a0
   208f0:	000b8593          	mv	a1,s7
   208f4:	00040513          	mv	a0,s0
   208f8:	641030ef          	jal	ra,24738 <__umodsi3>
   208fc:	00812703          	lw	a4,8(sp)
   20900:	010a1a13          	slli	s4,s4,0x10
   20904:	01051793          	slli	a5,a0,0x10
   20908:	010a5a13          	srli	s4,s4,0x10
   2090c:	00fa67b3          	or	a5,s4,a5
   20910:	00070693          	mv	a3,a4
   20914:	0187fe63          	bgeu	a5,s8,20930 <__divdf3+0x4f4>
   20918:	015787b3          	add	a5,a5,s5
   2091c:	fff70693          	addi	a3,a4,-1
   20920:	0157e863          	bltu	a5,s5,20930 <__divdf3+0x4f4>
   20924:	0187f663          	bgeu	a5,s8,20930 <__divdf3+0x4f4>
   20928:	ffe70693          	addi	a3,a4,-2
   2092c:	015787b3          	add	a5,a5,s5
   20930:	010d9893          	slli	a7,s11,0x10
   20934:	00d8e8b3          	or	a7,a7,a3
   20938:	01089313          	slli	t1,a7,0x10
   2093c:	01035313          	srli	t1,t1,0x10
   20940:	418787b3          	sub	a5,a5,s8
   20944:	0108d713          	srli	a4,a7,0x10
   20948:	00030513          	mv	a0,t1
   2094c:	000c8593          	mv	a1,s9
   20950:	575030ef          	jal	ra,246c4 <__mulsi3>
   20954:	00050813          	mv	a6,a0
   20958:	000d0593          	mv	a1,s10
   2095c:	00030513          	mv	a0,t1
   20960:	565030ef          	jal	ra,246c4 <__mulsi3>
   20964:	00050313          	mv	t1,a0
   20968:	000c8593          	mv	a1,s9
   2096c:	00070513          	mv	a0,a4
   20970:	555030ef          	jal	ra,246c4 <__mulsi3>
   20974:	00050e13          	mv	t3,a0
   20978:	000d0593          	mv	a1,s10
   2097c:	00070513          	mv	a0,a4
   20980:	545030ef          	jal	ra,246c4 <__mulsi3>
   20984:	01085713          	srli	a4,a6,0x10
   20988:	01c30333          	add	t1,t1,t3
   2098c:	00670733          	add	a4,a4,t1
   20990:	01c77663          	bgeu	a4,t3,2099c <__divdf3+0x560>
   20994:	000106b7          	lui	a3,0x10
   20998:	00d50533          	add	a0,a0,a3
   2099c:	01075593          	srli	a1,a4,0x10
   209a0:	00a585b3          	add	a1,a1,a0
   209a4:	00010537          	lui	a0,0x10
   209a8:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   209ac:	00a776b3          	and	a3,a4,a0
   209b0:	01069693          	slli	a3,a3,0x10
   209b4:	00a87833          	and	a6,a6,a0
   209b8:	010686b3          	add	a3,a3,a6
   209bc:	00b7e863          	bltu	a5,a1,209cc <__divdf3+0x590>
   209c0:	24b79663          	bne	a5,a1,20c0c <__divdf3+0x7d0>
   209c4:	00088813          	mv	a6,a7
   209c8:	04068063          	beqz	a3,20a08 <__divdf3+0x5cc>
   209cc:	00fa8633          	add	a2,s5,a5
   209d0:	fff88813          	addi	a6,a7,-1
   209d4:	03566463          	bltu	a2,s5,209fc <__divdf3+0x5c0>
   209d8:	00b66663          	bltu	a2,a1,209e4 <__divdf3+0x5a8>
   209dc:	22b61663          	bne	a2,a1,20c08 <__divdf3+0x7cc>
   209e0:	02db7063          	bgeu	s6,a3,20a00 <__divdf3+0x5c4>
   209e4:	001b1793          	slli	a5,s6,0x1
   209e8:	0167bb33          	sltu	s6,a5,s6
   209ec:	015b0ab3          	add	s5,s6,s5
   209f0:	ffe88813          	addi	a6,a7,-2
   209f4:	01560633          	add	a2,a2,s5
   209f8:	00078b13          	mv	s6,a5
   209fc:	00b61463          	bne	a2,a1,20a04 <__divdf3+0x5c8>
   20a00:	00db0463          	beq	s6,a3,20a08 <__divdf3+0x5cc>
   20a04:	00186813          	ori	a6,a6,1
   20a08:	3ff90793          	addi	a5,s2,1023
   20a0c:	10f05e63          	blez	a5,20b28 <__divdf3+0x6ec>
   20a10:	00787713          	andi	a4,a6,7
   20a14:	02070063          	beqz	a4,20a34 <__divdf3+0x5f8>
   20a18:	00f87713          	andi	a4,a6,15
   20a1c:	00400693          	li	a3,4
   20a20:	00d70a63          	beq	a4,a3,20a34 <__divdf3+0x5f8>
   20a24:	00480693          	addi	a3,a6,4
   20a28:	0106b833          	sltu	a6,a3,a6
   20a2c:	010989b3          	add	s3,s3,a6
   20a30:	00068813          	mv	a6,a3
   20a34:	00799713          	slli	a4,s3,0x7
   20a38:	00075a63          	bgez	a4,20a4c <__divdf3+0x610>
   20a3c:	ff0007b7          	lui	a5,0xff000
   20a40:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefd902f>
   20a44:	00f9f9b3          	and	s3,s3,a5
   20a48:	40090793          	addi	a5,s2,1024
   20a4c:	7fe00713          	li	a4,2046
   20a50:	0af74663          	blt	a4,a5,20afc <__divdf3+0x6c0>
   20a54:	00385813          	srli	a6,a6,0x3
   20a58:	01d99713          	slli	a4,s3,0x1d
   20a5c:	01076733          	or	a4,a4,a6
   20a60:	0039d593          	srli	a1,s3,0x3
   20a64:	01479793          	slli	a5,a5,0x14
   20a68:	7ff006b7          	lui	a3,0x7ff00
   20a6c:	00c59593          	slli	a1,a1,0xc
   20a70:	04c12083          	lw	ra,76(sp)
   20a74:	04812403          	lw	s0,72(sp)
   20a78:	00d7f7b3          	and	a5,a5,a3
   20a7c:	00c5d593          	srli	a1,a1,0xc
   20a80:	00b7e5b3          	or	a1,a5,a1
   20a84:	01f49493          	slli	s1,s1,0x1f
   20a88:	0095e7b3          	or	a5,a1,s1
   20a8c:	04012903          	lw	s2,64(sp)
   20a90:	04412483          	lw	s1,68(sp)
   20a94:	03c12983          	lw	s3,60(sp)
   20a98:	03812a03          	lw	s4,56(sp)
   20a9c:	03412a83          	lw	s5,52(sp)
   20aa0:	03012b03          	lw	s6,48(sp)
   20aa4:	02c12b83          	lw	s7,44(sp)
   20aa8:	02812c03          	lw	s8,40(sp)
   20aac:	02412c83          	lw	s9,36(sp)
   20ab0:	02012d03          	lw	s10,32(sp)
   20ab4:	01c12d83          	lw	s11,28(sp)
   20ab8:	00070513          	mv	a0,a4
   20abc:	00078593          	mv	a1,a5
   20ac0:	05010113          	addi	sp,sp,80
   20ac4:	00008067          	ret
   20ac8:	fff90913          	addi	s2,s2,-1
   20acc:	00000d93          	li	s11,0
   20ad0:	bcdff06f          	j	2069c <__divdf3+0x260>
   20ad4:	000a8493          	mv	s1,s5
   20ad8:	000c8993          	mv	s3,s9
   20adc:	00040813          	mv	a6,s0
   20ae0:	000c0693          	mv	a3,s8
   20ae4:	00300793          	li	a5,3
   20ae8:	0ef68863          	beq	a3,a5,20bd8 <__divdf3+0x79c>
   20aec:	00100793          	li	a5,1
   20af0:	0ef68e63          	beq	a3,a5,20bec <__divdf3+0x7b0>
   20af4:	00200793          	li	a5,2
   20af8:	f0f698e3          	bne	a3,a5,20a08 <__divdf3+0x5cc>
   20afc:	00000593          	li	a1,0
   20b00:	00000713          	li	a4,0
   20b04:	7ff00793          	li	a5,2047
   20b08:	f5dff06f          	j	20a64 <__divdf3+0x628>
   20b0c:	000b0493          	mv	s1,s6
   20b10:	fd5ff06f          	j	20ae4 <__divdf3+0x6a8>
   20b14:	000809b7          	lui	s3,0x80
   20b18:	00000813          	li	a6,0
   20b1c:	00000493          	li	s1,0
   20b20:	00300693          	li	a3,3
   20b24:	fc1ff06f          	j	20ae4 <__divdf3+0x6a8>
   20b28:	00100593          	li	a1,1
   20b2c:	40f585b3          	sub	a1,a1,a5
   20b30:	03800713          	li	a4,56
   20b34:	0ab74c63          	blt	a4,a1,20bec <__divdf3+0x7b0>
   20b38:	01f00713          	li	a4,31
   20b3c:	06b74463          	blt	a4,a1,20ba4 <__divdf3+0x768>
   20b40:	41e90913          	addi	s2,s2,1054
   20b44:	012997b3          	sll	a5,s3,s2
   20b48:	00b85733          	srl	a4,a6,a1
   20b4c:	01281933          	sll	s2,a6,s2
   20b50:	00e7e7b3          	or	a5,a5,a4
   20b54:	01203933          	snez	s2,s2
   20b58:	0127e7b3          	or	a5,a5,s2
   20b5c:	00b9d5b3          	srl	a1,s3,a1
   20b60:	0077f713          	andi	a4,a5,7
   20b64:	02070063          	beqz	a4,20b84 <__divdf3+0x748>
   20b68:	00f7f713          	andi	a4,a5,15
   20b6c:	00400693          	li	a3,4
   20b70:	00d70a63          	beq	a4,a3,20b84 <__divdf3+0x748>
   20b74:	00478713          	addi	a4,a5,4
   20b78:	00f737b3          	sltu	a5,a4,a5
   20b7c:	00f585b3          	add	a1,a1,a5
   20b80:	00070793          	mv	a5,a4
   20b84:	00859713          	slli	a4,a1,0x8
   20b88:	06074863          	bltz	a4,20bf8 <__divdf3+0x7bc>
   20b8c:	01d59713          	slli	a4,a1,0x1d
   20b90:	0037d793          	srli	a5,a5,0x3
   20b94:	00f76733          	or	a4,a4,a5
   20b98:	0035d593          	srli	a1,a1,0x3
   20b9c:	00000793          	li	a5,0
   20ba0:	ec5ff06f          	j	20a64 <__divdf3+0x628>
   20ba4:	fe100713          	li	a4,-31
   20ba8:	40f707b3          	sub	a5,a4,a5
   20bac:	02000693          	li	a3,32
   20bb0:	00f9d7b3          	srl	a5,s3,a5
   20bb4:	00000713          	li	a4,0
   20bb8:	00d58663          	beq	a1,a3,20bc4 <__divdf3+0x788>
   20bbc:	43e90913          	addi	s2,s2,1086
   20bc0:	01299733          	sll	a4,s3,s2
   20bc4:	01076733          	or	a4,a4,a6
   20bc8:	00e03733          	snez	a4,a4
   20bcc:	00e7e7b3          	or	a5,a5,a4
   20bd0:	00000593          	li	a1,0
   20bd4:	f8dff06f          	j	20b60 <__divdf3+0x724>
   20bd8:	000805b7          	lui	a1,0x80
   20bdc:	00000713          	li	a4,0
   20be0:	7ff00793          	li	a5,2047
   20be4:	00000493          	li	s1,0
   20be8:	e7dff06f          	j	20a64 <__divdf3+0x628>
   20bec:	00000593          	li	a1,0
   20bf0:	00000713          	li	a4,0
   20bf4:	fa9ff06f          	j	20b9c <__divdf3+0x760>
   20bf8:	00000593          	li	a1,0
   20bfc:	00000713          	li	a4,0
   20c00:	00100793          	li	a5,1
   20c04:	e61ff06f          	j	20a64 <__divdf3+0x628>
   20c08:	00080893          	mv	a7,a6
   20c0c:	00088813          	mv	a6,a7
   20c10:	df5ff06f          	j	20a04 <__divdf3+0x5c8>

00020c14 <__muldf3>:
   20c14:	fd010113          	addi	sp,sp,-48
   20c18:	0145d793          	srli	a5,a1,0x14
   20c1c:	02812423          	sw	s0,40(sp)
   20c20:	02912223          	sw	s1,36(sp)
   20c24:	01312e23          	sw	s3,28(sp)
   20c28:	01412c23          	sw	s4,24(sp)
   20c2c:	01512a23          	sw	s5,20(sp)
   20c30:	00c59493          	slli	s1,a1,0xc
   20c34:	02112623          	sw	ra,44(sp)
   20c38:	03212023          	sw	s2,32(sp)
   20c3c:	01612823          	sw	s6,16(sp)
   20c40:	01712623          	sw	s7,12(sp)
   20c44:	01579713          	slli	a4,a5,0x15
   20c48:	00050413          	mv	s0,a0
   20c4c:	00060993          	mv	s3,a2
   20c50:	00068a93          	mv	s5,a3
   20c54:	00c4d493          	srli	s1,s1,0xc
   20c58:	01f5da13          	srli	s4,a1,0x1f
   20c5c:	0a070663          	beqz	a4,20d08 <__muldf3+0xf4>
   20c60:	7ff7fb13          	andi	s6,a5,2047
   20c64:	7ff00793          	li	a5,2047
   20c68:	10fb0263          	beq	s6,a5,20d6c <__muldf3+0x158>
   20c6c:	01d55793          	srli	a5,a0,0x1d
   20c70:	00349493          	slli	s1,s1,0x3
   20c74:	0097e4b3          	or	s1,a5,s1
   20c78:	008007b7          	lui	a5,0x800
   20c7c:	00f4e4b3          	or	s1,s1,a5
   20c80:	00351913          	slli	s2,a0,0x3
   20c84:	c01b0b13          	addi	s6,s6,-1023
   20c88:	00000b93          	li	s7,0
   20c8c:	014ad793          	srli	a5,s5,0x14
   20c90:	00ca9413          	slli	s0,s5,0xc
   20c94:	01579713          	slli	a4,a5,0x15
   20c98:	00c45413          	srli	s0,s0,0xc
   20c9c:	7ff7f513          	andi	a0,a5,2047
   20ca0:	01fada93          	srli	s5,s5,0x1f
   20ca4:	10070063          	beqz	a4,20da4 <__muldf3+0x190>
   20ca8:	7ff00793          	li	a5,2047
   20cac:	16f50063          	beq	a0,a5,20e0c <__muldf3+0x1f8>
   20cb0:	01d9d793          	srli	a5,s3,0x1d
   20cb4:	00341413          	slli	s0,s0,0x3
   20cb8:	0087e433          	or	s0,a5,s0
   20cbc:	008007b7          	lui	a5,0x800
   20cc0:	00f46433          	or	s0,s0,a5
   20cc4:	c0150513          	addi	a0,a0,-1023
   20cc8:	00399793          	slli	a5,s3,0x3
   20ccc:	00000713          	li	a4,0
   20cd0:	002b9693          	slli	a3,s7,0x2
   20cd4:	00e6e6b3          	or	a3,a3,a4
   20cd8:	00ab0b33          	add	s6,s6,a0
   20cdc:	fff68693          	addi	a3,a3,-1 # 7fefffff <__BSS_END__+0x7fed902f>
   20ce0:	00e00613          	li	a2,14
   20ce4:	015a4833          	xor	a6,s4,s5
   20ce8:	001b0893          	addi	a7,s6,1
   20cec:	14d66c63          	bltu	a2,a3,20e44 <__muldf3+0x230>
   20cf0:	00025637          	lui	a2,0x25
   20cf4:	00269693          	slli	a3,a3,0x2
   20cf8:	36c60613          	addi	a2,a2,876 # 2536c <_ctype_+0x140>
   20cfc:	00c686b3          	add	a3,a3,a2
   20d00:	0006a683          	lw	a3,0(a3)
   20d04:	00068067          	jr	a3
   20d08:	00a4e933          	or	s2,s1,a0
   20d0c:	06090c63          	beqz	s2,20d84 <__muldf3+0x170>
   20d10:	04048063          	beqz	s1,20d50 <__muldf3+0x13c>
   20d14:	00048513          	mv	a0,s1
   20d18:	285030ef          	jal	ra,2479c <__clzsi2>
   20d1c:	ff550713          	addi	a4,a0,-11
   20d20:	01c00793          	li	a5,28
   20d24:	02e7cc63          	blt	a5,a4,20d5c <__muldf3+0x148>
   20d28:	01d00793          	li	a5,29
   20d2c:	ff850913          	addi	s2,a0,-8
   20d30:	40e787b3          	sub	a5,a5,a4
   20d34:	012494b3          	sll	s1,s1,s2
   20d38:	00f457b3          	srl	a5,s0,a5
   20d3c:	0097e4b3          	or	s1,a5,s1
   20d40:	01241933          	sll	s2,s0,s2
   20d44:	c0d00b13          	li	s6,-1011
   20d48:	40ab0b33          	sub	s6,s6,a0
   20d4c:	f3dff06f          	j	20c88 <__muldf3+0x74>
   20d50:	24d030ef          	jal	ra,2479c <__clzsi2>
   20d54:	02050513          	addi	a0,a0,32
   20d58:	fc5ff06f          	j	20d1c <__muldf3+0x108>
   20d5c:	fd850493          	addi	s1,a0,-40
   20d60:	009414b3          	sll	s1,s0,s1
   20d64:	00000913          	li	s2,0
   20d68:	fddff06f          	j	20d44 <__muldf3+0x130>
   20d6c:	00a4e933          	or	s2,s1,a0
   20d70:	02090263          	beqz	s2,20d94 <__muldf3+0x180>
   20d74:	00050913          	mv	s2,a0
   20d78:	7ff00b13          	li	s6,2047
   20d7c:	00300b93          	li	s7,3
   20d80:	f0dff06f          	j	20c8c <__muldf3+0x78>
   20d84:	00000493          	li	s1,0
   20d88:	00000b13          	li	s6,0
   20d8c:	00100b93          	li	s7,1
   20d90:	efdff06f          	j	20c8c <__muldf3+0x78>
   20d94:	00000493          	li	s1,0
   20d98:	7ff00b13          	li	s6,2047
   20d9c:	00200b93          	li	s7,2
   20da0:	eedff06f          	j	20c8c <__muldf3+0x78>
   20da4:	013467b3          	or	a5,s0,s3
   20da8:	06078e63          	beqz	a5,20e24 <__muldf3+0x210>
   20dac:	04040063          	beqz	s0,20dec <__muldf3+0x1d8>
   20db0:	00040513          	mv	a0,s0
   20db4:	1e9030ef          	jal	ra,2479c <__clzsi2>
   20db8:	ff550693          	addi	a3,a0,-11
   20dbc:	01c00793          	li	a5,28
   20dc0:	02d7ce63          	blt	a5,a3,20dfc <__muldf3+0x1e8>
   20dc4:	01d00713          	li	a4,29
   20dc8:	ff850793          	addi	a5,a0,-8
   20dcc:	40d70733          	sub	a4,a4,a3
   20dd0:	00f41433          	sll	s0,s0,a5
   20dd4:	00e9d733          	srl	a4,s3,a4
   20dd8:	00876433          	or	s0,a4,s0
   20ddc:	00f997b3          	sll	a5,s3,a5
   20de0:	c0d00713          	li	a4,-1011
   20de4:	40a70533          	sub	a0,a4,a0
   20de8:	ee5ff06f          	j	20ccc <__muldf3+0xb8>
   20dec:	00098513          	mv	a0,s3
   20df0:	1ad030ef          	jal	ra,2479c <__clzsi2>
   20df4:	02050513          	addi	a0,a0,32
   20df8:	fc1ff06f          	j	20db8 <__muldf3+0x1a4>
   20dfc:	fd850413          	addi	s0,a0,-40
   20e00:	00899433          	sll	s0,s3,s0
   20e04:	00000793          	li	a5,0
   20e08:	fd9ff06f          	j	20de0 <__muldf3+0x1cc>
   20e0c:	013467b3          	or	a5,s0,s3
   20e10:	02078263          	beqz	a5,20e34 <__muldf3+0x220>
   20e14:	00098793          	mv	a5,s3
   20e18:	7ff00513          	li	a0,2047
   20e1c:	00300713          	li	a4,3
   20e20:	eb1ff06f          	j	20cd0 <__muldf3+0xbc>
   20e24:	00000413          	li	s0,0
   20e28:	00000513          	li	a0,0
   20e2c:	00100713          	li	a4,1
   20e30:	ea1ff06f          	j	20cd0 <__muldf3+0xbc>
   20e34:	00000413          	li	s0,0
   20e38:	7ff00513          	li	a0,2047
   20e3c:	00200713          	li	a4,2
   20e40:	e91ff06f          	j	20cd0 <__muldf3+0xbc>
   20e44:	00010ab7          	lui	s5,0x10
   20e48:	fffa8313          	addi	t1,s5,-1 # ffff <register_fini-0x75>
   20e4c:	01095f93          	srli	t6,s2,0x10
   20e50:	0067f9b3          	and	s3,a5,t1
   20e54:	00697933          	and	s2,s2,t1
   20e58:	0107d293          	srli	t0,a5,0x10
   20e5c:	00090513          	mv	a0,s2
   20e60:	00098593          	mv	a1,s3
   20e64:	061030ef          	jal	ra,246c4 <__mulsi3>
   20e68:	00050a13          	mv	s4,a0
   20e6c:	00028593          	mv	a1,t0
   20e70:	00090513          	mv	a0,s2
   20e74:	051030ef          	jal	ra,246c4 <__mulsi3>
   20e78:	00050e93          	mv	t4,a0
   20e7c:	00098593          	mv	a1,s3
   20e80:	000f8513          	mv	a0,t6
   20e84:	041030ef          	jal	ra,246c4 <__mulsi3>
   20e88:	00050393          	mv	t2,a0
   20e8c:	00028593          	mv	a1,t0
   20e90:	000f8513          	mv	a0,t6
   20e94:	031030ef          	jal	ra,246c4 <__mulsi3>
   20e98:	010a5713          	srli	a4,s4,0x10
   20e9c:	007e8eb3          	add	t4,t4,t2
   20ea0:	01d70733          	add	a4,a4,t4
   20ea4:	00050f13          	mv	t5,a0
   20ea8:	00777463          	bgeu	a4,t2,20eb0 <__muldf3+0x29c>
   20eac:	01550f33          	add	t5,a0,s5
   20eb0:	00677e33          	and	t3,a4,t1
   20eb4:	006a7533          	and	a0,s4,t1
   20eb8:	01045393          	srli	t2,s0,0x10
   20ebc:	010e1e13          	slli	t3,t3,0x10
   20ec0:	00647433          	and	s0,s0,t1
   20ec4:	00ae0e33          	add	t3,t3,a0
   20ec8:	01075793          	srli	a5,a4,0x10
   20ecc:	00090513          	mv	a0,s2
   20ed0:	00040593          	mv	a1,s0
   20ed4:	7f0030ef          	jal	ra,246c4 <__mulsi3>
   20ed8:	00050e93          	mv	t4,a0
   20edc:	00038593          	mv	a1,t2
   20ee0:	00090513          	mv	a0,s2
   20ee4:	7e0030ef          	jal	ra,246c4 <__mulsi3>
   20ee8:	00050313          	mv	t1,a0
   20eec:	00040593          	mv	a1,s0
   20ef0:	000f8513          	mv	a0,t6
   20ef4:	7d0030ef          	jal	ra,246c4 <__mulsi3>
   20ef8:	00050913          	mv	s2,a0
   20efc:	00038593          	mv	a1,t2
   20f00:	000f8513          	mv	a0,t6
   20f04:	7c0030ef          	jal	ra,246c4 <__mulsi3>
   20f08:	010ed693          	srli	a3,t4,0x10
   20f0c:	01230333          	add	t1,t1,s2
   20f10:	006686b3          	add	a3,a3,t1
   20f14:	00050713          	mv	a4,a0
   20f18:	0126f663          	bgeu	a3,s2,20f24 <__muldf3+0x310>
   20f1c:	00010637          	lui	a2,0x10
   20f20:	00c50733          	add	a4,a0,a2
   20f24:	0106df93          	srli	t6,a3,0x10
   20f28:	00010bb7          	lui	s7,0x10
   20f2c:	00ef8fb3          	add	t6,t6,a4
   20f30:	fffb8713          	addi	a4,s7,-1 # ffff <register_fini-0x75>
   20f34:	00e6f6b3          	and	a3,a3,a4
   20f38:	01069693          	slli	a3,a3,0x10
   20f3c:	00eefeb3          	and	t4,t4,a4
   20f40:	01d68eb3          	add	t4,a3,t4
   20f44:	0104da93          	srli	s5,s1,0x10
   20f48:	00e4f4b3          	and	s1,s1,a4
   20f4c:	01d78933          	add	s2,a5,t4
   20f50:	00048513          	mv	a0,s1
   20f54:	00098593          	mv	a1,s3
   20f58:	76c030ef          	jal	ra,246c4 <__mulsi3>
   20f5c:	00050a13          	mv	s4,a0
   20f60:	00028593          	mv	a1,t0
   20f64:	00048513          	mv	a0,s1
   20f68:	75c030ef          	jal	ra,246c4 <__mulsi3>
   20f6c:	00050713          	mv	a4,a0
   20f70:	00098593          	mv	a1,s3
   20f74:	000a8513          	mv	a0,s5
   20f78:	74c030ef          	jal	ra,246c4 <__mulsi3>
   20f7c:	00050313          	mv	t1,a0
   20f80:	00028593          	mv	a1,t0
   20f84:	000a8513          	mv	a0,s5
   20f88:	73c030ef          	jal	ra,246c4 <__mulsi3>
   20f8c:	010a5793          	srli	a5,s4,0x10
   20f90:	00670733          	add	a4,a4,t1
   20f94:	00e787b3          	add	a5,a5,a4
   20f98:	00050293          	mv	t0,a0
   20f9c:	0067f463          	bgeu	a5,t1,20fa4 <__muldf3+0x390>
   20fa0:	017502b3          	add	t0,a0,s7
   20fa4:	0107d513          	srli	a0,a5,0x10
   20fa8:	00010bb7          	lui	s7,0x10
   20fac:	005502b3          	add	t0,a0,t0
   20fb0:	fffb8513          	addi	a0,s7,-1 # ffff <register_fini-0x75>
   20fb4:	00a7f333          	and	t1,a5,a0
   20fb8:	00aa7a33          	and	s4,s4,a0
   20fbc:	01031313          	slli	t1,t1,0x10
   20fc0:	01430333          	add	t1,t1,s4
   20fc4:	00048513          	mv	a0,s1
   20fc8:	00040593          	mv	a1,s0
   20fcc:	6f8030ef          	jal	ra,246c4 <__mulsi3>
   20fd0:	00050993          	mv	s3,a0
   20fd4:	00038593          	mv	a1,t2
   20fd8:	00048513          	mv	a0,s1
   20fdc:	6e8030ef          	jal	ra,246c4 <__mulsi3>
   20fe0:	00050793          	mv	a5,a0
   20fe4:	00040593          	mv	a1,s0
   20fe8:	000a8513          	mv	a0,s5
   20fec:	6d8030ef          	jal	ra,246c4 <__mulsi3>
   20ff0:	00050413          	mv	s0,a0
   20ff4:	00038593          	mv	a1,t2
   20ff8:	000a8513          	mv	a0,s5
   20ffc:	6c8030ef          	jal	ra,246c4 <__mulsi3>
   21000:	0109d593          	srli	a1,s3,0x10
   21004:	008787b3          	add	a5,a5,s0
   21008:	00f585b3          	add	a1,a1,a5
   2100c:	0085f463          	bgeu	a1,s0,21014 <__muldf3+0x400>
   21010:	01750533          	add	a0,a0,s7
   21014:	00010737          	lui	a4,0x10
   21018:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   2101c:	00e5f6b3          	and	a3,a1,a4
   21020:	01069693          	slli	a3,a3,0x10
   21024:	00e9f733          	and	a4,s3,a4
   21028:	01e90633          	add	a2,s2,t5
   2102c:	00e686b3          	add	a3,a3,a4
   21030:	01d63eb3          	sltu	t4,a2,t4
   21034:	01f68733          	add	a4,a3,t6
   21038:	01d706b3          	add	a3,a4,t4
   2103c:	00660633          	add	a2,a2,t1
   21040:	00663333          	sltu	t1,a2,t1
   21044:	00568f33          	add	t5,a3,t0
   21048:	006f03b3          	add	t2,t5,t1
   2104c:	01f73733          	sltu	a4,a4,t6
   21050:	01d6beb3          	sltu	t4,a3,t4
   21054:	01d76733          	or	a4,a4,t4
   21058:	0105d593          	srli	a1,a1,0x10
   2105c:	005f32b3          	sltu	t0,t5,t0
   21060:	0063b333          	sltu	t1,t2,t1
   21064:	00961793          	slli	a5,a2,0x9
   21068:	00b70733          	add	a4,a4,a1
   2106c:	0062e333          	or	t1,t0,t1
   21070:	00670733          	add	a4,a4,t1
   21074:	01c7e7b3          	or	a5,a5,t3
   21078:	00a70533          	add	a0,a4,a0
   2107c:	00f037b3          	snez	a5,a5
   21080:	01765613          	srli	a2,a2,0x17
   21084:	00951513          	slli	a0,a0,0x9
   21088:	00939713          	slli	a4,t2,0x9
   2108c:	00c7e7b3          	or	a5,a5,a2
   21090:	0173d413          	srli	s0,t2,0x17
   21094:	00e7e7b3          	or	a5,a5,a4
   21098:	00751713          	slli	a4,a0,0x7
   2109c:	00856433          	or	s0,a0,s0
   210a0:	10075463          	bgez	a4,211a8 <__muldf3+0x594>
   210a4:	0017d713          	srli	a4,a5,0x1
   210a8:	0017f793          	andi	a5,a5,1
   210ac:	00f767b3          	or	a5,a4,a5
   210b0:	01f41713          	slli	a4,s0,0x1f
   210b4:	00e7e7b3          	or	a5,a5,a4
   210b8:	00145413          	srli	s0,s0,0x1
   210bc:	3ff88693          	addi	a3,a7,1023
   210c0:	0ed05863          	blez	a3,211b0 <__muldf3+0x59c>
   210c4:	0077f713          	andi	a4,a5,7
   210c8:	02070063          	beqz	a4,210e8 <__muldf3+0x4d4>
   210cc:	00f7f713          	andi	a4,a5,15
   210d0:	00400613          	li	a2,4
   210d4:	00c70a63          	beq	a4,a2,210e8 <__muldf3+0x4d4>
   210d8:	00478713          	addi	a4,a5,4 # 800004 <__BSS_END__+0x7d9034>
   210dc:	00f737b3          	sltu	a5,a4,a5
   210e0:	00f40433          	add	s0,s0,a5
   210e4:	00070793          	mv	a5,a4
   210e8:	00741713          	slli	a4,s0,0x7
   210ec:	00075a63          	bgez	a4,21100 <__muldf3+0x4ec>
   210f0:	ff000737          	lui	a4,0xff000
   210f4:	fff70713          	addi	a4,a4,-1 # feffffff <__BSS_END__+0xfefd902f>
   210f8:	00e47433          	and	s0,s0,a4
   210fc:	40088693          	addi	a3,a7,1024
   21100:	7fe00713          	li	a4,2046
   21104:	16d74863          	blt	a4,a3,21274 <__muldf3+0x660>
   21108:	0037d713          	srli	a4,a5,0x3
   2110c:	01d41793          	slli	a5,s0,0x1d
   21110:	00e7e7b3          	or	a5,a5,a4
   21114:	00345413          	srli	s0,s0,0x3
   21118:	01469713          	slli	a4,a3,0x14
   2111c:	00c41413          	slli	s0,s0,0xc
   21120:	7ff006b7          	lui	a3,0x7ff00
   21124:	00d77733          	and	a4,a4,a3
   21128:	00c45413          	srli	s0,s0,0xc
   2112c:	00876433          	or	s0,a4,s0
   21130:	01f81813          	slli	a6,a6,0x1f
   21134:	02c12083          	lw	ra,44(sp)
   21138:	01046733          	or	a4,s0,a6
   2113c:	02812403          	lw	s0,40(sp)
   21140:	02412483          	lw	s1,36(sp)
   21144:	02012903          	lw	s2,32(sp)
   21148:	01c12983          	lw	s3,28(sp)
   2114c:	01812a03          	lw	s4,24(sp)
   21150:	01412a83          	lw	s5,20(sp)
   21154:	01012b03          	lw	s6,16(sp)
   21158:	00c12b83          	lw	s7,12(sp)
   2115c:	00078513          	mv	a0,a5
   21160:	00070593          	mv	a1,a4
   21164:	03010113          	addi	sp,sp,48
   21168:	00008067          	ret
   2116c:	000a0813          	mv	a6,s4
   21170:	00048413          	mv	s0,s1
   21174:	00090793          	mv	a5,s2
   21178:	000b8713          	mv	a4,s7
   2117c:	00200693          	li	a3,2
   21180:	0ed70a63          	beq	a4,a3,21274 <__muldf3+0x660>
   21184:	00300693          	li	a3,3
   21188:	0cd70c63          	beq	a4,a3,21260 <__muldf3+0x64c>
   2118c:	00100693          	li	a3,1
   21190:	f2d716e3          	bne	a4,a3,210bc <__muldf3+0x4a8>
   21194:	00000413          	li	s0,0
   21198:	00000793          	li	a5,0
   2119c:	0880006f          	j	21224 <__muldf3+0x610>
   211a0:	000a8813          	mv	a6,s5
   211a4:	fd9ff06f          	j	2117c <__muldf3+0x568>
   211a8:	000b0893          	mv	a7,s6
   211ac:	f11ff06f          	j	210bc <__muldf3+0x4a8>
   211b0:	00100613          	li	a2,1
   211b4:	40d60633          	sub	a2,a2,a3
   211b8:	03800713          	li	a4,56
   211bc:	fcc74ce3          	blt	a4,a2,21194 <__muldf3+0x580>
   211c0:	01f00713          	li	a4,31
   211c4:	06c74463          	blt	a4,a2,2122c <__muldf3+0x618>
   211c8:	41e88893          	addi	a7,a7,1054
   211cc:	01141733          	sll	a4,s0,a7
   211d0:	00c7d6b3          	srl	a3,a5,a2
   211d4:	011797b3          	sll	a5,a5,a7
   211d8:	00d76733          	or	a4,a4,a3
   211dc:	00f037b3          	snez	a5,a5
   211e0:	00f767b3          	or	a5,a4,a5
   211e4:	00c45433          	srl	s0,s0,a2
   211e8:	0077f713          	andi	a4,a5,7
   211ec:	02070063          	beqz	a4,2120c <__muldf3+0x5f8>
   211f0:	00f7f713          	andi	a4,a5,15
   211f4:	00400693          	li	a3,4
   211f8:	00d70a63          	beq	a4,a3,2120c <__muldf3+0x5f8>
   211fc:	00478713          	addi	a4,a5,4
   21200:	00f737b3          	sltu	a5,a4,a5
   21204:	00f40433          	add	s0,s0,a5
   21208:	00070793          	mv	a5,a4
   2120c:	00841713          	slli	a4,s0,0x8
   21210:	06074a63          	bltz	a4,21284 <__muldf3+0x670>
   21214:	01d41713          	slli	a4,s0,0x1d
   21218:	0037d793          	srli	a5,a5,0x3
   2121c:	00f767b3          	or	a5,a4,a5
   21220:	00345413          	srli	s0,s0,0x3
   21224:	00000693          	li	a3,0
   21228:	ef1ff06f          	j	21118 <__muldf3+0x504>
   2122c:	fe100713          	li	a4,-31
   21230:	40d70733          	sub	a4,a4,a3
   21234:	02000593          	li	a1,32
   21238:	00e45733          	srl	a4,s0,a4
   2123c:	00000693          	li	a3,0
   21240:	00b60663          	beq	a2,a1,2124c <__muldf3+0x638>
   21244:	43e88893          	addi	a7,a7,1086
   21248:	011416b3          	sll	a3,s0,a7
   2124c:	00f6e7b3          	or	a5,a3,a5
   21250:	00f037b3          	snez	a5,a5
   21254:	00f767b3          	or	a5,a4,a5
   21258:	00000413          	li	s0,0
   2125c:	f8dff06f          	j	211e8 <__muldf3+0x5d4>
   21260:	00080437          	lui	s0,0x80
   21264:	00000793          	li	a5,0
   21268:	7ff00693          	li	a3,2047
   2126c:	00000813          	li	a6,0
   21270:	ea9ff06f          	j	21118 <__muldf3+0x504>
   21274:	00000413          	li	s0,0
   21278:	00000793          	li	a5,0
   2127c:	7ff00693          	li	a3,2047
   21280:	e99ff06f          	j	21118 <__muldf3+0x504>
   21284:	00000413          	li	s0,0
   21288:	00000793          	li	a5,0
   2128c:	00100693          	li	a3,1
   21290:	e89ff06f          	j	21118 <__muldf3+0x504>

00021294 <__eqtf2>:
   21294:	00c52783          	lw	a5,12(a0)
   21298:	0005af03          	lw	t5,0(a1) # 80000 <__BSS_END__+0x59030>
   2129c:	0045af83          	lw	t6,4(a1)
   212a0:	0085a283          	lw	t0,8(a1)
   212a4:	00c5a583          	lw	a1,12(a1)
   212a8:	00008737          	lui	a4,0x8
   212ac:	0107d693          	srli	a3,a5,0x10
   212b0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   212b4:	01079813          	slli	a6,a5,0x10
   212b8:	01059e93          	slli	t4,a1,0x10
   212bc:	01f7d613          	srli	a2,a5,0x1f
   212c0:	00e6f6b3          	and	a3,a3,a4
   212c4:	0105d793          	srli	a5,a1,0x10
   212c8:	00052883          	lw	a7,0(a0)
   212cc:	00452303          	lw	t1,4(a0)
   212d0:	00852e03          	lw	t3,8(a0)
   212d4:	ff010113          	addi	sp,sp,-16
   212d8:	01085813          	srli	a6,a6,0x10
   212dc:	010ede93          	srli	t4,t4,0x10
   212e0:	00e7f7b3          	and	a5,a5,a4
   212e4:	01f5d593          	srli	a1,a1,0x1f
   212e8:	02e69063          	bne	a3,a4,21308 <__eqtf2+0x74>
   212ec:	0068e733          	or	a4,a7,t1
   212f0:	01c76733          	or	a4,a4,t3
   212f4:	01076733          	or	a4,a4,a6
   212f8:	00100513          	li	a0,1
   212fc:	04071a63          	bnez	a4,21350 <__eqtf2+0xbc>
   21300:	04d79863          	bne	a5,a3,21350 <__eqtf2+0xbc>
   21304:	0080006f          	j	2130c <__eqtf2+0x78>
   21308:	00e79c63          	bne	a5,a4,21320 <__eqtf2+0x8c>
   2130c:	01ff6733          	or	a4,t5,t6
   21310:	00576733          	or	a4,a4,t0
   21314:	01d76733          	or	a4,a4,t4
   21318:	00100513          	li	a0,1
   2131c:	02071a63          	bnez	a4,21350 <__eqtf2+0xbc>
   21320:	00100513          	li	a0,1
   21324:	02d79663          	bne	a5,a3,21350 <__eqtf2+0xbc>
   21328:	03e89463          	bne	a7,t5,21350 <__eqtf2+0xbc>
   2132c:	03f31263          	bne	t1,t6,21350 <__eqtf2+0xbc>
   21330:	025e1063          	bne	t3,t0,21350 <__eqtf2+0xbc>
   21334:	01d81e63          	bne	a6,t4,21350 <__eqtf2+0xbc>
   21338:	02b60063          	beq	a2,a1,21358 <__eqtf2+0xc4>
   2133c:	00079a63          	bnez	a5,21350 <__eqtf2+0xbc>
   21340:	0068e533          	or	a0,a7,t1
   21344:	01c56533          	or	a0,a0,t3
   21348:	01056533          	or	a0,a0,a6
   2134c:	00a03533          	snez	a0,a0
   21350:	01010113          	addi	sp,sp,16
   21354:	00008067          	ret
   21358:	00000513          	li	a0,0
   2135c:	ff5ff06f          	j	21350 <__eqtf2+0xbc>

00021360 <__getf2>:
   21360:	00052f83          	lw	t6,0(a0)
   21364:	00452803          	lw	a6,4(a0)
   21368:	00852e03          	lw	t3,8(a0)
   2136c:	00c52503          	lw	a0,12(a0)
   21370:	00c5a683          	lw	a3,12(a1)
   21374:	000087b7          	lui	a5,0x8
   21378:	01055613          	srli	a2,a0,0x10
   2137c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   21380:	01069313          	slli	t1,a3,0x10
   21384:	0106d713          	srli	a4,a3,0x10
   21388:	0005a283          	lw	t0,0(a1)
   2138c:	0045a883          	lw	a7,4(a1)
   21390:	0085ae83          	lw	t4,8(a1)
   21394:	00f67633          	and	a2,a2,a5
   21398:	01051593          	slli	a1,a0,0x10
   2139c:	ff010113          	addi	sp,sp,-16
   213a0:	0105d593          	srli	a1,a1,0x10
   213a4:	01f55513          	srli	a0,a0,0x1f
   213a8:	01035313          	srli	t1,t1,0x10
   213ac:	00f77733          	and	a4,a4,a5
   213b0:	01f6d693          	srli	a3,a3,0x1f
   213b4:	00f61e63          	bne	a2,a5,213d0 <__getf2+0x70>
   213b8:	010fe7b3          	or	a5,t6,a6
   213bc:	01c7e7b3          	or	a5,a5,t3
   213c0:	00b7e7b3          	or	a5,a5,a1
   213c4:	0c078863          	beqz	a5,21494 <__getf2+0x134>
   213c8:	ffe00513          	li	a0,-2
   213cc:	0640006f          	j	21430 <__getf2+0xd0>
   213d0:	00f71a63          	bne	a4,a5,213e4 <__getf2+0x84>
   213d4:	0112e7b3          	or	a5,t0,a7
   213d8:	01d7e7b3          	or	a5,a5,t4
   213dc:	0067e7b3          	or	a5,a5,t1
   213e0:	fe0794e3          	bnez	a5,213c8 <__getf2+0x68>
   213e4:	0a061a63          	bnez	a2,21498 <__getf2+0x138>
   213e8:	010fe7b3          	or	a5,t6,a6
   213ec:	01c7e7b3          	or	a5,a5,t3
   213f0:	00b7e7b3          	or	a5,a5,a1
   213f4:	0017b793          	seqz	a5,a5
   213f8:	00071a63          	bnez	a4,2140c <__getf2+0xac>
   213fc:	0112ef33          	or	t5,t0,a7
   21400:	01df6f33          	or	t5,t5,t4
   21404:	006f6f33          	or	t5,t5,t1
   21408:	060f0a63          	beqz	t5,2147c <__getf2+0x11c>
   2140c:	00079c63          	bnez	a5,21424 <__getf2+0xc4>
   21410:	00a69463          	bne	a3,a0,21418 <__getf2+0xb8>
   21414:	02c75263          	bge	a4,a2,21438 <__getf2+0xd8>
   21418:	04050e63          	beqz	a0,21474 <__getf2+0x114>
   2141c:	fff00513          	li	a0,-1
   21420:	0100006f          	j	21430 <__getf2+0xd0>
   21424:	fff00513          	li	a0,-1
   21428:	00068463          	beqz	a3,21430 <__getf2+0xd0>
   2142c:	00068513          	mv	a0,a3
   21430:	01010113          	addi	sp,sp,16
   21434:	00008067          	ret
   21438:	00e65663          	bge	a2,a4,21444 <__getf2+0xe4>
   2143c:	fe051ae3          	bnez	a0,21430 <__getf2+0xd0>
   21440:	fddff06f          	j	2141c <__getf2+0xbc>
   21444:	fcb36ae3          	bltu	t1,a1,21418 <__getf2+0xb8>
   21448:	02659e63          	bne	a1,t1,21484 <__getf2+0x124>
   2144c:	fdcee6e3          	bltu	t4,t3,21418 <__getf2+0xb8>
   21450:	03de1e63          	bne	t3,t4,2148c <__getf2+0x12c>
   21454:	fd08e2e3          	bltu	a7,a6,21418 <__getf2+0xb8>
   21458:	01181463          	bne	a6,a7,21460 <__getf2+0x100>
   2145c:	fbf2eee3          	bltu	t0,t6,21418 <__getf2+0xb8>
   21460:	fd186ee3          	bltu	a6,a7,2143c <__getf2+0xdc>
   21464:	01181463          	bne	a6,a7,2146c <__getf2+0x10c>
   21468:	fc5feae3          	bltu	t6,t0,2143c <__getf2+0xdc>
   2146c:	00000513          	li	a0,0
   21470:	fc1ff06f          	j	21430 <__getf2+0xd0>
   21474:	00100513          	li	a0,1
   21478:	fb9ff06f          	j	21430 <__getf2+0xd0>
   2147c:	fe0798e3          	bnez	a5,2146c <__getf2+0x10c>
   21480:	f99ff06f          	j	21418 <__getf2+0xb8>
   21484:	fa65ece3          	bltu	a1,t1,2143c <__getf2+0xdc>
   21488:	fe5ff06f          	j	2146c <__getf2+0x10c>
   2148c:	fbde68e3          	bltu	t3,t4,2143c <__getf2+0xdc>
   21490:	fddff06f          	j	2146c <__getf2+0x10c>
   21494:	f4c700e3          	beq	a4,a2,213d4 <__getf2+0x74>
   21498:	f6071ce3          	bnez	a4,21410 <__getf2+0xb0>
   2149c:	00000793          	li	a5,0
   214a0:	f5dff06f          	j	213fc <__getf2+0x9c>

000214a4 <__letf2>:
   214a4:	00052f83          	lw	t6,0(a0)
   214a8:	00452803          	lw	a6,4(a0)
   214ac:	00852e03          	lw	t3,8(a0)
   214b0:	00c52503          	lw	a0,12(a0)
   214b4:	00c5a683          	lw	a3,12(a1)
   214b8:	000087b7          	lui	a5,0x8
   214bc:	01055613          	srli	a2,a0,0x10
   214c0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   214c4:	01069313          	slli	t1,a3,0x10
   214c8:	0106d713          	srli	a4,a3,0x10
   214cc:	0005a283          	lw	t0,0(a1)
   214d0:	0045a883          	lw	a7,4(a1)
   214d4:	0085ae83          	lw	t4,8(a1)
   214d8:	00f67633          	and	a2,a2,a5
   214dc:	01051593          	slli	a1,a0,0x10
   214e0:	ff010113          	addi	sp,sp,-16
   214e4:	0105d593          	srli	a1,a1,0x10
   214e8:	01f55513          	srli	a0,a0,0x1f
   214ec:	01035313          	srli	t1,t1,0x10
   214f0:	00f77733          	and	a4,a4,a5
   214f4:	01f6d693          	srli	a3,a3,0x1f
   214f8:	00f61e63          	bne	a2,a5,21514 <__letf2+0x70>
   214fc:	010fe7b3          	or	a5,t6,a6
   21500:	01c7e7b3          	or	a5,a5,t3
   21504:	00b7e7b3          	or	a5,a5,a1
   21508:	0c078863          	beqz	a5,215d8 <__letf2+0x134>
   2150c:	00200513          	li	a0,2
   21510:	0640006f          	j	21574 <__letf2+0xd0>
   21514:	00f71a63          	bne	a4,a5,21528 <__letf2+0x84>
   21518:	0112e7b3          	or	a5,t0,a7
   2151c:	01d7e7b3          	or	a5,a5,t4
   21520:	0067e7b3          	or	a5,a5,t1
   21524:	fe0794e3          	bnez	a5,2150c <__letf2+0x68>
   21528:	0a061a63          	bnez	a2,215dc <__letf2+0x138>
   2152c:	010fe7b3          	or	a5,t6,a6
   21530:	01c7e7b3          	or	a5,a5,t3
   21534:	00b7e7b3          	or	a5,a5,a1
   21538:	0017b793          	seqz	a5,a5
   2153c:	00071a63          	bnez	a4,21550 <__letf2+0xac>
   21540:	0112ef33          	or	t5,t0,a7
   21544:	01df6f33          	or	t5,t5,t4
   21548:	006f6f33          	or	t5,t5,t1
   2154c:	060f0a63          	beqz	t5,215c0 <__letf2+0x11c>
   21550:	00079c63          	bnez	a5,21568 <__letf2+0xc4>
   21554:	00a69463          	bne	a3,a0,2155c <__letf2+0xb8>
   21558:	02c75263          	bge	a4,a2,2157c <__letf2+0xd8>
   2155c:	04050e63          	beqz	a0,215b8 <__letf2+0x114>
   21560:	fff00513          	li	a0,-1
   21564:	0100006f          	j	21574 <__letf2+0xd0>
   21568:	fff00513          	li	a0,-1
   2156c:	00068463          	beqz	a3,21574 <__letf2+0xd0>
   21570:	00068513          	mv	a0,a3
   21574:	01010113          	addi	sp,sp,16
   21578:	00008067          	ret
   2157c:	00e65663          	bge	a2,a4,21588 <__letf2+0xe4>
   21580:	fe051ae3          	bnez	a0,21574 <__letf2+0xd0>
   21584:	fddff06f          	j	21560 <__letf2+0xbc>
   21588:	fcb36ae3          	bltu	t1,a1,2155c <__letf2+0xb8>
   2158c:	02659e63          	bne	a1,t1,215c8 <__letf2+0x124>
   21590:	fdcee6e3          	bltu	t4,t3,2155c <__letf2+0xb8>
   21594:	03de1e63          	bne	t3,t4,215d0 <__letf2+0x12c>
   21598:	fd08e2e3          	bltu	a7,a6,2155c <__letf2+0xb8>
   2159c:	01181463          	bne	a6,a7,215a4 <__letf2+0x100>
   215a0:	fbf2eee3          	bltu	t0,t6,2155c <__letf2+0xb8>
   215a4:	fd186ee3          	bltu	a6,a7,21580 <__letf2+0xdc>
   215a8:	01181463          	bne	a6,a7,215b0 <__letf2+0x10c>
   215ac:	fc5feae3          	bltu	t6,t0,21580 <__letf2+0xdc>
   215b0:	00000513          	li	a0,0
   215b4:	fc1ff06f          	j	21574 <__letf2+0xd0>
   215b8:	00100513          	li	a0,1
   215bc:	fb9ff06f          	j	21574 <__letf2+0xd0>
   215c0:	fe0798e3          	bnez	a5,215b0 <__letf2+0x10c>
   215c4:	f99ff06f          	j	2155c <__letf2+0xb8>
   215c8:	fa65ece3          	bltu	a1,t1,21580 <__letf2+0xdc>
   215cc:	fe5ff06f          	j	215b0 <__letf2+0x10c>
   215d0:	fbde68e3          	bltu	t3,t4,21580 <__letf2+0xdc>
   215d4:	fddff06f          	j	215b0 <__letf2+0x10c>
   215d8:	f4c700e3          	beq	a4,a2,21518 <__letf2+0x74>
   215dc:	f6071ce3          	bnez	a4,21554 <__letf2+0xb0>
   215e0:	00000793          	li	a5,0
   215e4:	f5dff06f          	j	21540 <__letf2+0x9c>

000215e8 <__multf3>:
   215e8:	f6010113          	addi	sp,sp,-160
   215ec:	09312623          	sw	s3,140(sp)
   215f0:	00c5a983          	lw	s3,12(a1)
   215f4:	0005a683          	lw	a3,0(a1)
   215f8:	0045a783          	lw	a5,4(a1)
   215fc:	08812c23          	sw	s0,152(sp)
   21600:	00050413          	mv	s0,a0
   21604:	0085a503          	lw	a0,8(a1)
   21608:	01099713          	slli	a4,s3,0x10
   2160c:	09212823          	sw	s2,144(sp)
   21610:	09412423          	sw	s4,136(sp)
   21614:	00c62903          	lw	s2,12(a2) # 1000c <register_fini-0x68>
   21618:	00062a03          	lw	s4,0(a2)
   2161c:	09512223          	sw	s5,132(sp)
   21620:	09612023          	sw	s6,128(sp)
   21624:	00862a83          	lw	s5,8(a2)
   21628:	00462b03          	lw	s6,4(a2)
   2162c:	00008637          	lui	a2,0x8
   21630:	08912a23          	sw	s1,148(sp)
   21634:	01075713          	srli	a4,a4,0x10
   21638:	0109d493          	srli	s1,s3,0x10
   2163c:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x8075>
   21640:	05312623          	sw	s3,76(sp)
   21644:	08112e23          	sw	ra,156(sp)
   21648:	07712e23          	sw	s7,124(sp)
   2164c:	07812c23          	sw	s8,120(sp)
   21650:	07912a23          	sw	s9,116(sp)
   21654:	07a12823          	sw	s10,112(sp)
   21658:	07b12623          	sw	s11,108(sp)
   2165c:	04d12023          	sw	a3,64(sp)
   21660:	04f12223          	sw	a5,68(sp)
   21664:	04a12423          	sw	a0,72(sp)
   21668:	00d12823          	sw	a3,16(sp)
   2166c:	00f12a23          	sw	a5,20(sp)
   21670:	00a12c23          	sw	a0,24(sp)
   21674:	00e12e23          	sw	a4,28(sp)
   21678:	00c4f4b3          	and	s1,s1,a2
   2167c:	01f9d993          	srli	s3,s3,0x1f
   21680:	12048463          	beqz	s1,217a8 <__multf3+0x1c0>
   21684:	24c48063          	beq	s1,a2,218c4 <__multf3+0x2dc>
   21688:	000107b7          	lui	a5,0x10
   2168c:	00f767b3          	or	a5,a4,a5
   21690:	00f12e23          	sw	a5,28(sp)
   21694:	01010613          	addi	a2,sp,16
   21698:	01c10793          	addi	a5,sp,28
   2169c:	0007a703          	lw	a4,0(a5) # 10000 <register_fini-0x74>
   216a0:	ffc7a683          	lw	a3,-4(a5)
   216a4:	ffc78793          	addi	a5,a5,-4
   216a8:	00371713          	slli	a4,a4,0x3
   216ac:	01d6d693          	srli	a3,a3,0x1d
   216b0:	00d76733          	or	a4,a4,a3
   216b4:	00e7a223          	sw	a4,4(a5)
   216b8:	fef612e3          	bne	a2,a5,2169c <__multf3+0xb4>
   216bc:	01012783          	lw	a5,16(sp)
   216c0:	ffffc537          	lui	a0,0xffffc
   216c4:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5031>
   216c8:	00379793          	slli	a5,a5,0x3
   216cc:	00f12823          	sw	a5,16(sp)
   216d0:	00a484b3          	add	s1,s1,a0
   216d4:	00000b93          	li	s7,0
   216d8:	01091513          	slli	a0,s2,0x10
   216dc:	00008737          	lui	a4,0x8
   216e0:	01095793          	srli	a5,s2,0x10
   216e4:	01055513          	srli	a0,a0,0x10
   216e8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   216ec:	05212623          	sw	s2,76(sp)
   216f0:	05412023          	sw	s4,64(sp)
   216f4:	05612223          	sw	s6,68(sp)
   216f8:	05512423          	sw	s5,72(sp)
   216fc:	03412023          	sw	s4,32(sp)
   21700:	03612223          	sw	s6,36(sp)
   21704:	03512423          	sw	s5,40(sp)
   21708:	02a12623          	sw	a0,44(sp)
   2170c:	00e7f7b3          	and	a5,a5,a4
   21710:	01f95913          	srli	s2,s2,0x1f
   21714:	1c078c63          	beqz	a5,218ec <__multf3+0x304>
   21718:	2ee78863          	beq	a5,a4,21a08 <__multf3+0x420>
   2171c:	00010ab7          	lui	s5,0x10
   21720:	01556ab3          	or	s5,a0,s5
   21724:	03512623          	sw	s5,44(sp)
   21728:	02010593          	addi	a1,sp,32
   2172c:	02c10713          	addi	a4,sp,44
   21730:	00072683          	lw	a3,0(a4)
   21734:	ffc72603          	lw	a2,-4(a4)
   21738:	ffc70713          	addi	a4,a4,-4
   2173c:	00369693          	slli	a3,a3,0x3
   21740:	01d65613          	srli	a2,a2,0x1d
   21744:	00c6e6b3          	or	a3,a3,a2
   21748:	00d72223          	sw	a3,4(a4)
   2174c:	fee592e3          	bne	a1,a4,21730 <__multf3+0x148>
   21750:	02012703          	lw	a4,32(sp)
   21754:	ffffc537          	lui	a0,0xffffc
   21758:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5031>
   2175c:	00371713          	slli	a4,a4,0x3
   21760:	02e12023          	sw	a4,32(sp)
   21764:	00a787b3          	add	a5,a5,a0
   21768:	00000713          	li	a4,0
   2176c:	009787b3          	add	a5,a5,s1
   21770:	00f12423          	sw	a5,8(sp)
   21774:	00178c93          	addi	s9,a5,1
   21778:	002b9793          	slli	a5,s7,0x2
   2177c:	00e7e7b3          	or	a5,a5,a4
   21780:	fff78793          	addi	a5,a5,-1
   21784:	00e00693          	li	a3,14
   21788:	0129c3b3          	xor	t2,s3,s2
   2178c:	2af6e263          	bltu	a3,a5,21a30 <__multf3+0x448>
   21790:	000256b7          	lui	a3,0x25
   21794:	00279793          	slli	a5,a5,0x2
   21798:	3a868693          	addi	a3,a3,936 # 253a8 <_ctype_+0x17c>
   2179c:	00d787b3          	add	a5,a5,a3
   217a0:	0007a783          	lw	a5,0(a5)
   217a4:	00078067          	jr	a5
   217a8:	00d7e633          	or	a2,a5,a3
   217ac:	00a66633          	or	a2,a2,a0
   217b0:	00e66633          	or	a2,a2,a4
   217b4:	12060663          	beqz	a2,218e0 <__multf3+0x2f8>
   217b8:	06070063          	beqz	a4,21818 <__multf3+0x230>
   217bc:	00070513          	mv	a0,a4
   217c0:	7dd020ef          	jal	ra,2479c <__clzsi2>
   217c4:	ff450693          	addi	a3,a0,-12
   217c8:	4056d713          	srai	a4,a3,0x5
   217cc:	01f6f693          	andi	a3,a3,31
   217d0:	40e007b3          	neg	a5,a4
   217d4:	06068c63          	beqz	a3,2184c <__multf3+0x264>
   217d8:	00279793          	slli	a5,a5,0x2
   217dc:	01010313          	addi	t1,sp,16
   217e0:	00c78793          	addi	a5,a5,12
   217e4:	02000813          	li	a6,32
   217e8:	00f307b3          	add	a5,t1,a5
   217ec:	00271593          	slli	a1,a4,0x2
   217f0:	40d80833          	sub	a6,a6,a3
   217f4:	08f31263          	bne	t1,a5,21878 <__multf3+0x290>
   217f8:	fff70793          	addi	a5,a4,-1
   217fc:	06010713          	addi	a4,sp,96
   21800:	00b705b3          	add	a1,a4,a1
   21804:	01012703          	lw	a4,16(sp)
   21808:	00d716b3          	sll	a3,a4,a3
   2180c:	fad5a823          	sw	a3,-80(a1)
   21810:	fff00693          	li	a3,-1
   21814:	09c0006f          	j	218b0 <__multf3+0x2c8>
   21818:	00050863          	beqz	a0,21828 <__multf3+0x240>
   2181c:	781020ef          	jal	ra,2479c <__clzsi2>
   21820:	02050513          	addi	a0,a0,32
   21824:	fa1ff06f          	j	217c4 <__multf3+0x1dc>
   21828:	00078a63          	beqz	a5,2183c <__multf3+0x254>
   2182c:	00078513          	mv	a0,a5
   21830:	76d020ef          	jal	ra,2479c <__clzsi2>
   21834:	04050513          	addi	a0,a0,64
   21838:	f8dff06f          	j	217c4 <__multf3+0x1dc>
   2183c:	00068513          	mv	a0,a3
   21840:	75d020ef          	jal	ra,2479c <__clzsi2>
   21844:	06050513          	addi	a0,a0,96
   21848:	f7dff06f          	j	217c4 <__multf3+0x1dc>
   2184c:	01c10693          	addi	a3,sp,28
   21850:	00279793          	slli	a5,a5,0x2
   21854:	00300613          	li	a2,3
   21858:	00f685b3          	add	a1,a3,a5
   2185c:	0005a583          	lw	a1,0(a1)
   21860:	fff60613          	addi	a2,a2,-1
   21864:	ffc68693          	addi	a3,a3,-4
   21868:	00b6a223          	sw	a1,4(a3)
   2186c:	fee656e3          	bge	a2,a4,21858 <__multf3+0x270>
   21870:	fff70793          	addi	a5,a4,-1
   21874:	f9dff06f          	j	21810 <__multf3+0x228>
   21878:	ffc7a603          	lw	a2,-4(a5)
   2187c:	0007a883          	lw	a7,0(a5)
   21880:	00b78e33          	add	t3,a5,a1
   21884:	01065633          	srl	a2,a2,a6
   21888:	00d898b3          	sll	a7,a7,a3
   2188c:	01166633          	or	a2,a2,a7
   21890:	00ce2023          	sw	a2,0(t3)
   21894:	ffc78793          	addi	a5,a5,-4
   21898:	f5dff06f          	j	217f4 <__multf3+0x20c>
   2189c:	00279713          	slli	a4,a5,0x2
   218a0:	01010613          	addi	a2,sp,16
   218a4:	00e60733          	add	a4,a2,a4
   218a8:	00072023          	sw	zero,0(a4)
   218ac:	fff78793          	addi	a5,a5,-1
   218b0:	fed796e3          	bne	a5,a3,2189c <__multf3+0x2b4>
   218b4:	ffffc4b7          	lui	s1,0xffffc
   218b8:	01148493          	addi	s1,s1,17 # ffffc011 <__BSS_END__+0xfffd5041>
   218bc:	40a484b3          	sub	s1,s1,a0
   218c0:	e15ff06f          	j	216d4 <__multf3+0xec>
   218c4:	00d7e7b3          	or	a5,a5,a3
   218c8:	00a7e7b3          	or	a5,a5,a0
   218cc:	00e7e7b3          	or	a5,a5,a4
   218d0:	00300b93          	li	s7,3
   218d4:	e00792e3          	bnez	a5,216d8 <__multf3+0xf0>
   218d8:	00200b93          	li	s7,2
   218dc:	dfdff06f          	j	216d8 <__multf3+0xf0>
   218e0:	00000493          	li	s1,0
   218e4:	00100b93          	li	s7,1
   218e8:	df1ff06f          	j	216d8 <__multf3+0xf0>
   218ec:	016a67b3          	or	a5,s4,s6
   218f0:	0157e7b3          	or	a5,a5,s5
   218f4:	00a7e7b3          	or	a5,a5,a0
   218f8:	12078663          	beqz	a5,21a24 <__multf3+0x43c>
   218fc:	04050e63          	beqz	a0,21958 <__multf3+0x370>
   21900:	69d020ef          	jal	ra,2479c <__clzsi2>
   21904:	ff450693          	addi	a3,a0,-12
   21908:	4056d793          	srai	a5,a3,0x5
   2190c:	01f6f693          	andi	a3,a3,31
   21910:	40f00733          	neg	a4,a5
   21914:	06068e63          	beqz	a3,21990 <__multf3+0x3a8>
   21918:	00271713          	slli	a4,a4,0x2
   2191c:	02010313          	addi	t1,sp,32
   21920:	00c70713          	addi	a4,a4,12
   21924:	02000813          	li	a6,32
   21928:	00e30733          	add	a4,t1,a4
   2192c:	00279593          	slli	a1,a5,0x2
   21930:	40d80833          	sub	a6,a6,a3
   21934:	08e31463          	bne	t1,a4,219bc <__multf3+0x3d4>
   21938:	06010713          	addi	a4,sp,96
   2193c:	00b705b3          	add	a1,a4,a1
   21940:	02012703          	lw	a4,32(sp)
   21944:	fff78793          	addi	a5,a5,-1
   21948:	00d716b3          	sll	a3,a4,a3
   2194c:	fcd5a023          	sw	a3,-64(a1)
   21950:	fff00693          	li	a3,-1
   21954:	0a00006f          	j	219f4 <__multf3+0x40c>
   21958:	000a8a63          	beqz	s5,2196c <__multf3+0x384>
   2195c:	000a8513          	mv	a0,s5
   21960:	63d020ef          	jal	ra,2479c <__clzsi2>
   21964:	02050513          	addi	a0,a0,32
   21968:	f9dff06f          	j	21904 <__multf3+0x31c>
   2196c:	000b0a63          	beqz	s6,21980 <__multf3+0x398>
   21970:	000b0513          	mv	a0,s6
   21974:	629020ef          	jal	ra,2479c <__clzsi2>
   21978:	04050513          	addi	a0,a0,64
   2197c:	f89ff06f          	j	21904 <__multf3+0x31c>
   21980:	000a0513          	mv	a0,s4
   21984:	619020ef          	jal	ra,2479c <__clzsi2>
   21988:	06050513          	addi	a0,a0,96
   2198c:	f79ff06f          	j	21904 <__multf3+0x31c>
   21990:	02c10693          	addi	a3,sp,44
   21994:	00271713          	slli	a4,a4,0x2
   21998:	00300613          	li	a2,3
   2199c:	00e685b3          	add	a1,a3,a4
   219a0:	0005a583          	lw	a1,0(a1)
   219a4:	fff60613          	addi	a2,a2,-1
   219a8:	ffc68693          	addi	a3,a3,-4
   219ac:	00b6a223          	sw	a1,4(a3)
   219b0:	fef656e3          	bge	a2,a5,2199c <__multf3+0x3b4>
   219b4:	fff78793          	addi	a5,a5,-1
   219b8:	f99ff06f          	j	21950 <__multf3+0x368>
   219bc:	ffc72603          	lw	a2,-4(a4)
   219c0:	00072883          	lw	a7,0(a4)
   219c4:	00b70e33          	add	t3,a4,a1
   219c8:	01065633          	srl	a2,a2,a6
   219cc:	00d898b3          	sll	a7,a7,a3
   219d0:	01166633          	or	a2,a2,a7
   219d4:	00ce2023          	sw	a2,0(t3)
   219d8:	ffc70713          	addi	a4,a4,-4
   219dc:	f59ff06f          	j	21934 <__multf3+0x34c>
   219e0:	00279713          	slli	a4,a5,0x2
   219e4:	02010613          	addi	a2,sp,32
   219e8:	00e60733          	add	a4,a2,a4
   219ec:	00072023          	sw	zero,0(a4)
   219f0:	fff78793          	addi	a5,a5,-1
   219f4:	fed796e3          	bne	a5,a3,219e0 <__multf3+0x3f8>
   219f8:	ffffc7b7          	lui	a5,0xffffc
   219fc:	01178793          	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffd5041>
   21a00:	40a787b3          	sub	a5,a5,a0
   21a04:	d65ff06f          	j	21768 <__multf3+0x180>
   21a08:	016a6a33          	or	s4,s4,s6
   21a0c:	015a6ab3          	or	s5,s4,s5
   21a10:	00aaeab3          	or	s5,s5,a0
   21a14:	00300713          	li	a4,3
   21a18:	d40a9ae3          	bnez	s5,2176c <__multf3+0x184>
   21a1c:	00200713          	li	a4,2
   21a20:	d4dff06f          	j	2176c <__multf3+0x184>
   21a24:	00000793          	li	a5,0
   21a28:	00100713          	li	a4,1
   21a2c:	d41ff06f          	j	2176c <__multf3+0x184>
   21a30:	01012283          	lw	t0,16(sp)
   21a34:	02012f83          	lw	t6,32(sp)
   21a38:	00010e37          	lui	t3,0x10
   21a3c:	fffe0793          	addi	a5,t3,-1 # ffff <register_fini-0x75>
   21a40:	00f2f833          	and	a6,t0,a5
   21a44:	00fff7b3          	and	a5,t6,a5
   21a48:	0102df13          	srli	t5,t0,0x10
   21a4c:	010fde93          	srli	t4,t6,0x10
   21a50:	00080513          	mv	a0,a6
   21a54:	00078593          	mv	a1,a5
   21a58:	46d020ef          	jal	ra,246c4 <__mulsi3>
   21a5c:	00050893          	mv	a7,a0
   21a60:	000e8593          	mv	a1,t4
   21a64:	00080513          	mv	a0,a6
   21a68:	45d020ef          	jal	ra,246c4 <__mulsi3>
   21a6c:	00050813          	mv	a6,a0
   21a70:	00078593          	mv	a1,a5
   21a74:	000f0513          	mv	a0,t5
   21a78:	44d020ef          	jal	ra,246c4 <__mulsi3>
   21a7c:	00050313          	mv	t1,a0
   21a80:	000e8593          	mv	a1,t4
   21a84:	000f0513          	mv	a0,t5
   21a88:	43d020ef          	jal	ra,246c4 <__mulsi3>
   21a8c:	0108d713          	srli	a4,a7,0x10
   21a90:	00680833          	add	a6,a6,t1
   21a94:	01070733          	add	a4,a4,a6
   21a98:	00050793          	mv	a5,a0
   21a9c:	00677463          	bgeu	a4,t1,21aa4 <__multf3+0x4bc>
   21aa0:	01c507b3          	add	a5,a0,t3
   21aa4:	01075513          	srli	a0,a4,0x10
   21aa8:	00f507b3          	add	a5,a0,a5
   21aac:	00010f37          	lui	t5,0x10
   21ab0:	02412e83          	lw	t4,36(sp)
   21ab4:	04f12223          	sw	a5,68(sp)
   21ab8:	ffff0793          	addi	a5,t5,-1 # ffff <register_fini-0x75>
   21abc:	00f77733          	and	a4,a4,a5
   21ac0:	00f8f8b3          	and	a7,a7,a5
   21ac4:	01071713          	slli	a4,a4,0x10
   21ac8:	01170733          	add	a4,a4,a7
   21acc:	00f2f833          	and	a6,t0,a5
   21ad0:	00fefe33          	and	t3,t4,a5
   21ad4:	04e12023          	sw	a4,64(sp)
   21ad8:	010ed493          	srli	s1,t4,0x10
   21adc:	0102d713          	srli	a4,t0,0x10
   21ae0:	00080513          	mv	a0,a6
   21ae4:	000e0593          	mv	a1,t3
   21ae8:	3dd020ef          	jal	ra,246c4 <__mulsi3>
   21aec:	00050313          	mv	t1,a0
   21af0:	00048593          	mv	a1,s1
   21af4:	00080513          	mv	a0,a6
   21af8:	3cd020ef          	jal	ra,246c4 <__mulsi3>
   21afc:	00050813          	mv	a6,a0
   21b00:	000e0593          	mv	a1,t3
   21b04:	00070513          	mv	a0,a4
   21b08:	3bd020ef          	jal	ra,246c4 <__mulsi3>
   21b0c:	00050e13          	mv	t3,a0
   21b10:	00048593          	mv	a1,s1
   21b14:	00070513          	mv	a0,a4
   21b18:	3ad020ef          	jal	ra,246c4 <__mulsi3>
   21b1c:	01035713          	srli	a4,t1,0x10
   21b20:	01c80833          	add	a6,a6,t3
   21b24:	01070733          	add	a4,a4,a6
   21b28:	00050a13          	mv	s4,a0
   21b2c:	01c77463          	bgeu	a4,t3,21b34 <__multf3+0x54c>
   21b30:	01e50a33          	add	s4,a0,t5
   21b34:	01412f03          	lw	t5,20(sp)
   21b38:	00f778b3          	and	a7,a4,a5
   21b3c:	01075693          	srli	a3,a4,0x10
   21b40:	00f37333          	and	t1,t1,a5
   21b44:	00ff7733          	and	a4,t5,a5
   21b48:	01089893          	slli	a7,a7,0x10
   21b4c:	00fff7b3          	and	a5,t6,a5
   21b50:	00d12623          	sw	a3,12(sp)
   21b54:	006888b3          	add	a7,a7,t1
   21b58:	010f5493          	srli	s1,t5,0x10
   21b5c:	010fde13          	srli	t3,t6,0x10
   21b60:	00070513          	mv	a0,a4
   21b64:	00078593          	mv	a1,a5
   21b68:	35d020ef          	jal	ra,246c4 <__mulsi3>
   21b6c:	00050813          	mv	a6,a0
   21b70:	000e0593          	mv	a1,t3
   21b74:	00070513          	mv	a0,a4
   21b78:	34d020ef          	jal	ra,246c4 <__mulsi3>
   21b7c:	00050713          	mv	a4,a0
   21b80:	00078593          	mv	a1,a5
   21b84:	00048513          	mv	a0,s1
   21b88:	33d020ef          	jal	ra,246c4 <__mulsi3>
   21b8c:	00050313          	mv	t1,a0
   21b90:	000e0593          	mv	a1,t3
   21b94:	00048513          	mv	a0,s1
   21b98:	32d020ef          	jal	ra,246c4 <__mulsi3>
   21b9c:	01085793          	srli	a5,a6,0x10
   21ba0:	00670733          	add	a4,a4,t1
   21ba4:	00e787b3          	add	a5,a5,a4
   21ba8:	00050b93          	mv	s7,a0
   21bac:	0067f663          	bgeu	a5,t1,21bb8 <__multf3+0x5d0>
   21bb0:	00010737          	lui	a4,0x10
   21bb4:	00e50bb3          	add	s7,a0,a4
   21bb8:	00010e37          	lui	t3,0x10
   21bbc:	fffe0593          	addi	a1,t3,-1 # ffff <register_fini-0x75>
   21bc0:	00b7f333          	and	t1,a5,a1
   21bc4:	0107d513          	srli	a0,a5,0x10
   21bc8:	00b87833          	and	a6,a6,a1
   21bcc:	00bf77b3          	and	a5,t5,a1
   21bd0:	00bef9b3          	and	s3,t4,a1
   21bd4:	01031313          	slli	t1,t1,0x10
   21bd8:	01750bb3          	add	s7,a0,s7
   21bdc:	01030333          	add	t1,t1,a6
   21be0:	010f5913          	srli	s2,t5,0x10
   21be4:	010ed493          	srli	s1,t4,0x10
   21be8:	00078513          	mv	a0,a5
   21bec:	00098593          	mv	a1,s3
   21bf0:	2d5020ef          	jal	ra,246c4 <__mulsi3>
   21bf4:	00050713          	mv	a4,a0
   21bf8:	00048593          	mv	a1,s1
   21bfc:	00078513          	mv	a0,a5
   21c00:	2c5020ef          	jal	ra,246c4 <__mulsi3>
   21c04:	00050813          	mv	a6,a0
   21c08:	00098593          	mv	a1,s3
   21c0c:	00090513          	mv	a0,s2
   21c10:	2b5020ef          	jal	ra,246c4 <__mulsi3>
   21c14:	00050993          	mv	s3,a0
   21c18:	00048593          	mv	a1,s1
   21c1c:	00090513          	mv	a0,s2
   21c20:	2a5020ef          	jal	ra,246c4 <__mulsi3>
   21c24:	01075793          	srli	a5,a4,0x10
   21c28:	01380833          	add	a6,a6,s3
   21c2c:	010787b3          	add	a5,a5,a6
   21c30:	00050b13          	mv	s6,a0
   21c34:	0137f463          	bgeu	a5,s3,21c3c <__multf3+0x654>
   21c38:	01c50b33          	add	s6,a0,t3
   21c3c:	02812483          	lw	s1,40(sp)
   21c40:	00010937          	lui	s2,0x10
   21c44:	fff90593          	addi	a1,s2,-1 # ffff <register_fini-0x75>
   21c48:	00b7f833          	and	a6,a5,a1
   21c4c:	0107d513          	srli	a0,a5,0x10
   21c50:	00b77733          	and	a4,a4,a1
   21c54:	00b2fc33          	and	s8,t0,a1
   21c58:	00b4f9b3          	and	s3,s1,a1
   21c5c:	01081813          	slli	a6,a6,0x10
   21c60:	01650b33          	add	s6,a0,s6
   21c64:	00e80833          	add	a6,a6,a4
   21c68:	0102d793          	srli	a5,t0,0x10
   21c6c:	0104da93          	srli	s5,s1,0x10
   21c70:	000c0513          	mv	a0,s8
   21c74:	00098593          	mv	a1,s3
   21c78:	24d020ef          	jal	ra,246c4 <__mulsi3>
   21c7c:	00050e13          	mv	t3,a0
   21c80:	000a8593          	mv	a1,s5
   21c84:	000c0513          	mv	a0,s8
   21c88:	23d020ef          	jal	ra,246c4 <__mulsi3>
   21c8c:	00050713          	mv	a4,a0
   21c90:	00098593          	mv	a1,s3
   21c94:	00078513          	mv	a0,a5
   21c98:	22d020ef          	jal	ra,246c4 <__mulsi3>
   21c9c:	00050993          	mv	s3,a0
   21ca0:	000a8593          	mv	a1,s5
   21ca4:	00078513          	mv	a0,a5
   21ca8:	21d020ef          	jal	ra,246c4 <__mulsi3>
   21cac:	010e5793          	srli	a5,t3,0x10
   21cb0:	01370733          	add	a4,a4,s3
   21cb4:	00e787b3          	add	a5,a5,a4
   21cb8:	00050a93          	mv	s5,a0
   21cbc:	0137f463          	bgeu	a5,s3,21cc4 <__multf3+0x6dc>
   21cc0:	01250ab3          	add	s5,a0,s2
   21cc4:	00010d37          	lui	s10,0x10
   21cc8:	fffd0913          	addi	s2,s10,-1 # ffff <register_fini-0x75>
   21ccc:	0127f733          	and	a4,a5,s2
   21cd0:	012e7e33          	and	t3,t3,s2
   21cd4:	01071713          	slli	a4,a4,0x10
   21cd8:	01c70733          	add	a4,a4,t3
   21cdc:	01812e03          	lw	t3,24(sp)
   21ce0:	0107d513          	srli	a0,a5,0x10
   21ce4:	01550ab3          	add	s5,a0,s5
   21ce8:	012e77b3          	and	a5,t3,s2
   21cec:	012ff933          	and	s2,t6,s2
   21cf0:	010e5d93          	srli	s11,t3,0x10
   21cf4:	010fdc13          	srli	s8,t6,0x10
   21cf8:	00078513          	mv	a0,a5
   21cfc:	00090593          	mv	a1,s2
   21d00:	1c5020ef          	jal	ra,246c4 <__mulsi3>
   21d04:	00050993          	mv	s3,a0
   21d08:	000c0593          	mv	a1,s8
   21d0c:	00078513          	mv	a0,a5
   21d10:	1b5020ef          	jal	ra,246c4 <__mulsi3>
   21d14:	00050793          	mv	a5,a0
   21d18:	00090593          	mv	a1,s2
   21d1c:	000d8513          	mv	a0,s11
   21d20:	1a5020ef          	jal	ra,246c4 <__mulsi3>
   21d24:	00050913          	mv	s2,a0
   21d28:	000c0593          	mv	a1,s8
   21d2c:	000d8513          	mv	a0,s11
   21d30:	195020ef          	jal	ra,246c4 <__mulsi3>
   21d34:	012787b3          	add	a5,a5,s2
   21d38:	0109d693          	srli	a3,s3,0x10
   21d3c:	00d787b3          	add	a5,a5,a3
   21d40:	0127f463          	bgeu	a5,s2,21d48 <__multf3+0x760>
   21d44:	01a50533          	add	a0,a0,s10
   21d48:	04412603          	lw	a2,68(sp)
   21d4c:	0107d693          	srli	a3,a5,0x10
   21d50:	00a686b3          	add	a3,a3,a0
   21d54:	00c12503          	lw	a0,12(sp)
   21d58:	00c88633          	add	a2,a7,a2
   21d5c:	011630b3          	sltu	ra,a2,a7
   21d60:	001508b3          	add	a7,a0,ra
   21d64:	00010937          	lui	s2,0x10
   21d68:	fff90593          	addi	a1,s2,-1 # ffff <register_fini-0x75>
   21d6c:	01488a33          	add	s4,a7,s4
   21d70:	00660633          	add	a2,a2,t1
   21d74:	00663333          	sltu	t1,a2,t1
   21d78:	00b7f7b3          	and	a5,a5,a1
   21d7c:	04c12223          	sw	a2,68(sp)
   21d80:	017a0633          	add	a2,s4,s7
   21d84:	006608b3          	add	a7,a2,t1
   21d88:	00b9f9b3          	and	s3,s3,a1
   21d8c:	01079793          	slli	a5,a5,0x10
   21d90:	013787b3          	add	a5,a5,s3
   21d94:	01763bb3          	sltu	s7,a2,s7
   21d98:	010889b3          	add	s3,a7,a6
   21d9c:	0068b8b3          	sltu	a7,a7,t1
   21da0:	001a3a33          	sltu	s4,s4,ra
   21da4:	011be8b3          	or	a7,s7,a7
   21da8:	014888b3          	add	a7,a7,s4
   21dac:	0109b833          	sltu	a6,s3,a6
   21db0:	016888b3          	add	a7,a7,s6
   21db4:	010880b3          	add	ra,a7,a6
   21db8:	00e989b3          	add	s3,s3,a4
   21dbc:	00e9b733          	sltu	a4,s3,a4
   21dc0:	01508633          	add	a2,ra,s5
   21dc4:	00e60333          	add	t1,a2,a4
   21dc8:	00f989b3          	add	s3,s3,a5
   21dcc:	05312423          	sw	s3,72(sp)
   21dd0:	00f9b9b3          	sltu	s3,s3,a5
   21dd4:	00d307b3          	add	a5,t1,a3
   21dd8:	01378a33          	add	s4,a5,s3
   21ddc:	0168b8b3          	sltu	a7,a7,s6
   21de0:	0100b833          	sltu	a6,ra,a6
   21de4:	01563ab3          	sltu	s5,a2,s5
   21de8:	00e33733          	sltu	a4,t1,a4
   21dec:	00eae733          	or	a4,s5,a4
   21df0:	00d7b6b3          	sltu	a3,a5,a3
   21df4:	0108e8b3          	or	a7,a7,a6
   21df8:	013a39b3          	sltu	s3,s4,s3
   21dfc:	00e888b3          	add	a7,a7,a4
   21e00:	0136e9b3          	or	s3,a3,s3
   21e04:	013889b3          	add	s3,a7,s3
   21e08:	02c12883          	lw	a7,44(sp)
   21e0c:	05312823          	sw	s3,80(sp)
   21e10:	0102d993          	srli	s3,t0,0x10
   21e14:	00b8f733          	and	a4,a7,a1
   21e18:	00b2f2b3          	and	t0,t0,a1
   21e1c:	05412623          	sw	s4,76(sp)
   21e20:	0108d793          	srli	a5,a7,0x10
   21e24:	00028513          	mv	a0,t0
   21e28:	00070593          	mv	a1,a4
   21e2c:	099020ef          	jal	ra,246c4 <__mulsi3>
   21e30:	00050313          	mv	t1,a0
   21e34:	00078593          	mv	a1,a5
   21e38:	00028513          	mv	a0,t0
   21e3c:	089020ef          	jal	ra,246c4 <__mulsi3>
   21e40:	00050813          	mv	a6,a0
   21e44:	00070593          	mv	a1,a4
   21e48:	00098513          	mv	a0,s3
   21e4c:	079020ef          	jal	ra,246c4 <__mulsi3>
   21e50:	00050713          	mv	a4,a0
   21e54:	00078593          	mv	a1,a5
   21e58:	00098513          	mv	a0,s3
   21e5c:	069020ef          	jal	ra,246c4 <__mulsi3>
   21e60:	01035793          	srli	a5,t1,0x10
   21e64:	00e80833          	add	a6,a6,a4
   21e68:	010787b3          	add	a5,a5,a6
   21e6c:	00050a13          	mv	s4,a0
   21e70:	00e7f463          	bgeu	a5,a4,21e78 <__multf3+0x890>
   21e74:	01250a33          	add	s4,a0,s2
   21e78:	00010737          	lui	a4,0x10
   21e7c:	fff70693          	addi	a3,a4,-1 # ffff <register_fini-0x75>
   21e80:	0107d813          	srli	a6,a5,0x10
   21e84:	01480a33          	add	s4,a6,s4
   21e88:	00d37833          	and	a6,t1,a3
   21e8c:	01c12303          	lw	t1,28(sp)
   21e90:	00d7f633          	and	a2,a5,a3
   21e94:	01061613          	slli	a2,a2,0x10
   21e98:	010fd793          	srli	a5,t6,0x10
   21e9c:	00d372b3          	and	t0,t1,a3
   21ea0:	00dfffb3          	and	t6,t6,a3
   21ea4:	01060833          	add	a6,a2,a6
   21ea8:	01035913          	srli	s2,t1,0x10
   21eac:	00028513          	mv	a0,t0
   21eb0:	000f8593          	mv	a1,t6
   21eb4:	011020ef          	jal	ra,246c4 <__mulsi3>
   21eb8:	00050b13          	mv	s6,a0
   21ebc:	00078593          	mv	a1,a5
   21ec0:	00028513          	mv	a0,t0
   21ec4:	001020ef          	jal	ra,246c4 <__mulsi3>
   21ec8:	00050293          	mv	t0,a0
   21ecc:	000f8593          	mv	a1,t6
   21ed0:	00090513          	mv	a0,s2
   21ed4:	7f0020ef          	jal	ra,246c4 <__mulsi3>
   21ed8:	00050f93          	mv	t6,a0
   21edc:	00078593          	mv	a1,a5
   21ee0:	00090513          	mv	a0,s2
   21ee4:	7e0020ef          	jal	ra,246c4 <__mulsi3>
   21ee8:	010b5793          	srli	a5,s6,0x10
   21eec:	01f282b3          	add	t0,t0,t6
   21ef0:	005787b3          	add	a5,a5,t0
   21ef4:	00050993          	mv	s3,a0
   21ef8:	01f7f463          	bgeu	a5,t6,21f00 <__multf3+0x918>
   21efc:	00e509b3          	add	s3,a0,a4
   21f00:	000102b7          	lui	t0,0x10
   21f04:	fff28713          	addi	a4,t0,-1 # ffff <register_fini-0x75>
   21f08:	00e7f6b3          	and	a3,a5,a4
   21f0c:	0107d513          	srli	a0,a5,0x10
   21f10:	01069693          	slli	a3,a3,0x10
   21f14:	00eb7b33          	and	s6,s6,a4
   21f18:	00ef77b3          	and	a5,t5,a4
   21f1c:	00e4fab3          	and	s5,s1,a4
   21f20:	013509b3          	add	s3,a0,s3
   21f24:	01668b33          	add	s6,a3,s6
   21f28:	010f5913          	srli	s2,t5,0x10
   21f2c:	0104db93          	srli	s7,s1,0x10
   21f30:	00078513          	mv	a0,a5
   21f34:	000a8593          	mv	a1,s5
   21f38:	78c020ef          	jal	ra,246c4 <__mulsi3>
   21f3c:	00050f93          	mv	t6,a0
   21f40:	000b8593          	mv	a1,s7
   21f44:	00078513          	mv	a0,a5
   21f48:	77c020ef          	jal	ra,246c4 <__mulsi3>
   21f4c:	00050713          	mv	a4,a0
   21f50:	000a8593          	mv	a1,s5
   21f54:	00090513          	mv	a0,s2
   21f58:	76c020ef          	jal	ra,246c4 <__mulsi3>
   21f5c:	00050a93          	mv	s5,a0
   21f60:	000b8593          	mv	a1,s7
   21f64:	00090513          	mv	a0,s2
   21f68:	75c020ef          	jal	ra,246c4 <__mulsi3>
   21f6c:	010fd793          	srli	a5,t6,0x10
   21f70:	01570733          	add	a4,a4,s5
   21f74:	00e787b3          	add	a5,a5,a4
   21f78:	00050913          	mv	s2,a0
   21f7c:	0157f463          	bgeu	a5,s5,21f84 <__multf3+0x99c>
   21f80:	00550933          	add	s2,a0,t0
   21f84:	000102b7          	lui	t0,0x10
   21f88:	fff28693          	addi	a3,t0,-1 # ffff <register_fini-0x75>
   21f8c:	00d7f733          	and	a4,a5,a3
   21f90:	0107d593          	srli	a1,a5,0x10
   21f94:	00dfffb3          	and	t6,t6,a3
   21f98:	00de7ab3          	and	s5,t3,a3
   21f9c:	00defbb3          	and	s7,t4,a3
   21fa0:	01071713          	slli	a4,a4,0x10
   21fa4:	01258933          	add	s2,a1,s2
   21fa8:	01f70733          	add	a4,a4,t6
   21fac:	010e5d13          	srli	s10,t3,0x10
   21fb0:	010edc13          	srli	s8,t4,0x10
   21fb4:	000a8513          	mv	a0,s5
   21fb8:	000b8593          	mv	a1,s7
   21fbc:	708020ef          	jal	ra,246c4 <__mulsi3>
   21fc0:	00050f93          	mv	t6,a0
   21fc4:	000c0593          	mv	a1,s8
   21fc8:	000a8513          	mv	a0,s5
   21fcc:	6f8020ef          	jal	ra,246c4 <__mulsi3>
   21fd0:	00050a93          	mv	s5,a0
   21fd4:	000b8593          	mv	a1,s7
   21fd8:	000d0513          	mv	a0,s10
   21fdc:	6e8020ef          	jal	ra,246c4 <__mulsi3>
   21fe0:	00050793          	mv	a5,a0
   21fe4:	000c0593          	mv	a1,s8
   21fe8:	000d0513          	mv	a0,s10
   21fec:	6d8020ef          	jal	ra,246c4 <__mulsi3>
   21ff0:	010fd693          	srli	a3,t6,0x10
   21ff4:	00fa8ab3          	add	s5,s5,a5
   21ff8:	015686b3          	add	a3,a3,s5
   21ffc:	00050b93          	mv	s7,a0
   22000:	00f6f463          	bgeu	a3,a5,22008 <__multf3+0xa20>
   22004:	00550bb3          	add	s7,a0,t0
   22008:	00010ab7          	lui	s5,0x10
   2200c:	fffa8293          	addi	t0,s5,-1 # ffff <register_fini-0x75>
   22010:	0106d513          	srli	a0,a3,0x10
   22014:	0056f6b3          	and	a3,a3,t0
   22018:	01069793          	slli	a5,a3,0x10
   2201c:	005fffb3          	and	t6,t6,t0
   22020:	01f78fb3          	add	t6,a5,t6
   22024:	04c12783          	lw	a5,76(sp)
   22028:	01750bb3          	add	s7,a0,s7
   2202c:	00f807b3          	add	a5,a6,a5
   22030:	0107b633          	sltu	a2,a5,a6
   22034:	05012803          	lw	a6,80(sp)
   22038:	016787b3          	add	a5,a5,s6
   2203c:	0167b6b3          	sltu	a3,a5,s6
   22040:	010a0833          	add	a6,s4,a6
   22044:	00c80db3          	add	s11,a6,a2
   22048:	013d8b33          	add	s6,s11,s3
   2204c:	00db0d33          	add	s10,s6,a3
   22050:	00e787b3          	add	a5,a5,a4
   22054:	00e7b733          	sltu	a4,a5,a4
   22058:	012d05b3          	add	a1,s10,s2
   2205c:	00e58c33          	add	s8,a1,a4
   22060:	01f787b3          	add	a5,a5,t6
   22064:	04f12623          	sw	a5,76(sp)
   22068:	01483833          	sltu	a6,a6,s4
   2206c:	01f7b7b3          	sltu	a5,a5,t6
   22070:	00cdb633          	sltu	a2,s11,a2
   22074:	017c0fb3          	add	t6,s8,s7
   22078:	013b39b3          	sltu	s3,s6,s3
   2207c:	00dd36b3          	sltu	a3,s10,a3
   22080:	00ff80b3          	add	ra,t6,a5
   22084:	00ec3733          	sltu	a4,s8,a4
   22088:	00c86833          	or	a6,a6,a2
   2208c:	00d9e9b3          	or	s3,s3,a3
   22090:	0125b5b3          	sltu	a1,a1,s2
   22094:	017fbbb3          	sltu	s7,t6,s7
   22098:	01380833          	add	a6,a6,s3
   2209c:	00e5e5b3          	or	a1,a1,a4
   220a0:	00f0b7b3          	sltu	a5,ra,a5
   220a4:	00b805b3          	add	a1,a6,a1
   220a8:	00fbe7b3          	or	a5,s7,a5
   220ac:	00f587b3          	add	a5,a1,a5
   220b0:	005e7fb3          	and	t6,t3,t0
   220b4:	0054f2b3          	and	t0,s1,t0
   220b8:	04f12a23          	sw	a5,84(sp)
   220bc:	04112823          	sw	ra,80(sp)
   220c0:	010e5713          	srli	a4,t3,0x10
   220c4:	0104d793          	srli	a5,s1,0x10
   220c8:	000f8513          	mv	a0,t6
   220cc:	00028593          	mv	a1,t0
   220d0:	5f4020ef          	jal	ra,246c4 <__mulsi3>
   220d4:	00050813          	mv	a6,a0
   220d8:	00078593          	mv	a1,a5
   220dc:	000f8513          	mv	a0,t6
   220e0:	5e4020ef          	jal	ra,246c4 <__mulsi3>
   220e4:	00050f93          	mv	t6,a0
   220e8:	00028593          	mv	a1,t0
   220ec:	00070513          	mv	a0,a4
   220f0:	5d4020ef          	jal	ra,246c4 <__mulsi3>
   220f4:	00050293          	mv	t0,a0
   220f8:	00078593          	mv	a1,a5
   220fc:	00070513          	mv	a0,a4
   22100:	5c4020ef          	jal	ra,246c4 <__mulsi3>
   22104:	01085793          	srli	a5,a6,0x10
   22108:	005f8fb3          	add	t6,t6,t0
   2210c:	01f787b3          	add	a5,a5,t6
   22110:	00050713          	mv	a4,a0
   22114:	0057f463          	bgeu	a5,t0,2211c <__multf3+0xb34>
   22118:	01550733          	add	a4,a0,s5
   2211c:	00010fb7          	lui	t6,0x10
   22120:	ffff8693          	addi	a3,t6,-1 # ffff <register_fini-0x75>
   22124:	00d7f633          	and	a2,a5,a3
   22128:	0107da13          	srli	s4,a5,0x10
   2212c:	00ea0a33          	add	s4,s4,a4
   22130:	01061613          	slli	a2,a2,0x10
   22134:	00d87733          	and	a4,a6,a3
   22138:	010f5293          	srli	t0,t5,0x10
   2213c:	00d8f833          	and	a6,a7,a3
   22140:	00df7f33          	and	t5,t5,a3
   22144:	00e60733          	add	a4,a2,a4
   22148:	0108d793          	srli	a5,a7,0x10
   2214c:	000f0513          	mv	a0,t5
   22150:	00080593          	mv	a1,a6
   22154:	570020ef          	jal	ra,246c4 <__mulsi3>
   22158:	00050a93          	mv	s5,a0
   2215c:	00078593          	mv	a1,a5
   22160:	000f0513          	mv	a0,t5
   22164:	560020ef          	jal	ra,246c4 <__mulsi3>
   22168:	00050f13          	mv	t5,a0
   2216c:	00080593          	mv	a1,a6
   22170:	00028513          	mv	a0,t0
   22174:	550020ef          	jal	ra,246c4 <__mulsi3>
   22178:	00050813          	mv	a6,a0
   2217c:	00078593          	mv	a1,a5
   22180:	00028513          	mv	a0,t0
   22184:	540020ef          	jal	ra,246c4 <__mulsi3>
   22188:	010ad793          	srli	a5,s5,0x10
   2218c:	010f0f33          	add	t5,t5,a6
   22190:	01e787b3          	add	a5,a5,t5
   22194:	00050993          	mv	s3,a0
   22198:	0107f463          	bgeu	a5,a6,221a0 <__multf3+0xbb8>
   2219c:	01f509b3          	add	s3,a0,t6
   221a0:	00010837          	lui	a6,0x10
   221a4:	fff80613          	addi	a2,a6,-1 # ffff <register_fini-0x75>
   221a8:	00c7f6b3          	and	a3,a5,a2
   221ac:	0107d513          	srli	a0,a5,0x10
   221b0:	01069693          	slli	a3,a3,0x10
   221b4:	00cafab3          	and	s5,s5,a2
   221b8:	010ed913          	srli	s2,t4,0x10
   221bc:	00c377b3          	and	a5,t1,a2
   221c0:	00cefeb3          	and	t4,t4,a2
   221c4:	013509b3          	add	s3,a0,s3
   221c8:	01568ab3          	add	s5,a3,s5
   221cc:	01035f13          	srli	t5,t1,0x10
   221d0:	00078513          	mv	a0,a5
   221d4:	000e8593          	mv	a1,t4
   221d8:	4ec020ef          	jal	ra,246c4 <__mulsi3>
   221dc:	00050f93          	mv	t6,a0
   221e0:	00090593          	mv	a1,s2
   221e4:	00078513          	mv	a0,a5
   221e8:	4dc020ef          	jal	ra,246c4 <__mulsi3>
   221ec:	00050293          	mv	t0,a0
   221f0:	000e8593          	mv	a1,t4
   221f4:	000f0513          	mv	a0,t5
   221f8:	4cc020ef          	jal	ra,246c4 <__mulsi3>
   221fc:	00050793          	mv	a5,a0
   22200:	00090593          	mv	a1,s2
   22204:	000f0513          	mv	a0,t5
   22208:	4bc020ef          	jal	ra,246c4 <__mulsi3>
   2220c:	010fd693          	srli	a3,t6,0x10
   22210:	00f282b3          	add	t0,t0,a5
   22214:	005686b3          	add	a3,a3,t0
   22218:	00050913          	mv	s2,a0
   2221c:	00f6f463          	bgeu	a3,a5,22224 <__multf3+0xc3c>
   22220:	01050933          	add	s2,a0,a6
   22224:	00010eb7          	lui	t4,0x10
   22228:	fffe8793          	addi	a5,t4,-1 # ffff <register_fini-0x75>
   2222c:	0106d513          	srli	a0,a3,0x10
   22230:	00f6f6b3          	and	a3,a3,a5
   22234:	01069593          	slli	a1,a3,0x10
   22238:	00ffffb3          	and	t6,t6,a5
   2223c:	010e5293          	srli	t0,t3,0x10
   22240:	00fe7e33          	and	t3,t3,a5
   22244:	00f8f7b3          	and	a5,a7,a5
   22248:	01250933          	add	s2,a0,s2
   2224c:	01f58fb3          	add	t6,a1,t6
   22250:	0108d813          	srli	a6,a7,0x10
   22254:	000e0513          	mv	a0,t3
   22258:	00078593          	mv	a1,a5
   2225c:	468020ef          	jal	ra,246c4 <__mulsi3>
   22260:	00050f13          	mv	t5,a0
   22264:	00080593          	mv	a1,a6
   22268:	000e0513          	mv	a0,t3
   2226c:	458020ef          	jal	ra,246c4 <__mulsi3>
   22270:	00050e13          	mv	t3,a0
   22274:	00078593          	mv	a1,a5
   22278:	00028513          	mv	a0,t0
   2227c:	448020ef          	jal	ra,246c4 <__mulsi3>
   22280:	00050793          	mv	a5,a0
   22284:	00080593          	mv	a1,a6
   22288:	00028513          	mv	a0,t0
   2228c:	438020ef          	jal	ra,246c4 <__mulsi3>
   22290:	00fe06b3          	add	a3,t3,a5
   22294:	010f5813          	srli	a6,t5,0x10
   22298:	010686b3          	add	a3,a3,a6
   2229c:	00f6f463          	bgeu	a3,a5,222a4 <__multf3+0xcbc>
   222a0:	01d50533          	add	a0,a0,t4
   222a4:	00010e37          	lui	t3,0x10
   222a8:	fffe0593          	addi	a1,t3,-1 # ffff <register_fini-0x75>
   222ac:	00b6f833          	and	a6,a3,a1
   222b0:	0106d793          	srli	a5,a3,0x10
   222b4:	00bf7f33          	and	t5,t5,a1
   222b8:	00b37eb3          	and	t4,t1,a1
   222bc:	0104db93          	srli	s7,s1,0x10
   222c0:	01081813          	slli	a6,a6,0x10
   222c4:	00b4f4b3          	and	s1,s1,a1
   222c8:	00a782b3          	add	t0,a5,a0
   222cc:	01e80833          	add	a6,a6,t5
   222d0:	01035793          	srli	a5,t1,0x10
   222d4:	000e8513          	mv	a0,t4
   222d8:	00048593          	mv	a1,s1
   222dc:	3e8020ef          	jal	ra,246c4 <__mulsi3>
   222e0:	00050b13          	mv	s6,a0
   222e4:	000b8593          	mv	a1,s7
   222e8:	000e8513          	mv	a0,t4
   222ec:	3d8020ef          	jal	ra,246c4 <__mulsi3>
   222f0:	00050f13          	mv	t5,a0
   222f4:	00048593          	mv	a1,s1
   222f8:	00078513          	mv	a0,a5
   222fc:	3c8020ef          	jal	ra,246c4 <__mulsi3>
   22300:	00050e93          	mv	t4,a0
   22304:	000b8593          	mv	a1,s7
   22308:	00078513          	mv	a0,a5
   2230c:	3b8020ef          	jal	ra,246c4 <__mulsi3>
   22310:	010b5693          	srli	a3,s6,0x10
   22314:	01df0f33          	add	t5,t5,t4
   22318:	01e686b3          	add	a3,a3,t5
   2231c:	00050493          	mv	s1,a0
   22320:	01d6f463          	bgeu	a3,t4,22328 <__multf3+0xd40>
   22324:	01c504b3          	add	s1,a0,t3
   22328:	05012583          	lw	a1,80(sp)
   2232c:	00010eb7          	lui	t4,0x10
   22330:	fffe8e13          	addi	t3,t4,-1 # ffff <register_fini-0x75>
   22334:	00b705b3          	add	a1,a4,a1
   22338:	00e5b633          	sltu	a2,a1,a4
   2233c:	05412703          	lw	a4,84(sp)
   22340:	01c6ff33          	and	t5,a3,t3
   22344:	01cb7b33          	and	s6,s6,t3
   22348:	00ea0733          	add	a4,s4,a4
   2234c:	00c70533          	add	a0,a4,a2
   22350:	015585b3          	add	a1,a1,s5
   22354:	010f1f13          	slli	t5,t5,0x10
   22358:	0106d793          	srli	a5,a3,0x10
   2235c:	016f0f33          	add	t5,t5,s6
   22360:	0155b6b3          	sltu	a3,a1,s5
   22364:	01350b33          	add	s6,a0,s3
   22368:	00db0c33          	add	s8,s6,a3
   2236c:	01f585b3          	add	a1,a1,t6
   22370:	012c0ab3          	add	s5,s8,s2
   22374:	00c53633          	sltu	a2,a0,a2
   22378:	00dc36b3          	sltu	a3,s8,a3
   2237c:	04b12823          	sw	a1,80(sp)
   22380:	01473733          	sltu	a4,a4,s4
   22384:	01f5b5b3          	sltu	a1,a1,t6
   22388:	013b39b3          	sltu	s3,s6,s3
   2238c:	00ba8bb3          	add	s7,s5,a1
   22390:	009784b3          	add	s1,a5,s1
   22394:	00c76733          	or	a4,a4,a2
   22398:	00d9e7b3          	or	a5,s3,a3
   2239c:	00f70733          	add	a4,a4,a5
   223a0:	012ab933          	sltu	s2,s5,s2
   223a4:	00bbb7b3          	sltu	a5,s7,a1
   223a8:	00f967b3          	or	a5,s2,a5
   223ac:	010b8fb3          	add	t6,s7,a6
   223b0:	00f70733          	add	a4,a4,a5
   223b4:	005707b3          	add	a5,a4,t0
   223b8:	010fb833          	sltu	a6,t6,a6
   223bc:	010786b3          	add	a3,a5,a6
   223c0:	01ef8fb3          	add	t6,t6,t5
   223c4:	00968733          	add	a4,a3,s1
   223c8:	01efbf33          	sltu	t5,t6,t5
   223cc:	05f12a23          	sw	t6,84(sp)
   223d0:	01e70fb3          	add	t6,a4,t5
   223d4:	0057b7b3          	sltu	a5,a5,t0
   223d8:	0106b833          	sltu	a6,a3,a6
   223dc:	009734b3          	sltu	s1,a4,s1
   223e0:	01efbf33          	sltu	t5,t6,t5
   223e4:	01e4ef33          	or	t5,s1,t5
   223e8:	0107e7b3          	or	a5,a5,a6
   223ec:	01e787b3          	add	a5,a5,t5
   223f0:	04f12e23          	sw	a5,92(sp)
   223f4:	01035f13          	srli	t5,t1,0x10
   223f8:	0108d793          	srli	a5,a7,0x10
   223fc:	01c37333          	and	t1,t1,t3
   22400:	01c8f8b3          	and	a7,a7,t3
   22404:	05f12c23          	sw	t6,88(sp)
   22408:	00030513          	mv	a0,t1
   2240c:	00088593          	mv	a1,a7
   22410:	2b4020ef          	jal	ra,246c4 <__mulsi3>
   22414:	00050813          	mv	a6,a0
   22418:	00078593          	mv	a1,a5
   2241c:	00030513          	mv	a0,t1
   22420:	2a4020ef          	jal	ra,246c4 <__mulsi3>
   22424:	00050713          	mv	a4,a0
   22428:	00088593          	mv	a1,a7
   2242c:	000f0513          	mv	a0,t5
   22430:	294020ef          	jal	ra,246c4 <__mulsi3>
   22434:	00050893          	mv	a7,a0
   22438:	00078593          	mv	a1,a5
   2243c:	000f0513          	mv	a0,t5
   22440:	284020ef          	jal	ra,246c4 <__mulsi3>
   22444:	01085793          	srli	a5,a6,0x10
   22448:	01170733          	add	a4,a4,a7
   2244c:	00e787b3          	add	a5,a5,a4
   22450:	0117f463          	bgeu	a5,a7,22458 <__multf3+0xe70>
   22454:	01d50533          	add	a0,a0,t4
   22458:	01c7f733          	and	a4,a5,t3
   2245c:	01071713          	slli	a4,a4,0x10
   22460:	01c87e33          	and	t3,a6,t3
   22464:	01c70e33          	add	t3,a4,t3
   22468:	05812703          	lw	a4,88(sp)
   2246c:	05c12683          	lw	a3,92(sp)
   22470:	0107d793          	srli	a5,a5,0x10
   22474:	00ee0733          	add	a4,t3,a4
   22478:	01c73e33          	sltu	t3,a4,t3
   2247c:	00d787b3          	add	a5,a5,a3
   22480:	01c787b3          	add	a5,a5,t3
   22484:	00a78533          	add	a0,a5,a0
   22488:	04e12c23          	sw	a4,88(sp)
   2248c:	04412783          	lw	a5,68(sp)
   22490:	04012703          	lw	a4,64(sp)
   22494:	04a12e23          	sw	a0,92(sp)
   22498:	05010593          	addi	a1,sp,80
   2249c:	00e7e7b3          	or	a5,a5,a4
   224a0:	04812703          	lw	a4,72(sp)
   224a4:	00e7e733          	or	a4,a5,a4
   224a8:	04c12783          	lw	a5,76(sp)
   224ac:	00d79793          	slli	a5,a5,0xd
   224b0:	00e7e7b3          	or	a5,a5,a4
   224b4:	04010713          	addi	a4,sp,64
   224b8:	00c72683          	lw	a3,12(a4)
   224bc:	01072603          	lw	a2,16(a4)
   224c0:	00470713          	addi	a4,a4,4
   224c4:	0136d693          	srli	a3,a3,0x13
   224c8:	00d61613          	slli	a2,a2,0xd
   224cc:	00c6e6b3          	or	a3,a3,a2
   224d0:	fed72e23          	sw	a3,-4(a4)
   224d4:	fee592e3          	bne	a1,a4,224b8 <__multf3+0xed0>
   224d8:	04012703          	lw	a4,64(sp)
   224dc:	04812683          	lw	a3,72(sp)
   224e0:	00f037b3          	snez	a5,a5
   224e4:	00e7e7b3          	or	a5,a5,a4
   224e8:	02d12c23          	sw	a3,56(sp)
   224ec:	04c12703          	lw	a4,76(sp)
   224f0:	04412683          	lw	a3,68(sp)
   224f4:	02f12823          	sw	a5,48(sp)
   224f8:	02e12e23          	sw	a4,60(sp)
   224fc:	02d12a23          	sw	a3,52(sp)
   22500:	00b71693          	slli	a3,a4,0xb
   22504:	2006d463          	bgez	a3,2270c <__multf3+0x1124>
   22508:	01f79793          	slli	a5,a5,0x1f
   2250c:	03010713          	addi	a4,sp,48
   22510:	03c10593          	addi	a1,sp,60
   22514:	00072683          	lw	a3,0(a4)
   22518:	00472603          	lw	a2,4(a4)
   2251c:	00470713          	addi	a4,a4,4
   22520:	0016d693          	srli	a3,a3,0x1
   22524:	01f61613          	slli	a2,a2,0x1f
   22528:	00c6e6b3          	or	a3,a3,a2
   2252c:	fed72e23          	sw	a3,-4(a4)
   22530:	fee592e3          	bne	a1,a4,22514 <__multf3+0xf2c>
   22534:	03c12703          	lw	a4,60(sp)
   22538:	00f037b3          	snez	a5,a5
   2253c:	00175713          	srli	a4,a4,0x1
   22540:	02e12e23          	sw	a4,60(sp)
   22544:	03012703          	lw	a4,48(sp)
   22548:	00f767b3          	or	a5,a4,a5
   2254c:	02f12823          	sw	a5,48(sp)
   22550:	000047b7          	lui	a5,0x4
   22554:	fff78793          	addi	a5,a5,-1 # 3fff <register_fini-0xc075>
   22558:	00fc87b3          	add	a5,s9,a5
   2255c:	1cf05863          	blez	a5,2272c <__multf3+0x1144>
   22560:	03012703          	lw	a4,48(sp)
   22564:	00777693          	andi	a3,a4,7
   22568:	04068463          	beqz	a3,225b0 <__multf3+0xfc8>
   2256c:	00f77693          	andi	a3,a4,15
   22570:	00400613          	li	a2,4
   22574:	02c68e63          	beq	a3,a2,225b0 <__multf3+0xfc8>
   22578:	03412683          	lw	a3,52(sp)
   2257c:	00470713          	addi	a4,a4,4
   22580:	02e12823          	sw	a4,48(sp)
   22584:	00473713          	sltiu	a4,a4,4
   22588:	00d706b3          	add	a3,a4,a3
   2258c:	00e6b733          	sltu	a4,a3,a4
   22590:	02d12a23          	sw	a3,52(sp)
   22594:	03812683          	lw	a3,56(sp)
   22598:	00d706b3          	add	a3,a4,a3
   2259c:	02d12c23          	sw	a3,56(sp)
   225a0:	00e6b6b3          	sltu	a3,a3,a4
   225a4:	03c12703          	lw	a4,60(sp)
   225a8:	00e686b3          	add	a3,a3,a4
   225ac:	02d12e23          	sw	a3,60(sp)
   225b0:	03c12703          	lw	a4,60(sp)
   225b4:	00b71693          	slli	a3,a4,0xb
   225b8:	0006de63          	bgez	a3,225d4 <__multf3+0xfec>
   225bc:	fff007b7          	lui	a5,0xfff00
   225c0:	fff78793          	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffed902f>
   225c4:	00f77733          	and	a4,a4,a5
   225c8:	000047b7          	lui	a5,0x4
   225cc:	02e12e23          	sw	a4,60(sp)
   225d0:	00fc87b3          	add	a5,s9,a5
   225d4:	03010713          	addi	a4,sp,48
   225d8:	03c10593          	addi	a1,sp,60
   225dc:	00072683          	lw	a3,0(a4)
   225e0:	00472603          	lw	a2,4(a4)
   225e4:	00470713          	addi	a4,a4,4
   225e8:	0036d693          	srli	a3,a3,0x3
   225ec:	01d61613          	slli	a2,a2,0x1d
   225f0:	00c6e6b3          	or	a3,a3,a2
   225f4:	fed72e23          	sw	a3,-4(a4)
   225f8:	feb712e3          	bne	a4,a1,225dc <__multf3+0xff4>
   225fc:	00008737          	lui	a4,0x8
   22600:	ffe70693          	addi	a3,a4,-2 # 7ffe <register_fini-0x8076>
   22604:	10f6c863          	blt	a3,a5,22714 <__multf3+0x112c>
   22608:	03c12703          	lw	a4,60(sp)
   2260c:	00375713          	srli	a4,a4,0x3
   22610:	02e12e23          	sw	a4,60(sp)
   22614:	01179793          	slli	a5,a5,0x11
   22618:	00f39393          	slli	t2,t2,0xf
   2261c:	0117d793          	srli	a5,a5,0x11
   22620:	00f3e7b3          	or	a5,t2,a5
   22624:	04f11723          	sh	a5,78(sp)
   22628:	03012783          	lw	a5,48(sp)
   2262c:	03c12703          	lw	a4,60(sp)
   22630:	09c12083          	lw	ra,156(sp)
   22634:	00f42023          	sw	a5,0(s0) # 80000 <__BSS_END__+0x59030>
   22638:	03412783          	lw	a5,52(sp)
   2263c:	04e11623          	sh	a4,76(sp)
   22640:	00040513          	mv	a0,s0
   22644:	00f42223          	sw	a5,4(s0)
   22648:	03812783          	lw	a5,56(sp)
   2264c:	09412483          	lw	s1,148(sp)
   22650:	09012903          	lw	s2,144(sp)
   22654:	00f42423          	sw	a5,8(s0)
   22658:	04c12783          	lw	a5,76(sp)
   2265c:	08c12983          	lw	s3,140(sp)
   22660:	08812a03          	lw	s4,136(sp)
   22664:	00f42623          	sw	a5,12(s0)
   22668:	09812403          	lw	s0,152(sp)
   2266c:	08412a83          	lw	s5,132(sp)
   22670:	08012b03          	lw	s6,128(sp)
   22674:	07c12b83          	lw	s7,124(sp)
   22678:	07812c03          	lw	s8,120(sp)
   2267c:	07412c83          	lw	s9,116(sp)
   22680:	07012d03          	lw	s10,112(sp)
   22684:	06c12d83          	lw	s11,108(sp)
   22688:	0a010113          	addi	sp,sp,160
   2268c:	00008067          	ret
   22690:	00098393          	mv	t2,s3
   22694:	01012783          	lw	a5,16(sp)
   22698:	02f12823          	sw	a5,48(sp)
   2269c:	01412783          	lw	a5,20(sp)
   226a0:	02f12a23          	sw	a5,52(sp)
   226a4:	01812783          	lw	a5,24(sp)
   226a8:	02f12c23          	sw	a5,56(sp)
   226ac:	01c12783          	lw	a5,28(sp)
   226b0:	02f12e23          	sw	a5,60(sp)
   226b4:	00200793          	li	a5,2
   226b8:	28fb8863          	beq	s7,a5,22948 <__multf3+0x1360>
   226bc:	00300793          	li	a5,3
   226c0:	2afb8263          	beq	s7,a5,22964 <__multf3+0x137c>
   226c4:	00100793          	li	a5,1
   226c8:	e8fb94e3          	bne	s7,a5,22550 <__multf3+0xf68>
   226cc:	02012e23          	sw	zero,60(sp)
   226d0:	02012c23          	sw	zero,56(sp)
   226d4:	02012a23          	sw	zero,52(sp)
   226d8:	02012823          	sw	zero,48(sp)
   226dc:	22c0006f          	j	22908 <__multf3+0x1320>
   226e0:	00090393          	mv	t2,s2
   226e4:	02012783          	lw	a5,32(sp)
   226e8:	00070b93          	mv	s7,a4
   226ec:	02f12823          	sw	a5,48(sp)
   226f0:	02412783          	lw	a5,36(sp)
   226f4:	02f12a23          	sw	a5,52(sp)
   226f8:	02812783          	lw	a5,40(sp)
   226fc:	02f12c23          	sw	a5,56(sp)
   22700:	02c12783          	lw	a5,44(sp)
   22704:	02f12e23          	sw	a5,60(sp)
   22708:	fadff06f          	j	226b4 <__multf3+0x10cc>
   2270c:	00812c83          	lw	s9,8(sp)
   22710:	e41ff06f          	j	22550 <__multf3+0xf68>
   22714:	02012e23          	sw	zero,60(sp)
   22718:	02012c23          	sw	zero,56(sp)
   2271c:	02012a23          	sw	zero,52(sp)
   22720:	02012823          	sw	zero,48(sp)
   22724:	fff70793          	addi	a5,a4,-1
   22728:	eedff06f          	j	22614 <__multf3+0x102c>
   2272c:	00100693          	li	a3,1
   22730:	40f686b3          	sub	a3,a3,a5
   22734:	07400793          	li	a5,116
   22738:	1cd7cc63          	blt	a5,a3,22910 <__multf3+0x1328>
   2273c:	4056d313          	srai	t1,a3,0x5
   22740:	00000793          	li	a5,0
   22744:	00000613          	li	a2,0
   22748:	04661863          	bne	a2,t1,22798 <__multf3+0x11b0>
   2274c:	01f6f693          	andi	a3,a3,31
   22750:	00231593          	slli	a1,t1,0x2
   22754:	06069063          	bnez	a3,227b4 <__multf3+0x11cc>
   22758:	00300693          	li	a3,3
   2275c:	03010613          	addi	a2,sp,48
   22760:	00000713          	li	a4,0
   22764:	406686b3          	sub	a3,a3,t1
   22768:	00b60533          	add	a0,a2,a1
   2276c:	00052503          	lw	a0,0(a0)
   22770:	00170713          	addi	a4,a4,1
   22774:	00460613          	addi	a2,a2,4
   22778:	fea62e23          	sw	a0,-4(a2)
   2277c:	fee6d6e3          	bge	a3,a4,22768 <__multf3+0x1180>
   22780:	00400693          	li	a3,4
   22784:	406686b3          	sub	a3,a3,t1
   22788:	00100713          	li	a4,1
   2278c:	08d05063          	blez	a3,2280c <__multf3+0x1224>
   22790:	00068713          	mv	a4,a3
   22794:	0780006f          	j	2280c <__multf3+0x1224>
   22798:	00261713          	slli	a4,a2,0x2
   2279c:	03010593          	addi	a1,sp,48
   227a0:	00e58733          	add	a4,a1,a4
   227a4:	00072703          	lw	a4,0(a4)
   227a8:	00160613          	addi	a2,a2,1
   227ac:	00e7e7b3          	or	a5,a5,a4
   227b0:	f99ff06f          	j	22748 <__multf3+0x1160>
   227b4:	06010713          	addi	a4,sp,96
   227b8:	00b70733          	add	a4,a4,a1
   227bc:	fd072703          	lw	a4,-48(a4)
   227c0:	02000893          	li	a7,32
   227c4:	40d888b3          	sub	a7,a7,a3
   227c8:	01171733          	sll	a4,a4,a7
   227cc:	00e7e7b3          	or	a5,a5,a4
   227d0:	00300613          	li	a2,3
   227d4:	03010713          	addi	a4,sp,48
   227d8:	00b705b3          	add	a1,a4,a1
   227dc:	00000813          	li	a6,0
   227e0:	40660633          	sub	a2,a2,t1
   227e4:	00458593          	addi	a1,a1,4
   227e8:	02c84663          	blt	a6,a2,22814 <__multf3+0x122c>
   227ec:	06010593          	addi	a1,sp,96
   227f0:	00261613          	slli	a2,a2,0x2
   227f4:	00c58633          	add	a2,a1,a2
   227f8:	03c12583          	lw	a1,60(sp)
   227fc:	00400713          	li	a4,4
   22800:	40670733          	sub	a4,a4,t1
   22804:	00d5d6b3          	srl	a3,a1,a3
   22808:	fcd62823          	sw	a3,-48(a2)
   2280c:	00400613          	li	a2,4
   22810:	0440006f          	j	22854 <__multf3+0x126c>
   22814:	00281713          	slli	a4,a6,0x2
   22818:	03010513          	addi	a0,sp,48
   2281c:	0005ae03          	lw	t3,0(a1)
   22820:	00e50733          	add	a4,a0,a4
   22824:	ffc5a503          	lw	a0,-4(a1)
   22828:	011e1e33          	sll	t3,t3,a7
   2282c:	00180813          	addi	a6,a6,1
   22830:	00d55533          	srl	a0,a0,a3
   22834:	01c56533          	or	a0,a0,t3
   22838:	00a72023          	sw	a0,0(a4)
   2283c:	fa9ff06f          	j	227e4 <__multf3+0x11fc>
   22840:	00271693          	slli	a3,a4,0x2
   22844:	03010593          	addi	a1,sp,48
   22848:	00d586b3          	add	a3,a1,a3
   2284c:	0006a023          	sw	zero,0(a3)
   22850:	00170713          	addi	a4,a4,1
   22854:	fec716e3          	bne	a4,a2,22840 <__multf3+0x1258>
   22858:	03012683          	lw	a3,48(sp)
   2285c:	00f037b3          	snez	a5,a5
   22860:	00d7e7b3          	or	a5,a5,a3
   22864:	02f12823          	sw	a5,48(sp)
   22868:	0077f693          	andi	a3,a5,7
   2286c:	04068263          	beqz	a3,228b0 <__multf3+0x12c8>
   22870:	00f7f693          	andi	a3,a5,15
   22874:	02e68e63          	beq	a3,a4,228b0 <__multf3+0x12c8>
   22878:	03412703          	lw	a4,52(sp)
   2287c:	00478793          	addi	a5,a5,4 # 4004 <register_fini-0xc070>
   22880:	02f12823          	sw	a5,48(sp)
   22884:	0047b793          	sltiu	a5,a5,4
   22888:	00e78733          	add	a4,a5,a4
   2288c:	00f737b3          	sltu	a5,a4,a5
   22890:	02e12a23          	sw	a4,52(sp)
   22894:	03812703          	lw	a4,56(sp)
   22898:	00e78733          	add	a4,a5,a4
   2289c:	02e12c23          	sw	a4,56(sp)
   228a0:	00f73733          	sltu	a4,a4,a5
   228a4:	03c12783          	lw	a5,60(sp)
   228a8:	00f70733          	add	a4,a4,a5
   228ac:	02e12e23          	sw	a4,60(sp)
   228b0:	03c12783          	lw	a5,60(sp)
   228b4:	00c79713          	slli	a4,a5,0xc
   228b8:	00075e63          	bgez	a4,228d4 <__multf3+0x12ec>
   228bc:	02012e23          	sw	zero,60(sp)
   228c0:	02012c23          	sw	zero,56(sp)
   228c4:	02012a23          	sw	zero,52(sp)
   228c8:	02012823          	sw	zero,48(sp)
   228cc:	00100793          	li	a5,1
   228d0:	d45ff06f          	j	22614 <__multf3+0x102c>
   228d4:	03010793          	addi	a5,sp,48
   228d8:	03c10613          	addi	a2,sp,60
   228dc:	0007a703          	lw	a4,0(a5)
   228e0:	0047a683          	lw	a3,4(a5)
   228e4:	00478793          	addi	a5,a5,4
   228e8:	00375713          	srli	a4,a4,0x3
   228ec:	01d69693          	slli	a3,a3,0x1d
   228f0:	00d76733          	or	a4,a4,a3
   228f4:	fee7ae23          	sw	a4,-4(a5)
   228f8:	fef612e3          	bne	a2,a5,228dc <__multf3+0x12f4>
   228fc:	03c12783          	lw	a5,60(sp)
   22900:	0037d793          	srli	a5,a5,0x3
   22904:	02f12e23          	sw	a5,60(sp)
   22908:	00000793          	li	a5,0
   2290c:	d09ff06f          	j	22614 <__multf3+0x102c>
   22910:	03412783          	lw	a5,52(sp)
   22914:	03012703          	lw	a4,48(sp)
   22918:	00f76733          	or	a4,a4,a5
   2291c:	03812783          	lw	a5,56(sp)
   22920:	00f76733          	or	a4,a4,a5
   22924:	03c12783          	lw	a5,60(sp)
   22928:	00f76733          	or	a4,a4,a5
   2292c:	00000793          	li	a5,0
   22930:	ce0702e3          	beqz	a4,22614 <__multf3+0x102c>
   22934:	02012e23          	sw	zero,60(sp)
   22938:	02012c23          	sw	zero,56(sp)
   2293c:	02012a23          	sw	zero,52(sp)
   22940:	02012823          	sw	zero,48(sp)
   22944:	cd1ff06f          	j	22614 <__multf3+0x102c>
   22948:	000087b7          	lui	a5,0x8
   2294c:	02012e23          	sw	zero,60(sp)
   22950:	02012c23          	sw	zero,56(sp)
   22954:	02012a23          	sw	zero,52(sp)
   22958:	02012823          	sw	zero,48(sp)
   2295c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22960:	cb5ff06f          	j	22614 <__multf3+0x102c>
   22964:	000087b7          	lui	a5,0x8
   22968:	02f12e23          	sw	a5,60(sp)
   2296c:	02012c23          	sw	zero,56(sp)
   22970:	02012a23          	sw	zero,52(sp)
   22974:	02012823          	sw	zero,48(sp)
   22978:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   2297c:	00000393          	li	t2,0
   22980:	c95ff06f          	j	22614 <__multf3+0x102c>

00022984 <__subtf3>:
   22984:	fa010113          	addi	sp,sp,-96
   22988:	0085a783          	lw	a5,8(a1)
   2298c:	05212823          	sw	s2,80(sp)
   22990:	00c5a903          	lw	s2,12(a1)
   22994:	0005a803          	lw	a6,0(a1)
   22998:	0045a703          	lw	a4,4(a1)
   2299c:	04912a23          	sw	s1,84(sp)
   229a0:	02f12c23          	sw	a5,56(sp)
   229a4:	00050493          	mv	s1,a0
   229a8:	00f12c23          	sw	a5,24(sp)
   229ac:	00062503          	lw	a0,0(a2)
   229b0:	01091793          	slli	a5,s2,0x10
   229b4:	00462583          	lw	a1,4(a2)
   229b8:	00862683          	lw	a3,8(a2)
   229bc:	00c62883          	lw	a7,12(a2)
   229c0:	04812c23          	sw	s0,88(sp)
   229c4:	0107d793          	srli	a5,a5,0x10
   229c8:	00191413          	slli	s0,s2,0x1
   229cc:	03212e23          	sw	s2,60(sp)
   229d0:	04112e23          	sw	ra,92(sp)
   229d4:	05312623          	sw	s3,76(sp)
   229d8:	05412423          	sw	s4,72(sp)
   229dc:	05512223          	sw	s5,68(sp)
   229e0:	05612023          	sw	s6,64(sp)
   229e4:	03012823          	sw	a6,48(sp)
   229e8:	02e12a23          	sw	a4,52(sp)
   229ec:	01012823          	sw	a6,16(sp)
   229f0:	00e12a23          	sw	a4,20(sp)
   229f4:	00f12e23          	sw	a5,28(sp)
   229f8:	01145413          	srli	s0,s0,0x11
   229fc:	01f95913          	srli	s2,s2,0x1f
   22a00:	01010e93          	addi	t4,sp,16
   22a04:	01c10f13          	addi	t5,sp,28
   22a08:	000f2783          	lw	a5,0(t5)
   22a0c:	ffcf2703          	lw	a4,-4(t5)
   22a10:	ffcf0f13          	addi	t5,t5,-4
   22a14:	00379793          	slli	a5,a5,0x3
   22a18:	01d75713          	srli	a4,a4,0x1d
   22a1c:	00e7e7b3          	or	a5,a5,a4
   22a20:	00ff2223          	sw	a5,4(t5)
   22a24:	ffee92e3          	bne	t4,t5,22a08 <__subtf3+0x84>
   22a28:	01012703          	lw	a4,16(sp)
   22a2c:	01089793          	slli	a5,a7,0x10
   22a30:	00189313          	slli	t1,a7,0x1
   22a34:	00371713          	slli	a4,a4,0x3
   22a38:	0107d793          	srli	a5,a5,0x10
   22a3c:	03112e23          	sw	a7,60(sp)
   22a40:	00e12823          	sw	a4,16(sp)
   22a44:	02a12823          	sw	a0,48(sp)
   22a48:	02b12a23          	sw	a1,52(sp)
   22a4c:	02d12c23          	sw	a3,56(sp)
   22a50:	02a12023          	sw	a0,32(sp)
   22a54:	02b12223          	sw	a1,36(sp)
   22a58:	02d12423          	sw	a3,40(sp)
   22a5c:	02f12623          	sw	a5,44(sp)
   22a60:	01135313          	srli	t1,t1,0x11
   22a64:	01f8d893          	srli	a7,a7,0x1f
   22a68:	02010813          	addi	a6,sp,32
   22a6c:	02c10f93          	addi	t6,sp,44
   22a70:	000fa783          	lw	a5,0(t6)
   22a74:	ffcfa683          	lw	a3,-4(t6)
   22a78:	ffcf8f93          	addi	t6,t6,-4
   22a7c:	00379793          	slli	a5,a5,0x3
   22a80:	01d6d693          	srli	a3,a3,0x1d
   22a84:	00d7e7b3          	or	a5,a5,a3
   22a88:	00ffa223          	sw	a5,4(t6)
   22a8c:	fff812e3          	bne	a6,t6,22a70 <__subtf3+0xec>
   22a90:	02012783          	lw	a5,32(sp)
   22a94:	000086b7          	lui	a3,0x8
   22a98:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x8075>
   22a9c:	00379793          	slli	a5,a5,0x3
   22aa0:	02f12023          	sw	a5,32(sp)
   22aa4:	02d31063          	bne	t1,a3,22ac4 <__subtf3+0x140>
   22aa8:	02812603          	lw	a2,40(sp)
   22aac:	02412683          	lw	a3,36(sp)
   22ab0:	00c6e6b3          	or	a3,a3,a2
   22ab4:	02c12603          	lw	a2,44(sp)
   22ab8:	00c6e6b3          	or	a3,a3,a2
   22abc:	00f6e6b3          	or	a3,a3,a5
   22ac0:	00069463          	bnez	a3,22ac8 <__subtf3+0x144>
   22ac4:	0018c893          	xori	a7,a7,1
   22ac8:	406406b3          	sub	a3,s0,t1
   22acc:	11289ce3          	bne	a7,s2,233e4 <__subtf3+0xa60>
   22ad0:	44d05a63          	blez	a3,22f24 <__subtf3+0x5a0>
   22ad4:	01412e83          	lw	t4,20(sp)
   22ad8:	01812e03          	lw	t3,24(sp)
   22adc:	01c12883          	lw	a7,28(sp)
   22ae0:	0a031c63          	bnez	t1,22b98 <__subtf3+0x214>
   22ae4:	02412503          	lw	a0,36(sp)
   22ae8:	02812603          	lw	a2,40(sp)
   22aec:	02c12303          	lw	t1,44(sp)
   22af0:	00c565b3          	or	a1,a0,a2
   22af4:	0065e5b3          	or	a1,a1,t1
   22af8:	00f5e5b3          	or	a1,a1,a5
   22afc:	00059e63          	bnez	a1,22b18 <__subtf3+0x194>
   22b00:	02e12823          	sw	a4,48(sp)
   22b04:	03d12a23          	sw	t4,52(sp)
   22b08:	03c12c23          	sw	t3,56(sp)
   22b0c:	03112e23          	sw	a7,60(sp)
   22b10:	00068413          	mv	s0,a3
   22b14:	0a00006f          	j	22bb4 <__subtf3+0x230>
   22b18:	fff68593          	addi	a1,a3,-1
   22b1c:	04059a63          	bnez	a1,22b70 <__subtf3+0x1ec>
   22b20:	00f707b3          	add	a5,a4,a5
   22b24:	00e7b733          	sltu	a4,a5,a4
   22b28:	01d505b3          	add	a1,a0,t4
   22b2c:	02f12823          	sw	a5,48(sp)
   22b30:	00e587b3          	add	a5,a1,a4
   22b34:	00e7b733          	sltu	a4,a5,a4
   22b38:	01d5b5b3          	sltu	a1,a1,t4
   22b3c:	00e5e733          	or	a4,a1,a4
   22b40:	02f12a23          	sw	a5,52(sp)
   22b44:	01c607b3          	add	a5,a2,t3
   22b48:	00e786b3          	add	a3,a5,a4
   22b4c:	00e6b733          	sltu	a4,a3,a4
   22b50:	01c7b7b3          	sltu	a5,a5,t3
   22b54:	00e7e7b3          	or	a5,a5,a4
   22b58:	011308b3          	add	a7,t1,a7
   22b5c:	011787b3          	add	a5,a5,a7
   22b60:	02d12c23          	sw	a3,56(sp)
   22b64:	02f12e23          	sw	a5,60(sp)
   22b68:	00100413          	li	s0,1
   22b6c:	32c0006f          	j	22e98 <__subtf3+0x514>
   22b70:	000087b7          	lui	a5,0x8
   22b74:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22b78:	f8f684e3          	beq	a3,a5,22b00 <__subtf3+0x17c>
   22b7c:	07400793          	li	a5,116
   22b80:	1ab7d463          	bge	a5,a1,22d28 <__subtf3+0x3a4>
   22b84:	02012623          	sw	zero,44(sp)
   22b88:	02012423          	sw	zero,40(sp)
   22b8c:	02012223          	sw	zero,36(sp)
   22b90:	00100793          	li	a5,1
   22b94:	2a80006f          	j	22e3c <__subtf3+0x4b8>
   22b98:	000087b7          	lui	a5,0x8
   22b9c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22ba0:	16f41663          	bne	s0,a5,22d0c <__subtf3+0x388>
   22ba4:	02e12823          	sw	a4,48(sp)
   22ba8:	03d12a23          	sw	t4,52(sp)
   22bac:	03c12c23          	sw	t3,56(sp)
   22bb0:	03112e23          	sw	a7,60(sp)
   22bb4:	03012783          	lw	a5,48(sp)
   22bb8:	0077f713          	andi	a4,a5,7
   22bbc:	04070463          	beqz	a4,22c04 <__subtf3+0x280>
   22bc0:	00f7f713          	andi	a4,a5,15
   22bc4:	00400693          	li	a3,4
   22bc8:	02d70e63          	beq	a4,a3,22c04 <__subtf3+0x280>
   22bcc:	03412703          	lw	a4,52(sp)
   22bd0:	00478793          	addi	a5,a5,4
   22bd4:	02f12823          	sw	a5,48(sp)
   22bd8:	0047b793          	sltiu	a5,a5,4
   22bdc:	00e78733          	add	a4,a5,a4
   22be0:	00f737b3          	sltu	a5,a4,a5
   22be4:	02e12a23          	sw	a4,52(sp)
   22be8:	03812703          	lw	a4,56(sp)
   22bec:	00e78733          	add	a4,a5,a4
   22bf0:	02e12c23          	sw	a4,56(sp)
   22bf4:	00f73733          	sltu	a4,a4,a5
   22bf8:	03c12783          	lw	a5,60(sp)
   22bfc:	00f70733          	add	a4,a4,a5
   22c00:	02e12e23          	sw	a4,60(sp)
   22c04:	03c12783          	lw	a5,60(sp)
   22c08:	00c79713          	slli	a4,a5,0xc
   22c0c:	02075463          	bgez	a4,22c34 <__subtf3+0x2b0>
   22c10:	00008737          	lui	a4,0x8
   22c14:	00140413          	addi	s0,s0,1
   22c18:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   22c1c:	00e41463          	bne	s0,a4,22c24 <__subtf3+0x2a0>
   22c20:	2f00106f          	j	23f10 <__subtf3+0x158c>
   22c24:	fff80737          	lui	a4,0xfff80
   22c28:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff5902f>
   22c2c:	00e7f7b3          	and	a5,a5,a4
   22c30:	02f12e23          	sw	a5,60(sp)
   22c34:	03010793          	addi	a5,sp,48
   22c38:	03c10613          	addi	a2,sp,60
   22c3c:	0007a703          	lw	a4,0(a5)
   22c40:	0047a683          	lw	a3,4(a5)
   22c44:	00478793          	addi	a5,a5,4
   22c48:	00375713          	srli	a4,a4,0x3
   22c4c:	01d69693          	slli	a3,a3,0x1d
   22c50:	00d76733          	or	a4,a4,a3
   22c54:	fee7ae23          	sw	a4,-4(a5)
   22c58:	fef612e3          	bne	a2,a5,22c3c <__subtf3+0x2b8>
   22c5c:	03c12783          	lw	a5,60(sp)
   22c60:	000086b7          	lui	a3,0x8
   22c64:	0037d713          	srli	a4,a5,0x3
   22c68:	02e12e23          	sw	a4,60(sp)
   22c6c:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x8075>
   22c70:	02f41a63          	bne	s0,a5,22ca4 <__subtf3+0x320>
   22c74:	03412603          	lw	a2,52(sp)
   22c78:	03012783          	lw	a5,48(sp)
   22c7c:	00c7e7b3          	or	a5,a5,a2
   22c80:	03812603          	lw	a2,56(sp)
   22c84:	00c7e7b3          	or	a5,a5,a2
   22c88:	00e7e7b3          	or	a5,a5,a4
   22c8c:	00078c63          	beqz	a5,22ca4 <__subtf3+0x320>
   22c90:	02d12e23          	sw	a3,60(sp)
   22c94:	02012c23          	sw	zero,56(sp)
   22c98:	02012a23          	sw	zero,52(sp)
   22c9c:	02012823          	sw	zero,48(sp)
   22ca0:	00000913          	li	s2,0
   22ca4:	03c12783          	lw	a5,60(sp)
   22ca8:	01141413          	slli	s0,s0,0x11
   22cac:	01145413          	srli	s0,s0,0x11
   22cb0:	00f11623          	sh	a5,12(sp)
   22cb4:	03012783          	lw	a5,48(sp)
   22cb8:	00f91913          	slli	s2,s2,0xf
   22cbc:	00896933          	or	s2,s2,s0
   22cc0:	00f4a023          	sw	a5,0(s1)
   22cc4:	03412783          	lw	a5,52(sp)
   22cc8:	01211723          	sh	s2,14(sp)
   22ccc:	05c12083          	lw	ra,92(sp)
   22cd0:	00f4a223          	sw	a5,4(s1)
   22cd4:	03812783          	lw	a5,56(sp)
   22cd8:	05812403          	lw	s0,88(sp)
   22cdc:	05012903          	lw	s2,80(sp)
   22ce0:	00f4a423          	sw	a5,8(s1)
   22ce4:	00c12783          	lw	a5,12(sp)
   22ce8:	04c12983          	lw	s3,76(sp)
   22cec:	04812a03          	lw	s4,72(sp)
   22cf0:	00f4a623          	sw	a5,12(s1)
   22cf4:	04412a83          	lw	s5,68(sp)
   22cf8:	04012b03          	lw	s6,64(sp)
   22cfc:	00048513          	mv	a0,s1
   22d00:	05412483          	lw	s1,84(sp)
   22d04:	06010113          	addi	sp,sp,96
   22d08:	00008067          	ret
   22d0c:	02c12783          	lw	a5,44(sp)
   22d10:	00080637          	lui	a2,0x80
   22d14:	00c7e7b3          	or	a5,a5,a2
   22d18:	02f12623          	sw	a5,44(sp)
   22d1c:	07400793          	li	a5,116
   22d20:	e6d7c2e3          	blt	a5,a3,22b84 <__subtf3+0x200>
   22d24:	00068593          	mv	a1,a3
   22d28:	4055d693          	srai	a3,a1,0x5
   22d2c:	00000793          	li	a5,0
   22d30:	00000613          	li	a2,0
   22d34:	04d61663          	bne	a2,a3,22d80 <__subtf3+0x3fc>
   22d38:	01f5f593          	andi	a1,a1,31
   22d3c:	00269313          	slli	t1,a3,0x2
   22d40:	04059c63          	bnez	a1,22d98 <__subtf3+0x414>
   22d44:	00300593          	li	a1,3
   22d48:	00000613          	li	a2,0
   22d4c:	40d585b3          	sub	a1,a1,a3
   22d50:	006f8533          	add	a0,t6,t1
   22d54:	00052503          	lw	a0,0(a0)
   22d58:	00160613          	addi	a2,a2,1 # 80001 <__BSS_END__+0x59031>
   22d5c:	004f8f93          	addi	t6,t6,4
   22d60:	feafae23          	sw	a0,-4(t6)
   22d64:	fec5d6e3          	bge	a1,a2,22d50 <__subtf3+0x3cc>
   22d68:	00400613          	li	a2,4
   22d6c:	40d606b3          	sub	a3,a2,a3
   22d70:	00100613          	li	a2,1
   22d74:	06d05c63          	blez	a3,22dec <__subtf3+0x468>
   22d78:	00068613          	mv	a2,a3
   22d7c:	0700006f          	j	22dec <__subtf3+0x468>
   22d80:	00261513          	slli	a0,a2,0x2
   22d84:	00a80533          	add	a0,a6,a0
   22d88:	00052503          	lw	a0,0(a0)
   22d8c:	00160613          	addi	a2,a2,1
   22d90:	00a7e7b3          	or	a5,a5,a0
   22d94:	fa1ff06f          	j	22d34 <__subtf3+0x3b0>
   22d98:	04010613          	addi	a2,sp,64
   22d9c:	00660633          	add	a2,a2,t1
   22da0:	fe062603          	lw	a2,-32(a2)
   22da4:	02000f93          	li	t6,32
   22da8:	40bf8fb3          	sub	t6,t6,a1
   22dac:	01f61633          	sll	a2,a2,t6
   22db0:	00300513          	li	a0,3
   22db4:	00c7e7b3          	or	a5,a5,a2
   22db8:	00680333          	add	t1,a6,t1
   22dbc:	00000f13          	li	t5,0
   22dc0:	40d50533          	sub	a0,a0,a3
   22dc4:	00430313          	addi	t1,t1,4
   22dc8:	02af4663          	blt	t5,a0,22df4 <__subtf3+0x470>
   22dcc:	00400613          	li	a2,4
   22dd0:	40d60633          	sub	a2,a2,a3
   22dd4:	00251513          	slli	a0,a0,0x2
   22dd8:	04010693          	addi	a3,sp,64
   22ddc:	00a68533          	add	a0,a3,a0
   22de0:	02c12683          	lw	a3,44(sp)
   22de4:	00b6d5b3          	srl	a1,a3,a1
   22de8:	feb52023          	sw	a1,-32(a0)
   22dec:	00400593          	li	a1,4
   22df0:	03c0006f          	j	22e2c <__subtf3+0x4a8>
   22df4:	ffc32603          	lw	a2,-4(t1)
   22df8:	00032383          	lw	t2,0(t1)
   22dfc:	002f1293          	slli	t0,t5,0x2
   22e00:	00b65633          	srl	a2,a2,a1
   22e04:	01f393b3          	sll	t2,t2,t6
   22e08:	005802b3          	add	t0,a6,t0
   22e0c:	00766633          	or	a2,a2,t2
   22e10:	00c2a023          	sw	a2,0(t0)
   22e14:	001f0f13          	addi	t5,t5,1
   22e18:	fadff06f          	j	22dc4 <__subtf3+0x440>
   22e1c:	00261693          	slli	a3,a2,0x2
   22e20:	00d806b3          	add	a3,a6,a3
   22e24:	0006a023          	sw	zero,0(a3)
   22e28:	00160613          	addi	a2,a2,1
   22e2c:	feb618e3          	bne	a2,a1,22e1c <__subtf3+0x498>
   22e30:	02012683          	lw	a3,32(sp)
   22e34:	00f037b3          	snez	a5,a5
   22e38:	00f6e7b3          	or	a5,a3,a5
   22e3c:	02f12023          	sw	a5,32(sp)
   22e40:	02012583          	lw	a1,32(sp)
   22e44:	02412603          	lw	a2,36(sp)
   22e48:	00b705b3          	add	a1,a4,a1
   22e4c:	00e5b733          	sltu	a4,a1,a4
   22e50:	00ce8633          	add	a2,t4,a2
   22e54:	00e606b3          	add	a3,a2,a4
   22e58:	02b12823          	sw	a1,48(sp)
   22e5c:	01d635b3          	sltu	a1,a2,t4
   22e60:	02812603          	lw	a2,40(sp)
   22e64:	00e6b733          	sltu	a4,a3,a4
   22e68:	00e5e5b3          	or	a1,a1,a4
   22e6c:	02d12a23          	sw	a3,52(sp)
   22e70:	00ce06b3          	add	a3,t3,a2
   22e74:	00b687b3          	add	a5,a3,a1
   22e78:	00b7b5b3          	sltu	a1,a5,a1
   22e7c:	02f12c23          	sw	a5,56(sp)
   22e80:	02c12783          	lw	a5,44(sp)
   22e84:	01c6b6b3          	sltu	a3,a3,t3
   22e88:	00b6e6b3          	or	a3,a3,a1
   22e8c:	00f888b3          	add	a7,a7,a5
   22e90:	011686b3          	add	a3,a3,a7
   22e94:	02d12e23          	sw	a3,60(sp)
   22e98:	03c12783          	lw	a5,60(sp)
   22e9c:	00c79713          	slli	a4,a5,0xc
   22ea0:	d0075ae3          	bgez	a4,22bb4 <__subtf3+0x230>
   22ea4:	fff80737          	lui	a4,0xfff80
   22ea8:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff5902f>
   22eac:	00e7f7b3          	and	a5,a5,a4
   22eb0:	02f12e23          	sw	a5,60(sp)
   22eb4:	03012783          	lw	a5,48(sp)
   22eb8:	00140413          	addi	s0,s0,1
   22ebc:	03c10593          	addi	a1,sp,60
   22ec0:	01f79713          	slli	a4,a5,0x1f
   22ec4:	03010793          	addi	a5,sp,48
   22ec8:	0007a683          	lw	a3,0(a5)
   22ecc:	0047a603          	lw	a2,4(a5)
   22ed0:	00478793          	addi	a5,a5,4
   22ed4:	0016d693          	srli	a3,a3,0x1
   22ed8:	01f61613          	slli	a2,a2,0x1f
   22edc:	00c6e6b3          	or	a3,a3,a2
   22ee0:	fed7ae23          	sw	a3,-4(a5)
   22ee4:	fef592e3          	bne	a1,a5,22ec8 <__subtf3+0x544>
   22ee8:	03c12783          	lw	a5,60(sp)
   22eec:	0017d793          	srli	a5,a5,0x1
   22ef0:	02f12e23          	sw	a5,60(sp)
   22ef4:	00e037b3          	snez	a5,a4
   22ef8:	03012703          	lw	a4,48(sp)
   22efc:	00f767b3          	or	a5,a4,a5
   22f00:	02f12823          	sw	a5,48(sp)
   22f04:	000087b7          	lui	a5,0x8
   22f08:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   22f0c:	caf414e3          	bne	s0,a5,22bb4 <__subtf3+0x230>
   22f10:	02012e23          	sw	zero,60(sp)
   22f14:	02012c23          	sw	zero,56(sp)
   22f18:	02012a23          	sw	zero,52(sp)
   22f1c:	02012823          	sw	zero,48(sp)
   22f20:	c95ff06f          	j	22bb4 <__subtf3+0x230>
   22f24:	02412603          	lw	a2,36(sp)
   22f28:	02812583          	lw	a1,40(sp)
   22f2c:	02c12503          	lw	a0,44(sp)
   22f30:	2a068463          	beqz	a3,231d8 <__subtf3+0x854>
   22f34:	408308b3          	sub	a7,t1,s0
   22f38:	0a041a63          	bnez	s0,22fec <__subtf3+0x668>
   22f3c:	01412803          	lw	a6,20(sp)
   22f40:	01812683          	lw	a3,24(sp)
   22f44:	01c12f83          	lw	t6,28(sp)
   22f48:	00d86e33          	or	t3,a6,a3
   22f4c:	01fe6e33          	or	t3,t3,t6
   22f50:	00ee6e33          	or	t3,t3,a4
   22f54:	000e1e63          	bnez	t3,22f70 <__subtf3+0x5ec>
   22f58:	02f12823          	sw	a5,48(sp)
   22f5c:	02c12a23          	sw	a2,52(sp)
   22f60:	02b12c23          	sw	a1,56(sp)
   22f64:	02a12e23          	sw	a0,60(sp)
   22f68:	00088413          	mv	s0,a7
   22f6c:	c49ff06f          	j	22bb4 <__subtf3+0x230>
   22f70:	fff88e13          	addi	t3,a7,-1
   22f74:	040e1863          	bnez	t3,22fc4 <__subtf3+0x640>
   22f78:	00f70733          	add	a4,a4,a5
   22f7c:	00f737b3          	sltu	a5,a4,a5
   22f80:	00c80833          	add	a6,a6,a2
   22f84:	02e12823          	sw	a4,48(sp)
   22f88:	00f80733          	add	a4,a6,a5
   22f8c:	00f737b3          	sltu	a5,a4,a5
   22f90:	00c83633          	sltu	a2,a6,a2
   22f94:	00f66633          	or	a2,a2,a5
   22f98:	02e12a23          	sw	a4,52(sp)
   22f9c:	00b68733          	add	a4,a3,a1
   22fa0:	00c707b3          	add	a5,a4,a2
   22fa4:	00c7b633          	sltu	a2,a5,a2
   22fa8:	00b73733          	sltu	a4,a4,a1
   22fac:	00c76733          	or	a4,a4,a2
   22fb0:	00af8533          	add	a0,t6,a0
   22fb4:	00a70533          	add	a0,a4,a0
   22fb8:	02f12c23          	sw	a5,56(sp)
   22fbc:	02a12e23          	sw	a0,60(sp)
   22fc0:	ba9ff06f          	j	22b68 <__subtf3+0x1e4>
   22fc4:	00008737          	lui	a4,0x8
   22fc8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   22fcc:	f8e886e3          	beq	a7,a4,22f58 <__subtf3+0x5d4>
   22fd0:	07400713          	li	a4,116
   22fd4:	05c75c63          	bge	a4,t3,2302c <__subtf3+0x6a8>
   22fd8:	00012e23          	sw	zero,28(sp)
   22fdc:	00012c23          	sw	zero,24(sp)
   22fe0:	00012a23          	sw	zero,20(sp)
   22fe4:	00100713          	li	a4,1
   22fe8:	18c0006f          	j	23174 <__subtf3+0x7f0>
   22fec:	00008737          	lui	a4,0x8
   22ff0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   22ff4:	00e31e63          	bne	t1,a4,23010 <__subtf3+0x68c>
   22ff8:	02f12823          	sw	a5,48(sp)
   22ffc:	02c12a23          	sw	a2,52(sp)
   23000:	02b12c23          	sw	a1,56(sp)
   23004:	02a12e23          	sw	a0,60(sp)
   23008:	00030413          	mv	s0,t1
   2300c:	ba9ff06f          	j	22bb4 <__subtf3+0x230>
   23010:	01c12703          	lw	a4,28(sp)
   23014:	000806b7          	lui	a3,0x80
   23018:	00d76733          	or	a4,a4,a3
   2301c:	00e12e23          	sw	a4,28(sp)
   23020:	07400713          	li	a4,116
   23024:	fb174ae3          	blt	a4,a7,22fd8 <__subtf3+0x654>
   23028:	00088e13          	mv	t3,a7
   2302c:	41fe5693          	srai	a3,t3,0x1f
   23030:	01f6f693          	andi	a3,a3,31
   23034:	01c686b3          	add	a3,a3,t3
   23038:	4056df93          	srai	t6,a3,0x5
   2303c:	00000293          	li	t0,0
   23040:	00000713          	li	a4,0
   23044:	05f74a63          	blt	a4,t6,23098 <__subtf3+0x714>
   23048:	000f8813          	mv	a6,t6
   2304c:	000fd463          	bgez	t6,23054 <__subtf3+0x6d0>
   23050:	00000813          	li	a6,0
   23054:	01fe7713          	andi	a4,t3,31
   23058:	002f9893          	slli	a7,t6,0x2
   2305c:	04071a63          	bnez	a4,230b0 <__subtf3+0x72c>
   23060:	00300693          	li	a3,3
   23064:	41f686b3          	sub	a3,a3,t6
   23068:	011f0833          	add	a6,t5,a7
   2306c:	00082803          	lw	a6,0(a6)
   23070:	00170713          	addi	a4,a4,1
   23074:	004f0f13          	addi	t5,t5,4
   23078:	ff0f2e23          	sw	a6,-4(t5)
   2307c:	fee6d6e3          	bge	a3,a4,23068 <__subtf3+0x6e4>
   23080:	00400693          	li	a3,4
   23084:	41f68fb3          	sub	t6,a3,t6
   23088:	00100693          	li	a3,1
   2308c:	09f05c63          	blez	t6,23124 <__subtf3+0x7a0>
   23090:	000f8693          	mv	a3,t6
   23094:	0900006f          	j	23124 <__subtf3+0x7a0>
   23098:	00271693          	slli	a3,a4,0x2
   2309c:	00de86b3          	add	a3,t4,a3
   230a0:	0006a683          	lw	a3,0(a3) # 80000 <__BSS_END__+0x59030>
   230a4:	00170713          	addi	a4,a4,1
   230a8:	00d2e2b3          	or	t0,t0,a3
   230ac:	f99ff06f          	j	23044 <__subtf3+0x6c0>
   230b0:	80000737          	lui	a4,0x80000
   230b4:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd904f>
   230b8:	00ee7733          	and	a4,t3,a4
   230bc:	00075863          	bgez	a4,230cc <__subtf3+0x748>
   230c0:	fff70713          	addi	a4,a4,-1
   230c4:	fe076713          	ori	a4,a4,-32
   230c8:	00170713          	addi	a4,a4,1
   230cc:	04010693          	addi	a3,sp,64
   230d0:	00281813          	slli	a6,a6,0x2
   230d4:	01068833          	add	a6,a3,a6
   230d8:	fd082683          	lw	a3,-48(a6)
   230dc:	02000f13          	li	t5,32
   230e0:	40ef0f33          	sub	t5,t5,a4
   230e4:	01e696b3          	sll	a3,a3,t5
   230e8:	00300813          	li	a6,3
   230ec:	00d2e2b3          	or	t0,t0,a3
   230f0:	011e88b3          	add	a7,t4,a7
   230f4:	00000e13          	li	t3,0
   230f8:	41f80833          	sub	a6,a6,t6
   230fc:	00488893          	addi	a7,a7,4
   23100:	030e4663          	blt	t3,a6,2312c <__subtf3+0x7a8>
   23104:	04010893          	addi	a7,sp,64
   23108:	00281813          	slli	a6,a6,0x2
   2310c:	01088833          	add	a6,a7,a6
   23110:	01c12883          	lw	a7,28(sp)
   23114:	00400693          	li	a3,4
   23118:	41f686b3          	sub	a3,a3,t6
   2311c:	00e8d733          	srl	a4,a7,a4
   23120:	fce82823          	sw	a4,-48(a6)
   23124:	00300813          	li	a6,3
   23128:	03c0006f          	j	23164 <__subtf3+0x7e0>
   2312c:	ffc8a683          	lw	a3,-4(a7)
   23130:	0008a403          	lw	s0,0(a7)
   23134:	002e1393          	slli	t2,t3,0x2
   23138:	00e6d6b3          	srl	a3,a3,a4
   2313c:	01e41433          	sll	s0,s0,t5
   23140:	007e83b3          	add	t2,t4,t2
   23144:	0086e6b3          	or	a3,a3,s0
   23148:	00d3a023          	sw	a3,0(t2)
   2314c:	001e0e13          	addi	t3,t3,1
   23150:	fadff06f          	j	230fc <__subtf3+0x778>
   23154:	00269713          	slli	a4,a3,0x2
   23158:	00ee8733          	add	a4,t4,a4
   2315c:	00072023          	sw	zero,0(a4)
   23160:	00168693          	addi	a3,a3,1
   23164:	fed858e3          	bge	a6,a3,23154 <__subtf3+0x7d0>
   23168:	01012683          	lw	a3,16(sp)
   2316c:	00503733          	snez	a4,t0
   23170:	00e6e733          	or	a4,a3,a4
   23174:	00e12823          	sw	a4,16(sp)
   23178:	01012703          	lw	a4,16(sp)
   2317c:	01412683          	lw	a3,20(sp)
   23180:	00030413          	mv	s0,t1
   23184:	00e78733          	add	a4,a5,a4
   23188:	00f737b3          	sltu	a5,a4,a5
   2318c:	00d606b3          	add	a3,a2,a3
   23190:	02e12823          	sw	a4,48(sp)
   23194:	00f68733          	add	a4,a3,a5
   23198:	00f737b3          	sltu	a5,a4,a5
   2319c:	02e12a23          	sw	a4,52(sp)
   231a0:	01812703          	lw	a4,24(sp)
   231a4:	00c6b633          	sltu	a2,a3,a2
   231a8:	00f66633          	or	a2,a2,a5
   231ac:	00e58733          	add	a4,a1,a4
   231b0:	00c707b3          	add	a5,a4,a2
   231b4:	00b73733          	sltu	a4,a4,a1
   231b8:	01c12583          	lw	a1,28(sp)
   231bc:	00c7b633          	sltu	a2,a5,a2
   231c0:	00c76733          	or	a4,a4,a2
   231c4:	00b50533          	add	a0,a0,a1
   231c8:	00a70533          	add	a0,a4,a0
   231cc:	02f12c23          	sw	a5,56(sp)
   231d0:	02a12e23          	sw	a0,60(sp)
   231d4:	cc5ff06f          	j	22e98 <__subtf3+0x514>
   231d8:	00008fb7          	lui	t6,0x8
   231dc:	00140693          	addi	a3,s0,1
   231e0:	ffef8813          	addi	a6,t6,-2 # 7ffe <register_fini-0x8076>
   231e4:	0106f833          	and	a6,a3,a6
   231e8:	01412f03          	lw	t5,20(sp)
   231ec:	01812e83          	lw	t4,24(sp)
   231f0:	01c12e03          	lw	t3,28(sp)
   231f4:	03010893          	addi	a7,sp,48
   231f8:	03c10313          	addi	t1,sp,60
   231fc:	14081663          	bnez	a6,23348 <__subtf3+0x9c4>
   23200:	01df6833          	or	a6,t5,t4
   23204:	01c86833          	or	a6,a6,t3
   23208:	00e86833          	or	a6,a6,a4
   2320c:	0a041663          	bnez	s0,232b8 <__subtf3+0x934>
   23210:	00081c63          	bnez	a6,23228 <__subtf3+0x8a4>
   23214:	02f12823          	sw	a5,48(sp)
   23218:	02c12a23          	sw	a2,52(sp)
   2321c:	02b12c23          	sw	a1,56(sp)
   23220:	02a12e23          	sw	a0,60(sp)
   23224:	991ff06f          	j	22bb4 <__subtf3+0x230>
   23228:	00b666b3          	or	a3,a2,a1
   2322c:	00a6e6b3          	or	a3,a3,a0
   23230:	00f6e6b3          	or	a3,a3,a5
   23234:	00069c63          	bnez	a3,2324c <__subtf3+0x8c8>
   23238:	02e12823          	sw	a4,48(sp)
   2323c:	03e12a23          	sw	t5,52(sp)
   23240:	03d12c23          	sw	t4,56(sp)
   23244:	03c12e23          	sw	t3,60(sp)
   23248:	96dff06f          	j	22bb4 <__subtf3+0x230>
   2324c:	00f707b3          	add	a5,a4,a5
   23250:	00e7b733          	sltu	a4,a5,a4
   23254:	00cf06b3          	add	a3,t5,a2
   23258:	02f12823          	sw	a5,48(sp)
   2325c:	00e687b3          	add	a5,a3,a4
   23260:	01e6b633          	sltu	a2,a3,t5
   23264:	00e7b733          	sltu	a4,a5,a4
   23268:	00e66733          	or	a4,a2,a4
   2326c:	00be85b3          	add	a1,t4,a1
   23270:	00e58633          	add	a2,a1,a4
   23274:	00e63733          	sltu	a4,a2,a4
   23278:	01d5b5b3          	sltu	a1,a1,t4
   2327c:	00e5e5b3          	or	a1,a1,a4
   23280:	00ae0533          	add	a0,t3,a0
   23284:	00a585b3          	add	a1,a1,a0
   23288:	02f12a23          	sw	a5,52(sp)
   2328c:	02c12c23          	sw	a2,56(sp)
   23290:	00c59793          	slli	a5,a1,0xc
   23294:	0007c663          	bltz	a5,232a0 <__subtf3+0x91c>
   23298:	02b12e23          	sw	a1,60(sp)
   2329c:	919ff06f          	j	22bb4 <__subtf3+0x230>
   232a0:	fff807b7          	lui	a5,0xfff80
   232a4:	fff78793          	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff5902f>
   232a8:	00f5f5b3          	and	a1,a1,a5
   232ac:	02b12e23          	sw	a1,60(sp)
   232b0:	00100413          	li	s0,1
   232b4:	901ff06f          	j	22bb4 <__subtf3+0x230>
   232b8:	00081e63          	bnez	a6,232d4 <__subtf3+0x950>
   232bc:	02f12823          	sw	a5,48(sp)
   232c0:	02c12a23          	sw	a2,52(sp)
   232c4:	02b12c23          	sw	a1,56(sp)
   232c8:	02a12e23          	sw	a0,60(sp)
   232cc:	ffff8413          	addi	s0,t6,-1
   232d0:	8e5ff06f          	j	22bb4 <__subtf3+0x230>
   232d4:	00b66633          	or	a2,a2,a1
   232d8:	00a66533          	or	a0,a2,a0
   232dc:	00f567b3          	or	a5,a0,a5
   232e0:	00079c63          	bnez	a5,232f8 <__subtf3+0x974>
   232e4:	02e12823          	sw	a4,48(sp)
   232e8:	03e12a23          	sw	t5,52(sp)
   232ec:	03d12c23          	sw	t4,56(sp)
   232f0:	03c12e23          	sw	t3,60(sp)
   232f4:	fd9ff06f          	j	232cc <__subtf3+0x948>
   232f8:	03f12e23          	sw	t6,60(sp)
   232fc:	02012c23          	sw	zero,56(sp)
   23300:	02012a23          	sw	zero,52(sp)
   23304:	02012823          	sw	zero,48(sp)
   23308:	00030713          	mv	a4,t1
   2330c:	00072783          	lw	a5,0(a4)
   23310:	ffc72683          	lw	a3,-4(a4)
   23314:	ffc70713          	addi	a4,a4,-4
   23318:	00379793          	slli	a5,a5,0x3
   2331c:	01d6d693          	srli	a3,a3,0x1d
   23320:	00d7e7b3          	or	a5,a5,a3
   23324:	00f72223          	sw	a5,4(a4)
   23328:	fee892e3          	bne	a7,a4,2330c <__subtf3+0x988>
   2332c:	03012783          	lw	a5,48(sp)
   23330:	00008437          	lui	s0,0x8
   23334:	00000913          	li	s2,0
   23338:	00379793          	slli	a5,a5,0x3
   2333c:	02f12823          	sw	a5,48(sp)
   23340:	fff40413          	addi	s0,s0,-1 # 7fff <register_fini-0x8075>
   23344:	871ff06f          	j	22bb4 <__subtf3+0x230>
   23348:	00f707b3          	add	a5,a4,a5
   2334c:	00e7b733          	sltu	a4,a5,a4
   23350:	00cf0633          	add	a2,t5,a2
   23354:	02f12823          	sw	a5,48(sp)
   23358:	00e607b3          	add	a5,a2,a4
   2335c:	00e7b733          	sltu	a4,a5,a4
   23360:	01e63633          	sltu	a2,a2,t5
   23364:	00e66733          	or	a4,a2,a4
   23368:	00be8633          	add	a2,t4,a1
   2336c:	02f12a23          	sw	a5,52(sp)
   23370:	00e607b3          	add	a5,a2,a4
   23374:	01d635b3          	sltu	a1,a2,t4
   23378:	00e7b633          	sltu	a2,a5,a4
   2337c:	00c5e633          	or	a2,a1,a2
   23380:	00ae0533          	add	a0,t3,a0
   23384:	00a60533          	add	a0,a2,a0
   23388:	02f12c23          	sw	a5,56(sp)
   2338c:	02a12e23          	sw	a0,60(sp)
   23390:	00088793          	mv	a5,a7
   23394:	0007a703          	lw	a4,0(a5)
   23398:	0047a603          	lw	a2,4(a5)
   2339c:	00478793          	addi	a5,a5,4
   233a0:	00175713          	srli	a4,a4,0x1
   233a4:	01f61613          	slli	a2,a2,0x1f
   233a8:	00c76733          	or	a4,a4,a2
   233ac:	fee7ae23          	sw	a4,-4(a5)
   233b0:	fef312e3          	bne	t1,a5,23394 <__subtf3+0xa10>
   233b4:	000087b7          	lui	a5,0x8
   233b8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   233bc:	00f68a63          	beq	a3,a5,233d0 <__subtf3+0xa4c>
   233c0:	03c12783          	lw	a5,60(sp)
   233c4:	0017d793          	srli	a5,a5,0x1
   233c8:	02f12e23          	sw	a5,60(sp)
   233cc:	f44ff06f          	j	22b10 <__subtf3+0x18c>
   233d0:	02012e23          	sw	zero,60(sp)
   233d4:	02012c23          	sw	zero,56(sp)
   233d8:	02012a23          	sw	zero,52(sp)
   233dc:	02012823          	sw	zero,48(sp)
   233e0:	f30ff06f          	j	22b10 <__subtf3+0x18c>
   233e4:	2ad05e63          	blez	a3,236a0 <__subtf3+0xd1c>
   233e8:	01412883          	lw	a7,20(sp)
   233ec:	01812e03          	lw	t3,24(sp)
   233f0:	01c12e83          	lw	t4,28(sp)
   233f4:	0c031463          	bnez	t1,234bc <__subtf3+0xb38>
   233f8:	02412303          	lw	t1,36(sp)
   233fc:	02812503          	lw	a0,40(sp)
   23400:	02c12583          	lw	a1,44(sp)
   23404:	00a36633          	or	a2,t1,a0
   23408:	00b66633          	or	a2,a2,a1
   2340c:	00f66633          	or	a2,a2,a5
   23410:	00061c63          	bnez	a2,23428 <__subtf3+0xaa4>
   23414:	02e12823          	sw	a4,48(sp)
   23418:	03112a23          	sw	a7,52(sp)
   2341c:	03c12c23          	sw	t3,56(sp)
   23420:	03d12e23          	sw	t4,60(sp)
   23424:	eecff06f          	j	22b10 <__subtf3+0x18c>
   23428:	fff68613          	addi	a2,a3,-1
   2342c:	06061463          	bnez	a2,23494 <__subtf3+0xb10>
   23430:	40f707b3          	sub	a5,a4,a5
   23434:	406886b3          	sub	a3,a7,t1
   23438:	00f73833          	sltu	a6,a4,a5
   2343c:	00d8bf33          	sltu	t5,a7,a3
   23440:	41068833          	sub	a6,a3,a6
   23444:	00000693          	li	a3,0
   23448:	00f77663          	bgeu	a4,a5,23454 <__subtf3+0xad0>
   2344c:	411308b3          	sub	a7,t1,a7
   23450:	0018b693          	seqz	a3,a7
   23454:	01e6e8b3          	or	a7,a3,t5
   23458:	40ae06b3          	sub	a3,t3,a0
   2345c:	00de3333          	sltu	t1,t3,a3
   23460:	411686b3          	sub	a3,a3,a7
   23464:	00088663          	beqz	a7,23470 <__subtf3+0xaec>
   23468:	41c50633          	sub	a2,a0,t3
   2346c:	00163613          	seqz	a2,a2
   23470:	40be8733          	sub	a4,t4,a1
   23474:	00666633          	or	a2,a2,t1
   23478:	40c70733          	sub	a4,a4,a2
   2347c:	02e12e23          	sw	a4,60(sp)
   23480:	02d12c23          	sw	a3,56(sp)
   23484:	03012a23          	sw	a6,52(sp)
   23488:	02f12823          	sw	a5,48(sp)
   2348c:	00100413          	li	s0,1
   23490:	1f00006f          	j	23680 <__subtf3+0xcfc>
   23494:	000087b7          	lui	a5,0x8
   23498:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   2349c:	f6f68ce3          	beq	a3,a5,23414 <__subtf3+0xa90>
   234a0:	07400793          	li	a5,116
   234a4:	04c7da63          	bge	a5,a2,234f8 <__subtf3+0xb74>
   234a8:	02012623          	sw	zero,44(sp)
   234ac:	02012423          	sw	zero,40(sp)
   234b0:	02012223          	sw	zero,36(sp)
   234b4:	00100793          	li	a5,1
   234b8:	1540006f          	j	2360c <__subtf3+0xc88>
   234bc:	000087b7          	lui	a5,0x8
   234c0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   234c4:	00f41c63          	bne	s0,a5,234dc <__subtf3+0xb58>
   234c8:	02e12823          	sw	a4,48(sp)
   234cc:	03112a23          	sw	a7,52(sp)
   234d0:	03c12c23          	sw	t3,56(sp)
   234d4:	03d12e23          	sw	t4,60(sp)
   234d8:	edcff06f          	j	22bb4 <__subtf3+0x230>
   234dc:	02c12783          	lw	a5,44(sp)
   234e0:	00080637          	lui	a2,0x80
   234e4:	00c7e7b3          	or	a5,a5,a2
   234e8:	02f12623          	sw	a5,44(sp)
   234ec:	07400793          	li	a5,116
   234f0:	fad7cce3          	blt	a5,a3,234a8 <__subtf3+0xb24>
   234f4:	00068613          	mv	a2,a3
   234f8:	40565513          	srai	a0,a2,0x5
   234fc:	00000f13          	li	t5,0
   23500:	00000793          	li	a5,0
   23504:	04a79663          	bne	a5,a0,23550 <__subtf3+0xbcc>
   23508:	01f67593          	andi	a1,a2,31
   2350c:	00251613          	slli	a2,a0,0x2
   23510:	04059c63          	bnez	a1,23568 <__subtf3+0xbe4>
   23514:	00300693          	li	a3,3
   23518:	00000793          	li	a5,0
   2351c:	40a686b3          	sub	a3,a3,a0
   23520:	00cf85b3          	add	a1,t6,a2
   23524:	0005a583          	lw	a1,0(a1)
   23528:	00178793          	addi	a5,a5,1
   2352c:	004f8f93          	addi	t6,t6,4
   23530:	febfae23          	sw	a1,-4(t6)
   23534:	fef6d6e3          	bge	a3,a5,23520 <__subtf3+0xb9c>
   23538:	00400793          	li	a5,4
   2353c:	40a78533          	sub	a0,a5,a0
   23540:	00100793          	li	a5,1
   23544:	06a05c63          	blez	a0,235bc <__subtf3+0xc38>
   23548:	00050793          	mv	a5,a0
   2354c:	0700006f          	j	235bc <__subtf3+0xc38>
   23550:	00279693          	slli	a3,a5,0x2
   23554:	00d806b3          	add	a3,a6,a3
   23558:	0006a683          	lw	a3,0(a3)
   2355c:	00178793          	addi	a5,a5,1
   23560:	00df6f33          	or	t5,t5,a3
   23564:	fa1ff06f          	j	23504 <__subtf3+0xb80>
   23568:	04010793          	addi	a5,sp,64
   2356c:	00c787b3          	add	a5,a5,a2
   23570:	fe07a783          	lw	a5,-32(a5)
   23574:	02000f93          	li	t6,32
   23578:	40bf8fb3          	sub	t6,t6,a1
   2357c:	01f797b3          	sll	a5,a5,t6
   23580:	00300693          	li	a3,3
   23584:	00ff6f33          	or	t5,t5,a5
   23588:	00c80633          	add	a2,a6,a2
   2358c:	00000793          	li	a5,0
   23590:	40a686b3          	sub	a3,a3,a0
   23594:	00460613          	addi	a2,a2,4 # 80004 <__BSS_END__+0x59034>
   23598:	02d7c663          	blt	a5,a3,235c4 <__subtf3+0xc40>
   2359c:	04010613          	addi	a2,sp,64
   235a0:	00269693          	slli	a3,a3,0x2
   235a4:	00d606b3          	add	a3,a2,a3
   235a8:	02c12603          	lw	a2,44(sp)
   235ac:	00400793          	li	a5,4
   235b0:	40a787b3          	sub	a5,a5,a0
   235b4:	00b65633          	srl	a2,a2,a1
   235b8:	fec6a023          	sw	a2,-32(a3)
   235bc:	00400613          	li	a2,4
   235c0:	03c0006f          	j	235fc <__subtf3+0xc78>
   235c4:	ffc62303          	lw	t1,-4(a2)
   235c8:	00062383          	lw	t2,0(a2)
   235cc:	00279293          	slli	t0,a5,0x2
   235d0:	00b35333          	srl	t1,t1,a1
   235d4:	01f393b3          	sll	t2,t2,t6
   235d8:	005802b3          	add	t0,a6,t0
   235dc:	00736333          	or	t1,t1,t2
   235e0:	0062a023          	sw	t1,0(t0)
   235e4:	00178793          	addi	a5,a5,1
   235e8:	fadff06f          	j	23594 <__subtf3+0xc10>
   235ec:	00279693          	slli	a3,a5,0x2
   235f0:	00d806b3          	add	a3,a6,a3
   235f4:	0006a023          	sw	zero,0(a3)
   235f8:	00178793          	addi	a5,a5,1
   235fc:	fec798e3          	bne	a5,a2,235ec <__subtf3+0xc68>
   23600:	02012683          	lw	a3,32(sp)
   23604:	01e037b3          	snez	a5,t5
   23608:	00f6e7b3          	or	a5,a3,a5
   2360c:	02f12023          	sw	a5,32(sp)
   23610:	02012783          	lw	a5,32(sp)
   23614:	02412583          	lw	a1,36(sp)
   23618:	40f707b3          	sub	a5,a4,a5
   2361c:	40b88633          	sub	a2,a7,a1
   23620:	00f736b3          	sltu	a3,a4,a5
   23624:	00c8b533          	sltu	a0,a7,a2
   23628:	40d60633          	sub	a2,a2,a3
   2362c:	00000693          	li	a3,0
   23630:	00f77663          	bgeu	a4,a5,2363c <__subtf3+0xcb8>
   23634:	411588b3          	sub	a7,a1,a7
   23638:	0018b693          	seqz	a3,a7
   2363c:	00a6e8b3          	or	a7,a3,a0
   23640:	02812503          	lw	a0,40(sp)
   23644:	00000593          	li	a1,0
   23648:	40ae06b3          	sub	a3,t3,a0
   2364c:	00de3833          	sltu	a6,t3,a3
   23650:	411686b3          	sub	a3,a3,a7
   23654:	00088663          	beqz	a7,23660 <__subtf3+0xcdc>
   23658:	41c50e33          	sub	t3,a0,t3
   2365c:	001e3593          	seqz	a1,t3
   23660:	02c12703          	lw	a4,44(sp)
   23664:	0105e5b3          	or	a1,a1,a6
   23668:	02d12c23          	sw	a3,56(sp)
   2366c:	40ee8733          	sub	a4,t4,a4
   23670:	40b70733          	sub	a4,a4,a1
   23674:	02e12e23          	sw	a4,60(sp)
   23678:	02c12a23          	sw	a2,52(sp)
   2367c:	02f12823          	sw	a5,48(sp)
   23680:	03c12783          	lw	a5,60(sp)
   23684:	00c79713          	slli	a4,a5,0xc
   23688:	d2075663          	bgez	a4,22bb4 <__subtf3+0x230>
   2368c:	00080737          	lui	a4,0x80
   23690:	fff70713          	addi	a4,a4,-1 # 7ffff <__BSS_END__+0x5902f>
   23694:	00e7f7b3          	and	a5,a5,a4
   23698:	02f12e23          	sw	a5,60(sp)
   2369c:	5a40006f          	j	23c40 <__subtf3+0x12bc>
   236a0:	02412503          	lw	a0,36(sp)
   236a4:	02812803          	lw	a6,40(sp)
   236a8:	02c12e03          	lw	t3,44(sp)
   236ac:	2e068263          	beqz	a3,23990 <__subtf3+0x100c>
   236b0:	40830fb3          	sub	t6,t1,s0
   236b4:	0c041263          	bnez	s0,23778 <__subtf3+0xdf4>
   236b8:	01412283          	lw	t0,20(sp)
   236bc:	01812583          	lw	a1,24(sp)
   236c0:	01c12683          	lw	a3,28(sp)
   236c4:	00b2e633          	or	a2,t0,a1
   236c8:	00d66633          	or	a2,a2,a3
   236cc:	00e66633          	or	a2,a2,a4
   236d0:	02061063          	bnez	a2,236f0 <__subtf3+0xd6c>
   236d4:	02f12823          	sw	a5,48(sp)
   236d8:	02a12a23          	sw	a0,52(sp)
   236dc:	03012c23          	sw	a6,56(sp)
   236e0:	03c12e23          	sw	t3,60(sp)
   236e4:	000f8413          	mv	s0,t6
   236e8:	00088913          	mv	s2,a7
   236ec:	cc8ff06f          	j	22bb4 <__subtf3+0x230>
   236f0:	ffff8613          	addi	a2,t6,-1
   236f4:	06061463          	bnez	a2,2375c <__subtf3+0xdd8>
   236f8:	40e78733          	sub	a4,a5,a4
   236fc:	40550333          	sub	t1,a0,t0
   23700:	00e7beb3          	sltu	t4,a5,a4
   23704:	00653f33          	sltu	t5,a0,t1
   23708:	41d30eb3          	sub	t4,t1,t4
   2370c:	00000313          	li	t1,0
   23710:	00e7f663          	bgeu	a5,a4,2371c <__subtf3+0xd98>
   23714:	40a28533          	sub	a0,t0,a0
   23718:	00153313          	seqz	t1,a0
   2371c:	01e36533          	or	a0,t1,t5
   23720:	40b80333          	sub	t1,a6,a1
   23724:	006837b3          	sltu	a5,a6,t1
   23728:	40a30333          	sub	t1,t1,a0
   2372c:	00050663          	beqz	a0,23738 <__subtf3+0xdb4>
   23730:	41058833          	sub	a6,a1,a6
   23734:	00183613          	seqz	a2,a6
   23738:	40de0e33          	sub	t3,t3,a3
   2373c:	00f66633          	or	a2,a2,a5
   23740:	40ce0e33          	sub	t3,t3,a2
   23744:	03c12e23          	sw	t3,60(sp)
   23748:	02612c23          	sw	t1,56(sp)
   2374c:	03d12a23          	sw	t4,52(sp)
   23750:	02e12823          	sw	a4,48(sp)
   23754:	00088913          	mv	s2,a7
   23758:	d35ff06f          	j	2348c <__subtf3+0xb08>
   2375c:	00008737          	lui	a4,0x8
   23760:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23764:	f6ef88e3          	beq	t6,a4,236d4 <__subtf3+0xd50>
   23768:	07400713          	li	a4,116
   2376c:	20c74863          	blt	a4,a2,2397c <__subtf3+0xff8>
   23770:	00060f93          	mv	t6,a2
   23774:	0400006f          	j	237b4 <__subtf3+0xe30>
   23778:	00008737          	lui	a4,0x8
   2377c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23780:	00e31e63          	bne	t1,a4,2379c <__subtf3+0xe18>
   23784:	02f12823          	sw	a5,48(sp)
   23788:	02a12a23          	sw	a0,52(sp)
   2378c:	03012c23          	sw	a6,56(sp)
   23790:	03c12e23          	sw	t3,60(sp)
   23794:	00030413          	mv	s0,t1
   23798:	f51ff06f          	j	236e8 <__subtf3+0xd64>
   2379c:	01c12703          	lw	a4,28(sp)
   237a0:	000806b7          	lui	a3,0x80
   237a4:	00d76733          	or	a4,a4,a3
   237a8:	00e12e23          	sw	a4,28(sp)
   237ac:	07400713          	li	a4,116
   237b0:	1df74663          	blt	a4,t6,2397c <__subtf3+0xff8>
   237b4:	41ffd693          	srai	a3,t6,0x1f
   237b8:	01f6f693          	andi	a3,a3,31
   237bc:	01f686b3          	add	a3,a3,t6
   237c0:	4056d293          	srai	t0,a3,0x5
   237c4:	00000393          	li	t2,0
   237c8:	00000713          	li	a4,0
   237cc:	04574a63          	blt	a4,t0,23820 <__subtf3+0xe9c>
   237d0:	00028613          	mv	a2,t0
   237d4:	0002d463          	bgez	t0,237dc <__subtf3+0xe58>
   237d8:	00000613          	li	a2,0
   237dc:	01fff713          	andi	a4,t6,31
   237e0:	00229593          	slli	a1,t0,0x2
   237e4:	04071a63          	bnez	a4,23838 <__subtf3+0xeb4>
   237e8:	00300693          	li	a3,3
   237ec:	405686b3          	sub	a3,a3,t0
   237f0:	00bf0633          	add	a2,t5,a1
   237f4:	00062603          	lw	a2,0(a2)
   237f8:	00170713          	addi	a4,a4,1
   237fc:	004f0f13          	addi	t5,t5,4
   23800:	fecf2e23          	sw	a2,-4(t5)
   23804:	fee6d6e3          	bge	a3,a4,237f0 <__subtf3+0xe6c>
   23808:	00400693          	li	a3,4
   2380c:	405682b3          	sub	t0,a3,t0
   23810:	00100693          	li	a3,1
   23814:	08505c63          	blez	t0,238ac <__subtf3+0xf28>
   23818:	00028693          	mv	a3,t0
   2381c:	0900006f          	j	238ac <__subtf3+0xf28>
   23820:	00271693          	slli	a3,a4,0x2
   23824:	00de86b3          	add	a3,t4,a3
   23828:	0006a683          	lw	a3,0(a3) # 80000 <__BSS_END__+0x59030>
   2382c:	00170713          	addi	a4,a4,1
   23830:	00d3e3b3          	or	t2,t2,a3
   23834:	f99ff06f          	j	237cc <__subtf3+0xe48>
   23838:	80000737          	lui	a4,0x80000
   2383c:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd904f>
   23840:	00eff733          	and	a4,t6,a4
   23844:	00075863          	bgez	a4,23854 <__subtf3+0xed0>
   23848:	fff70713          	addi	a4,a4,-1
   2384c:	fe076713          	ori	a4,a4,-32
   23850:	00170713          	addi	a4,a4,1
   23854:	04010693          	addi	a3,sp,64
   23858:	00261613          	slli	a2,a2,0x2
   2385c:	00c68633          	add	a2,a3,a2
   23860:	fd062683          	lw	a3,-48(a2)
   23864:	02000f93          	li	t6,32
   23868:	40ef8fb3          	sub	t6,t6,a4
   2386c:	01f696b3          	sll	a3,a3,t6
   23870:	00300613          	li	a2,3
   23874:	00d3e3b3          	or	t2,t2,a3
   23878:	00be85b3          	add	a1,t4,a1
   2387c:	00000f13          	li	t5,0
   23880:	40560633          	sub	a2,a2,t0
   23884:	00458593          	addi	a1,a1,4
   23888:	02cf4663          	blt	t5,a2,238b4 <__subtf3+0xf30>
   2388c:	04010593          	addi	a1,sp,64
   23890:	00261613          	slli	a2,a2,0x2
   23894:	00c58633          	add	a2,a1,a2
   23898:	01c12583          	lw	a1,28(sp)
   2389c:	00400693          	li	a3,4
   238a0:	405686b3          	sub	a3,a3,t0
   238a4:	00e5d733          	srl	a4,a1,a4
   238a8:	fce62823          	sw	a4,-48(a2)
   238ac:	00300613          	li	a2,3
   238b0:	03c0006f          	j	238ec <__subtf3+0xf68>
   238b4:	ffc5a683          	lw	a3,-4(a1)
   238b8:	0005a903          	lw	s2,0(a1)
   238bc:	002f1413          	slli	s0,t5,0x2
   238c0:	00e6d6b3          	srl	a3,a3,a4
   238c4:	01f91933          	sll	s2,s2,t6
   238c8:	008e8433          	add	s0,t4,s0
   238cc:	0126e6b3          	or	a3,a3,s2
   238d0:	00d42023          	sw	a3,0(s0)
   238d4:	001f0f13          	addi	t5,t5,1
   238d8:	fadff06f          	j	23884 <__subtf3+0xf00>
   238dc:	00269713          	slli	a4,a3,0x2
   238e0:	00ee8733          	add	a4,t4,a4
   238e4:	00072023          	sw	zero,0(a4)
   238e8:	00168693          	addi	a3,a3,1
   238ec:	fed658e3          	bge	a2,a3,238dc <__subtf3+0xf58>
   238f0:	01012683          	lw	a3,16(sp)
   238f4:	00703733          	snez	a4,t2
   238f8:	00e6e733          	or	a4,a3,a4
   238fc:	00e12823          	sw	a4,16(sp)
   23900:	01012703          	lw	a4,16(sp)
   23904:	01412583          	lw	a1,20(sp)
   23908:	40e78733          	sub	a4,a5,a4
   2390c:	40b50633          	sub	a2,a0,a1
   23910:	00e7b6b3          	sltu	a3,a5,a4
   23914:	00c53eb3          	sltu	t4,a0,a2
   23918:	40d60633          	sub	a2,a2,a3
   2391c:	00000693          	li	a3,0
   23920:	00e7f663          	bgeu	a5,a4,2392c <__subtf3+0xfa8>
   23924:	40a58533          	sub	a0,a1,a0
   23928:	00153693          	seqz	a3,a0
   2392c:	01812583          	lw	a1,24(sp)
   23930:	01d6e533          	or	a0,a3,t4
   23934:	00000693          	li	a3,0
   23938:	40b807b3          	sub	a5,a6,a1
   2393c:	00f83eb3          	sltu	t4,a6,a5
   23940:	40a787b3          	sub	a5,a5,a0
   23944:	00050663          	beqz	a0,23950 <__subtf3+0xfcc>
   23948:	41058833          	sub	a6,a1,a6
   2394c:	00183693          	seqz	a3,a6
   23950:	01c12503          	lw	a0,28(sp)
   23954:	01d6e6b3          	or	a3,a3,t4
   23958:	02f12c23          	sw	a5,56(sp)
   2395c:	40ae0e33          	sub	t3,t3,a0
   23960:	40de0e33          	sub	t3,t3,a3
   23964:	03c12e23          	sw	t3,60(sp)
   23968:	02c12a23          	sw	a2,52(sp)
   2396c:	02e12823          	sw	a4,48(sp)
   23970:	00030413          	mv	s0,t1
   23974:	00088913          	mv	s2,a7
   23978:	d09ff06f          	j	23680 <__subtf3+0xcfc>
   2397c:	00012e23          	sw	zero,28(sp)
   23980:	00012c23          	sw	zero,24(sp)
   23984:	00012a23          	sw	zero,20(sp)
   23988:	00100713          	li	a4,1
   2398c:	f71ff06f          	j	238fc <__subtf3+0xf78>
   23990:	00008eb7          	lui	t4,0x8
   23994:	ffee8613          	addi	a2,t4,-2 # 7ffe <register_fini-0x8076>
   23998:	00140313          	addi	t1,s0,1
   2399c:	00c37333          	and	t1,t1,a2
   239a0:	01812583          	lw	a1,24(sp)
   239a4:	01412603          	lw	a2,20(sp)
   239a8:	01c12f03          	lw	t5,28(sp)
   239ac:	1c031e63          	bnez	t1,23b88 <__subtf3+0x1204>
   239b0:	01056333          	or	t1,a0,a6
   239b4:	00b666b3          	or	a3,a2,a1
   239b8:	01c36333          	or	t1,t1,t3
   239bc:	01e6e6b3          	or	a3,a3,t5
   239c0:	00f36333          	or	t1,t1,a5
   239c4:	00e6e6b3          	or	a3,a3,a4
   239c8:	10041863          	bnez	s0,23ad8 <__subtf3+0x1154>
   239cc:	02069463          	bnez	a3,239f4 <__subtf3+0x1070>
   239d0:	02f12823          	sw	a5,48(sp)
   239d4:	02a12a23          	sw	a0,52(sp)
   239d8:	03012c23          	sw	a6,56(sp)
   239dc:	03c12e23          	sw	t3,60(sp)
   239e0:	00088913          	mv	s2,a7
   239e4:	9c031863          	bnez	t1,22bb4 <__subtf3+0x230>
   239e8:	00000413          	li	s0,0
   239ec:	00000913          	li	s2,0
   239f0:	9c4ff06f          	j	22bb4 <__subtf3+0x230>
   239f4:	00031c63          	bnez	t1,23a0c <__subtf3+0x1088>
   239f8:	02e12823          	sw	a4,48(sp)
   239fc:	02c12a23          	sw	a2,52(sp)
   23a00:	02b12c23          	sw	a1,56(sp)
   23a04:	03e12e23          	sw	t5,60(sp)
   23a08:	9acff06f          	j	22bb4 <__subtf3+0x230>
   23a0c:	40f70333          	sub	t1,a4,a5
   23a10:	40a603b3          	sub	t2,a2,a0
   23a14:	00673fb3          	sltu	t6,a4,t1
   23a18:	00763eb3          	sltu	t4,a2,t2
   23a1c:	41f38fb3          	sub	t6,t2,t6
   23a20:	00000693          	li	a3,0
   23a24:	00677463          	bgeu	a4,t1,23a2c <__subtf3+0x10a8>
   23a28:	0013b693          	seqz	a3,t2
   23a2c:	410582b3          	sub	t0,a1,a6
   23a30:	01d6e6b3          	or	a3,a3,t4
   23a34:	0055bab3          	sltu	s5,a1,t0
   23a38:	40d28a33          	sub	s4,t0,a3
   23a3c:	00000993          	li	s3,0
   23a40:	00068463          	beqz	a3,23a48 <__subtf3+0x10c4>
   23a44:	0012b993          	seqz	s3,t0
   23a48:	41cf0eb3          	sub	t4,t5,t3
   23a4c:	0159e9b3          	or	s3,s3,s5
   23a50:	413e8eb3          	sub	t4,t4,s3
   23a54:	03d12e23          	sw	t4,60(sp)
   23a58:	03412c23          	sw	s4,56(sp)
   23a5c:	03f12a23          	sw	t6,52(sp)
   23a60:	02612823          	sw	t1,48(sp)
   23a64:	00ce9693          	slli	a3,t4,0xc
   23a68:	0606d063          	bgez	a3,23ac8 <__subtf3+0x1144>
   23a6c:	40e78733          	sub	a4,a5,a4
   23a70:	40c50633          	sub	a2,a0,a2
   23a74:	00e7b6b3          	sltu	a3,a5,a4
   23a78:	00c53533          	sltu	a0,a0,a2
   23a7c:	40d60633          	sub	a2,a2,a3
   23a80:	00000693          	li	a3,0
   23a84:	00e7f463          	bgeu	a5,a4,23a8c <__subtf3+0x1108>
   23a88:	0013b693          	seqz	a3,t2
   23a8c:	40b805b3          	sub	a1,a6,a1
   23a90:	00a6e533          	or	a0,a3,a0
   23a94:	00b83833          	sltu	a6,a6,a1
   23a98:	00000313          	li	t1,0
   23a9c:	40a585b3          	sub	a1,a1,a0
   23aa0:	00050463          	beqz	a0,23aa8 <__subtf3+0x1124>
   23aa4:	0012b313          	seqz	t1,t0
   23aa8:	41ee0533          	sub	a0,t3,t5
   23aac:	01036333          	or	t1,t1,a6
   23ab0:	40650333          	sub	t1,a0,t1
   23ab4:	02612e23          	sw	t1,60(sp)
   23ab8:	02b12c23          	sw	a1,56(sp)
   23abc:	02c12a23          	sw	a2,52(sp)
   23ac0:	02e12823          	sw	a4,48(sp)
   23ac4:	c25ff06f          	j	236e8 <__subtf3+0xd64>
   23ac8:	01f36333          	or	t1,t1,t6
   23acc:	01436333          	or	t1,t1,s4
   23ad0:	01d36333          	or	t1,t1,t4
   23ad4:	f11ff06f          	j	239e4 <__subtf3+0x1060>
   23ad8:	03010f93          	addi	t6,sp,48
   23adc:	04069e63          	bnez	a3,23b38 <__subtf3+0x11b4>
   23ae0:	02031e63          	bnez	t1,23b1c <__subtf3+0x1198>
   23ae4:	03d12e23          	sw	t4,60(sp)
   23ae8:	02012c23          	sw	zero,56(sp)
   23aec:	02012a23          	sw	zero,52(sp)
   23af0:	02012823          	sw	zero,48(sp)
   23af4:	03c10793          	addi	a5,sp,60
   23af8:	0007a703          	lw	a4,0(a5)
   23afc:	ffc7a683          	lw	a3,-4(a5)
   23b00:	ffc78793          	addi	a5,a5,-4
   23b04:	00371713          	slli	a4,a4,0x3
   23b08:	01d6d693          	srli	a3,a3,0x1d
   23b0c:	00d76733          	or	a4,a4,a3
   23b10:	00e7a223          	sw	a4,4(a5)
   23b14:	feff92e3          	bne	t6,a5,23af8 <__subtf3+0x1174>
   23b18:	815ff06f          	j	2332c <__subtf3+0x9a8>
   23b1c:	02f12823          	sw	a5,48(sp)
   23b20:	02a12a23          	sw	a0,52(sp)
   23b24:	03012c23          	sw	a6,56(sp)
   23b28:	03c12e23          	sw	t3,60(sp)
   23b2c:	00088913          	mv	s2,a7
   23b30:	fffe8413          	addi	s0,t4,-1
   23b34:	880ff06f          	j	22bb4 <__subtf3+0x230>
   23b38:	00031c63          	bnez	t1,23b50 <__subtf3+0x11cc>
   23b3c:	02e12823          	sw	a4,48(sp)
   23b40:	02c12a23          	sw	a2,52(sp)
   23b44:	02b12c23          	sw	a1,56(sp)
   23b48:	03e12e23          	sw	t5,60(sp)
   23b4c:	fe5ff06f          	j	23b30 <__subtf3+0x11ac>
   23b50:	03d12e23          	sw	t4,60(sp)
   23b54:	02012c23          	sw	zero,56(sp)
   23b58:	02012a23          	sw	zero,52(sp)
   23b5c:	02012823          	sw	zero,48(sp)
   23b60:	03c10793          	addi	a5,sp,60
   23b64:	0007a703          	lw	a4,0(a5)
   23b68:	ffc7a683          	lw	a3,-4(a5)
   23b6c:	ffc78793          	addi	a5,a5,-4
   23b70:	00371713          	slli	a4,a4,0x3
   23b74:	01d6d693          	srli	a3,a3,0x1d
   23b78:	00d76733          	or	a4,a4,a3
   23b7c:	00e7a223          	sw	a4,4(a5)
   23b80:	feff92e3          	bne	t6,a5,23b64 <__subtf3+0x11e0>
   23b84:	fa8ff06f          	j	2332c <__subtf3+0x9a8>
   23b88:	40f70333          	sub	t1,a4,a5
   23b8c:	40a609b3          	sub	s3,a2,a0
   23b90:	006732b3          	sltu	t0,a4,t1
   23b94:	01363eb3          	sltu	t4,a2,s3
   23b98:	405982b3          	sub	t0,s3,t0
   23b9c:	00000f93          	li	t6,0
   23ba0:	00677463          	bgeu	a4,t1,23ba8 <__subtf3+0x1224>
   23ba4:	0019bf93          	seqz	t6,s3
   23ba8:	410583b3          	sub	t2,a1,a6
   23bac:	01dfefb3          	or	t6,t6,t4
   23bb0:	0075bb33          	sltu	s6,a1,t2
   23bb4:	41f38ab3          	sub	s5,t2,t6
   23bb8:	00000a13          	li	s4,0
   23bbc:	000f8463          	beqz	t6,23bc4 <__subtf3+0x1240>
   23bc0:	0013ba13          	seqz	s4,t2
   23bc4:	41cf0eb3          	sub	t4,t5,t3
   23bc8:	016a6a33          	or	s4,s4,s6
   23bcc:	414e8eb3          	sub	t4,t4,s4
   23bd0:	03d12e23          	sw	t4,60(sp)
   23bd4:	03512c23          	sw	s5,56(sp)
   23bd8:	02512a23          	sw	t0,52(sp)
   23bdc:	02612823          	sw	t1,48(sp)
   23be0:	00ce9f93          	slli	t6,t4,0xc
   23be4:	0e0fd263          	bgez	t6,23cc8 <__subtf3+0x1344>
   23be8:	40c50633          	sub	a2,a0,a2
   23bec:	40e78733          	sub	a4,a5,a4
   23bf0:	00c53333          	sltu	t1,a0,a2
   23bf4:	00e7b533          	sltu	a0,a5,a4
   23bf8:	40a60633          	sub	a2,a2,a0
   23bfc:	00000513          	li	a0,0
   23c00:	00e7f463          	bgeu	a5,a4,23c08 <__subtf3+0x1284>
   23c04:	0019b513          	seqz	a0,s3
   23c08:	40b805b3          	sub	a1,a6,a1
   23c0c:	00656533          	or	a0,a0,t1
   23c10:	00b83833          	sltu	a6,a6,a1
   23c14:	40a585b3          	sub	a1,a1,a0
   23c18:	00050463          	beqz	a0,23c20 <__subtf3+0x129c>
   23c1c:	0013b693          	seqz	a3,t2
   23c20:	41ee0533          	sub	a0,t3,t5
   23c24:	0106e6b3          	or	a3,a3,a6
   23c28:	40d506b3          	sub	a3,a0,a3
   23c2c:	02d12e23          	sw	a3,60(sp)
   23c30:	02b12c23          	sw	a1,56(sp)
   23c34:	02c12a23          	sw	a2,52(sp)
   23c38:	02e12823          	sw	a4,48(sp)
   23c3c:	00088913          	mv	s2,a7
   23c40:	03c12503          	lw	a0,60(sp)
   23c44:	08050c63          	beqz	a0,23cdc <__subtf3+0x1358>
   23c48:	355000ef          	jal	ra,2479c <__clzsi2>
   23c4c:	ff450793          	addi	a5,a0,-12
   23c50:	41f7d713          	srai	a4,a5,0x1f
   23c54:	01f77713          	andi	a4,a4,31
   23c58:	00f70733          	add	a4,a4,a5
   23c5c:	40575613          	srai	a2,a4,0x5
   23c60:	01f7f693          	andi	a3,a5,31
   23c64:	40c00733          	neg	a4,a2
   23c68:	0a068663          	beqz	a3,23d14 <__subtf3+0x1390>
   23c6c:	800006b7          	lui	a3,0x80000
   23c70:	01f68693          	addi	a3,a3,31 # 8000001f <__BSS_END__+0x7ffd904f>
   23c74:	00d7f6b3          	and	a3,a5,a3
   23c78:	0006d863          	bgez	a3,23c88 <__subtf3+0x1304>
   23c7c:	fff68693          	addi	a3,a3,-1
   23c80:	fe06e693          	ori	a3,a3,-32
   23c84:	00168693          	addi	a3,a3,1
   23c88:	00271713          	slli	a4,a4,0x2
   23c8c:	03010313          	addi	t1,sp,48
   23c90:	00c70713          	addi	a4,a4,12
   23c94:	02000813          	li	a6,32
   23c98:	00e30733          	add	a4,t1,a4
   23c9c:	00261513          	slli	a0,a2,0x2
   23ca0:	40d80833          	sub	a6,a6,a3
   23ca4:	08e31e63          	bne	t1,a4,23d40 <__subtf3+0x13bc>
   23ca8:	fff60713          	addi	a4,a2,-1
   23cac:	04010613          	addi	a2,sp,64
   23cb0:	00a60533          	add	a0,a2,a0
   23cb4:	03012603          	lw	a2,48(sp)
   23cb8:	00d616b3          	sll	a3,a2,a3
   23cbc:	fed52823          	sw	a3,-16(a0)
   23cc0:	fff00613          	li	a2,-1
   23cc4:	0b40006f          	j	23d78 <__subtf3+0x13f4>
   23cc8:	00536333          	or	t1,t1,t0
   23ccc:	01536333          	or	t1,t1,s5
   23cd0:	01d36333          	or	t1,t1,t4
   23cd4:	d0030ae3          	beqz	t1,239e8 <__subtf3+0x1064>
   23cd8:	f69ff06f          	j	23c40 <__subtf3+0x12bc>
   23cdc:	03812503          	lw	a0,56(sp)
   23ce0:	00050863          	beqz	a0,23cf0 <__subtf3+0x136c>
   23ce4:	2b9000ef          	jal	ra,2479c <__clzsi2>
   23ce8:	02050513          	addi	a0,a0,32
   23cec:	f61ff06f          	j	23c4c <__subtf3+0x12c8>
   23cf0:	03412503          	lw	a0,52(sp)
   23cf4:	00050863          	beqz	a0,23d04 <__subtf3+0x1380>
   23cf8:	2a5000ef          	jal	ra,2479c <__clzsi2>
   23cfc:	04050513          	addi	a0,a0,64
   23d00:	f4dff06f          	j	23c4c <__subtf3+0x12c8>
   23d04:	03012503          	lw	a0,48(sp)
   23d08:	295000ef          	jal	ra,2479c <__clzsi2>
   23d0c:	06050513          	addi	a0,a0,96
   23d10:	f3dff06f          	j	23c4c <__subtf3+0x12c8>
   23d14:	03c10693          	addi	a3,sp,60
   23d18:	00271713          	slli	a4,a4,0x2
   23d1c:	00300593          	li	a1,3
   23d20:	00e68533          	add	a0,a3,a4
   23d24:	00052503          	lw	a0,0(a0)
   23d28:	fff58593          	addi	a1,a1,-1
   23d2c:	ffc68693          	addi	a3,a3,-4
   23d30:	00a6a223          	sw	a0,4(a3)
   23d34:	fec5d6e3          	bge	a1,a2,23d20 <__subtf3+0x139c>
   23d38:	fff60713          	addi	a4,a2,-1
   23d3c:	f85ff06f          	j	23cc0 <__subtf3+0x133c>
   23d40:	ffc72583          	lw	a1,-4(a4)
   23d44:	00072883          	lw	a7,0(a4)
   23d48:	00a70e33          	add	t3,a4,a0
   23d4c:	0105d5b3          	srl	a1,a1,a6
   23d50:	00d898b3          	sll	a7,a7,a3
   23d54:	0115e5b3          	or	a1,a1,a7
   23d58:	00be2023          	sw	a1,0(t3)
   23d5c:	ffc70713          	addi	a4,a4,-4
   23d60:	f45ff06f          	j	23ca4 <__subtf3+0x1320>
   23d64:	00271693          	slli	a3,a4,0x2
   23d68:	03010593          	addi	a1,sp,48
   23d6c:	00d586b3          	add	a3,a1,a3
   23d70:	0006a023          	sw	zero,0(a3)
   23d74:	fff70713          	addi	a4,a4,-1
   23d78:	fec716e3          	bne	a4,a2,23d64 <__subtf3+0x13e0>
   23d7c:	1687cc63          	blt	a5,s0,23ef4 <__subtf3+0x1570>
   23d80:	40878433          	sub	s0,a5,s0
   23d84:	00140413          	addi	s0,s0,1
   23d88:	41f45793          	srai	a5,s0,0x1f
   23d8c:	01f7f793          	andi	a5,a5,31
   23d90:	008787b3          	add	a5,a5,s0
   23d94:	4057d593          	srai	a1,a5,0x5
   23d98:	00000513          	li	a0,0
   23d9c:	00000793          	li	a5,0
   23da0:	04b7ce63          	blt	a5,a1,23dfc <__subtf3+0x1478>
   23da4:	00058713          	mv	a4,a1
   23da8:	0005d463          	bgez	a1,23db0 <__subtf3+0x142c>
   23dac:	00000713          	li	a4,0
   23db0:	01f47793          	andi	a5,s0,31
   23db4:	00259693          	slli	a3,a1,0x2
   23db8:	06079063          	bnez	a5,23e18 <__subtf3+0x1494>
   23dbc:	00300613          	li	a2,3
   23dc0:	03010793          	addi	a5,sp,48
   23dc4:	00000713          	li	a4,0
   23dc8:	40b60633          	sub	a2,a2,a1
   23dcc:	00d78833          	add	a6,a5,a3
   23dd0:	00082803          	lw	a6,0(a6)
   23dd4:	00170713          	addi	a4,a4,1
   23dd8:	00478793          	addi	a5,a5,4
   23ddc:	ff07ae23          	sw	a6,-4(a5)
   23de0:	fee656e3          	bge	a2,a4,23dcc <__subtf3+0x1448>
   23de4:	00400793          	li	a5,4
   23de8:	40b785b3          	sub	a1,a5,a1
   23dec:	00100793          	li	a5,1
   23df0:	0ab05063          	blez	a1,23e90 <__subtf3+0x150c>
   23df4:	00058793          	mv	a5,a1
   23df8:	0980006f          	j	23e90 <__subtf3+0x150c>
   23dfc:	00279713          	slli	a4,a5,0x2
   23e00:	03010693          	addi	a3,sp,48
   23e04:	00e68733          	add	a4,a3,a4
   23e08:	00072703          	lw	a4,0(a4)
   23e0c:	00178793          	addi	a5,a5,1
   23e10:	00e56533          	or	a0,a0,a4
   23e14:	f8dff06f          	j	23da0 <__subtf3+0x141c>
   23e18:	800007b7          	lui	a5,0x80000
   23e1c:	01f78793          	addi	a5,a5,31 # 8000001f <__BSS_END__+0x7ffd904f>
   23e20:	00f47433          	and	s0,s0,a5
   23e24:	00045863          	bgez	s0,23e34 <__subtf3+0x14b0>
   23e28:	fff40413          	addi	s0,s0,-1
   23e2c:	fe046413          	ori	s0,s0,-32
   23e30:	00140413          	addi	s0,s0,1
   23e34:	04010793          	addi	a5,sp,64
   23e38:	00271713          	slli	a4,a4,0x2
   23e3c:	00e78733          	add	a4,a5,a4
   23e40:	ff072783          	lw	a5,-16(a4)
   23e44:	02000813          	li	a6,32
   23e48:	40880833          	sub	a6,a6,s0
   23e4c:	010797b3          	sll	a5,a5,a6
   23e50:	00f56533          	or	a0,a0,a5
   23e54:	00300713          	li	a4,3
   23e58:	03010793          	addi	a5,sp,48
   23e5c:	00d786b3          	add	a3,a5,a3
   23e60:	40b70733          	sub	a4,a4,a1
   23e64:	00000793          	li	a5,0
   23e68:	00468693          	addi	a3,a3,4
   23e6c:	02e7c663          	blt	a5,a4,23e98 <__subtf3+0x1514>
   23e70:	04010693          	addi	a3,sp,64
   23e74:	00271713          	slli	a4,a4,0x2
   23e78:	00e68733          	add	a4,a3,a4
   23e7c:	03c12683          	lw	a3,60(sp)
   23e80:	00400793          	li	a5,4
   23e84:	40b787b3          	sub	a5,a5,a1
   23e88:	0086d433          	srl	s0,a3,s0
   23e8c:	fe872823          	sw	s0,-16(a4)
   23e90:	00300693          	li	a3,3
   23e94:	0440006f          	j	23ed8 <__subtf3+0x1554>
   23e98:	00279893          	slli	a7,a5,0x2
   23e9c:	03010613          	addi	a2,sp,48
   23ea0:	0006a303          	lw	t1,0(a3)
   23ea4:	011608b3          	add	a7,a2,a7
   23ea8:	ffc6a603          	lw	a2,-4(a3)
   23eac:	01031333          	sll	t1,t1,a6
   23eb0:	00178793          	addi	a5,a5,1
   23eb4:	00865633          	srl	a2,a2,s0
   23eb8:	00666633          	or	a2,a2,t1
   23ebc:	00c8a023          	sw	a2,0(a7)
   23ec0:	fa9ff06f          	j	23e68 <__subtf3+0x14e4>
   23ec4:	00279713          	slli	a4,a5,0x2
   23ec8:	03010613          	addi	a2,sp,48
   23ecc:	00e60733          	add	a4,a2,a4
   23ed0:	00072023          	sw	zero,0(a4)
   23ed4:	00178793          	addi	a5,a5,1
   23ed8:	fef6d6e3          	bge	a3,a5,23ec4 <__subtf3+0x1540>
   23edc:	03012703          	lw	a4,48(sp)
   23ee0:	00a037b3          	snez	a5,a0
   23ee4:	00000413          	li	s0,0
   23ee8:	00f767b3          	or	a5,a4,a5
   23eec:	02f12823          	sw	a5,48(sp)
   23ef0:	cc5fe06f          	j	22bb4 <__subtf3+0x230>
   23ef4:	40f40433          	sub	s0,s0,a5
   23ef8:	03c12783          	lw	a5,60(sp)
   23efc:	fff80737          	lui	a4,0xfff80
   23f00:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff5902f>
   23f04:	00e7f7b3          	and	a5,a5,a4
   23f08:	02f12e23          	sw	a5,60(sp)
   23f0c:	ca9fe06f          	j	22bb4 <__subtf3+0x230>
   23f10:	02012e23          	sw	zero,60(sp)
   23f14:	02012c23          	sw	zero,56(sp)
   23f18:	02012a23          	sw	zero,52(sp)
   23f1c:	02012823          	sw	zero,48(sp)
   23f20:	d15fe06f          	j	22c34 <__subtf3+0x2b0>

00023f24 <__fixtfsi>:
   23f24:	00852783          	lw	a5,8(a0)
   23f28:	00452703          	lw	a4,4(a0)
   23f2c:	00c52683          	lw	a3,12(a0)
   23f30:	00052603          	lw	a2,0(a0)
   23f34:	fe010113          	addi	sp,sp,-32
   23f38:	00e12223          	sw	a4,4(sp)
   23f3c:	00f12423          	sw	a5,8(sp)
   23f40:	00f12c23          	sw	a5,24(sp)
   23f44:	00004737          	lui	a4,0x4
   23f48:	00169793          	slli	a5,a3,0x1
   23f4c:	0117d593          	srli	a1,a5,0x11
   23f50:	00c12023          	sw	a2,0(sp)
   23f54:	00d12623          	sw	a3,12(sp)
   23f58:	00c12823          	sw	a2,16(sp)
   23f5c:	ffe70793          	addi	a5,a4,-2 # 3ffe <register_fini-0xc076>
   23f60:	00000513          	li	a0,0
   23f64:	00b7de63          	bge	a5,a1,23f80 <__fixtfsi+0x5c>
   23f68:	01d70793          	addi	a5,a4,29
   23f6c:	01f6d813          	srli	a6,a3,0x1f
   23f70:	00b7dc63          	bge	a5,a1,23f88 <__fixtfsi+0x64>
   23f74:	80000537          	lui	a0,0x80000
   23f78:	fff54513          	not	a0,a0
   23f7c:	00a80533          	add	a0,a6,a0
   23f80:	02010113          	addi	sp,sp,32
   23f84:	00008067          	ret
   23f88:	01069693          	slli	a3,a3,0x10
   23f8c:	000107b7          	lui	a5,0x10
   23f90:	0106d693          	srli	a3,a3,0x10
   23f94:	00f6e6b3          	or	a3,a3,a5
   23f98:	06f70793          	addi	a5,a4,111
   23f9c:	40b787b3          	sub	a5,a5,a1
   23fa0:	4057d713          	srai	a4,a5,0x5
   23fa4:	00d12e23          	sw	a3,28(sp)
   23fa8:	01f7f793          	andi	a5,a5,31
   23fac:	04078863          	beqz	a5,23ffc <__fixtfsi+0xd8>
   23fb0:	02000513          	li	a0,32
   23fb4:	ffe70893          	addi	a7,a4,-2
   23fb8:	40f50533          	sub	a0,a0,a5
   23fbc:	00271713          	slli	a4,a4,0x2
   23fc0:	02010e13          	addi	t3,sp,32
   23fc4:	00a69533          	sll	a0,a3,a0
   23fc8:	00000313          	li	t1,0
   23fcc:	00000593          	li	a1,0
   23fd0:	0018b893          	seqz	a7,a7
   23fd4:	00ee0733          	add	a4,t3,a4
   23fd8:	0515c463          	blt	a1,a7,24020 <__fixtfsi+0xfc>
   23fdc:	00030463          	beqz	t1,23fe4 <__fixtfsi+0xc0>
   23fe0:	00c12823          	sw	a2,16(sp)
   23fe4:	00259593          	slli	a1,a1,0x2
   23fe8:	02010713          	addi	a4,sp,32
   23fec:	00b705b3          	add	a1,a4,a1
   23ff0:	00f6d6b3          	srl	a3,a3,a5
   23ff4:	fed5a823          	sw	a3,-16(a1)
   23ff8:	0180006f          	j	24010 <__fixtfsi+0xec>
   23ffc:	02010793          	addi	a5,sp,32
   24000:	00271713          	slli	a4,a4,0x2
   24004:	00e78733          	add	a4,a5,a4
   24008:	ff072783          	lw	a5,-16(a4)
   2400c:	00f12823          	sw	a5,16(sp)
   24010:	01012503          	lw	a0,16(sp)
   24014:	f60806e3          	beqz	a6,23f80 <__fixtfsi+0x5c>
   24018:	40a00533          	neg	a0,a0
   2401c:	f65ff06f          	j	23f80 <__fixtfsi+0x5c>
   24020:	ff072603          	lw	a2,-16(a4)
   24024:	00100313          	li	t1,1
   24028:	00100593          	li	a1,1
   2402c:	00f65633          	srl	a2,a2,a5
   24030:	00a66633          	or	a2,a2,a0
   24034:	fa5ff06f          	j	23fd8 <__fixtfsi+0xb4>

00024038 <__floatsitf>:
   24038:	fd010113          	addi	sp,sp,-48
   2403c:	02912223          	sw	s1,36(sp)
   24040:	02112623          	sw	ra,44(sp)
   24044:	02812423          	sw	s0,40(sp)
   24048:	03212023          	sw	s2,32(sp)
   2404c:	00050493          	mv	s1,a0
   24050:	12058063          	beqz	a1,24170 <__floatsitf+0x138>
   24054:	41f5d793          	srai	a5,a1,0x1f
   24058:	00b7c433          	xor	s0,a5,a1
   2405c:	40f40433          	sub	s0,s0,a5
   24060:	00040513          	mv	a0,s0
   24064:	01f5d913          	srli	s2,a1,0x1f
   24068:	734000ef          	jal	ra,2479c <__clzsi2>
   2406c:	00004737          	lui	a4,0x4
   24070:	01e70713          	addi	a4,a4,30 # 401e <register_fini-0xc056>
   24074:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffd9081>
   24078:	40a705b3          	sub	a1,a4,a0
   2407c:	00812823          	sw	s0,16(sp)
   24080:	4057d713          	srai	a4,a5,0x5
   24084:	00012a23          	sw	zero,20(sp)
   24088:	00012c23          	sw	zero,24(sp)
   2408c:	00012e23          	sw	zero,28(sp)
   24090:	01f7f793          	andi	a5,a5,31
   24094:	02078c63          	beqz	a5,240cc <__floatsitf+0x94>
   24098:	00200693          	li	a3,2
   2409c:	0cd71663          	bne	a4,a3,24168 <__floatsitf+0x130>
   240a0:	02000693          	li	a3,32
   240a4:	40f686b3          	sub	a3,a3,a5
   240a8:	00d456b3          	srl	a3,s0,a3
   240ac:	00d12e23          	sw	a3,28(sp)
   240b0:	fff70693          	addi	a3,a4,-1
   240b4:	02010613          	addi	a2,sp,32
   240b8:	00271713          	slli	a4,a4,0x2
   240bc:	00e60733          	add	a4,a2,a4
   240c0:	00f417b3          	sll	a5,s0,a5
   240c4:	fef72823          	sw	a5,-16(a4)
   240c8:	0340006f          	j	240fc <__floatsitf+0xc4>
   240cc:	00300793          	li	a5,3
   240d0:	40e787b3          	sub	a5,a5,a4
   240d4:	02010693          	addi	a3,sp,32
   240d8:	00279793          	slli	a5,a5,0x2
   240dc:	00f687b3          	add	a5,a3,a5
   240e0:	ff07a783          	lw	a5,-16(a5) # fff0 <register_fini-0x84>
   240e4:	00200693          	li	a3,2
   240e8:	00f12e23          	sw	a5,28(sp)
   240ec:	00200793          	li	a5,2
   240f0:	00f71663          	bne	a4,a5,240fc <__floatsitf+0xc4>
   240f4:	00812c23          	sw	s0,24(sp)
   240f8:	00100693          	li	a3,1
   240fc:	fff00793          	li	a5,-1
   24100:	00269713          	slli	a4,a3,0x2
   24104:	01010613          	addi	a2,sp,16
   24108:	00e60733          	add	a4,a2,a4
   2410c:	00072023          	sw	zero,0(a4)
   24110:	fff68693          	addi	a3,a3,-1
   24114:	fef696e3          	bne	a3,a5,24100 <__floatsitf+0xc8>
   24118:	01c12783          	lw	a5,28(sp)
   2411c:	02c12083          	lw	ra,44(sp)
   24120:	02812403          	lw	s0,40(sp)
   24124:	00f11623          	sh	a5,12(sp)
   24128:	00f91793          	slli	a5,s2,0xf
   2412c:	00b7e5b3          	or	a1,a5,a1
   24130:	01012783          	lw	a5,16(sp)
   24134:	00b11723          	sh	a1,14(sp)
   24138:	02012903          	lw	s2,32(sp)
   2413c:	00f4a023          	sw	a5,0(s1)
   24140:	01412783          	lw	a5,20(sp)
   24144:	00048513          	mv	a0,s1
   24148:	00f4a223          	sw	a5,4(s1)
   2414c:	01812783          	lw	a5,24(sp)
   24150:	00f4a423          	sw	a5,8(s1)
   24154:	00c12783          	lw	a5,12(sp)
   24158:	00f4a623          	sw	a5,12(s1)
   2415c:	02412483          	lw	s1,36(sp)
   24160:	03010113          	addi	sp,sp,48
   24164:	00008067          	ret
   24168:	00300713          	li	a4,3
   2416c:	f45ff06f          	j	240b0 <__floatsitf+0x78>
   24170:	00012e23          	sw	zero,28(sp)
   24174:	00012c23          	sw	zero,24(sp)
   24178:	00012a23          	sw	zero,20(sp)
   2417c:	00012823          	sw	zero,16(sp)
   24180:	00000913          	li	s2,0
   24184:	f95ff06f          	j	24118 <__floatsitf+0xe0>

00024188 <__extenddftf2>:
   24188:	01465793          	srli	a5,a2,0x14
   2418c:	00c61713          	slli	a4,a2,0xc
   24190:	7ff7f793          	andi	a5,a5,2047
   24194:	fd010113          	addi	sp,sp,-48
   24198:	00c75713          	srli	a4,a4,0xc
   2419c:	00178693          	addi	a3,a5,1
   241a0:	02812423          	sw	s0,40(sp)
   241a4:	02912223          	sw	s1,36(sp)
   241a8:	03212023          	sw	s2,32(sp)
   241ac:	02112623          	sw	ra,44(sp)
   241b0:	00b12823          	sw	a1,16(sp)
   241b4:	00e12a23          	sw	a4,20(sp)
   241b8:	00012e23          	sw	zero,28(sp)
   241bc:	00012c23          	sw	zero,24(sp)
   241c0:	7fe6f693          	andi	a3,a3,2046
   241c4:	00050913          	mv	s2,a0
   241c8:	00058493          	mv	s1,a1
   241cc:	01f65413          	srli	s0,a2,0x1f
   241d0:	08068263          	beqz	a3,24254 <__extenddftf2+0xcc>
   241d4:	000046b7          	lui	a3,0x4
   241d8:	c0068693          	addi	a3,a3,-1024 # 3c00 <register_fini-0xc474>
   241dc:	00d787b3          	add	a5,a5,a3
   241e0:	0045d513          	srli	a0,a1,0x4
   241e4:	00475693          	srli	a3,a4,0x4
   241e8:	01c71713          	slli	a4,a4,0x1c
   241ec:	00a76733          	or	a4,a4,a0
   241f0:	01c59493          	slli	s1,a1,0x1c
   241f4:	00d12e23          	sw	a3,28(sp)
   241f8:	00e12c23          	sw	a4,24(sp)
   241fc:	00912a23          	sw	s1,20(sp)
   24200:	00012823          	sw	zero,16(sp)
   24204:	00f41413          	slli	s0,s0,0xf
   24208:	00f467b3          	or	a5,s0,a5
   2420c:	00f11723          	sh	a5,14(sp)
   24210:	01012783          	lw	a5,16(sp)
   24214:	01c12703          	lw	a4,28(sp)
   24218:	02c12083          	lw	ra,44(sp)
   2421c:	00f92023          	sw	a5,0(s2)
   24220:	01412783          	lw	a5,20(sp)
   24224:	00e11623          	sh	a4,12(sp)
   24228:	02812403          	lw	s0,40(sp)
   2422c:	00f92223          	sw	a5,4(s2)
   24230:	01812783          	lw	a5,24(sp)
   24234:	02412483          	lw	s1,36(sp)
   24238:	00090513          	mv	a0,s2
   2423c:	00f92423          	sw	a5,8(s2)
   24240:	00c12783          	lw	a5,12(sp)
   24244:	00f92623          	sw	a5,12(s2)
   24248:	02012903          	lw	s2,32(sp)
   2424c:	03010113          	addi	sp,sp,48
   24250:	00008067          	ret
   24254:	00b76533          	or	a0,a4,a1
   24258:	0e079263          	bnez	a5,2433c <__extenddftf2+0x1b4>
   2425c:	fa0504e3          	beqz	a0,24204 <__extenddftf2+0x7c>
   24260:	04070c63          	beqz	a4,242b8 <__extenddftf2+0x130>
   24264:	00070513          	mv	a0,a4
   24268:	534000ef          	jal	ra,2479c <__clzsi2>
   2426c:	03150593          	addi	a1,a0,49
   24270:	4055d693          	srai	a3,a1,0x5
   24274:	01f5f593          	andi	a1,a1,31
   24278:	40d00733          	neg	a4,a3
   2427c:	04058463          	beqz	a1,242c4 <__extenddftf2+0x13c>
   24280:	00271713          	slli	a4,a4,0x2
   24284:	01010313          	addi	t1,sp,16
   24288:	00c70713          	addi	a4,a4,12
   2428c:	02000813          	li	a6,32
   24290:	00e30733          	add	a4,t1,a4
   24294:	00269613          	slli	a2,a3,0x2
   24298:	40b80833          	sub	a6,a6,a1
   2429c:	06e31e63          	bne	t1,a4,24318 <__extenddftf2+0x190>
   242a0:	02010793          	addi	a5,sp,32
   242a4:	00c78633          	add	a2,a5,a2
   242a8:	00b495b3          	sll	a1,s1,a1
   242ac:	fff68713          	addi	a4,a3,-1
   242b0:	feb62823          	sw	a1,-16(a2)
   242b4:	0380006f          	j	242ec <__extenddftf2+0x164>
   242b8:	4e4000ef          	jal	ra,2479c <__clzsi2>
   242bc:	02050513          	addi	a0,a0,32
   242c0:	fadff06f          	j	2426c <__extenddftf2+0xe4>
   242c4:	01c10793          	addi	a5,sp,28
   242c8:	00271713          	slli	a4,a4,0x2
   242cc:	00300613          	li	a2,3
   242d0:	00e785b3          	add	a1,a5,a4
   242d4:	0005a583          	lw	a1,0(a1)
   242d8:	fff60613          	addi	a2,a2,-1
   242dc:	ffc78793          	addi	a5,a5,-4
   242e0:	00b7a223          	sw	a1,4(a5)
   242e4:	fed656e3          	bge	a2,a3,242d0 <__extenddftf2+0x148>
   242e8:	fff68713          	addi	a4,a3,-1
   242ec:	fff00693          	li	a3,-1
   242f0:	00271793          	slli	a5,a4,0x2
   242f4:	01010613          	addi	a2,sp,16
   242f8:	00f607b3          	add	a5,a2,a5
   242fc:	0007a023          	sw	zero,0(a5)
   24300:	fff70713          	addi	a4,a4,-1
   24304:	fed716e3          	bne	a4,a3,242f0 <__extenddftf2+0x168>
   24308:	000047b7          	lui	a5,0x4
   2430c:	c0c78793          	addi	a5,a5,-1012 # 3c0c <register_fini-0xc468>
   24310:	40a787b3          	sub	a5,a5,a0
   24314:	ef1ff06f          	j	24204 <__extenddftf2+0x7c>
   24318:	ffc72783          	lw	a5,-4(a4)
   2431c:	00072883          	lw	a7,0(a4)
   24320:	00c70e33          	add	t3,a4,a2
   24324:	0107d7b3          	srl	a5,a5,a6
   24328:	00b898b3          	sll	a7,a7,a1
   2432c:	0117e7b3          	or	a5,a5,a7
   24330:	00fe2023          	sw	a5,0(t3)
   24334:	ffc70713          	addi	a4,a4,-4
   24338:	f65ff06f          	j	2429c <__extenddftf2+0x114>
   2433c:	000087b7          	lui	a5,0x8
   24340:	02050863          	beqz	a0,24370 <__extenddftf2+0x1e8>
   24344:	01c71793          	slli	a5,a4,0x1c
   24348:	0045d693          	srli	a3,a1,0x4
   2434c:	00d7e7b3          	or	a5,a5,a3
   24350:	00f12c23          	sw	a5,24(sp)
   24354:	00475713          	srli	a4,a4,0x4
   24358:	000087b7          	lui	a5,0x8
   2435c:	01c59493          	slli	s1,a1,0x1c
   24360:	00f76733          	or	a4,a4,a5
   24364:	00912a23          	sw	s1,20(sp)
   24368:	00012823          	sw	zero,16(sp)
   2436c:	00e12e23          	sw	a4,28(sp)
   24370:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   24374:	e91ff06f          	j	24204 <__extenddftf2+0x7c>

00024378 <__trunctfdf2>:
   24378:	00c52583          	lw	a1,12(a0)
   2437c:	00852783          	lw	a5,8(a0)
   24380:	00452703          	lw	a4,4(a0)
   24384:	fe010113          	addi	sp,sp,-32
   24388:	00052683          	lw	a3,0(a0)
   2438c:	00f12423          	sw	a5,8(sp)
   24390:	00f12c23          	sw	a5,24(sp)
   24394:	01059793          	slli	a5,a1,0x10
   24398:	00e12223          	sw	a4,4(sp)
   2439c:	00e12a23          	sw	a4,20(sp)
   243a0:	0107d793          	srli	a5,a5,0x10
   243a4:	00159713          	slli	a4,a1,0x1
   243a8:	00b12623          	sw	a1,12(sp)
   243ac:	00d12023          	sw	a3,0(sp)
   243b0:	00d12823          	sw	a3,16(sp)
   243b4:	00f12e23          	sw	a5,28(sp)
   243b8:	01175713          	srli	a4,a4,0x11
   243bc:	01f5d593          	srli	a1,a1,0x1f
   243c0:	01010813          	addi	a6,sp,16
   243c4:	01c10613          	addi	a2,sp,28
   243c8:	00062783          	lw	a5,0(a2)
   243cc:	ffc62683          	lw	a3,-4(a2)
   243d0:	ffc60613          	addi	a2,a2,-4
   243d4:	00379793          	slli	a5,a5,0x3
   243d8:	01d6d693          	srli	a3,a3,0x1d
   243dc:	00d7e7b3          	or	a5,a5,a3
   243e0:	00f62223          	sw	a5,4(a2)
   243e4:	fec812e3          	bne	a6,a2,243c8 <__trunctfdf2+0x50>
   243e8:	01012683          	lw	a3,16(sp)
   243ec:	00170793          	addi	a5,a4,1
   243f0:	00369513          	slli	a0,a3,0x3
   243f4:	000086b7          	lui	a3,0x8
   243f8:	ffe68693          	addi	a3,a3,-2 # 7ffe <register_fini-0x8076>
   243fc:	00a12823          	sw	a0,16(sp)
   24400:	00d7f7b3          	and	a5,a5,a3
   24404:	1c078463          	beqz	a5,245cc <__trunctfdf2+0x254>
   24408:	ffffc7b7          	lui	a5,0xffffc
   2440c:	40078793          	addi	a5,a5,1024 # ffffc400 <__BSS_END__+0xfffd5430>
   24410:	00f70733          	add	a4,a4,a5
   24414:	7fe00793          	li	a5,2046
   24418:	20e7c663          	blt	a5,a4,24624 <__trunctfdf2+0x2ac>
   2441c:	06e05863          	blez	a4,2448c <__trunctfdf2+0x114>
   24420:	01812803          	lw	a6,24(sp)
   24424:	01c12603          	lw	a2,28(sp)
   24428:	01412783          	lw	a5,20(sp)
   2442c:	01c85693          	srli	a3,a6,0x1c
   24430:	00461613          	slli	a2,a2,0x4
   24434:	00d66633          	or	a2,a2,a3
   24438:	00479693          	slli	a3,a5,0x4
   2443c:	00a6e6b3          	or	a3,a3,a0
   24440:	01c7d793          	srli	a5,a5,0x1c
   24444:	00481813          	slli	a6,a6,0x4
   24448:	00d036b3          	snez	a3,a3
   2444c:	0107e7b3          	or	a5,a5,a6
   24450:	00f6e6b3          	or	a3,a3,a5
   24454:	00c12a23          	sw	a2,20(sp)
   24458:	00d12823          	sw	a3,16(sp)
   2445c:	01012683          	lw	a3,16(sp)
   24460:	01412783          	lw	a5,20(sp)
   24464:	0076f613          	andi	a2,a3,7
   24468:	1c060463          	beqz	a2,24630 <__trunctfdf2+0x2b8>
   2446c:	00f6f613          	andi	a2,a3,15
   24470:	00400513          	li	a0,4
   24474:	1aa60e63          	beq	a2,a0,24630 <__trunctfdf2+0x2b8>
   24478:	00468613          	addi	a2,a3,4
   2447c:	00d636b3          	sltu	a3,a2,a3
   24480:	00d787b3          	add	a5,a5,a3
   24484:	00060693          	mv	a3,a2
   24488:	1a80006f          	j	24630 <__trunctfdf2+0x2b8>
   2448c:	fcc00793          	li	a5,-52
   24490:	00f75c63          	bge	a4,a5,244a8 <__trunctfdf2+0x130>
   24494:	00012a23          	sw	zero,20(sp)
   24498:	00100793          	li	a5,1
   2449c:	00f12823          	sw	a5,16(sp)
   244a0:	00000713          	li	a4,0
   244a4:	fb9ff06f          	j	2445c <__trunctfdf2+0xe4>
   244a8:	01c12783          	lw	a5,28(sp)
   244ac:	00080f37          	lui	t5,0x80
   244b0:	03d00693          	li	a3,61
   244b4:	00ff6f33          	or	t5,t5,a5
   244b8:	40e686b3          	sub	a3,a3,a4
   244bc:	01e12e23          	sw	t5,28(sp)
   244c0:	4056de93          	srai	t4,a3,0x5
   244c4:	00080713          	mv	a4,a6
   244c8:	00000793          	li	a5,0
   244cc:	00000e13          	li	t3,0
   244d0:	00072503          	lw	a0,0(a4)
   244d4:	00178793          	addi	a5,a5,1
   244d8:	00470713          	addi	a4,a4,4
   244dc:	00ae6e33          	or	t3,t3,a0
   244e0:	fefe98e3          	bne	t4,a5,244d0 <__trunctfdf2+0x158>
   244e4:	01f6f713          	andi	a4,a3,31
   244e8:	002e9693          	slli	a3,t4,0x2
   244ec:	04071063          	bnez	a4,2452c <__trunctfdf2+0x1b4>
   244f0:	00300713          	li	a4,3
   244f4:	00000793          	li	a5,0
   244f8:	41d70733          	sub	a4,a4,t4
   244fc:	00d60533          	add	a0,a2,a3
   24500:	00052503          	lw	a0,0(a0)
   24504:	00178793          	addi	a5,a5,1
   24508:	00460613          	addi	a2,a2,4
   2450c:	fea62e23          	sw	a0,-4(a2)
   24510:	fef756e3          	bge	a4,a5,244fc <__trunctfdf2+0x184>
   24514:	00400713          	li	a4,4
   24518:	41d70733          	sub	a4,a4,t4
   2451c:	00100793          	li	a5,1
   24520:	04e05e63          	blez	a4,2457c <__trunctfdf2+0x204>
   24524:	00070793          	mv	a5,a4
   24528:	0540006f          	j	2457c <__trunctfdf2+0x204>
   2452c:	02010793          	addi	a5,sp,32
   24530:	00d787b3          	add	a5,a5,a3
   24534:	ff07a783          	lw	a5,-16(a5)
   24538:	02000313          	li	t1,32
   2453c:	40e30333          	sub	t1,t1,a4
   24540:	006797b3          	sll	a5,a5,t1
   24544:	00d80633          	add	a2,a6,a3
   24548:	00300693          	li	a3,3
   2454c:	00fe6e33          	or	t3,t3,a5
   24550:	00000893          	li	a7,0
   24554:	41d686b3          	sub	a3,a3,t4
   24558:	00460613          	addi	a2,a2,4
   2455c:	04d8c463          	blt	a7,a3,245a4 <__trunctfdf2+0x22c>
   24560:	00269693          	slli	a3,a3,0x2
   24564:	02010613          	addi	a2,sp,32
   24568:	00400793          	li	a5,4
   2456c:	00d606b3          	add	a3,a2,a3
   24570:	00ef5733          	srl	a4,t5,a4
   24574:	41d787b3          	sub	a5,a5,t4
   24578:	fee6a823          	sw	a4,-16(a3)
   2457c:	00400693          	li	a3,4
   24580:	00279713          	slli	a4,a5,0x2
   24584:	00e80733          	add	a4,a6,a4
   24588:	00072023          	sw	zero,0(a4)
   2458c:	00178793          	addi	a5,a5,1
   24590:	fed798e3          	bne	a5,a3,24580 <__trunctfdf2+0x208>
   24594:	01012703          	lw	a4,16(sp)
   24598:	01c037b3          	snez	a5,t3
   2459c:	00f767b3          	or	a5,a4,a5
   245a0:	efdff06f          	j	2449c <__trunctfdf2+0x124>
   245a4:	ffc62503          	lw	a0,-4(a2)
   245a8:	00062f83          	lw	t6,0(a2)
   245ac:	00289793          	slli	a5,a7,0x2
   245b0:	00e55533          	srl	a0,a0,a4
   245b4:	006f9fb3          	sll	t6,t6,t1
   245b8:	00f807b3          	add	a5,a6,a5
   245bc:	01f56533          	or	a0,a0,t6
   245c0:	00a7a023          	sw	a0,0(a5)
   245c4:	00188893          	addi	a7,a7,1
   245c8:	f91ff06f          	j	24558 <__trunctfdf2+0x1e0>
   245cc:	01412603          	lw	a2,20(sp)
   245d0:	01812783          	lw	a5,24(sp)
   245d4:	01c12803          	lw	a6,28(sp)
   245d8:	00f666b3          	or	a3,a2,a5
   245dc:	0106e6b3          	or	a3,a3,a6
   245e0:	00a6e6b3          	or	a3,a3,a0
   245e4:	00071863          	bnez	a4,245f4 <__trunctfdf2+0x27c>
   245e8:	00d036b3          	snez	a3,a3
   245ec:	00000793          	li	a5,0
   245f0:	e75ff06f          	j	24464 <__trunctfdf2+0xec>
   245f4:	0a068e63          	beqz	a3,246b0 <__trunctfdf2+0x338>
   245f8:	01c65693          	srli	a3,a2,0x1c
   245fc:	00481813          	slli	a6,a6,0x4
   24600:	00479613          	slli	a2,a5,0x4
   24604:	01c7d793          	srli	a5,a5,0x1c
   24608:	00400737          	lui	a4,0x400
   2460c:	00c6e6b3          	or	a3,a3,a2
   24610:	0107e7b3          	or	a5,a5,a6
   24614:	00e7e7b3          	or	a5,a5,a4
   24618:	ff86f693          	andi	a3,a3,-8
   2461c:	7ff00713          	li	a4,2047
   24620:	e45ff06f          	j	24464 <__trunctfdf2+0xec>
   24624:	00000793          	li	a5,0
   24628:	00000693          	li	a3,0
   2462c:	7ff00713          	li	a4,2047
   24630:	00879613          	slli	a2,a5,0x8
   24634:	00065e63          	bgez	a2,24650 <__trunctfdf2+0x2d8>
   24638:	00170713          	addi	a4,a4,1 # 400001 <__BSS_END__+0x3d9031>
   2463c:	7ff00613          	li	a2,2047
   24640:	06c70c63          	beq	a4,a2,246b8 <__trunctfdf2+0x340>
   24644:	ff800637          	lui	a2,0xff800
   24648:	fff60613          	addi	a2,a2,-1 # ff7fffff <__BSS_END__+0xff7d902f>
   2464c:	00c7f7b3          	and	a5,a5,a2
   24650:	01d79613          	slli	a2,a5,0x1d
   24654:	0036d693          	srli	a3,a3,0x3
   24658:	00d666b3          	or	a3,a2,a3
   2465c:	7ff00613          	li	a2,2047
   24660:	0037d793          	srli	a5,a5,0x3
   24664:	00c71e63          	bne	a4,a2,24680 <__trunctfdf2+0x308>
   24668:	00f6e6b3          	or	a3,a3,a5
   2466c:	00000793          	li	a5,0
   24670:	00068863          	beqz	a3,24680 <__trunctfdf2+0x308>
   24674:	000807b7          	lui	a5,0x80
   24678:	00000693          	li	a3,0
   2467c:	00000593          	li	a1,0
   24680:	01471713          	slli	a4,a4,0x14
   24684:	7ff00637          	lui	a2,0x7ff00
   24688:	00c79793          	slli	a5,a5,0xc
   2468c:	00c77733          	and	a4,a4,a2
   24690:	00c7d793          	srli	a5,a5,0xc
   24694:	01f59593          	slli	a1,a1,0x1f
   24698:	00f767b3          	or	a5,a4,a5
   2469c:	00b7e733          	or	a4,a5,a1
   246a0:	00068513          	mv	a0,a3
   246a4:	00070593          	mv	a1,a4
   246a8:	02010113          	addi	sp,sp,32
   246ac:	00008067          	ret
   246b0:	00000793          	li	a5,0
   246b4:	f79ff06f          	j	2462c <__trunctfdf2+0x2b4>
   246b8:	00000793          	li	a5,0
   246bc:	00000693          	li	a3,0
   246c0:	f91ff06f          	j	24650 <__trunctfdf2+0x2d8>

000246c4 <__mulsi3>:
   246c4:	00050613          	mv	a2,a0
   246c8:	00000513          	li	a0,0
   246cc:	0015f693          	andi	a3,a1,1
   246d0:	00068463          	beqz	a3,246d8 <__mulsi3+0x14>
   246d4:	00c50533          	add	a0,a0,a2
   246d8:	0015d593          	srli	a1,a1,0x1
   246dc:	00161613          	slli	a2,a2,0x1
   246e0:	fe0596e3          	bnez	a1,246cc <__mulsi3+0x8>
   246e4:	00008067          	ret

000246e8 <__divsi3>:
   246e8:	06054063          	bltz	a0,24748 <__umodsi3+0x10>
   246ec:	0605c663          	bltz	a1,24758 <__umodsi3+0x20>

000246f0 <__udivsi3>:
   246f0:	00058613          	mv	a2,a1
   246f4:	00050593          	mv	a1,a0
   246f8:	fff00513          	li	a0,-1
   246fc:	02060c63          	beqz	a2,24734 <__udivsi3+0x44>
   24700:	00100693          	li	a3,1
   24704:	00b67a63          	bgeu	a2,a1,24718 <__udivsi3+0x28>
   24708:	00c05863          	blez	a2,24718 <__udivsi3+0x28>
   2470c:	00161613          	slli	a2,a2,0x1
   24710:	00169693          	slli	a3,a3,0x1
   24714:	feb66ae3          	bltu	a2,a1,24708 <__udivsi3+0x18>
   24718:	00000513          	li	a0,0
   2471c:	00c5e663          	bltu	a1,a2,24728 <__udivsi3+0x38>
   24720:	40c585b3          	sub	a1,a1,a2
   24724:	00d56533          	or	a0,a0,a3
   24728:	0016d693          	srli	a3,a3,0x1
   2472c:	00165613          	srli	a2,a2,0x1
   24730:	fe0696e3          	bnez	a3,2471c <__udivsi3+0x2c>
   24734:	00008067          	ret

00024738 <__umodsi3>:
   24738:	00008293          	mv	t0,ra
   2473c:	fb5ff0ef          	jal	ra,246f0 <__udivsi3>
   24740:	00058513          	mv	a0,a1
   24744:	00028067          	jr	t0
   24748:	40a00533          	neg	a0,a0
   2474c:	0005d863          	bgez	a1,2475c <__umodsi3+0x24>
   24750:	40b005b3          	neg	a1,a1
   24754:	f9dff06f          	j	246f0 <__udivsi3>
   24758:	40b005b3          	neg	a1,a1
   2475c:	00008293          	mv	t0,ra
   24760:	f91ff0ef          	jal	ra,246f0 <__udivsi3>
   24764:	40a00533          	neg	a0,a0
   24768:	00028067          	jr	t0

0002476c <__modsi3>:
   2476c:	00008293          	mv	t0,ra
   24770:	0005ca63          	bltz	a1,24784 <__modsi3+0x18>
   24774:	00054c63          	bltz	a0,2478c <__modsi3+0x20>
   24778:	f79ff0ef          	jal	ra,246f0 <__udivsi3>
   2477c:	00058513          	mv	a0,a1
   24780:	00028067          	jr	t0
   24784:	40b005b3          	neg	a1,a1
   24788:	fe0558e3          	bgez	a0,24778 <__modsi3+0xc>
   2478c:	40a00533          	neg	a0,a0
   24790:	f61ff0ef          	jal	ra,246f0 <__udivsi3>
   24794:	40b00533          	neg	a0,a1
   24798:	00028067          	jr	t0

0002479c <__clzsi2>:
   2479c:	000107b7          	lui	a5,0x10
   247a0:	02f57a63          	bgeu	a0,a5,247d4 <__clzsi2+0x38>
   247a4:	0ff00793          	li	a5,255
   247a8:	00a7b7b3          	sltu	a5,a5,a0
   247ac:	00379793          	slli	a5,a5,0x3
   247b0:	00025737          	lui	a4,0x25
   247b4:	02000693          	li	a3,32
   247b8:	40f686b3          	sub	a3,a3,a5
   247bc:	00f55533          	srl	a0,a0,a5
   247c0:	3e470793          	addi	a5,a4,996 # 253e4 <__clz_tab>
   247c4:	00a78533          	add	a0,a5,a0
   247c8:	00054503          	lbu	a0,0(a0)
   247cc:	40a68533          	sub	a0,a3,a0
   247d0:	00008067          	ret
   247d4:	01000737          	lui	a4,0x1000
   247d8:	01000793          	li	a5,16
   247dc:	fce56ae3          	bltu	a0,a4,247b0 <__clzsi2+0x14>
   247e0:	01800793          	li	a5,24
   247e4:	fcdff06f          	j	247b0 <__clzsi2+0x14>

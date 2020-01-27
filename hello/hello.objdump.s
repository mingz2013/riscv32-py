
hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	000007b7          	lui	a5,0x0
   10078:	00078793          	mv	a5,a5
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00011537          	lui	a0,0x11
   10084:	93050513          	addi	a0,a0,-1744 # 10930 <__libc_fini_array>
   10088:	52c0006f          	j	105b4 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00005197          	auipc	gp,0x5
   10094:	d1018193          	addi	gp,gp,-752 # 14da0 <__global_pointer$>
   10098:	04418513          	addi	a0,gp,68 # 14de4 <_edata>
   1009c:	09c18613          	addi	a2,gp,156 # 14e3c <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	1a8000ef          	jal	ra,10250 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	50850513          	addi	a0,a0,1288 # 105b4 <atexit>
   100b4:	00050863          	beqz	a0,100c4 <_start+0x34>
   100b8:	00001517          	auipc	a0,0x1
   100bc:	87850513          	addi	a0,a0,-1928 # 10930 <__libc_fini_array>
   100c0:	4f4000ef          	jal	ra,105b4 <atexit>
   100c4:	0f0000ef          	jal	ra,101b4 <__libc_init_array>
   100c8:	00012503          	lw	a0,0(sp)
   100cc:	00410593          	addi	a1,sp,4
   100d0:	00000613          	li	a2,0
   100d4:	07c000ef          	jal	ra,10150 <main>
   100d8:	0ac0006f          	j	10184 <exit>

000100dc <__do_global_dtors_aux>:
   100dc:	0541c703          	lbu	a4,84(gp) # 14df4 <completed.5490>
   100e0:	04071463          	bnez	a4,10128 <__do_global_dtors_aux+0x4c>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00812423          	sw	s0,8(sp)
   100ec:	00078413          	mv	s0,a5
   100f0:	000007b7          	lui	a5,0x0
   100f4:	00112623          	sw	ra,12(sp)
   100f8:	00078793          	mv	a5,a5
   100fc:	00078a63          	beqz	a5,10110 <__do_global_dtors_aux+0x34>
   10100:	00014537          	lui	a0,0x14
   10104:	58c50513          	addi	a0,a0,1420 # 1458c <__FRAME_END__>
   10108:	00000097          	auipc	ra,0x0
   1010c:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   10110:	00100793          	li	a5,1
   10114:	00c12083          	lw	ra,12(sp)
   10118:	04f18a23          	sb	a5,84(gp) # 14df4 <completed.5490>
   1011c:	00812403          	lw	s0,8(sp)
   10120:	01010113          	addi	sp,sp,16
   10124:	00008067          	ret
   10128:	00008067          	ret

0001012c <frame_dummy>:
   1012c:	000007b7          	lui	a5,0x0
   10130:	00078793          	mv	a5,a5
   10134:	00078c63          	beqz	a5,1014c <frame_dummy+0x20>
   10138:	00014537          	lui	a0,0x14
   1013c:	05818593          	addi	a1,gp,88 # 14df8 <object.5495>
   10140:	58c50513          	addi	a0,a0,1420 # 1458c <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x10074>
   1014c:	00008067          	ret

00010150 <main>:
   10150:	ff010113          	addi	sp,sp,-16
   10154:	00112623          	sw	ra,12(sp)
   10158:	00812423          	sw	s0,8(sp)
   1015c:	01010413          	addi	s0,sp,16
   10160:	000137b7          	lui	a5,0x13
   10164:	57878513          	addi	a0,a5,1400 # 13578 <__modsi3+0x30>
   10168:	294000ef          	jal	ra,103fc <puts>
   1016c:	00000793          	li	a5,0
   10170:	00078513          	mv	a0,a5
   10174:	00c12083          	lw	ra,12(sp)
   10178:	00812403          	lw	s0,8(sp)
   1017c:	01010113          	addi	sp,sp,16
   10180:	00008067          	ret

00010184 <exit>:
   10184:	ff010113          	addi	sp,sp,-16
   10188:	00000593          	li	a1,0
   1018c:	00812423          	sw	s0,8(sp)
   10190:	00112623          	sw	ra,12(sp)
   10194:	00050413          	mv	s0,a0
   10198:	2fc000ef          	jal	ra,10494 <__call_exitprocs>
   1019c:	0301a503          	lw	a0,48(gp) # 14dd0 <_global_impure_ptr>
   101a0:	03c52783          	lw	a5,60(a0)
   101a4:	00078463          	beqz	a5,101ac <exit+0x28>
   101a8:	000780e7          	jalr	a5
   101ac:	00040513          	mv	a0,s0
   101b0:	7c5020ef          	jal	ra,13174 <_exit>

000101b4 <__libc_init_array>:
   101b4:	ff010113          	addi	sp,sp,-16
   101b8:	00812423          	sw	s0,8(sp)
   101bc:	01212023          	sw	s2,0(sp)
   101c0:	00014437          	lui	s0,0x14
   101c4:	00014937          	lui	s2,0x14
   101c8:	59040793          	addi	a5,s0,1424 # 14590 <__init_array_start>
   101cc:	59090913          	addi	s2,s2,1424 # 14590 <__init_array_start>
   101d0:	40f90933          	sub	s2,s2,a5
   101d4:	00112623          	sw	ra,12(sp)
   101d8:	00912223          	sw	s1,4(sp)
   101dc:	40295913          	srai	s2,s2,0x2
   101e0:	02090063          	beqz	s2,10200 <__libc_init_array+0x4c>
   101e4:	59040413          	addi	s0,s0,1424
   101e8:	00000493          	li	s1,0
   101ec:	00042783          	lw	a5,0(s0)
   101f0:	00148493          	addi	s1,s1,1
   101f4:	00440413          	addi	s0,s0,4
   101f8:	000780e7          	jalr	a5
   101fc:	fe9918e3          	bne	s2,s1,101ec <__libc_init_array+0x38>
   10200:	00014437          	lui	s0,0x14
   10204:	00014937          	lui	s2,0x14
   10208:	59040793          	addi	a5,s0,1424 # 14590 <__init_array_start>
   1020c:	59890913          	addi	s2,s2,1432 # 14598 <__init_array_end>
   10210:	40f90933          	sub	s2,s2,a5
   10214:	40295913          	srai	s2,s2,0x2
   10218:	02090063          	beqz	s2,10238 <__libc_init_array+0x84>
   1021c:	59040413          	addi	s0,s0,1424
   10220:	00000493          	li	s1,0
   10224:	00042783          	lw	a5,0(s0)
   10228:	00148493          	addi	s1,s1,1
   1022c:	00440413          	addi	s0,s0,4
   10230:	000780e7          	jalr	a5
   10234:	fe9918e3          	bne	s2,s1,10224 <__libc_init_array+0x70>
   10238:	00c12083          	lw	ra,12(sp)
   1023c:	00812403          	lw	s0,8(sp)
   10240:	00412483          	lw	s1,4(sp)
   10244:	00012903          	lw	s2,0(sp)
   10248:	01010113          	addi	sp,sp,16
   1024c:	00008067          	ret

00010250 <memset>:
   10250:	00f00313          	li	t1,15
   10254:	00050713          	mv	a4,a0
   10258:	02c37e63          	bgeu	t1,a2,10294 <memset+0x44>
   1025c:	00f77793          	andi	a5,a4,15
   10260:	0a079063          	bnez	a5,10300 <memset+0xb0>
   10264:	08059263          	bnez	a1,102e8 <memset+0x98>
   10268:	ff067693          	andi	a3,a2,-16
   1026c:	00f67613          	andi	a2,a2,15
   10270:	00e686b3          	add	a3,a3,a4
   10274:	00b72023          	sw	a1,0(a4)
   10278:	00b72223          	sw	a1,4(a4)
   1027c:	00b72423          	sw	a1,8(a4)
   10280:	00b72623          	sw	a1,12(a4)
   10284:	01070713          	addi	a4,a4,16
   10288:	fed766e3          	bltu	a4,a3,10274 <memset+0x24>
   1028c:	00061463          	bnez	a2,10294 <memset+0x44>
   10290:	00008067          	ret
   10294:	40c306b3          	sub	a3,t1,a2
   10298:	00269693          	slli	a3,a3,0x2
   1029c:	00000297          	auipc	t0,0x0
   102a0:	005686b3          	add	a3,a3,t0
   102a4:	00c68067          	jr	12(a3)
   102a8:	00b70723          	sb	a1,14(a4)
   102ac:	00b706a3          	sb	a1,13(a4)
   102b0:	00b70623          	sb	a1,12(a4)
   102b4:	00b705a3          	sb	a1,11(a4)
   102b8:	00b70523          	sb	a1,10(a4)
   102bc:	00b704a3          	sb	a1,9(a4)
   102c0:	00b70423          	sb	a1,8(a4)
   102c4:	00b703a3          	sb	a1,7(a4)
   102c8:	00b70323          	sb	a1,6(a4)
   102cc:	00b702a3          	sb	a1,5(a4)
   102d0:	00b70223          	sb	a1,4(a4)
   102d4:	00b701a3          	sb	a1,3(a4)
   102d8:	00b70123          	sb	a1,2(a4)
   102dc:	00b700a3          	sb	a1,1(a4)
   102e0:	00b70023          	sb	a1,0(a4)
   102e4:	00008067          	ret
   102e8:	0ff5f593          	andi	a1,a1,255
   102ec:	00859693          	slli	a3,a1,0x8
   102f0:	00d5e5b3          	or	a1,a1,a3
   102f4:	01059693          	slli	a3,a1,0x10
   102f8:	00d5e5b3          	or	a1,a1,a3
   102fc:	f6dff06f          	j	10268 <memset+0x18>
   10300:	00279693          	slli	a3,a5,0x2
   10304:	00000297          	auipc	t0,0x0
   10308:	005686b3          	add	a3,a3,t0
   1030c:	00008293          	mv	t0,ra
   10310:	fa0680e7          	jalr	-96(a3)
   10314:	00028093          	mv	ra,t0
   10318:	ff078793          	addi	a5,a5,-16
   1031c:	40f70733          	sub	a4,a4,a5
   10320:	00f60633          	add	a2,a2,a5
   10324:	f6c378e3          	bgeu	t1,a2,10294 <memset+0x44>
   10328:	f3dff06f          	j	10264 <memset+0x14>

0001032c <_puts_r>:
   1032c:	fc010113          	addi	sp,sp,-64
   10330:	02812c23          	sw	s0,56(sp)
   10334:	00050413          	mv	s0,a0
   10338:	00058513          	mv	a0,a1
   1033c:	02912a23          	sw	s1,52(sp)
   10340:	02112e23          	sw	ra,60(sp)
   10344:	00058493          	mv	s1,a1
   10348:	0c0000ef          	jal	ra,10408 <strlen>
   1034c:	000137b7          	lui	a5,0x13
   10350:	58878793          	addi	a5,a5,1416 # 13588 <__modsi3+0x40>
   10354:	02f12423          	sw	a5,40(sp)
   10358:	00100793          	li	a5,1
   1035c:	02f12623          	sw	a5,44(sp)
   10360:	03842703          	lw	a4,56(s0)
   10364:	02010793          	addi	a5,sp,32
   10368:	00150693          	addi	a3,a0,1
   1036c:	00f12a23          	sw	a5,20(sp)
   10370:	00200793          	li	a5,2
   10374:	02912023          	sw	s1,32(sp)
   10378:	02a12223          	sw	a0,36(sp)
   1037c:	00d12e23          	sw	a3,28(sp)
   10380:	00f12c23          	sw	a5,24(sp)
   10384:	00842583          	lw	a1,8(s0)
   10388:	06070063          	beqz	a4,103e8 <_puts_r+0xbc>
   1038c:	00c59783          	lh	a5,12(a1)
   10390:	01279713          	slli	a4,a5,0x12
   10394:	02074263          	bltz	a4,103b8 <_puts_r+0x8c>
   10398:	0645a703          	lw	a4,100(a1)
   1039c:	000026b7          	lui	a3,0x2
   103a0:	00d7e7b3          	or	a5,a5,a3
   103a4:	ffffe6b7          	lui	a3,0xffffe
   103a8:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe91c3>
   103ac:	00d77733          	and	a4,a4,a3
   103b0:	00f59623          	sh	a5,12(a1)
   103b4:	06e5a223          	sw	a4,100(a1)
   103b8:	01410613          	addi	a2,sp,20
   103bc:	00040513          	mv	a0,s0
   103c0:	5cc000ef          	jal	ra,1098c <__sfvwrite_r>
   103c4:	03c12083          	lw	ra,60(sp)
   103c8:	03812403          	lw	s0,56(sp)
   103cc:	00a03533          	snez	a0,a0
   103d0:	40a00533          	neg	a0,a0
   103d4:	ff557513          	andi	a0,a0,-11
   103d8:	03412483          	lw	s1,52(sp)
   103dc:	00a50513          	addi	a0,a0,10
   103e0:	04010113          	addi	sp,sp,64
   103e4:	00008067          	ret
   103e8:	00040513          	mv	a0,s0
   103ec:	00b12623          	sw	a1,12(sp)
   103f0:	500000ef          	jal	ra,108f0 <__sinit>
   103f4:	00c12583          	lw	a1,12(sp)
   103f8:	f95ff06f          	j	1038c <_puts_r+0x60>

000103fc <puts>:
   103fc:	00050593          	mv	a1,a0
   10400:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   10404:	f29ff06f          	j	1032c <_puts_r>

00010408 <strlen>:
   10408:	00357793          	andi	a5,a0,3
   1040c:	00050713          	mv	a4,a0
   10410:	04079c63          	bnez	a5,10468 <strlen+0x60>
   10414:	7f7f86b7          	lui	a3,0x7f7f8
   10418:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7e3143>
   1041c:	fff00593          	li	a1,-1
   10420:	00072603          	lw	a2,0(a4)
   10424:	00470713          	addi	a4,a4,4
   10428:	00d677b3          	and	a5,a2,a3
   1042c:	00d787b3          	add	a5,a5,a3
   10430:	00c7e7b3          	or	a5,a5,a2
   10434:	00d7e7b3          	or	a5,a5,a3
   10438:	feb784e3          	beq	a5,a1,10420 <strlen+0x18>
   1043c:	ffc74683          	lbu	a3,-4(a4)
   10440:	ffd74603          	lbu	a2,-3(a4)
   10444:	ffe74783          	lbu	a5,-2(a4)
   10448:	40a70733          	sub	a4,a4,a0
   1044c:	04068063          	beqz	a3,1048c <strlen+0x84>
   10450:	02060a63          	beqz	a2,10484 <strlen+0x7c>
   10454:	00f03533          	snez	a0,a5
   10458:	00e50533          	add	a0,a0,a4
   1045c:	ffe50513          	addi	a0,a0,-2
   10460:	00008067          	ret
   10464:	fa0688e3          	beqz	a3,10414 <strlen+0xc>
   10468:	00074783          	lbu	a5,0(a4)
   1046c:	00170713          	addi	a4,a4,1
   10470:	00377693          	andi	a3,a4,3
   10474:	fe0798e3          	bnez	a5,10464 <strlen+0x5c>
   10478:	40a70733          	sub	a4,a4,a0
   1047c:	fff70513          	addi	a0,a4,-1
   10480:	00008067          	ret
   10484:	ffd70513          	addi	a0,a4,-3
   10488:	00008067          	ret
   1048c:	ffc70513          	addi	a0,a4,-4
   10490:	00008067          	ret

00010494 <__call_exitprocs>:
   10494:	fd010113          	addi	sp,sp,-48
   10498:	01412c23          	sw	s4,24(sp)
   1049c:	0301aa03          	lw	s4,48(gp) # 14dd0 <_global_impure_ptr>
   104a0:	03212023          	sw	s2,32(sp)
   104a4:	02112623          	sw	ra,44(sp)
   104a8:	148a2903          	lw	s2,328(s4)
   104ac:	02812423          	sw	s0,40(sp)
   104b0:	02912223          	sw	s1,36(sp)
   104b4:	01312e23          	sw	s3,28(sp)
   104b8:	01512a23          	sw	s5,20(sp)
   104bc:	01612823          	sw	s6,16(sp)
   104c0:	01712623          	sw	s7,12(sp)
   104c4:	01812423          	sw	s8,8(sp)
   104c8:	04090063          	beqz	s2,10508 <__call_exitprocs+0x74>
   104cc:	00050b13          	mv	s6,a0
   104d0:	00058b93          	mv	s7,a1
   104d4:	00100a93          	li	s5,1
   104d8:	fff00993          	li	s3,-1
   104dc:	00492483          	lw	s1,4(s2)
   104e0:	fff48413          	addi	s0,s1,-1
   104e4:	02044263          	bltz	s0,10508 <__call_exitprocs+0x74>
   104e8:	00249493          	slli	s1,s1,0x2
   104ec:	009904b3          	add	s1,s2,s1
   104f0:	040b8463          	beqz	s7,10538 <__call_exitprocs+0xa4>
   104f4:	1044a783          	lw	a5,260(s1)
   104f8:	05778063          	beq	a5,s7,10538 <__call_exitprocs+0xa4>
   104fc:	fff40413          	addi	s0,s0,-1
   10500:	ffc48493          	addi	s1,s1,-4
   10504:	ff3416e3          	bne	s0,s3,104f0 <__call_exitprocs+0x5c>
   10508:	02c12083          	lw	ra,44(sp)
   1050c:	02812403          	lw	s0,40(sp)
   10510:	02412483          	lw	s1,36(sp)
   10514:	02012903          	lw	s2,32(sp)
   10518:	01c12983          	lw	s3,28(sp)
   1051c:	01812a03          	lw	s4,24(sp)
   10520:	01412a83          	lw	s5,20(sp)
   10524:	01012b03          	lw	s6,16(sp)
   10528:	00c12b83          	lw	s7,12(sp)
   1052c:	00812c03          	lw	s8,8(sp)
   10530:	03010113          	addi	sp,sp,48
   10534:	00008067          	ret
   10538:	00492783          	lw	a5,4(s2)
   1053c:	0044a683          	lw	a3,4(s1)
   10540:	fff78793          	addi	a5,a5,-1
   10544:	04878e63          	beq	a5,s0,105a0 <__call_exitprocs+0x10c>
   10548:	0004a223          	sw	zero,4(s1)
   1054c:	fa0688e3          	beqz	a3,104fc <__call_exitprocs+0x68>
   10550:	18892783          	lw	a5,392(s2)
   10554:	008a9733          	sll	a4,s5,s0
   10558:	00492c03          	lw	s8,4(s2)
   1055c:	00f777b3          	and	a5,a4,a5
   10560:	02079263          	bnez	a5,10584 <__call_exitprocs+0xf0>
   10564:	000680e7          	jalr	a3
   10568:	00492703          	lw	a4,4(s2)
   1056c:	148a2783          	lw	a5,328(s4)
   10570:	01871463          	bne	a4,s8,10578 <__call_exitprocs+0xe4>
   10574:	f8f904e3          	beq	s2,a5,104fc <__call_exitprocs+0x68>
   10578:	f80788e3          	beqz	a5,10508 <__call_exitprocs+0x74>
   1057c:	00078913          	mv	s2,a5
   10580:	f5dff06f          	j	104dc <__call_exitprocs+0x48>
   10584:	18c92783          	lw	a5,396(s2)
   10588:	0844a583          	lw	a1,132(s1)
   1058c:	00f77733          	and	a4,a4,a5
   10590:	00071c63          	bnez	a4,105a8 <__call_exitprocs+0x114>
   10594:	000b0513          	mv	a0,s6
   10598:	000680e7          	jalr	a3
   1059c:	fcdff06f          	j	10568 <__call_exitprocs+0xd4>
   105a0:	00892223          	sw	s0,4(s2)
   105a4:	fa9ff06f          	j	1054c <__call_exitprocs+0xb8>
   105a8:	00058513          	mv	a0,a1
   105ac:	000680e7          	jalr	a3
   105b0:	fb9ff06f          	j	10568 <__call_exitprocs+0xd4>

000105b4 <atexit>:
   105b4:	00050593          	mv	a1,a0
   105b8:	00000693          	li	a3,0
   105bc:	00000613          	li	a2,0
   105c0:	00000513          	li	a0,0
   105c4:	5750106f          	j	12338 <__register_exitproc>

000105c8 <__fp_lock>:
   105c8:	00000513          	li	a0,0
   105cc:	00008067          	ret

000105d0 <_cleanup_r>:
   105d0:	000125b7          	lui	a1,0x12
   105d4:	42c58593          	addi	a1,a1,1068 # 1242c <_fclose_r>
   105d8:	10d0006f          	j	10ee4 <_fwalk_reent>

000105dc <__sinit.part.0>:
   105dc:	fe010113          	addi	sp,sp,-32
   105e0:	000107b7          	lui	a5,0x10
   105e4:	00112e23          	sw	ra,28(sp)
   105e8:	00812c23          	sw	s0,24(sp)
   105ec:	00912a23          	sw	s1,20(sp)
   105f0:	01212823          	sw	s2,16(sp)
   105f4:	01312623          	sw	s3,12(sp)
   105f8:	01412423          	sw	s4,8(sp)
   105fc:	01512223          	sw	s5,4(sp)
   10600:	01612023          	sw	s6,0(sp)
   10604:	00452403          	lw	s0,4(a0)
   10608:	5d078793          	addi	a5,a5,1488 # 105d0 <_cleanup_r>
   1060c:	02f52e23          	sw	a5,60(a0)
   10610:	2ec50713          	addi	a4,a0,748
   10614:	00300793          	li	a5,3
   10618:	2ee52423          	sw	a4,744(a0)
   1061c:	2ef52223          	sw	a5,740(a0)
   10620:	2e052023          	sw	zero,736(a0)
   10624:	00400793          	li	a5,4
   10628:	00050913          	mv	s2,a0
   1062c:	00f42623          	sw	a5,12(s0)
   10630:	00800613          	li	a2,8
   10634:	00000593          	li	a1,0
   10638:	06042223          	sw	zero,100(s0)
   1063c:	00042023          	sw	zero,0(s0)
   10640:	00042223          	sw	zero,4(s0)
   10644:	00042423          	sw	zero,8(s0)
   10648:	00042823          	sw	zero,16(s0)
   1064c:	00042a23          	sw	zero,20(s0)
   10650:	00042c23          	sw	zero,24(s0)
   10654:	05c40513          	addi	a0,s0,92
   10658:	bf9ff0ef          	jal	ra,10250 <memset>
   1065c:	00012b37          	lui	s6,0x12
   10660:	00892483          	lw	s1,8(s2)
   10664:	00012ab7          	lui	s5,0x12
   10668:	00012a37          	lui	s4,0x12
   1066c:	000129b7          	lui	s3,0x12
   10670:	018b0b13          	addi	s6,s6,24 # 12018 <__sread>
   10674:	07ca8a93          	addi	s5,s5,124 # 1207c <__swrite>
   10678:	104a0a13          	addi	s4,s4,260 # 12104 <__sseek>
   1067c:	16c98993          	addi	s3,s3,364 # 1216c <__sclose>
   10680:	000107b7          	lui	a5,0x10
   10684:	03642023          	sw	s6,32(s0)
   10688:	03542223          	sw	s5,36(s0)
   1068c:	03442423          	sw	s4,40(s0)
   10690:	03342623          	sw	s3,44(s0)
   10694:	00842e23          	sw	s0,28(s0)
   10698:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0x6b>
   1069c:	00f4a623          	sw	a5,12(s1)
   106a0:	00800613          	li	a2,8
   106a4:	00000593          	li	a1,0
   106a8:	0604a223          	sw	zero,100(s1)
   106ac:	0004a023          	sw	zero,0(s1)
   106b0:	0004a223          	sw	zero,4(s1)
   106b4:	0004a423          	sw	zero,8(s1)
   106b8:	0004a823          	sw	zero,16(s1)
   106bc:	0004aa23          	sw	zero,20(s1)
   106c0:	0004ac23          	sw	zero,24(s1)
   106c4:	05c48513          	addi	a0,s1,92
   106c8:	b89ff0ef          	jal	ra,10250 <memset>
   106cc:	00c92403          	lw	s0,12(s2)
   106d0:	000207b7          	lui	a5,0x20
   106d4:	0364a023          	sw	s6,32(s1)
   106d8:	0354a223          	sw	s5,36(s1)
   106dc:	0344a423          	sw	s4,40(s1)
   106e0:	0334a623          	sw	s3,44(s1)
   106e4:	0094ae23          	sw	s1,28(s1)
   106e8:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xb1d6>
   106ec:	00f42623          	sw	a5,12(s0)
   106f0:	06042223          	sw	zero,100(s0)
   106f4:	00042023          	sw	zero,0(s0)
   106f8:	00042223          	sw	zero,4(s0)
   106fc:	00042423          	sw	zero,8(s0)
   10700:	00042823          	sw	zero,16(s0)
   10704:	00042a23          	sw	zero,20(s0)
   10708:	00042c23          	sw	zero,24(s0)
   1070c:	05c40513          	addi	a0,s0,92
   10710:	00800613          	li	a2,8
   10714:	00000593          	li	a1,0
   10718:	b39ff0ef          	jal	ra,10250 <memset>
   1071c:	01c12083          	lw	ra,28(sp)
   10720:	03642023          	sw	s6,32(s0)
   10724:	03542223          	sw	s5,36(s0)
   10728:	03442423          	sw	s4,40(s0)
   1072c:	03342623          	sw	s3,44(s0)
   10730:	00842e23          	sw	s0,28(s0)
   10734:	01812403          	lw	s0,24(sp)
   10738:	00100793          	li	a5,1
   1073c:	02f92c23          	sw	a5,56(s2)
   10740:	01412483          	lw	s1,20(sp)
   10744:	01012903          	lw	s2,16(sp)
   10748:	00c12983          	lw	s3,12(sp)
   1074c:	00812a03          	lw	s4,8(sp)
   10750:	00412a83          	lw	s5,4(sp)
   10754:	00012b03          	lw	s6,0(sp)
   10758:	02010113          	addi	sp,sp,32
   1075c:	00008067          	ret

00010760 <__fp_unlock>:
   10760:	00000513          	li	a0,0
   10764:	00008067          	ret

00010768 <__sfmoreglue>:
   10768:	ff010113          	addi	sp,sp,-16
   1076c:	fff58613          	addi	a2,a1,-1
   10770:	00812423          	sw	s0,8(sp)
   10774:	00161413          	slli	s0,a2,0x1
   10778:	00c40433          	add	s0,s0,a2
   1077c:	00241413          	slli	s0,s0,0x2
   10780:	00c40433          	add	s0,s0,a2
   10784:	00341413          	slli	s0,s0,0x3
   10788:	01212023          	sw	s2,0(sp)
   1078c:	00058913          	mv	s2,a1
   10790:	07440593          	addi	a1,s0,116
   10794:	00912223          	sw	s1,4(sp)
   10798:	00112623          	sw	ra,12(sp)
   1079c:	7fc000ef          	jal	ra,10f98 <_malloc_r>
   107a0:	00050493          	mv	s1,a0
   107a4:	02050063          	beqz	a0,107c4 <__sfmoreglue+0x5c>
   107a8:	00c50513          	addi	a0,a0,12
   107ac:	0004a023          	sw	zero,0(s1)
   107b0:	0124a223          	sw	s2,4(s1)
   107b4:	00a4a423          	sw	a0,8(s1)
   107b8:	06840613          	addi	a2,s0,104
   107bc:	00000593          	li	a1,0
   107c0:	a91ff0ef          	jal	ra,10250 <memset>
   107c4:	00c12083          	lw	ra,12(sp)
   107c8:	00812403          	lw	s0,8(sp)
   107cc:	00012903          	lw	s2,0(sp)
   107d0:	00048513          	mv	a0,s1
   107d4:	00412483          	lw	s1,4(sp)
   107d8:	01010113          	addi	sp,sp,16
   107dc:	00008067          	ret

000107e0 <__sfp>:
   107e0:	fe010113          	addi	sp,sp,-32
   107e4:	01212823          	sw	s2,16(sp)
   107e8:	0301a903          	lw	s2,48(gp) # 14dd0 <_global_impure_ptr>
   107ec:	01312623          	sw	s3,12(sp)
   107f0:	00112e23          	sw	ra,28(sp)
   107f4:	03892783          	lw	a5,56(s2)
   107f8:	00812c23          	sw	s0,24(sp)
   107fc:	00912a23          	sw	s1,20(sp)
   10800:	00050993          	mv	s3,a0
   10804:	0a078663          	beqz	a5,108b0 <__sfp+0xd0>
   10808:	2e090913          	addi	s2,s2,736
   1080c:	fff00493          	li	s1,-1
   10810:	00492783          	lw	a5,4(s2)
   10814:	00892403          	lw	s0,8(s2)
   10818:	fff78793          	addi	a5,a5,-1
   1081c:	0007d863          	bgez	a5,1082c <__sfp+0x4c>
   10820:	0800006f          	j	108a0 <__sfp+0xc0>
   10824:	06840413          	addi	s0,s0,104
   10828:	06978c63          	beq	a5,s1,108a0 <__sfp+0xc0>
   1082c:	00c41703          	lh	a4,12(s0)
   10830:	fff78793          	addi	a5,a5,-1
   10834:	fe0718e3          	bnez	a4,10824 <__sfp+0x44>
   10838:	ffff07b7          	lui	a5,0xffff0
   1083c:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdb1c5>
   10840:	06042223          	sw	zero,100(s0)
   10844:	00042023          	sw	zero,0(s0)
   10848:	00042223          	sw	zero,4(s0)
   1084c:	00042423          	sw	zero,8(s0)
   10850:	00f42623          	sw	a5,12(s0)
   10854:	00042823          	sw	zero,16(s0)
   10858:	00042a23          	sw	zero,20(s0)
   1085c:	00042c23          	sw	zero,24(s0)
   10860:	00800613          	li	a2,8
   10864:	00000593          	li	a1,0
   10868:	05c40513          	addi	a0,s0,92
   1086c:	9e5ff0ef          	jal	ra,10250 <memset>
   10870:	02042823          	sw	zero,48(s0)
   10874:	02042a23          	sw	zero,52(s0)
   10878:	04042223          	sw	zero,68(s0)
   1087c:	04042423          	sw	zero,72(s0)
   10880:	01c12083          	lw	ra,28(sp)
   10884:	00040513          	mv	a0,s0
   10888:	01812403          	lw	s0,24(sp)
   1088c:	01412483          	lw	s1,20(sp)
   10890:	01012903          	lw	s2,16(sp)
   10894:	00c12983          	lw	s3,12(sp)
   10898:	02010113          	addi	sp,sp,32
   1089c:	00008067          	ret
   108a0:	00092403          	lw	s0,0(s2)
   108a4:	00040c63          	beqz	s0,108bc <__sfp+0xdc>
   108a8:	00040913          	mv	s2,s0
   108ac:	f65ff06f          	j	10810 <__sfp+0x30>
   108b0:	00090513          	mv	a0,s2
   108b4:	d29ff0ef          	jal	ra,105dc <__sinit.part.0>
   108b8:	f51ff06f          	j	10808 <__sfp+0x28>
   108bc:	00400593          	li	a1,4
   108c0:	00098513          	mv	a0,s3
   108c4:	ea5ff0ef          	jal	ra,10768 <__sfmoreglue>
   108c8:	00a92023          	sw	a0,0(s2)
   108cc:	00050413          	mv	s0,a0
   108d0:	fc051ce3          	bnez	a0,108a8 <__sfp+0xc8>
   108d4:	00c00793          	li	a5,12
   108d8:	00f9a023          	sw	a5,0(s3)
   108dc:	fa5ff06f          	j	10880 <__sfp+0xa0>

000108e0 <_cleanup>:
   108e0:	0301a503          	lw	a0,48(gp) # 14dd0 <_global_impure_ptr>
   108e4:	000125b7          	lui	a1,0x12
   108e8:	42c58593          	addi	a1,a1,1068 # 1242c <_fclose_r>
   108ec:	5f80006f          	j	10ee4 <_fwalk_reent>

000108f0 <__sinit>:
   108f0:	03852783          	lw	a5,56(a0)
   108f4:	00078463          	beqz	a5,108fc <__sinit+0xc>
   108f8:	00008067          	ret
   108fc:	ce1ff06f          	j	105dc <__sinit.part.0>

00010900 <__sfp_lock_acquire>:
   10900:	00008067          	ret

00010904 <__sfp_lock_release>:
   10904:	00008067          	ret

00010908 <__sinit_lock_acquire>:
   10908:	00008067          	ret

0001090c <__sinit_lock_release>:
   1090c:	00008067          	ret

00010910 <__fp_lock_all>:
   10910:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   10914:	000105b7          	lui	a1,0x10
   10918:	5c858593          	addi	a1,a1,1480 # 105c8 <__fp_lock>
   1091c:	5240006f          	j	10e40 <_fwalk>

00010920 <__fp_unlock_all>:
   10920:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   10924:	000105b7          	lui	a1,0x10
   10928:	76058593          	addi	a1,a1,1888 # 10760 <__fp_unlock>
   1092c:	5140006f          	j	10e40 <_fwalk>

00010930 <__libc_fini_array>:
   10930:	ff010113          	addi	sp,sp,-16
   10934:	00812423          	sw	s0,8(sp)
   10938:	000147b7          	lui	a5,0x14
   1093c:	00014437          	lui	s0,0x14
   10940:	59840413          	addi	s0,s0,1432 # 14598 <__init_array_end>
   10944:	59c78793          	addi	a5,a5,1436 # 1459c <__fini_array_end>
   10948:	408787b3          	sub	a5,a5,s0
   1094c:	00912223          	sw	s1,4(sp)
   10950:	00112623          	sw	ra,12(sp)
   10954:	4027d493          	srai	s1,a5,0x2
   10958:	02048063          	beqz	s1,10978 <__libc_fini_array+0x48>
   1095c:	ffc78793          	addi	a5,a5,-4
   10960:	00878433          	add	s0,a5,s0
   10964:	00042783          	lw	a5,0(s0)
   10968:	fff48493          	addi	s1,s1,-1
   1096c:	ffc40413          	addi	s0,s0,-4
   10970:	000780e7          	jalr	a5
   10974:	fe0498e3          	bnez	s1,10964 <__libc_fini_array+0x34>
   10978:	00c12083          	lw	ra,12(sp)
   1097c:	00812403          	lw	s0,8(sp)
   10980:	00412483          	lw	s1,4(sp)
   10984:	01010113          	addi	sp,sp,16
   10988:	00008067          	ret

0001098c <__sfvwrite_r>:
   1098c:	00862783          	lw	a5,8(a2)
   10990:	32078e63          	beqz	a5,10ccc <__sfvwrite_r+0x340>
   10994:	00c5d783          	lhu	a5,12(a1)
   10998:	fd010113          	addi	sp,sp,-48
   1099c:	02812423          	sw	s0,40(sp)
   109a0:	01412c23          	sw	s4,24(sp)
   109a4:	01512a23          	sw	s5,20(sp)
   109a8:	02112623          	sw	ra,44(sp)
   109ac:	02912223          	sw	s1,36(sp)
   109b0:	03212023          	sw	s2,32(sp)
   109b4:	01312e23          	sw	s3,28(sp)
   109b8:	01612823          	sw	s6,16(sp)
   109bc:	01712623          	sw	s7,12(sp)
   109c0:	01812423          	sw	s8,8(sp)
   109c4:	01912223          	sw	s9,4(sp)
   109c8:	01a12023          	sw	s10,0(sp)
   109cc:	0087f713          	andi	a4,a5,8
   109d0:	00060a13          	mv	s4,a2
   109d4:	00050a93          	mv	s5,a0
   109d8:	00058413          	mv	s0,a1
   109dc:	08070663          	beqz	a4,10a68 <__sfvwrite_r+0xdc>
   109e0:	0105a703          	lw	a4,16(a1)
   109e4:	08070263          	beqz	a4,10a68 <__sfvwrite_r+0xdc>
   109e8:	0027f713          	andi	a4,a5,2
   109ec:	000a2483          	lw	s1,0(s4)
   109f0:	08070c63          	beqz	a4,10a88 <__sfvwrite_r+0xfc>
   109f4:	02442783          	lw	a5,36(s0)
   109f8:	01c42583          	lw	a1,28(s0)
   109fc:	80000b37          	lui	s6,0x80000
   10a00:	00000993          	li	s3,0
   10a04:	00000913          	li	s2,0
   10a08:	c00b4b13          	xori	s6,s6,-1024
   10a0c:	00098613          	mv	a2,s3
   10a10:	000a8513          	mv	a0,s5
   10a14:	04090263          	beqz	s2,10a58 <__sfvwrite_r+0xcc>
   10a18:	00090693          	mv	a3,s2
   10a1c:	012b7463          	bgeu	s6,s2,10a24 <__sfvwrite_r+0x98>
   10a20:	000b0693          	mv	a3,s6
   10a24:	000780e7          	jalr	a5
   10a28:	28a05863          	blez	a0,10cb8 <__sfvwrite_r+0x32c>
   10a2c:	008a2783          	lw	a5,8(s4)
   10a30:	00a989b3          	add	s3,s3,a0
   10a34:	40a90933          	sub	s2,s2,a0
   10a38:	40a78533          	sub	a0,a5,a0
   10a3c:	00aa2423          	sw	a0,8(s4)
   10a40:	20050a63          	beqz	a0,10c54 <__sfvwrite_r+0x2c8>
   10a44:	02442783          	lw	a5,36(s0)
   10a48:	01c42583          	lw	a1,28(s0)
   10a4c:	00098613          	mv	a2,s3
   10a50:	000a8513          	mv	a0,s5
   10a54:	fc0912e3          	bnez	s2,10a18 <__sfvwrite_r+0x8c>
   10a58:	0004a983          	lw	s3,0(s1)
   10a5c:	0044a903          	lw	s2,4(s1)
   10a60:	00848493          	addi	s1,s1,8
   10a64:	fa9ff06f          	j	10a0c <__sfvwrite_r+0x80>
   10a68:	00040593          	mv	a1,s0
   10a6c:	000a8513          	mv	a0,s5
   10a70:	76c010ef          	jal	ra,121dc <__swsetup_r>
   10a74:	3c051263          	bnez	a0,10e38 <__sfvwrite_r+0x4ac>
   10a78:	00c45783          	lhu	a5,12(s0)
   10a7c:	000a2483          	lw	s1,0(s4)
   10a80:	0027f713          	andi	a4,a5,2
   10a84:	f60718e3          	bnez	a4,109f4 <__sfvwrite_r+0x68>
   10a88:	0017f713          	andi	a4,a5,1
   10a8c:	24071463          	bnez	a4,10cd4 <__sfvwrite_r+0x348>
   10a90:	00842c83          	lw	s9,8(s0)
   10a94:	00042503          	lw	a0,0(s0)
   10a98:	80000b37          	lui	s6,0x80000
   10a9c:	ffeb4b93          	xori	s7,s6,-2
   10aa0:	00000c13          	li	s8,0
   10aa4:	00000913          	li	s2,0
   10aa8:	fffb4b13          	not	s6,s6
   10aac:	0e090e63          	beqz	s2,10ba8 <__sfvwrite_r+0x21c>
   10ab0:	2007f713          	andi	a4,a5,512
   10ab4:	24070c63          	beqz	a4,10d0c <__sfvwrite_r+0x380>
   10ab8:	000c8d13          	mv	s10,s9
   10abc:	2f996863          	bltu	s2,s9,10dac <__sfvwrite_r+0x420>
   10ac0:	4807f713          	andi	a4,a5,1152
   10ac4:	08070a63          	beqz	a4,10b58 <__sfvwrite_r+0x1cc>
   10ac8:	01442983          	lw	s3,20(s0)
   10acc:	01042583          	lw	a1,16(s0)
   10ad0:	00190713          	addi	a4,s2,1
   10ad4:	00199693          	slli	a3,s3,0x1
   10ad8:	013686b3          	add	a3,a3,s3
   10adc:	01f6d993          	srli	s3,a3,0x1f
   10ae0:	40b50d33          	sub	s10,a0,a1
   10ae4:	00d989b3          	add	s3,s3,a3
   10ae8:	4019d993          	srai	s3,s3,0x1
   10aec:	01a70733          	add	a4,a4,s10
   10af0:	00098613          	mv	a2,s3
   10af4:	00e9f663          	bgeu	s3,a4,10b00 <__sfvwrite_r+0x174>
   10af8:	00070993          	mv	s3,a4
   10afc:	00070613          	mv	a2,a4
   10b00:	4007f793          	andi	a5,a5,1024
   10b04:	2e078a63          	beqz	a5,10df8 <__sfvwrite_r+0x46c>
   10b08:	00060593          	mv	a1,a2
   10b0c:	000a8513          	mv	a0,s5
   10b10:	488000ef          	jal	ra,10f98 <_malloc_r>
   10b14:	00050c93          	mv	s9,a0
   10b18:	30050863          	beqz	a0,10e28 <__sfvwrite_r+0x49c>
   10b1c:	01042583          	lw	a1,16(s0)
   10b20:	000d0613          	mv	a2,s10
   10b24:	4e1000ef          	jal	ra,11804 <memcpy>
   10b28:	00c45783          	lhu	a5,12(s0)
   10b2c:	b7f7f793          	andi	a5,a5,-1153
   10b30:	0807e793          	ori	a5,a5,128
   10b34:	00f41623          	sh	a5,12(s0)
   10b38:	01ac8533          	add	a0,s9,s10
   10b3c:	41a987b3          	sub	a5,s3,s10
   10b40:	01942823          	sw	s9,16(s0)
   10b44:	00a42023          	sw	a0,0(s0)
   10b48:	01342a23          	sw	s3,20(s0)
   10b4c:	00090c93          	mv	s9,s2
   10b50:	00f42423          	sw	a5,8(s0)
   10b54:	00090d13          	mv	s10,s2
   10b58:	000d0613          	mv	a2,s10
   10b5c:	000c0593          	mv	a1,s8
   10b60:	5c1000ef          	jal	ra,11920 <memmove>
   10b64:	00842703          	lw	a4,8(s0)
   10b68:	00042783          	lw	a5,0(s0)
   10b6c:	00090993          	mv	s3,s2
   10b70:	41970cb3          	sub	s9,a4,s9
   10b74:	01a787b3          	add	a5,a5,s10
   10b78:	01942423          	sw	s9,8(s0)
   10b7c:	00f42023          	sw	a5,0(s0)
   10b80:	00000913          	li	s2,0
   10b84:	008a2603          	lw	a2,8(s4)
   10b88:	013c0c33          	add	s8,s8,s3
   10b8c:	413609b3          	sub	s3,a2,s3
   10b90:	013a2423          	sw	s3,8(s4)
   10b94:	0c098063          	beqz	s3,10c54 <__sfvwrite_r+0x2c8>
   10b98:	00842c83          	lw	s9,8(s0)
   10b9c:	00042503          	lw	a0,0(s0)
   10ba0:	00c45783          	lhu	a5,12(s0)
   10ba4:	f00916e3          	bnez	s2,10ab0 <__sfvwrite_r+0x124>
   10ba8:	0004ac03          	lw	s8,0(s1)
   10bac:	0044a903          	lw	s2,4(s1)
   10bb0:	00848493          	addi	s1,s1,8
   10bb4:	ef9ff06f          	j	10aac <__sfvwrite_r+0x120>
   10bb8:	0044a983          	lw	s3,4(s1)
   10bbc:	0004ac03          	lw	s8,0(s1)
   10bc0:	00848493          	addi	s1,s1,8
   10bc4:	fe098ae3          	beqz	s3,10bb8 <__sfvwrite_r+0x22c>
   10bc8:	00098613          	mv	a2,s3
   10bcc:	00a00593          	li	a1,10
   10bd0:	000c0513          	mv	a0,s8
   10bd4:	35d000ef          	jal	ra,11730 <memchr>
   10bd8:	12050463          	beqz	a0,10d00 <__sfvwrite_r+0x374>
   10bdc:	00150513          	addi	a0,a0,1
   10be0:	41850b33          	sub	s6,a0,s8
   10be4:	000b0793          	mv	a5,s6
   10be8:	00098b93          	mv	s7,s3
   10bec:	0137f463          	bgeu	a5,s3,10bf4 <__sfvwrite_r+0x268>
   10bf0:	00078b93          	mv	s7,a5
   10bf4:	00042503          	lw	a0,0(s0)
   10bf8:	01042783          	lw	a5,16(s0)
   10bfc:	01442683          	lw	a3,20(s0)
   10c00:	00a7f863          	bgeu	a5,a0,10c10 <__sfvwrite_r+0x284>
   10c04:	00842903          	lw	s2,8(s0)
   10c08:	01268933          	add	s2,a3,s2
   10c0c:	09794263          	blt	s2,s7,10c90 <__sfvwrite_r+0x304>
   10c10:	1adbce63          	blt	s7,a3,10dcc <__sfvwrite_r+0x440>
   10c14:	02442783          	lw	a5,36(s0)
   10c18:	01c42583          	lw	a1,28(s0)
   10c1c:	000c0613          	mv	a2,s8
   10c20:	000a8513          	mv	a0,s5
   10c24:	000780e7          	jalr	a5
   10c28:	00050913          	mv	s2,a0
   10c2c:	08a05663          	blez	a0,10cb8 <__sfvwrite_r+0x32c>
   10c30:	412b0b33          	sub	s6,s6,s2
   10c34:	00100513          	li	a0,1
   10c38:	180b0063          	beqz	s6,10db8 <__sfvwrite_r+0x42c>
   10c3c:	008a2603          	lw	a2,8(s4)
   10c40:	012c0c33          	add	s8,s8,s2
   10c44:	412989b3          	sub	s3,s3,s2
   10c48:	41260933          	sub	s2,a2,s2
   10c4c:	012a2423          	sw	s2,8(s4)
   10c50:	08091a63          	bnez	s2,10ce4 <__sfvwrite_r+0x358>
   10c54:	00000513          	li	a0,0
   10c58:	02c12083          	lw	ra,44(sp)
   10c5c:	02812403          	lw	s0,40(sp)
   10c60:	02412483          	lw	s1,36(sp)
   10c64:	02012903          	lw	s2,32(sp)
   10c68:	01c12983          	lw	s3,28(sp)
   10c6c:	01812a03          	lw	s4,24(sp)
   10c70:	01412a83          	lw	s5,20(sp)
   10c74:	01012b03          	lw	s6,16(sp)
   10c78:	00c12b83          	lw	s7,12(sp)
   10c7c:	00812c03          	lw	s8,8(sp)
   10c80:	00412c83          	lw	s9,4(sp)
   10c84:	00012d03          	lw	s10,0(sp)
   10c88:	03010113          	addi	sp,sp,48
   10c8c:	00008067          	ret
   10c90:	000c0593          	mv	a1,s8
   10c94:	00090613          	mv	a2,s2
   10c98:	489000ef          	jal	ra,11920 <memmove>
   10c9c:	00042783          	lw	a5,0(s0)
   10ca0:	00040593          	mv	a1,s0
   10ca4:	000a8513          	mv	a0,s5
   10ca8:	012787b3          	add	a5,a5,s2
   10cac:	00f42023          	sw	a5,0(s0)
   10cb0:	2f5010ef          	jal	ra,127a4 <_fflush_r>
   10cb4:	f6050ee3          	beqz	a0,10c30 <__sfvwrite_r+0x2a4>
   10cb8:	00c41783          	lh	a5,12(s0)
   10cbc:	0407e793          	ori	a5,a5,64
   10cc0:	00f41623          	sh	a5,12(s0)
   10cc4:	fff00513          	li	a0,-1
   10cc8:	f91ff06f          	j	10c58 <__sfvwrite_r+0x2cc>
   10ccc:	00000513          	li	a0,0
   10cd0:	00008067          	ret
   10cd4:	00000b13          	li	s6,0
   10cd8:	00000513          	li	a0,0
   10cdc:	00000c13          	li	s8,0
   10ce0:	00000993          	li	s3,0
   10ce4:	ec098ae3          	beqz	s3,10bb8 <__sfvwrite_r+0x22c>
   10ce8:	ee051ee3          	bnez	a0,10be4 <__sfvwrite_r+0x258>
   10cec:	00098613          	mv	a2,s3
   10cf0:	00a00593          	li	a1,10
   10cf4:	000c0513          	mv	a0,s8
   10cf8:	239000ef          	jal	ra,11730 <memchr>
   10cfc:	ee0510e3          	bnez	a0,10bdc <__sfvwrite_r+0x250>
   10d00:	00198793          	addi	a5,s3,1
   10d04:	00078b13          	mv	s6,a5
   10d08:	ee1ff06f          	j	10be8 <__sfvwrite_r+0x25c>
   10d0c:	01042783          	lw	a5,16(s0)
   10d10:	04a7e863          	bltu	a5,a0,10d60 <__sfvwrite_r+0x3d4>
   10d14:	01442983          	lw	s3,20(s0)
   10d18:	05396463          	bltu	s2,s3,10d60 <__sfvwrite_r+0x3d4>
   10d1c:	00090513          	mv	a0,s2
   10d20:	012bf463          	bgeu	s7,s2,10d28 <__sfvwrite_r+0x39c>
   10d24:	000b0513          	mv	a0,s6
   10d28:	00098593          	mv	a1,s3
   10d2c:	798020ef          	jal	ra,134c4 <__divsi3>
   10d30:	00098593          	mv	a1,s3
   10d34:	76c020ef          	jal	ra,134a0 <__mulsi3>
   10d38:	02442783          	lw	a5,36(s0)
   10d3c:	01c42583          	lw	a1,28(s0)
   10d40:	00050693          	mv	a3,a0
   10d44:	000c0613          	mv	a2,s8
   10d48:	000a8513          	mv	a0,s5
   10d4c:	000780e7          	jalr	a5
   10d50:	00050993          	mv	s3,a0
   10d54:	f6a052e3          	blez	a0,10cb8 <__sfvwrite_r+0x32c>
   10d58:	41390933          	sub	s2,s2,s3
   10d5c:	e29ff06f          	j	10b84 <__sfvwrite_r+0x1f8>
   10d60:	000c8993          	mv	s3,s9
   10d64:	01997463          	bgeu	s2,s9,10d6c <__sfvwrite_r+0x3e0>
   10d68:	00090993          	mv	s3,s2
   10d6c:	00098613          	mv	a2,s3
   10d70:	000c0593          	mv	a1,s8
   10d74:	3ad000ef          	jal	ra,11920 <memmove>
   10d78:	00842783          	lw	a5,8(s0)
   10d7c:	00042703          	lw	a4,0(s0)
   10d80:	413787b3          	sub	a5,a5,s3
   10d84:	01370733          	add	a4,a4,s3
   10d88:	00f42423          	sw	a5,8(s0)
   10d8c:	00e42023          	sw	a4,0(s0)
   10d90:	fc0794e3          	bnez	a5,10d58 <__sfvwrite_r+0x3cc>
   10d94:	00040593          	mv	a1,s0
   10d98:	000a8513          	mv	a0,s5
   10d9c:	209010ef          	jal	ra,127a4 <_fflush_r>
   10da0:	f0051ce3          	bnez	a0,10cb8 <__sfvwrite_r+0x32c>
   10da4:	41390933          	sub	s2,s2,s3
   10da8:	dddff06f          	j	10b84 <__sfvwrite_r+0x1f8>
   10dac:	00090c93          	mv	s9,s2
   10db0:	00090d13          	mv	s10,s2
   10db4:	da5ff06f          	j	10b58 <__sfvwrite_r+0x1cc>
   10db8:	00040593          	mv	a1,s0
   10dbc:	000a8513          	mv	a0,s5
   10dc0:	1e5010ef          	jal	ra,127a4 <_fflush_r>
   10dc4:	e6050ce3          	beqz	a0,10c3c <__sfvwrite_r+0x2b0>
   10dc8:	ef1ff06f          	j	10cb8 <__sfvwrite_r+0x32c>
   10dcc:	000b8613          	mv	a2,s7
   10dd0:	000c0593          	mv	a1,s8
   10dd4:	34d000ef          	jal	ra,11920 <memmove>
   10dd8:	00842783          	lw	a5,8(s0)
   10ddc:	00042603          	lw	a2,0(s0)
   10de0:	000b8913          	mv	s2,s7
   10de4:	417787b3          	sub	a5,a5,s7
   10de8:	01760633          	add	a2,a2,s7
   10dec:	00f42423          	sw	a5,8(s0)
   10df0:	00c42023          	sw	a2,0(s0)
   10df4:	e3dff06f          	j	10c30 <__sfvwrite_r+0x2a4>
   10df8:	000a8513          	mv	a0,s5
   10dfc:	44d000ef          	jal	ra,11a48 <_realloc_r>
   10e00:	00050c93          	mv	s9,a0
   10e04:	d2051ae3          	bnez	a0,10b38 <__sfvwrite_r+0x1ac>
   10e08:	01042583          	lw	a1,16(s0)
   10e0c:	000a8513          	mv	a0,s5
   10e10:	345010ef          	jal	ra,12954 <_free_r>
   10e14:	00c41783          	lh	a5,12(s0)
   10e18:	00c00713          	li	a4,12
   10e1c:	00eaa023          	sw	a4,0(s5)
   10e20:	f7f7f793          	andi	a5,a5,-129
   10e24:	e99ff06f          	j	10cbc <__sfvwrite_r+0x330>
   10e28:	00c00713          	li	a4,12
   10e2c:	00c41783          	lh	a5,12(s0)
   10e30:	00eaa023          	sw	a4,0(s5)
   10e34:	e89ff06f          	j	10cbc <__sfvwrite_r+0x330>
   10e38:	fff00513          	li	a0,-1
   10e3c:	e1dff06f          	j	10c58 <__sfvwrite_r+0x2cc>

00010e40 <_fwalk>:
   10e40:	fe010113          	addi	sp,sp,-32
   10e44:	01212823          	sw	s2,16(sp)
   10e48:	01312623          	sw	s3,12(sp)
   10e4c:	01412423          	sw	s4,8(sp)
   10e50:	01512223          	sw	s5,4(sp)
   10e54:	01612023          	sw	s6,0(sp)
   10e58:	00112e23          	sw	ra,28(sp)
   10e5c:	00812c23          	sw	s0,24(sp)
   10e60:	00912a23          	sw	s1,20(sp)
   10e64:	00058b13          	mv	s6,a1
   10e68:	2e050a93          	addi	s5,a0,736
   10e6c:	00000a13          	li	s4,0
   10e70:	00100993          	li	s3,1
   10e74:	fff00913          	li	s2,-1
   10e78:	004aa483          	lw	s1,4(s5)
   10e7c:	008aa403          	lw	s0,8(s5)
   10e80:	fff48493          	addi	s1,s1,-1
   10e84:	0204c663          	bltz	s1,10eb0 <_fwalk+0x70>
   10e88:	00c45783          	lhu	a5,12(s0)
   10e8c:	fff48493          	addi	s1,s1,-1
   10e90:	00f9fc63          	bgeu	s3,a5,10ea8 <_fwalk+0x68>
   10e94:	00e41783          	lh	a5,14(s0)
   10e98:	00040513          	mv	a0,s0
   10e9c:	01278663          	beq	a5,s2,10ea8 <_fwalk+0x68>
   10ea0:	000b00e7          	jalr	s6 # 80000000 <__BSS_END__+0x7ffeb1c4>
   10ea4:	00aa6a33          	or	s4,s4,a0
   10ea8:	06840413          	addi	s0,s0,104
   10eac:	fd249ee3          	bne	s1,s2,10e88 <_fwalk+0x48>
   10eb0:	000aaa83          	lw	s5,0(s5)
   10eb4:	fc0a92e3          	bnez	s5,10e78 <_fwalk+0x38>
   10eb8:	01c12083          	lw	ra,28(sp)
   10ebc:	01812403          	lw	s0,24(sp)
   10ec0:	01412483          	lw	s1,20(sp)
   10ec4:	01012903          	lw	s2,16(sp)
   10ec8:	00c12983          	lw	s3,12(sp)
   10ecc:	00412a83          	lw	s5,4(sp)
   10ed0:	00012b03          	lw	s6,0(sp)
   10ed4:	000a0513          	mv	a0,s4
   10ed8:	00812a03          	lw	s4,8(sp)
   10edc:	02010113          	addi	sp,sp,32
   10ee0:	00008067          	ret

00010ee4 <_fwalk_reent>:
   10ee4:	fd010113          	addi	sp,sp,-48
   10ee8:	03212023          	sw	s2,32(sp)
   10eec:	01312e23          	sw	s3,28(sp)
   10ef0:	01412c23          	sw	s4,24(sp)
   10ef4:	01512a23          	sw	s5,20(sp)
   10ef8:	01612823          	sw	s6,16(sp)
   10efc:	01712623          	sw	s7,12(sp)
   10f00:	02112623          	sw	ra,44(sp)
   10f04:	02812423          	sw	s0,40(sp)
   10f08:	02912223          	sw	s1,36(sp)
   10f0c:	00050a93          	mv	s5,a0
   10f10:	00058b93          	mv	s7,a1
   10f14:	2e050b13          	addi	s6,a0,736
   10f18:	00000a13          	li	s4,0
   10f1c:	00100993          	li	s3,1
   10f20:	fff00913          	li	s2,-1
   10f24:	004b2483          	lw	s1,4(s6)
   10f28:	008b2403          	lw	s0,8(s6)
   10f2c:	fff48493          	addi	s1,s1,-1
   10f30:	0204c863          	bltz	s1,10f60 <_fwalk_reent+0x7c>
   10f34:	00c45783          	lhu	a5,12(s0)
   10f38:	fff48493          	addi	s1,s1,-1
   10f3c:	00f9fe63          	bgeu	s3,a5,10f58 <_fwalk_reent+0x74>
   10f40:	00e41783          	lh	a5,14(s0)
   10f44:	00040593          	mv	a1,s0
   10f48:	000a8513          	mv	a0,s5
   10f4c:	01278663          	beq	a5,s2,10f58 <_fwalk_reent+0x74>
   10f50:	000b80e7          	jalr	s7
   10f54:	00aa6a33          	or	s4,s4,a0
   10f58:	06840413          	addi	s0,s0,104
   10f5c:	fd249ce3          	bne	s1,s2,10f34 <_fwalk_reent+0x50>
   10f60:	000b2b03          	lw	s6,0(s6)
   10f64:	fc0b10e3          	bnez	s6,10f24 <_fwalk_reent+0x40>
   10f68:	02c12083          	lw	ra,44(sp)
   10f6c:	02812403          	lw	s0,40(sp)
   10f70:	02412483          	lw	s1,36(sp)
   10f74:	02012903          	lw	s2,32(sp)
   10f78:	01c12983          	lw	s3,28(sp)
   10f7c:	01412a83          	lw	s5,20(sp)
   10f80:	01012b03          	lw	s6,16(sp)
   10f84:	00c12b83          	lw	s7,12(sp)
   10f88:	000a0513          	mv	a0,s4
   10f8c:	01812a03          	lw	s4,24(sp)
   10f90:	03010113          	addi	sp,sp,48
   10f94:	00008067          	ret

00010f98 <_malloc_r>:
   10f98:	fd010113          	addi	sp,sp,-48
   10f9c:	01312e23          	sw	s3,28(sp)
   10fa0:	02112623          	sw	ra,44(sp)
   10fa4:	02812423          	sw	s0,40(sp)
   10fa8:	02912223          	sw	s1,36(sp)
   10fac:	03212023          	sw	s2,32(sp)
   10fb0:	01412c23          	sw	s4,24(sp)
   10fb4:	01512a23          	sw	s5,20(sp)
   10fb8:	01612823          	sw	s6,16(sp)
   10fbc:	01712623          	sw	s7,12(sp)
   10fc0:	01812423          	sw	s8,8(sp)
   10fc4:	01912223          	sw	s9,4(sp)
   10fc8:	00b58793          	addi	a5,a1,11
   10fcc:	01600713          	li	a4,22
   10fd0:	00050993          	mv	s3,a0
   10fd4:	06f76463          	bltu	a4,a5,1103c <_malloc_r+0xa4>
   10fd8:	01000793          	li	a5,16
   10fdc:	1eb7e263          	bltu	a5,a1,111c0 <_malloc_r+0x228>
   10fe0:	261000ef          	jal	ra,11a40 <__malloc_lock>
   10fe4:	01000493          	li	s1,16
   10fe8:	00200613          	li	a2,2
   10fec:	01800793          	li	a5,24
   10ff0:	c2818913          	addi	s2,gp,-984 # 149c8 <__malloc_av_>
   10ff4:	00f907b3          	add	a5,s2,a5
   10ff8:	0047a403          	lw	s0,4(a5)
   10ffc:	ff878713          	addi	a4,a5,-8
   11000:	20e40863          	beq	s0,a4,11210 <_malloc_r+0x278>
   11004:	00442783          	lw	a5,4(s0)
   11008:	00c42683          	lw	a3,12(s0)
   1100c:	00842603          	lw	a2,8(s0)
   11010:	ffc7f793          	andi	a5,a5,-4
   11014:	00f407b3          	add	a5,s0,a5
   11018:	0047a703          	lw	a4,4(a5)
   1101c:	00d62623          	sw	a3,12(a2)
   11020:	00c6a423          	sw	a2,8(a3)
   11024:	00176713          	ori	a4,a4,1
   11028:	00098513          	mv	a0,s3
   1102c:	00e7a223          	sw	a4,4(a5)
   11030:	215000ef          	jal	ra,11a44 <__malloc_unlock>
   11034:	00840513          	addi	a0,s0,8
   11038:	1940006f          	j	111cc <_malloc_r+0x234>
   1103c:	ff87f493          	andi	s1,a5,-8
   11040:	1807c063          	bltz	a5,111c0 <_malloc_r+0x228>
   11044:	16b4ee63          	bltu	s1,a1,111c0 <_malloc_r+0x228>
   11048:	1f9000ef          	jal	ra,11a40 <__malloc_lock>
   1104c:	1f700793          	li	a5,503
   11050:	4497fa63          	bgeu	a5,s1,114a4 <_malloc_r+0x50c>
   11054:	0094d793          	srli	a5,s1,0x9
   11058:	1a078463          	beqz	a5,11200 <_malloc_r+0x268>
   1105c:	00400713          	li	a4,4
   11060:	3cf76063          	bltu	a4,a5,11420 <_malloc_r+0x488>
   11064:	0064d793          	srli	a5,s1,0x6
   11068:	03978613          	addi	a2,a5,57
   1106c:	03878513          	addi	a0,a5,56
   11070:	00361693          	slli	a3,a2,0x3
   11074:	c2818913          	addi	s2,gp,-984 # 149c8 <__malloc_av_>
   11078:	00d906b3          	add	a3,s2,a3
   1107c:	0046a403          	lw	s0,4(a3)
   11080:	ff868693          	addi	a3,a3,-8
   11084:	02868663          	beq	a3,s0,110b0 <_malloc_r+0x118>
   11088:	00f00593          	li	a1,15
   1108c:	0100006f          	j	1109c <_malloc_r+0x104>
   11090:	32075263          	bgez	a4,113b4 <_malloc_r+0x41c>
   11094:	00c42403          	lw	s0,12(s0)
   11098:	00868c63          	beq	a3,s0,110b0 <_malloc_r+0x118>
   1109c:	00442783          	lw	a5,4(s0)
   110a0:	ffc7f793          	andi	a5,a5,-4
   110a4:	40978733          	sub	a4,a5,s1
   110a8:	fee5d4e3          	bge	a1,a4,11090 <_malloc_r+0xf8>
   110ac:	00050613          	mv	a2,a0
   110b0:	01092403          	lw	s0,16(s2)
   110b4:	00890893          	addi	a7,s2,8
   110b8:	17140863          	beq	s0,a7,11228 <_malloc_r+0x290>
   110bc:	00442503          	lw	a0,4(s0)
   110c0:	00f00693          	li	a3,15
   110c4:	ffc57513          	andi	a0,a0,-4
   110c8:	409507b3          	sub	a5,a0,s1
   110cc:	40f6c263          	blt	a3,a5,114d0 <_malloc_r+0x538>
   110d0:	01192a23          	sw	a7,20(s2)
   110d4:	01192823          	sw	a7,16(s2)
   110d8:	3c07dc63          	bgez	a5,114b0 <_malloc_r+0x518>
   110dc:	1ff00793          	li	a5,511
   110e0:	2ea7e063          	bltu	a5,a0,113c0 <_malloc_r+0x428>
   110e4:	ff857793          	andi	a5,a0,-8
   110e8:	00878793          	addi	a5,a5,8
   110ec:	00492583          	lw	a1,4(s2)
   110f0:	00f907b3          	add	a5,s2,a5
   110f4:	0007a683          	lw	a3,0(a5)
   110f8:	00555513          	srli	a0,a0,0x5
   110fc:	00100713          	li	a4,1
   11100:	00a71733          	sll	a4,a4,a0
   11104:	00b76733          	or	a4,a4,a1
   11108:	ff878593          	addi	a1,a5,-8
   1110c:	00b42623          	sw	a1,12(s0)
   11110:	00d42423          	sw	a3,8(s0)
   11114:	00e92223          	sw	a4,4(s2)
   11118:	0087a023          	sw	s0,0(a5)
   1111c:	0086a623          	sw	s0,12(a3)
   11120:	40265793          	srai	a5,a2,0x2
   11124:	00100593          	li	a1,1
   11128:	00f595b3          	sll	a1,a1,a5
   1112c:	10b76863          	bltu	a4,a1,1123c <_malloc_r+0x2a4>
   11130:	00e5f7b3          	and	a5,a1,a4
   11134:	02079463          	bnez	a5,1115c <_malloc_r+0x1c4>
   11138:	00159593          	slli	a1,a1,0x1
   1113c:	ffc67613          	andi	a2,a2,-4
   11140:	00e5f7b3          	and	a5,a1,a4
   11144:	00460613          	addi	a2,a2,4
   11148:	00079a63          	bnez	a5,1115c <_malloc_r+0x1c4>
   1114c:	00159593          	slli	a1,a1,0x1
   11150:	00e5f7b3          	and	a5,a1,a4
   11154:	00460613          	addi	a2,a2,4
   11158:	fe078ae3          	beqz	a5,1114c <_malloc_r+0x1b4>
   1115c:	00f00813          	li	a6,15
   11160:	00361313          	slli	t1,a2,0x3
   11164:	00690333          	add	t1,s2,t1
   11168:	00030513          	mv	a0,t1
   1116c:	00c52783          	lw	a5,12(a0)
   11170:	00060e13          	mv	t3,a2
   11174:	2cf50863          	beq	a0,a5,11444 <_malloc_r+0x4ac>
   11178:	0047a703          	lw	a4,4(a5)
   1117c:	00078413          	mv	s0,a5
   11180:	00c7a783          	lw	a5,12(a5)
   11184:	ffc77713          	andi	a4,a4,-4
   11188:	409706b3          	sub	a3,a4,s1
   1118c:	2cd84863          	blt	a6,a3,1145c <_malloc_r+0x4c4>
   11190:	fe06c2e3          	bltz	a3,11174 <_malloc_r+0x1dc>
   11194:	00e40733          	add	a4,s0,a4
   11198:	00472683          	lw	a3,4(a4)
   1119c:	00842603          	lw	a2,8(s0)
   111a0:	00098513          	mv	a0,s3
   111a4:	0016e693          	ori	a3,a3,1
   111a8:	00d72223          	sw	a3,4(a4)
   111ac:	00f62623          	sw	a5,12(a2)
   111b0:	00c7a423          	sw	a2,8(a5)
   111b4:	091000ef          	jal	ra,11a44 <__malloc_unlock>
   111b8:	00840513          	addi	a0,s0,8
   111bc:	0100006f          	j	111cc <_malloc_r+0x234>
   111c0:	00c00793          	li	a5,12
   111c4:	00f9a023          	sw	a5,0(s3)
   111c8:	00000513          	li	a0,0
   111cc:	02c12083          	lw	ra,44(sp)
   111d0:	02812403          	lw	s0,40(sp)
   111d4:	02412483          	lw	s1,36(sp)
   111d8:	02012903          	lw	s2,32(sp)
   111dc:	01c12983          	lw	s3,28(sp)
   111e0:	01812a03          	lw	s4,24(sp)
   111e4:	01412a83          	lw	s5,20(sp)
   111e8:	01012b03          	lw	s6,16(sp)
   111ec:	00c12b83          	lw	s7,12(sp)
   111f0:	00812c03          	lw	s8,8(sp)
   111f4:	00412c83          	lw	s9,4(sp)
   111f8:	03010113          	addi	sp,sp,48
   111fc:	00008067          	ret
   11200:	20000693          	li	a3,512
   11204:	04000613          	li	a2,64
   11208:	03f00513          	li	a0,63
   1120c:	e69ff06f          	j	11074 <_malloc_r+0xdc>
   11210:	00c7a403          	lw	s0,12(a5)
   11214:	00260613          	addi	a2,a2,2
   11218:	de8796e3          	bne	a5,s0,11004 <_malloc_r+0x6c>
   1121c:	01092403          	lw	s0,16(s2)
   11220:	00890893          	addi	a7,s2,8
   11224:	e9141ce3          	bne	s0,a7,110bc <_malloc_r+0x124>
   11228:	00492703          	lw	a4,4(s2)
   1122c:	40265793          	srai	a5,a2,0x2
   11230:	00100593          	li	a1,1
   11234:	00f595b3          	sll	a1,a1,a5
   11238:	eeb77ce3          	bgeu	a4,a1,11130 <_malloc_r+0x198>
   1123c:	00892403          	lw	s0,8(s2)
   11240:	00442a83          	lw	s5,4(s0)
   11244:	ffcafb13          	andi	s6,s5,-4
   11248:	009b6863          	bltu	s6,s1,11258 <_malloc_r+0x2c0>
   1124c:	409b07b3          	sub	a5,s6,s1
   11250:	00f00713          	li	a4,15
   11254:	12f74c63          	blt	a4,a5,1138c <_malloc_r+0x3f4>
   11258:	04c1aa83          	lw	s5,76(gp) # 14dec <__malloc_top_pad>
   1125c:	03c1a703          	lw	a4,60(gp) # 14ddc <__malloc_sbrk_base>
   11260:	fff00793          	li	a5,-1
   11264:	01640a33          	add	s4,s0,s6
   11268:	01548ab3          	add	s5,s1,s5
   1126c:	34f70463          	beq	a4,a5,115b4 <_malloc_r+0x61c>
   11270:	000017b7          	lui	a5,0x1
   11274:	00f78793          	addi	a5,a5,15 # 100f <register_fini-0xf065>
   11278:	00fa8ab3          	add	s5,s5,a5
   1127c:	fffff7b7          	lui	a5,0xfffff
   11280:	00fafab3          	and	s5,s5,a5
   11284:	000a8593          	mv	a1,s5
   11288:	00098513          	mv	a0,s3
   1128c:	531000ef          	jal	ra,11fbc <_sbrk_r>
   11290:	fff00793          	li	a5,-1
   11294:	00050b93          	mv	s7,a0
   11298:	28f50663          	beq	a0,a5,11524 <_malloc_r+0x58c>
   1129c:	29456263          	bltu	a0,s4,11520 <_malloc_r+0x588>
   112a0:	07018c13          	addi	s8,gp,112 # 14e10 <__malloc_current_mallinfo>
   112a4:	000c2583          	lw	a1,0(s8)
   112a8:	00ba85b3          	add	a1,s5,a1
   112ac:	00bc2023          	sw	a1,0(s8)
   112b0:	00058793          	mv	a5,a1
   112b4:	38aa0e63          	beq	s4,a0,11650 <_malloc_r+0x6b8>
   112b8:	03c1a683          	lw	a3,60(gp) # 14ddc <__malloc_sbrk_base>
   112bc:	fff00713          	li	a4,-1
   112c0:	3ae68663          	beq	a3,a4,1166c <_malloc_r+0x6d4>
   112c4:	414b8a33          	sub	s4,s7,s4
   112c8:	00fa07b3          	add	a5,s4,a5
   112cc:	00fc2023          	sw	a5,0(s8)
   112d0:	007bfc93          	andi	s9,s7,7
   112d4:	300c8263          	beqz	s9,115d8 <_malloc_r+0x640>
   112d8:	000017b7          	lui	a5,0x1
   112dc:	419b8bb3          	sub	s7,s7,s9
   112e0:	00878593          	addi	a1,a5,8 # 1008 <register_fini-0xf06c>
   112e4:	008b8b93          	addi	s7,s7,8
   112e8:	419585b3          	sub	a1,a1,s9
   112ec:	015b8ab3          	add	s5,s7,s5
   112f0:	fff78793          	addi	a5,a5,-1
   112f4:	415585b3          	sub	a1,a1,s5
   112f8:	00f5fa33          	and	s4,a1,a5
   112fc:	000a0593          	mv	a1,s4
   11300:	00098513          	mv	a0,s3
   11304:	4b9000ef          	jal	ra,11fbc <_sbrk_r>
   11308:	fff00793          	li	a5,-1
   1130c:	3af50a63          	beq	a0,a5,116c0 <_malloc_r+0x728>
   11310:	41750533          	sub	a0,a0,s7
   11314:	01450ab3          	add	s5,a0,s4
   11318:	000c2583          	lw	a1,0(s8)
   1131c:	01792423          	sw	s7,8(s2)
   11320:	001aea93          	ori	s5,s5,1
   11324:	00ba05b3          	add	a1,s4,a1
   11328:	00bc2023          	sw	a1,0(s8)
   1132c:	015ba223          	sw	s5,4(s7)
   11330:	35240263          	beq	s0,s2,11674 <_malloc_r+0x6dc>
   11334:	00f00693          	li	a3,15
   11338:	3566f263          	bgeu	a3,s6,1167c <_malloc_r+0x6e4>
   1133c:	00442703          	lw	a4,4(s0)
   11340:	ff4b0793          	addi	a5,s6,-12
   11344:	ff87f793          	andi	a5,a5,-8
   11348:	00177713          	andi	a4,a4,1
   1134c:	00f76733          	or	a4,a4,a5
   11350:	00e42223          	sw	a4,4(s0)
   11354:	00500613          	li	a2,5
   11358:	00f40733          	add	a4,s0,a5
   1135c:	00c72223          	sw	a2,4(a4)
   11360:	00c72423          	sw	a2,8(a4)
   11364:	36f6e863          	bltu	a3,a5,116d4 <_malloc_r+0x73c>
   11368:	004baa83          	lw	s5,4(s7)
   1136c:	000b8413          	mv	s0,s7
   11370:	0481a703          	lw	a4,72(gp) # 14de8 <__malloc_max_sbrked_mem>
   11374:	00b77463          	bgeu	a4,a1,1137c <_malloc_r+0x3e4>
   11378:	04b1a423          	sw	a1,72(gp) # 14de8 <__malloc_max_sbrked_mem>
   1137c:	0441a703          	lw	a4,68(gp) # 14de4 <_edata>
   11380:	1ab77663          	bgeu	a4,a1,1152c <_malloc_r+0x594>
   11384:	04b1a223          	sw	a1,68(gp) # 14de4 <_edata>
   11388:	1a40006f          	j	1152c <_malloc_r+0x594>
   1138c:	0014e713          	ori	a4,s1,1
   11390:	00e42223          	sw	a4,4(s0)
   11394:	009404b3          	add	s1,s0,s1
   11398:	00992423          	sw	s1,8(s2)
   1139c:	0017e793          	ori	a5,a5,1
   113a0:	00098513          	mv	a0,s3
   113a4:	00f4a223          	sw	a5,4(s1)
   113a8:	69c000ef          	jal	ra,11a44 <__malloc_unlock>
   113ac:	00840513          	addi	a0,s0,8
   113b0:	e1dff06f          	j	111cc <_malloc_r+0x234>
   113b4:	00c42683          	lw	a3,12(s0)
   113b8:	00842603          	lw	a2,8(s0)
   113bc:	c59ff06f          	j	11014 <_malloc_r+0x7c>
   113c0:	00955793          	srli	a5,a0,0x9
   113c4:	00400713          	li	a4,4
   113c8:	14f77263          	bgeu	a4,a5,1150c <_malloc_r+0x574>
   113cc:	01400713          	li	a4,20
   113d0:	22f76a63          	bltu	a4,a5,11604 <_malloc_r+0x66c>
   113d4:	05c78693          	addi	a3,a5,92
   113d8:	05b78593          	addi	a1,a5,91
   113dc:	00369693          	slli	a3,a3,0x3
   113e0:	00d906b3          	add	a3,s2,a3
   113e4:	0006a783          	lw	a5,0(a3)
   113e8:	ff868693          	addi	a3,a3,-8
   113ec:	1cf68863          	beq	a3,a5,115bc <_malloc_r+0x624>
   113f0:	0047a703          	lw	a4,4(a5)
   113f4:	ffc77713          	andi	a4,a4,-4
   113f8:	00e57663          	bgeu	a0,a4,11404 <_malloc_r+0x46c>
   113fc:	0087a783          	lw	a5,8(a5)
   11400:	fef698e3          	bne	a3,a5,113f0 <_malloc_r+0x458>
   11404:	00c7a683          	lw	a3,12(a5)
   11408:	00492703          	lw	a4,4(s2)
   1140c:	00d42623          	sw	a3,12(s0)
   11410:	00f42423          	sw	a5,8(s0)
   11414:	0086a423          	sw	s0,8(a3)
   11418:	0087a623          	sw	s0,12(a5)
   1141c:	d05ff06f          	j	11120 <_malloc_r+0x188>
   11420:	01400713          	li	a4,20
   11424:	12f77663          	bgeu	a4,a5,11550 <_malloc_r+0x5b8>
   11428:	05400713          	li	a4,84
   1142c:	1ef76a63          	bltu	a4,a5,11620 <_malloc_r+0x688>
   11430:	00c4d793          	srli	a5,s1,0xc
   11434:	06f78613          	addi	a2,a5,111
   11438:	06e78513          	addi	a0,a5,110
   1143c:	00361693          	slli	a3,a2,0x3
   11440:	c35ff06f          	j	11074 <_malloc_r+0xdc>
   11444:	001e0e13          	addi	t3,t3,1
   11448:	003e7793          	andi	a5,t3,3
   1144c:	00850513          	addi	a0,a0,8
   11450:	10078e63          	beqz	a5,1156c <_malloc_r+0x5d4>
   11454:	00c52783          	lw	a5,12(a0)
   11458:	d1dff06f          	j	11174 <_malloc_r+0x1dc>
   1145c:	00842603          	lw	a2,8(s0)
   11460:	0014e593          	ori	a1,s1,1
   11464:	00b42223          	sw	a1,4(s0)
   11468:	00f62623          	sw	a5,12(a2)
   1146c:	00c7a423          	sw	a2,8(a5)
   11470:	009404b3          	add	s1,s0,s1
   11474:	00992a23          	sw	s1,20(s2)
   11478:	00992823          	sw	s1,16(s2)
   1147c:	0016e793          	ori	a5,a3,1
   11480:	0114a623          	sw	a7,12(s1)
   11484:	0114a423          	sw	a7,8(s1)
   11488:	00f4a223          	sw	a5,4(s1)
   1148c:	00e40733          	add	a4,s0,a4
   11490:	00098513          	mv	a0,s3
   11494:	00d72023          	sw	a3,0(a4)
   11498:	5ac000ef          	jal	ra,11a44 <__malloc_unlock>
   1149c:	00840513          	addi	a0,s0,8
   114a0:	d2dff06f          	j	111cc <_malloc_r+0x234>
   114a4:	0034d613          	srli	a2,s1,0x3
   114a8:	00848793          	addi	a5,s1,8
   114ac:	b45ff06f          	j	10ff0 <_malloc_r+0x58>
   114b0:	00a40733          	add	a4,s0,a0
   114b4:	00472783          	lw	a5,4(a4)
   114b8:	00098513          	mv	a0,s3
   114bc:	0017e793          	ori	a5,a5,1
   114c0:	00f72223          	sw	a5,4(a4)
   114c4:	580000ef          	jal	ra,11a44 <__malloc_unlock>
   114c8:	00840513          	addi	a0,s0,8
   114cc:	d01ff06f          	j	111cc <_malloc_r+0x234>
   114d0:	0014e713          	ori	a4,s1,1
   114d4:	00e42223          	sw	a4,4(s0)
   114d8:	009404b3          	add	s1,s0,s1
   114dc:	00992a23          	sw	s1,20(s2)
   114e0:	00992823          	sw	s1,16(s2)
   114e4:	0017e713          	ori	a4,a5,1
   114e8:	0114a623          	sw	a7,12(s1)
   114ec:	0114a423          	sw	a7,8(s1)
   114f0:	00e4a223          	sw	a4,4(s1)
   114f4:	00a40533          	add	a0,s0,a0
   114f8:	00f52023          	sw	a5,0(a0)
   114fc:	00098513          	mv	a0,s3
   11500:	544000ef          	jal	ra,11a44 <__malloc_unlock>
   11504:	00840513          	addi	a0,s0,8
   11508:	cc5ff06f          	j	111cc <_malloc_r+0x234>
   1150c:	00655793          	srli	a5,a0,0x6
   11510:	03978693          	addi	a3,a5,57
   11514:	03878593          	addi	a1,a5,56
   11518:	00369693          	slli	a3,a3,0x3
   1151c:	ec5ff06f          	j	113e0 <_malloc_r+0x448>
   11520:	11240e63          	beq	s0,s2,1163c <_malloc_r+0x6a4>
   11524:	00892403          	lw	s0,8(s2)
   11528:	00442a83          	lw	s5,4(s0)
   1152c:	ffcafa93          	andi	s5,s5,-4
   11530:	409a87b3          	sub	a5,s5,s1
   11534:	009ae663          	bltu	s5,s1,11540 <_malloc_r+0x5a8>
   11538:	00f00713          	li	a4,15
   1153c:	e4f748e3          	blt	a4,a5,1138c <_malloc_r+0x3f4>
   11540:	00098513          	mv	a0,s3
   11544:	500000ef          	jal	ra,11a44 <__malloc_unlock>
   11548:	00000513          	li	a0,0
   1154c:	c81ff06f          	j	111cc <_malloc_r+0x234>
   11550:	05c78613          	addi	a2,a5,92
   11554:	05b78513          	addi	a0,a5,91
   11558:	00361693          	slli	a3,a2,0x3
   1155c:	b19ff06f          	j	11074 <_malloc_r+0xdc>
   11560:	00832783          	lw	a5,8(t1) # 1014c <frame_dummy+0x20>
   11564:	fff60613          	addi	a2,a2,-1
   11568:	1c679063          	bne	a5,t1,11728 <_malloc_r+0x790>
   1156c:	00367793          	andi	a5,a2,3
   11570:	ff830313          	addi	t1,t1,-8
   11574:	fe0796e3          	bnez	a5,11560 <_malloc_r+0x5c8>
   11578:	00492703          	lw	a4,4(s2)
   1157c:	fff5c793          	not	a5,a1
   11580:	00e7f7b3          	and	a5,a5,a4
   11584:	00f92223          	sw	a5,4(s2)
   11588:	00159593          	slli	a1,a1,0x1
   1158c:	cab7e8e3          	bltu	a5,a1,1123c <_malloc_r+0x2a4>
   11590:	ca0586e3          	beqz	a1,1123c <_malloc_r+0x2a4>
   11594:	00f5f733          	and	a4,a1,a5
   11598:	00071a63          	bnez	a4,115ac <_malloc_r+0x614>
   1159c:	00159593          	slli	a1,a1,0x1
   115a0:	00f5f733          	and	a4,a1,a5
   115a4:	004e0e13          	addi	t3,t3,4
   115a8:	fe070ae3          	beqz	a4,1159c <_malloc_r+0x604>
   115ac:	000e0613          	mv	a2,t3
   115b0:	bb1ff06f          	j	11160 <_malloc_r+0x1c8>
   115b4:	010a8a93          	addi	s5,s5,16
   115b8:	ccdff06f          	j	11284 <_malloc_r+0x2ec>
   115bc:	00492503          	lw	a0,4(s2)
   115c0:	4025d593          	srai	a1,a1,0x2
   115c4:	00100713          	li	a4,1
   115c8:	00b71733          	sll	a4,a4,a1
   115cc:	00a76733          	or	a4,a4,a0
   115d0:	00e92223          	sw	a4,4(s2)
   115d4:	e39ff06f          	j	1140c <_malloc_r+0x474>
   115d8:	015b85b3          	add	a1,s7,s5
   115dc:	40b005b3          	neg	a1,a1
   115e0:	01459593          	slli	a1,a1,0x14
   115e4:	0145da13          	srli	s4,a1,0x14
   115e8:	000a0593          	mv	a1,s4
   115ec:	00098513          	mv	a0,s3
   115f0:	1cd000ef          	jal	ra,11fbc <_sbrk_r>
   115f4:	fff00793          	li	a5,-1
   115f8:	d0f51ce3          	bne	a0,a5,11310 <_malloc_r+0x378>
   115fc:	00000a13          	li	s4,0
   11600:	d19ff06f          	j	11318 <_malloc_r+0x380>
   11604:	05400713          	li	a4,84
   11608:	08f76063          	bltu	a4,a5,11688 <_malloc_r+0x6f0>
   1160c:	00c55793          	srli	a5,a0,0xc
   11610:	06f78693          	addi	a3,a5,111
   11614:	06e78593          	addi	a1,a5,110
   11618:	00369693          	slli	a3,a3,0x3
   1161c:	dc5ff06f          	j	113e0 <_malloc_r+0x448>
   11620:	15400713          	li	a4,340
   11624:	08f76063          	bltu	a4,a5,116a4 <_malloc_r+0x70c>
   11628:	00f4d793          	srli	a5,s1,0xf
   1162c:	07878613          	addi	a2,a5,120
   11630:	07778513          	addi	a0,a5,119
   11634:	00361693          	slli	a3,a2,0x3
   11638:	a3dff06f          	j	11074 <_malloc_r+0xdc>
   1163c:	07018c13          	addi	s8,gp,112 # 14e10 <__malloc_current_mallinfo>
   11640:	000c2783          	lw	a5,0(s8)
   11644:	00fa87b3          	add	a5,s5,a5
   11648:	00fc2023          	sw	a5,0(s8)
   1164c:	c6dff06f          	j	112b8 <_malloc_r+0x320>
   11650:	014a1713          	slli	a4,s4,0x14
   11654:	c60712e3          	bnez	a4,112b8 <_malloc_r+0x320>
   11658:	00892403          	lw	s0,8(s2)
   1165c:	015b0ab3          	add	s5,s6,s5
   11660:	001aea93          	ori	s5,s5,1
   11664:	01542223          	sw	s5,4(s0)
   11668:	d09ff06f          	j	11370 <_malloc_r+0x3d8>
   1166c:	0371ae23          	sw	s7,60(gp) # 14ddc <__malloc_sbrk_base>
   11670:	c61ff06f          	j	112d0 <_malloc_r+0x338>
   11674:	000b8413          	mv	s0,s7
   11678:	cf9ff06f          	j	11370 <_malloc_r+0x3d8>
   1167c:	00100793          	li	a5,1
   11680:	00fba223          	sw	a5,4(s7)
   11684:	ebdff06f          	j	11540 <_malloc_r+0x5a8>
   11688:	15400713          	li	a4,340
   1168c:	06f76263          	bltu	a4,a5,116f0 <_malloc_r+0x758>
   11690:	00f55793          	srli	a5,a0,0xf
   11694:	07878693          	addi	a3,a5,120
   11698:	07778593          	addi	a1,a5,119
   1169c:	00369693          	slli	a3,a3,0x3
   116a0:	d41ff06f          	j	113e0 <_malloc_r+0x448>
   116a4:	55400713          	li	a4,1364
   116a8:	06f76263          	bltu	a4,a5,1170c <_malloc_r+0x774>
   116ac:	0124d793          	srli	a5,s1,0x12
   116b0:	07d78613          	addi	a2,a5,125
   116b4:	07c78513          	addi	a0,a5,124
   116b8:	00361693          	slli	a3,a2,0x3
   116bc:	9b9ff06f          	j	11074 <_malloc_r+0xdc>
   116c0:	ff8c8c93          	addi	s9,s9,-8
   116c4:	019a8ab3          	add	s5,s5,s9
   116c8:	417a8ab3          	sub	s5,s5,s7
   116cc:	00000a13          	li	s4,0
   116d0:	c49ff06f          	j	11318 <_malloc_r+0x380>
   116d4:	00840593          	addi	a1,s0,8
   116d8:	00098513          	mv	a0,s3
   116dc:	278010ef          	jal	ra,12954 <_free_r>
   116e0:	00892403          	lw	s0,8(s2)
   116e4:	000c2583          	lw	a1,0(s8)
   116e8:	00442a83          	lw	s5,4(s0)
   116ec:	c85ff06f          	j	11370 <_malloc_r+0x3d8>
   116f0:	55400713          	li	a4,1364
   116f4:	02f76463          	bltu	a4,a5,1171c <_malloc_r+0x784>
   116f8:	01255793          	srli	a5,a0,0x12
   116fc:	07d78693          	addi	a3,a5,125
   11700:	07c78593          	addi	a1,a5,124
   11704:	00369693          	slli	a3,a3,0x3
   11708:	cd9ff06f          	j	113e0 <_malloc_r+0x448>
   1170c:	3f800693          	li	a3,1016
   11710:	07f00613          	li	a2,127
   11714:	07e00513          	li	a0,126
   11718:	95dff06f          	j	11074 <_malloc_r+0xdc>
   1171c:	3f800693          	li	a3,1016
   11720:	07e00593          	li	a1,126
   11724:	cbdff06f          	j	113e0 <_malloc_r+0x448>
   11728:	00492783          	lw	a5,4(s2)
   1172c:	e5dff06f          	j	11588 <_malloc_r+0x5f0>

00011730 <memchr>:
   11730:	00357793          	andi	a5,a0,3
   11734:	0ff5f693          	andi	a3,a1,255
   11738:	02078a63          	beqz	a5,1176c <memchr+0x3c>
   1173c:	fff60793          	addi	a5,a2,-1
   11740:	02060e63          	beqz	a2,1177c <memchr+0x4c>
   11744:	fff00613          	li	a2,-1
   11748:	0180006f          	j	11760 <memchr+0x30>
   1174c:	00150513          	addi	a0,a0,1
   11750:	00357713          	andi	a4,a0,3
   11754:	00070e63          	beqz	a4,11770 <memchr+0x40>
   11758:	fff78793          	addi	a5,a5,-1
   1175c:	02c78063          	beq	a5,a2,1177c <memchr+0x4c>
   11760:	00054703          	lbu	a4,0(a0)
   11764:	fed714e3          	bne	a4,a3,1174c <memchr+0x1c>
   11768:	00008067          	ret
   1176c:	00060793          	mv	a5,a2
   11770:	00300713          	li	a4,3
   11774:	02f76663          	bltu	a4,a5,117a0 <memchr+0x70>
   11778:	00079663          	bnez	a5,11784 <memchr+0x54>
   1177c:	00000513          	li	a0,0
   11780:	00008067          	ret
   11784:	00f507b3          	add	a5,a0,a5
   11788:	00c0006f          	j	11794 <memchr+0x64>
   1178c:	00150513          	addi	a0,a0,1
   11790:	fea786e3          	beq	a5,a0,1177c <memchr+0x4c>
   11794:	00054703          	lbu	a4,0(a0)
   11798:	fed71ae3          	bne	a4,a3,1178c <memchr+0x5c>
   1179c:	00008067          	ret
   117a0:	00010737          	lui	a4,0x10
   117a4:	00859893          	slli	a7,a1,0x8
   117a8:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   117ac:	00e8f8b3          	and	a7,a7,a4
   117b0:	0ff5f593          	andi	a1,a1,255
   117b4:	00b8e5b3          	or	a1,a7,a1
   117b8:	01059893          	slli	a7,a1,0x10
   117bc:	00b8e8b3          	or	a7,a7,a1
   117c0:	feff0837          	lui	a6,0xfeff0
   117c4:	808085b7          	lui	a1,0x80808
   117c8:	eff80813          	addi	a6,a6,-257 # fefefeff <__BSS_END__+0xfefdb0c3>
   117cc:	08058593          	addi	a1,a1,128 # 80808080 <__BSS_END__+0x807f3244>
   117d0:	00300313          	li	t1,3
   117d4:	00052703          	lw	a4,0(a0)
   117d8:	00e8c733          	xor	a4,a7,a4
   117dc:	01070633          	add	a2,a4,a6
   117e0:	fff74713          	not	a4,a4
   117e4:	00e67733          	and	a4,a2,a4
   117e8:	00b77733          	and	a4,a4,a1
   117ec:	f8071ce3          	bnez	a4,11784 <memchr+0x54>
   117f0:	ffc78793          	addi	a5,a5,-4
   117f4:	00450513          	addi	a0,a0,4
   117f8:	fcf36ee3          	bltu	t1,a5,117d4 <memchr+0xa4>
   117fc:	f80794e3          	bnez	a5,11784 <memchr+0x54>
   11800:	f7dff06f          	j	1177c <memchr+0x4c>

00011804 <memcpy>:
   11804:	00a5c7b3          	xor	a5,a1,a0
   11808:	0037f793          	andi	a5,a5,3
   1180c:	00c508b3          	add	a7,a0,a2
   11810:	06079263          	bnez	a5,11874 <memcpy+0x70>
   11814:	00300793          	li	a5,3
   11818:	04c7fe63          	bgeu	a5,a2,11874 <memcpy+0x70>
   1181c:	00357793          	andi	a5,a0,3
   11820:	00050713          	mv	a4,a0
   11824:	06079863          	bnez	a5,11894 <memcpy+0x90>
   11828:	ffc8f613          	andi	a2,a7,-4
   1182c:	fe060793          	addi	a5,a2,-32
   11830:	08f76c63          	bltu	a4,a5,118c8 <memcpy+0xc4>
   11834:	02c77c63          	bgeu	a4,a2,1186c <memcpy+0x68>
   11838:	00058693          	mv	a3,a1
   1183c:	00070793          	mv	a5,a4
   11840:	0006a803          	lw	a6,0(a3)
   11844:	00478793          	addi	a5,a5,4
   11848:	00468693          	addi	a3,a3,4
   1184c:	ff07ae23          	sw	a6,-4(a5)
   11850:	fec7e8e3          	bltu	a5,a2,11840 <memcpy+0x3c>
   11854:	fff60793          	addi	a5,a2,-1
   11858:	40e787b3          	sub	a5,a5,a4
   1185c:	ffc7f793          	andi	a5,a5,-4
   11860:	00478793          	addi	a5,a5,4
   11864:	00f70733          	add	a4,a4,a5
   11868:	00f585b3          	add	a1,a1,a5
   1186c:	01176863          	bltu	a4,a7,1187c <memcpy+0x78>
   11870:	00008067          	ret
   11874:	00050713          	mv	a4,a0
   11878:	ff157ce3          	bgeu	a0,a7,11870 <memcpy+0x6c>
   1187c:	0005c783          	lbu	a5,0(a1)
   11880:	00170713          	addi	a4,a4,1
   11884:	00158593          	addi	a1,a1,1
   11888:	fef70fa3          	sb	a5,-1(a4)
   1188c:	ff1768e3          	bltu	a4,a7,1187c <memcpy+0x78>
   11890:	00008067          	ret
   11894:	0005c683          	lbu	a3,0(a1)
   11898:	00170713          	addi	a4,a4,1
   1189c:	00377793          	andi	a5,a4,3
   118a0:	fed70fa3          	sb	a3,-1(a4)
   118a4:	00158593          	addi	a1,a1,1
   118a8:	f80780e3          	beqz	a5,11828 <memcpy+0x24>
   118ac:	0005c683          	lbu	a3,0(a1)
   118b0:	00170713          	addi	a4,a4,1
   118b4:	00377793          	andi	a5,a4,3
   118b8:	fed70fa3          	sb	a3,-1(a4)
   118bc:	00158593          	addi	a1,a1,1
   118c0:	fc079ae3          	bnez	a5,11894 <memcpy+0x90>
   118c4:	f65ff06f          	j	11828 <memcpy+0x24>
   118c8:	0045a683          	lw	a3,4(a1)
   118cc:	0005a283          	lw	t0,0(a1)
   118d0:	0085af83          	lw	t6,8(a1)
   118d4:	00c5af03          	lw	t5,12(a1)
   118d8:	0105ae83          	lw	t4,16(a1)
   118dc:	0145ae03          	lw	t3,20(a1)
   118e0:	0185a303          	lw	t1,24(a1)
   118e4:	01c5a803          	lw	a6,28(a1)
   118e8:	00d72223          	sw	a3,4(a4)
   118ec:	0205a683          	lw	a3,32(a1)
   118f0:	00572023          	sw	t0,0(a4)
   118f4:	01f72423          	sw	t6,8(a4)
   118f8:	01e72623          	sw	t5,12(a4)
   118fc:	01d72823          	sw	t4,16(a4)
   11900:	01c72a23          	sw	t3,20(a4)
   11904:	00672c23          	sw	t1,24(a4)
   11908:	01072e23          	sw	a6,28(a4)
   1190c:	02d72023          	sw	a3,32(a4)
   11910:	02470713          	addi	a4,a4,36
   11914:	02458593          	addi	a1,a1,36
   11918:	faf768e3          	bltu	a4,a5,118c8 <memcpy+0xc4>
   1191c:	f19ff06f          	j	11834 <memcpy+0x30>

00011920 <memmove>:
   11920:	02a5f663          	bgeu	a1,a0,1194c <memmove+0x2c>
   11924:	00c587b3          	add	a5,a1,a2
   11928:	02f57263          	bgeu	a0,a5,1194c <memmove+0x2c>
   1192c:	00c50733          	add	a4,a0,a2
   11930:	0e060a63          	beqz	a2,11a24 <memmove+0x104>
   11934:	fff7c683          	lbu	a3,-1(a5)
   11938:	fff78793          	addi	a5,a5,-1
   1193c:	fff70713          	addi	a4,a4,-1
   11940:	00d70023          	sb	a3,0(a4)
   11944:	fef598e3          	bne	a1,a5,11934 <memmove+0x14>
   11948:	00008067          	ret
   1194c:	00f00793          	li	a5,15
   11950:	02c7e863          	bltu	a5,a2,11980 <memmove+0x60>
   11954:	00050793          	mv	a5,a0
   11958:	fff60693          	addi	a3,a2,-1
   1195c:	0c060c63          	beqz	a2,11a34 <memmove+0x114>
   11960:	00168693          	addi	a3,a3,1
   11964:	00d786b3          	add	a3,a5,a3
   11968:	0005c703          	lbu	a4,0(a1)
   1196c:	00178793          	addi	a5,a5,1
   11970:	00158593          	addi	a1,a1,1
   11974:	fee78fa3          	sb	a4,-1(a5)
   11978:	fed798e3          	bne	a5,a3,11968 <memmove+0x48>
   1197c:	00008067          	ret
   11980:	00a5e7b3          	or	a5,a1,a0
   11984:	0037f793          	andi	a5,a5,3
   11988:	0a079063          	bnez	a5,11a28 <memmove+0x108>
   1198c:	ff060893          	addi	a7,a2,-16
   11990:	ff08f893          	andi	a7,a7,-16
   11994:	01088893          	addi	a7,a7,16
   11998:	01150833          	add	a6,a0,a7
   1199c:	00058713          	mv	a4,a1
   119a0:	00050793          	mv	a5,a0
   119a4:	00072683          	lw	a3,0(a4)
   119a8:	01070713          	addi	a4,a4,16
   119ac:	01078793          	addi	a5,a5,16
   119b0:	fed7a823          	sw	a3,-16(a5)
   119b4:	ff472683          	lw	a3,-12(a4)
   119b8:	fed7aa23          	sw	a3,-12(a5)
   119bc:	ff872683          	lw	a3,-8(a4)
   119c0:	fed7ac23          	sw	a3,-8(a5)
   119c4:	ffc72683          	lw	a3,-4(a4)
   119c8:	fed7ae23          	sw	a3,-4(a5)
   119cc:	fcf81ce3          	bne	a6,a5,119a4 <memmove+0x84>
   119d0:	00c67713          	andi	a4,a2,12
   119d4:	011585b3          	add	a1,a1,a7
   119d8:	00f67813          	andi	a6,a2,15
   119dc:	04070e63          	beqz	a4,11a38 <memmove+0x118>
   119e0:	00058713          	mv	a4,a1
   119e4:	00078893          	mv	a7,a5
   119e8:	00300e13          	li	t3,3
   119ec:	00072303          	lw	t1,0(a4)
   119f0:	00470713          	addi	a4,a4,4
   119f4:	40e806b3          	sub	a3,a6,a4
   119f8:	0068a023          	sw	t1,0(a7)
   119fc:	00d586b3          	add	a3,a1,a3
   11a00:	00488893          	addi	a7,a7,4
   11a04:	fede64e3          	bltu	t3,a3,119ec <memmove+0xcc>
   11a08:	ffc80713          	addi	a4,a6,-4
   11a0c:	ffc77713          	andi	a4,a4,-4
   11a10:	00470713          	addi	a4,a4,4
   11a14:	00367613          	andi	a2,a2,3
   11a18:	00e787b3          	add	a5,a5,a4
   11a1c:	00e585b3          	add	a1,a1,a4
   11a20:	f39ff06f          	j	11958 <memmove+0x38>
   11a24:	00008067          	ret
   11a28:	fff60693          	addi	a3,a2,-1
   11a2c:	00050793          	mv	a5,a0
   11a30:	f31ff06f          	j	11960 <memmove+0x40>
   11a34:	00008067          	ret
   11a38:	00080613          	mv	a2,a6
   11a3c:	f1dff06f          	j	11958 <memmove+0x38>

00011a40 <__malloc_lock>:
   11a40:	00008067          	ret

00011a44 <__malloc_unlock>:
   11a44:	00008067          	ret

00011a48 <_realloc_r>:
   11a48:	fd010113          	addi	sp,sp,-48
   11a4c:	03212023          	sw	s2,32(sp)
   11a50:	02112623          	sw	ra,44(sp)
   11a54:	02812423          	sw	s0,40(sp)
   11a58:	02912223          	sw	s1,36(sp)
   11a5c:	01312e23          	sw	s3,28(sp)
   11a60:	01412c23          	sw	s4,24(sp)
   11a64:	01512a23          	sw	s5,20(sp)
   11a68:	01612823          	sw	s6,16(sp)
   11a6c:	01712623          	sw	s7,12(sp)
   11a70:	01812423          	sw	s8,8(sp)
   11a74:	00060913          	mv	s2,a2
   11a78:	22058263          	beqz	a1,11c9c <_realloc_r+0x254>
   11a7c:	00058413          	mv	s0,a1
   11a80:	00050993          	mv	s3,a0
   11a84:	fbdff0ef          	jal	ra,11a40 <__malloc_lock>
   11a88:	00b90493          	addi	s1,s2,11
   11a8c:	01600793          	li	a5,22
   11a90:	0e97fc63          	bgeu	a5,s1,11b88 <_realloc_r+0x140>
   11a94:	ff84f493          	andi	s1,s1,-8
   11a98:	00048713          	mv	a4,s1
   11a9c:	0e04cc63          	bltz	s1,11b94 <_realloc_r+0x14c>
   11aa0:	0f24ea63          	bltu	s1,s2,11b94 <_realloc_r+0x14c>
   11aa4:	ffc42783          	lw	a5,-4(s0)
   11aa8:	ff840a93          	addi	s5,s0,-8
   11aac:	ffc7fa13          	andi	s4,a5,-4
   11ab0:	014a8b33          	add	s6,s5,s4
   11ab4:	18ea5a63          	bge	s4,a4,11c48 <_realloc_r+0x200>
   11ab8:	c2818b93          	addi	s7,gp,-984 # 149c8 <__malloc_av_>
   11abc:	008ba603          	lw	a2,8(s7)
   11ac0:	004b2683          	lw	a3,4(s6)
   11ac4:	23660e63          	beq	a2,s6,11d00 <_realloc_r+0x2b8>
   11ac8:	ffe6f613          	andi	a2,a3,-2
   11acc:	00cb0633          	add	a2,s6,a2
   11ad0:	00462603          	lw	a2,4(a2)
   11ad4:	00167613          	andi	a2,a2,1
   11ad8:	1a061463          	bnez	a2,11c80 <_realloc_r+0x238>
   11adc:	ffc6f693          	andi	a3,a3,-4
   11ae0:	00da0633          	add	a2,s4,a3
   11ae4:	32e65e63          	bge	a2,a4,11e20 <_realloc_r+0x3d8>
   11ae8:	0017f793          	andi	a5,a5,1
   11aec:	02079463          	bnez	a5,11b14 <_realloc_r+0xcc>
   11af0:	ff842c03          	lw	s8,-8(s0)
   11af4:	418a8c33          	sub	s8,s5,s8
   11af8:	004c2783          	lw	a5,4(s8)
   11afc:	ffc7f793          	andi	a5,a5,-4
   11b00:	00d786b3          	add	a3,a5,a3
   11b04:	01468bb3          	add	s7,a3,s4
   11b08:	34ebda63          	bge	s7,a4,11e5c <_realloc_r+0x414>
   11b0c:	00fa0bb3          	add	s7,s4,a5
   11b10:	0cebd263          	bge	s7,a4,11bd4 <_realloc_r+0x18c>
   11b14:	00090593          	mv	a1,s2
   11b18:	00098513          	mv	a0,s3
   11b1c:	c7cff0ef          	jal	ra,10f98 <_malloc_r>
   11b20:	00050913          	mv	s2,a0
   11b24:	04050c63          	beqz	a0,11b7c <_realloc_r+0x134>
   11b28:	ffc42783          	lw	a5,-4(s0)
   11b2c:	ff850713          	addi	a4,a0,-8
   11b30:	ffe7f793          	andi	a5,a5,-2
   11b34:	00fa87b3          	add	a5,s5,a5
   11b38:	30e78263          	beq	a5,a4,11e3c <_realloc_r+0x3f4>
   11b3c:	ffca0613          	addi	a2,s4,-4
   11b40:	02400793          	li	a5,36
   11b44:	30c7e663          	bltu	a5,a2,11e50 <_realloc_r+0x408>
   11b48:	01300713          	li	a4,19
   11b4c:	00042683          	lw	a3,0(s0)
   11b50:	26c76c63          	bltu	a4,a2,11dc8 <_realloc_r+0x380>
   11b54:	00050793          	mv	a5,a0
   11b58:	00040713          	mv	a4,s0
   11b5c:	00d7a023          	sw	a3,0(a5)
   11b60:	00472683          	lw	a3,4(a4)
   11b64:	00d7a223          	sw	a3,4(a5)
   11b68:	00872703          	lw	a4,8(a4)
   11b6c:	00e7a423          	sw	a4,8(a5)
   11b70:	00040593          	mv	a1,s0
   11b74:	00098513          	mv	a0,s3
   11b78:	5dd000ef          	jal	ra,12954 <_free_r>
   11b7c:	00098513          	mv	a0,s3
   11b80:	ec5ff0ef          	jal	ra,11a44 <__malloc_unlock>
   11b84:	01c0006f          	j	11ba0 <_realloc_r+0x158>
   11b88:	01000493          	li	s1,16
   11b8c:	01000713          	li	a4,16
   11b90:	f124fae3          	bgeu	s1,s2,11aa4 <_realloc_r+0x5c>
   11b94:	00c00793          	li	a5,12
   11b98:	00f9a023          	sw	a5,0(s3)
   11b9c:	00000913          	li	s2,0
   11ba0:	02c12083          	lw	ra,44(sp)
   11ba4:	02812403          	lw	s0,40(sp)
   11ba8:	02412483          	lw	s1,36(sp)
   11bac:	01c12983          	lw	s3,28(sp)
   11bb0:	01812a03          	lw	s4,24(sp)
   11bb4:	01412a83          	lw	s5,20(sp)
   11bb8:	01012b03          	lw	s6,16(sp)
   11bbc:	00c12b83          	lw	s7,12(sp)
   11bc0:	00812c03          	lw	s8,8(sp)
   11bc4:	00090513          	mv	a0,s2
   11bc8:	02012903          	lw	s2,32(sp)
   11bcc:	03010113          	addi	sp,sp,48
   11bd0:	00008067          	ret
   11bd4:	00cc2783          	lw	a5,12(s8)
   11bd8:	008c2703          	lw	a4,8(s8)
   11bdc:	ffca0613          	addi	a2,s4,-4
   11be0:	02400693          	li	a3,36
   11be4:	00f72623          	sw	a5,12(a4)
   11be8:	00e7a423          	sw	a4,8(a5)
   11bec:	008c0913          	addi	s2,s8,8
   11bf0:	017c0b33          	add	s6,s8,s7
   11bf4:	2ec6e463          	bltu	a3,a2,11edc <_realloc_r+0x494>
   11bf8:	01300593          	li	a1,19
   11bfc:	00042703          	lw	a4,0(s0)
   11c00:	00090793          	mv	a5,s2
   11c04:	02c5f263          	bgeu	a1,a2,11c28 <_realloc_r+0x1e0>
   11c08:	00ec2423          	sw	a4,8(s8)
   11c0c:	00442703          	lw	a4,4(s0)
   11c10:	01b00793          	li	a5,27
   11c14:	00ec2623          	sw	a4,12(s8)
   11c18:	30c7e263          	bltu	a5,a2,11f1c <_realloc_r+0x4d4>
   11c1c:	00842703          	lw	a4,8(s0)
   11c20:	010c0793          	addi	a5,s8,16
   11c24:	00840413          	addi	s0,s0,8
   11c28:	00e7a023          	sw	a4,0(a5)
   11c2c:	00442703          	lw	a4,4(s0)
   11c30:	000b8a13          	mv	s4,s7
   11c34:	000c0a93          	mv	s5,s8
   11c38:	00e7a223          	sw	a4,4(a5)
   11c3c:	00842703          	lw	a4,8(s0)
   11c40:	00090413          	mv	s0,s2
   11c44:	00e7a423          	sw	a4,8(a5)
   11c48:	004aa783          	lw	a5,4(s5)
   11c4c:	409a0733          	sub	a4,s4,s1
   11c50:	00f00693          	li	a3,15
   11c54:	0017f793          	andi	a5,a5,1
   11c58:	06e6ec63          	bltu	a3,a4,11cd0 <_realloc_r+0x288>
   11c5c:	00fa67b3          	or	a5,s4,a5
   11c60:	00faa223          	sw	a5,4(s5)
   11c64:	004b2783          	lw	a5,4(s6)
   11c68:	0017e793          	ori	a5,a5,1
   11c6c:	00fb2223          	sw	a5,4(s6)
   11c70:	00098513          	mv	a0,s3
   11c74:	dd1ff0ef          	jal	ra,11a44 <__malloc_unlock>
   11c78:	00040913          	mv	s2,s0
   11c7c:	f25ff06f          	j	11ba0 <_realloc_r+0x158>
   11c80:	0017f793          	andi	a5,a5,1
   11c84:	e80798e3          	bnez	a5,11b14 <_realloc_r+0xcc>
   11c88:	ff842c03          	lw	s8,-8(s0)
   11c8c:	418a8c33          	sub	s8,s5,s8
   11c90:	004c2783          	lw	a5,4(s8)
   11c94:	ffc7f793          	andi	a5,a5,-4
   11c98:	e75ff06f          	j	11b0c <_realloc_r+0xc4>
   11c9c:	02812403          	lw	s0,40(sp)
   11ca0:	02c12083          	lw	ra,44(sp)
   11ca4:	02412483          	lw	s1,36(sp)
   11ca8:	02012903          	lw	s2,32(sp)
   11cac:	01c12983          	lw	s3,28(sp)
   11cb0:	01812a03          	lw	s4,24(sp)
   11cb4:	01412a83          	lw	s5,20(sp)
   11cb8:	01012b03          	lw	s6,16(sp)
   11cbc:	00c12b83          	lw	s7,12(sp)
   11cc0:	00812c03          	lw	s8,8(sp)
   11cc4:	00060593          	mv	a1,a2
   11cc8:	03010113          	addi	sp,sp,48
   11ccc:	accff06f          	j	10f98 <_malloc_r>
   11cd0:	0097e7b3          	or	a5,a5,s1
   11cd4:	00faa223          	sw	a5,4(s5)
   11cd8:	009a85b3          	add	a1,s5,s1
   11cdc:	00176713          	ori	a4,a4,1
   11ce0:	00e5a223          	sw	a4,4(a1)
   11ce4:	004b2783          	lw	a5,4(s6)
   11ce8:	00858593          	addi	a1,a1,8
   11cec:	00098513          	mv	a0,s3
   11cf0:	0017e793          	ori	a5,a5,1
   11cf4:	00fb2223          	sw	a5,4(s6)
   11cf8:	45d000ef          	jal	ra,12954 <_free_r>
   11cfc:	f75ff06f          	j	11c70 <_realloc_r+0x228>
   11d00:	ffc6f693          	andi	a3,a3,-4
   11d04:	00da0633          	add	a2,s4,a3
   11d08:	01048593          	addi	a1,s1,16
   11d0c:	0eb65063          	bge	a2,a1,11dec <_realloc_r+0x3a4>
   11d10:	0017f793          	andi	a5,a5,1
   11d14:	e00790e3          	bnez	a5,11b14 <_realloc_r+0xcc>
   11d18:	ff842c03          	lw	s8,-8(s0)
   11d1c:	418a8c33          	sub	s8,s5,s8
   11d20:	004c2783          	lw	a5,4(s8)
   11d24:	ffc7f793          	andi	a5,a5,-4
   11d28:	00d786b3          	add	a3,a5,a3
   11d2c:	01468b33          	add	s6,a3,s4
   11d30:	dcbb4ee3          	blt	s6,a1,11b0c <_realloc_r+0xc4>
   11d34:	00cc2783          	lw	a5,12(s8)
   11d38:	008c2703          	lw	a4,8(s8)
   11d3c:	ffca0613          	addi	a2,s4,-4
   11d40:	02400693          	li	a3,36
   11d44:	00f72623          	sw	a5,12(a4)
   11d48:	00e7a423          	sw	a4,8(a5)
   11d4c:	008c0913          	addi	s2,s8,8
   11d50:	20c6ee63          	bltu	a3,a2,11f6c <_realloc_r+0x524>
   11d54:	01300593          	li	a1,19
   11d58:	00042703          	lw	a4,0(s0)
   11d5c:	00090793          	mv	a5,s2
   11d60:	02c5f263          	bgeu	a1,a2,11d84 <_realloc_r+0x33c>
   11d64:	00ec2423          	sw	a4,8(s8)
   11d68:	00442703          	lw	a4,4(s0)
   11d6c:	01b00793          	li	a5,27
   11d70:	00ec2623          	sw	a4,12(s8)
   11d74:	20c7e463          	bltu	a5,a2,11f7c <_realloc_r+0x534>
   11d78:	00842703          	lw	a4,8(s0)
   11d7c:	010c0793          	addi	a5,s8,16
   11d80:	00840413          	addi	s0,s0,8
   11d84:	00e7a023          	sw	a4,0(a5)
   11d88:	00442703          	lw	a4,4(s0)
   11d8c:	00e7a223          	sw	a4,4(a5)
   11d90:	00842703          	lw	a4,8(s0)
   11d94:	00e7a423          	sw	a4,8(a5)
   11d98:	009c0733          	add	a4,s8,s1
   11d9c:	409b07b3          	sub	a5,s6,s1
   11da0:	00eba423          	sw	a4,8(s7)
   11da4:	0017e793          	ori	a5,a5,1
   11da8:	00f72223          	sw	a5,4(a4)
   11dac:	004c2783          	lw	a5,4(s8)
   11db0:	00098513          	mv	a0,s3
   11db4:	0017f793          	andi	a5,a5,1
   11db8:	0097e4b3          	or	s1,a5,s1
   11dbc:	009c2223          	sw	s1,4(s8)
   11dc0:	c85ff0ef          	jal	ra,11a44 <__malloc_unlock>
   11dc4:	dddff06f          	j	11ba0 <_realloc_r+0x158>
   11dc8:	00d52023          	sw	a3,0(a0)
   11dcc:	00442683          	lw	a3,4(s0)
   11dd0:	01b00713          	li	a4,27
   11dd4:	00d52223          	sw	a3,4(a0)
   11dd8:	12c76063          	bltu	a4,a2,11ef8 <_realloc_r+0x4b0>
   11ddc:	00842683          	lw	a3,8(s0)
   11de0:	00840713          	addi	a4,s0,8
   11de4:	00850793          	addi	a5,a0,8
   11de8:	d75ff06f          	j	11b5c <_realloc_r+0x114>
   11dec:	009a8ab3          	add	s5,s5,s1
   11df0:	409607b3          	sub	a5,a2,s1
   11df4:	015ba423          	sw	s5,8(s7)
   11df8:	0017e793          	ori	a5,a5,1
   11dfc:	00faa223          	sw	a5,4(s5)
   11e00:	ffc42783          	lw	a5,-4(s0)
   11e04:	00098513          	mv	a0,s3
   11e08:	00040913          	mv	s2,s0
   11e0c:	0017f793          	andi	a5,a5,1
   11e10:	0097e4b3          	or	s1,a5,s1
   11e14:	fe942e23          	sw	s1,-4(s0)
   11e18:	c2dff0ef          	jal	ra,11a44 <__malloc_unlock>
   11e1c:	d85ff06f          	j	11ba0 <_realloc_r+0x158>
   11e20:	00cb2783          	lw	a5,12(s6)
   11e24:	008b2703          	lw	a4,8(s6)
   11e28:	00060a13          	mv	s4,a2
   11e2c:	00ca8b33          	add	s6,s5,a2
   11e30:	00f72623          	sw	a5,12(a4)
   11e34:	00e7a423          	sw	a4,8(a5)
   11e38:	e11ff06f          	j	11c48 <_realloc_r+0x200>
   11e3c:	ffc52783          	lw	a5,-4(a0)
   11e40:	ffc7f793          	andi	a5,a5,-4
   11e44:	00fa0a33          	add	s4,s4,a5
   11e48:	014a8b33          	add	s6,s5,s4
   11e4c:	dfdff06f          	j	11c48 <_realloc_r+0x200>
   11e50:	00040593          	mv	a1,s0
   11e54:	acdff0ef          	jal	ra,11920 <memmove>
   11e58:	d19ff06f          	j	11b70 <_realloc_r+0x128>
   11e5c:	00cb2783          	lw	a5,12(s6)
   11e60:	008b2703          	lw	a4,8(s6)
   11e64:	ffca0613          	addi	a2,s4,-4
   11e68:	02400693          	li	a3,36
   11e6c:	00f72623          	sw	a5,12(a4)
   11e70:	00e7a423          	sw	a4,8(a5)
   11e74:	008c2703          	lw	a4,8(s8)
   11e78:	00cc2783          	lw	a5,12(s8)
   11e7c:	008c0913          	addi	s2,s8,8
   11e80:	017c0b33          	add	s6,s8,s7
   11e84:	00f72623          	sw	a5,12(a4)
   11e88:	00e7a423          	sw	a4,8(a5)
   11e8c:	04c6e863          	bltu	a3,a2,11edc <_realloc_r+0x494>
   11e90:	01300693          	li	a3,19
   11e94:	00042703          	lw	a4,0(s0)
   11e98:	00090793          	mv	a5,s2
   11e9c:	d8c6f6e3          	bgeu	a3,a2,11c28 <_realloc_r+0x1e0>
   11ea0:	00ec2423          	sw	a4,8(s8)
   11ea4:	00442703          	lw	a4,4(s0)
   11ea8:	01b00793          	li	a5,27
   11eac:	00ec2623          	sw	a4,12(s8)
   11eb0:	00842703          	lw	a4,8(s0)
   11eb4:	d6c7f6e3          	bgeu	a5,a2,11c20 <_realloc_r+0x1d8>
   11eb8:	00ec2823          	sw	a4,16(s8)
   11ebc:	00c42703          	lw	a4,12(s0)
   11ec0:	02400793          	li	a5,36
   11ec4:	00ec2a23          	sw	a4,20(s8)
   11ec8:	01042703          	lw	a4,16(s0)
   11ecc:	06f60463          	beq	a2,a5,11f34 <_realloc_r+0x4ec>
   11ed0:	018c0793          	addi	a5,s8,24
   11ed4:	01040413          	addi	s0,s0,16
   11ed8:	d51ff06f          	j	11c28 <_realloc_r+0x1e0>
   11edc:	00040593          	mv	a1,s0
   11ee0:	00090513          	mv	a0,s2
   11ee4:	a3dff0ef          	jal	ra,11920 <memmove>
   11ee8:	00090413          	mv	s0,s2
   11eec:	000b8a13          	mv	s4,s7
   11ef0:	000c0a93          	mv	s5,s8
   11ef4:	d55ff06f          	j	11c48 <_realloc_r+0x200>
   11ef8:	00842703          	lw	a4,8(s0)
   11efc:	00e52423          	sw	a4,8(a0)
   11f00:	00c42703          	lw	a4,12(s0)
   11f04:	00e52623          	sw	a4,12(a0)
   11f08:	01042683          	lw	a3,16(s0)
   11f0c:	04f60263          	beq	a2,a5,11f50 <_realloc_r+0x508>
   11f10:	01040713          	addi	a4,s0,16
   11f14:	01050793          	addi	a5,a0,16
   11f18:	c45ff06f          	j	11b5c <_realloc_r+0x114>
   11f1c:	00842783          	lw	a5,8(s0)
   11f20:	00fc2823          	sw	a5,16(s8)
   11f24:	00c42783          	lw	a5,12(s0)
   11f28:	00fc2a23          	sw	a5,20(s8)
   11f2c:	01042703          	lw	a4,16(s0)
   11f30:	fad610e3          	bne	a2,a3,11ed0 <_realloc_r+0x488>
   11f34:	00ec2c23          	sw	a4,24(s8)
   11f38:	01442703          	lw	a4,20(s0)
   11f3c:	020c0793          	addi	a5,s8,32
   11f40:	01840413          	addi	s0,s0,24
   11f44:	00ec2e23          	sw	a4,28(s8)
   11f48:	00042703          	lw	a4,0(s0)
   11f4c:	cddff06f          	j	11c28 <_realloc_r+0x1e0>
   11f50:	00d52823          	sw	a3,16(a0)
   11f54:	01442683          	lw	a3,20(s0)
   11f58:	01840713          	addi	a4,s0,24
   11f5c:	01850793          	addi	a5,a0,24
   11f60:	00d52a23          	sw	a3,20(a0)
   11f64:	01842683          	lw	a3,24(s0)
   11f68:	bf5ff06f          	j	11b5c <_realloc_r+0x114>
   11f6c:	00040593          	mv	a1,s0
   11f70:	00090513          	mv	a0,s2
   11f74:	9adff0ef          	jal	ra,11920 <memmove>
   11f78:	e21ff06f          	j	11d98 <_realloc_r+0x350>
   11f7c:	00842783          	lw	a5,8(s0)
   11f80:	00fc2823          	sw	a5,16(s8)
   11f84:	00c42783          	lw	a5,12(s0)
   11f88:	00fc2a23          	sw	a5,20(s8)
   11f8c:	01042703          	lw	a4,16(s0)
   11f90:	00d60863          	beq	a2,a3,11fa0 <_realloc_r+0x558>
   11f94:	018c0793          	addi	a5,s8,24
   11f98:	01040413          	addi	s0,s0,16
   11f9c:	de9ff06f          	j	11d84 <_realloc_r+0x33c>
   11fa0:	00ec2c23          	sw	a4,24(s8)
   11fa4:	01442703          	lw	a4,20(s0)
   11fa8:	020c0793          	addi	a5,s8,32
   11fac:	01840413          	addi	s0,s0,24
   11fb0:	00ec2e23          	sw	a4,28(s8)
   11fb4:	00042703          	lw	a4,0(s0)
   11fb8:	dcdff06f          	j	11d84 <_realloc_r+0x33c>

00011fbc <_sbrk_r>:
   11fbc:	ff010113          	addi	sp,sp,-16
   11fc0:	00812423          	sw	s0,8(sp)
   11fc4:	00912223          	sw	s1,4(sp)
   11fc8:	00050413          	mv	s0,a0
   11fcc:	00058513          	mv	a0,a1
   11fd0:	00112623          	sw	ra,12(sp)
   11fd4:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   11fd8:	330010ef          	jal	ra,13308 <_sbrk>
   11fdc:	fff00793          	li	a5,-1
   11fe0:	00f50c63          	beq	a0,a5,11ff8 <_sbrk_r+0x3c>
   11fe4:	00c12083          	lw	ra,12(sp)
   11fe8:	00812403          	lw	s0,8(sp)
   11fec:	00412483          	lw	s1,4(sp)
   11ff0:	01010113          	addi	sp,sp,16
   11ff4:	00008067          	ret
   11ff8:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   11ffc:	fe0784e3          	beqz	a5,11fe4 <_sbrk_r+0x28>
   12000:	00c12083          	lw	ra,12(sp)
   12004:	00f42023          	sw	a5,0(s0)
   12008:	00812403          	lw	s0,8(sp)
   1200c:	00412483          	lw	s1,4(sp)
   12010:	01010113          	addi	sp,sp,16
   12014:	00008067          	ret

00012018 <__sread>:
   12018:	ff010113          	addi	sp,sp,-16
   1201c:	00812423          	sw	s0,8(sp)
   12020:	00058413          	mv	s0,a1
   12024:	00e59583          	lh	a1,14(a1)
   12028:	00112623          	sw	ra,12(sp)
   1202c:	681000ef          	jal	ra,12eac <_read_r>
   12030:	02054063          	bltz	a0,12050 <__sread+0x38>
   12034:	05042783          	lw	a5,80(s0)
   12038:	00c12083          	lw	ra,12(sp)
   1203c:	00a787b3          	add	a5,a5,a0
   12040:	04f42823          	sw	a5,80(s0)
   12044:	00812403          	lw	s0,8(sp)
   12048:	01010113          	addi	sp,sp,16
   1204c:	00008067          	ret
   12050:	00c45783          	lhu	a5,12(s0)
   12054:	fffff737          	lui	a4,0xfffff
   12058:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffea1c3>
   1205c:	00e7f7b3          	and	a5,a5,a4
   12060:	00c12083          	lw	ra,12(sp)
   12064:	00f41623          	sh	a5,12(s0)
   12068:	00812403          	lw	s0,8(sp)
   1206c:	01010113          	addi	sp,sp,16
   12070:	00008067          	ret

00012074 <__seofread>:
   12074:	00000513          	li	a0,0
   12078:	00008067          	ret

0001207c <__swrite>:
   1207c:	00c59783          	lh	a5,12(a1)
   12080:	fe010113          	addi	sp,sp,-32
   12084:	00812c23          	sw	s0,24(sp)
   12088:	00912a23          	sw	s1,20(sp)
   1208c:	01212823          	sw	s2,16(sp)
   12090:	01312623          	sw	s3,12(sp)
   12094:	00112e23          	sw	ra,28(sp)
   12098:	1007f713          	andi	a4,a5,256
   1209c:	00058413          	mv	s0,a1
   120a0:	00050493          	mv	s1,a0
   120a4:	00e59583          	lh	a1,14(a1)
   120a8:	00060913          	mv	s2,a2
   120ac:	00068993          	mv	s3,a3
   120b0:	02071e63          	bnez	a4,120ec <__swrite+0x70>
   120b4:	fffff737          	lui	a4,0xfffff
   120b8:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffea1c3>
   120bc:	00e7f7b3          	and	a5,a5,a4
   120c0:	00f41623          	sh	a5,12(s0)
   120c4:	01812403          	lw	s0,24(sp)
   120c8:	01c12083          	lw	ra,28(sp)
   120cc:	00098693          	mv	a3,s3
   120d0:	00090613          	mv	a2,s2
   120d4:	00c12983          	lw	s3,12(sp)
   120d8:	01012903          	lw	s2,16(sp)
   120dc:	00048513          	mv	a0,s1
   120e0:	01412483          	lw	s1,20(sp)
   120e4:	02010113          	addi	sp,sp,32
   120e8:	08c0006f          	j	12174 <_write_r>
   120ec:	00200693          	li	a3,2
   120f0:	00000613          	li	a2,0
   120f4:	361000ef          	jal	ra,12c54 <_lseek_r>
   120f8:	00c41783          	lh	a5,12(s0)
   120fc:	00e41583          	lh	a1,14(s0)
   12100:	fb5ff06f          	j	120b4 <__swrite+0x38>

00012104 <__sseek>:
   12104:	ff010113          	addi	sp,sp,-16
   12108:	00812423          	sw	s0,8(sp)
   1210c:	00058413          	mv	s0,a1
   12110:	00e59583          	lh	a1,14(a1)
   12114:	00112623          	sw	ra,12(sp)
   12118:	33d000ef          	jal	ra,12c54 <_lseek_r>
   1211c:	fff00793          	li	a5,-1
   12120:	02f50463          	beq	a0,a5,12148 <__sseek+0x44>
   12124:	00c45783          	lhu	a5,12(s0)
   12128:	00001737          	lui	a4,0x1
   1212c:	00c12083          	lw	ra,12(sp)
   12130:	00e7e7b3          	or	a5,a5,a4
   12134:	04a42823          	sw	a0,80(s0)
   12138:	00f41623          	sh	a5,12(s0)
   1213c:	00812403          	lw	s0,8(sp)
   12140:	01010113          	addi	sp,sp,16
   12144:	00008067          	ret
   12148:	00c45783          	lhu	a5,12(s0)
   1214c:	fffff737          	lui	a4,0xfffff
   12150:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffea1c3>
   12154:	00e7f7b3          	and	a5,a5,a4
   12158:	00c12083          	lw	ra,12(sp)
   1215c:	00f41623          	sh	a5,12(s0)
   12160:	00812403          	lw	s0,8(sp)
   12164:	01010113          	addi	sp,sp,16
   12168:	00008067          	ret

0001216c <__sclose>:
   1216c:	00e59583          	lh	a1,14(a1)
   12170:	2600006f          	j	123d0 <_close_r>

00012174 <_write_r>:
   12174:	ff010113          	addi	sp,sp,-16
   12178:	00058713          	mv	a4,a1
   1217c:	00812423          	sw	s0,8(sp)
   12180:	00912223          	sw	s1,4(sp)
   12184:	00060593          	mv	a1,a2
   12188:	00050413          	mv	s0,a0
   1218c:	00068613          	mv	a2,a3
   12190:	00070513          	mv	a0,a4
   12194:	00112623          	sw	ra,12(sp)
   12198:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   1219c:	208010ef          	jal	ra,133a4 <_write>
   121a0:	fff00793          	li	a5,-1
   121a4:	00f50c63          	beq	a0,a5,121bc <_write_r+0x48>
   121a8:	00c12083          	lw	ra,12(sp)
   121ac:	00812403          	lw	s0,8(sp)
   121b0:	00412483          	lw	s1,4(sp)
   121b4:	01010113          	addi	sp,sp,16
   121b8:	00008067          	ret
   121bc:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   121c0:	fe0784e3          	beqz	a5,121a8 <_write_r+0x34>
   121c4:	00c12083          	lw	ra,12(sp)
   121c8:	00f42023          	sw	a5,0(s0)
   121cc:	00812403          	lw	s0,8(sp)
   121d0:	00412483          	lw	s1,4(sp)
   121d4:	01010113          	addi	sp,sp,16
   121d8:	00008067          	ret

000121dc <__swsetup_r>:
   121dc:	0381a783          	lw	a5,56(gp) # 14dd8 <_impure_ptr>
   121e0:	ff010113          	addi	sp,sp,-16
   121e4:	00812423          	sw	s0,8(sp)
   121e8:	00912223          	sw	s1,4(sp)
   121ec:	00112623          	sw	ra,12(sp)
   121f0:	00050493          	mv	s1,a0
   121f4:	00058413          	mv	s0,a1
   121f8:	00078663          	beqz	a5,12204 <__swsetup_r+0x28>
   121fc:	0387a703          	lw	a4,56(a5)
   12200:	0e070063          	beqz	a4,122e0 <__swsetup_r+0x104>
   12204:	00c41703          	lh	a4,12(s0)
   12208:	01071793          	slli	a5,a4,0x10
   1220c:	00877693          	andi	a3,a4,8
   12210:	0107d793          	srli	a5,a5,0x10
   12214:	04068063          	beqz	a3,12254 <__swsetup_r+0x78>
   12218:	01042683          	lw	a3,16(s0)
   1221c:	06068063          	beqz	a3,1227c <__swsetup_r+0xa0>
   12220:	0017f613          	andi	a2,a5,1
   12224:	08060463          	beqz	a2,122ac <__swsetup_r+0xd0>
   12228:	01442603          	lw	a2,20(s0)
   1222c:	00042423          	sw	zero,8(s0)
   12230:	00000513          	li	a0,0
   12234:	40c00633          	neg	a2,a2
   12238:	00c42c23          	sw	a2,24(s0)
   1223c:	08068663          	beqz	a3,122c8 <__swsetup_r+0xec>
   12240:	00c12083          	lw	ra,12(sp)
   12244:	00812403          	lw	s0,8(sp)
   12248:	00412483          	lw	s1,4(sp)
   1224c:	01010113          	addi	sp,sp,16
   12250:	00008067          	ret
   12254:	0107f693          	andi	a3,a5,16
   12258:	0c068463          	beqz	a3,12320 <__swsetup_r+0x144>
   1225c:	0047f793          	andi	a5,a5,4
   12260:	08079663          	bnez	a5,122ec <__swsetup_r+0x110>
   12264:	01042683          	lw	a3,16(s0)
   12268:	00876713          	ori	a4,a4,8
   1226c:	01071793          	slli	a5,a4,0x10
   12270:	00e41623          	sh	a4,12(s0)
   12274:	0107d793          	srli	a5,a5,0x10
   12278:	fa0694e3          	bnez	a3,12220 <__swsetup_r+0x44>
   1227c:	2807f613          	andi	a2,a5,640
   12280:	20000593          	li	a1,512
   12284:	f8b60ee3          	beq	a2,a1,12220 <__swsetup_r+0x44>
   12288:	00040593          	mv	a1,s0
   1228c:	00048513          	mv	a0,s1
   12290:	2fd000ef          	jal	ra,12d8c <__smakebuf_r>
   12294:	00c41703          	lh	a4,12(s0)
   12298:	01042683          	lw	a3,16(s0)
   1229c:	01071793          	slli	a5,a4,0x10
   122a0:	0107d793          	srli	a5,a5,0x10
   122a4:	0017f613          	andi	a2,a5,1
   122a8:	f80610e3          	bnez	a2,12228 <__swsetup_r+0x4c>
   122ac:	0027f613          	andi	a2,a5,2
   122b0:	00000593          	li	a1,0
   122b4:	00061463          	bnez	a2,122bc <__swsetup_r+0xe0>
   122b8:	01442583          	lw	a1,20(s0)
   122bc:	00b42423          	sw	a1,8(s0)
   122c0:	00000513          	li	a0,0
   122c4:	f6069ee3          	bnez	a3,12240 <__swsetup_r+0x64>
   122c8:	0807f793          	andi	a5,a5,128
   122cc:	f6078ae3          	beqz	a5,12240 <__swsetup_r+0x64>
   122d0:	04076713          	ori	a4,a4,64
   122d4:	00e41623          	sh	a4,12(s0)
   122d8:	fff00513          	li	a0,-1
   122dc:	f65ff06f          	j	12240 <__swsetup_r+0x64>
   122e0:	00078513          	mv	a0,a5
   122e4:	e0cfe0ef          	jal	ra,108f0 <__sinit>
   122e8:	f1dff06f          	j	12204 <__swsetup_r+0x28>
   122ec:	03042583          	lw	a1,48(s0)
   122f0:	00058e63          	beqz	a1,1230c <__swsetup_r+0x130>
   122f4:	04040793          	addi	a5,s0,64
   122f8:	00f58863          	beq	a1,a5,12308 <__swsetup_r+0x12c>
   122fc:	00048513          	mv	a0,s1
   12300:	654000ef          	jal	ra,12954 <_free_r>
   12304:	00c41703          	lh	a4,12(s0)
   12308:	02042823          	sw	zero,48(s0)
   1230c:	01042683          	lw	a3,16(s0)
   12310:	fdb77713          	andi	a4,a4,-37
   12314:	00042223          	sw	zero,4(s0)
   12318:	00d42023          	sw	a3,0(s0)
   1231c:	f4dff06f          	j	12268 <__swsetup_r+0x8c>
   12320:	00900793          	li	a5,9
   12324:	00f4a023          	sw	a5,0(s1)
   12328:	04076713          	ori	a4,a4,64
   1232c:	00e41623          	sh	a4,12(s0)
   12330:	fff00513          	li	a0,-1
   12334:	f0dff06f          	j	12240 <__swsetup_r+0x64>

00012338 <__register_exitproc>:
   12338:	0301a703          	lw	a4,48(gp) # 14dd0 <_global_impure_ptr>
   1233c:	14872783          	lw	a5,328(a4)
   12340:	04078c63          	beqz	a5,12398 <__register_exitproc+0x60>
   12344:	0047a703          	lw	a4,4(a5)
   12348:	01f00813          	li	a6,31
   1234c:	06e84e63          	blt	a6,a4,123c8 <__register_exitproc+0x90>
   12350:	00271813          	slli	a6,a4,0x2
   12354:	02050663          	beqz	a0,12380 <__register_exitproc+0x48>
   12358:	01078333          	add	t1,a5,a6
   1235c:	08c32423          	sw	a2,136(t1)
   12360:	1887a883          	lw	a7,392(a5)
   12364:	00100613          	li	a2,1
   12368:	00e61633          	sll	a2,a2,a4
   1236c:	00c8e8b3          	or	a7,a7,a2
   12370:	1917a423          	sw	a7,392(a5)
   12374:	10d32423          	sw	a3,264(t1)
   12378:	00200693          	li	a3,2
   1237c:	02d50463          	beq	a0,a3,123a4 <__register_exitproc+0x6c>
   12380:	00170713          	addi	a4,a4,1
   12384:	00e7a223          	sw	a4,4(a5)
   12388:	010787b3          	add	a5,a5,a6
   1238c:	00b7a423          	sw	a1,8(a5)
   12390:	00000513          	li	a0,0
   12394:	00008067          	ret
   12398:	14c70793          	addi	a5,a4,332
   1239c:	14f72423          	sw	a5,328(a4)
   123a0:	fa5ff06f          	j	12344 <__register_exitproc+0xc>
   123a4:	18c7a683          	lw	a3,396(a5)
   123a8:	00170713          	addi	a4,a4,1
   123ac:	00e7a223          	sw	a4,4(a5)
   123b0:	00c6e633          	or	a2,a3,a2
   123b4:	18c7a623          	sw	a2,396(a5)
   123b8:	010787b3          	add	a5,a5,a6
   123bc:	00b7a423          	sw	a1,8(a5)
   123c0:	00000513          	li	a0,0
   123c4:	00008067          	ret
   123c8:	fff00513          	li	a0,-1
   123cc:	00008067          	ret

000123d0 <_close_r>:
   123d0:	ff010113          	addi	sp,sp,-16
   123d4:	00812423          	sw	s0,8(sp)
   123d8:	00912223          	sw	s1,4(sp)
   123dc:	00050413          	mv	s0,a0
   123e0:	00058513          	mv	a0,a1
   123e4:	00112623          	sw	ra,12(sp)
   123e8:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   123ec:	531000ef          	jal	ra,1311c <_close>
   123f0:	fff00793          	li	a5,-1
   123f4:	00f50c63          	beq	a0,a5,1240c <_close_r+0x3c>
   123f8:	00c12083          	lw	ra,12(sp)
   123fc:	00812403          	lw	s0,8(sp)
   12400:	00412483          	lw	s1,4(sp)
   12404:	01010113          	addi	sp,sp,16
   12408:	00008067          	ret
   1240c:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   12410:	fe0784e3          	beqz	a5,123f8 <_close_r+0x28>
   12414:	00c12083          	lw	ra,12(sp)
   12418:	00f42023          	sw	a5,0(s0)
   1241c:	00812403          	lw	s0,8(sp)
   12420:	00412483          	lw	s1,4(sp)
   12424:	01010113          	addi	sp,sp,16
   12428:	00008067          	ret

0001242c <_fclose_r>:
   1242c:	ff010113          	addi	sp,sp,-16
   12430:	00112623          	sw	ra,12(sp)
   12434:	00812423          	sw	s0,8(sp)
   12438:	00912223          	sw	s1,4(sp)
   1243c:	01212023          	sw	s2,0(sp)
   12440:	02058063          	beqz	a1,12460 <_fclose_r+0x34>
   12444:	00058413          	mv	s0,a1
   12448:	00050493          	mv	s1,a0
   1244c:	00050663          	beqz	a0,12458 <_fclose_r+0x2c>
   12450:	03852783          	lw	a5,56(a0)
   12454:	0a078c63          	beqz	a5,1250c <_fclose_r+0xe0>
   12458:	00c41783          	lh	a5,12(s0)
   1245c:	02079263          	bnez	a5,12480 <_fclose_r+0x54>
   12460:	00c12083          	lw	ra,12(sp)
   12464:	00812403          	lw	s0,8(sp)
   12468:	00000913          	li	s2,0
   1246c:	00412483          	lw	s1,4(sp)
   12470:	00090513          	mv	a0,s2
   12474:	00012903          	lw	s2,0(sp)
   12478:	01010113          	addi	sp,sp,16
   1247c:	00008067          	ret
   12480:	00040593          	mv	a1,s0
   12484:	00048513          	mv	a0,s1
   12488:	0c0000ef          	jal	ra,12548 <__sflush_r>
   1248c:	02c42783          	lw	a5,44(s0)
   12490:	00050913          	mv	s2,a0
   12494:	00078a63          	beqz	a5,124a8 <_fclose_r+0x7c>
   12498:	01c42583          	lw	a1,28(s0)
   1249c:	00048513          	mv	a0,s1
   124a0:	000780e7          	jalr	a5
   124a4:	06054c63          	bltz	a0,1251c <_fclose_r+0xf0>
   124a8:	00c45783          	lhu	a5,12(s0)
   124ac:	0807f793          	andi	a5,a5,128
   124b0:	06079e63          	bnez	a5,1252c <_fclose_r+0x100>
   124b4:	03042583          	lw	a1,48(s0)
   124b8:	00058c63          	beqz	a1,124d0 <_fclose_r+0xa4>
   124bc:	04040793          	addi	a5,s0,64
   124c0:	00f58663          	beq	a1,a5,124cc <_fclose_r+0xa0>
   124c4:	00048513          	mv	a0,s1
   124c8:	48c000ef          	jal	ra,12954 <_free_r>
   124cc:	02042823          	sw	zero,48(s0)
   124d0:	04442583          	lw	a1,68(s0)
   124d4:	00058863          	beqz	a1,124e4 <_fclose_r+0xb8>
   124d8:	00048513          	mv	a0,s1
   124dc:	478000ef          	jal	ra,12954 <_free_r>
   124e0:	04042223          	sw	zero,68(s0)
   124e4:	c1cfe0ef          	jal	ra,10900 <__sfp_lock_acquire>
   124e8:	00041623          	sh	zero,12(s0)
   124ec:	c18fe0ef          	jal	ra,10904 <__sfp_lock_release>
   124f0:	00c12083          	lw	ra,12(sp)
   124f4:	00812403          	lw	s0,8(sp)
   124f8:	00412483          	lw	s1,4(sp)
   124fc:	00090513          	mv	a0,s2
   12500:	00012903          	lw	s2,0(sp)
   12504:	01010113          	addi	sp,sp,16
   12508:	00008067          	ret
   1250c:	be4fe0ef          	jal	ra,108f0 <__sinit>
   12510:	00c41783          	lh	a5,12(s0)
   12514:	f40786e3          	beqz	a5,12460 <_fclose_r+0x34>
   12518:	f69ff06f          	j	12480 <_fclose_r+0x54>
   1251c:	00c45783          	lhu	a5,12(s0)
   12520:	fff00913          	li	s2,-1
   12524:	0807f793          	andi	a5,a5,128
   12528:	f80786e3          	beqz	a5,124b4 <_fclose_r+0x88>
   1252c:	01042583          	lw	a1,16(s0)
   12530:	00048513          	mv	a0,s1
   12534:	420000ef          	jal	ra,12954 <_free_r>
   12538:	f7dff06f          	j	124b4 <_fclose_r+0x88>

0001253c <fclose>:
   1253c:	00050593          	mv	a1,a0
   12540:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   12544:	ee9ff06f          	j	1242c <_fclose_r>

00012548 <__sflush_r>:
   12548:	00c59783          	lh	a5,12(a1)
   1254c:	fe010113          	addi	sp,sp,-32
   12550:	00812c23          	sw	s0,24(sp)
   12554:	01312623          	sw	s3,12(sp)
   12558:	00112e23          	sw	ra,28(sp)
   1255c:	00912a23          	sw	s1,20(sp)
   12560:	01212823          	sw	s2,16(sp)
   12564:	0087f693          	andi	a3,a5,8
   12568:	00058413          	mv	s0,a1
   1256c:	00050993          	mv	s3,a0
   12570:	10069a63          	bnez	a3,12684 <__sflush_r+0x13c>
   12574:	00001737          	lui	a4,0x1
   12578:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   1257c:	0045a683          	lw	a3,4(a1)
   12580:	00e7e7b3          	or	a5,a5,a4
   12584:	00f59623          	sh	a5,12(a1)
   12588:	18d05463          	blez	a3,12710 <__sflush_r+0x1c8>
   1258c:	02842703          	lw	a4,40(s0)
   12590:	0c070a63          	beqz	a4,12664 <__sflush_r+0x11c>
   12594:	0009a483          	lw	s1,0(s3)
   12598:	01079693          	slli	a3,a5,0x10
   1259c:	0009a023          	sw	zero,0(s3)
   125a0:	01379613          	slli	a2,a5,0x13
   125a4:	01c42583          	lw	a1,28(s0)
   125a8:	0106d693          	srli	a3,a3,0x10
   125ac:	16064863          	bltz	a2,1271c <__sflush_r+0x1d4>
   125b0:	00100693          	li	a3,1
   125b4:	00000613          	li	a2,0
   125b8:	00098513          	mv	a0,s3
   125bc:	000700e7          	jalr	a4
   125c0:	fff00793          	li	a5,-1
   125c4:	18f50c63          	beq	a0,a5,1275c <__sflush_r+0x214>
   125c8:	00c45683          	lhu	a3,12(s0)
   125cc:	02842703          	lw	a4,40(s0)
   125d0:	01c42583          	lw	a1,28(s0)
   125d4:	0046f693          	andi	a3,a3,4
   125d8:	00068e63          	beqz	a3,125f4 <__sflush_r+0xac>
   125dc:	00442683          	lw	a3,4(s0)
   125e0:	03042783          	lw	a5,48(s0)
   125e4:	40d50533          	sub	a0,a0,a3
   125e8:	00078663          	beqz	a5,125f4 <__sflush_r+0xac>
   125ec:	03c42783          	lw	a5,60(s0)
   125f0:	40f50533          	sub	a0,a0,a5
   125f4:	00050613          	mv	a2,a0
   125f8:	00000693          	li	a3,0
   125fc:	00098513          	mv	a0,s3
   12600:	000700e7          	jalr	a4
   12604:	fff00793          	li	a5,-1
   12608:	10f51e63          	bne	a0,a5,12724 <__sflush_r+0x1dc>
   1260c:	0009a703          	lw	a4,0(s3)
   12610:	00c41783          	lh	a5,12(s0)
   12614:	16070863          	beqz	a4,12784 <__sflush_r+0x23c>
   12618:	01d00693          	li	a3,29
   1261c:	00d70663          	beq	a4,a3,12628 <__sflush_r+0xe0>
   12620:	01600693          	li	a3,22
   12624:	0cd71463          	bne	a4,a3,126ec <__sflush_r+0x1a4>
   12628:	01042683          	lw	a3,16(s0)
   1262c:	fffff737          	lui	a4,0xfffff
   12630:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffea9c3>
   12634:	00e7f7b3          	and	a5,a5,a4
   12638:	00f41623          	sh	a5,12(s0)
   1263c:	00042223          	sw	zero,4(s0)
   12640:	00d42023          	sw	a3,0(s0)
   12644:	03042583          	lw	a1,48(s0)
   12648:	0099a023          	sw	s1,0(s3)
   1264c:	00058c63          	beqz	a1,12664 <__sflush_r+0x11c>
   12650:	04040793          	addi	a5,s0,64
   12654:	00f58663          	beq	a1,a5,12660 <__sflush_r+0x118>
   12658:	00098513          	mv	a0,s3
   1265c:	2f8000ef          	jal	ra,12954 <_free_r>
   12660:	02042823          	sw	zero,48(s0)
   12664:	00000513          	li	a0,0
   12668:	01c12083          	lw	ra,28(sp)
   1266c:	01812403          	lw	s0,24(sp)
   12670:	01412483          	lw	s1,20(sp)
   12674:	01012903          	lw	s2,16(sp)
   12678:	00c12983          	lw	s3,12(sp)
   1267c:	02010113          	addi	sp,sp,32
   12680:	00008067          	ret
   12684:	0105a903          	lw	s2,16(a1)
   12688:	fc090ee3          	beqz	s2,12664 <__sflush_r+0x11c>
   1268c:	0005a483          	lw	s1,0(a1)
   12690:	01079713          	slli	a4,a5,0x10
   12694:	01075713          	srli	a4,a4,0x10
   12698:	00377713          	andi	a4,a4,3
   1269c:	0125a023          	sw	s2,0(a1)
   126a0:	412484b3          	sub	s1,s1,s2
   126a4:	00000793          	li	a5,0
   126a8:	00071463          	bnez	a4,126b0 <__sflush_r+0x168>
   126ac:	0145a783          	lw	a5,20(a1)
   126b0:	00f42423          	sw	a5,8(s0)
   126b4:	00904863          	bgtz	s1,126c4 <__sflush_r+0x17c>
   126b8:	fadff06f          	j	12664 <__sflush_r+0x11c>
   126bc:	00a90933          	add	s2,s2,a0
   126c0:	fa9052e3          	blez	s1,12664 <__sflush_r+0x11c>
   126c4:	02442783          	lw	a5,36(s0)
   126c8:	01c42583          	lw	a1,28(s0)
   126cc:	00048693          	mv	a3,s1
   126d0:	00090613          	mv	a2,s2
   126d4:	00098513          	mv	a0,s3
   126d8:	000780e7          	jalr	a5
   126dc:	40a484b3          	sub	s1,s1,a0
   126e0:	fca04ee3          	bgtz	a0,126bc <__sflush_r+0x174>
   126e4:	00c45783          	lhu	a5,12(s0)
   126e8:	fff00513          	li	a0,-1
   126ec:	0407e793          	ori	a5,a5,64
   126f0:	01c12083          	lw	ra,28(sp)
   126f4:	00f41623          	sh	a5,12(s0)
   126f8:	01812403          	lw	s0,24(sp)
   126fc:	01412483          	lw	s1,20(sp)
   12700:	01012903          	lw	s2,16(sp)
   12704:	00c12983          	lw	s3,12(sp)
   12708:	02010113          	addi	sp,sp,32
   1270c:	00008067          	ret
   12710:	03c5a703          	lw	a4,60(a1)
   12714:	e6e04ce3          	bgtz	a4,1258c <__sflush_r+0x44>
   12718:	f4dff06f          	j	12664 <__sflush_r+0x11c>
   1271c:	05042503          	lw	a0,80(s0)
   12720:	eb5ff06f          	j	125d4 <__sflush_r+0x8c>
   12724:	00c45783          	lhu	a5,12(s0)
   12728:	fffff737          	lui	a4,0xfffff
   1272c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffea9c3>
   12730:	00e7f7b3          	and	a5,a5,a4
   12734:	01042683          	lw	a3,16(s0)
   12738:	01079793          	slli	a5,a5,0x10
   1273c:	4107d793          	srai	a5,a5,0x10
   12740:	00f41623          	sh	a5,12(s0)
   12744:	00042223          	sw	zero,4(s0)
   12748:	00d42023          	sw	a3,0(s0)
   1274c:	01379713          	slli	a4,a5,0x13
   12750:	ee075ae3          	bgez	a4,12644 <__sflush_r+0xfc>
   12754:	04a42823          	sw	a0,80(s0)
   12758:	eedff06f          	j	12644 <__sflush_r+0xfc>
   1275c:	0009a783          	lw	a5,0(s3)
   12760:	e60784e3          	beqz	a5,125c8 <__sflush_r+0x80>
   12764:	01d00713          	li	a4,29
   12768:	02e78863          	beq	a5,a4,12798 <__sflush_r+0x250>
   1276c:	01600713          	li	a4,22
   12770:	02e78463          	beq	a5,a4,12798 <__sflush_r+0x250>
   12774:	00c45783          	lhu	a5,12(s0)
   12778:	0407e793          	ori	a5,a5,64
   1277c:	00f41623          	sh	a5,12(s0)
   12780:	ee9ff06f          	j	12668 <__sflush_r+0x120>
   12784:	fffff737          	lui	a4,0xfffff
   12788:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffea9c3>
   1278c:	01042683          	lw	a3,16(s0)
   12790:	00e7f7b3          	and	a5,a5,a4
   12794:	fadff06f          	j	12740 <__sflush_r+0x1f8>
   12798:	0099a023          	sw	s1,0(s3)
   1279c:	00000513          	li	a0,0
   127a0:	ec9ff06f          	j	12668 <__sflush_r+0x120>

000127a4 <_fflush_r>:
   127a4:	fe010113          	addi	sp,sp,-32
   127a8:	00812c23          	sw	s0,24(sp)
   127ac:	00112e23          	sw	ra,28(sp)
   127b0:	00050413          	mv	s0,a0
   127b4:	00050663          	beqz	a0,127c0 <_fflush_r+0x1c>
   127b8:	03852783          	lw	a5,56(a0)
   127bc:	02078063          	beqz	a5,127dc <_fflush_r+0x38>
   127c0:	00c59783          	lh	a5,12(a1)
   127c4:	02079663          	bnez	a5,127f0 <_fflush_r+0x4c>
   127c8:	01c12083          	lw	ra,28(sp)
   127cc:	01812403          	lw	s0,24(sp)
   127d0:	00000513          	li	a0,0
   127d4:	02010113          	addi	sp,sp,32
   127d8:	00008067          	ret
   127dc:	00b12623          	sw	a1,12(sp)
   127e0:	910fe0ef          	jal	ra,108f0 <__sinit>
   127e4:	00c12583          	lw	a1,12(sp)
   127e8:	00c59783          	lh	a5,12(a1)
   127ec:	fc078ee3          	beqz	a5,127c8 <_fflush_r+0x24>
   127f0:	00040513          	mv	a0,s0
   127f4:	01812403          	lw	s0,24(sp)
   127f8:	01c12083          	lw	ra,28(sp)
   127fc:	02010113          	addi	sp,sp,32
   12800:	d49ff06f          	j	12548 <__sflush_r>

00012804 <fflush>:
   12804:	00050593          	mv	a1,a0
   12808:	00050663          	beqz	a0,12814 <fflush+0x10>
   1280c:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   12810:	f95ff06f          	j	127a4 <_fflush_r>
   12814:	0301a503          	lw	a0,48(gp) # 14dd0 <_global_impure_ptr>
   12818:	000125b7          	lui	a1,0x12
   1281c:	7a458593          	addi	a1,a1,1956 # 127a4 <_fflush_r>
   12820:	ec4fe06f          	j	10ee4 <_fwalk_reent>

00012824 <_malloc_trim_r>:
   12824:	fe010113          	addi	sp,sp,-32
   12828:	01312623          	sw	s3,12(sp)
   1282c:	00812c23          	sw	s0,24(sp)
   12830:	00912a23          	sw	s1,20(sp)
   12834:	01212823          	sw	s2,16(sp)
   12838:	01412423          	sw	s4,8(sp)
   1283c:	00112e23          	sw	ra,28(sp)
   12840:	00058a13          	mv	s4,a1
   12844:	00050913          	mv	s2,a0
   12848:	c2818993          	addi	s3,gp,-984 # 149c8 <__malloc_av_>
   1284c:	9f4ff0ef          	jal	ra,11a40 <__malloc_lock>
   12850:	0089a703          	lw	a4,8(s3)
   12854:	000017b7          	lui	a5,0x1
   12858:	fef78413          	addi	s0,a5,-17 # fef <register_fini-0xf085>
   1285c:	00472483          	lw	s1,4(a4)
   12860:	41440433          	sub	s0,s0,s4
   12864:	ffc4f493          	andi	s1,s1,-4
   12868:	00940433          	add	s0,s0,s1
   1286c:	00c45413          	srli	s0,s0,0xc
   12870:	fff40413          	addi	s0,s0,-1
   12874:	00c41413          	slli	s0,s0,0xc
   12878:	00f44e63          	blt	s0,a5,12894 <_malloc_trim_r+0x70>
   1287c:	00000593          	li	a1,0
   12880:	00090513          	mv	a0,s2
   12884:	f38ff0ef          	jal	ra,11fbc <_sbrk_r>
   12888:	0089a783          	lw	a5,8(s3)
   1288c:	009787b3          	add	a5,a5,s1
   12890:	02f50863          	beq	a0,a5,128c0 <_malloc_trim_r+0x9c>
   12894:	00090513          	mv	a0,s2
   12898:	9acff0ef          	jal	ra,11a44 <__malloc_unlock>
   1289c:	01c12083          	lw	ra,28(sp)
   128a0:	01812403          	lw	s0,24(sp)
   128a4:	01412483          	lw	s1,20(sp)
   128a8:	01012903          	lw	s2,16(sp)
   128ac:	00c12983          	lw	s3,12(sp)
   128b0:	00812a03          	lw	s4,8(sp)
   128b4:	00000513          	li	a0,0
   128b8:	02010113          	addi	sp,sp,32
   128bc:	00008067          	ret
   128c0:	408005b3          	neg	a1,s0
   128c4:	00090513          	mv	a0,s2
   128c8:	ef4ff0ef          	jal	ra,11fbc <_sbrk_r>
   128cc:	fff00793          	li	a5,-1
   128d0:	04f50863          	beq	a0,a5,12920 <_malloc_trim_r+0xfc>
   128d4:	07018793          	addi	a5,gp,112 # 14e10 <__malloc_current_mallinfo>
   128d8:	0007a703          	lw	a4,0(a5)
   128dc:	0089a683          	lw	a3,8(s3)
   128e0:	408484b3          	sub	s1,s1,s0
   128e4:	0014e493          	ori	s1,s1,1
   128e8:	40870433          	sub	s0,a4,s0
   128ec:	00090513          	mv	a0,s2
   128f0:	0096a223          	sw	s1,4(a3)
   128f4:	0087a023          	sw	s0,0(a5)
   128f8:	94cff0ef          	jal	ra,11a44 <__malloc_unlock>
   128fc:	01c12083          	lw	ra,28(sp)
   12900:	01812403          	lw	s0,24(sp)
   12904:	01412483          	lw	s1,20(sp)
   12908:	01012903          	lw	s2,16(sp)
   1290c:	00c12983          	lw	s3,12(sp)
   12910:	00812a03          	lw	s4,8(sp)
   12914:	00100513          	li	a0,1
   12918:	02010113          	addi	sp,sp,32
   1291c:	00008067          	ret
   12920:	00000593          	li	a1,0
   12924:	00090513          	mv	a0,s2
   12928:	e94ff0ef          	jal	ra,11fbc <_sbrk_r>
   1292c:	0089a703          	lw	a4,8(s3)
   12930:	00f00693          	li	a3,15
   12934:	40e507b3          	sub	a5,a0,a4
   12938:	f4f6dee3          	bge	a3,a5,12894 <_malloc_trim_r+0x70>
   1293c:	03c1a683          	lw	a3,60(gp) # 14ddc <__malloc_sbrk_base>
   12940:	0017e793          	ori	a5,a5,1
   12944:	00f72223          	sw	a5,4(a4)
   12948:	40d50533          	sub	a0,a0,a3
   1294c:	06a1a823          	sw	a0,112(gp) # 14e10 <__malloc_current_mallinfo>
   12950:	f45ff06f          	j	12894 <_malloc_trim_r+0x70>

00012954 <_free_r>:
   12954:	12058463          	beqz	a1,12a7c <_free_r+0x128>
   12958:	ff010113          	addi	sp,sp,-16
   1295c:	00812423          	sw	s0,8(sp)
   12960:	00912223          	sw	s1,4(sp)
   12964:	00058413          	mv	s0,a1
   12968:	00050493          	mv	s1,a0
   1296c:	00112623          	sw	ra,12(sp)
   12970:	8d0ff0ef          	jal	ra,11a40 <__malloc_lock>
   12974:	ffc42803          	lw	a6,-4(s0)
   12978:	ff840713          	addi	a4,s0,-8
   1297c:	ffe87793          	andi	a5,a6,-2
   12980:	00f70633          	add	a2,a4,a5
   12984:	c2818593          	addi	a1,gp,-984 # 149c8 <__malloc_av_>
   12988:	00462683          	lw	a3,4(a2)
   1298c:	0085a503          	lw	a0,8(a1)
   12990:	ffc6f693          	andi	a3,a3,-4
   12994:	1ac50663          	beq	a0,a2,12b40 <_free_r+0x1ec>
   12998:	00d62223          	sw	a3,4(a2)
   1299c:	00187813          	andi	a6,a6,1
   129a0:	00d60533          	add	a0,a2,a3
   129a4:	08081e63          	bnez	a6,12a40 <_free_r+0xec>
   129a8:	ff842303          	lw	t1,-8(s0)
   129ac:	00452803          	lw	a6,4(a0)
   129b0:	40670733          	sub	a4,a4,t1
   129b4:	00872883          	lw	a7,8(a4)
   129b8:	c3018513          	addi	a0,gp,-976 # 149d0 <__malloc_av_+0x8>
   129bc:	006787b3          	add	a5,a5,t1
   129c0:	00187813          	andi	a6,a6,1
   129c4:	12a88e63          	beq	a7,a0,12b00 <_free_r+0x1ac>
   129c8:	00c72303          	lw	t1,12(a4)
   129cc:	0068a623          	sw	t1,12(a7)
   129d0:	01132423          	sw	a7,8(t1)
   129d4:	1c080e63          	beqz	a6,12bb0 <_free_r+0x25c>
   129d8:	0017e693          	ori	a3,a5,1
   129dc:	00d72223          	sw	a3,4(a4)
   129e0:	00f62023          	sw	a5,0(a2)
   129e4:	1ff00693          	li	a3,511
   129e8:	0af6e663          	bltu	a3,a5,12a94 <_free_r+0x140>
   129ec:	ff87f693          	andi	a3,a5,-8
   129f0:	00868693          	addi	a3,a3,8
   129f4:	0045a503          	lw	a0,4(a1)
   129f8:	00d586b3          	add	a3,a1,a3
   129fc:	0006a603          	lw	a2,0(a3)
   12a00:	0057d813          	srli	a6,a5,0x5
   12a04:	00100793          	li	a5,1
   12a08:	010797b3          	sll	a5,a5,a6
   12a0c:	00a7e7b3          	or	a5,a5,a0
   12a10:	ff868513          	addi	a0,a3,-8
   12a14:	00a72623          	sw	a0,12(a4)
   12a18:	00c72423          	sw	a2,8(a4)
   12a1c:	00f5a223          	sw	a5,4(a1)
   12a20:	00e6a023          	sw	a4,0(a3)
   12a24:	00e62623          	sw	a4,12(a2)
   12a28:	00812403          	lw	s0,8(sp)
   12a2c:	00c12083          	lw	ra,12(sp)
   12a30:	00048513          	mv	a0,s1
   12a34:	00412483          	lw	s1,4(sp)
   12a38:	01010113          	addi	sp,sp,16
   12a3c:	808ff06f          	j	11a44 <__malloc_unlock>
   12a40:	00452503          	lw	a0,4(a0)
   12a44:	00157513          	andi	a0,a0,1
   12a48:	02051c63          	bnez	a0,12a80 <_free_r+0x12c>
   12a4c:	00d787b3          	add	a5,a5,a3
   12a50:	c3018513          	addi	a0,gp,-976 # 149d0 <__malloc_av_+0x8>
   12a54:	00862683          	lw	a3,8(a2)
   12a58:	0017e893          	ori	a7,a5,1
   12a5c:	00f70833          	add	a6,a4,a5
   12a60:	16a68463          	beq	a3,a0,12bc8 <_free_r+0x274>
   12a64:	00c62603          	lw	a2,12(a2)
   12a68:	00c6a623          	sw	a2,12(a3)
   12a6c:	00d62423          	sw	a3,8(a2)
   12a70:	01172223          	sw	a7,4(a4)
   12a74:	00f82023          	sw	a5,0(a6)
   12a78:	f6dff06f          	j	129e4 <_free_r+0x90>
   12a7c:	00008067          	ret
   12a80:	0017e693          	ori	a3,a5,1
   12a84:	fed42e23          	sw	a3,-4(s0)
   12a88:	00f62023          	sw	a5,0(a2)
   12a8c:	1ff00693          	li	a3,511
   12a90:	f4f6fee3          	bgeu	a3,a5,129ec <_free_r+0x98>
   12a94:	0097d693          	srli	a3,a5,0x9
   12a98:	00400613          	li	a2,4
   12a9c:	0ed66863          	bltu	a2,a3,12b8c <_free_r+0x238>
   12aa0:	0067d693          	srli	a3,a5,0x6
   12aa4:	03968813          	addi	a6,a3,57
   12aa8:	03868613          	addi	a2,a3,56
   12aac:	00381813          	slli	a6,a6,0x3
   12ab0:	01058833          	add	a6,a1,a6
   12ab4:	00082683          	lw	a3,0(a6)
   12ab8:	ff880813          	addi	a6,a6,-8
   12abc:	12d80463          	beq	a6,a3,12be4 <_free_r+0x290>
   12ac0:	0046a603          	lw	a2,4(a3)
   12ac4:	ffc67613          	andi	a2,a2,-4
   12ac8:	00c7f663          	bgeu	a5,a2,12ad4 <_free_r+0x180>
   12acc:	0086a683          	lw	a3,8(a3)
   12ad0:	fed818e3          	bne	a6,a3,12ac0 <_free_r+0x16c>
   12ad4:	00c6a803          	lw	a6,12(a3)
   12ad8:	01072623          	sw	a6,12(a4)
   12adc:	00d72423          	sw	a3,8(a4)
   12ae0:	00812403          	lw	s0,8(sp)
   12ae4:	00c12083          	lw	ra,12(sp)
   12ae8:	00e82423          	sw	a4,8(a6)
   12aec:	00048513          	mv	a0,s1
   12af0:	00412483          	lw	s1,4(sp)
   12af4:	00e6a623          	sw	a4,12(a3)
   12af8:	01010113          	addi	sp,sp,16
   12afc:	f49fe06f          	j	11a44 <__malloc_unlock>
   12b00:	14081263          	bnez	a6,12c44 <_free_r+0x2f0>
   12b04:	00c62583          	lw	a1,12(a2)
   12b08:	00862603          	lw	a2,8(a2)
   12b0c:	00f687b3          	add	a5,a3,a5
   12b10:	00812403          	lw	s0,8(sp)
   12b14:	00b62623          	sw	a1,12(a2)
   12b18:	00c5a423          	sw	a2,8(a1)
   12b1c:	0017e693          	ori	a3,a5,1
   12b20:	00c12083          	lw	ra,12(sp)
   12b24:	00d72223          	sw	a3,4(a4)
   12b28:	00048513          	mv	a0,s1
   12b2c:	00f70733          	add	a4,a4,a5
   12b30:	00412483          	lw	s1,4(sp)
   12b34:	00f72023          	sw	a5,0(a4)
   12b38:	01010113          	addi	sp,sp,16
   12b3c:	f09fe06f          	j	11a44 <__malloc_unlock>
   12b40:	00187813          	andi	a6,a6,1
   12b44:	00d787b3          	add	a5,a5,a3
   12b48:	02081063          	bnez	a6,12b68 <_free_r+0x214>
   12b4c:	ff842503          	lw	a0,-8(s0)
   12b50:	40a70733          	sub	a4,a4,a0
   12b54:	00c72683          	lw	a3,12(a4)
   12b58:	00872603          	lw	a2,8(a4)
   12b5c:	00a787b3          	add	a5,a5,a0
   12b60:	00d62623          	sw	a3,12(a2)
   12b64:	00c6a423          	sw	a2,8(a3)
   12b68:	0017e613          	ori	a2,a5,1
   12b6c:	0401a683          	lw	a3,64(gp) # 14de0 <__malloc_trim_threshold>
   12b70:	00c72223          	sw	a2,4(a4)
   12b74:	00e5a423          	sw	a4,8(a1)
   12b78:	ead7e8e3          	bltu	a5,a3,12a28 <_free_r+0xd4>
   12b7c:	04c1a583          	lw	a1,76(gp) # 14dec <__malloc_top_pad>
   12b80:	00048513          	mv	a0,s1
   12b84:	ca1ff0ef          	jal	ra,12824 <_malloc_trim_r>
   12b88:	ea1ff06f          	j	12a28 <_free_r+0xd4>
   12b8c:	01400613          	li	a2,20
   12b90:	02d67463          	bgeu	a2,a3,12bb8 <_free_r+0x264>
   12b94:	05400613          	li	a2,84
   12b98:	06d66463          	bltu	a2,a3,12c00 <_free_r+0x2ac>
   12b9c:	00c7d693          	srli	a3,a5,0xc
   12ba0:	06f68813          	addi	a6,a3,111
   12ba4:	06e68613          	addi	a2,a3,110
   12ba8:	00381813          	slli	a6,a6,0x3
   12bac:	f05ff06f          	j	12ab0 <_free_r+0x15c>
   12bb0:	00d787b3          	add	a5,a5,a3
   12bb4:	ea1ff06f          	j	12a54 <_free_r+0x100>
   12bb8:	05c68813          	addi	a6,a3,92
   12bbc:	05b68613          	addi	a2,a3,91
   12bc0:	00381813          	slli	a6,a6,0x3
   12bc4:	eedff06f          	j	12ab0 <_free_r+0x15c>
   12bc8:	00e5aa23          	sw	a4,20(a1)
   12bcc:	00e5a823          	sw	a4,16(a1)
   12bd0:	00a72623          	sw	a0,12(a4)
   12bd4:	00a72423          	sw	a0,8(a4)
   12bd8:	01172223          	sw	a7,4(a4)
   12bdc:	00f82023          	sw	a5,0(a6)
   12be0:	e49ff06f          	j	12a28 <_free_r+0xd4>
   12be4:	0045a503          	lw	a0,4(a1)
   12be8:	40265613          	srai	a2,a2,0x2
   12bec:	00100793          	li	a5,1
   12bf0:	00c79633          	sll	a2,a5,a2
   12bf4:	00a66633          	or	a2,a2,a0
   12bf8:	00c5a223          	sw	a2,4(a1)
   12bfc:	eddff06f          	j	12ad8 <_free_r+0x184>
   12c00:	15400613          	li	a2,340
   12c04:	00d66c63          	bltu	a2,a3,12c1c <_free_r+0x2c8>
   12c08:	00f7d693          	srli	a3,a5,0xf
   12c0c:	07868813          	addi	a6,a3,120
   12c10:	07768613          	addi	a2,a3,119
   12c14:	00381813          	slli	a6,a6,0x3
   12c18:	e99ff06f          	j	12ab0 <_free_r+0x15c>
   12c1c:	55400613          	li	a2,1364
   12c20:	00d66c63          	bltu	a2,a3,12c38 <_free_r+0x2e4>
   12c24:	0127d693          	srli	a3,a5,0x12
   12c28:	07d68813          	addi	a6,a3,125
   12c2c:	07c68613          	addi	a2,a3,124
   12c30:	00381813          	slli	a6,a6,0x3
   12c34:	e7dff06f          	j	12ab0 <_free_r+0x15c>
   12c38:	3f800813          	li	a6,1016
   12c3c:	07e00613          	li	a2,126
   12c40:	e71ff06f          	j	12ab0 <_free_r+0x15c>
   12c44:	0017e693          	ori	a3,a5,1
   12c48:	00d72223          	sw	a3,4(a4)
   12c4c:	00f62023          	sw	a5,0(a2)
   12c50:	dd9ff06f          	j	12a28 <_free_r+0xd4>

00012c54 <_lseek_r>:
   12c54:	ff010113          	addi	sp,sp,-16
   12c58:	00058713          	mv	a4,a1
   12c5c:	00812423          	sw	s0,8(sp)
   12c60:	00912223          	sw	s1,4(sp)
   12c64:	00060593          	mv	a1,a2
   12c68:	00050413          	mv	s0,a0
   12c6c:	00068613          	mv	a2,a3
   12c70:	00070513          	mv	a0,a4
   12c74:	00112623          	sw	ra,12(sp)
   12c78:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   12c7c:	5ec000ef          	jal	ra,13268 <_lseek>
   12c80:	fff00793          	li	a5,-1
   12c84:	00f50c63          	beq	a0,a5,12c9c <_lseek_r+0x48>
   12c88:	00c12083          	lw	ra,12(sp)
   12c8c:	00812403          	lw	s0,8(sp)
   12c90:	00412483          	lw	s1,4(sp)
   12c94:	01010113          	addi	sp,sp,16
   12c98:	00008067          	ret
   12c9c:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   12ca0:	fe0784e3          	beqz	a5,12c88 <_lseek_r+0x34>
   12ca4:	00c12083          	lw	ra,12(sp)
   12ca8:	00f42023          	sw	a5,0(s0)
   12cac:	00812403          	lw	s0,8(sp)
   12cb0:	00412483          	lw	s1,4(sp)
   12cb4:	01010113          	addi	sp,sp,16
   12cb8:	00008067          	ret

00012cbc <__swhatbuf_r>:
   12cbc:	f9010113          	addi	sp,sp,-112
   12cc0:	06812423          	sw	s0,104(sp)
   12cc4:	00058413          	mv	s0,a1
   12cc8:	00e59583          	lh	a1,14(a1)
   12ccc:	06912223          	sw	s1,100(sp)
   12cd0:	07212023          	sw	s2,96(sp)
   12cd4:	06112623          	sw	ra,108(sp)
   12cd8:	00060493          	mv	s1,a2
   12cdc:	00068913          	mv	s2,a3
   12ce0:	0405ca63          	bltz	a1,12d34 <__swhatbuf_r+0x78>
   12ce4:	00810613          	addi	a2,sp,8
   12ce8:	374000ef          	jal	ra,1305c <_fstat_r>
   12cec:	04054463          	bltz	a0,12d34 <__swhatbuf_r+0x78>
   12cf0:	00c12703          	lw	a4,12(sp)
   12cf4:	0000f7b7          	lui	a5,0xf
   12cf8:	06c12083          	lw	ra,108(sp)
   12cfc:	00e7f7b3          	and	a5,a5,a4
   12d00:	ffffe737          	lui	a4,0xffffe
   12d04:	00e787b3          	add	a5,a5,a4
   12d08:	06812403          	lw	s0,104(sp)
   12d0c:	0017b793          	seqz	a5,a5
   12d10:	00f92023          	sw	a5,0(s2)
   12d14:	40000793          	li	a5,1024
   12d18:	00f4a023          	sw	a5,0(s1)
   12d1c:	00001537          	lui	a0,0x1
   12d20:	06412483          	lw	s1,100(sp)
   12d24:	06012903          	lw	s2,96(sp)
   12d28:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf874>
   12d2c:	07010113          	addi	sp,sp,112
   12d30:	00008067          	ret
   12d34:	00c45783          	lhu	a5,12(s0)
   12d38:	00092023          	sw	zero,0(s2)
   12d3c:	0807f793          	andi	a5,a5,128
   12d40:	02078463          	beqz	a5,12d68 <__swhatbuf_r+0xac>
   12d44:	06c12083          	lw	ra,108(sp)
   12d48:	06812403          	lw	s0,104(sp)
   12d4c:	04000793          	li	a5,64
   12d50:	00f4a023          	sw	a5,0(s1)
   12d54:	06012903          	lw	s2,96(sp)
   12d58:	06412483          	lw	s1,100(sp)
   12d5c:	00000513          	li	a0,0
   12d60:	07010113          	addi	sp,sp,112
   12d64:	00008067          	ret
   12d68:	06c12083          	lw	ra,108(sp)
   12d6c:	06812403          	lw	s0,104(sp)
   12d70:	40000793          	li	a5,1024
   12d74:	00f4a023          	sw	a5,0(s1)
   12d78:	06012903          	lw	s2,96(sp)
   12d7c:	06412483          	lw	s1,100(sp)
   12d80:	00000513          	li	a0,0
   12d84:	07010113          	addi	sp,sp,112
   12d88:	00008067          	ret

00012d8c <__smakebuf_r>:
   12d8c:	00c5d783          	lhu	a5,12(a1)
   12d90:	fe010113          	addi	sp,sp,-32
   12d94:	00812c23          	sw	s0,24(sp)
   12d98:	00112e23          	sw	ra,28(sp)
   12d9c:	00912a23          	sw	s1,20(sp)
   12da0:	01212823          	sw	s2,16(sp)
   12da4:	0027f793          	andi	a5,a5,2
   12da8:	00058413          	mv	s0,a1
   12dac:	02078863          	beqz	a5,12ddc <__smakebuf_r+0x50>
   12db0:	04358793          	addi	a5,a1,67
   12db4:	00f5a023          	sw	a5,0(a1)
   12db8:	00f5a823          	sw	a5,16(a1)
   12dbc:	00100793          	li	a5,1
   12dc0:	00f5aa23          	sw	a5,20(a1)
   12dc4:	01c12083          	lw	ra,28(sp)
   12dc8:	01812403          	lw	s0,24(sp)
   12dcc:	01412483          	lw	s1,20(sp)
   12dd0:	01012903          	lw	s2,16(sp)
   12dd4:	02010113          	addi	sp,sp,32
   12dd8:	00008067          	ret
   12ddc:	00c10693          	addi	a3,sp,12
   12de0:	00810613          	addi	a2,sp,8
   12de4:	00050493          	mv	s1,a0
   12de8:	ed5ff0ef          	jal	ra,12cbc <__swhatbuf_r>
   12dec:	00812583          	lw	a1,8(sp)
   12df0:	00050913          	mv	s2,a0
   12df4:	00048513          	mv	a0,s1
   12df8:	9a0fe0ef          	jal	ra,10f98 <_malloc_r>
   12dfc:	00c41783          	lh	a5,12(s0)
   12e00:	04050863          	beqz	a0,12e50 <__smakebuf_r+0xc4>
   12e04:	00010737          	lui	a4,0x10
   12e08:	5d070713          	addi	a4,a4,1488 # 105d0 <_cleanup_r>
   12e0c:	02e4ae23          	sw	a4,60(s1)
   12e10:	00812703          	lw	a4,8(sp)
   12e14:	00c12683          	lw	a3,12(sp)
   12e18:	0807e793          	ori	a5,a5,128
   12e1c:	00f41623          	sh	a5,12(s0)
   12e20:	00a42023          	sw	a0,0(s0)
   12e24:	00a42823          	sw	a0,16(s0)
   12e28:	00e42a23          	sw	a4,20(s0)
   12e2c:	04069863          	bnez	a3,12e7c <__smakebuf_r+0xf0>
   12e30:	0127e7b3          	or	a5,a5,s2
   12e34:	01c12083          	lw	ra,28(sp)
   12e38:	00f41623          	sh	a5,12(s0)
   12e3c:	01812403          	lw	s0,24(sp)
   12e40:	01412483          	lw	s1,20(sp)
   12e44:	01012903          	lw	s2,16(sp)
   12e48:	02010113          	addi	sp,sp,32
   12e4c:	00008067          	ret
   12e50:	2007f713          	andi	a4,a5,512
   12e54:	f60718e3          	bnez	a4,12dc4 <__smakebuf_r+0x38>
   12e58:	ffc7f793          	andi	a5,a5,-4
   12e5c:	0027e793          	ori	a5,a5,2
   12e60:	04340713          	addi	a4,s0,67
   12e64:	00f41623          	sh	a5,12(s0)
   12e68:	00100793          	li	a5,1
   12e6c:	00e42023          	sw	a4,0(s0)
   12e70:	00e42823          	sw	a4,16(s0)
   12e74:	00f42a23          	sw	a5,20(s0)
   12e78:	f4dff06f          	j	12dc4 <__smakebuf_r+0x38>
   12e7c:	00e41583          	lh	a1,14(s0)
   12e80:	00048513          	mv	a0,s1
   12e84:	23c000ef          	jal	ra,130c0 <_isatty_r>
   12e88:	00051663          	bnez	a0,12e94 <__smakebuf_r+0x108>
   12e8c:	00c41783          	lh	a5,12(s0)
   12e90:	fa1ff06f          	j	12e30 <__smakebuf_r+0xa4>
   12e94:	00c45703          	lhu	a4,12(s0)
   12e98:	ffc77713          	andi	a4,a4,-4
   12e9c:	00176713          	ori	a4,a4,1
   12ea0:	01071793          	slli	a5,a4,0x10
   12ea4:	4107d793          	srai	a5,a5,0x10
   12ea8:	f89ff06f          	j	12e30 <__smakebuf_r+0xa4>

00012eac <_read_r>:
   12eac:	ff010113          	addi	sp,sp,-16
   12eb0:	00058713          	mv	a4,a1
   12eb4:	00812423          	sw	s0,8(sp)
   12eb8:	00912223          	sw	s1,4(sp)
   12ebc:	00060593          	mv	a1,a2
   12ec0:	00050413          	mv	s0,a0
   12ec4:	00068613          	mv	a2,a3
   12ec8:	00070513          	mv	a0,a4
   12ecc:	00112623          	sw	ra,12(sp)
   12ed0:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   12ed4:	3e4000ef          	jal	ra,132b8 <_read>
   12ed8:	fff00793          	li	a5,-1
   12edc:	00f50c63          	beq	a0,a5,12ef4 <_read_r+0x48>
   12ee0:	00c12083          	lw	ra,12(sp)
   12ee4:	00812403          	lw	s0,8(sp)
   12ee8:	00412483          	lw	s1,4(sp)
   12eec:	01010113          	addi	sp,sp,16
   12ef0:	00008067          	ret
   12ef4:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   12ef8:	fe0784e3          	beqz	a5,12ee0 <_read_r+0x34>
   12efc:	00c12083          	lw	ra,12(sp)
   12f00:	00f42023          	sw	a5,0(s0)
   12f04:	00812403          	lw	s0,8(sp)
   12f08:	00412483          	lw	s1,4(sp)
   12f0c:	01010113          	addi	sp,sp,16
   12f10:	00008067          	ret

00012f14 <cleanup_glue>:
   12f14:	ff010113          	addi	sp,sp,-16
   12f18:	00812423          	sw	s0,8(sp)
   12f1c:	00058413          	mv	s0,a1
   12f20:	0005a583          	lw	a1,0(a1)
   12f24:	00912223          	sw	s1,4(sp)
   12f28:	00112623          	sw	ra,12(sp)
   12f2c:	00050493          	mv	s1,a0
   12f30:	00058463          	beqz	a1,12f38 <cleanup_glue+0x24>
   12f34:	fe1ff0ef          	jal	ra,12f14 <cleanup_glue>
   12f38:	00040593          	mv	a1,s0
   12f3c:	00812403          	lw	s0,8(sp)
   12f40:	00c12083          	lw	ra,12(sp)
   12f44:	00048513          	mv	a0,s1
   12f48:	00412483          	lw	s1,4(sp)
   12f4c:	01010113          	addi	sp,sp,16
   12f50:	a05ff06f          	j	12954 <_free_r>

00012f54 <_reclaim_reent>:
   12f54:	0381a783          	lw	a5,56(gp) # 14dd8 <_impure_ptr>
   12f58:	10a78063          	beq	a5,a0,13058 <_reclaim_reent+0x104>
   12f5c:	04c52583          	lw	a1,76(a0)
   12f60:	fe010113          	addi	sp,sp,-32
   12f64:	00912a23          	sw	s1,20(sp)
   12f68:	00112e23          	sw	ra,28(sp)
   12f6c:	00812c23          	sw	s0,24(sp)
   12f70:	01212823          	sw	s2,16(sp)
   12f74:	01312623          	sw	s3,12(sp)
   12f78:	00050493          	mv	s1,a0
   12f7c:	04058063          	beqz	a1,12fbc <_reclaim_reent+0x68>
   12f80:	00000913          	li	s2,0
   12f84:	08000993          	li	s3,128
   12f88:	012587b3          	add	a5,a1,s2
   12f8c:	0007a403          	lw	s0,0(a5) # f000 <register_fini-0x1074>
   12f90:	00040e63          	beqz	s0,12fac <_reclaim_reent+0x58>
   12f94:	00040593          	mv	a1,s0
   12f98:	00042403          	lw	s0,0(s0)
   12f9c:	00048513          	mv	a0,s1
   12fa0:	9b5ff0ef          	jal	ra,12954 <_free_r>
   12fa4:	fe0418e3          	bnez	s0,12f94 <_reclaim_reent+0x40>
   12fa8:	04c4a583          	lw	a1,76(s1)
   12fac:	00490913          	addi	s2,s2,4
   12fb0:	fd391ce3          	bne	s2,s3,12f88 <_reclaim_reent+0x34>
   12fb4:	00048513          	mv	a0,s1
   12fb8:	99dff0ef          	jal	ra,12954 <_free_r>
   12fbc:	0404a583          	lw	a1,64(s1)
   12fc0:	00058663          	beqz	a1,12fcc <_reclaim_reent+0x78>
   12fc4:	00048513          	mv	a0,s1
   12fc8:	98dff0ef          	jal	ra,12954 <_free_r>
   12fcc:	1484a403          	lw	s0,328(s1)
   12fd0:	02040063          	beqz	s0,12ff0 <_reclaim_reent+0x9c>
   12fd4:	14c48913          	addi	s2,s1,332
   12fd8:	01240c63          	beq	s0,s2,12ff0 <_reclaim_reent+0x9c>
   12fdc:	00040593          	mv	a1,s0
   12fe0:	00042403          	lw	s0,0(s0)
   12fe4:	00048513          	mv	a0,s1
   12fe8:	96dff0ef          	jal	ra,12954 <_free_r>
   12fec:	fe8918e3          	bne	s2,s0,12fdc <_reclaim_reent+0x88>
   12ff0:	0544a583          	lw	a1,84(s1)
   12ff4:	00058663          	beqz	a1,13000 <_reclaim_reent+0xac>
   12ff8:	00048513          	mv	a0,s1
   12ffc:	959ff0ef          	jal	ra,12954 <_free_r>
   13000:	0384a783          	lw	a5,56(s1)
   13004:	02078c63          	beqz	a5,1303c <_reclaim_reent+0xe8>
   13008:	03c4a783          	lw	a5,60(s1)
   1300c:	00048513          	mv	a0,s1
   13010:	000780e7          	jalr	a5
   13014:	2e04a583          	lw	a1,736(s1)
   13018:	02058263          	beqz	a1,1303c <_reclaim_reent+0xe8>
   1301c:	01812403          	lw	s0,24(sp)
   13020:	01c12083          	lw	ra,28(sp)
   13024:	01012903          	lw	s2,16(sp)
   13028:	00c12983          	lw	s3,12(sp)
   1302c:	00048513          	mv	a0,s1
   13030:	01412483          	lw	s1,20(sp)
   13034:	02010113          	addi	sp,sp,32
   13038:	eddff06f          	j	12f14 <cleanup_glue>
   1303c:	01c12083          	lw	ra,28(sp)
   13040:	01812403          	lw	s0,24(sp)
   13044:	01412483          	lw	s1,20(sp)
   13048:	01012903          	lw	s2,16(sp)
   1304c:	00c12983          	lw	s3,12(sp)
   13050:	02010113          	addi	sp,sp,32
   13054:	00008067          	ret
   13058:	00008067          	ret

0001305c <_fstat_r>:
   1305c:	ff010113          	addi	sp,sp,-16
   13060:	00058713          	mv	a4,a1
   13064:	00812423          	sw	s0,8(sp)
   13068:	00912223          	sw	s1,4(sp)
   1306c:	00050413          	mv	s0,a0
   13070:	00060593          	mv	a1,a2
   13074:	00070513          	mv	a0,a4
   13078:	00112623          	sw	ra,12(sp)
   1307c:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   13080:	138000ef          	jal	ra,131b8 <_fstat>
   13084:	fff00793          	li	a5,-1
   13088:	00f50c63          	beq	a0,a5,130a0 <_fstat_r+0x44>
   1308c:	00c12083          	lw	ra,12(sp)
   13090:	00812403          	lw	s0,8(sp)
   13094:	00412483          	lw	s1,4(sp)
   13098:	01010113          	addi	sp,sp,16
   1309c:	00008067          	ret
   130a0:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   130a4:	fe0784e3          	beqz	a5,1308c <_fstat_r+0x30>
   130a8:	00c12083          	lw	ra,12(sp)
   130ac:	00f42023          	sw	a5,0(s0)
   130b0:	00812403          	lw	s0,8(sp)
   130b4:	00412483          	lw	s1,4(sp)
   130b8:	01010113          	addi	sp,sp,16
   130bc:	00008067          	ret

000130c0 <_isatty_r>:
   130c0:	ff010113          	addi	sp,sp,-16
   130c4:	00812423          	sw	s0,8(sp)
   130c8:	00912223          	sw	s1,4(sp)
   130cc:	00050413          	mv	s0,a0
   130d0:	00058513          	mv	a0,a1
   130d4:	00112623          	sw	ra,12(sp)
   130d8:	0801ac23          	sw	zero,152(gp) # 14e38 <errno>
   130dc:	14c000ef          	jal	ra,13228 <_isatty>
   130e0:	fff00793          	li	a5,-1
   130e4:	00f50c63          	beq	a0,a5,130fc <_isatty_r+0x3c>
   130e8:	00c12083          	lw	ra,12(sp)
   130ec:	00812403          	lw	s0,8(sp)
   130f0:	00412483          	lw	s1,4(sp)
   130f4:	01010113          	addi	sp,sp,16
   130f8:	00008067          	ret
   130fc:	0981a783          	lw	a5,152(gp) # 14e38 <errno>
   13100:	fe0784e3          	beqz	a5,130e8 <_isatty_r+0x28>
   13104:	00c12083          	lw	ra,12(sp)
   13108:	00f42023          	sw	a5,0(s0)
   1310c:	00812403          	lw	s0,8(sp)
   13110:	00412483          	lw	s1,4(sp)
   13114:	01010113          	addi	sp,sp,16
   13118:	00008067          	ret

0001311c <_close>:
   1311c:	ff010113          	addi	sp,sp,-16
   13120:	00112623          	sw	ra,12(sp)
   13124:	00812423          	sw	s0,8(sp)
   13128:	00000593          	li	a1,0
   1312c:	00000613          	li	a2,0
   13130:	00000693          	li	a3,0
   13134:	00000713          	li	a4,0
   13138:	00000793          	li	a5,0
   1313c:	03900893          	li	a7,57
   13140:	00000073          	ecall
   13144:	00050413          	mv	s0,a0
   13148:	00054c63          	bltz	a0,13160 <_close+0x44>
   1314c:	00c12083          	lw	ra,12(sp)
   13150:	00040513          	mv	a0,s0
   13154:	00812403          	lw	s0,8(sp)
   13158:	01010113          	addi	sp,sp,16
   1315c:	00008067          	ret
   13160:	40800433          	neg	s0,s0
   13164:	334000ef          	jal	ra,13498 <__errno>
   13168:	00852023          	sw	s0,0(a0)
   1316c:	fff00413          	li	s0,-1
   13170:	fddff06f          	j	1314c <_close+0x30>

00013174 <_exit>:
   13174:	00000593          	li	a1,0
   13178:	00000613          	li	a2,0
   1317c:	00000693          	li	a3,0
   13180:	00000713          	li	a4,0
   13184:	00000793          	li	a5,0
   13188:	05d00893          	li	a7,93
   1318c:	00000073          	ecall
   13190:	00054463          	bltz	a0,13198 <_exit+0x24>
   13194:	0000006f          	j	13194 <_exit+0x20>
   13198:	ff010113          	addi	sp,sp,-16
   1319c:	00812423          	sw	s0,8(sp)
   131a0:	00050413          	mv	s0,a0
   131a4:	00112623          	sw	ra,12(sp)
   131a8:	40800433          	neg	s0,s0
   131ac:	2ec000ef          	jal	ra,13498 <__errno>
   131b0:	00852023          	sw	s0,0(a0)
   131b4:	0000006f          	j	131b4 <_exit+0x40>

000131b8 <_fstat>:
   131b8:	f7010113          	addi	sp,sp,-144
   131bc:	08912223          	sw	s1,132(sp)
   131c0:	08112623          	sw	ra,140(sp)
   131c4:	00058493          	mv	s1,a1
   131c8:	08812423          	sw	s0,136(sp)
   131cc:	00010593          	mv	a1,sp
   131d0:	00000613          	li	a2,0
   131d4:	00000693          	li	a3,0
   131d8:	00000713          	li	a4,0
   131dc:	00000793          	li	a5,0
   131e0:	05000893          	li	a7,80
   131e4:	00000073          	ecall
   131e8:	00050413          	mv	s0,a0
   131ec:	02054463          	bltz	a0,13214 <_fstat+0x5c>
   131f0:	00048513          	mv	a0,s1
   131f4:	00010593          	mv	a1,sp
   131f8:	1fc000ef          	jal	ra,133f4 <_conv_stat>
   131fc:	08c12083          	lw	ra,140(sp)
   13200:	00040513          	mv	a0,s0
   13204:	08812403          	lw	s0,136(sp)
   13208:	08412483          	lw	s1,132(sp)
   1320c:	09010113          	addi	sp,sp,144
   13210:	00008067          	ret
   13214:	40800433          	neg	s0,s0
   13218:	280000ef          	jal	ra,13498 <__errno>
   1321c:	00852023          	sw	s0,0(a0)
   13220:	fff00413          	li	s0,-1
   13224:	fcdff06f          	j	131f0 <_fstat+0x38>

00013228 <_isatty>:
   13228:	f9010113          	addi	sp,sp,-112
   1322c:	00810593          	addi	a1,sp,8
   13230:	06112623          	sw	ra,108(sp)
   13234:	f85ff0ef          	jal	ra,131b8 <_fstat>
   13238:	fff00793          	li	a5,-1
   1323c:	00f50e63          	beq	a0,a5,13258 <_isatty+0x30>
   13240:	00c12503          	lw	a0,12(sp)
   13244:	06c12083          	lw	ra,108(sp)
   13248:	00d55513          	srli	a0,a0,0xd
   1324c:	00157513          	andi	a0,a0,1
   13250:	07010113          	addi	sp,sp,112
   13254:	00008067          	ret
   13258:	06c12083          	lw	ra,108(sp)
   1325c:	00000513          	li	a0,0
   13260:	07010113          	addi	sp,sp,112
   13264:	00008067          	ret

00013268 <_lseek>:
   13268:	ff010113          	addi	sp,sp,-16
   1326c:	00112623          	sw	ra,12(sp)
   13270:	00812423          	sw	s0,8(sp)
   13274:	00000693          	li	a3,0
   13278:	00000713          	li	a4,0
   1327c:	00000793          	li	a5,0
   13280:	03e00893          	li	a7,62
   13284:	00000073          	ecall
   13288:	00050413          	mv	s0,a0
   1328c:	00054c63          	bltz	a0,132a4 <_lseek+0x3c>
   13290:	00c12083          	lw	ra,12(sp)
   13294:	00040513          	mv	a0,s0
   13298:	00812403          	lw	s0,8(sp)
   1329c:	01010113          	addi	sp,sp,16
   132a0:	00008067          	ret
   132a4:	40800433          	neg	s0,s0
   132a8:	1f0000ef          	jal	ra,13498 <__errno>
   132ac:	00852023          	sw	s0,0(a0)
   132b0:	fff00413          	li	s0,-1
   132b4:	fddff06f          	j	13290 <_lseek+0x28>

000132b8 <_read>:
   132b8:	ff010113          	addi	sp,sp,-16
   132bc:	00112623          	sw	ra,12(sp)
   132c0:	00812423          	sw	s0,8(sp)
   132c4:	00000693          	li	a3,0
   132c8:	00000713          	li	a4,0
   132cc:	00000793          	li	a5,0
   132d0:	03f00893          	li	a7,63
   132d4:	00000073          	ecall
   132d8:	00050413          	mv	s0,a0
   132dc:	00054c63          	bltz	a0,132f4 <_read+0x3c>
   132e0:	00c12083          	lw	ra,12(sp)
   132e4:	00040513          	mv	a0,s0
   132e8:	00812403          	lw	s0,8(sp)
   132ec:	01010113          	addi	sp,sp,16
   132f0:	00008067          	ret
   132f4:	40800433          	neg	s0,s0
   132f8:	1a0000ef          	jal	ra,13498 <__errno>
   132fc:	00852023          	sw	s0,0(a0)
   13300:	fff00413          	li	s0,-1
   13304:	fddff06f          	j	132e0 <_read+0x28>

00013308 <_sbrk>:
   13308:	0501a783          	lw	a5,80(gp) # 14df0 <heap_end.1813>
   1330c:	ff010113          	addi	sp,sp,-16
   13310:	00112623          	sw	ra,12(sp)
   13314:	00050813          	mv	a6,a0
   13318:	02079863          	bnez	a5,13348 <_sbrk+0x40>
   1331c:	00000513          	li	a0,0
   13320:	00000593          	li	a1,0
   13324:	00000613          	li	a2,0
   13328:	00000693          	li	a3,0
   1332c:	00000713          	li	a4,0
   13330:	0d600893          	li	a7,214
   13334:	00000073          	ecall
   13338:	fff00713          	li	a4,-1
   1333c:	00050793          	mv	a5,a0
   13340:	04e50463          	beq	a0,a4,13388 <_sbrk+0x80>
   13344:	04a1a823          	sw	a0,80(gp) # 14df0 <heap_end.1813>
   13348:	00f80533          	add	a0,a6,a5
   1334c:	00000593          	li	a1,0
   13350:	00000613          	li	a2,0
   13354:	00000693          	li	a3,0
   13358:	00000713          	li	a4,0
   1335c:	00000793          	li	a5,0
   13360:	0d600893          	li	a7,214
   13364:	00000073          	ecall
   13368:	0501a783          	lw	a5,80(gp) # 14df0 <heap_end.1813>
   1336c:	00f80833          	add	a6,a6,a5
   13370:	01051c63          	bne	a0,a6,13388 <_sbrk+0x80>
   13374:	00c12083          	lw	ra,12(sp)
   13378:	04a1a823          	sw	a0,80(gp) # 14df0 <heap_end.1813>
   1337c:	00078513          	mv	a0,a5
   13380:	01010113          	addi	sp,sp,16
   13384:	00008067          	ret
   13388:	110000ef          	jal	ra,13498 <__errno>
   1338c:	00c12083          	lw	ra,12(sp)
   13390:	00c00793          	li	a5,12
   13394:	00f52023          	sw	a5,0(a0)
   13398:	fff00513          	li	a0,-1
   1339c:	01010113          	addi	sp,sp,16
   133a0:	00008067          	ret

000133a4 <_write>:
   133a4:	ff010113          	addi	sp,sp,-16
   133a8:	00112623          	sw	ra,12(sp)
   133ac:	00812423          	sw	s0,8(sp)
   133b0:	00000693          	li	a3,0
   133b4:	00000713          	li	a4,0
   133b8:	00000793          	li	a5,0
   133bc:	04000893          	li	a7,64
   133c0:	00000073          	ecall
   133c4:	00050413          	mv	s0,a0
   133c8:	00054c63          	bltz	a0,133e0 <_write+0x3c>
   133cc:	00c12083          	lw	ra,12(sp)
   133d0:	00040513          	mv	a0,s0
   133d4:	00812403          	lw	s0,8(sp)
   133d8:	01010113          	addi	sp,sp,16
   133dc:	00008067          	ret
   133e0:	40800433          	neg	s0,s0
   133e4:	0b4000ef          	jal	ra,13498 <__errno>
   133e8:	00852023          	sw	s0,0(a0)
   133ec:	fff00413          	li	s0,-1
   133f0:	fddff06f          	j	133cc <_write+0x28>

000133f4 <_conv_stat>:
   133f4:	ff010113          	addi	sp,sp,-16
   133f8:	0145a383          	lw	t2,20(a1)
   133fc:	0185a283          	lw	t0,24(a1)
   13400:	01c5af83          	lw	t6,28(a1)
   13404:	0205af03          	lw	t5,32(a1)
   13408:	0305ae83          	lw	t4,48(a1)
   1340c:	0405ae03          	lw	t3,64(a1)
   13410:	0385a303          	lw	t1,56(a1)
   13414:	0485a803          	lw	a6,72(a1)
   13418:	04c5a883          	lw	a7,76(a1)
   1341c:	0585a603          	lw	a2,88(a1)
   13420:	00812623          	sw	s0,12(sp)
   13424:	00912423          	sw	s1,8(sp)
   13428:	0105a403          	lw	s0,16(a1)
   1342c:	0085a483          	lw	s1,8(a1)
   13430:	01212223          	sw	s2,4(sp)
   13434:	0005a903          	lw	s2,0(a1)
   13438:	05c5a683          	lw	a3,92(a1)
   1343c:	0685a703          	lw	a4,104(a1)
   13440:	06c5a783          	lw	a5,108(a1)
   13444:	01251023          	sh	s2,0(a0)
   13448:	00951123          	sh	s1,2(a0)
   1344c:	00852223          	sw	s0,4(a0)
   13450:	00751423          	sh	t2,8(a0)
   13454:	00551523          	sh	t0,10(a0)
   13458:	01f51623          	sh	t6,12(a0)
   1345c:	01e51723          	sh	t5,14(a0)
   13460:	01d52823          	sw	t4,16(a0)
   13464:	05c52423          	sw	t3,72(a0)
   13468:	04652223          	sw	t1,68(a0)
   1346c:	01052c23          	sw	a6,24(a0)
   13470:	01152e23          	sw	a7,28(a0)
   13474:	02c52423          	sw	a2,40(a0)
   13478:	02d52623          	sw	a3,44(a0)
   1347c:	00c12403          	lw	s0,12(sp)
   13480:	02e52c23          	sw	a4,56(a0)
   13484:	02f52e23          	sw	a5,60(a0)
   13488:	00812483          	lw	s1,8(sp)
   1348c:	00412903          	lw	s2,4(sp)
   13490:	01010113          	addi	sp,sp,16
   13494:	00008067          	ret

00013498 <__errno>:
   13498:	0381a503          	lw	a0,56(gp) # 14dd8 <_impure_ptr>
   1349c:	00008067          	ret

000134a0 <__mulsi3>:
   134a0:	00050613          	mv	a2,a0
   134a4:	00000513          	li	a0,0
   134a8:	0015f693          	andi	a3,a1,1
   134ac:	00068463          	beqz	a3,134b4 <__mulsi3+0x14>
   134b0:	00c50533          	add	a0,a0,a2
   134b4:	0015d593          	srli	a1,a1,0x1
   134b8:	00161613          	slli	a2,a2,0x1
   134bc:	fe0596e3          	bnez	a1,134a8 <__mulsi3+0x8>
   134c0:	00008067          	ret

000134c4 <__divsi3>:
   134c4:	06054063          	bltz	a0,13524 <__umodsi3+0x10>
   134c8:	0605c663          	bltz	a1,13534 <__umodsi3+0x20>

000134cc <__udivsi3>:
   134cc:	00058613          	mv	a2,a1
   134d0:	00050593          	mv	a1,a0
   134d4:	fff00513          	li	a0,-1
   134d8:	02060c63          	beqz	a2,13510 <__udivsi3+0x44>
   134dc:	00100693          	li	a3,1
   134e0:	00b67a63          	bgeu	a2,a1,134f4 <__udivsi3+0x28>
   134e4:	00c05863          	blez	a2,134f4 <__udivsi3+0x28>
   134e8:	00161613          	slli	a2,a2,0x1
   134ec:	00169693          	slli	a3,a3,0x1
   134f0:	feb66ae3          	bltu	a2,a1,134e4 <__udivsi3+0x18>
   134f4:	00000513          	li	a0,0
   134f8:	00c5e663          	bltu	a1,a2,13504 <__udivsi3+0x38>
   134fc:	40c585b3          	sub	a1,a1,a2
   13500:	00d56533          	or	a0,a0,a3
   13504:	0016d693          	srli	a3,a3,0x1
   13508:	00165613          	srli	a2,a2,0x1
   1350c:	fe0696e3          	bnez	a3,134f8 <__udivsi3+0x2c>
   13510:	00008067          	ret

00013514 <__umodsi3>:
   13514:	00008293          	mv	t0,ra
   13518:	fb5ff0ef          	jal	ra,134cc <__udivsi3>
   1351c:	00058513          	mv	a0,a1
   13520:	00028067          	jr	t0 # 10304 <memset+0xb4>
   13524:	40a00533          	neg	a0,a0
   13528:	0005d863          	bgez	a1,13538 <__umodsi3+0x24>
   1352c:	40b005b3          	neg	a1,a1
   13530:	f9dff06f          	j	134cc <__udivsi3>
   13534:	40b005b3          	neg	a1,a1
   13538:	00008293          	mv	t0,ra
   1353c:	f91ff0ef          	jal	ra,134cc <__udivsi3>
   13540:	40a00533          	neg	a0,a0
   13544:	00028067          	jr	t0

00013548 <__modsi3>:
   13548:	00008293          	mv	t0,ra
   1354c:	0005ca63          	bltz	a1,13560 <__modsi3+0x18>
   13550:	00054c63          	bltz	a0,13568 <__modsi3+0x20>
   13554:	f79ff0ef          	jal	ra,134cc <__udivsi3>
   13558:	00058513          	mv	a0,a1
   1355c:	00028067          	jr	t0
   13560:	40b005b3          	neg	a1,a1
   13564:	fe0558e3          	bgez	a0,13554 <__modsi3+0xc>
   13568:	40a00533          	neg	a0,a0
   1356c:	f61ff0ef          	jal	ra,134cc <__udivsi3>
   13570:	40b00533          	neg	a0,a1
   13574:	00028067          	jr	t0

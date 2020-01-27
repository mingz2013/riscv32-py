
hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	000007b7          	lui	a5,0x0
   10078:	00078793          	mv	a5,a5
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00010537          	lui	a0,0x10
   10084:	44c50513          	addi	a0,a0,1100 # 1044c <__libc_fini_array>
   10088:	3b00006f          	j	10438 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00002197          	auipc	gp,0x2
   10094:	d1018193          	addi	gp,gp,-752 # 11da0 <__global_pointer$>
   10098:	c3418513          	addi	a0,gp,-972 # 119d4 <_edata>
   1009c:	c5018613          	addi	a2,gp,-944 # 119f0 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0 # addi a1, zero, 0x0
   100a8:	194000ef          	jal	ra,1023c <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	38c50513          	addi	a0,a0,908 # 10438 <atexit>
   100b4:	00050863          	beqz	a0,100c4 <_start+0x34>
   100b8:	00000517          	auipc	a0,0x0
   100bc:	39450513          	addi	a0,a0,916 # 1044c <__libc_fini_array>
   100c0:	378000ef          	jal	ra,10438 <atexit>
   100c4:	0dc000ef          	jal	ra,101a0 <__libc_init_array> // 到这里了，
   100c8:	00012503          	lw	a0,0(sp) // good, 到这里了
   100cc:	00410593          	addi	a1,sp,4
   100d0:	00000613          	li	a2,0
   100d4:	07c000ef          	jal	ra,10150 <main>
   100d8:	0980006f          	j	10170 <exit>

000100dc <__do_global_dtors_aux>:
   100dc:	c341c703          	lbu	a4,-972(gp) # 119d4 <_edata>
   100e0:	04071463          	bnez	a4,10128 <__do_global_dtors_aux+0x4c>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00812423          	sw	s0,8(sp)
   100ec:	00078413          	mv	s0,a5
   100f0:	000007b7          	lui	a5,0x0
   100f4:	00112623          	sw	ra,12(sp)
   100f8:	00078793          	mv	a5,a5
   100fc:	00078a63          	beqz	a5,10110 <__do_global_dtors_aux+0x34>
   10100:	00011537          	lui	a0,0x11
   10104:	58c50513          	addi	a0,a0,1420 # 1158c <__FRAME_END__>
   10108:	00000097          	auipc	ra,0x0
   1010c:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   10110:	00100793          	li	a5,1
   10114:	00c12083          	lw	ra,12(sp)
   10118:	c2f18a23          	sb	a5,-972(gp) # 119d4 <_edata>
   1011c:	00812403          	lw	s0,8(sp)
   10120:	01010113          	addi	sp,sp,16
   10124:	00008067          	ret
   10128:	00008067          	ret

0001012c <frame_dummy>:
   1012c:	000007b7          	lui	a5,0x0
   10130:	00078793          	mv	a5,a5
   10134:	00078c63          	beqz	a5,1014c <frame_dummy+0x20>
   10138:	00011537          	lui	a0,0x11
   1013c:	c3818593          	addi	a1,gp,-968 # 119d8 <object.5495>
   10140:	58c50513          	addi	a0,a0,1420 # 1158c <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x10074>
   1014c:	00008067          	ret

00010150 <main>:
   10150:	ff010113          	addi	sp,sp,-16
   10154:	00812623          	sw	s0,12(sp)
   10158:	01010413          	addi	s0,sp,16
   1015c:	00000793          	li	a5,0
   10160:	00078513          	mv	a0,a5
   10164:	00c12403          	lw	s0,12(sp)
   10168:	01010113          	addi	sp,sp,16
   1016c:	00008067          	ret

00010170 <exit>:
   10170:	ff010113          	addi	sp,sp,-16
   10174:	00000593          	li	a1,0
   10178:	00812423          	sw	s0,8(sp)
   1017c:	00112623          	sw	ra,12(sp)
   10180:	00050413          	mv	s0,a0
   10184:	194000ef          	jal	ra,10318 <__call_exitprocs>
   10188:	c281a503          	lw	a0,-984(gp) # 119c8 <_global_impure_ptr>
   1018c:	03c52783          	lw	a5,60(a0)
   10190:	00078463          	beqz	a5,10198 <exit+0x28>
   10194:	000780e7          	jalr	a5 # 0 <register_fini-0x10074>
   10198:	00040513          	mv	a0,s0
   1019c:	3a4000ef          	jal	ra,10540 <_exit>

000101a0 <__libc_init_array>:
   101a0:	ff010113          	addi	sp,sp,-16 // -16
   101a4:	00812423          	sw	s0,8(sp)
   101a8:	01212023          	sw	s2,0(sp)
   101ac:	00011437          	lui	s0,0x11
   101b0:	00011937          	lui	s2,0x11
   101b4:	59040793          	addi	a5,s0,1424 # 11590 <__init_array_start>
   101b8:	59090913          	addi	s2,s2,1424 # 11590 <__init_array_start>
   101bc:	40f90933          	sub	s2,s2,a5
   101c0:	00112623          	sw	ra,12(sp)
   101c4:	00912223          	sw	s1,4(sp)
   101c8:	40295913          	srai	s2,s2,0x2
   101cc:	02090063          	beqz	s2,101ec <__libc_init_array+0x4c>
   101d0:	59040413          	addi	s0,s0,1424
   101d4:	00000493          	li	s1,0
   101d8:	00042783          	lw	a5,0(s0)
   101dc:	00148493          	addi	s1,s1,1
   101e0:	00440413          	addi	s0,s0,4
   101e4:	000780e7          	jalr	a5
   101e8:	fe9918e3          	bne	s2,s1,101d8 <__libc_init_array+0x38>
   101ec:	00011437          	lui	s0,0x11
   101f0:	00011937          	lui	s2,0x11
   101f4:	59040793          	addi	a5,s0,1424 # 11590 <__init_array_start>
   101f8:	59890913          	addi	s2,s2,1432 # 11598 <__init_array_end>
   101fc:	40f90933          	sub	s2,s2,a5
   10200:	40295913          	srai	s2,s2,0x2
   10204:	02090063          	beqz	s2,10224 <__libc_init_array+0x84>
   10208:	59040413          	addi	s0,s0,1424
   1020c:	00000493          	li	s1,0
   10210:	00042783          	lw	a5,0(s0)
   10214:	00148493          	addi	s1,s1,1
   10218:	00440413          	addi	s0,s0,4
   1021c:	000780e7          	jalr	a5
   10220:	fe9918e3          	bne	s2,s1,10210 <__libc_init_array+0x70>
   10224:	00c12083          	lw	ra,12(sp)
   10228:	00812403          	lw	s0,8(sp)
   1022c:	00412483          	lw	s1,4(sp)
   10230:	00012903          	lw	s2,0(sp)
   10234:	01010113          	addi	sp,sp,16
   10238:	00008067          	ret // 跳回来

0001023c <memset>:
   1023c:	00f00313          	li	t1,15
   10240:	00050713          	mv	a4,a0
   10244:	02c37e63          	bgeu	t1,a2,10280 <memset+0x44>
   10248:	00f77793          	andi	a5,a4,15
   1024c:	0a079063          	bnez	a5,102ec <memset+0xb0>
   10250:	08059263          	bnez	a1,102d4 <memset+0x98>
   10254:	ff067693          	andi	a3,a2,-16
   10258:	00f67613          	andi	a2,a2,15
   1025c:	00e686b3          	add	a3,a3,a4
   10260:	00b72023          	sw	a1,0(a4)
   10264:	00b72223          	sw	a1,4(a4)
   10268:	00b72423          	sw	a1,8(a4)
   1026c:	00b72623          	sw	a1,12(a4)
   10270:	01070713          	addi	a4,a4,16
   10274:	fed766e3          	bltu	a4,a3,10260 <memset+0x24>
   10278:	00061463          	bnez	a2,10280 <memset+0x44>
   1027c:	00008067          	ret
   10280:	40c306b3          	sub	a3,t1,a2
   10284:	00269693          	slli	a3,a3,0x2
   10288:	00000297          	auipc	t0,0x0
   1028c:	005686b3          	add	a3,a3,t0
   10290:	00c68067          	jr	12(a3)
   10294:	00b70723          	sb	a1,14(a4)
   10298:	00b706a3          	sb	a1,13(a4)
   1029c:	00b70623          	sb	a1,12(a4)
   102a0:	00b705a3          	sb	a1,11(a4)
   102a4:	00b70523          	sb	a1,10(a4)
   102a8:	00b704a3          	sb	a1,9(a4)
   102ac:	00b70423          	sb	a1,8(a4)
   102b0:	00b703a3          	sb	a1,7(a4)
   102b4:	00b70323          	sb	a1,6(a4)
   102b8:	00b702a3          	sb	a1,5(a4)
   102bc:	00b70223          	sb	a1,4(a4)
   102c0:	00b701a3          	sb	a1,3(a4)
   102c4:	00b70123          	sb	a1,2(a4)
   102c8:	00b700a3          	sb	a1,1(a4)
   102cc:	00b70023          	sb	a1,0(a4)
   102d0:	00008067          	ret
   102d4:	0ff5f593          	andi	a1,a1,255
   102d8:	00859693          	slli	a3,a1,0x8
   102dc:	00d5e5b3          	or	a1,a1,a3
   102e0:	01059693          	slli	a3,a1,0x10
   102e4:	00d5e5b3          	or	a1,a1,a3
   102e8:	f6dff06f          	j	10254 <memset+0x18>
   102ec:	00279693          	slli	a3,a5,0x2
   102f0:	00000297          	auipc	t0,0x0
   102f4:	005686b3          	add	a3,a3,t0
   102f8:	00008293          	mv	t0,ra
   102fc:	fa0680e7          	jalr	-96(a3)
   10300:	00028093          	mv	ra,t0
   10304:	ff078793          	addi	a5,a5,-16
   10308:	40f70733          	sub	a4,a4,a5
   1030c:	00f60633          	add	a2,a2,a5
   10310:	f6c378e3          	bgeu	t1,a2,10280 <memset+0x44>
   10314:	f3dff06f          	j	10250 <memset+0x14>

00010318 <__call_exitprocs>:
   10318:	fd010113          	addi	sp,sp,-48
   1031c:	01412c23          	sw	s4,24(sp)
   10320:	c281aa03          	lw	s4,-984(gp) # 119c8 <_global_impure_ptr>
   10324:	03212023          	sw	s2,32(sp)
   10328:	02112623          	sw	ra,44(sp)
   1032c:	148a2903          	lw	s2,328(s4)
   10330:	02812423          	sw	s0,40(sp)
   10334:	02912223          	sw	s1,36(sp)
   10338:	01312e23          	sw	s3,28(sp)
   1033c:	01512a23          	sw	s5,20(sp)
   10340:	01612823          	sw	s6,16(sp)
   10344:	01712623          	sw	s7,12(sp)
   10348:	01812423          	sw	s8,8(sp)
   1034c:	04090063          	beqz	s2,1038c <__call_exitprocs+0x74>
   10350:	00050b13          	mv	s6,a0
   10354:	00058b93          	mv	s7,a1
   10358:	00100a93          	li	s5,1
   1035c:	fff00993          	li	s3,-1
   10360:	00492483          	lw	s1,4(s2)
   10364:	fff48413          	addi	s0,s1,-1
   10368:	02044263          	bltz	s0,1038c <__call_exitprocs+0x74>
   1036c:	00249493          	slli	s1,s1,0x2
   10370:	009904b3          	add	s1,s2,s1
   10374:	040b8463          	beqz	s7,103bc <__call_exitprocs+0xa4>
   10378:	1044a783          	lw	a5,260(s1)
   1037c:	05778063          	beq	a5,s7,103bc <__call_exitprocs+0xa4>
   10380:	fff40413          	addi	s0,s0,-1
   10384:	ffc48493          	addi	s1,s1,-4
   10388:	ff3416e3          	bne	s0,s3,10374 <__call_exitprocs+0x5c>
   1038c:	02c12083          	lw	ra,44(sp)
   10390:	02812403          	lw	s0,40(sp)
   10394:	02412483          	lw	s1,36(sp)
   10398:	02012903          	lw	s2,32(sp)
   1039c:	01c12983          	lw	s3,28(sp)
   103a0:	01812a03          	lw	s4,24(sp)
   103a4:	01412a83          	lw	s5,20(sp)
   103a8:	01012b03          	lw	s6,16(sp)
   103ac:	00c12b83          	lw	s7,12(sp)
   103b0:	00812c03          	lw	s8,8(sp)
   103b4:	03010113          	addi	sp,sp,48
   103b8:	00008067          	ret
   103bc:	00492783          	lw	a5,4(s2)
   103c0:	0044a683          	lw	a3,4(s1)
   103c4:	fff78793          	addi	a5,a5,-1
   103c8:	04878e63          	beq	a5,s0,10424 <__call_exitprocs+0x10c>
   103cc:	0004a223          	sw	zero,4(s1)
   103d0:	fa0688e3          	beqz	a3,10380 <__call_exitprocs+0x68>
   103d4:	18892783          	lw	a5,392(s2)
   103d8:	008a9733          	sll	a4,s5,s0
   103dc:	00492c03          	lw	s8,4(s2)
   103e0:	00f777b3          	and	a5,a4,a5
   103e4:	02079263          	bnez	a5,10408 <__call_exitprocs+0xf0>
   103e8:	000680e7          	jalr	a3
   103ec:	00492703          	lw	a4,4(s2)
   103f0:	148a2783          	lw	a5,328(s4)
   103f4:	01871463          	bne	a4,s8,103fc <__call_exitprocs+0xe4>
   103f8:	f8f904e3          	beq	s2,a5,10380 <__call_exitprocs+0x68>
   103fc:	f80788e3          	beqz	a5,1038c <__call_exitprocs+0x74>
   10400:	00078913          	mv	s2,a5
   10404:	f5dff06f          	j	10360 <__call_exitprocs+0x48>
   10408:	18c92783          	lw	a5,396(s2)
   1040c:	0844a583          	lw	a1,132(s1)
   10410:	00f77733          	and	a4,a4,a5
   10414:	00071c63          	bnez	a4,1042c <__call_exitprocs+0x114>
   10418:	000b0513          	mv	a0,s6
   1041c:	000680e7          	jalr	a3
   10420:	fcdff06f          	j	103ec <__call_exitprocs+0xd4>
   10424:	00892223          	sw	s0,4(s2)
   10428:	fa9ff06f          	j	103d0 <__call_exitprocs+0xb8>
   1042c:	00058513          	mv	a0,a1
   10430:	000680e7          	jalr	a3
   10434:	fb9ff06f          	j	103ec <__call_exitprocs+0xd4>

00010438 <atexit>:
   10438:	00050593          	mv	a1,a0
   1043c:	00000693          	li	a3,0
   10440:	00000613          	li	a2,0
   10444:	00000513          	li	a0,0
   10448:	0600006f          	j	104a8 <__register_exitproc>

0001044c <__libc_fini_array>:
   1044c:	ff010113          	addi	sp,sp,-16
   10450:	00812423          	sw	s0,8(sp)
   10454:	000117b7          	lui	a5,0x11
   10458:	00011437          	lui	s0,0x11
   1045c:	59840413          	addi	s0,s0,1432 # 11598 <__init_array_end>
   10460:	59c78793          	addi	a5,a5,1436 # 1159c <__fini_array_end>
   10464:	408787b3          	sub	a5,a5,s0
   10468:	00912223          	sw	s1,4(sp)
   1046c:	00112623          	sw	ra,12(sp)
   10470:	4027d493          	srai	s1,a5,0x2
   10474:	02048063          	beqz	s1,10494 <__libc_fini_array+0x48>
   10478:	ffc78793          	addi	a5,a5,-4
   1047c:	00878433          	add	s0,a5,s0
   10480:	00042783          	lw	a5,0(s0)
   10484:	fff48493          	addi	s1,s1,-1
   10488:	ffc40413          	addi	s0,s0,-4
   1048c:	000780e7          	jalr	a5
   10490:	fe0498e3          	bnez	s1,10480 <__libc_fini_array+0x34>
   10494:	00c12083          	lw	ra,12(sp)
   10498:	00812403          	lw	s0,8(sp)
   1049c:	00412483          	lw	s1,4(sp)
   104a0:	01010113          	addi	sp,sp,16
   104a4:	00008067          	ret

000104a8 <__register_exitproc>:
   104a8:	c281a703          	lw	a4,-984(gp) # 119c8 <_global_impure_ptr>
   104ac:	14872783          	lw	a5,328(a4)
   104b0:	04078c63          	beqz	a5,10508 <__register_exitproc+0x60>
   104b4:	0047a703          	lw	a4,4(a5)
   104b8:	01f00813          	li	a6,31
   104bc:	06e84e63          	blt	a6,a4,10538 <__register_exitproc+0x90>
   104c0:	00271813          	slli	a6,a4,0x2
   104c4:	02050663          	beqz	a0,104f0 <__register_exitproc+0x48>
   104c8:	01078333          	add	t1,a5,a6
   104cc:	08c32423          	sw	a2,136(t1) # 101cc <__libc_init_array+0x2c>
   104d0:	1887a883          	lw	a7,392(a5)
   104d4:	00100613          	li	a2,1
   104d8:	00e61633          	sll	a2,a2,a4
   104dc:	00c8e8b3          	or	a7,a7,a2
   104e0:	1917a423          	sw	a7,392(a5)
   104e4:	10d32423          	sw	a3,264(t1)
   104e8:	00200693          	li	a3,2
   104ec:	02d50463          	beq	a0,a3,10514 <__register_exitproc+0x6c>
   104f0:	00170713          	addi	a4,a4,1
   104f4:	00e7a223          	sw	a4,4(a5)
   104f8:	010787b3          	add	a5,a5,a6
   104fc:	00b7a423          	sw	a1,8(a5)
   10500:	00000513          	li	a0,0
   10504:	00008067          	ret
   10508:	14c70793          	addi	a5,a4,332
   1050c:	14f72423          	sw	a5,328(a4)
   10510:	fa5ff06f          	j	104b4 <__register_exitproc+0xc>
   10514:	18c7a683          	lw	a3,396(a5)
   10518:	00170713          	addi	a4,a4,1
   1051c:	00e7a223          	sw	a4,4(a5)
   10520:	00c6e633          	or	a2,a3,a2
   10524:	18c7a623          	sw	a2,396(a5)
   10528:	010787b3          	add	a5,a5,a6
   1052c:	00b7a423          	sw	a1,8(a5)
   10530:	00000513          	li	a0,0
   10534:	00008067          	ret
   10538:	fff00513          	li	a0,-1
   1053c:	00008067          	ret

00010540 <_exit>:
   10540:	00000593          	li	a1,0
   10544:	00000613          	li	a2,0
   10548:	00000693          	li	a3,0
   1054c:	00000713          	li	a4,0
   10550:	00000793          	li	a5,0
   10554:	05d00893          	li	a7,93
   10558:	00000073          	ecall
   1055c:	00054463          	bltz	a0,10564 <_exit+0x24>
   10560:	0000006f          	j	10560 <_exit+0x20>
   10564:	ff010113          	addi	sp,sp,-16
   10568:	00812423          	sw	s0,8(sp)
   1056c:	00050413          	mv	s0,a0
   10570:	00112623          	sw	ra,12(sp)
   10574:	40800433          	neg	s0,s0
   10578:	00c000ef          	jal	ra,10584 <__errno>
   1057c:	00852023          	sw	s0,0(a0)
   10580:	0000006f          	j	10580 <_exit+0x40>

00010584 <__errno>:
   10584:	c301a503          	lw	a0,-976(gp) # 119d0 <_impure_ptr>
   10588:	00008067          	ret

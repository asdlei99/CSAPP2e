
eg-dis:     file format elf32-i386

Disassembly of section .init:

08048254 <_init>:
 8048254:	55                   	push   %ebp
 8048255:	89 e5                	mov    %esp,%ebp
 8048257:	83 ec 08             	sub    $0x8,%esp
 804825a:	e8 55 00 00 00       	call   80482b4 <call_gmon_start>
 804825f:	e8 ac 00 00 00       	call   8048310 <frame_dummy>
 8048264:	e8 27 02 00 00       	call   8048490 <__do_global_ctors_aux>
 8048269:	c9                   	leave  
 804826a:	c3                   	ret    
Disassembly of section .plt:

0804826c <__libc_start_main@plt-0x10>:
 804826c:	ff 35 c4 95 04 08    	pushl  0x80495c4
 8048272:	ff 25 c8 95 04 08    	jmp    *0x80495c8
 8048278:	00 00                	add    %al,(%eax)
	...

0804827c <__libc_start_main@plt>:
 804827c:	ff 25 cc 95 04 08    	jmp    *0x80495cc
 8048282:	68 00 00 00 00       	push   $0x0
 8048287:	e9 e0 ff ff ff       	jmp    804826c <_init+0x18>
Disassembly of section .text:

08048290 <_start>:
 8048290:	31 ed                	xor    %ebp,%ebp
 8048292:	5e                   	pop    %esi
 8048293:	89 e1                	mov    %esp,%ecx
 8048295:	83 e4 f0             	and    $0xfffffff0,%esp
 8048298:	50                   	push   %eax
 8048299:	54                   	push   %esp
 804829a:	52                   	push   %edx
 804829b:	68 44 84 04 08       	push   $0x8048444
 80482a0:	68 f0 83 04 08       	push   $0x80483f0
 80482a5:	51                   	push   %ecx
 80482a6:	56                   	push   %esi
 80482a7:	68 b6 83 04 08       	push   $0x80483b6
 80482ac:	e8 cb ff ff ff       	call   804827c <__libc_start_main@plt>
 80482b1:	f4                   	hlt    
 80482b2:	90                   	nop    
 80482b3:	90                   	nop    

080482b4 <call_gmon_start>:
 80482b4:	55                   	push   %ebp
 80482b5:	89 e5                	mov    %esp,%ebp
 80482b7:	53                   	push   %ebx
 80482b8:	e8 00 00 00 00       	call   80482bd <call_gmon_start+0x9>
 80482bd:	5b                   	pop    %ebx
 80482be:	81 c3 03 13 00 00    	add    $0x1303,%ebx
 80482c4:	52                   	push   %edx
 80482c5:	8b 83 fc ff ff ff    	mov    0xfffffffc(%ebx),%eax
 80482cb:	85 c0                	test   %eax,%eax
 80482cd:	74 02                	je     80482d1 <call_gmon_start+0x1d>
 80482cf:	ff d0                	call   *%eax
 80482d1:	58                   	pop    %eax
 80482d2:	5b                   	pop    %ebx
 80482d3:	c9                   	leave  
 80482d4:	c3                   	ret    
 80482d5:	90                   	nop    
 80482d6:	90                   	nop    
 80482d7:	90                   	nop    
 80482d8:	90                   	nop    
 80482d9:	90                   	nop    
 80482da:	90                   	nop    
 80482db:	90                   	nop    
 80482dc:	90                   	nop    
 80482dd:	90                   	nop    
 80482de:	90                   	nop    
 80482df:	90                   	nop    

080482e0 <__do_global_dtors_aux>:
 80482e0:	55                   	push   %ebp
 80482e1:	89 e5                	mov    %esp,%ebp
 80482e3:	83 ec 08             	sub    $0x8,%esp
 80482e6:	80 3d dc 95 04 08 00 	cmpb   $0x0,0x80495dc
 80482ed:	74 0c                	je     80482fb <__do_global_dtors_aux+0x1b>
 80482ef:	eb 1c                	jmp    804830d <__do_global_dtors_aux+0x2d>
 80482f1:	83 c0 04             	add    $0x4,%eax
 80482f4:	a3 d8 95 04 08       	mov    %eax,0x80495d8
 80482f9:	ff d2                	call   *%edx
 80482fb:	a1 d8 95 04 08       	mov    0x80495d8,%eax
 8048300:	8b 10                	mov    (%eax),%edx
 8048302:	85 d2                	test   %edx,%edx
 8048304:	75 eb                	jne    80482f1 <__do_global_dtors_aux+0x11>
 8048306:	c6 05 dc 95 04 08 01 	movb   $0x1,0x80495dc
 804830d:	c9                   	leave  
 804830e:	c3                   	ret    
 804830f:	90                   	nop    

08048310 <frame_dummy>:
 8048310:	55                   	push   %ebp
 8048311:	89 e5                	mov    %esp,%ebp
 8048313:	83 ec 08             	sub    $0x8,%esp
 8048316:	a1 f0 94 04 08       	mov    0x80494f0,%eax
 804831b:	85 c0                	test   %eax,%eax
 804831d:	74 12                	je     8048331 <frame_dummy+0x21>
 804831f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048324:	85 c0                	test   %eax,%eax
 8048326:	74 09                	je     8048331 <frame_dummy+0x21>
 8048328:	c7 04 24 f0 94 04 08 	movl   $0x80494f0,(%esp)
 804832f:	ff d0                	call   *%eax
 8048331:	c9                   	leave  
 8048332:	c3                   	ret    
 8048333:	90                   	nop    

08048334 <proca>:
 8048334:	55                   	push   %ebp
 8048335:	89 e5                	mov    %esp,%ebp
 8048337:	81 ec b8 01 00 00    	sub    $0x1b8,%esp
 804833d:	8b 55 08             	mov    0x8(%ebp),%edx
 8048340:	83 c2 14             	add    $0x14,%edx
 8048343:	8b 85 58 fe ff ff    	mov    0xfffffe58(%ebp),%eax
 8048349:	03 02                	add    (%edx),%eax
 804834b:	89 85 74 fe ff ff    	mov    %eax,0xfffffe74(%ebp)
 8048351:	8b 55 08             	mov    0x8(%ebp),%edx
 8048354:	83 c2 44             	add    $0x44,%edx
 8048357:	8b 85 c8 fe ff ff    	mov    0xfffffec8(%ebp),%eax
 804835d:	89 02                	mov    %eax,(%edx)
 804835f:	8b 45 10             	mov    0x10(%ebp),%eax
 8048362:	03 45 0c             	add    0xc(%ebp),%eax
 8048365:	89 85 ec fe ff ff    	mov    %eax,0xfffffeec(%ebp)
 804836b:	8b 45 08             	mov    0x8(%ebp),%eax
 804836e:	83 c0 20             	add    $0x20,%eax
 8048371:	8b 00                	mov    (%eax),%eax
 8048373:	c9                   	leave  
 8048374:	c3                   	ret    

08048375 <procb>:
 8048375:	55                   	push   %ebp
 8048376:	89 e5                	mov    %esp,%ebp
 8048378:	81 ec 88 01 00 00    	sub    $0x188,%esp
 804837e:	8b 55 08             	mov    0x8(%ebp),%edx
 8048381:	83 c2 10             	add    $0x10,%edx
 8048384:	8b 85 84 fe ff ff    	mov    0xfffffe84(%ebp),%eax
 804838a:	03 02                	add    (%edx),%eax
 804838c:	89 85 90 fe ff ff    	mov    %eax,0xfffffe90(%ebp)
 8048392:	8b 55 08             	mov    0x8(%ebp),%edx
 8048395:	83 c2 1c             	add    $0x1c,%edx
 8048398:	8b 85 00 ff ff ff    	mov    0xffffff00(%ebp),%eax
 804839e:	89 02                	mov    %eax,(%edx)
 80483a0:	8b 45 10             	mov    0x10(%ebp),%eax
 80483a3:	03 45 0c             	add    0xc(%ebp),%eax
 80483a6:	89 85 6c ff ff ff    	mov    %eax,0xffffff6c(%ebp)
 80483ac:	8b 45 08             	mov    0x8(%ebp),%eax
 80483af:	83 c0 18             	add    $0x18,%eax
 80483b2:	8b 00                	mov    (%eax),%eax
 80483b4:	c9                   	leave  
 80483b5:	c3                   	ret    

080483b6 <main>:
 80483b6:	55                   	push   %ebp
 80483b7:	89 e5                	mov    %esp,%ebp
 80483b9:	83 ec 48             	sub    $0x48,%esp
 80483bc:	83 e4 f0             	and    $0xfffffff0,%esp
 80483bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483c4:	83 c0 0f             	add    $0xf,%eax
 80483c7:	83 c0 0f             	add    $0xf,%eax
 80483ca:	c1 e8 04             	shr    $0x4,%eax
 80483cd:	c1 e0 04             	shl    $0x4,%eax
 80483d0:	29 c4                	sub    %eax,%esp
 80483d2:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 80483d9:	00 
 80483da:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 80483e1:	00 
 80483e2:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
 80483e5:	89 04 24             	mov    %eax,(%esp)
 80483e8:	e8 47 ff ff ff       	call   8048334 <proca>
 80483ed:	c9                   	leave  
 80483ee:	c3                   	ret    
 80483ef:	90                   	nop    

080483f0 <__libc_csu_init>:
 80483f0:	55                   	push   %ebp
 80483f1:	89 e5                	mov    %esp,%ebp
 80483f3:	57                   	push   %edi
 80483f4:	56                   	push   %esi
 80483f5:	53                   	push   %ebx
 80483f6:	83 ec 0c             	sub    $0xc,%esp
 80483f9:	e8 00 00 00 00       	call   80483fe <__libc_csu_init+0xe>
 80483fe:	5b                   	pop    %ebx
 80483ff:	81 c3 c2 11 00 00    	add    $0x11c2,%ebx
 8048405:	e8 4a fe ff ff       	call   8048254 <_init>
 804840a:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 8048410:	8d 93 20 ff ff ff    	lea    0xffffff20(%ebx),%edx
 8048416:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 8048419:	29 d0                	sub    %edx,%eax
 804841b:	31 f6                	xor    %esi,%esi
 804841d:	c1 f8 02             	sar    $0x2,%eax
 8048420:	39 c6                	cmp    %eax,%esi
 8048422:	73 16                	jae    804843a <__libc_csu_init+0x4a>
 8048424:	89 d7                	mov    %edx,%edi
 8048426:	89 f6                	mov    %esi,%esi
 8048428:	ff 14 b2             	call   *(%edx,%esi,4)
 804842b:	8b 4d f0             	mov    0xfffffff0(%ebp),%ecx
 804842e:	29 f9                	sub    %edi,%ecx
 8048430:	46                   	inc    %esi
 8048431:	c1 f9 02             	sar    $0x2,%ecx
 8048434:	39 ce                	cmp    %ecx,%esi
 8048436:	89 fa                	mov    %edi,%edx
 8048438:	72 ee                	jb     8048428 <__libc_csu_init+0x38>
 804843a:	83 c4 0c             	add    $0xc,%esp
 804843d:	5b                   	pop    %ebx
 804843e:	5e                   	pop    %esi
 804843f:	5f                   	pop    %edi
 8048440:	c9                   	leave  
 8048441:	c3                   	ret    
 8048442:	89 f6                	mov    %esi,%esi

08048444 <__libc_csu_fini>:
 8048444:	55                   	push   %ebp
 8048445:	89 e5                	mov    %esp,%ebp
 8048447:	57                   	push   %edi
 8048448:	56                   	push   %esi
 8048449:	53                   	push   %ebx
 804844a:	e8 00 00 00 00       	call   804844f <__libc_csu_fini+0xb>
 804844f:	5b                   	pop    %ebx
 8048450:	81 c3 71 11 00 00    	add    $0x1171,%ebx
 8048456:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 804845c:	8d bb 20 ff ff ff    	lea    0xffffff20(%ebx),%edi
 8048462:	29 f8                	sub    %edi,%eax
 8048464:	c1 f8 02             	sar    $0x2,%eax
 8048467:	83 ec 0c             	sub    $0xc,%esp
 804846a:	8d 70 ff             	lea    0xffffffff(%eax),%esi
 804846d:	eb 05                	jmp    8048474 <__libc_csu_fini+0x30>
 804846f:	90                   	nop    
 8048470:	ff 14 b7             	call   *(%edi,%esi,4)
 8048473:	4e                   	dec    %esi
 8048474:	83 fe ff             	cmp    $0xffffffff,%esi
 8048477:	75 f7                	jne    8048470 <__libc_csu_fini+0x2c>
 8048479:	e8 3a 00 00 00       	call   80484b8 <_fini>
 804847e:	83 c4 0c             	add    $0xc,%esp
 8048481:	5b                   	pop    %ebx
 8048482:	5e                   	pop    %esi
 8048483:	5f                   	pop    %edi
 8048484:	c9                   	leave  
 8048485:	c3                   	ret    
 8048486:	90                   	nop    
 8048487:	90                   	nop    
 8048488:	90                   	nop    
 8048489:	90                   	nop    
 804848a:	90                   	nop    
 804848b:	90                   	nop    
 804848c:	90                   	nop    
 804848d:	90                   	nop    
 804848e:	90                   	nop    
 804848f:	90                   	nop    

08048490 <__do_global_ctors_aux>:
 8048490:	55                   	push   %ebp
 8048491:	89 e5                	mov    %esp,%ebp
 8048493:	53                   	push   %ebx
 8048494:	bb e0 94 04 08       	mov    $0x80494e0,%ebx
 8048499:	83 ec 04             	sub    $0x4,%esp
 804849c:	a1 e0 94 04 08       	mov    0x80494e0,%eax
 80484a1:	eb 07                	jmp    80484aa <__do_global_ctors_aux+0x1a>
 80484a3:	83 eb 04             	sub    $0x4,%ebx
 80484a6:	ff d0                	call   *%eax
 80484a8:	8b 03                	mov    (%ebx),%eax
 80484aa:	83 f8 ff             	cmp    $0xffffffff,%eax
 80484ad:	75 f4                	jne    80484a3 <__do_global_ctors_aux+0x13>
 80484af:	83 c4 04             	add    $0x4,%esp
 80484b2:	5b                   	pop    %ebx
 80484b3:	c9                   	leave  
 80484b4:	c3                   	ret    
 80484b5:	90                   	nop    
 80484b6:	90                   	nop    
 80484b7:	90                   	nop    
Disassembly of section .fini:

080484b8 <_fini>:
 80484b8:	55                   	push   %ebp
 80484b9:	89 e5                	mov    %esp,%ebp
 80484bb:	53                   	push   %ebx
 80484bc:	e8 00 00 00 00       	call   80484c1 <_fini+0x9>
 80484c1:	5b                   	pop    %ebx
 80484c2:	81 c3 ff 10 00 00    	add    $0x10ff,%ebx
 80484c8:	50                   	push   %eax
 80484c9:	e8 12 fe ff ff       	call   80482e0 <__do_global_dtors_aux>
 80484ce:	59                   	pop    %ecx
 80484cf:	5b                   	pop    %ebx
 80484d0:	c9                   	leave  
 80484d1:	c3                   	ret    

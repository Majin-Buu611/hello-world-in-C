
main1.o:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 95 34 00 00 	mov    0x3495(%rip),%rax        # 4044b0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 96 34 00 00 	mov    0x3496(%rip),%rax        # 4044c0 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 99 34 00 00 	mov    0x3499(%rip),%rax        # 4044d0 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 5c 34 00 00 	mov    0x345c(%rip),%rax        # 4044a0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 3f 33 00 00 	mov    0x333f(%rip),%rax        # 404390 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 59                	je     4010c0 <pre_c_init+0xb0>
  401067:	48 8b 05 22 34 00 00 	mov    0x3422(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  40106e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 40700c <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	75 36                	jne    4010b0 <pre_c_init+0xa0>
  40107a:	b9 01 00 00 00       	mov    $0x1,%ecx
  40107f:	e8 0c 1b 00 00       	callq  402b90 <__set_app_type>
  401084:	e8 77 1b 00 00       	callq  402c00 <__p__fmode>
  401089:	48 8b 15 c0 33 00 00 	mov    0x33c0(%rip),%rdx        # 404450 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 d7 05 00 00       	callq  401670 <_setargv>
  401099:	48 8b 05 a0 32 00 00 	mov    0x32a0(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010a0:	83 38 01             	cmpl   $0x1,(%rax)
  4010a3:	74 4b                	je     4010f0 <pre_c_init+0xe0>
  4010a5:	31 c0                	xor    %eax,%eax
  4010a7:	48 83 c4 28          	add    $0x28,%rsp
  4010ab:	c3                   	retq   
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	b9 02 00 00 00       	mov    $0x2,%ecx
  4010b5:	e8 d6 1a 00 00       	callq  402b90 <__set_app_type>
  4010ba:	eb c8                	jmp    401084 <pre_c_init+0x74>
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010c9:	74 3d                	je     401108 <pre_c_init+0xf8>
  4010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010d0:	75 95                	jne    401067 <pre_c_init+0x57>
  4010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d9:	76 8c                	jbe    401067 <pre_c_init+0x57>
  4010db:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010e1:	31 c9                	xor    %ecx,%ecx
  4010e3:	85 d2                	test   %edx,%edx
  4010e5:	0f 95 c1             	setne  %cl
  4010e8:	e9 7a ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  4010ed:	0f 1f 00             	nopl   (%rax)
  4010f0:	48 8d 0d 39 08 00 00 	lea    0x839(%rip),%rcx        # 401930 <_matherr>
  4010f7:	e8 04 0f 00 00       	callq  402000 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401108:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  40110c:	0f 86 55 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  401112:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401119:	31 c9                	xor    %ecx,%ecx
  40111b:	45 85 c0             	test   %r8d,%r8d
  40111e:	0f 95 c1             	setne  %cl
  401121:	e9 41 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 45 33 00 00 	mov    0x3345(%rip),%rax        # 404480 <.refptr._newmode>
  40113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407018 <envp>
  401142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407020 <argv>
  401149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407028 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 407004 <startinfo>
  401158:	48 8d 05 a5 5e 00 00 	lea    0x5ea5(%rip),%rax        # 407004 <startinfo>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 d5 32 00 00 	mov    0x32d5(%rip),%rax        # 404440 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 2d 1a 00 00       	callq  402ba0 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401194:	31 c0                	xor    %eax,%eax
  401196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40119b:	4c 89 c7             	mov    %r8,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d e8 32 00 00 	mov    0x32e8(%rip),%rdi        # 404490 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 ac 02 00 00    	jne    401460 <__tmainCRTStartup+0x2e0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d 1c 32 00 00 	mov    0x321c(%rip),%rbx        # 4043e0 <.refptr.__native_startup_lock>
  4011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011c8:	31 ed                	xor    %ebp,%ebp
  4011ca:	4c 8b 25 8b 70 00 00 	mov    0x708b(%rip),%r12        # 40825c <__imp_Sleep>
  4011d1:	eb 16                	jmp    4011e9 <__tmainCRTStartup+0x69>
  4011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011d8:	48 39 c6             	cmp    %rax,%rsi
  4011db:	0f 84 1f 02 00 00    	je     401400 <__tmainCRTStartup+0x280>
  4011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e6:	41 ff d4             	callq  *%r12
  4011e9:	48 89 e8             	mov    %rbp,%rax
  4011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011f1:	48 85 c0             	test   %rax,%rax
  4011f4:	75 e2                	jne    4011d8 <__tmainCRTStartup+0x58>
  4011f6:	48 8b 35 f3 31 00 00 	mov    0x31f3(%rip),%rsi        # 4043f0 <.refptr.__native_startup_state>
  4011fd:	31 ed                	xor    %ebp,%ebp
  4011ff:	8b 06                	mov    (%rsi),%eax
  401201:	83 f8 01             	cmp    $0x1,%eax
  401204:	0f 84 0d 02 00 00    	je     401417 <__tmainCRTStartup+0x297>
  40120a:	8b 06                	mov    (%rsi),%eax
  40120c:	85 c0                	test   %eax,%eax
  40120e:	0f 84 7c 02 00 00    	je     401490 <__tmainCRTStartup+0x310>
  401214:	c7 05 ea 5d 00 00 01 	movl   $0x1,0x5dea(%rip)        # 407008 <has_cctor>
  40121b:	00 00 00 
  40121e:	8b 06                	mov    (%rsi),%eax
  401220:	83 f8 01             	cmp    $0x1,%eax
  401223:	0f 84 03 02 00 00    	je     40142c <__tmainCRTStartup+0x2ac>
  401229:	85 ed                	test   %ebp,%ebp
  40122b:	0f 84 1c 02 00 00    	je     40144d <__tmainCRTStartup+0x2cd>
  401231:	48 8b 05 48 31 00 00 	mov    0x3148(%rip),%rax        # 404380 <.refptr.__dyn_tls_init_callback>
  401238:	48 8b 00             	mov    (%rax),%rax
  40123b:	48 85 c0             	test   %rax,%rax
  40123e:	74 0c                	je     40124c <__tmainCRTStartup+0xcc>
  401240:	45 31 c0             	xor    %r8d,%r8d
  401243:	ba 02 00 00 00       	mov    $0x2,%edx
  401248:	31 c9                	xor    %ecx,%ecx
  40124a:	ff d0                	callq  *%rax
  40124c:	e8 6f 0a 00 00       	callq  401cc0 <_pei386_runtime_relocator>
  401251:	48 8d 0d 78 10 00 00 	lea    0x1078(%rip),%rcx        # 4022d0 <_gnu_exception_handler>
  401258:	ff 15 f6 6f 00 00    	callq  *0x6ff6(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  40125e:	48 8b 15 6b 31 00 00 	mov    0x316b(%rip),%rdx        # 4043d0 <.refptr.__mingw_oldexcpt_handler>
  401265:	48 89 02             	mov    %rax,(%rdx)
  401268:	e8 63 0f 00 00       	callq  4021d0 <__mingw_init_ehandler>
  40126d:	48 8d 0d 8c fd ff ff 	lea    -0x274(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  401274:	e8 67 19 00 00       	callq  402be0 <_set_invalid_parameter_handler>
  401279:	e8 b2 07 00 00       	callq  401a30 <_fpreset>
  40127e:	48 8b 05 0b 31 00 00 	mov    0x310b(%rip),%rax        # 404390 <.refptr.__image_base__>
  401285:	48 89 05 dc 66 00 00 	mov    %rax,0x66dc(%rip)        # 407968 <__mingw_winmain_hInstance>
  40128c:	e8 5f 19 00 00       	callq  402bf0 <__p__acmdln>
  401291:	31 c9                	xor    %ecx,%ecx
  401293:	48 8b 00             	mov    (%rax),%rax
  401296:	48 85 c0             	test   %rax,%rax
  401299:	75 17                	jne    4012b2 <__tmainCRTStartup+0x132>
  40129b:	eb 53                	jmp    4012f0 <__tmainCRTStartup+0x170>
  40129d:	0f 1f 00             	nopl   (%rax)
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 45                	je     4012e9 <__tmainCRTStartup+0x169>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 15                	je     4012e9 <__tmainCRTStartup+0x169>
  4012d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012dc:	48 83 c0 01          	add    $0x1,%rax
  4012e0:	84 d2                	test   %dl,%dl
  4012e2:	74 05                	je     4012e9 <__tmainCRTStartup+0x169>
  4012e4:	80 fa 20             	cmp    $0x20,%dl
  4012e7:	7e ef                	jle    4012d8 <__tmainCRTStartup+0x158>
  4012e9:	48 89 05 70 66 00 00 	mov    %rax,0x6670(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f0:	44 8b 07             	mov    (%rdi),%r8d
  4012f3:	45 85 c0             	test   %r8d,%r8d
  4012f6:	74 16                	je     40130e <__tmainCRTStartup+0x18e>
  4012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401302:	0f 85 e8 00 00 00    	jne    4013f0 <__tmainCRTStartup+0x270>
  401308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 403000 <__data_start__>
  40130e:	8b 1d 14 5d 00 00    	mov    0x5d14(%rip),%ebx        # 407028 <argc>
  401314:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  401318:	4d 63 e4             	movslq %r12d,%r12
  40131b:	49 c1 e4 03          	shl    $0x3,%r12
  40131f:	4c 89 e1             	mov    %r12,%rcx
  401322:	e8 09 18 00 00       	callq  402b30 <malloc>
  401327:	4c 8b 2d f2 5c 00 00 	mov    0x5cf2(%rip),%r13        # 407020 <argv>
  40132e:	48 89 c7             	mov    %rax,%rdi
  401331:	85 db                	test   %ebx,%ebx
  401333:	7e 46                	jle    40137b <__tmainCRTStartup+0x1fb>
  401335:	8d 6b ff             	lea    -0x1(%rbx),%ebp
  401338:	31 db                	xor    %ebx,%ebx
  40133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401345:	e8 c6 17 00 00       	callq  402b10 <strlen>
  40134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134e:	48 89 f1             	mov    %rsi,%rcx
  401351:	e8 da 17 00 00       	callq  402b30 <malloc>
  401356:	49 89 f0             	mov    %rsi,%r8
  401359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401362:	48 89 c1             	mov    %rax,%rcx
  401365:	e8 be 17 00 00       	callq  402b28 <memcpy>
  40136a:	48 89 d8             	mov    %rbx,%rax
  40136d:	48 83 c3 01          	add    $0x1,%rbx
  401371:	48 39 c5             	cmp    %rax,%rbp
  401374:	75 ca                	jne    401340 <__tmainCRTStartup+0x1c0>
  401376:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  40137b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401382:	48 89 3d 97 5c 00 00 	mov    %rdi,0x5c97(%rip)        # 407020 <argv>
  401389:	e8 b2 02 00 00       	callq  401640 <__main>
  40138e:	48 8b 05 0b 30 00 00 	mov    0x300b(%rip),%rax        # 4043a0 <.refptr.__imp___initenv>
  401395:	4c 8b 05 7c 5c 00 00 	mov    0x5c7c(%rip),%r8        # 407018 <envp>
  40139c:	8b 0d 86 5c 00 00    	mov    0x5c86(%rip),%ecx        # 407028 <argc>
  4013a2:	48 8b 00             	mov    (%rax),%rax
  4013a5:	4c 89 00             	mov    %r8,(%rax)
  4013a8:	48 8b 15 71 5c 00 00 	mov    0x5c71(%rip),%rdx        # 407020 <argv>
  4013af:	e8 ac 01 00 00       	callq  401560 <main>
  4013b4:	8b 0d 52 5c 00 00    	mov    0x5c52(%rip),%ecx        # 40700c <managedapp>
  4013ba:	89 05 50 5c 00 00    	mov    %eax,0x5c50(%rip)        # 407010 <mainret>
  4013c0:	85 c9                	test   %ecx,%ecx
  4013c2:	0f 84 e6 00 00 00    	je     4014ae <__tmainCRTStartup+0x32e>
  4013c8:	8b 15 3a 5c 00 00    	mov    0x5c3a(%rip),%edx        # 407008 <has_cctor>
  4013ce:	85 d2                	test   %edx,%edx
  4013d0:	0f 84 9a 00 00 00    	je     401470 <__tmainCRTStartup+0x2f0>
  4013d6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013dd:	5b                   	pop    %rbx
  4013de:	5e                   	pop    %rsi
  4013df:	5f                   	pop    %rdi
  4013e0:	5d                   	pop    %rbp
  4013e1:	41 5c                	pop    %r12
  4013e3:	41 5d                	pop    %r13
  4013e5:	c3                   	retq   
  4013e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ed:	00 00 00 
  4013f0:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013f5:	e9 0e ff ff ff       	jmpq   401308 <__tmainCRTStartup+0x188>
  4013fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401400:	48 8b 35 e9 2f 00 00 	mov    0x2fe9(%rip),%rsi        # 4043f0 <.refptr.__native_startup_state>
  401407:	bd 01 00 00 00       	mov    $0x1,%ebp
  40140c:	8b 06                	mov    (%rsi),%eax
  40140e:	83 f8 01             	cmp    $0x1,%eax
  401411:	0f 85 f3 fd ff ff    	jne    40120a <__tmainCRTStartup+0x8a>
  401417:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40141c:	e8 5f 17 00 00       	callq  402b80 <_amsg_exit>
  401421:	8b 06                	mov    (%rsi),%eax
  401423:	83 f8 01             	cmp    $0x1,%eax
  401426:	0f 85 fd fd ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  40142c:	48 8b 15 dd 2f 00 00 	mov    0x2fdd(%rip),%rdx        # 404410 <.refptr.__xc_z>
  401433:	48 8b 0d c6 2f 00 00 	mov    0x2fc6(%rip),%rcx        # 404400 <.refptr.__xc_a>
  40143a:	e8 31 17 00 00       	callq  402b70 <_initterm>
  40143f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401445:	85 ed                	test   %ebp,%ebp
  401447:	0f 85 e4 fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  40144d:	31 c0                	xor    %eax,%eax
  40144f:	48 87 03             	xchg   %rax,(%rbx)
  401452:	e9 da fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  401457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40145e:	00 00 
  401460:	4c 89 c1             	mov    %r8,%rcx
  401463:	ff 15 9b 6d 00 00    	callq  *0x6d9b(%rip)        # 408204 <__imp_GetStartupInfoA>
  401469:	e9 46 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	e8 03 17 00 00       	callq  402b78 <_cexit>
  401475:	8b 05 95 5b 00 00    	mov    0x5b95(%rip),%eax        # 407010 <mainret>
  40147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5e                   	pop    %rsi
  401484:	5f                   	pop    %rdi
  401485:	5d                   	pop    %rbp
  401486:	41 5c                	pop    %r12
  401488:	41 5d                	pop    %r13
  40148a:	c3                   	retq   
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401490:	48 8b 15 99 2f 00 00 	mov    0x2f99(%rip),%rdx        # 404430 <.refptr.__xi_z>
  401497:	48 8b 0d 82 2f 00 00 	mov    0x2f82(%rip),%rcx        # 404420 <.refptr.__xi_a>
  40149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014a4:	e8 c7 16 00 00       	callq  402b70 <_initterm>
  4014a9:	e9 70 fd ff ff       	jmpq   40121e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 9b 16 00 00       	callq  402b50 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 c5 2f 00 00 	mov    0x2fc5(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 aa 01 00 00       	callq  401680 <__security_init_cookie>
  4014d6:	e8 a5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014db:	90                   	nop

00000000004014dc <.l_endw>:
  4014dc:	90                   	nop
  4014dd:	48 83 c4 28          	add    $0x28,%rsp
  4014e1:	c3                   	retq   
  4014e2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014e9:	00 00 00 00 
  4014ed:	0f 1f 00             	nopl   (%rax)

00000000004014f0 <mainCRTStartup>:
  4014f0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014f4 <.l_start>:
  4014f4:	48 8b 05 95 2f 00 00 	mov    0x2f95(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401501:	e8 7a 01 00 00       	callq  401680 <__security_init_cookie>
  401506:	e8 75 fc ff ff       	callq  401180 <__tmainCRTStartup>
  40150b:	90                   	nop

000000000040150c <.l_end>:
  40150c:	90                   	nop
  40150d:	48 83 c4 28          	add    $0x28,%rsp
  401511:	c3                   	retq   
  401512:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401519:	00 00 00 00 
  40151d:	0f 1f 00             	nopl   (%rax)

0000000000401520 <atexit>:
  401520:	48 83 ec 28          	sub    $0x28,%rsp
  401524:	e8 3f 16 00 00       	callq  402b68 <_onexit>
  401529:	48 85 c0             	test   %rax,%rax
  40152c:	0f 94 c0             	sete   %al
  40152f:	0f b6 c0             	movzbl %al,%eax
  401532:	f7 d8                	neg    %eax
  401534:	48 83 c4 28          	add    $0x28,%rsp
  401538:	c3                   	retq   
  401539:	90                   	nop
  40153a:	90                   	nop
  40153b:	90                   	nop
  40153c:	90                   	nop
  40153d:	90                   	nop
  40153e:	90                   	nop
  40153f:	90                   	nop

0000000000401540 <__gcc_register_frame>:
  401540:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401550 <__gcc_deregister_frame>
  401547:	e9 d4 ff ff ff       	jmpq   401520 <atexit>
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <__gcc_deregister_frame>:
  401550:	c3                   	retq   
  401551:	90                   	nop
  401552:	90                   	nop
  401553:	90                   	nop
  401554:	90                   	nop
  401555:	90                   	nop
  401556:	90                   	nop
  401557:	90                   	nop
  401558:	90                   	nop
  401559:	90                   	nop
  40155a:	90                   	nop
  40155b:	90                   	nop
  40155c:	90                   	nop
  40155d:	90                   	nop
  40155e:	90                   	nop
  40155f:	90                   	nop

0000000000401560 <main>:
  401560:	55                   	push   %rbp
  401561:	48 89 e5             	mov    %rsp,%rbp
  401564:	48 83 ec 20          	sub    $0x20,%rsp
  401568:	e8 d3 00 00 00       	callq  401640 <__main>
  40156d:	48 8d 0d 8c 2a 00 00 	lea    0x2a8c(%rip),%rcx        # 404000 <.rdata>
  401574:	e8 a7 15 00 00       	callq  402b20 <printf>
  401579:	b8 00 00 00 00       	mov    $0x0,%eax
  40157e:	48 83 c4 20          	add    $0x20,%rsp
  401582:	5d                   	pop    %rbp
  401583:	c3                   	retq   
  401584:	90                   	nop
  401585:	90                   	nop
  401586:	90                   	nop
  401587:	90                   	nop
  401588:	90                   	nop
  401589:	90                   	nop
  40158a:	90                   	nop
  40158b:	90                   	nop
  40158c:	90                   	nop
  40158d:	90                   	nop
  40158e:	90                   	nop
  40158f:	90                   	nop

0000000000401590 <__do_global_dtors>:
  401590:	48 83 ec 28          	sub    $0x28,%rsp
  401594:	48 8b 05 75 1a 00 00 	mov    0x1a75(%rip),%rax        # 403010 <p.92474>
  40159b:	48 8b 00             	mov    (%rax),%rax
  40159e:	48 85 c0             	test   %rax,%rax
  4015a1:	74 22                	je     4015c5 <__do_global_dtors+0x35>
  4015a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4015a8:	ff d0                	callq  *%rax
  4015aa:	48 8b 05 5f 1a 00 00 	mov    0x1a5f(%rip),%rax        # 403010 <p.92474>
  4015b1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015b5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015b9:	48 89 15 50 1a 00 00 	mov    %rdx,0x1a50(%rip)        # 403010 <p.92474>
  4015c0:	48 85 c0             	test   %rax,%rax
  4015c3:	75 e3                	jne    4015a8 <__do_global_dtors+0x18>
  4015c5:	48 83 c4 28          	add    $0x28,%rsp
  4015c9:	c3                   	retq   
  4015ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004015d0 <__do_global_ctors>:
  4015d0:	56                   	push   %rsi
  4015d1:	53                   	push   %rbx
  4015d2:	48 83 ec 28          	sub    $0x28,%rsp
  4015d6:	48 8b 15 73 2d 00 00 	mov    0x2d73(%rip),%rdx        # 404350 <.refptr.__CTOR_LIST__>
  4015dd:	48 8b 02             	mov    (%rdx),%rax
  4015e0:	89 c1                	mov    %eax,%ecx
  4015e2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4015e5:	74 39                	je     401620 <__do_global_ctors+0x50>
  4015e7:	85 c9                	test   %ecx,%ecx
  4015e9:	74 20                	je     40160b <__do_global_ctors+0x3b>
  4015eb:	89 c8                	mov    %ecx,%eax
  4015ed:	83 e9 01             	sub    $0x1,%ecx
  4015f0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  4015f4:	48 29 c8             	sub    %rcx,%rax
  4015f7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  4015fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401600:	ff 13                	callq  *(%rbx)
  401602:	48 83 eb 08          	sub    $0x8,%rbx
  401606:	48 39 f3             	cmp    %rsi,%rbx
  401609:	75 f5                	jne    401600 <__do_global_ctors+0x30>
  40160b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401590 <__do_global_dtors>
  401612:	48 83 c4 28          	add    $0x28,%rsp
  401616:	5b                   	pop    %rbx
  401617:	5e                   	pop    %rsi
  401618:	e9 03 ff ff ff       	jmpq   401520 <atexit>
  40161d:	0f 1f 00             	nopl   (%rax)
  401620:	31 c0                	xor    %eax,%eax
  401622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401628:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40162c:	89 c1                	mov    %eax,%ecx
  40162e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401633:	4c 89 c0             	mov    %r8,%rax
  401636:	75 f0                	jne    401628 <__do_global_ctors+0x58>
  401638:	eb ad                	jmp    4015e7 <__do_global_ctors+0x17>
  40163a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401640 <__main>:
  401640:	8b 05 ea 59 00 00    	mov    0x59ea(%rip),%eax        # 407030 <initialized>
  401646:	85 c0                	test   %eax,%eax
  401648:	74 06                	je     401650 <__main+0x10>
  40164a:	c3                   	retq   
  40164b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401650:	c7 05 d6 59 00 00 01 	movl   $0x1,0x59d6(%rip)        # 407030 <initialized>
  401657:	00 00 00 
  40165a:	e9 71 ff ff ff       	jmpq   4015d0 <__do_global_ctors>
  40165f:	90                   	nop

0000000000401660 <my_lconv_init>:
  401660:	48 ff 25 4d 6c 00 00 	rex.W jmpq *0x6c4d(%rip)        # 4082b4 <__imp___lconv_init>
  401667:	90                   	nop
  401668:	90                   	nop
  401669:	90                   	nop
  40166a:	90                   	nop
  40166b:	90                   	nop
  40166c:	90                   	nop
  40166d:	90                   	nop
  40166e:	90                   	nop
  40166f:	90                   	nop

0000000000401670 <_setargv>:
  401670:	31 c0                	xor    %eax,%eax
  401672:	c3                   	retq   
  401673:	90                   	nop
  401674:	90                   	nop
  401675:	90                   	nop
  401676:	90                   	nop
  401677:	90                   	nop
  401678:	90                   	nop
  401679:	90                   	nop
  40167a:	90                   	nop
  40167b:	90                   	nop
  40167c:	90                   	nop
  40167d:	90                   	nop
  40167e:	90                   	nop
  40167f:	90                   	nop

0000000000401680 <__security_init_cookie>:
  401680:	41 54                	push   %r12
  401682:	55                   	push   %rbp
  401683:	57                   	push   %rdi
  401684:	56                   	push   %rsi
  401685:	53                   	push   %rbx
  401686:	48 83 ec 30          	sub    $0x30,%rsp
  40168a:	48 8b 1d 0f 1a 00 00 	mov    0x1a0f(%rip),%rbx        # 4030a0 <__security_cookie>
  401691:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401698:	2b 00 00 
  40169b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4016a2:	00 00 
  4016a4:	48 39 c3             	cmp    %rax,%rbx
  4016a7:	74 17                	je     4016c0 <__security_init_cookie+0x40>
  4016a9:	48 f7 d3             	not    %rbx
  4016ac:	48 89 1d fd 19 00 00 	mov    %rbx,0x19fd(%rip)        # 4030b0 <__security_cookie_complement>
  4016b3:	48 83 c4 30          	add    $0x30,%rsp
  4016b7:	5b                   	pop    %rbx
  4016b8:	5e                   	pop    %rsi
  4016b9:	5f                   	pop    %rdi
  4016ba:	5d                   	pop    %rbp
  4016bb:	41 5c                	pop    %r12
  4016bd:	c3                   	retq   
  4016be:	66 90                	xchg   %ax,%ax
  4016c0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016c5:	ff 15 41 6b 00 00    	callq  *0x6b41(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4016cb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016d0:	ff 15 16 6b 00 00    	callq  *0x6b16(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  4016d6:	89 c5                	mov    %eax,%ebp
  4016d8:	ff 15 16 6b 00 00    	callq  *0x6b16(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  4016de:	89 c7                	mov    %eax,%edi
  4016e0:	ff 15 2e 6b 00 00    	callq  *0x6b2e(%rip)        # 408214 <__imp_GetTickCount>
  4016e6:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016eb:	41 89 c4             	mov    %eax,%r12d
  4016ee:	ff 15 38 6b 00 00    	callq  *0x6b38(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  4016f4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016f9:	89 e8                	mov    %ebp,%eax
  4016fb:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401702:	ff 00 00 
  401705:	48 31 f0             	xor    %rsi,%rax
  401708:	89 fe                	mov    %edi,%esi
  40170a:	48 31 c6             	xor    %rax,%rsi
  40170d:	44 89 e0             	mov    %r12d,%eax
  401710:	48 31 f0             	xor    %rsi,%rax
  401713:	48 21 d0             	and    %rdx,%rax
  401716:	48 39 d8             	cmp    %rbx,%rax
  401719:	74 25                	je     401740 <__security_init_cookie+0xc0>
  40171b:	48 89 c2             	mov    %rax,%rdx
  40171e:	48 f7 d2             	not    %rdx
  401721:	48 89 05 78 19 00 00 	mov    %rax,0x1978(%rip)        # 4030a0 <__security_cookie>
  401728:	48 89 15 81 19 00 00 	mov    %rdx,0x1981(%rip)        # 4030b0 <__security_cookie_complement>
  40172f:	48 83 c4 30          	add    $0x30,%rsp
  401733:	5b                   	pop    %rbx
  401734:	5e                   	pop    %rsi
  401735:	5f                   	pop    %rdi
  401736:	5d                   	pop    %rbp
  401737:	41 5c                	pop    %r12
  401739:	c3                   	retq   
  40173a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401740:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401747:	d4 ff ff 
  40174a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401751:	2b 00 00 
  401754:	eb cb                	jmp    401721 <__security_init_cookie+0xa1>
  401756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40175d:	00 00 00 

0000000000401760 <__report_gsfailure>:
  401760:	55                   	push   %rbp
  401761:	56                   	push   %rsi
  401762:	53                   	push   %rbx
  401763:	48 89 e5             	mov    %rsp,%rbp
  401766:	48 83 ec 70          	sub    $0x70,%rsp
  40176a:	48 89 cb             	mov    %rcx,%rbx
  40176d:	48 8d 0d ec 58 00 00 	lea    0x58ec(%rip),%rcx        # 407060 <GS_ContextRecord>
  401774:	ff 15 c2 6a 00 00    	callq  *0x6ac2(%rip)        # 40823c <__imp_RtlCaptureContext>
  40177a:	48 8b 35 d7 59 00 00 	mov    0x59d7(%rip),%rsi        # 407158 <GS_ContextRecord+0xf8>
  401781:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401785:	45 31 c0             	xor    %r8d,%r8d
  401788:	48 89 f1             	mov    %rsi,%rcx
  40178b:	ff 15 b3 6a 00 00    	callq  *0x6ab3(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  401791:	49 89 c1             	mov    %rax,%r9
  401794:	48 85 c0             	test   %rax,%rax
  401797:	0f 84 a0 00 00 00    	je     40183d <__report_gsfailure+0xdd>
  40179d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4017a1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017a5:	49 89 f0             	mov    %rsi,%r8
  4017a8:	31 c9                	xor    %ecx,%ecx
  4017aa:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4017af:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4017b3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4017b8:	48 8d 05 a1 58 00 00 	lea    0x58a1(%rip),%rax        # 407060 <GS_ContextRecord>
  4017bf:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4017c6:	00 00 
  4017c8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4017cd:	ff 15 79 6a 00 00    	callq  *0x6a79(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  4017d3:	48 8b 05 7e 59 00 00 	mov    0x597e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017da:	31 c9                	xor    %ecx,%ecx
  4017dc:	48 89 1d fd 58 00 00 	mov    %rbx,0x58fd(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017e3:	48 89 05 66 5d 00 00 	mov    %rax,0x5d66(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017ea:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017f1:	00 00 00 
  4017f4:	48 89 05 45 5d 00 00 	mov    %rax,0x5d45(%rip)        # 407540 <GS_ExceptionRecord>
  4017fb:	48 8b 05 9e 18 00 00 	mov    0x189e(%rip),%rax        # 4030a0 <__security_cookie>
  401802:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401806:	48 8b 05 a3 18 00 00 	mov    0x18a3(%rip),%rax        # 4030b0 <__security_cookie_complement>
  40180d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401811:	ff 15 3d 6a 00 00    	callq  *0x6a3d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401817:	48 8d 0d f2 27 00 00 	lea    0x27f2(%rip),%rcx        # 404010 <GS_ExceptionPointers>
  40181e:	ff 15 50 6a 00 00    	callq  *0x6a50(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401824:	ff 15 ba 69 00 00    	callq  *0x69ba(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40182a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40182f:	48 89 c1             	mov    %rax,%rcx
  401832:	ff 15 2c 6a 00 00    	callq  *0x6a2c(%rip)        # 408264 <__imp_TerminateProcess>
  401838:	e8 23 13 00 00       	callq  402b60 <abort>
  40183d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401841:	48 89 05 10 59 00 00 	mov    %rax,0x5910(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401848:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40184c:	48 89 05 a5 58 00 00 	mov    %rax,0x58a5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401853:	e9 7b ff ff ff       	jmpq   4017d3 <__report_gsfailure+0x73>
  401858:	90                   	nop
  401859:	90                   	nop
  40185a:	90                   	nop
  40185b:	90                   	nop
  40185c:	90                   	nop
  40185d:	90                   	nop
  40185e:	90                   	nop
  40185f:	90                   	nop

0000000000401860 <__dyn_tls_dtor>:
  401860:	48 83 ec 28          	sub    $0x28,%rsp
  401864:	83 fa 03             	cmp    $0x3,%edx
  401867:	74 17                	je     401880 <__dyn_tls_dtor+0x20>
  401869:	85 d2                	test   %edx,%edx
  40186b:	74 13                	je     401880 <__dyn_tls_dtor+0x20>
  40186d:	b8 01 00 00 00       	mov    $0x1,%eax
  401872:	48 83 c4 28          	add    $0x28,%rsp
  401876:	c3                   	retq   
  401877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40187e:	00 00 
  401880:	e8 7b 0d 00 00       	callq  402600 <__mingw_TLScallback>
  401885:	b8 01 00 00 00       	mov    $0x1,%eax
  40188a:	48 83 c4 28          	add    $0x28,%rsp
  40188e:	c3                   	retq   
  40188f:	90                   	nop

0000000000401890 <__dyn_tls_init>:
  401890:	56                   	push   %rsi
  401891:	53                   	push   %rbx
  401892:	48 83 ec 28          	sub    $0x28,%rsp
  401896:	48 8b 05 93 2a 00 00 	mov    0x2a93(%rip),%rax        # 404330 <.refptr._CRT_MT>
  40189d:	83 38 02             	cmpl   $0x2,(%rax)
  4018a0:	74 06                	je     4018a8 <__dyn_tls_init+0x18>
  4018a2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4018a8:	83 fa 02             	cmp    $0x2,%edx
  4018ab:	74 13                	je     4018c0 <__dyn_tls_init+0x30>
  4018ad:	83 fa 01             	cmp    $0x1,%edx
  4018b0:	74 4e                	je     401900 <__dyn_tls_init+0x70>
  4018b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b7:	48 83 c4 28          	add    $0x28,%rsp
  4018bb:	5b                   	pop    %rbx
  4018bc:	5e                   	pop    %rsi
  4018bd:	c3                   	retq   
  4018be:	66 90                	xchg   %ax,%ax
  4018c0:	48 8d 1d 99 77 00 00 	lea    0x7799(%rip),%rbx        # 409060 <__xd_z>
  4018c7:	48 8d 35 92 77 00 00 	lea    0x7792(%rip),%rsi        # 409060 <__xd_z>
  4018ce:	48 39 de             	cmp    %rbx,%rsi
  4018d1:	74 df                	je     4018b2 <__dyn_tls_init+0x22>
  4018d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018d8:	48 8b 03             	mov    (%rbx),%rax
  4018db:	48 85 c0             	test   %rax,%rax
  4018de:	74 02                	je     4018e2 <__dyn_tls_init+0x52>
  4018e0:	ff d0                	callq  *%rax
  4018e2:	48 83 c3 08          	add    $0x8,%rbx
  4018e6:	48 39 de             	cmp    %rbx,%rsi
  4018e9:	75 ed                	jne    4018d8 <__dyn_tls_init+0x48>
  4018eb:	b8 01 00 00 00       	mov    $0x1,%eax
  4018f0:	48 83 c4 28          	add    $0x28,%rsp
  4018f4:	5b                   	pop    %rbx
  4018f5:	5e                   	pop    %rsi
  4018f6:	c3                   	retq   
  4018f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018fe:	00 00 
  401900:	e8 fb 0c 00 00       	callq  402600 <__mingw_TLScallback>
  401905:	b8 01 00 00 00       	mov    $0x1,%eax
  40190a:	48 83 c4 28          	add    $0x28,%rsp
  40190e:	5b                   	pop    %rbx
  40190f:	5e                   	pop    %rsi
  401910:	c3                   	retq   
  401911:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401918:	00 00 00 00 
  40191c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401920 <__tlregdtor>:
  401920:	31 c0                	xor    %eax,%eax
  401922:	c3                   	retq   
  401923:	90                   	nop
  401924:	90                   	nop
  401925:	90                   	nop
  401926:	90                   	nop
  401927:	90                   	nop
  401928:	90                   	nop
  401929:	90                   	nop
  40192a:	90                   	nop
  40192b:	90                   	nop
  40192c:	90                   	nop
  40192d:	90                   	nop
  40192e:	90                   	nop
  40192f:	90                   	nop

0000000000401930 <_matherr>:
  401930:	56                   	push   %rsi
  401931:	53                   	push   %rbx
  401932:	48 83 ec 78          	sub    $0x78,%rsp
  401936:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
  40193b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
  401940:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
  401946:	83 39 06             	cmpl   $0x6,(%rcx)
  401949:	0f 87 cd 00 00 00    	ja     401a1c <_matherr+0xec>
  40194f:	8b 01                	mov    (%rcx),%eax
  401951:	48 8d 15 4c 28 00 00 	lea    0x284c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401958:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40195c:	48 01 d0             	add    %rdx,%rax
  40195f:	ff e0                	jmpq   *%rax
  401961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401968:	48 8d 1d e7 27 00 00 	lea    0x27e7(%rip),%rbx        # 404156 <.rdata+0xd6>
  40196f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401975:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  40197a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40197f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401983:	b9 02 00 00 00       	mov    $0x2,%ecx
  401988:	e8 23 12 00 00       	callq  402bb0 <__acrt_iob_func>
  40198d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401994:	49 89 d8             	mov    %rbx,%r8
  401997:	48 8d 15 da 27 00 00 	lea    0x27da(%rip),%rdx        # 404178 <.rdata+0xf8>
  40199e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019a4:	48 89 c1             	mov    %rax,%rcx
  4019a7:	49 89 f1             	mov    %rsi,%r9
  4019aa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019b0:	e8 93 11 00 00       	callq  402b48 <fprintf>
  4019b5:	90                   	nop
  4019b6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
  4019bb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
  4019c0:	31 c0                	xor    %eax,%eax
  4019c2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
  4019c8:	48 83 c4 78          	add    $0x78,%rsp
  4019cc:	5b                   	pop    %rbx
  4019cd:	5e                   	pop    %rsi
  4019ce:	c3                   	retq   
  4019cf:	90                   	nop
  4019d0:	48 8d 1d b9 26 00 00 	lea    0x26b9(%rip),%rbx        # 404090 <.rdata+0x10>
  4019d7:	eb 96                	jmp    40196f <_matherr+0x3f>
  4019d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019e0:	48 8d 1d e9 26 00 00 	lea    0x26e9(%rip),%rbx        # 4040d0 <.rdata+0x50>
  4019e7:	eb 86                	jmp    40196f <_matherr+0x3f>
  4019e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019f0:	48 8d 1d b9 26 00 00 	lea    0x26b9(%rip),%rbx        # 4040b0 <.rdata+0x30>
  4019f7:	e9 73 ff ff ff       	jmpq   40196f <_matherr+0x3f>
  4019fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401a00:	48 8d 1d 19 27 00 00 	lea    0x2719(%rip),%rbx        # 404120 <.rdata+0xa0>
  401a07:	e9 63 ff ff ff       	jmpq   40196f <_matherr+0x3f>
  401a0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a10:	48 8d 1d e1 26 00 00 	lea    0x26e1(%rip),%rbx        # 4040f8 <.rdata+0x78>
  401a17:	e9 53 ff ff ff       	jmpq   40196f <_matherr+0x3f>
  401a1c:	48 8d 1d 5d 26 00 00 	lea    0x265d(%rip),%rbx        # 404080 <.rdata>
  401a23:	e9 47 ff ff ff       	jmpq   40196f <_matherr+0x3f>
  401a28:	90                   	nop
  401a29:	90                   	nop
  401a2a:	90                   	nop
  401a2b:	90                   	nop
  401a2c:	90                   	nop
  401a2d:	90                   	nop
  401a2e:	90                   	nop
  401a2f:	90                   	nop

0000000000401a30 <_fpreset>:
  401a30:	db e3                	fninit 
  401a32:	c3                   	retq   
  401a33:	90                   	nop
  401a34:	90                   	nop
  401a35:	90                   	nop
  401a36:	90                   	nop
  401a37:	90                   	nop
  401a38:	90                   	nop
  401a39:	90                   	nop
  401a3a:	90                   	nop
  401a3b:	90                   	nop
  401a3c:	90                   	nop
  401a3d:	90                   	nop
  401a3e:	90                   	nop
  401a3f:	90                   	nop

0000000000401a40 <__report_error>:
  401a40:	41 54                	push   %r12
  401a42:	53                   	push   %rbx
  401a43:	48 83 ec 38          	sub    $0x38,%rsp
  401a47:	49 89 cc             	mov    %rcx,%r12
  401a4a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401a4f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a54:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401a59:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401a5e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401a63:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a68:	e8 43 11 00 00       	callq  402bb0 <__acrt_iob_func>
  401a6d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401a73:	ba 01 00 00 00       	mov    $0x1,%edx
  401a78:	48 8d 0d 41 27 00 00 	lea    0x2741(%rip),%rcx        # 4041c0 <.rdata>
  401a7f:	49 89 c1             	mov    %rax,%r9
  401a82:	e8 b1 10 00 00       	callq  402b38 <fwrite>
  401a87:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401a8c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a91:	e8 1a 11 00 00       	callq  402bb0 <__acrt_iob_func>
  401a96:	4c 89 e2             	mov    %r12,%rdx
  401a99:	48 89 c1             	mov    %rax,%rcx
  401a9c:	49 89 d8             	mov    %rbx,%r8
  401a9f:	e8 5c 10 00 00       	callq  402b00 <vfprintf>
  401aa4:	e8 b7 10 00 00       	callq  402b60 <abort>
  401aa9:	90                   	nop
  401aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401ab0 <__write_memory.part.0>:
  401ab0:	41 54                	push   %r12
  401ab2:	55                   	push   %rbp
  401ab3:	57                   	push   %rdi
  401ab4:	56                   	push   %rsi
  401ab5:	53                   	push   %rbx
  401ab6:	48 83 ec 50          	sub    $0x50,%rsp
  401aba:	48 63 3d 53 5b 00 00 	movslq 0x5b53(%rip),%rdi        # 407614 <maxSections>
  401ac1:	49 89 cc             	mov    %rcx,%r12
  401ac4:	48 89 d6             	mov    %rdx,%rsi
  401ac7:	4c 89 c3             	mov    %r8,%rbx
  401aca:	85 ff                	test   %edi,%edi
  401acc:	0f 8e 86 01 00 00    	jle    401c58 <__write_memory.part.0+0x1a8>
  401ad2:	48 8b 05 3f 5b 00 00 	mov    0x5b3f(%rip),%rax        # 407618 <the_secs>
  401ad9:	31 c9                	xor    %ecx,%ecx
  401adb:	48 83 c0 18          	add    $0x18,%rax
  401adf:	90                   	nop
  401ae0:	48 8b 10             	mov    (%rax),%rdx
  401ae3:	49 39 d4             	cmp    %rdx,%r12
  401ae6:	72 14                	jb     401afc <__write_memory.part.0+0x4c>
  401ae8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401aec:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401af0:	4c 01 c2             	add    %r8,%rdx
  401af3:	49 39 d4             	cmp    %rdx,%r12
  401af6:	0f 82 8b 00 00 00    	jb     401b87 <__write_memory.part.0+0xd7>
  401afc:	83 c1 01             	add    $0x1,%ecx
  401aff:	48 83 c0 28          	add    $0x28,%rax
  401b03:	39 f9                	cmp    %edi,%ecx
  401b05:	75 d9                	jne    401ae0 <__write_memory.part.0+0x30>
  401b07:	4c 89 e1             	mov    %r12,%rcx
  401b0a:	e8 01 0d 00 00       	callq  402810 <__mingw_GetSectionForAddress>
  401b0f:	48 89 c5             	mov    %rax,%rbp
  401b12:	48 85 c0             	test   %rax,%rax
  401b15:	0f 84 77 01 00 00    	je     401c92 <__write_memory.part.0+0x1e2>
  401b1b:	48 8b 05 f6 5a 00 00 	mov    0x5af6(%rip),%rax        # 407618 <the_secs>
  401b22:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
  401b26:	48 c1 e7 03          	shl    $0x3,%rdi
  401b2a:	48 01 f8             	add    %rdi,%rax
  401b2d:	48 89 68 20          	mov    %rbp,0x20(%rax)
  401b31:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b37:	e8 04 0e 00 00       	callq  402940 <_GetPEImageBase>
  401b3c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  401b3f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b44:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b4a:	48 01 c1             	add    %rax,%rcx
  401b4d:	48 8b 05 c4 5a 00 00 	mov    0x5ac4(%rip),%rax        # 407618 <the_secs>
  401b54:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
  401b59:	ff 15 25 67 00 00    	callq  *0x6725(%rip)        # 408284 <__imp_VirtualQuery>
  401b5f:	48 85 c0             	test   %rax,%rax
  401b62:	0f 84 39 01 00 00    	je     401ca1 <__write_memory.part.0+0x1f1>
  401b68:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b6c:	8d 50 c0             	lea    -0x40(%rax),%edx
  401b6f:	83 e2 bf             	and    $0xffffffbf,%edx
  401b72:	74 0c                	je     401b80 <__write_memory.part.0+0xd0>
  401b74:	83 e8 04             	sub    $0x4,%eax
  401b77:	83 e0 fb             	and    $0xfffffffb,%eax
  401b7a:	0f 85 90 00 00 00    	jne    401c10 <__write_memory.part.0+0x160>
  401b80:	83 05 8d 5a 00 00 01 	addl   $0x1,0x5a8d(%rip)        # 407614 <maxSections>
  401b87:	83 fb 08             	cmp    $0x8,%ebx
  401b8a:	73 2c                	jae    401bb8 <__write_memory.part.0+0x108>
  401b8c:	f6 c3 04             	test   $0x4,%bl
  401b8f:	0f 85 cb 00 00 00    	jne    401c60 <__write_memory.part.0+0x1b0>
  401b95:	85 db                	test   %ebx,%ebx
  401b97:	74 10                	je     401ba9 <__write_memory.part.0+0xf9>
  401b99:	0f b6 06             	movzbl (%rsi),%eax
  401b9c:	41 88 04 24          	mov    %al,(%r12)
  401ba0:	f6 c3 02             	test   $0x2,%bl
  401ba3:	0f 85 d7 00 00 00    	jne    401c80 <__write_memory.part.0+0x1d0>
  401ba9:	48 83 c4 50          	add    $0x50,%rsp
  401bad:	5b                   	pop    %rbx
  401bae:	5e                   	pop    %rsi
  401baf:	5f                   	pop    %rdi
  401bb0:	5d                   	pop    %rbp
  401bb1:	41 5c                	pop    %r12
  401bb3:	c3                   	retq   
  401bb4:	0f 1f 40 00          	nopl   0x0(%rax)
  401bb8:	48 8b 06             	mov    (%rsi),%rax
  401bbb:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
  401bc0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  401bc4:	49 89 04 24          	mov    %rax,(%r12)
  401bc8:	89 d8                	mov    %ebx,%eax
  401bca:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
  401bcf:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
  401bd4:	49 29 cc             	sub    %rcx,%r12
  401bd7:	44 01 e3             	add    %r12d,%ebx
  401bda:	4c 29 e6             	sub    %r12,%rsi
  401bdd:	83 e3 f8             	and    $0xfffffff8,%ebx
  401be0:	83 fb 08             	cmp    $0x8,%ebx
  401be3:	72 c4                	jb     401ba9 <__write_memory.part.0+0xf9>
  401be5:	83 e3 f8             	and    $0xfffffff8,%ebx
  401be8:	31 c0                	xor    %eax,%eax
  401bea:	89 c2                	mov    %eax,%edx
  401bec:	83 c0 08             	add    $0x8,%eax
  401bef:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
  401bf3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
  401bf7:	39 d8                	cmp    %ebx,%eax
  401bf9:	72 ef                	jb     401bea <__write_memory.part.0+0x13a>
  401bfb:	48 83 c4 50          	add    $0x50,%rsp
  401bff:	5b                   	pop    %rbx
  401c00:	5e                   	pop    %rsi
  401c01:	5f                   	pop    %rdi
  401c02:	5d                   	pop    %rbp
  401c03:	41 5c                	pop    %r12
  401c05:	c3                   	retq   
  401c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c0d:	00 00 00 
  401c10:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401c15:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401c1a:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401c20:	48 03 3d f1 59 00 00 	add    0x59f1(%rip),%rdi        # 407618 <the_secs>
  401c27:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  401c2b:	49 89 f9             	mov    %rdi,%r9
  401c2e:	48 89 57 10          	mov    %rdx,0x10(%rdi)
  401c32:	ff 15 44 66 00 00    	callq  *0x6644(%rip)        # 40827c <__imp_VirtualProtect>
  401c38:	85 c0                	test   %eax,%eax
  401c3a:	0f 85 40 ff ff ff    	jne    401b80 <__write_memory.part.0+0xd0>
  401c40:	ff 15 b6 65 00 00    	callq  *0x65b6(%rip)        # 4081fc <__imp_GetLastError>
  401c46:	48 8d 0d eb 25 00 00 	lea    0x25eb(%rip),%rcx        # 404238 <.rdata+0x78>
  401c4d:	89 c2                	mov    %eax,%edx
  401c4f:	e8 ec fd ff ff       	callq  401a40 <__report_error>
  401c54:	0f 1f 40 00          	nopl   0x0(%rax)
  401c58:	31 ff                	xor    %edi,%edi
  401c5a:	e9 a8 fe ff ff       	jmpq   401b07 <__write_memory.part.0+0x57>
  401c5f:	90                   	nop
  401c60:	8b 06                	mov    (%rsi),%eax
  401c62:	89 db                	mov    %ebx,%ebx
  401c64:	41 89 04 24          	mov    %eax,(%r12)
  401c68:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
  401c6c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
  401c71:	e9 33 ff ff ff       	jmpq   401ba9 <__write_memory.part.0+0xf9>
  401c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c7d:	00 00 00 
  401c80:	89 db                	mov    %ebx,%ebx
  401c82:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
  401c87:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
  401c8d:	e9 17 ff ff ff       	jmpq   401ba9 <__write_memory.part.0+0xf9>
  401c92:	4c 89 e2             	mov    %r12,%rdx
  401c95:	48 8d 0d 44 25 00 00 	lea    0x2544(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c9c:	e8 9f fd ff ff       	callq  401a40 <__report_error>
  401ca1:	48 8b 05 70 59 00 00 	mov    0x5970(%rip),%rax        # 407618 <the_secs>
  401ca8:	8b 55 08             	mov    0x8(%rbp),%edx
  401cab:	48 8d 0d 4e 25 00 00 	lea    0x254e(%rip),%rcx        # 404200 <.rdata+0x40>
  401cb2:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
  401cb7:	e8 84 fd ff ff       	callq  401a40 <__report_error>
  401cbc:	90                   	nop
  401cbd:	0f 1f 00             	nopl   (%rax)

0000000000401cc0 <_pei386_runtime_relocator>:
  401cc0:	55                   	push   %rbp
  401cc1:	41 57                	push   %r15
  401cc3:	41 56                	push   %r14
  401cc5:	41 55                	push   %r13
  401cc7:	41 54                	push   %r12
  401cc9:	57                   	push   %rdi
  401cca:	56                   	push   %rsi
  401ccb:	53                   	push   %rbx
  401ccc:	48 83 ec 38          	sub    $0x38,%rsp
  401cd0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cd7:	00 
  401cd8:	8b 35 32 59 00 00    	mov    0x5932(%rip),%esi        # 407610 <was_init.93800>
  401cde:	85 f6                	test   %esi,%esi
  401ce0:	74 16                	je     401cf8 <_pei386_runtime_relocator+0x38>
  401ce2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401ce6:	5b                   	pop    %rbx
  401ce7:	5e                   	pop    %rsi
  401ce8:	5f                   	pop    %rdi
  401ce9:	41 5c                	pop    %r12
  401ceb:	41 5d                	pop    %r13
  401ced:	41 5e                	pop    %r14
  401cef:	41 5f                	pop    %r15
  401cf1:	5d                   	pop    %rbp
  401cf2:	c3                   	retq   
  401cf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401cf8:	c7 05 0e 59 00 00 01 	movl   $0x1,0x590e(%rip)        # 407610 <was_init.93800>
  401cff:	00 00 00 
  401d02:	e8 99 0b 00 00       	callq  4028a0 <__mingw_GetSectionCount>
  401d07:	48 98                	cltq   
  401d09:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401d0d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401d14:	00 
  401d15:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d19:	e8 a2 0d 00 00       	callq  402ac0 <___chkstk_ms>
  401d1e:	4c 8b 25 3b 26 00 00 	mov    0x263b(%rip),%r12        # 404360 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401d25:	48 8b 1d 44 26 00 00 	mov    0x2644(%rip),%rbx        # 404370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401d2c:	c7 05 de 58 00 00 00 	movl   $0x0,0x58de(%rip)        # 407614 <maxSections>
  401d33:	00 00 00 
  401d36:	48 29 c4             	sub    %rax,%rsp
  401d39:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401d3e:	48 89 05 d3 58 00 00 	mov    %rax,0x58d3(%rip)        # 407618 <the_secs>
  401d45:	4c 89 e0             	mov    %r12,%rax
  401d48:	48 29 d8             	sub    %rbx,%rax
  401d4b:	48 83 f8 07          	cmp    $0x7,%rax
  401d4f:	7e 91                	jle    401ce2 <_pei386_runtime_relocator+0x22>
  401d51:	8b 13                	mov    (%rbx),%edx
  401d53:	48 83 f8 0b          	cmp    $0xb,%rax
  401d57:	0f 8f 4b 01 00 00    	jg     401ea8 <_pei386_runtime_relocator+0x1e8>
  401d5d:	85 d2                	test   %edx,%edx
  401d5f:	0f 85 cb 01 00 00    	jne    401f30 <_pei386_runtime_relocator+0x270>
  401d65:	8b 43 04             	mov    0x4(%rbx),%eax
  401d68:	85 c0                	test   %eax,%eax
  401d6a:	0f 85 c0 01 00 00    	jne    401f30 <_pei386_runtime_relocator+0x270>
  401d70:	8b 53 08             	mov    0x8(%rbx),%edx
  401d73:	83 fa 01             	cmp    $0x1,%edx
  401d76:	0f 85 1c 02 00 00    	jne    401f98 <_pei386_runtime_relocator+0x2d8>
  401d7c:	48 83 c3 0c          	add    $0xc,%rbx
  401d80:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
  401d84:	4c 8b 2d 05 26 00 00 	mov    0x2605(%rip),%r13        # 404390 <.refptr.__image_base__>
  401d8b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401d92:	ff ff ff 
  401d95:	4c 39 e3             	cmp    %r12,%rbx
  401d98:	72 3f                	jb     401dd9 <_pei386_runtime_relocator+0x119>
  401d9a:	e9 43 ff ff ff       	jmpq   401ce2 <_pei386_runtime_relocator+0x22>
  401d9f:	90                   	nop
  401da0:	44 0f b6 01          	movzbl (%rcx),%r8d
  401da4:	4c 89 ff             	mov    %r15,%rdi
  401da7:	4d 89 c2             	mov    %r8,%r10
  401daa:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401db1:	45 84 c0             	test   %r8b,%r8b
  401db4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401db8:	49 29 d0             	sub    %rdx,%r8
  401dbb:	4c 89 fa             	mov    %r15,%rdx
  401dbe:	4d 01 c8             	add    %r9,%r8
  401dc1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401dc5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401dcb:	e8 e0 fc ff ff       	callq  401ab0 <__write_memory.part.0>
  401dd0:	48 83 c3 0c          	add    $0xc,%rbx
  401dd4:	4c 39 e3             	cmp    %r12,%rbx
  401dd7:	73 77                	jae    401e50 <_pei386_runtime_relocator+0x190>
  401dd9:	8b 13                	mov    (%rbx),%edx
  401ddb:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401dde:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
  401de3:	4c 01 ea             	add    %r13,%rdx
  401de6:	4c 01 e9             	add    %r13,%rcx
  401de9:	4c 8b 0a             	mov    (%rdx),%r9
  401dec:	41 83 f8 20          	cmp    $0x20,%r8d
  401df0:	0f 84 0a 01 00 00    	je     401f00 <_pei386_runtime_relocator+0x240>
  401df6:	0f 87 d4 00 00 00    	ja     401ed0 <_pei386_runtime_relocator+0x210>
  401dfc:	41 83 f8 08          	cmp    $0x8,%r8d
  401e00:	74 9e                	je     401da0 <_pei386_runtime_relocator+0xe0>
  401e02:	41 83 f8 10          	cmp    $0x10,%r8d
  401e06:	0f 85 75 01 00 00    	jne    401f81 <_pei386_runtime_relocator+0x2c1>
  401e0c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e10:	4c 89 ff             	mov    %r15,%rdi
  401e13:	4d 89 c2             	mov    %r8,%r10
  401e16:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e1d:	66 45 85 c0          	test   %r8w,%r8w
  401e21:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e25:	48 83 c3 0c          	add    $0xc,%rbx
  401e29:	49 29 d0             	sub    %rdx,%r8
  401e2c:	4c 89 fa             	mov    %r15,%rdx
  401e2f:	4d 01 c8             	add    %r9,%r8
  401e32:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e36:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e3c:	e8 6f fc ff ff       	callq  401ab0 <__write_memory.part.0>
  401e41:	4c 39 e3             	cmp    %r12,%rbx
  401e44:	72 93                	jb     401dd9 <_pei386_runtime_relocator+0x119>
  401e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e4d:	00 00 00 
  401e50:	8b 05 be 57 00 00    	mov    0x57be(%rip),%eax        # 407614 <maxSections>
  401e56:	85 c0                	test   %eax,%eax
  401e58:	0f 8e 84 fe ff ff    	jle    401ce2 <_pei386_runtime_relocator+0x22>
  401e5e:	4c 8b 25 17 64 00 00 	mov    0x6417(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401e65:	31 db                	xor    %ebx,%ebx
  401e67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401e6e:	00 00 
  401e70:	48 8b 05 a1 57 00 00 	mov    0x57a1(%rip),%rax        # 407618 <the_secs>
  401e77:	48 01 d8             	add    %rbx,%rax
  401e7a:	44 8b 00             	mov    (%rax),%r8d
  401e7d:	45 85 c0             	test   %r8d,%r8d
  401e80:	74 0e                	je     401e90 <_pei386_runtime_relocator+0x1d0>
  401e82:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e86:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401e8a:	49 89 f9             	mov    %rdi,%r9
  401e8d:	41 ff d4             	callq  *%r12
  401e90:	83 c6 01             	add    $0x1,%esi
  401e93:	48 83 c3 28          	add    $0x28,%rbx
  401e97:	3b 35 77 57 00 00    	cmp    0x5777(%rip),%esi        # 407614 <maxSections>
  401e9d:	7c d1                	jl     401e70 <_pei386_runtime_relocator+0x1b0>
  401e9f:	e9 3e fe ff ff       	jmpq   401ce2 <_pei386_runtime_relocator+0x22>
  401ea4:	0f 1f 40 00          	nopl   0x0(%rax)
  401ea8:	85 d2                	test   %edx,%edx
  401eaa:	0f 85 80 00 00 00    	jne    401f30 <_pei386_runtime_relocator+0x270>
  401eb0:	8b 43 04             	mov    0x4(%rbx),%eax
  401eb3:	89 c7                	mov    %eax,%edi
  401eb5:	0b 7b 08             	or     0x8(%rbx),%edi
  401eb8:	0f 85 aa fe ff ff    	jne    401d68 <_pei386_runtime_relocator+0xa8>
  401ebe:	8b 53 0c             	mov    0xc(%rbx),%edx
  401ec1:	48 83 c3 0c          	add    $0xc,%rbx
  401ec5:	e9 93 fe ff ff       	jmpq   401d5d <_pei386_runtime_relocator+0x9d>
  401eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ed0:	41 83 f8 40          	cmp    $0x40,%r8d
  401ed4:	0f 85 a7 00 00 00    	jne    401f81 <_pei386_runtime_relocator+0x2c1>
  401eda:	48 8b 01             	mov    (%rcx),%rax
  401edd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401ee3:	4c 89 ff             	mov    %r15,%rdi
  401ee6:	48 29 d0             	sub    %rdx,%rax
  401ee9:	4c 89 fa             	mov    %r15,%rdx
  401eec:	4c 01 c8             	add    %r9,%rax
  401eef:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ef3:	e8 b8 fb ff ff       	callq  401ab0 <__write_memory.part.0>
  401ef8:	e9 d3 fe ff ff       	jmpq   401dd0 <_pei386_runtime_relocator+0x110>
  401efd:	0f 1f 00             	nopl   (%rax)
  401f00:	8b 01                	mov    (%rcx),%eax
  401f02:	4c 89 ff             	mov    %r15,%rdi
  401f05:	49 89 c0             	mov    %rax,%r8
  401f08:	4c 09 f0             	or     %r14,%rax
  401f0b:	45 85 c0             	test   %r8d,%r8d
  401f0e:	49 0f 49 c0          	cmovns %r8,%rax
  401f12:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f18:	48 29 d0             	sub    %rdx,%rax
  401f1b:	4c 89 fa             	mov    %r15,%rdx
  401f1e:	4c 01 c8             	add    %r9,%rax
  401f21:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401f25:	e8 86 fb ff ff       	callq  401ab0 <__write_memory.part.0>
  401f2a:	e9 a1 fe ff ff       	jmpq   401dd0 <_pei386_runtime_relocator+0x110>
  401f2f:	90                   	nop
  401f30:	4c 39 e3             	cmp    %r12,%rbx
  401f33:	0f 83 a9 fd ff ff    	jae    401ce2 <_pei386_runtime_relocator+0x22>
  401f39:	49 83 ec 01          	sub    $0x1,%r12
  401f3d:	4c 8b 2d 4c 24 00 00 	mov    0x244c(%rip),%r13        # 404390 <.refptr.__image_base__>
  401f44:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401f48:	49 29 dc             	sub    %rbx,%r12
  401f4b:	49 c1 ec 03          	shr    $0x3,%r12
  401f4f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
  401f54:	0f 1f 40 00          	nopl   0x0(%rax)
  401f58:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401f5b:	8b 03                	mov    (%rbx),%eax
  401f5d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f63:	48 89 fa             	mov    %rdi,%rdx
  401f66:	48 83 c3 08          	add    $0x8,%rbx
  401f6a:	4c 01 e9             	add    %r13,%rcx
  401f6d:	03 01                	add    (%rcx),%eax
  401f6f:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401f72:	e8 39 fb ff ff       	callq  401ab0 <__write_memory.part.0>
  401f77:	4c 39 e3             	cmp    %r12,%rbx
  401f7a:	75 dc                	jne    401f58 <_pei386_runtime_relocator+0x298>
  401f7c:	e9 cf fe ff ff       	jmpq   401e50 <_pei386_runtime_relocator+0x190>
  401f81:	44 89 c2             	mov    %r8d,%edx
  401f84:	48 8d 0d 0d 23 00 00 	lea    0x230d(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f8b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f92:	00 
  401f93:	e8 a8 fa ff ff       	callq  401a40 <__report_error>
  401f98:	48 8d 0d c1 22 00 00 	lea    0x22c1(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f9f:	e8 9c fa ff ff       	callq  401a40 <__report_error>
  401fa4:	90                   	nop
  401fa5:	90                   	nop
  401fa6:	90                   	nop
  401fa7:	90                   	nop
  401fa8:	90                   	nop
  401fa9:	90                   	nop
  401faa:	90                   	nop
  401fab:	90                   	nop
  401fac:	90                   	nop
  401fad:	90                   	nop
  401fae:	90                   	nop
  401faf:	90                   	nop

0000000000401fb0 <__mingw_raise_matherr>:
  401fb0:	48 83 ec 58          	sub    $0x58,%rsp
  401fb4:	48 8b 05 65 56 00 00 	mov    0x5665(%rip),%rax        # 407620 <stUserMathErr>
  401fbb:	48 85 c0             	test   %rax,%rax
  401fbe:	74 2c                	je     401fec <__mingw_raise_matherr+0x3c>
  401fc0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401fc7:	00 00 
  401fc9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401fcd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401fd2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401fd7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401fdd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401fe3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401fe9:	ff d0                	callq  *%rax
  401feb:	90                   	nop
  401fec:	48 83 c4 58          	add    $0x58,%rsp
  401ff0:	c3                   	retq   
  401ff1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401ff8:	00 00 00 00 
  401ffc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402000 <__mingw_setusermatherr>:
  402000:	48 89 0d 19 56 00 00 	mov    %rcx,0x5619(%rip)        # 407620 <stUserMathErr>
  402007:	e9 7c 0b 00 00       	jmpq   402b88 <__setusermatherr>
  40200c:	90                   	nop
  40200d:	90                   	nop
  40200e:	90                   	nop
  40200f:	90                   	nop

0000000000402010 <__mingw_SEH_error_handler>:
  402010:	48 83 ec 28          	sub    $0x28,%rsp
  402014:	8b 01                	mov    (%rcx),%eax
  402016:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40201b:	0f 87 2f 01 00 00    	ja     402150 <__mingw_SEH_error_handler+0x140>
  402021:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402026:	76 58                	jbe    402080 <__mingw_SEH_error_handler+0x70>
  402028:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  40202d:	83 f8 09             	cmp    $0x9,%eax
  402030:	77 3a                	ja     40206c <__mingw_SEH_error_handler+0x5c>
  402032:	48 8d 15 97 22 00 00 	lea    0x2297(%rip),%rdx        # 4042d0 <.rdata>
  402039:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40203d:	48 01 d0             	add    %rdx,%rax
  402040:	ff e0                	jmpq   *%rax
  402042:	31 d2                	xor    %edx,%edx
  402044:	b9 08 00 00 00       	mov    $0x8,%ecx
  402049:	e8 ca 0a 00 00       	callq  402b18 <signal>
  40204e:	48 83 f8 01          	cmp    $0x1,%rax
  402052:	0f 85 a5 00 00 00    	jne    4020fd <__mingw_SEH_error_handler+0xed>
  402058:	ba 01 00 00 00       	mov    $0x1,%edx
  40205d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402062:	e8 b1 0a 00 00       	callq  402b18 <signal>
  402067:	e8 c4 f9 ff ff       	callq  401a30 <_fpreset>
  40206c:	45 31 c0             	xor    %r8d,%r8d
  40206f:	44 89 c0             	mov    %r8d,%eax
  402072:	48 83 c4 28          	add    $0x28,%rsp
  402076:	c3                   	retq   
  402077:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40207e:	00 00 
  402080:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402085:	0f 84 95 00 00 00    	je     402120 <__mingw_SEH_error_handler+0x110>
  40208b:	76 46                	jbe    4020d3 <__mingw_SEH_error_handler+0xc3>
  40208d:	45 31 c0             	xor    %r8d,%r8d
  402090:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402095:	74 d8                	je     40206f <__mingw_SEH_error_handler+0x5f>
  402097:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  40209c:	0f 85 ae 00 00 00    	jne    402150 <__mingw_SEH_error_handler+0x140>
  4020a2:	31 d2                	xor    %edx,%edx
  4020a4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020a9:	e8 6a 0a 00 00       	callq  402b18 <signal>
  4020ae:	48 83 f8 01          	cmp    $0x1,%rax
  4020b2:	0f 84 b8 00 00 00    	je     402170 <__mingw_SEH_error_handler+0x160>
  4020b8:	48 85 c0             	test   %rax,%rax
  4020bb:	0f 84 9f 00 00 00    	je     402160 <__mingw_SEH_error_handler+0x150>
  4020c1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020c6:	ff d0                	callq  *%rax
  4020c8:	45 31 c0             	xor    %r8d,%r8d
  4020cb:	44 89 c0             	mov    %r8d,%eax
  4020ce:	48 83 c4 28          	add    $0x28,%rsp
  4020d2:	c3                   	retq   
  4020d3:	45 31 c0             	xor    %r8d,%r8d
  4020d6:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4020db:	41 0f 95 c0          	setne  %r8b
  4020df:	44 89 c0             	mov    %r8d,%eax
  4020e2:	48 83 c4 28          	add    $0x28,%rsp
  4020e6:	c3                   	retq   
  4020e7:	31 d2                	xor    %edx,%edx
  4020e9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020ee:	e8 25 0a 00 00       	callq  402b18 <signal>
  4020f3:	48 83 f8 01          	cmp    $0x1,%rax
  4020f7:	0f 84 93 00 00 00    	je     402190 <__mingw_SEH_error_handler+0x180>
  4020fd:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402103:	48 85 c0             	test   %rax,%rax
  402106:	0f 84 63 ff ff ff    	je     40206f <__mingw_SEH_error_handler+0x5f>
  40210c:	b9 08 00 00 00       	mov    $0x8,%ecx
  402111:	ff d0                	callq  *%rax
  402113:	45 31 c0             	xor    %r8d,%r8d
  402116:	e9 54 ff ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  40211b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402120:	31 d2                	xor    %edx,%edx
  402122:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402127:	e8 ec 09 00 00       	callq  402b18 <signal>
  40212c:	48 83 f8 01          	cmp    $0x1,%rax
  402130:	74 7e                	je     4021b0 <__mingw_SEH_error_handler+0x1a0>
  402132:	48 85 c0             	test   %rax,%rax
  402135:	74 29                	je     402160 <__mingw_SEH_error_handler+0x150>
  402137:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40213c:	ff d0                	callq  *%rax
  40213e:	45 31 c0             	xor    %r8d,%r8d
  402141:	e9 29 ff ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  402146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40214d:	00 00 00 
  402150:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402156:	e9 14 ff ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  40215b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402160:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402166:	e9 04 ff ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  40216b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402170:	ba 01 00 00 00       	mov    $0x1,%edx
  402175:	b9 04 00 00 00       	mov    $0x4,%ecx
  40217a:	e8 99 09 00 00       	callq  402b18 <signal>
  40217f:	45 31 c0             	xor    %r8d,%r8d
  402182:	e9 e8 fe ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  402187:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40218e:	00 00 
  402190:	ba 01 00 00 00       	mov    $0x1,%edx
  402195:	b9 08 00 00 00       	mov    $0x8,%ecx
  40219a:	e8 79 09 00 00       	callq  402b18 <signal>
  40219f:	45 31 c0             	xor    %r8d,%r8d
  4021a2:	e9 c8 fe ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  4021a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4021ae:	00 00 
  4021b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021ba:	e8 59 09 00 00       	callq  402b18 <signal>
  4021bf:	45 31 c0             	xor    %r8d,%r8d
  4021c2:	e9 a8 fe ff ff       	jmpq   40206f <__mingw_SEH_error_handler+0x5f>
  4021c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4021ce:	00 00 

00000000004021d0 <__mingw_init_ehandler>:
  4021d0:	41 54                	push   %r12
  4021d2:	55                   	push   %rbp
  4021d3:	57                   	push   %rdi
  4021d4:	56                   	push   %rsi
  4021d5:	53                   	push   %rbx
  4021d6:	48 83 ec 20          	sub    $0x20,%rsp
  4021da:	e8 61 07 00 00       	callq  402940 <_GetPEImageBase>
  4021df:	48 89 c6             	mov    %rax,%rsi
  4021e2:	8b 05 60 54 00 00    	mov    0x5460(%rip),%eax        # 407648 <was_here.93644>
  4021e8:	85 c0                	test   %eax,%eax
  4021ea:	75 25                	jne    402211 <__mingw_init_ehandler+0x41>
  4021ec:	48 85 f6             	test   %rsi,%rsi
  4021ef:	74 20                	je     402211 <__mingw_init_ehandler+0x41>
  4021f1:	48 8d 0d 00 21 00 00 	lea    0x2100(%rip),%rcx        # 4042f8 <.rdata+0x28>
  4021f8:	c7 05 46 54 00 00 01 	movl   $0x1,0x5446(%rip)        # 407648 <was_here.93644>
  4021ff:	00 00 00 
  402202:	e8 69 05 00 00       	callq  402770 <_FindPESectionByName>
  402207:	48 85 c0             	test   %rax,%rax
  40220a:	74 14                	je     402220 <__mingw_init_ehandler+0x50>
  40220c:	b8 01 00 00 00       	mov    $0x1,%eax
  402211:	48 83 c4 20          	add    $0x20,%rsp
  402215:	5b                   	pop    %rbx
  402216:	5e                   	pop    %rsi
  402217:	5f                   	pop    %rdi
  402218:	5d                   	pop    %rbp
  402219:	41 5c                	pop    %r12
  40221b:	c3                   	retq   
  40221c:	0f 1f 40 00          	nopl   0x0(%rax)
  402220:	48 8d 1d 39 55 00 00 	lea    0x5539(%rip),%rbx        # 407760 <emu_pdata>
  402227:	b9 30 00 00 00       	mov    $0x30,%ecx
  40222c:	45 31 e4             	xor    %r12d,%r12d
  40222f:	48 8d 15 2a 54 00 00 	lea    0x542a(%rip),%rdx        # 407660 <emu_xdata>
  402236:	48 89 df             	mov    %rbx,%rdi
  402239:	48 8d 2d d0 fd ff ff 	lea    -0x230(%rip),%rbp        # 402010 <__mingw_SEH_error_handler>
  402240:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402243:	b9 20 00 00 00       	mov    $0x20,%ecx
  402248:	48 89 d7             	mov    %rdx,%rdi
  40224b:	48 29 f5             	sub    %rsi,%rbp
  40224e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402251:	48 89 d7             	mov    %rdx,%rdi
  402254:	eb 37                	jmp    40228d <__mingw_init_ehandler+0xbd>
  402256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40225d:	00 00 00 
  402260:	c6 07 09             	movb   $0x9,(%rdi)
  402263:	49 83 c4 01          	add    $0x1,%r12
  402267:	48 83 c3 0c          	add    $0xc,%rbx
  40226b:	89 6f 04             	mov    %ebp,0x4(%rdi)
  40226e:	8b 50 0c             	mov    0xc(%rax),%edx
  402271:	89 53 f4             	mov    %edx,-0xc(%rbx)
  402274:	03 50 08             	add    0x8(%rax),%edx
  402277:	48 89 f8             	mov    %rdi,%rax
  40227a:	48 83 c7 08          	add    $0x8,%rdi
  40227e:	48 29 f0             	sub    %rsi,%rax
  402281:	89 53 f8             	mov    %edx,-0x8(%rbx)
  402284:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402287:	49 83 fc 20          	cmp    $0x20,%r12
  40228b:	74 23                	je     4022b0 <__mingw_init_ehandler+0xe0>
  40228d:	4c 89 e1             	mov    %r12,%rcx
  402290:	e8 3b 06 00 00       	callq  4028d0 <_FindPESectionExec>
  402295:	48 85 c0             	test   %rax,%rax
  402298:	75 c6                	jne    402260 <__mingw_init_ehandler+0x90>
  40229a:	4d 85 e4             	test   %r12,%r12
  40229d:	0f 84 69 ff ff ff    	je     40220c <__mingw_init_ehandler+0x3c>
  4022a3:	44 89 e2             	mov    %r12d,%edx
  4022a6:	eb 0d                	jmp    4022b5 <__mingw_init_ehandler+0xe5>
  4022a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4022af:	00 
  4022b0:	ba 20 00 00 00       	mov    $0x20,%edx
  4022b5:	49 89 f0             	mov    %rsi,%r8
  4022b8:	48 8d 0d a1 54 00 00 	lea    0x54a1(%rip),%rcx        # 407760 <emu_pdata>
  4022bf:	ff 15 6f 5f 00 00    	callq  *0x5f6f(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4022c5:	e9 42 ff ff ff       	jmpq   40220c <__mingw_init_ehandler+0x3c>
  4022ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004022d0 <_gnu_exception_handler>:
  4022d0:	41 54                	push   %r12
  4022d2:	48 83 ec 20          	sub    $0x20,%rsp
  4022d6:	48 8b 11             	mov    (%rcx),%rdx
  4022d9:	8b 02                	mov    (%rdx),%eax
  4022db:	49 89 cc             	mov    %rcx,%r12
  4022de:	89 c1                	mov    %eax,%ecx
  4022e0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4022e6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4022ec:	0f 84 ce 00 00 00    	je     4023c0 <_gnu_exception_handler+0xf0>
  4022f2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022f7:	0f 87 aa 00 00 00    	ja     4023a7 <_gnu_exception_handler+0xd7>
  4022fd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402302:	76 54                	jbe    402358 <_gnu_exception_handler+0x88>
  402304:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  402309:	83 f8 09             	cmp    $0x9,%eax
  40230c:	77 3a                	ja     402348 <_gnu_exception_handler+0x78>
  40230e:	48 8d 15 eb 1f 00 00 	lea    0x1feb(%rip),%rdx        # 404300 <.rdata+0x30>
  402315:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402319:	48 01 d0             	add    %rdx,%rax
  40231c:	ff e0                	jmpq   *%rax
  40231e:	31 d2                	xor    %edx,%edx
  402320:	b9 08 00 00 00       	mov    $0x8,%ecx
  402325:	e8 ee 07 00 00       	callq  402b18 <signal>
  40232a:	48 83 f8 01          	cmp    $0x1,%rax
  40232e:	0f 85 b7 00 00 00    	jne    4023eb <_gnu_exception_handler+0x11b>
  402334:	ba 01 00 00 00       	mov    $0x1,%edx
  402339:	b9 08 00 00 00       	mov    $0x8,%ecx
  40233e:	e8 d5 07 00 00       	callq  402b18 <signal>
  402343:	e8 e8 f6 ff ff       	callq  401a30 <_fpreset>
  402348:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234d:	48 83 c4 20          	add    $0x20,%rsp
  402351:	41 5c                	pop    %r12
  402353:	c3                   	retq   
  402354:	0f 1f 40 00          	nopl   0x0(%rax)
  402358:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  40235d:	0f 84 a5 00 00 00    	je     402408 <_gnu_exception_handler+0x138>
  402363:	76 3b                	jbe    4023a0 <_gnu_exception_handler+0xd0>
  402365:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40236a:	74 dc                	je     402348 <_gnu_exception_handler+0x78>
  40236c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402371:	75 34                	jne    4023a7 <_gnu_exception_handler+0xd7>
  402373:	31 d2                	xor    %edx,%edx
  402375:	b9 04 00 00 00       	mov    $0x4,%ecx
  40237a:	e8 99 07 00 00       	callq  402b18 <signal>
  40237f:	48 83 f8 01          	cmp    $0x1,%rax
  402383:	0f 84 a7 00 00 00    	je     402430 <_gnu_exception_handler+0x160>
  402389:	48 85 c0             	test   %rax,%rax
  40238c:	74 19                	je     4023a7 <_gnu_exception_handler+0xd7>
  40238e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402393:	ff d0                	callq  *%rax
  402395:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40239a:	eb b1                	jmp    40234d <_gnu_exception_handler+0x7d>
  40239c:	0f 1f 40 00          	nopl   0x0(%rax)
  4023a0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4023a5:	74 a1                	je     402348 <_gnu_exception_handler+0x78>
  4023a7:	48 8b 05 92 52 00 00 	mov    0x5292(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  4023ae:	48 85 c0             	test   %rax,%rax
  4023b1:	74 1d                	je     4023d0 <_gnu_exception_handler+0x100>
  4023b3:	4c 89 e1             	mov    %r12,%rcx
  4023b6:	48 83 c4 20          	add    $0x20,%rsp
  4023ba:	41 5c                	pop    %r12
  4023bc:	48 ff e0             	rex.W jmpq *%rax
  4023bf:	90                   	nop
  4023c0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4023c4:	0f 85 28 ff ff ff    	jne    4022f2 <_gnu_exception_handler+0x22>
  4023ca:	e9 79 ff ff ff       	jmpq   402348 <_gnu_exception_handler+0x78>
  4023cf:	90                   	nop
  4023d0:	31 c0                	xor    %eax,%eax
  4023d2:	48 83 c4 20          	add    $0x20,%rsp
  4023d6:	41 5c                	pop    %r12
  4023d8:	c3                   	retq   
  4023d9:	31 d2                	xor    %edx,%edx
  4023db:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023e0:	e8 33 07 00 00       	callq  402b18 <signal>
  4023e5:	48 83 f8 01          	cmp    $0x1,%rax
  4023e9:	74 65                	je     402450 <_gnu_exception_handler+0x180>
  4023eb:	48 85 c0             	test   %rax,%rax
  4023ee:	74 b7                	je     4023a7 <_gnu_exception_handler+0xd7>
  4023f0:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023f5:	ff d0                	callq  *%rax
  4023f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023fc:	e9 4c ff ff ff       	jmpq   40234d <_gnu_exception_handler+0x7d>
  402401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402408:	31 d2                	xor    %edx,%edx
  40240a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40240f:	e8 04 07 00 00       	callq  402b18 <signal>
  402414:	48 83 f8 01          	cmp    $0x1,%rax
  402418:	74 4f                	je     402469 <_gnu_exception_handler+0x199>
  40241a:	48 85 c0             	test   %rax,%rax
  40241d:	74 88                	je     4023a7 <_gnu_exception_handler+0xd7>
  40241f:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402424:	ff d0                	callq  *%rax
  402426:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40242b:	e9 1d ff ff ff       	jmpq   40234d <_gnu_exception_handler+0x7d>
  402430:	ba 01 00 00 00       	mov    $0x1,%edx
  402435:	b9 04 00 00 00       	mov    $0x4,%ecx
  40243a:	e8 d9 06 00 00       	callq  402b18 <signal>
  40243f:	83 c8 ff             	or     $0xffffffff,%eax
  402442:	e9 06 ff ff ff       	jmpq   40234d <_gnu_exception_handler+0x7d>
  402447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40244e:	00 00 
  402450:	ba 01 00 00 00       	mov    $0x1,%edx
  402455:	b9 08 00 00 00       	mov    $0x8,%ecx
  40245a:	e8 b9 06 00 00       	callq  402b18 <signal>
  40245f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402464:	e9 e4 fe ff ff       	jmpq   40234d <_gnu_exception_handler+0x7d>
  402469:	ba 01 00 00 00       	mov    $0x1,%edx
  40246e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402473:	e8 a0 06 00 00       	callq  402b18 <signal>
  402478:	83 c8 ff             	or     $0xffffffff,%eax
  40247b:	e9 cd fe ff ff       	jmpq   40234d <_gnu_exception_handler+0x7d>

0000000000402480 <__mingwthr_run_key_dtors.part.0>:
  402480:	41 54                	push   %r12
  402482:	57                   	push   %rdi
  402483:	56                   	push   %rsi
  402484:	53                   	push   %rbx
  402485:	48 83 ec 28          	sub    $0x28,%rsp
  402489:	48 8d 0d 70 54 00 00 	lea    0x5470(%rip),%rcx        # 407900 <__mingwthr_cs>
  402490:	ff 15 46 5d 00 00    	callq  *0x5d46(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402496:	48 8b 1d 43 54 00 00 	mov    0x5443(%rip),%rbx        # 4078e0 <key_dtor_list>
  40249d:	48 85 db             	test   %rbx,%rbx
  4024a0:	74 32                	je     4024d4 <__mingwthr_run_key_dtors.part.0+0x54>
  4024a2:	48 8b 3d c3 5d 00 00 	mov    0x5dc3(%rip),%rdi        # 40826c <__imp_TlsGetValue>
  4024a9:	48 8b 35 4c 5d 00 00 	mov    0x5d4c(%rip),%rsi        # 4081fc <__imp_GetLastError>
  4024b0:	8b 0b                	mov    (%rbx),%ecx
  4024b2:	ff d7                	callq  *%rdi
  4024b4:	49 89 c4             	mov    %rax,%r12
  4024b7:	ff d6                	callq  *%rsi
  4024b9:	85 c0                	test   %eax,%eax
  4024bb:	75 0e                	jne    4024cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024bd:	4d 85 e4             	test   %r12,%r12
  4024c0:	74 09                	je     4024cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024c2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4024c6:	4c 89 e1             	mov    %r12,%rcx
  4024c9:	ff d0                	callq  *%rax
  4024cb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4024cf:	48 85 db             	test   %rbx,%rbx
  4024d2:	75 dc                	jne    4024b0 <__mingwthr_run_key_dtors.part.0+0x30>
  4024d4:	48 8d 0d 25 54 00 00 	lea    0x5425(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024db:	48 83 c4 28          	add    $0x28,%rsp
  4024df:	5b                   	pop    %rbx
  4024e0:	5e                   	pop    %rsi
  4024e1:	5f                   	pop    %rdi
  4024e2:	41 5c                	pop    %r12
  4024e4:	48 ff 25 39 5d 00 00 	rex.W jmpq *0x5d39(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024f0 <___w64_mingwthr_add_key_dtor>:
  4024f0:	57                   	push   %rdi
  4024f1:	56                   	push   %rsi
  4024f2:	53                   	push   %rbx
  4024f3:	48 83 ec 20          	sub    $0x20,%rsp
  4024f7:	8b 05 eb 53 00 00    	mov    0x53eb(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024fd:	89 cf                	mov    %ecx,%edi
  4024ff:	48 89 d6             	mov    %rdx,%rsi
  402502:	85 c0                	test   %eax,%eax
  402504:	75 0a                	jne    402510 <___w64_mingwthr_add_key_dtor+0x20>
  402506:	48 83 c4 20          	add    $0x20,%rsp
  40250a:	5b                   	pop    %rbx
  40250b:	5e                   	pop    %rsi
  40250c:	5f                   	pop    %rdi
  40250d:	c3                   	retq   
  40250e:	66 90                	xchg   %ax,%ax
  402510:	ba 18 00 00 00       	mov    $0x18,%edx
  402515:	b9 01 00 00 00       	mov    $0x1,%ecx
  40251a:	e8 39 06 00 00       	callq  402b58 <calloc>
  40251f:	48 89 c3             	mov    %rax,%rbx
  402522:	48 85 c0             	test   %rax,%rax
  402525:	74 3c                	je     402563 <___w64_mingwthr_add_key_dtor+0x73>
  402527:	89 38                	mov    %edi,(%rax)
  402529:	48 8d 0d d0 53 00 00 	lea    0x53d0(%rip),%rcx        # 407900 <__mingwthr_cs>
  402530:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402534:	ff 15 a2 5c 00 00    	callq  *0x5ca2(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40253a:	48 8b 05 9f 53 00 00 	mov    0x539f(%rip),%rax        # 4078e0 <key_dtor_list>
  402541:	48 8d 0d b8 53 00 00 	lea    0x53b8(%rip),%rcx        # 407900 <__mingwthr_cs>
  402548:	48 89 1d 91 53 00 00 	mov    %rbx,0x5391(%rip)        # 4078e0 <key_dtor_list>
  40254f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402553:	ff 15 cb 5c 00 00    	callq  *0x5ccb(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402559:	31 c0                	xor    %eax,%eax
  40255b:	48 83 c4 20          	add    $0x20,%rsp
  40255f:	5b                   	pop    %rbx
  402560:	5e                   	pop    %rsi
  402561:	5f                   	pop    %rdi
  402562:	c3                   	retq   
  402563:	83 c8 ff             	or     $0xffffffff,%eax
  402566:	eb 9e                	jmp    402506 <___w64_mingwthr_add_key_dtor+0x16>
  402568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40256f:	00 

0000000000402570 <___w64_mingwthr_remove_key_dtor>:
  402570:	53                   	push   %rbx
  402571:	48 83 ec 20          	sub    $0x20,%rsp
  402575:	8b 05 6d 53 00 00    	mov    0x536d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40257b:	89 cb                	mov    %ecx,%ebx
  40257d:	85 c0                	test   %eax,%eax
  40257f:	75 0f                	jne    402590 <___w64_mingwthr_remove_key_dtor+0x20>
  402581:	31 c0                	xor    %eax,%eax
  402583:	48 83 c4 20          	add    $0x20,%rsp
  402587:	5b                   	pop    %rbx
  402588:	c3                   	retq   
  402589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402590:	48 8d 0d 69 53 00 00 	lea    0x5369(%rip),%rcx        # 407900 <__mingwthr_cs>
  402597:	ff 15 3f 5c 00 00    	callq  *0x5c3f(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40259d:	48 8b 0d 3c 53 00 00 	mov    0x533c(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025a4:	48 85 c9             	test   %rcx,%rcx
  4025a7:	74 2a                	je     4025d3 <___w64_mingwthr_remove_key_dtor+0x63>
  4025a9:	31 d2                	xor    %edx,%edx
  4025ab:	eb 0e                	jmp    4025bb <___w64_mingwthr_remove_key_dtor+0x4b>
  4025ad:	0f 1f 00             	nopl   (%rax)
  4025b0:	48 89 ca             	mov    %rcx,%rdx
  4025b3:	48 85 c0             	test   %rax,%rax
  4025b6:	74 1b                	je     4025d3 <___w64_mingwthr_remove_key_dtor+0x63>
  4025b8:	48 89 c1             	mov    %rax,%rcx
  4025bb:	8b 01                	mov    (%rcx),%eax
  4025bd:	39 d8                	cmp    %ebx,%eax
  4025bf:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4025c3:	75 eb                	jne    4025b0 <___w64_mingwthr_remove_key_dtor+0x40>
  4025c5:	48 85 d2             	test   %rdx,%rdx
  4025c8:	74 26                	je     4025f0 <___w64_mingwthr_remove_key_dtor+0x80>
  4025ca:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4025ce:	e8 6d 05 00 00       	callq  402b40 <free>
  4025d3:	48 8d 0d 26 53 00 00 	lea    0x5326(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025da:	ff 15 44 5c 00 00    	callq  *0x5c44(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4025e0:	31 c0                	xor    %eax,%eax
  4025e2:	48 83 c4 20          	add    $0x20,%rsp
  4025e6:	5b                   	pop    %rbx
  4025e7:	c3                   	retq   
  4025e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025ef:	00 
  4025f0:	48 89 05 e9 52 00 00 	mov    %rax,0x52e9(%rip)        # 4078e0 <key_dtor_list>
  4025f7:	eb d5                	jmp    4025ce <___w64_mingwthr_remove_key_dtor+0x5e>
  4025f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402600 <__mingw_TLScallback>:
  402600:	53                   	push   %rbx
  402601:	48 83 ec 20          	sub    $0x20,%rsp
  402605:	83 fa 02             	cmp    $0x2,%edx
  402608:	0f 84 c2 00 00 00    	je     4026d0 <__mingw_TLScallback+0xd0>
  40260e:	77 28                	ja     402638 <__mingw_TLScallback+0x38>
  402610:	85 d2                	test   %edx,%edx
  402612:	74 4c                	je     402660 <__mingw_TLScallback+0x60>
  402614:	8b 05 ce 52 00 00    	mov    0x52ce(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40261a:	85 c0                	test   %eax,%eax
  40261c:	74 32                	je     402650 <__mingw_TLScallback+0x50>
  40261e:	c7 05 c0 52 00 00 01 	movl   $0x1,0x52c0(%rip)        # 4078e8 <__mingwthr_cs_init>
  402625:	00 00 00 
  402628:	b8 01 00 00 00       	mov    $0x1,%eax
  40262d:	48 83 c4 20          	add    $0x20,%rsp
  402631:	5b                   	pop    %rbx
  402632:	c3                   	retq   
  402633:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402638:	83 fa 03             	cmp    $0x3,%edx
  40263b:	75 eb                	jne    402628 <__mingw_TLScallback+0x28>
  40263d:	8b 05 a5 52 00 00    	mov    0x52a5(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402643:	85 c0                	test   %eax,%eax
  402645:	74 e1                	je     402628 <__mingw_TLScallback+0x28>
  402647:	e8 34 fe ff ff       	callq  402480 <__mingwthr_run_key_dtors.part.0>
  40264c:	eb da                	jmp    402628 <__mingw_TLScallback+0x28>
  40264e:	66 90                	xchg   %ax,%ax
  402650:	48 8d 0d a9 52 00 00 	lea    0x52a9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402657:	ff 15 bf 5b 00 00    	callq  *0x5bbf(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40265d:	eb bf                	jmp    40261e <__mingw_TLScallback+0x1e>
  40265f:	90                   	nop
  402660:	8b 05 82 52 00 00    	mov    0x5282(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402666:	85 c0                	test   %eax,%eax
  402668:	74 05                	je     40266f <__mingw_TLScallback+0x6f>
  40266a:	e8 11 fe ff ff       	callq  402480 <__mingwthr_run_key_dtors.part.0>
  40266f:	8b 05 73 52 00 00    	mov    0x5273(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402675:	83 f8 01             	cmp    $0x1,%eax
  402678:	75 ae                	jne    402628 <__mingw_TLScallback+0x28>
  40267a:	48 8b 1d 5f 52 00 00 	mov    0x525f(%rip),%rbx        # 4078e0 <key_dtor_list>
  402681:	48 85 db             	test   %rbx,%rbx
  402684:	74 1b                	je     4026a1 <__mingw_TLScallback+0xa1>
  402686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40268d:	00 00 00 
  402690:	48 89 d9             	mov    %rbx,%rcx
  402693:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402697:	e8 a4 04 00 00       	callq  402b40 <free>
  40269c:	48 85 db             	test   %rbx,%rbx
  40269f:	75 ef                	jne    402690 <__mingw_TLScallback+0x90>
  4026a1:	48 8d 0d 58 52 00 00 	lea    0x5258(%rip),%rcx        # 407900 <__mingwthr_cs>
  4026a8:	48 c7 05 2d 52 00 00 	movq   $0x0,0x522d(%rip)        # 4078e0 <key_dtor_list>
  4026af:	00 00 00 00 
  4026b3:	c7 05 2b 52 00 00 00 	movl   $0x0,0x522b(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026ba:	00 00 00 
  4026bd:	ff 15 11 5b 00 00    	callq  *0x5b11(%rip)        # 4081d4 <__IAT_start__>
  4026c3:	e9 60 ff ff ff       	jmpq   402628 <__mingw_TLScallback+0x28>
  4026c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4026cf:	00 
  4026d0:	e8 5b f3 ff ff       	callq  401a30 <_fpreset>
  4026d5:	b8 01 00 00 00       	mov    $0x1,%eax
  4026da:	48 83 c4 20          	add    $0x20,%rsp
  4026de:	5b                   	pop    %rbx
  4026df:	c3                   	retq   

00000000004026e0 <_ValidateImageBase.part.0>:
  4026e0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4026e4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4026e8:	31 c0                	xor    %eax,%eax
  4026ea:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4026f0:	75 0b                	jne    4026fd <_ValidateImageBase.part.0+0x1d>
  4026f2:	31 c0                	xor    %eax,%eax
  4026f4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4026fa:	0f 94 c0             	sete   %al
  4026fd:	c3                   	retq   
  4026fe:	66 90                	xchg   %ax,%ax

0000000000402700 <_ValidateImageBase>:
  402700:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402705:	75 09                	jne    402710 <_ValidateImageBase+0x10>
  402707:	eb d7                	jmp    4026e0 <_ValidateImageBase.part.0>
  402709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402710:	31 c0                	xor    %eax,%eax
  402712:	c3                   	retq   
  402713:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40271a:	00 00 00 00 
  40271e:	66 90                	xchg   %ax,%ax

0000000000402720 <_FindPESection>:
  402720:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402724:	48 01 c1             	add    %rax,%rcx
  402727:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40272b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402730:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402734:	85 c9                	test   %ecx,%ecx
  402736:	74 2d                	je     402765 <_FindPESection+0x45>
  402738:	83 e9 01             	sub    $0x1,%ecx
  40273b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40273f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402744:	0f 1f 40 00          	nopl   0x0(%rax)
  402748:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  40274c:	4c 89 c1             	mov    %r8,%rcx
  40274f:	49 39 d0             	cmp    %rdx,%r8
  402752:	77 08                	ja     40275c <_FindPESection+0x3c>
  402754:	03 48 08             	add    0x8(%rax),%ecx
  402757:	48 39 d1             	cmp    %rdx,%rcx
  40275a:	77 0b                	ja     402767 <_FindPESection+0x47>
  40275c:	48 83 c0 28          	add    $0x28,%rax
  402760:	4c 39 c8             	cmp    %r9,%rax
  402763:	75 e3                	jne    402748 <_FindPESection+0x28>
  402765:	31 c0                	xor    %eax,%eax
  402767:	c3                   	retq   
  402768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40276f:	00 

0000000000402770 <_FindPESectionByName>:
  402770:	41 54                	push   %r12
  402772:	56                   	push   %rsi
  402773:	53                   	push   %rbx
  402774:	48 83 ec 20          	sub    $0x20,%rsp
  402778:	48 89 cb             	mov    %rcx,%rbx
  40277b:	e8 90 03 00 00       	callq  402b10 <strlen>
  402780:	48 83 f8 08          	cmp    $0x8,%rax
  402784:	77 7a                	ja     402800 <_FindPESectionByName+0x90>
  402786:	48 8b 0d 03 1c 00 00 	mov    0x1c03(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40278d:	45 31 e4             	xor    %r12d,%r12d
  402790:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402795:	75 57                	jne    4027ee <_FindPESectionByName+0x7e>
  402797:	e8 44 ff ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  40279c:	85 c0                	test   %eax,%eax
  40279e:	74 4e                	je     4027ee <_FindPESectionByName+0x7e>
  4027a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4027a4:	48 01 c1             	add    %rax,%rcx
  4027a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4027ab:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
  4027b0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4027b4:	85 c0                	test   %eax,%eax
  4027b6:	74 48                	je     402800 <_FindPESectionByName+0x90>
  4027b8:	83 e8 01             	sub    $0x1,%eax
  4027bb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4027bf:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  4027c4:	eb 13                	jmp    4027d9 <_FindPESectionByName+0x69>
  4027c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027cd:	00 00 00 
  4027d0:	49 83 c4 28          	add    $0x28,%r12
  4027d4:	49 39 f4             	cmp    %rsi,%r12
  4027d7:	74 27                	je     402800 <_FindPESectionByName+0x90>
  4027d9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4027df:	48 89 da             	mov    %rbx,%rdx
  4027e2:	4c 89 e1             	mov    %r12,%rcx
  4027e5:	e8 1e 03 00 00       	callq  402b08 <strncmp>
  4027ea:	85 c0                	test   %eax,%eax
  4027ec:	75 e2                	jne    4027d0 <_FindPESectionByName+0x60>
  4027ee:	4c 89 e0             	mov    %r12,%rax
  4027f1:	48 83 c4 20          	add    $0x20,%rsp
  4027f5:	5b                   	pop    %rbx
  4027f6:	5e                   	pop    %rsi
  4027f7:	41 5c                	pop    %r12
  4027f9:	c3                   	retq   
  4027fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402800:	45 31 e4             	xor    %r12d,%r12d
  402803:	4c 89 e0             	mov    %r12,%rax
  402806:	48 83 c4 20          	add    $0x20,%rsp
  40280a:	5b                   	pop    %rbx
  40280b:	5e                   	pop    %rsi
  40280c:	41 5c                	pop    %r12
  40280e:	c3                   	retq   
  40280f:	90                   	nop

0000000000402810 <__mingw_GetSectionForAddress>:
  402810:	48 83 ec 28          	sub    $0x28,%rsp
  402814:	4c 8b 15 75 1b 00 00 	mov    0x1b75(%rip),%r10        # 404390 <.refptr.__image_base__>
  40281b:	45 31 c0             	xor    %r8d,%r8d
  40281e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
  402824:	49 89 c9             	mov    %rcx,%r9
  402827:	75 60                	jne    402889 <__mingw_GetSectionForAddress+0x79>
  402829:	4c 89 d1             	mov    %r10,%rcx
  40282c:	e8 af fe ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  402831:	85 c0                	test   %eax,%eax
  402833:	74 54                	je     402889 <__mingw_GetSectionForAddress+0x79>
  402835:	49 63 42 3c          	movslq 0x3c(%r10),%rax
  402839:	4c 89 c9             	mov    %r9,%rcx
  40283c:	4c 29 d1             	sub    %r10,%rcx
  40283f:	49 01 c2             	add    %rax,%r10
  402842:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
  402847:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
  40284c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
  402851:	85 c0                	test   %eax,%eax
  402853:	74 31                	je     402886 <__mingw_GetSectionForAddress+0x76>
  402855:	83 e8 01             	sub    $0x1,%eax
  402858:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40285c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
  402861:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402868:	41 8b 50 0c          	mov    0xc(%r8),%edx
  40286c:	48 89 d0             	mov    %rdx,%rax
  40286f:	48 39 d1             	cmp    %rdx,%rcx
  402872:	72 09                	jb     40287d <__mingw_GetSectionForAddress+0x6d>
  402874:	41 03 40 08          	add    0x8(%r8),%eax
  402878:	48 39 c1             	cmp    %rax,%rcx
  40287b:	72 0c                	jb     402889 <__mingw_GetSectionForAddress+0x79>
  40287d:	49 83 c0 28          	add    $0x28,%r8
  402881:	4d 39 c8             	cmp    %r9,%r8
  402884:	75 e2                	jne    402868 <__mingw_GetSectionForAddress+0x58>
  402886:	45 31 c0             	xor    %r8d,%r8d
  402889:	4c 89 c0             	mov    %r8,%rax
  40288c:	48 83 c4 28          	add    $0x28,%rsp
  402890:	c3                   	retq   
  402891:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402898:	00 00 00 00 
  40289c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004028a0 <__mingw_GetSectionCount>:
  4028a0:	48 83 ec 28          	sub    $0x28,%rsp
  4028a4:	48 8b 0d e5 1a 00 00 	mov    0x1ae5(%rip),%rcx        # 404390 <.refptr.__image_base__>
  4028ab:	31 c0                	xor    %eax,%eax
  4028ad:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028b2:	75 12                	jne    4028c6 <__mingw_GetSectionCount+0x26>
  4028b4:	e8 27 fe ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  4028b9:	85 c0                	test   %eax,%eax
  4028bb:	74 09                	je     4028c6 <__mingw_GetSectionCount+0x26>
  4028bd:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028c1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
  4028c6:	48 83 c4 28          	add    $0x28,%rsp
  4028ca:	c3                   	retq   
  4028cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004028d0 <_FindPESectionExec>:
  4028d0:	48 83 ec 28          	sub    $0x28,%rsp
  4028d4:	45 31 c0             	xor    %r8d,%r8d
  4028d7:	49 89 c9             	mov    %rcx,%r9
  4028da:	48 8b 0d af 1a 00 00 	mov    0x1aaf(%rip),%rcx        # 404390 <.refptr.__image_base__>
  4028e1:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028e6:	75 4c                	jne    402934 <_FindPESectionExec+0x64>
  4028e8:	e8 f3 fd ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  4028ed:	85 c0                	test   %eax,%eax
  4028ef:	74 43                	je     402934 <_FindPESectionExec+0x64>
  4028f1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028f5:	48 01 c1             	add    %rax,%rcx
  4028f8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4028fc:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
  402901:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402905:	85 c0                	test   %eax,%eax
  402907:	74 28                	je     402931 <_FindPESectionExec+0x61>
  402909:	83 e8 01             	sub    $0x1,%eax
  40290c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402910:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
  402915:	0f 1f 00             	nopl   (%rax)
  402918:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
  40291d:	74 09                	je     402928 <_FindPESectionExec+0x58>
  40291f:	4d 85 c9             	test   %r9,%r9
  402922:	74 10                	je     402934 <_FindPESectionExec+0x64>
  402924:	49 83 e9 01          	sub    $0x1,%r9
  402928:	49 83 c0 28          	add    $0x28,%r8
  40292c:	49 39 c0             	cmp    %rax,%r8
  40292f:	75 e7                	jne    402918 <_FindPESectionExec+0x48>
  402931:	45 31 c0             	xor    %r8d,%r8d
  402934:	4c 89 c0             	mov    %r8,%rax
  402937:	48 83 c4 28          	add    $0x28,%rsp
  40293b:	c3                   	retq   
  40293c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402940 <_GetPEImageBase>:
  402940:	48 83 ec 28          	sub    $0x28,%rsp
  402944:	48 8b 0d 45 1a 00 00 	mov    0x1a45(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40294b:	45 31 c0             	xor    %r8d,%r8d
  40294e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402953:	75 0b                	jne    402960 <_GetPEImageBase+0x20>
  402955:	e8 86 fd ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  40295a:	85 c0                	test   %eax,%eax
  40295c:	4c 0f 45 c1          	cmovne %rcx,%r8
  402960:	4c 89 c0             	mov    %r8,%rax
  402963:	48 83 c4 28          	add    $0x28,%rsp
  402967:	c3                   	retq   
  402968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40296f:	00 

0000000000402970 <_IsNonwritableInCurrentImage>:
  402970:	48 83 ec 28          	sub    $0x28,%rsp
  402974:	4c 8b 0d 15 1a 00 00 	mov    0x1a15(%rip),%r9        # 404390 <.refptr.__image_base__>
  40297b:	31 c0                	xor    %eax,%eax
  40297d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402983:	49 89 c8             	mov    %rcx,%r8
  402986:	75 57                	jne    4029df <_IsNonwritableInCurrentImage+0x6f>
  402988:	4c 89 c9             	mov    %r9,%rcx
  40298b:	e8 50 fd ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  402990:	85 c0                	test   %eax,%eax
  402992:	74 4b                	je     4029df <_IsNonwritableInCurrentImage+0x6f>
  402994:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402998:	4c 89 c1             	mov    %r8,%rcx
  40299b:	4c 29 c9             	sub    %r9,%rcx
  40299e:	49 01 c1             	add    %rax,%r9
  4029a1:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
  4029a6:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
  4029ab:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
  4029b0:	85 d2                	test   %edx,%edx
  4029b2:	74 29                	je     4029dd <_IsNonwritableInCurrentImage+0x6d>
  4029b4:	83 ea 01             	sub    $0x1,%edx
  4029b7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4029bb:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4029c0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4029c4:	4c 89 c2             	mov    %r8,%rdx
  4029c7:	4c 39 c1             	cmp    %r8,%rcx
  4029ca:	72 08                	jb     4029d4 <_IsNonwritableInCurrentImage+0x64>
  4029cc:	03 50 08             	add    0x8(%rax),%edx
  4029cf:	48 39 d1             	cmp    %rdx,%rcx
  4029d2:	72 14                	jb     4029e8 <_IsNonwritableInCurrentImage+0x78>
  4029d4:	48 83 c0 28          	add    $0x28,%rax
  4029d8:	4c 39 c8             	cmp    %r9,%rax
  4029db:	75 e3                	jne    4029c0 <_IsNonwritableInCurrentImage+0x50>
  4029dd:	31 c0                	xor    %eax,%eax
  4029df:	48 83 c4 28          	add    $0x28,%rsp
  4029e3:	c3                   	retq   
  4029e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4029e8:	8b 40 24             	mov    0x24(%rax),%eax
  4029eb:	f7 d0                	not    %eax
  4029ed:	c1 e8 1f             	shr    $0x1f,%eax
  4029f0:	48 83 c4 28          	add    $0x28,%rsp
  4029f4:	c3                   	retq   
  4029f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4029fc:	00 00 00 00 

0000000000402a00 <__mingw_enum_import_library_names>:
  402a00:	48 83 ec 28          	sub    $0x28,%rsp
  402a04:	4c 8b 1d 85 19 00 00 	mov    0x1985(%rip),%r11        # 404390 <.refptr.__image_base__>
  402a0b:	45 31 c9             	xor    %r9d,%r9d
  402a0e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402a14:	41 89 c8             	mov    %ecx,%r8d
  402a17:	75 5f                	jne    402a78 <__mingw_enum_import_library_names+0x78>
  402a19:	4c 89 d9             	mov    %r11,%rcx
  402a1c:	e8 bf fc ff ff       	callq  4026e0 <_ValidateImageBase.part.0>
  402a21:	85 c0                	test   %eax,%eax
  402a23:	74 53                	je     402a78 <__mingw_enum_import_library_names+0x78>
  402a25:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  402a29:	4c 01 d9             	add    %r11,%rcx
  402a2c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  402a32:	85 c0                	test   %eax,%eax
  402a34:	74 42                	je     402a78 <__mingw_enum_import_library_names+0x78>
  402a36:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  402a3a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  402a3f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402a43:	85 c9                	test   %ecx,%ecx
  402a45:	74 31                	je     402a78 <__mingw_enum_import_library_names+0x78>
  402a47:	83 e9 01             	sub    $0x1,%ecx
  402a4a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402a4e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  402a53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a58:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  402a5c:	4c 89 c9             	mov    %r9,%rcx
  402a5f:	4c 39 c8             	cmp    %r9,%rax
  402a62:	72 08                	jb     402a6c <__mingw_enum_import_library_names+0x6c>
  402a64:	03 4a 08             	add    0x8(%rdx),%ecx
  402a67:	48 39 c8             	cmp    %rcx,%rax
  402a6a:	72 14                	jb     402a80 <__mingw_enum_import_library_names+0x80>
  402a6c:	48 83 c2 28          	add    $0x28,%rdx
  402a70:	4c 39 d2             	cmp    %r10,%rdx
  402a73:	75 e3                	jne    402a58 <__mingw_enum_import_library_names+0x58>
  402a75:	45 31 c9             	xor    %r9d,%r9d
  402a78:	4c 89 c8             	mov    %r9,%rax
  402a7b:	48 83 c4 28          	add    $0x28,%rsp
  402a7f:	c3                   	retq   
  402a80:	4c 01 d8             	add    %r11,%rax
  402a83:	eb 0b                	jmp    402a90 <__mingw_enum_import_library_names+0x90>
  402a85:	0f 1f 00             	nopl   (%rax)
  402a88:	41 83 e8 01          	sub    $0x1,%r8d
  402a8c:	48 83 c0 14          	add    $0x14,%rax
  402a90:	8b 48 04             	mov    0x4(%rax),%ecx
  402a93:	85 c9                	test   %ecx,%ecx
  402a95:	75 07                	jne    402a9e <__mingw_enum_import_library_names+0x9e>
  402a97:	8b 50 0c             	mov    0xc(%rax),%edx
  402a9a:	85 d2                	test   %edx,%edx
  402a9c:	74 d7                	je     402a75 <__mingw_enum_import_library_names+0x75>
  402a9e:	45 85 c0             	test   %r8d,%r8d
  402aa1:	7f e5                	jg     402a88 <__mingw_enum_import_library_names+0x88>
  402aa3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402aa7:	4d 01 d9             	add    %r11,%r9
  402aaa:	4c 89 c8             	mov    %r9,%rax
  402aad:	48 83 c4 28          	add    $0x28,%rsp
  402ab1:	c3                   	retq   
  402ab2:	90                   	nop
  402ab3:	90                   	nop
  402ab4:	90                   	nop
  402ab5:	90                   	nop
  402ab6:	90                   	nop
  402ab7:	90                   	nop
  402ab8:	90                   	nop
  402ab9:	90                   	nop
  402aba:	90                   	nop
  402abb:	90                   	nop
  402abc:	90                   	nop
  402abd:	90                   	nop
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <___chkstk_ms>:
  402ac0:	51                   	push   %rcx
  402ac1:	50                   	push   %rax
  402ac2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402ac8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402acd:	72 19                	jb     402ae8 <___chkstk_ms+0x28>
  402acf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402ad6:	48 83 09 00          	orq    $0x0,(%rcx)
  402ada:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402ae0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402ae6:	77 e7                	ja     402acf <___chkstk_ms+0xf>
  402ae8:	48 29 c1             	sub    %rax,%rcx
  402aeb:	48 83 09 00          	orq    $0x0,(%rcx)
  402aef:	58                   	pop    %rax
  402af0:	59                   	pop    %rcx
  402af1:	c3                   	retq   
  402af2:	90                   	nop
  402af3:	90                   	nop
  402af4:	90                   	nop
  402af5:	90                   	nop
  402af6:	90                   	nop
  402af7:	90                   	nop
  402af8:	90                   	nop
  402af9:	90                   	nop
  402afa:	90                   	nop
  402afb:	90                   	nop
  402afc:	90                   	nop
  402afd:	90                   	nop
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <vfprintf>:
  402b00:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 40835c <__imp_vfprintf>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <strncmp>:
  402b08:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 408354 <__imp_strncmp>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <strlen>:
  402b10:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 40834c <__imp_strlen>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <signal>:
  402b18:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 408344 <__imp_signal>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <printf>:
  402b20:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 40833c <__imp_printf>
  402b26:	90                   	nop
  402b27:	90                   	nop

0000000000402b28 <memcpy>:
  402b28:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 408334 <__imp_memcpy>
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <malloc>:
  402b30:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 40832c <__imp_malloc>
  402b36:	90                   	nop
  402b37:	90                   	nop

0000000000402b38 <fwrite>:
  402b38:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 408324 <__imp_fwrite>
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <free>:
  402b40:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 40831c <__imp_free>
  402b46:	90                   	nop
  402b47:	90                   	nop

0000000000402b48 <fprintf>:
  402b48:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 408314 <__imp_fprintf>
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <exit>:
  402b50:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 40830c <__imp_exit>
  402b56:	90                   	nop
  402b57:	90                   	nop

0000000000402b58 <calloc>:
  402b58:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 408304 <__imp_calloc>
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <abort>:
  402b60:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4082fc <__imp_abort>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <_onexit>:
  402b68:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 4082f4 <__imp__onexit>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <_initterm>:
  402b70:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 4082ec <__imp__initterm>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <_cexit>:
  402b78:	ff 25 5e 57 00 00    	jmpq   *0x575e(%rip)        # 4082dc <__imp__cexit>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <_amsg_exit>:
  402b80:	ff 25 4e 57 00 00    	jmpq   *0x574e(%rip)        # 4082d4 <__imp__amsg_exit>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <__setusermatherr>:
  402b88:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 4082c4 <__imp___setusermatherr>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <__set_app_type>:
  402b90:	ff 25 26 57 00 00    	jmpq   *0x5726(%rip)        # 4082bc <__imp___set_app_type>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <__lconv_init>:
  402b98:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 4082b4 <__imp___lconv_init>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <__getmainargs>:
  402ba0:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 40829c <__imp___getmainargs>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <__C_specific_handler>:
  402ba8:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 408294 <__imp___C_specific_handler>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <__acrt_iob_func>:
  402bb0:	53                   	push   %rbx
  402bb1:	48 83 ec 20          	sub    $0x20,%rsp
  402bb5:	89 cb                	mov    %ecx,%ebx
  402bb7:	e8 54 00 00 00       	callq  402c10 <__iob_func>
  402bbc:	89 d9                	mov    %ebx,%ecx
  402bbe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402bc2:	48 c1 e2 04          	shl    $0x4,%rdx
  402bc6:	48 01 d0             	add    %rdx,%rax
  402bc9:	48 83 c4 20          	add    $0x20,%rsp
  402bcd:	5b                   	pop    %rbx
  402bce:	c3                   	retq   
  402bcf:	90                   	nop

0000000000402bd0 <_get_invalid_parameter_handler>:
  402bd0:	48 8b 05 79 4d 00 00 	mov    0x4d79(%rip),%rax        # 407950 <handler>
  402bd7:	c3                   	retq   
  402bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bdf:	00 

0000000000402be0 <_set_invalid_parameter_handler>:
  402be0:	48 89 c8             	mov    %rcx,%rax
  402be3:	48 87 05 66 4d 00 00 	xchg   %rax,0x4d66(%rip)        # 407950 <handler>
  402bea:	c3                   	retq   
  402beb:	90                   	nop
  402bec:	90                   	nop
  402bed:	90                   	nop
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <__p__acmdln>:
  402bf0:	48 8b 05 b9 17 00 00 	mov    0x17b9(%rip),%rax        # 4043b0 <.refptr.__imp__acmdln>
  402bf7:	48 8b 00             	mov    (%rax),%rax
  402bfa:	c3                   	retq   
  402bfb:	90                   	nop
  402bfc:	90                   	nop
  402bfd:	90                   	nop
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <__p__fmode>:
  402c00:	48 8b 05 b9 17 00 00 	mov    0x17b9(%rip),%rax        # 4043c0 <.refptr.__imp__fmode>
  402c07:	48 8b 00             	mov    (%rax),%rax
  402c0a:	c3                   	retq   
  402c0b:	90                   	nop
  402c0c:	90                   	nop
  402c0d:	90                   	nop
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <__iob_func>:
  402c10:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 4082ac <__imp___iob_func>
  402c16:	90                   	nop
  402c17:	90                   	nop
  402c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c1f:	00 

0000000000402c20 <VirtualQuery>:
  402c20:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 408284 <__imp_VirtualQuery>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <VirtualProtect>:
  402c28:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 40827c <__imp_VirtualProtect>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <UnhandledExceptionFilter>:
  402c30:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <TlsGetValue>:
  402c38:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 40826c <__imp_TlsGetValue>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <TerminateProcess>:
  402c40:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 408264 <__imp_TerminateProcess>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <Sleep>:
  402c48:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 40825c <__imp_Sleep>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <SetUnhandledExceptionFilter>:
  402c50:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <RtlVirtualUnwind>:
  402c58:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <RtlLookupFunctionEntry>:
  402c60:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <RtlCaptureContext>:
  402c68:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 40823c <__imp_RtlCaptureContext>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <RtlAddFunctionTable>:
  402c70:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402c76:	90                   	nop
  402c77:	90                   	nop

0000000000402c78 <QueryPerformanceCounter>:
  402c78:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402c7e:	90                   	nop
  402c7f:	90                   	nop

0000000000402c80 <LeaveCriticalSection>:
  402c80:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402c86:	90                   	nop
  402c87:	90                   	nop

0000000000402c88 <InitializeCriticalSection>:
  402c88:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <GetTickCount>:
  402c90:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 408214 <__imp_GetTickCount>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <GetSystemTimeAsFileTime>:
  402c98:	ff 25 6e 55 00 00    	jmpq   *0x556e(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <GetStartupInfoA>:
  402ca0:	ff 25 5e 55 00 00    	jmpq   *0x555e(%rip)        # 408204 <__imp_GetStartupInfoA>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <GetLastError>:
  402ca8:	ff 25 4e 55 00 00    	jmpq   *0x554e(%rip)        # 4081fc <__imp_GetLastError>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <GetCurrentThreadId>:
  402cb0:	ff 25 3e 55 00 00    	jmpq   *0x553e(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402cb6:	90                   	nop
  402cb7:	90                   	nop

0000000000402cb8 <GetCurrentProcessId>:
  402cb8:	ff 25 2e 55 00 00    	jmpq   *0x552e(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <GetCurrentProcess>:
  402cc0:	ff 25 1e 55 00 00    	jmpq   *0x551e(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402cc6:	90                   	nop
  402cc7:	90                   	nop

0000000000402cc8 <EnterCriticalSection>:
  402cc8:	ff 25 0e 55 00 00    	jmpq   *0x550e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <DeleteCriticalSection>:
  402cd0:	ff 25 fe 54 00 00    	jmpq   *0x54fe(%rip)        # 4081d4 <__IAT_start__>
  402cd6:	90                   	nop
  402cd7:	90                   	nop
  402cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cdf:	00 

0000000000402ce0 <register_frame_ctor>:
  402ce0:	e9 5b e8 ff ff       	jmpq   401540 <__gcc_register_frame>
  402ce5:	90                   	nop
  402ce6:	90                   	nop
  402ce7:	90                   	nop
  402ce8:	90                   	nop
  402ce9:	90                   	nop
  402cea:	90                   	nop
  402ceb:	90                   	nop
  402cec:	90                   	nop
  402ced:	90                   	nop
  402cee:	90                   	nop
  402cef:	90                   	nop

0000000000402cf0 <__CTOR_LIST__>:
  402cf0:	ff                   	(bad)  
  402cf1:	ff                   	(bad)  
  402cf2:	ff                   	(bad)  
  402cf3:	ff                   	(bad)  
  402cf4:	ff                   	(bad)  
  402cf5:	ff                   	(bad)  
  402cf6:	ff                   	(bad)  
  402cf7:	ff                   	.byte 0xff

0000000000402cf8 <.ctors.65535>:
  402cf8:	e0 2c                	loopne 402d26 <__DTOR_LIST__+0x1e>
  402cfa:	40 00 00             	add    %al,(%rax)
	...

0000000000402d08 <__DTOR_LIST__>:
  402d08:	ff                   	(bad)  
  402d09:	ff                   	(bad)  
  402d0a:	ff                   	(bad)  
  402d0b:	ff                   	(bad)  
  402d0c:	ff                   	(bad)  
  402d0d:	ff                   	(bad)  
  402d0e:	ff                   	(bad)  
  402d0f:	ff 00                	incl   (%rax)
  402d11:	00 00                	add    %al,(%rax)
  402d13:	00 00                	add    %al,(%rax)
  402d15:	00 00                	add    %al,(%rax)
	...

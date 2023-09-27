
main.o:     file format pei-x86-64


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
  40107f:	e8 fc 1a 00 00       	callq  402b80 <__set_app_type>
  401084:	e8 67 1b 00 00       	callq  402bf0 <__p__fmode>
  401089:	48 8b 15 c0 33 00 00 	mov    0x33c0(%rip),%rdx        # 404450 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 c7 05 00 00       	callq  401660 <_setargv>
  401099:	48 8b 05 a0 32 00 00 	mov    0x32a0(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010a0:	83 38 01             	cmpl   $0x1,(%rax)
  4010a3:	74 4b                	je     4010f0 <pre_c_init+0xe0>
  4010a5:	31 c0                	xor    %eax,%eax
  4010a7:	48 83 c4 28          	add    $0x28,%rsp
  4010ab:	c3                   	retq   
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	b9 02 00 00 00       	mov    $0x2,%ecx
  4010b5:	e8 c6 1a 00 00       	callq  402b80 <__set_app_type>
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
  4010f0:	48 8d 0d 29 08 00 00 	lea    0x829(%rip),%rcx        # 401920 <_matherr>
  4010f7:	e8 f4 0e 00 00       	callq  401ff0 <__mingw_setusermatherr>
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
  40116e:	e8 1d 1a 00 00       	callq  402b90 <__getmainargs>
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
  40124c:	e8 5f 0a 00 00       	callq  401cb0 <_pei386_runtime_relocator>
  401251:	48 8d 0d 68 10 00 00 	lea    0x1068(%rip),%rcx        # 4022c0 <_gnu_exception_handler>
  401258:	ff 15 f6 6f 00 00    	callq  *0x6ff6(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  40125e:	48 8b 15 6b 31 00 00 	mov    0x316b(%rip),%rdx        # 4043d0 <.refptr.__mingw_oldexcpt_handler>
  401265:	48 89 02             	mov    %rax,(%rdx)
  401268:	e8 53 0f 00 00       	callq  4021c0 <__mingw_init_ehandler>
  40126d:	48 8d 0d 8c fd ff ff 	lea    -0x274(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  401274:	e8 57 19 00 00       	callq  402bd0 <_set_invalid_parameter_handler>
  401279:	e8 a2 07 00 00       	callq  401a20 <_fpreset>
  40127e:	48 8b 05 0b 31 00 00 	mov    0x310b(%rip),%rax        # 404390 <.refptr.__image_base__>
  401285:	48 89 05 dc 66 00 00 	mov    %rax,0x66dc(%rip)        # 407968 <__mingw_winmain_hInstance>
  40128c:	e8 4f 19 00 00       	callq  402be0 <__p__acmdln>
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
  401322:	e8 f9 17 00 00       	callq  402b20 <malloc>
  401327:	4c 8b 2d f2 5c 00 00 	mov    0x5cf2(%rip),%r13        # 407020 <argv>
  40132e:	48 89 c7             	mov    %rax,%rdi
  401331:	85 db                	test   %ebx,%ebx
  401333:	7e 46                	jle    40137b <__tmainCRTStartup+0x1fb>
  401335:	8d 6b ff             	lea    -0x1(%rbx),%ebp
  401338:	31 db                	xor    %ebx,%ebx
  40133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401345:	e8 b6 17 00 00       	callq  402b00 <strlen>
  40134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134e:	48 89 f1             	mov    %rsi,%rcx
  401351:	e8 ca 17 00 00       	callq  402b20 <malloc>
  401356:	49 89 f0             	mov    %rsi,%r8
  401359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401362:	48 89 c1             	mov    %rax,%rcx
  401365:	e8 ae 17 00 00       	callq  402b18 <memcpy>
  40136a:	48 89 d8             	mov    %rbx,%rax
  40136d:	48 83 c3 01          	add    $0x1,%rbx
  401371:	48 39 c5             	cmp    %rax,%rbp
  401374:	75 ca                	jne    401340 <__tmainCRTStartup+0x1c0>
  401376:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  40137b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401382:	48 89 3d 97 5c 00 00 	mov    %rdi,0x5c97(%rip)        # 407020 <argv>
  401389:	e8 a2 02 00 00       	callq  401630 <__main>
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
  40141c:	e8 4f 17 00 00       	callq  402b70 <_amsg_exit>
  401421:	8b 06                	mov    (%rsi),%eax
  401423:	83 f8 01             	cmp    $0x1,%eax
  401426:	0f 85 fd fd ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  40142c:	48 8b 15 dd 2f 00 00 	mov    0x2fdd(%rip),%rdx        # 404410 <.refptr.__xc_z>
  401433:	48 8b 0d c6 2f 00 00 	mov    0x2fc6(%rip),%rcx        # 404400 <.refptr.__xc_a>
  40143a:	e8 21 17 00 00       	callq  402b60 <_initterm>
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
  401470:	e8 f3 16 00 00       	callq  402b68 <_cexit>
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
  4014a4:	e8 b7 16 00 00       	callq  402b60 <_initterm>
  4014a9:	e9 70 fd ff ff       	jmpq   40121e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 8b 16 00 00       	callq  402b40 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 c5 2f 00 00 	mov    0x2fc5(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 9a 01 00 00       	callq  401670 <__security_init_cookie>
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
  401501:	e8 6a 01 00 00       	callq  401670 <__security_init_cookie>
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
  401524:	e8 2f 16 00 00       	callq  402b58 <_onexit>
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
  401560:	48 83 ec 28          	sub    $0x28,%rsp
  401564:	e8 c7 00 00 00       	callq  401630 <__main>
  401569:	48 8d 0d 90 2a 00 00 	lea    0x2a90(%rip),%rcx        # 404000 <.rdata>
  401570:	e8 9b 15 00 00       	callq  402b10 <printf>
  401575:	b8 00 00 00 00       	mov    $0x0,%eax
  40157a:	48 83 c4 28          	add    $0x28,%rsp
  40157e:	c3                   	retq   
  40157f:	90                   	nop

0000000000401580 <__do_global_dtors>:
  401580:	48 83 ec 28          	sub    $0x28,%rsp
  401584:	48 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%rax        # 403010 <p.92474>
  40158b:	48 8b 00             	mov    (%rax),%rax
  40158e:	48 85 c0             	test   %rax,%rax
  401591:	74 22                	je     4015b5 <__do_global_dtors+0x35>
  401593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401598:	ff d0                	callq  *%rax
  40159a:	48 8b 05 6f 1a 00 00 	mov    0x1a6f(%rip),%rax        # 403010 <p.92474>
  4015a1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015a5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015a9:	48 89 15 60 1a 00 00 	mov    %rdx,0x1a60(%rip)        # 403010 <p.92474>
  4015b0:	48 85 c0             	test   %rax,%rax
  4015b3:	75 e3                	jne    401598 <__do_global_dtors+0x18>
  4015b5:	48 83 c4 28          	add    $0x28,%rsp
  4015b9:	c3                   	retq   
  4015ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004015c0 <__do_global_ctors>:
  4015c0:	56                   	push   %rsi
  4015c1:	53                   	push   %rbx
  4015c2:	48 83 ec 28          	sub    $0x28,%rsp
  4015c6:	48 8b 15 83 2d 00 00 	mov    0x2d83(%rip),%rdx        # 404350 <.refptr.__CTOR_LIST__>
  4015cd:	48 8b 02             	mov    (%rdx),%rax
  4015d0:	89 c1                	mov    %eax,%ecx
  4015d2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4015d5:	74 39                	je     401610 <__do_global_ctors+0x50>
  4015d7:	85 c9                	test   %ecx,%ecx
  4015d9:	74 20                	je     4015fb <__do_global_ctors+0x3b>
  4015db:	89 c8                	mov    %ecx,%eax
  4015dd:	83 e9 01             	sub    $0x1,%ecx
  4015e0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  4015e4:	48 29 c8             	sub    %rcx,%rax
  4015e7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  4015ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4015f0:	ff 13                	callq  *(%rbx)
  4015f2:	48 83 eb 08          	sub    $0x8,%rbx
  4015f6:	48 39 f3             	cmp    %rsi,%rbx
  4015f9:	75 f5                	jne    4015f0 <__do_global_ctors+0x30>
  4015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401580 <__do_global_dtors>
  401602:	48 83 c4 28          	add    $0x28,%rsp
  401606:	5b                   	pop    %rbx
  401607:	5e                   	pop    %rsi
  401608:	e9 13 ff ff ff       	jmpq   401520 <atexit>
  40160d:	0f 1f 00             	nopl   (%rax)
  401610:	31 c0                	xor    %eax,%eax
  401612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401618:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40161c:	89 c1                	mov    %eax,%ecx
  40161e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401623:	4c 89 c0             	mov    %r8,%rax
  401626:	75 f0                	jne    401618 <__do_global_ctors+0x58>
  401628:	eb ad                	jmp    4015d7 <__do_global_ctors+0x17>
  40162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401630 <__main>:
  401630:	8b 05 fa 59 00 00    	mov    0x59fa(%rip),%eax        # 407030 <initialized>
  401636:	85 c0                	test   %eax,%eax
  401638:	74 06                	je     401640 <__main+0x10>
  40163a:	c3                   	retq   
  40163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401640:	c7 05 e6 59 00 00 01 	movl   $0x1,0x59e6(%rip)        # 407030 <initialized>
  401647:	00 00 00 
  40164a:	e9 71 ff ff ff       	jmpq   4015c0 <__do_global_ctors>
  40164f:	90                   	nop

0000000000401650 <my_lconv_init>:
  401650:	48 ff 25 5d 6c 00 00 	rex.W jmpq *0x6c5d(%rip)        # 4082b4 <__imp___lconv_init>
  401657:	90                   	nop
  401658:	90                   	nop
  401659:	90                   	nop
  40165a:	90                   	nop
  40165b:	90                   	nop
  40165c:	90                   	nop
  40165d:	90                   	nop
  40165e:	90                   	nop
  40165f:	90                   	nop

0000000000401660 <_setargv>:
  401660:	31 c0                	xor    %eax,%eax
  401662:	c3                   	retq   
  401663:	90                   	nop
  401664:	90                   	nop
  401665:	90                   	nop
  401666:	90                   	nop
  401667:	90                   	nop
  401668:	90                   	nop
  401669:	90                   	nop
  40166a:	90                   	nop
  40166b:	90                   	nop
  40166c:	90                   	nop
  40166d:	90                   	nop
  40166e:	90                   	nop
  40166f:	90                   	nop

0000000000401670 <__security_init_cookie>:
  401670:	41 54                	push   %r12
  401672:	55                   	push   %rbp
  401673:	57                   	push   %rdi
  401674:	56                   	push   %rsi
  401675:	53                   	push   %rbx
  401676:	48 83 ec 30          	sub    $0x30,%rsp
  40167a:	48 8b 1d 1f 1a 00 00 	mov    0x1a1f(%rip),%rbx        # 4030a0 <__security_cookie>
  401681:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401688:	2b 00 00 
  40168b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401692:	00 00 
  401694:	48 39 c3             	cmp    %rax,%rbx
  401697:	74 17                	je     4016b0 <__security_init_cookie+0x40>
  401699:	48 f7 d3             	not    %rbx
  40169c:	48 89 1d 0d 1a 00 00 	mov    %rbx,0x1a0d(%rip)        # 4030b0 <__security_cookie_complement>
  4016a3:	48 83 c4 30          	add    $0x30,%rsp
  4016a7:	5b                   	pop    %rbx
  4016a8:	5e                   	pop    %rsi
  4016a9:	5f                   	pop    %rdi
  4016aa:	5d                   	pop    %rbp
  4016ab:	41 5c                	pop    %r12
  4016ad:	c3                   	retq   
  4016ae:	66 90                	xchg   %ax,%ax
  4016b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016b5:	ff 15 51 6b 00 00    	callq  *0x6b51(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4016bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016c0:	ff 15 26 6b 00 00    	callq  *0x6b26(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  4016c6:	89 c5                	mov    %eax,%ebp
  4016c8:	ff 15 26 6b 00 00    	callq  *0x6b26(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  4016ce:	89 c7                	mov    %eax,%edi
  4016d0:	ff 15 3e 6b 00 00    	callq  *0x6b3e(%rip)        # 408214 <__imp_GetTickCount>
  4016d6:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016db:	41 89 c4             	mov    %eax,%r12d
  4016de:	ff 15 48 6b 00 00    	callq  *0x6b48(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  4016e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016e9:	89 e8                	mov    %ebp,%eax
  4016eb:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016f2:	ff 00 00 
  4016f5:	48 31 f0             	xor    %rsi,%rax
  4016f8:	89 fe                	mov    %edi,%esi
  4016fa:	48 31 c6             	xor    %rax,%rsi
  4016fd:	44 89 e0             	mov    %r12d,%eax
  401700:	48 31 f0             	xor    %rsi,%rax
  401703:	48 21 d0             	and    %rdx,%rax
  401706:	48 39 d8             	cmp    %rbx,%rax
  401709:	74 25                	je     401730 <__security_init_cookie+0xc0>
  40170b:	48 89 c2             	mov    %rax,%rdx
  40170e:	48 f7 d2             	not    %rdx
  401711:	48 89 05 88 19 00 00 	mov    %rax,0x1988(%rip)        # 4030a0 <__security_cookie>
  401718:	48 89 15 91 19 00 00 	mov    %rdx,0x1991(%rip)        # 4030b0 <__security_cookie_complement>
  40171f:	48 83 c4 30          	add    $0x30,%rsp
  401723:	5b                   	pop    %rbx
  401724:	5e                   	pop    %rsi
  401725:	5f                   	pop    %rdi
  401726:	5d                   	pop    %rbp
  401727:	41 5c                	pop    %r12
  401729:	c3                   	retq   
  40172a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401730:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401737:	d4 ff ff 
  40173a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401741:	2b 00 00 
  401744:	eb cb                	jmp    401711 <__security_init_cookie+0xa1>
  401746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40174d:	00 00 00 

0000000000401750 <__report_gsfailure>:
  401750:	55                   	push   %rbp
  401751:	56                   	push   %rsi
  401752:	53                   	push   %rbx
  401753:	48 89 e5             	mov    %rsp,%rbp
  401756:	48 83 ec 70          	sub    $0x70,%rsp
  40175a:	48 89 cb             	mov    %rcx,%rbx
  40175d:	48 8d 0d fc 58 00 00 	lea    0x58fc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401764:	ff 15 d2 6a 00 00    	callq  *0x6ad2(%rip)        # 40823c <__imp_RtlCaptureContext>
  40176a:	48 8b 35 e7 59 00 00 	mov    0x59e7(%rip),%rsi        # 407158 <GS_ContextRecord+0xf8>
  401771:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401775:	45 31 c0             	xor    %r8d,%r8d
  401778:	48 89 f1             	mov    %rsi,%rcx
  40177b:	ff 15 c3 6a 00 00    	callq  *0x6ac3(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  401781:	49 89 c1             	mov    %rax,%r9
  401784:	48 85 c0             	test   %rax,%rax
  401787:	0f 84 a0 00 00 00    	je     40182d <__report_gsfailure+0xdd>
  40178d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401791:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401795:	49 89 f0             	mov    %rsi,%r8
  401798:	31 c9                	xor    %ecx,%ecx
  40179a:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40179f:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4017a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4017a8:	48 8d 05 b1 58 00 00 	lea    0x58b1(%rip),%rax        # 407060 <GS_ContextRecord>
  4017af:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4017b6:	00 00 
  4017b8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4017bd:	ff 15 89 6a 00 00    	callq  *0x6a89(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  4017c3:	48 8b 05 8e 59 00 00 	mov    0x598e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017ca:	31 c9                	xor    %ecx,%ecx
  4017cc:	48 89 1d 0d 59 00 00 	mov    %rbx,0x590d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017d3:	48 89 05 76 5d 00 00 	mov    %rax,0x5d76(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017e1:	00 00 00 
  4017e4:	48 89 05 55 5d 00 00 	mov    %rax,0x5d55(%rip)        # 407540 <GS_ExceptionRecord>
  4017eb:	48 8b 05 ae 18 00 00 	mov    0x18ae(%rip),%rax        # 4030a0 <__security_cookie>
  4017f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017f6:	48 8b 05 b3 18 00 00 	mov    0x18b3(%rip),%rax        # 4030b0 <__security_cookie_complement>
  4017fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401801:	ff 15 4d 6a 00 00    	callq  *0x6a4d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401807:	48 8d 0d 02 28 00 00 	lea    0x2802(%rip),%rcx        # 404010 <GS_ExceptionPointers>
  40180e:	ff 15 60 6a 00 00    	callq  *0x6a60(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401814:	ff 15 ca 69 00 00    	callq  *0x69ca(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40181a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40181f:	48 89 c1             	mov    %rax,%rcx
  401822:	ff 15 3c 6a 00 00    	callq  *0x6a3c(%rip)        # 408264 <__imp_TerminateProcess>
  401828:	e8 23 13 00 00       	callq  402b50 <abort>
  40182d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401831:	48 89 05 20 59 00 00 	mov    %rax,0x5920(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401838:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40183c:	48 89 05 b5 58 00 00 	mov    %rax,0x58b5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401843:	e9 7b ff ff ff       	jmpq   4017c3 <__report_gsfailure+0x73>
  401848:	90                   	nop
  401849:	90                   	nop
  40184a:	90                   	nop
  40184b:	90                   	nop
  40184c:	90                   	nop
  40184d:	90                   	nop
  40184e:	90                   	nop
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_dtor>:
  401850:	48 83 ec 28          	sub    $0x28,%rsp
  401854:	83 fa 03             	cmp    $0x3,%edx
  401857:	74 17                	je     401870 <__dyn_tls_dtor+0x20>
  401859:	85 d2                	test   %edx,%edx
  40185b:	74 13                	je     401870 <__dyn_tls_dtor+0x20>
  40185d:	b8 01 00 00 00       	mov    $0x1,%eax
  401862:	48 83 c4 28          	add    $0x28,%rsp
  401866:	c3                   	retq   
  401867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40186e:	00 00 
  401870:	e8 7b 0d 00 00       	callq  4025f0 <__mingw_TLScallback>
  401875:	b8 01 00 00 00       	mov    $0x1,%eax
  40187a:	48 83 c4 28          	add    $0x28,%rsp
  40187e:	c3                   	retq   
  40187f:	90                   	nop

0000000000401880 <__dyn_tls_init>:
  401880:	56                   	push   %rsi
  401881:	53                   	push   %rbx
  401882:	48 83 ec 28          	sub    $0x28,%rsp
  401886:	48 8b 05 a3 2a 00 00 	mov    0x2aa3(%rip),%rax        # 404330 <.refptr._CRT_MT>
  40188d:	83 38 02             	cmpl   $0x2,(%rax)
  401890:	74 06                	je     401898 <__dyn_tls_init+0x18>
  401892:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401898:	83 fa 02             	cmp    $0x2,%edx
  40189b:	74 13                	je     4018b0 <__dyn_tls_init+0x30>
  40189d:	83 fa 01             	cmp    $0x1,%edx
  4018a0:	74 4e                	je     4018f0 <__dyn_tls_init+0x70>
  4018a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a7:	48 83 c4 28          	add    $0x28,%rsp
  4018ab:	5b                   	pop    %rbx
  4018ac:	5e                   	pop    %rsi
  4018ad:	c3                   	retq   
  4018ae:	66 90                	xchg   %ax,%ax
  4018b0:	48 8d 1d a9 77 00 00 	lea    0x77a9(%rip),%rbx        # 409060 <__xd_z>
  4018b7:	48 8d 35 a2 77 00 00 	lea    0x77a2(%rip),%rsi        # 409060 <__xd_z>
  4018be:	48 39 de             	cmp    %rbx,%rsi
  4018c1:	74 df                	je     4018a2 <__dyn_tls_init+0x22>
  4018c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018c8:	48 8b 03             	mov    (%rbx),%rax
  4018cb:	48 85 c0             	test   %rax,%rax
  4018ce:	74 02                	je     4018d2 <__dyn_tls_init+0x52>
  4018d0:	ff d0                	callq  *%rax
  4018d2:	48 83 c3 08          	add    $0x8,%rbx
  4018d6:	48 39 de             	cmp    %rbx,%rsi
  4018d9:	75 ed                	jne    4018c8 <__dyn_tls_init+0x48>
  4018db:	b8 01 00 00 00       	mov    $0x1,%eax
  4018e0:	48 83 c4 28          	add    $0x28,%rsp
  4018e4:	5b                   	pop    %rbx
  4018e5:	5e                   	pop    %rsi
  4018e6:	c3                   	retq   
  4018e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018ee:	00 00 
  4018f0:	e8 fb 0c 00 00       	callq  4025f0 <__mingw_TLScallback>
  4018f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4018fa:	48 83 c4 28          	add    $0x28,%rsp
  4018fe:	5b                   	pop    %rbx
  4018ff:	5e                   	pop    %rsi
  401900:	c3                   	retq   
  401901:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401908:	00 00 00 00 
  40190c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401910 <__tlregdtor>:
  401910:	31 c0                	xor    %eax,%eax
  401912:	c3                   	retq   
  401913:	90                   	nop
  401914:	90                   	nop
  401915:	90                   	nop
  401916:	90                   	nop
  401917:	90                   	nop
  401918:	90                   	nop
  401919:	90                   	nop
  40191a:	90                   	nop
  40191b:	90                   	nop
  40191c:	90                   	nop
  40191d:	90                   	nop
  40191e:	90                   	nop
  40191f:	90                   	nop

0000000000401920 <_matherr>:
  401920:	56                   	push   %rsi
  401921:	53                   	push   %rbx
  401922:	48 83 ec 78          	sub    $0x78,%rsp
  401926:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
  40192b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
  401930:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
  401936:	83 39 06             	cmpl   $0x6,(%rcx)
  401939:	0f 87 cd 00 00 00    	ja     401a0c <_matherr+0xec>
  40193f:	8b 01                	mov    (%rcx),%eax
  401941:	48 8d 15 5c 28 00 00 	lea    0x285c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401948:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40194c:	48 01 d0             	add    %rdx,%rax
  40194f:	ff e0                	jmpq   *%rax
  401951:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401958:	48 8d 1d f7 27 00 00 	lea    0x27f7(%rip),%rbx        # 404156 <.rdata+0xd6>
  40195f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401965:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  40196a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40196f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401973:	b9 02 00 00 00       	mov    $0x2,%ecx
  401978:	e8 23 12 00 00       	callq  402ba0 <__acrt_iob_func>
  40197d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401984:	49 89 d8             	mov    %rbx,%r8
  401987:	48 8d 15 ea 27 00 00 	lea    0x27ea(%rip),%rdx        # 404178 <.rdata+0xf8>
  40198e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401994:	48 89 c1             	mov    %rax,%rcx
  401997:	49 89 f1             	mov    %rsi,%r9
  40199a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019a0:	e8 93 11 00 00       	callq  402b38 <fprintf>
  4019a5:	90                   	nop
  4019a6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
  4019ab:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
  4019b0:	31 c0                	xor    %eax,%eax
  4019b2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
  4019b8:	48 83 c4 78          	add    $0x78,%rsp
  4019bc:	5b                   	pop    %rbx
  4019bd:	5e                   	pop    %rsi
  4019be:	c3                   	retq   
  4019bf:	90                   	nop
  4019c0:	48 8d 1d c9 26 00 00 	lea    0x26c9(%rip),%rbx        # 404090 <.rdata+0x10>
  4019c7:	eb 96                	jmp    40195f <_matherr+0x3f>
  4019c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019d0:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 4040d0 <.rdata+0x50>
  4019d7:	eb 86                	jmp    40195f <_matherr+0x3f>
  4019d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019e0:	48 8d 1d c9 26 00 00 	lea    0x26c9(%rip),%rbx        # 4040b0 <.rdata+0x30>
  4019e7:	e9 73 ff ff ff       	jmpq   40195f <_matherr+0x3f>
  4019ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4019f0:	48 8d 1d 29 27 00 00 	lea    0x2729(%rip),%rbx        # 404120 <.rdata+0xa0>
  4019f7:	e9 63 ff ff ff       	jmpq   40195f <_matherr+0x3f>
  4019fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401a00:	48 8d 1d f1 26 00 00 	lea    0x26f1(%rip),%rbx        # 4040f8 <.rdata+0x78>
  401a07:	e9 53 ff ff ff       	jmpq   40195f <_matherr+0x3f>
  401a0c:	48 8d 1d 6d 26 00 00 	lea    0x266d(%rip),%rbx        # 404080 <.rdata>
  401a13:	e9 47 ff ff ff       	jmpq   40195f <_matherr+0x3f>
  401a18:	90                   	nop
  401a19:	90                   	nop
  401a1a:	90                   	nop
  401a1b:	90                   	nop
  401a1c:	90                   	nop
  401a1d:	90                   	nop
  401a1e:	90                   	nop
  401a1f:	90                   	nop

0000000000401a20 <_fpreset>:
  401a20:	db e3                	fninit 
  401a22:	c3                   	retq   
  401a23:	90                   	nop
  401a24:	90                   	nop
  401a25:	90                   	nop
  401a26:	90                   	nop
  401a27:	90                   	nop
  401a28:	90                   	nop
  401a29:	90                   	nop
  401a2a:	90                   	nop
  401a2b:	90                   	nop
  401a2c:	90                   	nop
  401a2d:	90                   	nop
  401a2e:	90                   	nop
  401a2f:	90                   	nop

0000000000401a30 <__report_error>:
  401a30:	41 54                	push   %r12
  401a32:	53                   	push   %rbx
  401a33:	48 83 ec 38          	sub    $0x38,%rsp
  401a37:	49 89 cc             	mov    %rcx,%r12
  401a3a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401a3f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a44:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401a49:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401a4e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401a53:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a58:	e8 43 11 00 00       	callq  402ba0 <__acrt_iob_func>
  401a5d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401a63:	ba 01 00 00 00       	mov    $0x1,%edx
  401a68:	48 8d 0d 51 27 00 00 	lea    0x2751(%rip),%rcx        # 4041c0 <.rdata>
  401a6f:	49 89 c1             	mov    %rax,%r9
  401a72:	e8 b1 10 00 00       	callq  402b28 <fwrite>
  401a77:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401a7c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a81:	e8 1a 11 00 00       	callq  402ba0 <__acrt_iob_func>
  401a86:	4c 89 e2             	mov    %r12,%rdx
  401a89:	48 89 c1             	mov    %rax,%rcx
  401a8c:	49 89 d8             	mov    %rbx,%r8
  401a8f:	e8 5c 10 00 00       	callq  402af0 <vfprintf>
  401a94:	e8 b7 10 00 00       	callq  402b50 <abort>
  401a99:	90                   	nop
  401a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401aa0 <__write_memory.part.0>:
  401aa0:	41 54                	push   %r12
  401aa2:	55                   	push   %rbp
  401aa3:	57                   	push   %rdi
  401aa4:	56                   	push   %rsi
  401aa5:	53                   	push   %rbx
  401aa6:	48 83 ec 50          	sub    $0x50,%rsp
  401aaa:	48 63 3d 63 5b 00 00 	movslq 0x5b63(%rip),%rdi        # 407614 <maxSections>
  401ab1:	49 89 cc             	mov    %rcx,%r12
  401ab4:	48 89 d6             	mov    %rdx,%rsi
  401ab7:	4c 89 c3             	mov    %r8,%rbx
  401aba:	85 ff                	test   %edi,%edi
  401abc:	0f 8e 86 01 00 00    	jle    401c48 <__write_memory.part.0+0x1a8>
  401ac2:	48 8b 05 4f 5b 00 00 	mov    0x5b4f(%rip),%rax        # 407618 <the_secs>
  401ac9:	31 c9                	xor    %ecx,%ecx
  401acb:	48 83 c0 18          	add    $0x18,%rax
  401acf:	90                   	nop
  401ad0:	48 8b 10             	mov    (%rax),%rdx
  401ad3:	49 39 d4             	cmp    %rdx,%r12
  401ad6:	72 14                	jb     401aec <__write_memory.part.0+0x4c>
  401ad8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401adc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ae0:	4c 01 c2             	add    %r8,%rdx
  401ae3:	49 39 d4             	cmp    %rdx,%r12
  401ae6:	0f 82 8b 00 00 00    	jb     401b77 <__write_memory.part.0+0xd7>
  401aec:	83 c1 01             	add    $0x1,%ecx
  401aef:	48 83 c0 28          	add    $0x28,%rax
  401af3:	39 f9                	cmp    %edi,%ecx
  401af5:	75 d9                	jne    401ad0 <__write_memory.part.0+0x30>
  401af7:	4c 89 e1             	mov    %r12,%rcx
  401afa:	e8 01 0d 00 00       	callq  402800 <__mingw_GetSectionForAddress>
  401aff:	48 89 c5             	mov    %rax,%rbp
  401b02:	48 85 c0             	test   %rax,%rax
  401b05:	0f 84 77 01 00 00    	je     401c82 <__write_memory.part.0+0x1e2>
  401b0b:	48 8b 05 06 5b 00 00 	mov    0x5b06(%rip),%rax        # 407618 <the_secs>
  401b12:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
  401b16:	48 c1 e7 03          	shl    $0x3,%rdi
  401b1a:	48 01 f8             	add    %rdi,%rax
  401b1d:	48 89 68 20          	mov    %rbp,0x20(%rax)
  401b21:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b27:	e8 04 0e 00 00       	callq  402930 <_GetPEImageBase>
  401b2c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  401b2f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b34:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b3a:	48 01 c1             	add    %rax,%rcx
  401b3d:	48 8b 05 d4 5a 00 00 	mov    0x5ad4(%rip),%rax        # 407618 <the_secs>
  401b44:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
  401b49:	ff 15 35 67 00 00    	callq  *0x6735(%rip)        # 408284 <__imp_VirtualQuery>
  401b4f:	48 85 c0             	test   %rax,%rax
  401b52:	0f 84 39 01 00 00    	je     401c91 <__write_memory.part.0+0x1f1>
  401b58:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b5c:	8d 50 c0             	lea    -0x40(%rax),%edx
  401b5f:	83 e2 bf             	and    $0xffffffbf,%edx
  401b62:	74 0c                	je     401b70 <__write_memory.part.0+0xd0>
  401b64:	83 e8 04             	sub    $0x4,%eax
  401b67:	83 e0 fb             	and    $0xfffffffb,%eax
  401b6a:	0f 85 90 00 00 00    	jne    401c00 <__write_memory.part.0+0x160>
  401b70:	83 05 9d 5a 00 00 01 	addl   $0x1,0x5a9d(%rip)        # 407614 <maxSections>
  401b77:	83 fb 08             	cmp    $0x8,%ebx
  401b7a:	73 2c                	jae    401ba8 <__write_memory.part.0+0x108>
  401b7c:	f6 c3 04             	test   $0x4,%bl
  401b7f:	0f 85 cb 00 00 00    	jne    401c50 <__write_memory.part.0+0x1b0>
  401b85:	85 db                	test   %ebx,%ebx
  401b87:	74 10                	je     401b99 <__write_memory.part.0+0xf9>
  401b89:	0f b6 06             	movzbl (%rsi),%eax
  401b8c:	41 88 04 24          	mov    %al,(%r12)
  401b90:	f6 c3 02             	test   $0x2,%bl
  401b93:	0f 85 d7 00 00 00    	jne    401c70 <__write_memory.part.0+0x1d0>
  401b99:	48 83 c4 50          	add    $0x50,%rsp
  401b9d:	5b                   	pop    %rbx
  401b9e:	5e                   	pop    %rsi
  401b9f:	5f                   	pop    %rdi
  401ba0:	5d                   	pop    %rbp
  401ba1:	41 5c                	pop    %r12
  401ba3:	c3                   	retq   
  401ba4:	0f 1f 40 00          	nopl   0x0(%rax)
  401ba8:	48 8b 06             	mov    (%rsi),%rax
  401bab:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
  401bb0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  401bb4:	49 89 04 24          	mov    %rax,(%r12)
  401bb8:	89 d8                	mov    %ebx,%eax
  401bba:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
  401bbf:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
  401bc4:	49 29 cc             	sub    %rcx,%r12
  401bc7:	44 01 e3             	add    %r12d,%ebx
  401bca:	4c 29 e6             	sub    %r12,%rsi
  401bcd:	83 e3 f8             	and    $0xfffffff8,%ebx
  401bd0:	83 fb 08             	cmp    $0x8,%ebx
  401bd3:	72 c4                	jb     401b99 <__write_memory.part.0+0xf9>
  401bd5:	83 e3 f8             	and    $0xfffffff8,%ebx
  401bd8:	31 c0                	xor    %eax,%eax
  401bda:	89 c2                	mov    %eax,%edx
  401bdc:	83 c0 08             	add    $0x8,%eax
  401bdf:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
  401be3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
  401be7:	39 d8                	cmp    %ebx,%eax
  401be9:	72 ef                	jb     401bda <__write_memory.part.0+0x13a>
  401beb:	48 83 c4 50          	add    $0x50,%rsp
  401bef:	5b                   	pop    %rbx
  401bf0:	5e                   	pop    %rsi
  401bf1:	5f                   	pop    %rdi
  401bf2:	5d                   	pop    %rbp
  401bf3:	41 5c                	pop    %r12
  401bf5:	c3                   	retq   
  401bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bfd:	00 00 00 
  401c00:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401c05:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401c0a:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401c10:	48 03 3d 01 5a 00 00 	add    0x5a01(%rip),%rdi        # 407618 <the_secs>
  401c17:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  401c1b:	49 89 f9             	mov    %rdi,%r9
  401c1e:	48 89 57 10          	mov    %rdx,0x10(%rdi)
  401c22:	ff 15 54 66 00 00    	callq  *0x6654(%rip)        # 40827c <__imp_VirtualProtect>
  401c28:	85 c0                	test   %eax,%eax
  401c2a:	0f 85 40 ff ff ff    	jne    401b70 <__write_memory.part.0+0xd0>
  401c30:	ff 15 c6 65 00 00    	callq  *0x65c6(%rip)        # 4081fc <__imp_GetLastError>
  401c36:	48 8d 0d fb 25 00 00 	lea    0x25fb(%rip),%rcx        # 404238 <.rdata+0x78>
  401c3d:	89 c2                	mov    %eax,%edx
  401c3f:	e8 ec fd ff ff       	callq  401a30 <__report_error>
  401c44:	0f 1f 40 00          	nopl   0x0(%rax)
  401c48:	31 ff                	xor    %edi,%edi
  401c4a:	e9 a8 fe ff ff       	jmpq   401af7 <__write_memory.part.0+0x57>
  401c4f:	90                   	nop
  401c50:	8b 06                	mov    (%rsi),%eax
  401c52:	89 db                	mov    %ebx,%ebx
  401c54:	41 89 04 24          	mov    %eax,(%r12)
  401c58:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
  401c5c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
  401c61:	e9 33 ff ff ff       	jmpq   401b99 <__write_memory.part.0+0xf9>
  401c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c6d:	00 00 00 
  401c70:	89 db                	mov    %ebx,%ebx
  401c72:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
  401c77:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
  401c7d:	e9 17 ff ff ff       	jmpq   401b99 <__write_memory.part.0+0xf9>
  401c82:	4c 89 e2             	mov    %r12,%rdx
  401c85:	48 8d 0d 54 25 00 00 	lea    0x2554(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c8c:	e8 9f fd ff ff       	callq  401a30 <__report_error>
  401c91:	48 8b 05 80 59 00 00 	mov    0x5980(%rip),%rax        # 407618 <the_secs>
  401c98:	8b 55 08             	mov    0x8(%rbp),%edx
  401c9b:	48 8d 0d 5e 25 00 00 	lea    0x255e(%rip),%rcx        # 404200 <.rdata+0x40>
  401ca2:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
  401ca7:	e8 84 fd ff ff       	callq  401a30 <__report_error>
  401cac:	90                   	nop
  401cad:	0f 1f 00             	nopl   (%rax)

0000000000401cb0 <_pei386_runtime_relocator>:
  401cb0:	55                   	push   %rbp
  401cb1:	41 57                	push   %r15
  401cb3:	41 56                	push   %r14
  401cb5:	41 55                	push   %r13
  401cb7:	41 54                	push   %r12
  401cb9:	57                   	push   %rdi
  401cba:	56                   	push   %rsi
  401cbb:	53                   	push   %rbx
  401cbc:	48 83 ec 38          	sub    $0x38,%rsp
  401cc0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cc7:	00 
  401cc8:	8b 35 42 59 00 00    	mov    0x5942(%rip),%esi        # 407610 <was_init.93800>
  401cce:	85 f6                	test   %esi,%esi
  401cd0:	74 16                	je     401ce8 <_pei386_runtime_relocator+0x38>
  401cd2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401cd6:	5b                   	pop    %rbx
  401cd7:	5e                   	pop    %rsi
  401cd8:	5f                   	pop    %rdi
  401cd9:	41 5c                	pop    %r12
  401cdb:	41 5d                	pop    %r13
  401cdd:	41 5e                	pop    %r14
  401cdf:	41 5f                	pop    %r15
  401ce1:	5d                   	pop    %rbp
  401ce2:	c3                   	retq   
  401ce3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ce8:	c7 05 1e 59 00 00 01 	movl   $0x1,0x591e(%rip)        # 407610 <was_init.93800>
  401cef:	00 00 00 
  401cf2:	e8 99 0b 00 00       	callq  402890 <__mingw_GetSectionCount>
  401cf7:	48 98                	cltq   
  401cf9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cfd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401d04:	00 
  401d05:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d09:	e8 a2 0d 00 00       	callq  402ab0 <___chkstk_ms>
  401d0e:	4c 8b 25 4b 26 00 00 	mov    0x264b(%rip),%r12        # 404360 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401d15:	48 8b 1d 54 26 00 00 	mov    0x2654(%rip),%rbx        # 404370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401d1c:	c7 05 ee 58 00 00 00 	movl   $0x0,0x58ee(%rip)        # 407614 <maxSections>
  401d23:	00 00 00 
  401d26:	48 29 c4             	sub    %rax,%rsp
  401d29:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401d2e:	48 89 05 e3 58 00 00 	mov    %rax,0x58e3(%rip)        # 407618 <the_secs>
  401d35:	4c 89 e0             	mov    %r12,%rax
  401d38:	48 29 d8             	sub    %rbx,%rax
  401d3b:	48 83 f8 07          	cmp    $0x7,%rax
  401d3f:	7e 91                	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401d41:	8b 13                	mov    (%rbx),%edx
  401d43:	48 83 f8 0b          	cmp    $0xb,%rax
  401d47:	0f 8f 4b 01 00 00    	jg     401e98 <_pei386_runtime_relocator+0x1e8>
  401d4d:	85 d2                	test   %edx,%edx
  401d4f:	0f 85 cb 01 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401d55:	8b 43 04             	mov    0x4(%rbx),%eax
  401d58:	85 c0                	test   %eax,%eax
  401d5a:	0f 85 c0 01 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401d60:	8b 53 08             	mov    0x8(%rbx),%edx
  401d63:	83 fa 01             	cmp    $0x1,%edx
  401d66:	0f 85 1c 02 00 00    	jne    401f88 <_pei386_runtime_relocator+0x2d8>
  401d6c:	48 83 c3 0c          	add    $0xc,%rbx
  401d70:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
  401d74:	4c 8b 2d 15 26 00 00 	mov    0x2615(%rip),%r13        # 404390 <.refptr.__image_base__>
  401d7b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401d82:	ff ff ff 
  401d85:	4c 39 e3             	cmp    %r12,%rbx
  401d88:	72 3f                	jb     401dc9 <_pei386_runtime_relocator+0x119>
  401d8a:	e9 43 ff ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401d8f:	90                   	nop
  401d90:	44 0f b6 01          	movzbl (%rcx),%r8d
  401d94:	4c 89 ff             	mov    %r15,%rdi
  401d97:	4d 89 c2             	mov    %r8,%r10
  401d9a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401da1:	45 84 c0             	test   %r8b,%r8b
  401da4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401da8:	49 29 d0             	sub    %rdx,%r8
  401dab:	4c 89 fa             	mov    %r15,%rdx
  401dae:	4d 01 c8             	add    %r9,%r8
  401db1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401db5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401dbb:	e8 e0 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401dc0:	48 83 c3 0c          	add    $0xc,%rbx
  401dc4:	4c 39 e3             	cmp    %r12,%rbx
  401dc7:	73 77                	jae    401e40 <_pei386_runtime_relocator+0x190>
  401dc9:	8b 13                	mov    (%rbx),%edx
  401dcb:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401dce:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
  401dd3:	4c 01 ea             	add    %r13,%rdx
  401dd6:	4c 01 e9             	add    %r13,%rcx
  401dd9:	4c 8b 0a             	mov    (%rdx),%r9
  401ddc:	41 83 f8 20          	cmp    $0x20,%r8d
  401de0:	0f 84 0a 01 00 00    	je     401ef0 <_pei386_runtime_relocator+0x240>
  401de6:	0f 87 d4 00 00 00    	ja     401ec0 <_pei386_runtime_relocator+0x210>
  401dec:	41 83 f8 08          	cmp    $0x8,%r8d
  401df0:	74 9e                	je     401d90 <_pei386_runtime_relocator+0xe0>
  401df2:	41 83 f8 10          	cmp    $0x10,%r8d
  401df6:	0f 85 75 01 00 00    	jne    401f71 <_pei386_runtime_relocator+0x2c1>
  401dfc:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e00:	4c 89 ff             	mov    %r15,%rdi
  401e03:	4d 89 c2             	mov    %r8,%r10
  401e06:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e0d:	66 45 85 c0          	test   %r8w,%r8w
  401e11:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e15:	48 83 c3 0c          	add    $0xc,%rbx
  401e19:	49 29 d0             	sub    %rdx,%r8
  401e1c:	4c 89 fa             	mov    %r15,%rdx
  401e1f:	4d 01 c8             	add    %r9,%r8
  401e22:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e26:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e2c:	e8 6f fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e31:	4c 39 e3             	cmp    %r12,%rbx
  401e34:	72 93                	jb     401dc9 <_pei386_runtime_relocator+0x119>
  401e36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e3d:	00 00 00 
  401e40:	8b 05 ce 57 00 00    	mov    0x57ce(%rip),%eax        # 407614 <maxSections>
  401e46:	85 c0                	test   %eax,%eax
  401e48:	0f 8e 84 fe ff ff    	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401e4e:	4c 8b 25 27 64 00 00 	mov    0x6427(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401e55:	31 db                	xor    %ebx,%ebx
  401e57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401e5e:	00 00 
  401e60:	48 8b 05 b1 57 00 00 	mov    0x57b1(%rip),%rax        # 407618 <the_secs>
  401e67:	48 01 d8             	add    %rbx,%rax
  401e6a:	44 8b 00             	mov    (%rax),%r8d
  401e6d:	45 85 c0             	test   %r8d,%r8d
  401e70:	74 0e                	je     401e80 <_pei386_runtime_relocator+0x1d0>
  401e72:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e76:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401e7a:	49 89 f9             	mov    %rdi,%r9
  401e7d:	41 ff d4             	callq  *%r12
  401e80:	83 c6 01             	add    $0x1,%esi
  401e83:	48 83 c3 28          	add    $0x28,%rbx
  401e87:	3b 35 87 57 00 00    	cmp    0x5787(%rip),%esi        # 407614 <maxSections>
  401e8d:	7c d1                	jl     401e60 <_pei386_runtime_relocator+0x1b0>
  401e8f:	e9 3e fe ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401e94:	0f 1f 40 00          	nopl   0x0(%rax)
  401e98:	85 d2                	test   %edx,%edx
  401e9a:	0f 85 80 00 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401ea0:	8b 43 04             	mov    0x4(%rbx),%eax
  401ea3:	89 c7                	mov    %eax,%edi
  401ea5:	0b 7b 08             	or     0x8(%rbx),%edi
  401ea8:	0f 85 aa fe ff ff    	jne    401d58 <_pei386_runtime_relocator+0xa8>
  401eae:	8b 53 0c             	mov    0xc(%rbx),%edx
  401eb1:	48 83 c3 0c          	add    $0xc,%rbx
  401eb5:	e9 93 fe ff ff       	jmpq   401d4d <_pei386_runtime_relocator+0x9d>
  401eba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ec0:	41 83 f8 40          	cmp    $0x40,%r8d
  401ec4:	0f 85 a7 00 00 00    	jne    401f71 <_pei386_runtime_relocator+0x2c1>
  401eca:	48 8b 01             	mov    (%rcx),%rax
  401ecd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401ed3:	4c 89 ff             	mov    %r15,%rdi
  401ed6:	48 29 d0             	sub    %rdx,%rax
  401ed9:	4c 89 fa             	mov    %r15,%rdx
  401edc:	4c 01 c8             	add    %r9,%rax
  401edf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ee3:	e8 b8 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401ee8:	e9 d3 fe ff ff       	jmpq   401dc0 <_pei386_runtime_relocator+0x110>
  401eed:	0f 1f 00             	nopl   (%rax)
  401ef0:	8b 01                	mov    (%rcx),%eax
  401ef2:	4c 89 ff             	mov    %r15,%rdi
  401ef5:	49 89 c0             	mov    %rax,%r8
  401ef8:	4c 09 f0             	or     %r14,%rax
  401efb:	45 85 c0             	test   %r8d,%r8d
  401efe:	49 0f 49 c0          	cmovns %r8,%rax
  401f02:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f08:	48 29 d0             	sub    %rdx,%rax
  401f0b:	4c 89 fa             	mov    %r15,%rdx
  401f0e:	4c 01 c8             	add    %r9,%rax
  401f11:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401f15:	e8 86 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401f1a:	e9 a1 fe ff ff       	jmpq   401dc0 <_pei386_runtime_relocator+0x110>
  401f1f:	90                   	nop
  401f20:	4c 39 e3             	cmp    %r12,%rbx
  401f23:	0f 83 a9 fd ff ff    	jae    401cd2 <_pei386_runtime_relocator+0x22>
  401f29:	49 83 ec 01          	sub    $0x1,%r12
  401f2d:	4c 8b 2d 5c 24 00 00 	mov    0x245c(%rip),%r13        # 404390 <.refptr.__image_base__>
  401f34:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401f38:	49 29 dc             	sub    %rbx,%r12
  401f3b:	49 c1 ec 03          	shr    $0x3,%r12
  401f3f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
  401f44:	0f 1f 40 00          	nopl   0x0(%rax)
  401f48:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401f4b:	8b 03                	mov    (%rbx),%eax
  401f4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f53:	48 89 fa             	mov    %rdi,%rdx
  401f56:	48 83 c3 08          	add    $0x8,%rbx
  401f5a:	4c 01 e9             	add    %r13,%rcx
  401f5d:	03 01                	add    (%rcx),%eax
  401f5f:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401f62:	e8 39 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401f67:	4c 39 e3             	cmp    %r12,%rbx
  401f6a:	75 dc                	jne    401f48 <_pei386_runtime_relocator+0x298>
  401f6c:	e9 cf fe ff ff       	jmpq   401e40 <_pei386_runtime_relocator+0x190>
  401f71:	44 89 c2             	mov    %r8d,%edx
  401f74:	48 8d 0d 1d 23 00 00 	lea    0x231d(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f7b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f82:	00 
  401f83:	e8 a8 fa ff ff       	callq  401a30 <__report_error>
  401f88:	48 8d 0d d1 22 00 00 	lea    0x22d1(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f8f:	e8 9c fa ff ff       	callq  401a30 <__report_error>
  401f94:	90                   	nop
  401f95:	90                   	nop
  401f96:	90                   	nop
  401f97:	90                   	nop
  401f98:	90                   	nop
  401f99:	90                   	nop
  401f9a:	90                   	nop
  401f9b:	90                   	nop
  401f9c:	90                   	nop
  401f9d:	90                   	nop
  401f9e:	90                   	nop
  401f9f:	90                   	nop

0000000000401fa0 <__mingw_raise_matherr>:
  401fa0:	48 83 ec 58          	sub    $0x58,%rsp
  401fa4:	48 8b 05 75 56 00 00 	mov    0x5675(%rip),%rax        # 407620 <stUserMathErr>
  401fab:	48 85 c0             	test   %rax,%rax
  401fae:	74 2c                	je     401fdc <__mingw_raise_matherr+0x3c>
  401fb0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401fb7:	00 00 
  401fb9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401fbd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401fc2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401fc7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401fcd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401fd3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401fd9:	ff d0                	callq  *%rax
  401fdb:	90                   	nop
  401fdc:	48 83 c4 58          	add    $0x58,%rsp
  401fe0:	c3                   	retq   
  401fe1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401fe8:	00 00 00 00 
  401fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ff0 <__mingw_setusermatherr>:
  401ff0:	48 89 0d 29 56 00 00 	mov    %rcx,0x5629(%rip)        # 407620 <stUserMathErr>
  401ff7:	e9 7c 0b 00 00       	jmpq   402b78 <__setusermatherr>
  401ffc:	90                   	nop
  401ffd:	90                   	nop
  401ffe:	90                   	nop
  401fff:	90                   	nop

0000000000402000 <__mingw_SEH_error_handler>:
  402000:	48 83 ec 28          	sub    $0x28,%rsp
  402004:	8b 01                	mov    (%rcx),%eax
  402006:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40200b:	0f 87 2f 01 00 00    	ja     402140 <__mingw_SEH_error_handler+0x140>
  402011:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402016:	76 58                	jbe    402070 <__mingw_SEH_error_handler+0x70>
  402018:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  40201d:	83 f8 09             	cmp    $0x9,%eax
  402020:	77 3a                	ja     40205c <__mingw_SEH_error_handler+0x5c>
  402022:	48 8d 15 a7 22 00 00 	lea    0x22a7(%rip),%rdx        # 4042d0 <.rdata>
  402029:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40202d:	48 01 d0             	add    %rdx,%rax
  402030:	ff e0                	jmpq   *%rax
  402032:	31 d2                	xor    %edx,%edx
  402034:	b9 08 00 00 00       	mov    $0x8,%ecx
  402039:	e8 ca 0a 00 00       	callq  402b08 <signal>
  40203e:	48 83 f8 01          	cmp    $0x1,%rax
  402042:	0f 85 a5 00 00 00    	jne    4020ed <__mingw_SEH_error_handler+0xed>
  402048:	ba 01 00 00 00       	mov    $0x1,%edx
  40204d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402052:	e8 b1 0a 00 00       	callq  402b08 <signal>
  402057:	e8 c4 f9 ff ff       	callq  401a20 <_fpreset>
  40205c:	45 31 c0             	xor    %r8d,%r8d
  40205f:	44 89 c0             	mov    %r8d,%eax
  402062:	48 83 c4 28          	add    $0x28,%rsp
  402066:	c3                   	retq   
  402067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40206e:	00 00 
  402070:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402075:	0f 84 95 00 00 00    	je     402110 <__mingw_SEH_error_handler+0x110>
  40207b:	76 46                	jbe    4020c3 <__mingw_SEH_error_handler+0xc3>
  40207d:	45 31 c0             	xor    %r8d,%r8d
  402080:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402085:	74 d8                	je     40205f <__mingw_SEH_error_handler+0x5f>
  402087:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  40208c:	0f 85 ae 00 00 00    	jne    402140 <__mingw_SEH_error_handler+0x140>
  402092:	31 d2                	xor    %edx,%edx
  402094:	b9 04 00 00 00       	mov    $0x4,%ecx
  402099:	e8 6a 0a 00 00       	callq  402b08 <signal>
  40209e:	48 83 f8 01          	cmp    $0x1,%rax
  4020a2:	0f 84 b8 00 00 00    	je     402160 <__mingw_SEH_error_handler+0x160>
  4020a8:	48 85 c0             	test   %rax,%rax
  4020ab:	0f 84 9f 00 00 00    	je     402150 <__mingw_SEH_error_handler+0x150>
  4020b1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020b6:	ff d0                	callq  *%rax
  4020b8:	45 31 c0             	xor    %r8d,%r8d
  4020bb:	44 89 c0             	mov    %r8d,%eax
  4020be:	48 83 c4 28          	add    $0x28,%rsp
  4020c2:	c3                   	retq   
  4020c3:	45 31 c0             	xor    %r8d,%r8d
  4020c6:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4020cb:	41 0f 95 c0          	setne  %r8b
  4020cf:	44 89 c0             	mov    %r8d,%eax
  4020d2:	48 83 c4 28          	add    $0x28,%rsp
  4020d6:	c3                   	retq   
  4020d7:	31 d2                	xor    %edx,%edx
  4020d9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020de:	e8 25 0a 00 00       	callq  402b08 <signal>
  4020e3:	48 83 f8 01          	cmp    $0x1,%rax
  4020e7:	0f 84 93 00 00 00    	je     402180 <__mingw_SEH_error_handler+0x180>
  4020ed:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4020f3:	48 85 c0             	test   %rax,%rax
  4020f6:	0f 84 63 ff ff ff    	je     40205f <__mingw_SEH_error_handler+0x5f>
  4020fc:	b9 08 00 00 00       	mov    $0x8,%ecx
  402101:	ff d0                	callq  *%rax
  402103:	45 31 c0             	xor    %r8d,%r8d
  402106:	e9 54 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40210b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402110:	31 d2                	xor    %edx,%edx
  402112:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402117:	e8 ec 09 00 00       	callq  402b08 <signal>
  40211c:	48 83 f8 01          	cmp    $0x1,%rax
  402120:	74 7e                	je     4021a0 <__mingw_SEH_error_handler+0x1a0>
  402122:	48 85 c0             	test   %rax,%rax
  402125:	74 29                	je     402150 <__mingw_SEH_error_handler+0x150>
  402127:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40212c:	ff d0                	callq  *%rax
  40212e:	45 31 c0             	xor    %r8d,%r8d
  402131:	e9 29 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40213d:	00 00 00 
  402140:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402146:	e9 14 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40214b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402150:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402156:	e9 04 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40215b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402160:	ba 01 00 00 00       	mov    $0x1,%edx
  402165:	b9 04 00 00 00       	mov    $0x4,%ecx
  40216a:	e8 99 09 00 00       	callq  402b08 <signal>
  40216f:	45 31 c0             	xor    %r8d,%r8d
  402172:	e9 e8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40217e:	00 00 
  402180:	ba 01 00 00 00       	mov    $0x1,%edx
  402185:	b9 08 00 00 00       	mov    $0x8,%ecx
  40218a:	e8 79 09 00 00       	callq  402b08 <signal>
  40218f:	45 31 c0             	xor    %r8d,%r8d
  402192:	e9 c8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40219e:	00 00 
  4021a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021a5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021aa:	e8 59 09 00 00       	callq  402b08 <signal>
  4021af:	45 31 c0             	xor    %r8d,%r8d
  4021b2:	e9 a8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  4021b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4021be:	00 00 

00000000004021c0 <__mingw_init_ehandler>:
  4021c0:	41 54                	push   %r12
  4021c2:	55                   	push   %rbp
  4021c3:	57                   	push   %rdi
  4021c4:	56                   	push   %rsi
  4021c5:	53                   	push   %rbx
  4021c6:	48 83 ec 20          	sub    $0x20,%rsp
  4021ca:	e8 61 07 00 00       	callq  402930 <_GetPEImageBase>
  4021cf:	48 89 c6             	mov    %rax,%rsi
  4021d2:	8b 05 70 54 00 00    	mov    0x5470(%rip),%eax        # 407648 <was_here.93644>
  4021d8:	85 c0                	test   %eax,%eax
  4021da:	75 25                	jne    402201 <__mingw_init_ehandler+0x41>
  4021dc:	48 85 f6             	test   %rsi,%rsi
  4021df:	74 20                	je     402201 <__mingw_init_ehandler+0x41>
  4021e1:	48 8d 0d 10 21 00 00 	lea    0x2110(%rip),%rcx        # 4042f8 <.rdata+0x28>
  4021e8:	c7 05 56 54 00 00 01 	movl   $0x1,0x5456(%rip)        # 407648 <was_here.93644>
  4021ef:	00 00 00 
  4021f2:	e8 69 05 00 00       	callq  402760 <_FindPESectionByName>
  4021f7:	48 85 c0             	test   %rax,%rax
  4021fa:	74 14                	je     402210 <__mingw_init_ehandler+0x50>
  4021fc:	b8 01 00 00 00       	mov    $0x1,%eax
  402201:	48 83 c4 20          	add    $0x20,%rsp
  402205:	5b                   	pop    %rbx
  402206:	5e                   	pop    %rsi
  402207:	5f                   	pop    %rdi
  402208:	5d                   	pop    %rbp
  402209:	41 5c                	pop    %r12
  40220b:	c3                   	retq   
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)
  402210:	48 8d 1d 49 55 00 00 	lea    0x5549(%rip),%rbx        # 407760 <emu_pdata>
  402217:	b9 30 00 00 00       	mov    $0x30,%ecx
  40221c:	45 31 e4             	xor    %r12d,%r12d
  40221f:	48 8d 15 3a 54 00 00 	lea    0x543a(%rip),%rdx        # 407660 <emu_xdata>
  402226:	48 89 df             	mov    %rbx,%rdi
  402229:	48 8d 2d d0 fd ff ff 	lea    -0x230(%rip),%rbp        # 402000 <__mingw_SEH_error_handler>
  402230:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402233:	b9 20 00 00 00       	mov    $0x20,%ecx
  402238:	48 89 d7             	mov    %rdx,%rdi
  40223b:	48 29 f5             	sub    %rsi,%rbp
  40223e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402241:	48 89 d7             	mov    %rdx,%rdi
  402244:	eb 37                	jmp    40227d <__mingw_init_ehandler+0xbd>
  402246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40224d:	00 00 00 
  402250:	c6 07 09             	movb   $0x9,(%rdi)
  402253:	49 83 c4 01          	add    $0x1,%r12
  402257:	48 83 c3 0c          	add    $0xc,%rbx
  40225b:	89 6f 04             	mov    %ebp,0x4(%rdi)
  40225e:	8b 50 0c             	mov    0xc(%rax),%edx
  402261:	89 53 f4             	mov    %edx,-0xc(%rbx)
  402264:	03 50 08             	add    0x8(%rax),%edx
  402267:	48 89 f8             	mov    %rdi,%rax
  40226a:	48 83 c7 08          	add    $0x8,%rdi
  40226e:	48 29 f0             	sub    %rsi,%rax
  402271:	89 53 f8             	mov    %edx,-0x8(%rbx)
  402274:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402277:	49 83 fc 20          	cmp    $0x20,%r12
  40227b:	74 23                	je     4022a0 <__mingw_init_ehandler+0xe0>
  40227d:	4c 89 e1             	mov    %r12,%rcx
  402280:	e8 3b 06 00 00       	callq  4028c0 <_FindPESectionExec>
  402285:	48 85 c0             	test   %rax,%rax
  402288:	75 c6                	jne    402250 <__mingw_init_ehandler+0x90>
  40228a:	4d 85 e4             	test   %r12,%r12
  40228d:	0f 84 69 ff ff ff    	je     4021fc <__mingw_init_ehandler+0x3c>
  402293:	44 89 e2             	mov    %r12d,%edx
  402296:	eb 0d                	jmp    4022a5 <__mingw_init_ehandler+0xe5>
  402298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40229f:	00 
  4022a0:	ba 20 00 00 00       	mov    $0x20,%edx
  4022a5:	49 89 f0             	mov    %rsi,%r8
  4022a8:	48 8d 0d b1 54 00 00 	lea    0x54b1(%rip),%rcx        # 407760 <emu_pdata>
  4022af:	ff 15 7f 5f 00 00    	callq  *0x5f7f(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4022b5:	e9 42 ff ff ff       	jmpq   4021fc <__mingw_init_ehandler+0x3c>
  4022ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004022c0 <_gnu_exception_handler>:
  4022c0:	41 54                	push   %r12
  4022c2:	48 83 ec 20          	sub    $0x20,%rsp
  4022c6:	48 8b 11             	mov    (%rcx),%rdx
  4022c9:	8b 02                	mov    (%rdx),%eax
  4022cb:	49 89 cc             	mov    %rcx,%r12
  4022ce:	89 c1                	mov    %eax,%ecx
  4022d0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4022d6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4022dc:	0f 84 ce 00 00 00    	je     4023b0 <_gnu_exception_handler+0xf0>
  4022e2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022e7:	0f 87 aa 00 00 00    	ja     402397 <_gnu_exception_handler+0xd7>
  4022ed:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  4022f2:	76 54                	jbe    402348 <_gnu_exception_handler+0x88>
  4022f4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  4022f9:	83 f8 09             	cmp    $0x9,%eax
  4022fc:	77 3a                	ja     402338 <_gnu_exception_handler+0x78>
  4022fe:	48 8d 15 fb 1f 00 00 	lea    0x1ffb(%rip),%rdx        # 404300 <.rdata+0x30>
  402305:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402309:	48 01 d0             	add    %rdx,%rax
  40230c:	ff e0                	jmpq   *%rax
  40230e:	31 d2                	xor    %edx,%edx
  402310:	b9 08 00 00 00       	mov    $0x8,%ecx
  402315:	e8 ee 07 00 00       	callq  402b08 <signal>
  40231a:	48 83 f8 01          	cmp    $0x1,%rax
  40231e:	0f 85 b7 00 00 00    	jne    4023db <_gnu_exception_handler+0x11b>
  402324:	ba 01 00 00 00       	mov    $0x1,%edx
  402329:	b9 08 00 00 00       	mov    $0x8,%ecx
  40232e:	e8 d5 07 00 00       	callq  402b08 <signal>
  402333:	e8 e8 f6 ff ff       	callq  401a20 <_fpreset>
  402338:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233d:	48 83 c4 20          	add    $0x20,%rsp
  402341:	41 5c                	pop    %r12
  402343:	c3                   	retq   
  402344:	0f 1f 40 00          	nopl   0x0(%rax)
  402348:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  40234d:	0f 84 a5 00 00 00    	je     4023f8 <_gnu_exception_handler+0x138>
  402353:	76 3b                	jbe    402390 <_gnu_exception_handler+0xd0>
  402355:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40235a:	74 dc                	je     402338 <_gnu_exception_handler+0x78>
  40235c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402361:	75 34                	jne    402397 <_gnu_exception_handler+0xd7>
  402363:	31 d2                	xor    %edx,%edx
  402365:	b9 04 00 00 00       	mov    $0x4,%ecx
  40236a:	e8 99 07 00 00       	callq  402b08 <signal>
  40236f:	48 83 f8 01          	cmp    $0x1,%rax
  402373:	0f 84 a7 00 00 00    	je     402420 <_gnu_exception_handler+0x160>
  402379:	48 85 c0             	test   %rax,%rax
  40237c:	74 19                	je     402397 <_gnu_exception_handler+0xd7>
  40237e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402383:	ff d0                	callq  *%rax
  402385:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40238a:	eb b1                	jmp    40233d <_gnu_exception_handler+0x7d>
  40238c:	0f 1f 40 00          	nopl   0x0(%rax)
  402390:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402395:	74 a1                	je     402338 <_gnu_exception_handler+0x78>
  402397:	48 8b 05 a2 52 00 00 	mov    0x52a2(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  40239e:	48 85 c0             	test   %rax,%rax
  4023a1:	74 1d                	je     4023c0 <_gnu_exception_handler+0x100>
  4023a3:	4c 89 e1             	mov    %r12,%rcx
  4023a6:	48 83 c4 20          	add    $0x20,%rsp
  4023aa:	41 5c                	pop    %r12
  4023ac:	48 ff e0             	rex.W jmpq *%rax
  4023af:	90                   	nop
  4023b0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4023b4:	0f 85 28 ff ff ff    	jne    4022e2 <_gnu_exception_handler+0x22>
  4023ba:	e9 79 ff ff ff       	jmpq   402338 <_gnu_exception_handler+0x78>
  4023bf:	90                   	nop
  4023c0:	31 c0                	xor    %eax,%eax
  4023c2:	48 83 c4 20          	add    $0x20,%rsp
  4023c6:	41 5c                	pop    %r12
  4023c8:	c3                   	retq   
  4023c9:	31 d2                	xor    %edx,%edx
  4023cb:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023d0:	e8 33 07 00 00       	callq  402b08 <signal>
  4023d5:	48 83 f8 01          	cmp    $0x1,%rax
  4023d9:	74 65                	je     402440 <_gnu_exception_handler+0x180>
  4023db:	48 85 c0             	test   %rax,%rax
  4023de:	74 b7                	je     402397 <_gnu_exception_handler+0xd7>
  4023e0:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023e5:	ff d0                	callq  *%rax
  4023e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023ec:	e9 4c ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  4023f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023f8:	31 d2                	xor    %edx,%edx
  4023fa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023ff:	e8 04 07 00 00       	callq  402b08 <signal>
  402404:	48 83 f8 01          	cmp    $0x1,%rax
  402408:	74 4f                	je     402459 <_gnu_exception_handler+0x199>
  40240a:	48 85 c0             	test   %rax,%rax
  40240d:	74 88                	je     402397 <_gnu_exception_handler+0xd7>
  40240f:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402414:	ff d0                	callq  *%rax
  402416:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40241b:	e9 1d ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402420:	ba 01 00 00 00       	mov    $0x1,%edx
  402425:	b9 04 00 00 00       	mov    $0x4,%ecx
  40242a:	e8 d9 06 00 00       	callq  402b08 <signal>
  40242f:	83 c8 ff             	or     $0xffffffff,%eax
  402432:	e9 06 ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40243e:	00 00 
  402440:	ba 01 00 00 00       	mov    $0x1,%edx
  402445:	b9 08 00 00 00       	mov    $0x8,%ecx
  40244a:	e8 b9 06 00 00       	callq  402b08 <signal>
  40244f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402454:	e9 e4 fe ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402459:	ba 01 00 00 00       	mov    $0x1,%edx
  40245e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402463:	e8 a0 06 00 00       	callq  402b08 <signal>
  402468:	83 c8 ff             	or     $0xffffffff,%eax
  40246b:	e9 cd fe ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>

0000000000402470 <__mingwthr_run_key_dtors.part.0>:
  402470:	41 54                	push   %r12
  402472:	57                   	push   %rdi
  402473:	56                   	push   %rsi
  402474:	53                   	push   %rbx
  402475:	48 83 ec 28          	sub    $0x28,%rsp
  402479:	48 8d 0d 80 54 00 00 	lea    0x5480(%rip),%rcx        # 407900 <__mingwthr_cs>
  402480:	ff 15 56 5d 00 00    	callq  *0x5d56(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402486:	48 8b 1d 53 54 00 00 	mov    0x5453(%rip),%rbx        # 4078e0 <key_dtor_list>
  40248d:	48 85 db             	test   %rbx,%rbx
  402490:	74 32                	je     4024c4 <__mingwthr_run_key_dtors.part.0+0x54>
  402492:	48 8b 3d d3 5d 00 00 	mov    0x5dd3(%rip),%rdi        # 40826c <__imp_TlsGetValue>
  402499:	48 8b 35 5c 5d 00 00 	mov    0x5d5c(%rip),%rsi        # 4081fc <__imp_GetLastError>
  4024a0:	8b 0b                	mov    (%rbx),%ecx
  4024a2:	ff d7                	callq  *%rdi
  4024a4:	49 89 c4             	mov    %rax,%r12
  4024a7:	ff d6                	callq  *%rsi
  4024a9:	85 c0                	test   %eax,%eax
  4024ab:	75 0e                	jne    4024bb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024ad:	4d 85 e4             	test   %r12,%r12
  4024b0:	74 09                	je     4024bb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024b2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4024b6:	4c 89 e1             	mov    %r12,%rcx
  4024b9:	ff d0                	callq  *%rax
  4024bb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4024bf:	48 85 db             	test   %rbx,%rbx
  4024c2:	75 dc                	jne    4024a0 <__mingwthr_run_key_dtors.part.0+0x30>
  4024c4:	48 8d 0d 35 54 00 00 	lea    0x5435(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024cb:	48 83 c4 28          	add    $0x28,%rsp
  4024cf:	5b                   	pop    %rbx
  4024d0:	5e                   	pop    %rsi
  4024d1:	5f                   	pop    %rdi
  4024d2:	41 5c                	pop    %r12
  4024d4:	48 ff 25 49 5d 00 00 	rex.W jmpq *0x5d49(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024e0 <___w64_mingwthr_add_key_dtor>:
  4024e0:	57                   	push   %rdi
  4024e1:	56                   	push   %rsi
  4024e2:	53                   	push   %rbx
  4024e3:	48 83 ec 20          	sub    $0x20,%rsp
  4024e7:	8b 05 fb 53 00 00    	mov    0x53fb(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024ed:	89 cf                	mov    %ecx,%edi
  4024ef:	48 89 d6             	mov    %rdx,%rsi
  4024f2:	85 c0                	test   %eax,%eax
  4024f4:	75 0a                	jne    402500 <___w64_mingwthr_add_key_dtor+0x20>
  4024f6:	48 83 c4 20          	add    $0x20,%rsp
  4024fa:	5b                   	pop    %rbx
  4024fb:	5e                   	pop    %rsi
  4024fc:	5f                   	pop    %rdi
  4024fd:	c3                   	retq   
  4024fe:	66 90                	xchg   %ax,%ax
  402500:	ba 18 00 00 00       	mov    $0x18,%edx
  402505:	b9 01 00 00 00       	mov    $0x1,%ecx
  40250a:	e8 39 06 00 00       	callq  402b48 <calloc>
  40250f:	48 89 c3             	mov    %rax,%rbx
  402512:	48 85 c0             	test   %rax,%rax
  402515:	74 3c                	je     402553 <___w64_mingwthr_add_key_dtor+0x73>
  402517:	89 38                	mov    %edi,(%rax)
  402519:	48 8d 0d e0 53 00 00 	lea    0x53e0(%rip),%rcx        # 407900 <__mingwthr_cs>
  402520:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402524:	ff 15 b2 5c 00 00    	callq  *0x5cb2(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40252a:	48 8b 05 af 53 00 00 	mov    0x53af(%rip),%rax        # 4078e0 <key_dtor_list>
  402531:	48 8d 0d c8 53 00 00 	lea    0x53c8(%rip),%rcx        # 407900 <__mingwthr_cs>
  402538:	48 89 1d a1 53 00 00 	mov    %rbx,0x53a1(%rip)        # 4078e0 <key_dtor_list>
  40253f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402543:	ff 15 db 5c 00 00    	callq  *0x5cdb(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402549:	31 c0                	xor    %eax,%eax
  40254b:	48 83 c4 20          	add    $0x20,%rsp
  40254f:	5b                   	pop    %rbx
  402550:	5e                   	pop    %rsi
  402551:	5f                   	pop    %rdi
  402552:	c3                   	retq   
  402553:	83 c8 ff             	or     $0xffffffff,%eax
  402556:	eb 9e                	jmp    4024f6 <___w64_mingwthr_add_key_dtor+0x16>
  402558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40255f:	00 

0000000000402560 <___w64_mingwthr_remove_key_dtor>:
  402560:	53                   	push   %rbx
  402561:	48 83 ec 20          	sub    $0x20,%rsp
  402565:	8b 05 7d 53 00 00    	mov    0x537d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40256b:	89 cb                	mov    %ecx,%ebx
  40256d:	85 c0                	test   %eax,%eax
  40256f:	75 0f                	jne    402580 <___w64_mingwthr_remove_key_dtor+0x20>
  402571:	31 c0                	xor    %eax,%eax
  402573:	48 83 c4 20          	add    $0x20,%rsp
  402577:	5b                   	pop    %rbx
  402578:	c3                   	retq   
  402579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402580:	48 8d 0d 79 53 00 00 	lea    0x5379(%rip),%rcx        # 407900 <__mingwthr_cs>
  402587:	ff 15 4f 5c 00 00    	callq  *0x5c4f(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40258d:	48 8b 0d 4c 53 00 00 	mov    0x534c(%rip),%rcx        # 4078e0 <key_dtor_list>
  402594:	48 85 c9             	test   %rcx,%rcx
  402597:	74 2a                	je     4025c3 <___w64_mingwthr_remove_key_dtor+0x63>
  402599:	31 d2                	xor    %edx,%edx
  40259b:	eb 0e                	jmp    4025ab <___w64_mingwthr_remove_key_dtor+0x4b>
  40259d:	0f 1f 00             	nopl   (%rax)
  4025a0:	48 89 ca             	mov    %rcx,%rdx
  4025a3:	48 85 c0             	test   %rax,%rax
  4025a6:	74 1b                	je     4025c3 <___w64_mingwthr_remove_key_dtor+0x63>
  4025a8:	48 89 c1             	mov    %rax,%rcx
  4025ab:	8b 01                	mov    (%rcx),%eax
  4025ad:	39 d8                	cmp    %ebx,%eax
  4025af:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4025b3:	75 eb                	jne    4025a0 <___w64_mingwthr_remove_key_dtor+0x40>
  4025b5:	48 85 d2             	test   %rdx,%rdx
  4025b8:	74 26                	je     4025e0 <___w64_mingwthr_remove_key_dtor+0x80>
  4025ba:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4025be:	e8 6d 05 00 00       	callq  402b30 <free>
  4025c3:	48 8d 0d 36 53 00 00 	lea    0x5336(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025ca:	ff 15 54 5c 00 00    	callq  *0x5c54(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4025d0:	31 c0                	xor    %eax,%eax
  4025d2:	48 83 c4 20          	add    $0x20,%rsp
  4025d6:	5b                   	pop    %rbx
  4025d7:	c3                   	retq   
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	48 89 05 f9 52 00 00 	mov    %rax,0x52f9(%rip)        # 4078e0 <key_dtor_list>
  4025e7:	eb d5                	jmp    4025be <___w64_mingwthr_remove_key_dtor+0x5e>
  4025e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004025f0 <__mingw_TLScallback>:
  4025f0:	53                   	push   %rbx
  4025f1:	48 83 ec 20          	sub    $0x20,%rsp
  4025f5:	83 fa 02             	cmp    $0x2,%edx
  4025f8:	0f 84 c2 00 00 00    	je     4026c0 <__mingw_TLScallback+0xd0>
  4025fe:	77 28                	ja     402628 <__mingw_TLScallback+0x38>
  402600:	85 d2                	test   %edx,%edx
  402602:	74 4c                	je     402650 <__mingw_TLScallback+0x60>
  402604:	8b 05 de 52 00 00    	mov    0x52de(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40260a:	85 c0                	test   %eax,%eax
  40260c:	74 32                	je     402640 <__mingw_TLScallback+0x50>
  40260e:	c7 05 d0 52 00 00 01 	movl   $0x1,0x52d0(%rip)        # 4078e8 <__mingwthr_cs_init>
  402615:	00 00 00 
  402618:	b8 01 00 00 00       	mov    $0x1,%eax
  40261d:	48 83 c4 20          	add    $0x20,%rsp
  402621:	5b                   	pop    %rbx
  402622:	c3                   	retq   
  402623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402628:	83 fa 03             	cmp    $0x3,%edx
  40262b:	75 eb                	jne    402618 <__mingw_TLScallback+0x28>
  40262d:	8b 05 b5 52 00 00    	mov    0x52b5(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402633:	85 c0                	test   %eax,%eax
  402635:	74 e1                	je     402618 <__mingw_TLScallback+0x28>
  402637:	e8 34 fe ff ff       	callq  402470 <__mingwthr_run_key_dtors.part.0>
  40263c:	eb da                	jmp    402618 <__mingw_TLScallback+0x28>
  40263e:	66 90                	xchg   %ax,%ax
  402640:	48 8d 0d b9 52 00 00 	lea    0x52b9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402647:	ff 15 cf 5b 00 00    	callq  *0x5bcf(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40264d:	eb bf                	jmp    40260e <__mingw_TLScallback+0x1e>
  40264f:	90                   	nop
  402650:	8b 05 92 52 00 00    	mov    0x5292(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402656:	85 c0                	test   %eax,%eax
  402658:	74 05                	je     40265f <__mingw_TLScallback+0x6f>
  40265a:	e8 11 fe ff ff       	callq  402470 <__mingwthr_run_key_dtors.part.0>
  40265f:	8b 05 83 52 00 00    	mov    0x5283(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402665:	83 f8 01             	cmp    $0x1,%eax
  402668:	75 ae                	jne    402618 <__mingw_TLScallback+0x28>
  40266a:	48 8b 1d 6f 52 00 00 	mov    0x526f(%rip),%rbx        # 4078e0 <key_dtor_list>
  402671:	48 85 db             	test   %rbx,%rbx
  402674:	74 1b                	je     402691 <__mingw_TLScallback+0xa1>
  402676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40267d:	00 00 00 
  402680:	48 89 d9             	mov    %rbx,%rcx
  402683:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402687:	e8 a4 04 00 00       	callq  402b30 <free>
  40268c:	48 85 db             	test   %rbx,%rbx
  40268f:	75 ef                	jne    402680 <__mingw_TLScallback+0x90>
  402691:	48 8d 0d 68 52 00 00 	lea    0x5268(%rip),%rcx        # 407900 <__mingwthr_cs>
  402698:	48 c7 05 3d 52 00 00 	movq   $0x0,0x523d(%rip)        # 4078e0 <key_dtor_list>
  40269f:	00 00 00 00 
  4026a3:	c7 05 3b 52 00 00 00 	movl   $0x0,0x523b(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026aa:	00 00 00 
  4026ad:	ff 15 21 5b 00 00    	callq  *0x5b21(%rip)        # 4081d4 <__IAT_start__>
  4026b3:	e9 60 ff ff ff       	jmpq   402618 <__mingw_TLScallback+0x28>
  4026b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4026bf:	00 
  4026c0:	e8 5b f3 ff ff       	callq  401a20 <_fpreset>
  4026c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4026ca:	48 83 c4 20          	add    $0x20,%rsp
  4026ce:	5b                   	pop    %rbx
  4026cf:	c3                   	retq   

00000000004026d0 <_ValidateImageBase.part.0>:
  4026d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4026d4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4026d8:	31 c0                	xor    %eax,%eax
  4026da:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4026e0:	75 0b                	jne    4026ed <_ValidateImageBase.part.0+0x1d>
  4026e2:	31 c0                	xor    %eax,%eax
  4026e4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4026ea:	0f 94 c0             	sete   %al
  4026ed:	c3                   	retq   
  4026ee:	66 90                	xchg   %ax,%ax

00000000004026f0 <_ValidateImageBase>:
  4026f0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4026f5:	75 09                	jne    402700 <_ValidateImageBase+0x10>
  4026f7:	eb d7                	jmp    4026d0 <_ValidateImageBase.part.0>
  4026f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402700:	31 c0                	xor    %eax,%eax
  402702:	c3                   	retq   
  402703:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40270a:	00 00 00 00 
  40270e:	66 90                	xchg   %ax,%ax

0000000000402710 <_FindPESection>:
  402710:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402714:	48 01 c1             	add    %rax,%rcx
  402717:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40271b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402720:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402724:	85 c9                	test   %ecx,%ecx
  402726:	74 2d                	je     402755 <_FindPESection+0x45>
  402728:	83 e9 01             	sub    $0x1,%ecx
  40272b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40272f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402734:	0f 1f 40 00          	nopl   0x0(%rax)
  402738:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  40273c:	4c 89 c1             	mov    %r8,%rcx
  40273f:	49 39 d0             	cmp    %rdx,%r8
  402742:	77 08                	ja     40274c <_FindPESection+0x3c>
  402744:	03 48 08             	add    0x8(%rax),%ecx
  402747:	48 39 d1             	cmp    %rdx,%rcx
  40274a:	77 0b                	ja     402757 <_FindPESection+0x47>
  40274c:	48 83 c0 28          	add    $0x28,%rax
  402750:	4c 39 c8             	cmp    %r9,%rax
  402753:	75 e3                	jne    402738 <_FindPESection+0x28>
  402755:	31 c0                	xor    %eax,%eax
  402757:	c3                   	retq   
  402758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40275f:	00 

0000000000402760 <_FindPESectionByName>:
  402760:	41 54                	push   %r12
  402762:	56                   	push   %rsi
  402763:	53                   	push   %rbx
  402764:	48 83 ec 20          	sub    $0x20,%rsp
  402768:	48 89 cb             	mov    %rcx,%rbx
  40276b:	e8 90 03 00 00       	callq  402b00 <strlen>
  402770:	48 83 f8 08          	cmp    $0x8,%rax
  402774:	77 7a                	ja     4027f0 <_FindPESectionByName+0x90>
  402776:	48 8b 0d 13 1c 00 00 	mov    0x1c13(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40277d:	45 31 e4             	xor    %r12d,%r12d
  402780:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402785:	75 57                	jne    4027de <_FindPESectionByName+0x7e>
  402787:	e8 44 ff ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  40278c:	85 c0                	test   %eax,%eax
  40278e:	74 4e                	je     4027de <_FindPESectionByName+0x7e>
  402790:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402794:	48 01 c1             	add    %rax,%rcx
  402797:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40279b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
  4027a0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4027a4:	85 c0                	test   %eax,%eax
  4027a6:	74 48                	je     4027f0 <_FindPESectionByName+0x90>
  4027a8:	83 e8 01             	sub    $0x1,%eax
  4027ab:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4027af:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  4027b4:	eb 13                	jmp    4027c9 <_FindPESectionByName+0x69>
  4027b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027bd:	00 00 00 
  4027c0:	49 83 c4 28          	add    $0x28,%r12
  4027c4:	49 39 f4             	cmp    %rsi,%r12
  4027c7:	74 27                	je     4027f0 <_FindPESectionByName+0x90>
  4027c9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4027cf:	48 89 da             	mov    %rbx,%rdx
  4027d2:	4c 89 e1             	mov    %r12,%rcx
  4027d5:	e8 1e 03 00 00       	callq  402af8 <strncmp>
  4027da:	85 c0                	test   %eax,%eax
  4027dc:	75 e2                	jne    4027c0 <_FindPESectionByName+0x60>
  4027de:	4c 89 e0             	mov    %r12,%rax
  4027e1:	48 83 c4 20          	add    $0x20,%rsp
  4027e5:	5b                   	pop    %rbx
  4027e6:	5e                   	pop    %rsi
  4027e7:	41 5c                	pop    %r12
  4027e9:	c3                   	retq   
  4027ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4027f0:	45 31 e4             	xor    %r12d,%r12d
  4027f3:	4c 89 e0             	mov    %r12,%rax
  4027f6:	48 83 c4 20          	add    $0x20,%rsp
  4027fa:	5b                   	pop    %rbx
  4027fb:	5e                   	pop    %rsi
  4027fc:	41 5c                	pop    %r12
  4027fe:	c3                   	retq   
  4027ff:	90                   	nop

0000000000402800 <__mingw_GetSectionForAddress>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	4c 8b 15 85 1b 00 00 	mov    0x1b85(%rip),%r10        # 404390 <.refptr.__image_base__>
  40280b:	45 31 c0             	xor    %r8d,%r8d
  40280e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
  402814:	49 89 c9             	mov    %rcx,%r9
  402817:	75 60                	jne    402879 <__mingw_GetSectionForAddress+0x79>
  402819:	4c 89 d1             	mov    %r10,%rcx
  40281c:	e8 af fe ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402821:	85 c0                	test   %eax,%eax
  402823:	74 54                	je     402879 <__mingw_GetSectionForAddress+0x79>
  402825:	49 63 42 3c          	movslq 0x3c(%r10),%rax
  402829:	4c 89 c9             	mov    %r9,%rcx
  40282c:	4c 29 d1             	sub    %r10,%rcx
  40282f:	49 01 c2             	add    %rax,%r10
  402832:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
  402837:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
  40283c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
  402841:	85 c0                	test   %eax,%eax
  402843:	74 31                	je     402876 <__mingw_GetSectionForAddress+0x76>
  402845:	83 e8 01             	sub    $0x1,%eax
  402848:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40284c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
  402851:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402858:	41 8b 50 0c          	mov    0xc(%r8),%edx
  40285c:	48 89 d0             	mov    %rdx,%rax
  40285f:	48 39 d1             	cmp    %rdx,%rcx
  402862:	72 09                	jb     40286d <__mingw_GetSectionForAddress+0x6d>
  402864:	41 03 40 08          	add    0x8(%r8),%eax
  402868:	48 39 c1             	cmp    %rax,%rcx
  40286b:	72 0c                	jb     402879 <__mingw_GetSectionForAddress+0x79>
  40286d:	49 83 c0 28          	add    $0x28,%r8
  402871:	4d 39 c8             	cmp    %r9,%r8
  402874:	75 e2                	jne    402858 <__mingw_GetSectionForAddress+0x58>
  402876:	45 31 c0             	xor    %r8d,%r8d
  402879:	4c 89 c0             	mov    %r8,%rax
  40287c:	48 83 c4 28          	add    $0x28,%rsp
  402880:	c3                   	retq   
  402881:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402888:	00 00 00 00 
  40288c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402890 <__mingw_GetSectionCount>:
  402890:	48 83 ec 28          	sub    $0x28,%rsp
  402894:	48 8b 0d f5 1a 00 00 	mov    0x1af5(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40289b:	31 c0                	xor    %eax,%eax
  40289d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028a2:	75 12                	jne    4028b6 <__mingw_GetSectionCount+0x26>
  4028a4:	e8 27 fe ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  4028a9:	85 c0                	test   %eax,%eax
  4028ab:	74 09                	je     4028b6 <__mingw_GetSectionCount+0x26>
  4028ad:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028b1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
  4028b6:	48 83 c4 28          	add    $0x28,%rsp
  4028ba:	c3                   	retq   
  4028bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004028c0 <_FindPESectionExec>:
  4028c0:	48 83 ec 28          	sub    $0x28,%rsp
  4028c4:	45 31 c0             	xor    %r8d,%r8d
  4028c7:	49 89 c9             	mov    %rcx,%r9
  4028ca:	48 8b 0d bf 1a 00 00 	mov    0x1abf(%rip),%rcx        # 404390 <.refptr.__image_base__>
  4028d1:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028d6:	75 4c                	jne    402924 <_FindPESectionExec+0x64>
  4028d8:	e8 f3 fd ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  4028dd:	85 c0                	test   %eax,%eax
  4028df:	74 43                	je     402924 <_FindPESectionExec+0x64>
  4028e1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028e5:	48 01 c1             	add    %rax,%rcx
  4028e8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4028ec:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
  4028f1:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4028f5:	85 c0                	test   %eax,%eax
  4028f7:	74 28                	je     402921 <_FindPESectionExec+0x61>
  4028f9:	83 e8 01             	sub    $0x1,%eax
  4028fc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402900:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
  402905:	0f 1f 00             	nopl   (%rax)
  402908:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
  40290d:	74 09                	je     402918 <_FindPESectionExec+0x58>
  40290f:	4d 85 c9             	test   %r9,%r9
  402912:	74 10                	je     402924 <_FindPESectionExec+0x64>
  402914:	49 83 e9 01          	sub    $0x1,%r9
  402918:	49 83 c0 28          	add    $0x28,%r8
  40291c:	49 39 c0             	cmp    %rax,%r8
  40291f:	75 e7                	jne    402908 <_FindPESectionExec+0x48>
  402921:	45 31 c0             	xor    %r8d,%r8d
  402924:	4c 89 c0             	mov    %r8,%rax
  402927:	48 83 c4 28          	add    $0x28,%rsp
  40292b:	c3                   	retq   
  40292c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402930 <_GetPEImageBase>:
  402930:	48 83 ec 28          	sub    $0x28,%rsp
  402934:	48 8b 0d 55 1a 00 00 	mov    0x1a55(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40293b:	45 31 c0             	xor    %r8d,%r8d
  40293e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402943:	75 0b                	jne    402950 <_GetPEImageBase+0x20>
  402945:	e8 86 fd ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  40294a:	85 c0                	test   %eax,%eax
  40294c:	4c 0f 45 c1          	cmovne %rcx,%r8
  402950:	4c 89 c0             	mov    %r8,%rax
  402953:	48 83 c4 28          	add    $0x28,%rsp
  402957:	c3                   	retq   
  402958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40295f:	00 

0000000000402960 <_IsNonwritableInCurrentImage>:
  402960:	48 83 ec 28          	sub    $0x28,%rsp
  402964:	4c 8b 0d 25 1a 00 00 	mov    0x1a25(%rip),%r9        # 404390 <.refptr.__image_base__>
  40296b:	31 c0                	xor    %eax,%eax
  40296d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402973:	49 89 c8             	mov    %rcx,%r8
  402976:	75 57                	jne    4029cf <_IsNonwritableInCurrentImage+0x6f>
  402978:	4c 89 c9             	mov    %r9,%rcx
  40297b:	e8 50 fd ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402980:	85 c0                	test   %eax,%eax
  402982:	74 4b                	je     4029cf <_IsNonwritableInCurrentImage+0x6f>
  402984:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402988:	4c 89 c1             	mov    %r8,%rcx
  40298b:	4c 29 c9             	sub    %r9,%rcx
  40298e:	49 01 c1             	add    %rax,%r9
  402991:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
  402996:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
  40299b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
  4029a0:	85 d2                	test   %edx,%edx
  4029a2:	74 29                	je     4029cd <_IsNonwritableInCurrentImage+0x6d>
  4029a4:	83 ea 01             	sub    $0x1,%edx
  4029a7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4029ab:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4029b0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4029b4:	4c 89 c2             	mov    %r8,%rdx
  4029b7:	4c 39 c1             	cmp    %r8,%rcx
  4029ba:	72 08                	jb     4029c4 <_IsNonwritableInCurrentImage+0x64>
  4029bc:	03 50 08             	add    0x8(%rax),%edx
  4029bf:	48 39 d1             	cmp    %rdx,%rcx
  4029c2:	72 14                	jb     4029d8 <_IsNonwritableInCurrentImage+0x78>
  4029c4:	48 83 c0 28          	add    $0x28,%rax
  4029c8:	4c 39 c8             	cmp    %r9,%rax
  4029cb:	75 e3                	jne    4029b0 <_IsNonwritableInCurrentImage+0x50>
  4029cd:	31 c0                	xor    %eax,%eax
  4029cf:	48 83 c4 28          	add    $0x28,%rsp
  4029d3:	c3                   	retq   
  4029d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4029d8:	8b 40 24             	mov    0x24(%rax),%eax
  4029db:	f7 d0                	not    %eax
  4029dd:	c1 e8 1f             	shr    $0x1f,%eax
  4029e0:	48 83 c4 28          	add    $0x28,%rsp
  4029e4:	c3                   	retq   
  4029e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4029ec:	00 00 00 00 

00000000004029f0 <__mingw_enum_import_library_names>:
  4029f0:	48 83 ec 28          	sub    $0x28,%rsp
  4029f4:	4c 8b 1d 95 19 00 00 	mov    0x1995(%rip),%r11        # 404390 <.refptr.__image_base__>
  4029fb:	45 31 c9             	xor    %r9d,%r9d
  4029fe:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402a04:	41 89 c8             	mov    %ecx,%r8d
  402a07:	75 5f                	jne    402a68 <__mingw_enum_import_library_names+0x78>
  402a09:	4c 89 d9             	mov    %r11,%rcx
  402a0c:	e8 bf fc ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402a11:	85 c0                	test   %eax,%eax
  402a13:	74 53                	je     402a68 <__mingw_enum_import_library_names+0x78>
  402a15:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  402a19:	4c 01 d9             	add    %r11,%rcx
  402a1c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  402a22:	85 c0                	test   %eax,%eax
  402a24:	74 42                	je     402a68 <__mingw_enum_import_library_names+0x78>
  402a26:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  402a2a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  402a2f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402a33:	85 c9                	test   %ecx,%ecx
  402a35:	74 31                	je     402a68 <__mingw_enum_import_library_names+0x78>
  402a37:	83 e9 01             	sub    $0x1,%ecx
  402a3a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402a3e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  402a43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a48:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  402a4c:	4c 89 c9             	mov    %r9,%rcx
  402a4f:	4c 39 c8             	cmp    %r9,%rax
  402a52:	72 08                	jb     402a5c <__mingw_enum_import_library_names+0x6c>
  402a54:	03 4a 08             	add    0x8(%rdx),%ecx
  402a57:	48 39 c8             	cmp    %rcx,%rax
  402a5a:	72 14                	jb     402a70 <__mingw_enum_import_library_names+0x80>
  402a5c:	48 83 c2 28          	add    $0x28,%rdx
  402a60:	4c 39 d2             	cmp    %r10,%rdx
  402a63:	75 e3                	jne    402a48 <__mingw_enum_import_library_names+0x58>
  402a65:	45 31 c9             	xor    %r9d,%r9d
  402a68:	4c 89 c8             	mov    %r9,%rax
  402a6b:	48 83 c4 28          	add    $0x28,%rsp
  402a6f:	c3                   	retq   
  402a70:	4c 01 d8             	add    %r11,%rax
  402a73:	eb 0b                	jmp    402a80 <__mingw_enum_import_library_names+0x90>
  402a75:	0f 1f 00             	nopl   (%rax)
  402a78:	41 83 e8 01          	sub    $0x1,%r8d
  402a7c:	48 83 c0 14          	add    $0x14,%rax
  402a80:	8b 48 04             	mov    0x4(%rax),%ecx
  402a83:	85 c9                	test   %ecx,%ecx
  402a85:	75 07                	jne    402a8e <__mingw_enum_import_library_names+0x9e>
  402a87:	8b 50 0c             	mov    0xc(%rax),%edx
  402a8a:	85 d2                	test   %edx,%edx
  402a8c:	74 d7                	je     402a65 <__mingw_enum_import_library_names+0x75>
  402a8e:	45 85 c0             	test   %r8d,%r8d
  402a91:	7f e5                	jg     402a78 <__mingw_enum_import_library_names+0x88>
  402a93:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402a97:	4d 01 d9             	add    %r11,%r9
  402a9a:	4c 89 c8             	mov    %r9,%rax
  402a9d:	48 83 c4 28          	add    $0x28,%rsp
  402aa1:	c3                   	retq   
  402aa2:	90                   	nop
  402aa3:	90                   	nop
  402aa4:	90                   	nop
  402aa5:	90                   	nop
  402aa6:	90                   	nop
  402aa7:	90                   	nop
  402aa8:	90                   	nop
  402aa9:	90                   	nop
  402aaa:	90                   	nop
  402aab:	90                   	nop
  402aac:	90                   	nop
  402aad:	90                   	nop
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <___chkstk_ms>:
  402ab0:	51                   	push   %rcx
  402ab1:	50                   	push   %rax
  402ab2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402ab8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402abd:	72 19                	jb     402ad8 <___chkstk_ms+0x28>
  402abf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402ac6:	48 83 09 00          	orq    $0x0,(%rcx)
  402aca:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402ad0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402ad6:	77 e7                	ja     402abf <___chkstk_ms+0xf>
  402ad8:	48 29 c1             	sub    %rax,%rcx
  402adb:	48 83 09 00          	orq    $0x0,(%rcx)
  402adf:	58                   	pop    %rax
  402ae0:	59                   	pop    %rcx
  402ae1:	c3                   	retq   
  402ae2:	90                   	nop
  402ae3:	90                   	nop
  402ae4:	90                   	nop
  402ae5:	90                   	nop
  402ae6:	90                   	nop
  402ae7:	90                   	nop
  402ae8:	90                   	nop
  402ae9:	90                   	nop
  402aea:	90                   	nop
  402aeb:	90                   	nop
  402aec:	90                   	nop
  402aed:	90                   	nop
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <vfprintf>:
  402af0:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 40835c <__imp_vfprintf>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <strncmp>:
  402af8:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 408354 <__imp_strncmp>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <strlen>:
  402b00:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 40834c <__imp_strlen>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <signal>:
  402b08:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 408344 <__imp_signal>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <printf>:
  402b10:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 40833c <__imp_printf>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <memcpy>:
  402b18:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 408334 <__imp_memcpy>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <malloc>:
  402b20:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 40832c <__imp_malloc>
  402b26:	90                   	nop
  402b27:	90                   	nop

0000000000402b28 <fwrite>:
  402b28:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 408324 <__imp_fwrite>
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <free>:
  402b30:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 40831c <__imp_free>
  402b36:	90                   	nop
  402b37:	90                   	nop

0000000000402b38 <fprintf>:
  402b38:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 408314 <__imp_fprintf>
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <exit>:
  402b40:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 40830c <__imp_exit>
  402b46:	90                   	nop
  402b47:	90                   	nop

0000000000402b48 <calloc>:
  402b48:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 408304 <__imp_calloc>
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <abort>:
  402b50:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 4082fc <__imp_abort>
  402b56:	90                   	nop
  402b57:	90                   	nop

0000000000402b58 <_onexit>:
  402b58:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4082f4 <__imp__onexit>
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <_initterm>:
  402b60:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 4082ec <__imp__initterm>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <_cexit>:
  402b68:	ff 25 6e 57 00 00    	jmpq   *0x576e(%rip)        # 4082dc <__imp__cexit>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <_amsg_exit>:
  402b70:	ff 25 5e 57 00 00    	jmpq   *0x575e(%rip)        # 4082d4 <__imp__amsg_exit>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <__setusermatherr>:
  402b78:	ff 25 46 57 00 00    	jmpq   *0x5746(%rip)        # 4082c4 <__imp___setusermatherr>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <__set_app_type>:
  402b80:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 4082bc <__imp___set_app_type>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <__lconv_init>:
  402b88:	ff 25 26 57 00 00    	jmpq   *0x5726(%rip)        # 4082b4 <__imp___lconv_init>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <__getmainargs>:
  402b90:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 40829c <__imp___getmainargs>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <__C_specific_handler>:
  402b98:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 408294 <__imp___C_specific_handler>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <__acrt_iob_func>:
  402ba0:	53                   	push   %rbx
  402ba1:	48 83 ec 20          	sub    $0x20,%rsp
  402ba5:	89 cb                	mov    %ecx,%ebx
  402ba7:	e8 54 00 00 00       	callq  402c00 <__iob_func>
  402bac:	89 d9                	mov    %ebx,%ecx
  402bae:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402bb2:	48 c1 e2 04          	shl    $0x4,%rdx
  402bb6:	48 01 d0             	add    %rdx,%rax
  402bb9:	48 83 c4 20          	add    $0x20,%rsp
  402bbd:	5b                   	pop    %rbx
  402bbe:	c3                   	retq   
  402bbf:	90                   	nop

0000000000402bc0 <_get_invalid_parameter_handler>:
  402bc0:	48 8b 05 89 4d 00 00 	mov    0x4d89(%rip),%rax        # 407950 <handler>
  402bc7:	c3                   	retq   
  402bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bcf:	00 

0000000000402bd0 <_set_invalid_parameter_handler>:
  402bd0:	48 89 c8             	mov    %rcx,%rax
  402bd3:	48 87 05 76 4d 00 00 	xchg   %rax,0x4d76(%rip)        # 407950 <handler>
  402bda:	c3                   	retq   
  402bdb:	90                   	nop
  402bdc:	90                   	nop
  402bdd:	90                   	nop
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <__p__acmdln>:
  402be0:	48 8b 05 c9 17 00 00 	mov    0x17c9(%rip),%rax        # 4043b0 <.refptr.__imp__acmdln>
  402be7:	48 8b 00             	mov    (%rax),%rax
  402bea:	c3                   	retq   
  402beb:	90                   	nop
  402bec:	90                   	nop
  402bed:	90                   	nop
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <__p__fmode>:
  402bf0:	48 8b 05 c9 17 00 00 	mov    0x17c9(%rip),%rax        # 4043c0 <.refptr.__imp__fmode>
  402bf7:	48 8b 00             	mov    (%rax),%rax
  402bfa:	c3                   	retq   
  402bfb:	90                   	nop
  402bfc:	90                   	nop
  402bfd:	90                   	nop
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <__iob_func>:
  402c00:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 4082ac <__imp___iob_func>
  402c06:	90                   	nop
  402c07:	90                   	nop
  402c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c0f:	00 

0000000000402c10 <VirtualQuery>:
  402c10:	ff 25 6e 56 00 00    	jmpq   *0x566e(%rip)        # 408284 <__imp_VirtualQuery>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <VirtualProtect>:
  402c18:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 40827c <__imp_VirtualProtect>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <UnhandledExceptionFilter>:
  402c20:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <TlsGetValue>:
  402c28:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 40826c <__imp_TlsGetValue>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <TerminateProcess>:
  402c30:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 408264 <__imp_TerminateProcess>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <Sleep>:
  402c38:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 40825c <__imp_Sleep>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <SetUnhandledExceptionFilter>:
  402c40:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <RtlVirtualUnwind>:
  402c48:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <RtlLookupFunctionEntry>:
  402c50:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <RtlCaptureContext>:
  402c58:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 40823c <__imp_RtlCaptureContext>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <RtlAddFunctionTable>:
  402c60:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <QueryPerformanceCounter>:
  402c68:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <LeaveCriticalSection>:
  402c70:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402c76:	90                   	nop
  402c77:	90                   	nop

0000000000402c78 <InitializeCriticalSection>:
  402c78:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402c7e:	90                   	nop
  402c7f:	90                   	nop

0000000000402c80 <GetTickCount>:
  402c80:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 408214 <__imp_GetTickCount>
  402c86:	90                   	nop
  402c87:	90                   	nop

0000000000402c88 <GetSystemTimeAsFileTime>:
  402c88:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <GetStartupInfoA>:
  402c90:	ff 25 6e 55 00 00    	jmpq   *0x556e(%rip)        # 408204 <__imp_GetStartupInfoA>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <GetLastError>:
  402c98:	ff 25 5e 55 00 00    	jmpq   *0x555e(%rip)        # 4081fc <__imp_GetLastError>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <GetCurrentThreadId>:
  402ca0:	ff 25 4e 55 00 00    	jmpq   *0x554e(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <GetCurrentProcessId>:
  402ca8:	ff 25 3e 55 00 00    	jmpq   *0x553e(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <GetCurrentProcess>:
  402cb0:	ff 25 2e 55 00 00    	jmpq   *0x552e(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402cb6:	90                   	nop
  402cb7:	90                   	nop

0000000000402cb8 <EnterCriticalSection>:
  402cb8:	ff 25 1e 55 00 00    	jmpq   *0x551e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <DeleteCriticalSection>:
  402cc0:	ff 25 0e 55 00 00    	jmpq   *0x550e(%rip)        # 4081d4 <__IAT_start__>
  402cc6:	90                   	nop
  402cc7:	90                   	nop
  402cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402ccf:	00 

0000000000402cd0 <register_frame_ctor>:
  402cd0:	e9 6b e8 ff ff       	jmpq   401540 <__gcc_register_frame>
  402cd5:	90                   	nop
  402cd6:	90                   	nop
  402cd7:	90                   	nop
  402cd8:	90                   	nop
  402cd9:	90                   	nop
  402cda:	90                   	nop
  402cdb:	90                   	nop
  402cdc:	90                   	nop
  402cdd:	90                   	nop
  402cde:	90                   	nop
  402cdf:	90                   	nop

0000000000402ce0 <__CTOR_LIST__>:
  402ce0:	ff                   	(bad)  
  402ce1:	ff                   	(bad)  
  402ce2:	ff                   	(bad)  
  402ce3:	ff                   	(bad)  
  402ce4:	ff                   	(bad)  
  402ce5:	ff                   	(bad)  
  402ce6:	ff                   	(bad)  
  402ce7:	ff                   	.byte 0xff

0000000000402ce8 <.ctors.65535>:
  402ce8:	d0 2c 40             	shrb   (%rax,%rax,2)
	...

0000000000402cf8 <__DTOR_LIST__>:
  402cf8:	ff                   	(bad)  
  402cf9:	ff                   	(bad)  
  402cfa:	ff                   	(bad)  
  402cfb:	ff                   	(bad)  
  402cfc:	ff                   	(bad)  
  402cfd:	ff                   	(bad)  
  402cfe:	ff                   	(bad)  
  402cff:	ff 00                	incl   (%rax)
  402d01:	00 00                	add    %al,(%rax)
  402d03:	00 00                	add    %al,(%rax)
  402d05:	00 00                	add    %al,(%rax)
	...

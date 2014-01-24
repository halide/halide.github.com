	.bundle_align_mode 5
	.section	".note.NaCl.ABI.x86-64","aG",@note,.note.NaCl.ABI.x86-64,comdat
	.long	5
	.long	7
	.long	1
	.ascii	 "NaCl"
	.byte	0
	.align	4
	.ascii	 "x86-64"
	.byte	0
	.align	4
	.file	"halide_module_halide_game_of_life"
	.section	.text.halide_current_time_ns,"axG",@progbits,halide_current_time_ns,comdat
	.weak	halide_current_time_ns
	.align	32, 0x90
	.type	halide_current_time_ns,@function
halide_current_time_ns:                 # @halide_current_time_ns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	leal	(%rsp), %edi
	xorl	%esi, %esi
	naclcall	gettimeofday@PLT
	movl	halide_reference_clock@GOTPCREL(%rip), %ecx
	movslq	%nacl:4(%r15,%rcx), %rdx
	movslq	4(%rsp), %rax
	subq	%rdx, %rax
	movl	(%rsp), %edx
	subl	%nacl:(%r15,%rcx), %edx
	movslq	%edx, %rcx
	imulq	$1000000, %rcx, %rcx    # imm = 0xF4240
	addq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	popq	%rdx
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp2:
	.size	halide_current_time_ns, .Ltmp2-halide_current_time_ns
	.cfi_endproc

	.section	.text.halide_printf,"axG",@progbits,halide_printf,comdat
	.weak	halide_printf
	.align	32, 0x90
	.type	halide_printf,@function
halide_printf:                          # @halide_printf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	naclsspq	$1216, %r15     # imm = 0x4C0
.Ltmp6:
	.cfi_def_cfa_offset 1232
.Ltmp7:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	testb	%al, %al
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB1_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leal	(%rsp), %eax
	movl	%eax, 200(%rsp)
	leal	1232(%rsp), %eax
	movl	%eax, 196(%rsp)
	movl	$48, 192(%rsp)
	movl	$16, 188(%rsp)
	movl	188(%rsp), %ecx
	leal	192(%rsp), %edi
	movl	$1024, %esi             # imm = 0x400
	movl	%ebx, %edx
	naclcall	vsnprintf@PLT
	movl	%eax, %ebx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_4:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	cmpb	$0, %nacl:192(%rsp,%rax)
	je	.LBB1_5
# BB#3:                                 # %while.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	incl	%edx
	cmpl	$1022, %edx             # imm = 0x3FE
	jbe	.LBB1_4
.LBB1_5:                                # %while.end
	leal	192(%rsp), %esi
	movl	$2, %edi
	naclcall	write@PLT
	movl	%ebx, %eax
	naclaspq	$1216, %r15     # imm = 0x4C0
	popq	%rbx
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp8:
	.size	halide_printf, .Ltmp8-halide_printf
	.cfi_endproc

	.section	.text.halide_host_cpu_count,"axG",@progbits,halide_host_cpu_count,comdat
	.weak	halide_host_cpu_count
	.align	32, 0x90
	.type	halide_host_cpu_count,@function
halide_host_cpu_count:                  # @halide_host_cpu_count
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$84, %edi
	jmp	sysconf@PLT
	.align	32, 0x90
.Ltmp9:
	.size	halide_host_cpu_count, .Ltmp9-halide_host_cpu_count
	.cfi_endproc

	.section	.text.halide_shutdown_thread_pool,"axG",@progbits,halide_shutdown_thread_pool,comdat
	.weak	halide_shutdown_thread_pool
	.align	32, 0x90
	.type	halide_shutdown_thread_pool,@function
halide_shutdown_thread_pool:            # @halide_shutdown_thread_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r13, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movl	halide_thread_pool_initialized@GOTPCREL(%rip), %eax
	cmpb	$0, %nacl:(%r15,%rax)
	je	.LBB3_5
# BB#1:                                 # %if.end
	movl	halide_work_queue@GOTPCREL(%rip), %r12d
	movl	%r12d, %edi
	naclcall	pthread_mutex_lock@PLT
	movb	$1, %nacl:348(%r15,%r12)
	leal	44(%r12), %edi
	movl	%edi, (%rsp)            # 4-byte Spill
	naclcall	pthread_cond_broadcast@PLT
	movl	%r12d, %edi
	naclcall	pthread_mutex_unlock@PLT
	movl	halide_threads@GOTPCREL(%rip), %eax
	movl	%nacl:(%r15,%rax), %eax
	decl	%eax
	testl	%eax, %eax
	jle	.LBB3_4
# BB#2:
	xorl	%ebx, %ebx
	leal	4(%rsp), %r13d
	movl	halide_threads@GOTPCREL(%rip), %r14d
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%rbx,4), %eax
	addl	%r12d, %eax
	movl	%nacl:92(%r15,%rax), %edi
	movl	%r13d, %esi
	naclcall	pthread_join@PLT
	incl	%ebx
	movl	%nacl:(%r15,%r14), %eax
	decl	%eax
	cmpl	%eax, %ebx
	jl	.LBB3_3
.LBB3_4:                                # %for.end
	movl	%r12d, %edi
	naclcall	pthread_mutex_destroy@PLT
	movl	(%rsp), %edi            # 4-byte Reload
	naclcall	pthread_cond_destroy@PLT
	movl	halide_thread_pool_initialized@GOTPCREL(%rip), %eax
	movb	$0, %nacl:(%r15,%rax)
.LBB3_5:                                # %return
	naclaspq	$8, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp24:
	.size	halide_shutdown_thread_pool, .Ltmp24-halide_shutdown_thread_pool
	.cfi_endproc

	.section	.text.halide_set_custom_do_task,"axG",@progbits,halide_set_custom_do_task,comdat
	.weak	halide_set_custom_do_task
	.align	32, 0x90
	.type	halide_set_custom_do_task,@function
halide_set_custom_do_task:              # @halide_set_custom_do_task
	.cfi_startproc
# BB#0:                                 # %entry
	movl	halide_custom_do_task@GOTPCREL(%rip), %eax
	movl	%edi, %nacl:(%r15,%rax)
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp25:
	.size	halide_set_custom_do_task, .Ltmp25-halide_set_custom_do_task
	.cfi_endproc

	.section	.text.halide_set_custom_do_par_for,"axG",@progbits,halide_set_custom_do_par_for,comdat
	.weak	halide_set_custom_do_par_for
	.align	32, 0x90
	.type	halide_set_custom_do_par_for,@function
halide_set_custom_do_par_for:           # @halide_set_custom_do_par_for
	.cfi_startproc
# BB#0:                                 # %entry
	movl	halide_custom_do_par_for@GOTPCREL(%rip), %eax
	movl	%edi, %nacl:(%r15,%rax)
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp26:
	.size	halide_set_custom_do_par_for, .Ltmp26-halide_set_custom_do_par_for
	.cfi_endproc

	.section	.text.halide_do_task,"axG",@progbits,halide_do_task,comdat
	.weak	halide_do_task
	.align	32, 0x90
	.type	halide_do_task,@function
halide_do_task:                         # @halide_do_task
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %r8d
	movl	halide_custom_do_task@GOTPCREL(%rip), %eax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	%r8d, %esi
	nacljmp	%eax, %r15
.LBB6_2:                                # %if.else
	movl	%edx, %esi
	movl	%ecx, %edx
	nacljmp	%r8d, %r15
	.align	32, 0x90
.Ltmp27:
	.size	halide_do_task, .Ltmp27-halide_do_task
	.cfi_endproc

	.section	.text.halide_worker_thread,"axG",@progbits,halide_worker_thread,comdat
	.weak	halide_worker_thread
	.align	32, 0x90
	.type	halide_worker_thread,@function
halide_worker_thread:                   # @halide_worker_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
	naclsspq	$40, %r15
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r12, -32
.Ltmp40:
	.cfi_offset %r13, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movl	%edi, %r12d
	movl	halide_work_queue@GOTPCREL(%rip), %r14d
	movl	%r14d, %edi
	naclcall	pthread_mutex_lock@PLT
	testl	%r12d, %r12d
	je	.LBB7_6
# BB#1:
	movl	%r12d, %ebx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	leal	44(%r14), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	jmp	.LBB7_2
	.align	16, 0x90
.LBB7_5:                                # %if.then
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	32(%rsp), %edi          # 4-byte Reload
	movq	%rsi, %r14
	naclcall	pthread_cond_wait@PLT
.LBB7_2:                                # %cond.true
                                        # =>This Inner Loop Header: Depth=1
	movl	%nacl:12(%r15,%rbx), %eax
	cmpl	%nacl:16(%r15,%rbx), %eax
	jl	.LBB7_4
# BB#3:                                 # %cond.end
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpl	$0, %nacl:24(%r15,%rbx)
	jle	.LBB7_15
.LBB7_4:                                # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%r14, %rsi
	movl	%nacl:40(%r15,%rsi), %eax
	testl	%eax, %eax
	je	.LBB7_5
# BB#20:                                # %if.else
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%eax, %r13d
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%nacl:20(%r15,%r13), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%nacl:4(%r15,%r13), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%nacl:8(%r15,%r13), %ebx
	movl	%nacl:12(%r15,%r13), %r12d
	leal	1(%r12), %eax
	movl	%eax, %nacl:12(%r15,%r13)
	cmpl	%nacl:16(%r15,%r13), %eax
	jne	.LBB7_22
# BB#21:                                # %if.then7
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%nacl:(%r15,%r13), %eax
	movl	%eax, %nacl:40(%r15,%rsi)
.LBB7_22:                               # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	%nacl:24(%r15,%r13)
	movl	%esi, %edi
	movq	%rsi, %r14
	naclcall	pthread_mutex_unlock@PLT
	movl	%ebx, %edi
	movl	20(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	naclcall	halide_do_task@PLT
	movl	%eax, %ebx
	movl	%r14d, %edi
	naclcall	pthread_mutex_lock@PLT
	testl	%ebx, %ebx
	je	.LBB7_24
# BB#23:                                # %if.then13
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%ebx, %nacl:28(%r15,%r13)
.LBB7_24:                               # %if.end14
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%nacl:24(%r15,%r13), %eax
	decl	%eax
	movl	%eax, %nacl:24(%r15,%r13)
	movl	%nacl:12(%r15,%r13), %ecx
	cmpl	%nacl:16(%r15,%r13), %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	jl	.LBB7_2
# BB#25:                                # %_ZN4work7runningEv.exit47
                                        #   in Loop: Header=BB7_2 Depth=1
	testl	%eax, %eax
	jg	.LBB7_2
# BB#26:                                # %_ZN4work7runningEv.exit47
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cmpl	36(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB7_2
# BB#27:                                # %if.then18
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	32(%rsp), %edi          # 4-byte Reload
	naclcall	pthread_cond_broadcast@PLT
	jmp	.LBB7_2
.LBB7_6:                                # %cond.false.us.preheader
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movl	halide_work_queue@GOTPCREL(%rip), %esi
	cmpb	$0, %nacl:348(%r15,%rsi)
	jne	.LBB7_15
# BB#7:
	leal	44(%rsi), %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_8:                                # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	movl	%nacl:40(%r15,%rsi), %eax
	testl	%eax, %eax
	jne	.LBB7_9
# BB#19:                                # %if.then.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%ebx, %edi
	movq	%rsi, %r14
	naclcall	pthread_cond_wait@PLT
	jmp	.LBB7_14
	.align	16, 0x90
.LBB7_9:                                # %if.else.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%eax, %r13d
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%nacl:20(%r15,%r13), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%nacl:4(%r15,%r13), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%nacl:8(%r15,%r13), %ebx
	movl	%nacl:12(%r15,%r13), %r12d
	leal	1(%r12), %eax
	movl	%eax, %nacl:12(%r15,%r13)
	cmpl	%nacl:16(%r15,%r13), %eax
	jne	.LBB7_11
# BB#10:                                # %if.then7.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%nacl:(%r15,%r13), %eax
	movl	%eax, %nacl:40(%r15,%rsi)
.LBB7_11:                               # %if.end.us
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	%nacl:24(%r15,%r13)
	movl	%esi, %edi
	movq	%rsi, %r14
	naclcall	pthread_mutex_unlock@PLT
	movl	%ebx, %edi
	movl	24(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	movl	28(%rsp), %ecx          # 4-byte Reload
	naclcall	halide_do_task@PLT
	movl	%eax, %ebx
	movl	%r14d, %edi
	naclcall	pthread_mutex_lock@PLT
	testl	%ebx, %ebx
	je	.LBB7_13
# BB#12:                                # %if.then13.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%ebx, %nacl:28(%r15,%r13)
.LBB7_13:                               # %if.end14.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%nacl:24(%r15,%r13), %eax
	decl	%eax
	movl	%eax, %nacl:24(%r15,%r13)
	movl	%nacl:12(%r15,%r13), %ecx
	cmpl	%nacl:16(%r15,%r13), %ecx
	movl	20(%rsp), %ebx          # 4-byte Reload
	jl	.LBB7_14
# BB#16:                                # %_ZN4work7runningEv.exit47.us
                                        #   in Loop: Header=BB7_8 Depth=1
	testl	%eax, %eax
	jg	.LBB7_14
# BB#17:                                # %_ZN4work7runningEv.exit47.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	cmpl	36(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB7_14
# BB#18:                                # %if.then18.us
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	%ebx, %edi
	naclcall	pthread_cond_broadcast@PLT
	.align	16, 0x90
.LBB7_14:                               # %cond.false.us.backedge
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	%r14, %rsi
	cmpb	$0, %nacl:348(%r15,%rsi)
	je	.LBB7_8
.LBB7_15:                               # %while.end
	movl	halide_work_queue@GOTPCREL(%rip), %edi
	naclcall	pthread_mutex_unlock@PLT
	xorl	%eax, %eax
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp42:
	.size	halide_worker_thread, .Ltmp42-halide_worker_thread
	.cfi_endproc

	.section	.text.halide_do_par_for,"axG",@progbits,halide_do_par_for,comdat
	.weak	halide_do_par_for
	.align	32, 0x90
	.type	halide_do_par_for,@function
halide_do_par_for:                      # @halide_do_par_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 40
	naclsspq	$56, %r15
.Ltmp52:
	.cfi_def_cfa_offset 96
.Ltmp53:
	.cfi_offset %rbx, -40
.Ltmp54:
	.cfi_offset %r12, -32
.Ltmp55:
	.cfi_offset %r13, -24
.Ltmp56:
	.cfi_offset %r14, -16
	movl	%ecx, %ebx
	movl	%edx, %r12d
	movl	halide_custom_do_par_for@GOTPCREL(%rip), %eax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	%r12d, %edx
	movl	%ebx, %ecx
	naclcall	%eax,%r15
	jmp	.LBB8_15
.LBB8_2:                                # %if.end
	movl	halide_thread_pool_initialized@GOTPCREL(%rip), %eax
	cmpb	$0, %nacl:(%r15,%rax)
	jne	.LBB8_14
# BB#3:                                 # %if.then2
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movl	halide_work_queue@GOTPCREL(%rip), %r13d
	movb	$0, %nacl:348(%r15,%r13)
	movl	%r13d, %edi
	xorl	%esi, %esi
	naclcall	pthread_mutex_init@PLT
	leal	44(%r13), %edi
	xorl	%esi, %esi
	naclcall	pthread_cond_init@PLT
	leal	.L.str(%rip), %edi
	movl	$0, %nacl:40(%r15,%r13)
	naclcall	getenv@PLT
	testl	%eax, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then7
	movl	%eax, %edi
	naclcall	atoi@PLT
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	naclcall	halide_host_cpu_count@PLT
.LBB8_6:                                # %if.end10
	movl	halide_threads@GOTPCREL(%rip), %ecx
	movl	%eax, %nacl:(%r15,%rcx)
	cmpl	$65, %eax
	jl	.LBB8_8
# BB#7:                                 # %for.cond.preheader.thread
	movl	halide_threads@GOTPCREL(%rip), %eax
	movl	$64, %nacl:(%r15,%rax)
	addl	$92, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB8_12
.LBB8_8:                                # %if.else12
	testl	%eax, %eax
	jle	.LBB8_9
# BB#10:                                # %for.cond.preheader
	decl	%eax
	testl	%eax, %eax
	jle	.LBB8_13
# BB#11:
	xorl	%r14d, %r14d
	addl	$92, %r13d
	.align	16, 0x90
.LBB8_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	halide_worker_thread@GOTPCREL(%rip), %edx
	movl	%r13d, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	naclcall	pthread_create@PLT
	addl	$4, %r13d
	incl	%r14d
	movl	halide_threads@GOTPCREL(%rip), %eax
	movl	%nacl:(%r15,%rax), %eax
	decl	%eax
	cmpl	%eax, %r14d
	jl	.LBB8_12
	jmp	.LBB8_13
.LBB8_9:                                # %for.cond.preheader.thread42
	movl	halide_threads@GOTPCREL(%rip), %eax
	movl	$1, %nacl:(%r15,%rax)
.LBB8_13:                               # %for.end
	movl	halide_thread_pool_initialized@GOTPCREL(%rip), %eax
	movb	$1, %nacl:(%r15,%rax)
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
	movl	12(%rsp), %edi          # 4-byte Reload
.LBB8_14:                               # %if.end19
	movl	%esi, 28(%rsp)
	movl	%edi, 32(%rsp)
	movl	%r12d, 36(%rsp)
	addl	%r12d, %ebx
	movl	%ebx, 40(%rsp)
	movl	%r8d, 44(%rsp)
	movl	$0, 52(%rsp)
	movl	halide_work_queue@GOTPCREL(%rip), %ebx
	movl	$0, 48(%rsp)
	movl	%ebx, %edi
	naclcall	pthread_mutex_lock@PLT
	leal	24(%rsp), %r14d
	movl	%nacl:40(%r15,%rbx), %eax
	movl	%eax, 24(%rsp)
	movl	%r14d, %nacl:40(%r15,%rbx)
	movl	%ebx, %edi
	naclcall	pthread_mutex_unlock@PLT
	addl	$44, %ebx
	movl	%ebx, %edi
	naclcall	pthread_cond_broadcast@PLT
	movl	%r14d, %edi
	naclcall	halide_worker_thread@PLT
	movl	52(%rsp), %eax
.LBB8_15:                               # %return
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp57:
	.size	halide_do_par_for, .Ltmp57-halide_do_par_for
	.cfi_endproc

	.section	.text.halide_set_custom_trace,"axG",@progbits,halide_set_custom_trace,comdat
	.weak	halide_set_custom_trace
	.align	32, 0x90
	.type	halide_set_custom_trace,@function
halide_set_custom_trace:                # @halide_set_custom_trace
	.cfi_startproc
# BB#0:                                 # %entry
	movl	halide_custom_trace@GOTPCREL(%rip), %eax
	movl	%edi, %nacl:(%r15,%rax)
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp58:
	.size	halide_set_custom_trace, .Ltmp58-halide_set_custom_trace
	.cfi_endproc

	.section	.text.halide_shutdown_trace,"axG",@progbits,halide_shutdown_trace,comdat
	.weak	halide_shutdown_trace
	.align	32, 0x90
	.type	halide_shutdown_trace,@function
halide_shutdown_trace:                  # @halide_shutdown_trace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 16
	movl	halide_trace_file@GOTPCREL(%rip), %eax
	movl	%nacl:(%r15,%rax), %edi
	testl	%edi, %edi
	je	.LBB10_2
# BB#1:                                 # %if.then
	naclcall	fclose@PLT
	movl	halide_trace_file@GOTPCREL(%rip), %ecx
	movl	$0, %nacl:(%r15,%rcx)
	movl	halide_trace_initialized@GOTPCREL(%rip), %ecx
	movb	$0, %nacl:(%r15,%rcx)
	popq	%rdx
	popq	%r11
	nacljmp	%r11, %r15
.LBB10_2:                               # %return
	xorl	%eax, %eax
	popq	%rdx
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp61:
	.size	halide_shutdown_trace, .Ltmp61-halide_shutdown_trace
	.cfi_endproc

	.section	.text.halide_set_custom_allocator,"axG",@progbits,halide_set_custom_allocator,comdat
	.weak	halide_set_custom_allocator
	.align	32, 0x90
	.type	halide_set_custom_allocator,@function
halide_set_custom_allocator:            # @halide_set_custom_allocator
	.cfi_startproc
# BB#0:                                 # %entry
	movl	halide_custom_malloc@GOTPCREL(%rip), %eax
	movl	%edi, %nacl:(%r15,%rax)
	movl	halide_custom_free@GOTPCREL(%rip), %eax
	movl	%esi, %nacl:(%r15,%rax)
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp62:
	.size	halide_set_custom_allocator, .Ltmp62-halide_set_custom_allocator
	.cfi_endproc

	.section	.text.halide_error,"axG",@progbits,halide_error,comdat
	.weak	halide_error
	.align	32, 0x90
	.type	halide_error,@function
halide_error:                           # @halide_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	movl	halide_error_handler@GOTPCREL(%rip), %ecx
	movl	%nacl:(%r15,%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	%eax, %esi
	popq	%rax
	nacljmp	%ecx, %r15
.LBB12_2:                               # %if.else
	leal	.L.str30(%rip), %esi
	movl	%eax, %edx
	xorb	%al, %al
	naclcall	halide_printf@PLT
	movl	$1, %edi
	popq	%rax
	jmp	exit@PLT
	.align	32, 0x90
.Ltmp65:
	.size	halide_error, .Ltmp65-halide_error
	.cfi_endproc

	.section	.text.halide_set_error_handler,"axG",@progbits,halide_set_error_handler,comdat
	.weak	halide_set_error_handler
	.align	32, 0x90
	.type	halide_set_error_handler,@function
halide_set_error_handler:               # @halide_set_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	movl	halide_error_handler@GOTPCREL(%rip), %eax
	movl	%edi, %nacl:(%r15,%rax)
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp66:
	.size	halide_set_error_handler, .Ltmp66-halide_set_error_handler
	.cfi_endproc

	.section	.text.halide_copy_to_host,"axG",@progbits,halide_copy_to_host,comdat
	.weak	halide_copy_to_host
	.align	32, 0x90
	.type	halide_copy_to_host,@function
halide_copy_to_host:                    # @halide_copy_to_host
	.cfi_startproc
# BB#0:                                 # %entry
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp67:
	.size	halide_copy_to_host, .Ltmp67-halide_copy_to_host
	.cfi_endproc

	.text
	.globl	halide_game_of_life
	.align	32, 0x90
	.type	halide_game_of_life,@function
halide_game_of_life:                    # @halide_game_of_life
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 40
	naclsspq	$120, %r15
.Ltmp77:
	.cfi_def_cfa_offset 160
.Ltmp78:
	.cfi_offset %rbx, -40
.Ltmp79:
	.cfi_offset %r12, -32
.Ltmp80:
	.cfi_offset %r13, -24
.Ltmp81:
	.cfi_offset %r14, -16
	testl	%edi, %edi
	je	.LBB15_1
# BB#3:                                 # %assert succeeded: buffer argument p0 is NULL
	movl	%edi, %r9d
	movl	%nacl:8(%r15,%r9), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	sete	%dl
	cmpq	$0, %nacl:(%r15,%r9)
	sete	%al
	testl	%esi, %esi
	je	.LBB15_4
# BB#5:                                 # %assert succeeded: buffer argument f3 is NULL
	movl	%esi, %esi
	movl	%nacl:8(%r15,%rsi), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	%nacl:60(%r15,%r9), %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	andb	%al, %dl
	movb	%dl, 35(%rsp)           # 1-byte Spill
	movl	%nacl:48(%r15,%r9), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%nacl:44(%r15,%r9), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%nacl:32(%r15,%r9), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	%nacl:28(%r15,%r9), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%nacl:12(%r15,%r9), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	%nacl:16(%r15,%r9), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%nacl:44(%r15,%rsi), %edi
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	%nacl:12(%r15,%rsi), %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%nacl:16(%r15,%rsi), %r8d
	movl	%r8d, 64(%rsp)          # 4-byte Spill
	leal	-1(%rcx), %r12d
	andl	$-4, %r12d
	leal	4(%rdi,%r12), %eax
	leal	-4(%rdi,%rcx), %r13d
	addl	%edi, %r12d
	leal	-1(%r8), %edx
	movl	%nacl:48(%r15,%rsi), %r14d
	leal	(%r14,%r8), %ebx
	andl	$-16, %edx
	cmpl	%r13d, %r12d
	cmovgl	%r13d, %r12d
	leal	(%rdi,%rcx), %r10d
	cmpl	%r10d, %eax
	cmovlel	%eax, %r10d
	leal	16(%r14,%rdx), %ecx
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	sete	%al
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	cmpq	$0, %nacl:(%r15,%rsi)
	sete	%bl
	andb	%al, %bl
	leal	2(%r12), %ecx
	addl	$3, %r12d
	addl	%r14d, %edx
	leal	-16(%r14,%r8), %r8d
	cmpl	%r8d, %edx
	cmovgl	%r8d, %edx
	addl	$15, %edx
	cmpl	%r13d, %edi
	cmovlel	%edi, %r13d
	cmpl	%r10d, %r12d
	movl	%r12d, %eax
	cmovll	%r10d, %eax
	cmpl	%ecx, %eax
	movl	%nacl:60(%r15,%rsi), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	cmovll	%r12d, %eax
	movl	12(%rsp), %r12d         # 4-byte Reload
	movl	%nacl:32(%r15,%rsi), %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%nacl:28(%r15,%rsi), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	cmpl	%r12d, %edx
	cmovll	%r12d, %edx
	cmpl	%r8d, %r14d
	cmovlel	%r14d, %r8d
	testb	%bl, %bl
	movb	%bl, %dil
	je	.LBB15_7
# BB#6:                                 # %true_bb
	movl	%r10d, %ebx
	subl	%r13d, %ebx
	movl	$4, %nacl:60(%r15,%rsi)
	movl	%r13d, %nacl:44(%r15,%rsi)
	movl	%ebx, %nacl:12(%r15,%rsi)
	movl	$1, %nacl:28(%r15,%rsi)
	movl	%r8d, %nacl:48(%r15,%rsi)
	movl	%r12d, %ecx
	subl	%r8d, %ecx
	movl	%ecx, %nacl:16(%r15,%rsi)
	movl	%ebx, %nacl:32(%r15,%rsi)
	movl	$0, %nacl:52(%r15,%rsi)
	movl	$0, %nacl:20(%r15,%rsi)
	movl	$0, %nacl:36(%r15,%rsi)
	movl	$0, %nacl:56(%r15,%rsi)
	movl	$0, %nacl:24(%r15,%rsi)
	movl	$0, %nacl:40(%r15,%rsi)
.LBB15_7:                               # %after_bb
	cmpb	$0, 35(%rsp)            # 1-byte Folded Reload
	je	.LBB15_11
# BB#8:                                 # %after_bb42.thread
	movl	$4, %nacl:60(%r15,%r9)
	leal	-1(%r13), %ecx
	movl	%ecx, %nacl:44(%r15,%r9)
	subl	%r13d, %eax
	addl	$2, %eax
	movl	%eax, %nacl:12(%r15,%r9)
	movl	$1, %nacl:28(%r15,%r9)
	leal	-1(%r8), %ecx
	movl	%ecx, %nacl:48(%r15,%r9)
	movl	$2, %ecx
	subl	%r8d, %ecx
	addl	%edx, %ecx
	movl	%ecx, %nacl:16(%r15,%r9)
	movl	%eax, %nacl:32(%r15,%r9)
	movl	$0, %nacl:52(%r15,%r9)
	movl	$0, %nacl:20(%r15,%r9)
	movl	$0, %nacl:36(%r15,%r9)
	movl	$0, %nacl:56(%r15,%r9)
	movl	$0, %nacl:24(%r15,%r9)
	movl	$0, %nacl:40(%r15,%r9)
	jmp	.LBB15_9
.LBB15_1:                               # %assert failed: buffer argument p0 is NULL
	leal	.Lstr(%rip), %esi
	jmp	.LBB15_2
.LBB15_4:                               # %assert failed: buffer argument f3 is NULL
	leal	.Lstr33(%rip), %esi
	jmp	.LBB15_2
.LBB15_11:                              # %after_bb42
	testb	%dil, %dil
	movl	20(%rsp), %r9d          # 4-byte Reload
	jne	.LBB15_9
# BB#12:                                # %true_bb56
	movl	%r12d, %ecx
	cmpl	$4, 16(%rsp)            # 4-byte Folded Reload
	movl	48(%rsp), %r12d         # 4-byte Reload
	jne	.LBB15_13
# BB#14:                                # %assert succeeded: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	cmpl	$4, 36(%rsp)            # 4-byte Folded Reload
	movl	%r14d, %edi
	movl	%ecx, %ebx
	jne	.LBB15_15
# BB#16:                                # %assert succeeded: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	cmpl	%r13d, %r9d
	movl	64(%rsp), %ecx          # 4-byte Reload
	jle	.LBB15_18
# BB#17:                                # %assert failed: Output buffer f3 is accessed before the min in dimension 0
	leal	.Lstr36(%rip), %esi
	jmp	.LBB15_2
.LBB15_13:                              # %assert failed: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	leal	.Lstr34(%rip), %esi
	jmp	.LBB15_2
.LBB15_15:                              # %assert failed: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	leal	.Lstr35(%rip), %esi
	jmp	.LBB15_2
.LBB15_18:                              # %assert succeeded: Output buffer f3 is accessed before the min in dimension 0
	subl	%r12d, %r10d
	cmpl	%r9d, %r10d
	jle	.LBB15_20
# BB#19:                                # %assert failed: Output buffer f3 is accessed beyond the extent in dimension 0
	leal	.Lstr37(%rip), %esi
	jmp	.LBB15_2
.LBB15_20:                              # %assert succeeded: Output buffer f3 is accessed beyond the extent in dimension 0
	cmpl	%r8d, %edi
	movl	56(%rsp), %esi          # 4-byte Reload
	jle	.LBB15_22
# BB#21:                                # %assert failed: Output buffer f3 is accessed before the min in dimension 1
	leal	.Lstr38(%rip), %esi
	jmp	.LBB15_2
.LBB15_22:                              # %assert succeeded: Output buffer f3 is accessed before the min in dimension 1
	subl	%ecx, %ebx
	cmpl	%edi, %ebx
	jle	.LBB15_24
# BB#23:                                # %assert failed: Output buffer f3 is accessed beyond the extent in dimension 1
	leal	.Lstr39(%rip), %esi
	jmp	.LBB15_2
.LBB15_24:                              # %assert succeeded: Output buffer f3 is accessed beyond the extent in dimension 1
	cmpl	%r13d, %esi
	jge	.LBB15_25
# BB#26:                                # %assert succeeded: Input buffer p0 is accessed before the min in dimension 0
	subl	40(%rsp), %eax          # 4-byte Folded Reload
	cmpl	%esi, %eax
	jge	.LBB15_27
# BB#28:                                # %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 0
	movl	68(%rsp), %eax          # 4-byte Reload
	cmpl	%r8d, %eax
	jge	.LBB15_29
# BB#30:                                # %assert succeeded: Input buffer p0 is accessed before the min in dimension 1
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	cmpl	%eax, %edx
	jge	.LBB15_31
# BB#32:                                # %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 1
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	jne	.LBB15_33
# BB#34:                                # %assert succeeded: Static constraint violated: f3.stride.0 == 1
	cmpl	$1, 52(%rsp)            # 4-byte Folded Reload
	jne	.LBB15_35
# BB#36:                                # %produce f3
	movl	%r12d, 80(%rsp)
	movl	%ecx, 84(%rsp)
	movl	%r9d, 88(%rsp)
	movl	%edi, 92(%rsp)
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	%edx, 96(%rsp)
	addl	$15, %ecx
	movl	%esi, 100(%rsp)
	sarl	$4, %ecx
	leal	par_20_for_20_f3.s0.v1.v1(%rip), %esi
	leal	80(%rsp), %r8d
	movl	%eax, 104(%rsp)
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 108(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 112(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 116(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	naclcall	halide_do_par_for@PLT
	testl	%eax, %eax
	je	.LBB15_9
# BB#37:                                # %assert failed: Failure inside parallel for loop
	leal	.Lstr46(%rip), %esi
	jmp	.LBB15_2
.LBB15_9:                               # %after_bb58
	xorl	%eax, %eax
	jmp	.LBB15_10
.LBB15_25:                              # %assert failed: Input buffer p0 is accessed before the min in dimension 0
	leal	.Lstr40(%rip), %esi
	jmp	.LBB15_2
.LBB15_27:                              # %assert failed: Input buffer p0 is accessed beyond the extent in dimension 0
	leal	.Lstr41(%rip), %esi
	jmp	.LBB15_2
.LBB15_29:                              # %assert failed: Input buffer p0 is accessed before the min in dimension 1
	leal	.Lstr42(%rip), %esi
	jmp	.LBB15_2
.LBB15_31:                              # %assert failed: Input buffer p0 is accessed beyond the extent in dimension 1
	leal	.Lstr43(%rip), %esi
	jmp	.LBB15_2
.LBB15_33:                              # %assert failed: Static constraint violated: f3.stride.0 == 1
	leal	.Lstr44(%rip), %esi
	jmp	.LBB15_2
.LBB15_35:                              # %assert failed: Static constraint violated: p0.stride.0 == 1
	leal	.Lstr45(%rip), %esi
.LBB15_2:                               # %assert failed: buffer argument p0 is NULL
	xorl	%edi, %edi
	naclcall	halide_error@PLT
	movl	$-1, %eax
.LBB15_10:                              # %after_bb58
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp82:
	.size	halide_game_of_life, .Ltmp82-halide_game_of_life
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI16_1:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
.LCPI16_2:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI16_3:
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
.LCPI16_4:
	.long	16711680                # 0xff0000
	.long	16711680                # 0xff0000
	.long	16711680                # 0xff0000
	.long	16711680                # 0xff0000
.LCPI16_5:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
.LCPI16_6:
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.text
	.align	32, 0x90
	.type	par_20_for_20_f3.s0.v1.v1,@function
par_20_for_20_f3.s0.v1.v1:              # @"par for f3.s0.v1.v1"
# BB#0:                                 # %entry
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edx, %ecx
	movl	%nacl:12(%r15,%rcx), %edi
	movl	%edi, -108(%rsp)        # 4-byte Spill
	movl	%nacl:(%r15,%rcx), %eax
	movl	%nacl:4(%r15,%rcx), %edx
	leal	-16(%rdx,%rdi), %edx
	shll	$4, %esi
	addl	%edi, %esi
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	movl	%esi, -104(%rsp)        # 4-byte Spill
	leal	3(%rax), %edx
	sarl	$2, %edx
	movl	%edx, -112(%rsp)        # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB16_5
# BB#1:
	movl	%nacl:28(%r15,%rcx), %edx
	movl	%edx, -116(%rsp)        # 4-byte Spill
	movl	%nacl:24(%r15,%rcx), %esi
	imull	%edx, %esi
	movl	%nacl:8(%r15,%rcx), %edx
	movl	%edx, -124(%rsp)        # 4-byte Spill
	leal	-4(%rax,%rdx), %r13d
	movl	%nacl:36(%r15,%rcx), %eax
	addl	%nacl:20(%r15,%rcx), %esi
	movl	%esi, -120(%rsp)        # 4-byte Spill
	movl	%nacl:32(%r15,%rcx), %esi
	movl	%nacl:16(%r15,%rcx), %ecx
	movl	%ecx, -128(%rsp)        # 4-byte Spill
	xorl	%edi, %edi
	movdqa	.LCPI16_0(%rip), %xmm4
	.align	16, 0x90
.LBB16_4:                               # %for f3.s0.v0.v0.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
	movl	%edi, -100(%rsp)        # 4-byte Spill
	movl	-104(%rsp), %ecx        # 4-byte Reload
	leal	1(%rdi,%rcx), %edx
	leal	-1(%rdi,%rcx), %r14d
	movl	-116(%rsp), %ebx        # 4-byte Reload
	imull	%ebx, %r14d
	movl	%esi, %r10d
	movl	-120(%rsp), %esi        # 4-byte Reload
	subl	%esi, %r14d
	imull	%ebx, %edx
	leal	(%rdi,%rcx), %r8d
	movl	%edx, %edi
	movl	%r8d, %r9d
	imull	%ebx, %r9d
	subl	%esi, %r9d
	subl	%esi, %edi
	movl	%r10d, %esi
	subl	-108(%rsp), %r8d        # 4-byte Folded Reload
	imull	-128(%rsp), %r8d        # 4-byte Folded Reload
	movl	-124(%rsp), %ecx        # 4-byte Reload
	subl	%ecx, %r8d
	movl	%ecx, %r10d
	movl	-112(%rsp), %r12d       # 4-byte Reload
	.align	16, 0x90
.LBB16_2:                               # %for f3.s0.v0.v0.us
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, %r10d
	movl	%r13d, %ecx
	cmovlel	%r10d, %ecx
	leal	(%r14,%rcx), %ebx
	leal	(%rax,%rbx,4), %ebx
	movdqu	%nacl:-4(%r15,%rbx), %xmm7
	movdqu	%nacl:(%r15,%rbx), %xmm1
	movdqu	%nacl:4(%r15,%rbx), %xmm0
	movdqa	%xmm7, %xmm15
	psrld	$16, %xmm15
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm2, -64(%rsp)        # 16-byte Spill
	movdqa	%xmm0, %xmm14
	psrld	$8, %xmm14
	movdqa	%xmm7, %xmm13
	psrld	$8, %xmm13
	movdqa	%xmm1, %xmm2
	psrld	$8, %xmm2
	movdqa	%xmm2, -96(%rsp)        # 16-byte Spill
	movdqa	%xmm0, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm2, -80(%rsp)        # 16-byte Spill
	pand	%xmm4, %xmm1
	movdqa	%xmm1, 48(%rsp)         # 16-byte Spill
	pand	%xmm4, %xmm7
	pand	%xmm4, %xmm0
	movdqa	%xmm0, 80(%rsp)         # 16-byte Spill
	leal	(%rdi,%rcx), %ebx
	leal	(%rax,%rbx,4), %ebx
	movdqu	%nacl:-4(%r15,%rbx), %xmm5
	movdqu	%nacl:(%r15,%rbx), %xmm0
	movdqa	%xmm0, 96(%rsp)         # 16-byte Spill
	movdqu	%nacl:4(%r15,%rbx), %xmm1
	movdqa	%xmm1, 112(%rsp)        # 16-byte Spill
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm3
	psrld	$8, %xmm2
	movdqa	%xmm2, -48(%rsp)        # 16-byte Spill
	movdqa	%xmm5, %xmm12
	psrld	$8, %xmm12
	movdqa	%xmm1, %xmm0
	psrld	$8, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm2, -32(%rsp)        # 16-byte Spill
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	psrld	$16, %xmm3
	movdqa	%xmm3, 32(%rsp)         # 16-byte Spill
	pand	%xmm4, %xmm5
	movdqa	%xmm5, 64(%rsp)         # 16-byte Spill
	leal	(%r9,%rcx), %ebx
	leal	(%rax,%rbx,4), %ebx
	movdqu	%nacl:-4(%r15,%rbx), %xmm5
	movdqu	%nacl:(%r15,%rbx), %xmm11
	movdqu	%nacl:4(%r15,%rbx), %xmm1
	movdqa	%xmm5, %xmm3
	psrld	$16, %xmm3
	movdqa	%xmm1, %xmm10
	psrld	$8, %xmm10
	movdqa	%xmm5, %xmm6
	psrld	$8, %xmm6
	movdqa	%xmm1, %xmm9
	psrld	$16, %xmm9
	movdqa	%xmm11, %xmm8
	psrld	$8, %xmm8
	pand	%xmm4, %xmm1
	movdqa	%xmm1, (%rsp)           # 16-byte Spill
	pand	%xmm4, %xmm5
	movdqa	%xmm5, -16(%rsp)        # 16-byte Spill
	movdqa	%xmm11, %xmm1
	psrld	$16, %xmm11
	pand	%xmm4, %xmm1
	movdqa	%xmm1, 16(%rsp)         # 16-byte Spill
	movdqa	112(%rsp), %xmm5        # 16-byte Reload
	pand	%xmm4, %xmm5
	movdqa	%xmm5, 112(%rsp)        # 16-byte Spill
	movdqa	96(%rsp), %xmm5         # 16-byte Reload
	pand	%xmm4, %xmm5
	movdqa	%xmm5, 96(%rsp)         # 16-byte Spill
	movdqa	-96(%rsp), %xmm1        # 16-byte Reload
	pand	%xmm4, %xmm1
	pand	%xmm4, %xmm13
	paddd	%xmm1, %xmm13
	pand	%xmm4, %xmm14
	paddd	%xmm13, %xmm14
	movdqa	-64(%rsp), %xmm1        # 16-byte Reload
	pand	%xmm4, %xmm1
	pand	%xmm4, %xmm15
	paddd	%xmm1, %xmm15
	movdqa	-80(%rsp), %xmm5        # 16-byte Reload
	pand	%xmm4, %xmm5
	paddd	%xmm15, %xmm5
	pand	%xmm4, %xmm6
	paddd	%xmm14, %xmm6
	pand	%xmm4, %xmm10
	paddd	%xmm6, %xmm10
	movdqa	.LCPI16_1(%rip), %xmm6
	pand	%xmm4, %xmm12
	paddd	%xmm10, %xmm12
	movdqa	-48(%rsp), %xmm1        # 16-byte Reload
	pand	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movdqa	%xmm1, %xmm10
	pand	%xmm4, %xmm3
	paddd	%xmm5, %xmm3
	pand	%xmm4, %xmm9
	paddd	%xmm3, %xmm9
	paddd	48(%rsp), %xmm7         # 16-byte Folded Reload
	movdqa	-32(%rsp), %xmm3        # 16-byte Reload
	pand	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	movdqa	%xmm3, %xmm9
	movdqa	.LCPI16_2(%rip), %xmm5
	pand	%xmm4, %xmm0
	paddd	%xmm10, %xmm0
	pand	%xmm4, %xmm8
	pxor	%xmm10, %xmm10
	pcmpeqd	%xmm10, %xmm8
	movdqa	%xmm0, %xmm3
	pcmpeqd	%xmm6, %xmm3
	pandn	%xmm3, %xmm8
	pcmpeqd	%xmm5, %xmm0
	por	%xmm8, %xmm0
	movaps	.LCPI16_3(%rip), %xmm8
	movdqa	32(%rsp), %xmm3         # 16-byte Reload
	pand	%xmm4, %xmm3
	paddd	%xmm9, %xmm3
	pand	%xmm4, %xmm11
	pand	%xmm4, %xmm2
	paddd	%xmm3, %xmm2
	paddd	80(%rsp), %xmm7         # 16-byte Folded Reload
	paddd	-16(%rsp), %xmm7        # 16-byte Folded Reload
	paddd	(%rsp), %xmm7           # 16-byte Folded Reload
	paddd	64(%rsp), %xmm7         # 16-byte Folded Reload
	pxor	%xmm12, %xmm12
	blendvps	%xmm8, %xmm12
	movaps	.LCPI16_4(%rip), %xmm8
	pcmpeqd	%xmm10, %xmm11
	pxor	%xmm9, %xmm9
	movdqa	%xmm2, %xmm0
	pcmpeqd	%xmm6, %xmm0
	pandn	%xmm0, %xmm11
	addl	%r8d, %ecx
	leal	(%rsi,%rcx,4), %ecx
	addl	$4, %r10d
	decl	%r12d
	movdqa	16(%rsp), %xmm3         # 16-byte Reload
	pcmpeqd	%xmm9, %xmm3
	pcmpeqd	%xmm5, %xmm2
	por	%xmm11, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm1
	blendvps	%xmm8, %xmm1
	paddd	96(%rsp), %xmm7         # 16-byte Folded Reload
	paddd	%xmm12, %xmm1
	paddd	112(%rsp), %xmm7        # 16-byte Folded Reload
	movdqa	%xmm7, %xmm0
	pcmpeqd	%xmm5, %xmm0
	pcmpeqd	%xmm6, %xmm7
	pandn	%xmm7, %xmm3
	por	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	pxor	%xmm2, %xmm2
	blendvps	.LCPI16_5(%rip), %xmm2
	movdqa	.LCPI16_6(%rip), %xmm0
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, %nacl:(%r15,%rcx)
	jne	.LBB16_2
# BB#3:                                 # %end for f3.s0.v0.v0.us
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	-100(%rsp), %edi        # 4-byte Reload
	incl	%edi
	cmpl	$16, %edi
	jne	.LBB16_4
.LBB16_5:                               # %end for f3.s0.v1.v10
	xorl	%eax, %eax
	naclaspq	$136, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r11
	nacljmp	%r11, %r15
	.align	32, 0x90
.Ltmp83:
	.size	par_20_for_20_f3.s0.v1.v1, .Ltmp83-par_20_for_20_f3.s0.v1.v1

	.globl	halide_game_of_life_jit_wrapper
	.align	32, 0x90
	.type	halide_game_of_life_jit_wrapper,@function
halide_game_of_life_jit_wrapper:        # @halide_game_of_life_jit_wrapper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movl	%nacl:(%r15,%rax), %edi
	movl	%nacl:4(%r15,%rax), %esi
	jmp	halide_game_of_life@PLT
	.align	32, 0x90
.Ltmp84:
	.size	halide_game_of_life_jit_wrapper, .Ltmp84-halide_game_of_life_jit_wrapper
	.cfi_endproc

	.type	halide_reference_clock_inited,@object # @halide_reference_clock_inited
	.section	.bss.halide_reference_clock_inited,"aGw",@nobits,halide_reference_clock_inited,comdat
	.weak	halide_reference_clock_inited
halide_reference_clock_inited:
	.byte	0                       # 0x0
	.size	halide_reference_clock_inited, 1

	.type	halide_reference_clock,@object # @halide_reference_clock
	.section	.bss.halide_reference_clock,"aGw",@nobits,halide_reference_clock,comdat
	.weak	halide_reference_clock
	.align	4
halide_reference_clock:
	.zero	8
	.size	halide_reference_clock, 8

	.type	halide_work_queue,@object # @halide_work_queue
	.section	.bss.halide_work_queue,"aGw",@nobits,halide_work_queue,comdat
	.weak	halide_work_queue
	.align	4
halide_work_queue:
	.zero	352
	.size	halide_work_queue, 352

	.type	halide_threads,@object  # @halide_threads
	.section	.bss.halide_threads,"aGw",@nobits,halide_threads,comdat
	.weak	halide_threads
	.align	4
halide_threads:
	.long	0                       # 0x0
	.size	halide_threads, 4

	.type	halide_thread_pool_initialized,@object # @halide_thread_pool_initialized
	.section	.bss.halide_thread_pool_initialized,"aGw",@nobits,halide_thread_pool_initialized,comdat
	.weak	halide_thread_pool_initialized
halide_thread_pool_initialized:
	.byte	0                       # 0x0
	.size	halide_thread_pool_initialized, 1

	.type	halide_custom_do_task,@object # @halide_custom_do_task
	.section	.bss.halide_custom_do_task,"aGw",@nobits,halide_custom_do_task,comdat
	.weak	halide_custom_do_task
	.align	4
halide_custom_do_task:
	.long	0
	.size	halide_custom_do_task, 4

	.type	halide_custom_do_par_for,@object # @halide_custom_do_par_for
	.section	.bss.halide_custom_do_par_for,"aGw",@nobits,halide_custom_do_par_for,comdat
	.weak	halide_custom_do_par_for
	.align	4
halide_custom_do_par_for:
	.long	0
	.size	halide_custom_do_par_for, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "HL_NUMTHREADS"
	.size	.L.str, 14

	.type	halide_custom_trace,@object # @halide_custom_trace
	.section	.bss.halide_custom_trace,"aGw",@nobits,halide_custom_trace,comdat
	.weak	halide_custom_trace
	.align	4
halide_custom_trace:
	.long	0
	.size	halide_custom_trace, 4

	.type	halide_trace_file,@object # @halide_trace_file
	.section	.bss.halide_trace_file,"aGw",@nobits,halide_trace_file,comdat
	.weak	halide_trace_file
	.align	4
halide_trace_file:
	.long	0
	.size	halide_trace_file, 4

	.type	halide_trace_initialized,@object # @halide_trace_initialized
	.section	.bss.halide_trace_initialized,"aGw",@nobits,halide_trace_initialized,comdat
	.weak	halide_trace_initialized
halide_trace_initialized:
	.byte	0                       # 0x0
	.size	halide_trace_initialized, 1

	.type	_ZZ12halide_traceE3ids,@object # @_ZZ12halide_traceE3ids
	.section	.data._ZZ12halide_traceE3ids,"aGw",@progbits,_ZZ12halide_traceE3ids,comdat
	.weak	_ZZ12halide_traceE3ids
	.align	4
_ZZ12halide_traceE3ids:
	.long	1                       # 0x1
	.size	_ZZ12halide_traceE3ids, 4

	.type	halide_custom_malloc,@object # @halide_custom_malloc
	.section	.bss.halide_custom_malloc,"aGw",@nobits,halide_custom_malloc,comdat
	.weak	halide_custom_malloc
	.align	4
halide_custom_malloc:
	.long	0
	.size	halide_custom_malloc, 4

	.type	halide_custom_free,@object # @halide_custom_free
	.section	.bss.halide_custom_free,"aGw",@nobits,halide_custom_free,comdat
	.weak	halide_custom_free
	.align	4
halide_custom_free:
	.long	0
	.size	halide_custom_free, 4

	.type	halide_error_handler,@object # @halide_error_handler
	.section	.bss.halide_error_handler,"aGw",@nobits,halide_error_handler,comdat
	.weak	halide_error_handler
	.align	4
halide_error_handler:
	.long	0
	.size	halide_error_handler, 4

	.type	.L.str30,@object        # @.str30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str30:
	.asciz	 "Error: %s\n"
	.size	.L.str30, 11

	.type	.Lstr,@object           # @str
	.section	.rodata,"a",@progbits
	.align	32
.Lstr:
	.asciz	 "buffer argument p0 is NULL"
	.size	.Lstr, 27

	.type	.Lstr33,@object         # @str33
	.align	32
.Lstr33:
	.asciz	 "buffer argument f3 is NULL"
	.size	.Lstr33, 27

	.type	.Lstr34,@object         # @str34
	.align	32
.Lstr34:
	.asciz	 "Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4"
	.size	.Lstr34, 82

	.type	.Lstr35,@object         # @str35
	.align	32
.Lstr35:
	.asciz	 "Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4"
	.size	.Lstr35, 82

	.type	.Lstr36,@object         # @str36
	.align	32
.Lstr36:
	.asciz	 "Output buffer f3 is accessed before the min in dimension 0"
	.size	.Lstr36, 59

	.type	.Lstr37,@object         # @str37
	.align	32
.Lstr37:
	.asciz	 "Output buffer f3 is accessed beyond the extent in dimension 0"
	.size	.Lstr37, 62

	.type	.Lstr38,@object         # @str38
	.align	32
.Lstr38:
	.asciz	 "Output buffer f3 is accessed before the min in dimension 1"
	.size	.Lstr38, 59

	.type	.Lstr39,@object         # @str39
	.align	32
.Lstr39:
	.asciz	 "Output buffer f3 is accessed beyond the extent in dimension 1"
	.size	.Lstr39, 62

	.type	.Lstr40,@object         # @str40
	.align	32
.Lstr40:
	.asciz	 "Input buffer p0 is accessed before the min in dimension 0"
	.size	.Lstr40, 58

	.type	.Lstr41,@object         # @str41
	.align	32
.Lstr41:
	.asciz	 "Input buffer p0 is accessed beyond the extent in dimension 0"
	.size	.Lstr41, 61

	.type	.Lstr42,@object         # @str42
	.align	32
.Lstr42:
	.asciz	 "Input buffer p0 is accessed before the min in dimension 1"
	.size	.Lstr42, 58

	.type	.Lstr43,@object         # @str43
	.align	32
.Lstr43:
	.asciz	 "Input buffer p0 is accessed beyond the extent in dimension 1"
	.size	.Lstr43, 61

	.type	.Lstr44,@object         # @str44
	.align	32
.Lstr44:
	.asciz	 "Static constraint violated: f3.stride.0 == 1"
	.size	.Lstr44, 45

	.type	.Lstr45,@object         # @str45
	.align	32
.Lstr45:
	.asciz	 "Static constraint violated: p0.stride.0 == 1"
	.size	.Lstr45, 45

	.type	.Lstr46,@object         # @str46
	.align	32
.Lstr46:
	.asciz	 "Failure inside parallel for loop"
	.size	.Lstr46, 33


	.section	".note.GNU-stack","",@progbits

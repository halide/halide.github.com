	.bundle_align_mode 5
	.section	".note.NaCl.ABI.x86-32","aG",@note,.note.NaCl.ABI.x86-32,comdat
	.long	5
	.long	7
	.long	1
	.ascii	 "NaCl"
	.byte	0
	.align	4
	.ascii	 "x86-32"
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
	pushl	%ebx
.Ltmp4:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp5:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp6:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %esi, -16
.Ltmp9:
	.cfi_offset %edi, -12
.Ltmp10:
	.cfi_offset %ebx, -8
	naclcall	.L0$pb
.L0$pb:
	popl	%ebx
.Ltmp11:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp11-.L0$pb), %ebx
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	naclcall	gettimeofday@PLT
	movl	halide_reference_clock@GOT(%ebx), %ecx
	movl	4(%ecx), %ebx
	movl	%ebx, %edx
	sarl	$31, %edx
	movl	8(%esp), %eax
	movl	12(%esp), %edi
	movl	%edi, %esi
	sarl	$31, %esi
	subl	%ebx, %edi
	sbbl	%edx, %esi
	subl	(%ecx), %eax
	movl	$1000000, %ecx          # imm = 0xF4240
	imull	%ecx
	movl	%edx, %ecx
	addl	%edi, %eax
	adcl	%esi, %ecx
	movl	$1000, %edx             # imm = 0x3E8
	mull	%edx
	movl	%edx, %esi
	imull	$1000, %ecx, %edx       # imm = 0x3E8
	addl	%esi, %edx
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp12:
	.size	halide_current_time_ns, .Ltmp12-halide_current_time_ns
	.cfi_endproc

	.section	.text.halide_printf,"axG",@progbits,halide_printf,comdat
	.weak	halide_printf
	.align	32, 0x90
	.type	halide_printf,@function
halide_printf:                          # @halide_printf
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp17:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp18:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp19:
	.cfi_def_cfa_offset 16
	subl	$1056, %esp             # imm = 0x420
.Ltmp20:
	.cfi_def_cfa_offset 1072
.Ltmp21:
	.cfi_offset %esi, -16
.Ltmp22:
	.cfi_offset %edi, -12
.Ltmp23:
	.cfi_offset %ebx, -8
	naclcall	.L1$pb
.L1$pb:
	popl	%ebx
.Ltmp24:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp24-.L1$pb), %ebx
	leal	1080(%esp), %eax
	movl	%eax, 28(%esp)
	movl	%eax, 12(%esp)
	movl	1076(%esp), %eax
	movl	%eax, 8(%esp)
	leal	32(%esp), %edi
	movl	%edi, (%esp)
	movl	$1024, 4(%esp)          # imm = 0x400
	naclcall	vsnprintf@PLT
	movl	%eax, %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_2:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 32(%esp,%eax)
	je	.LBB1_3
# BB#1:                                 # %while.cond
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	%eax
	cmpl	$1022, %eax             # imm = 0x3FE
	jbe	.LBB1_2
.LBB1_3:                                # %while.end
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$2, (%esp)
	naclcall	write@PLT
	movl	%esi, %eax
	addl	$1056, %esp             # imm = 0x420
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp25:
	.size	halide_printf, .Ltmp25-halide_printf
	.cfi_endproc

	.section	.text.halide_host_cpu_count,"axG",@progbits,halide_host_cpu_count,comdat
	.weak	halide_host_cpu_count
	.align	32, 0x90
	.type	halide_host_cpu_count,@function
halide_host_cpu_count:                  # @halide_host_cpu_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp28:
	.cfi_def_cfa_offset 8
	subl	$8, %esp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %ebx, -8
	naclcall	.L2$pb
.L2$pb:
	popl	%ebx
.Ltmp31:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp31-.L2$pb), %ebx
	movl	$84, (%esp)
	naclcall	sysconf@PLT
	addl	$8, %esp
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp32:
	.size	halide_host_cpu_count, .Ltmp32-halide_host_cpu_count
	.cfi_endproc

	.section	.text.halide_shutdown_thread_pool,"axG",@progbits,halide_shutdown_thread_pool,comdat
	.weak	halide_shutdown_thread_pool
	.align	32, 0x90
	.type	halide_shutdown_thread_pool,@function
halide_shutdown_thread_pool:            # @halide_shutdown_thread_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebp
.Ltmp38:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp39:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp41:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %esi, -20
.Ltmp44:
	.cfi_offset %edi, -16
.Ltmp45:
	.cfi_offset %ebx, -12
.Ltmp46:
	.cfi_offset %ebp, -8
	naclcall	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp47:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp47-.L3$pb), %ebx
	movl	halide_thread_pool_initialized@GOT(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpb	$0, (%eax)
	je	.LBB3_5
# BB#1:                                 # %if.end
	movl	halide_work_queue@GOT(%ebx), %edi
	movl	%edi, (%esp)
	naclcall	pthread_mutex_lock@PLT
	movb	$1, 348(%edi)
	leal	44(%edi), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)
	naclcall	pthread_cond_broadcast@PLT
	movl	%edi, (%esp)
	naclcall	pthread_mutex_unlock@PLT
	movl	halide_threads@GOT(%ebx), %esi
	movl	(%esi), %eax
	decl	%eax
	testl	%eax, %eax
	jle	.LBB3_4
# BB#2:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	92(%edi,%ebp,4), %eax
	leal	24(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	naclcall	pthread_join@PLT
	incl	%ebp
	movl	(%esi), %eax
	decl	%eax
	cmpl	%eax, %ebp
	jl	.LBB3_3
.LBB3_4:                                # %for.end
	movl	%edi, (%esp)
	naclcall	pthread_mutex_destroy@PLT
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	naclcall	pthread_cond_destroy@PLT
	movl	20(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
.LBB3_5:                                # %return
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp48:
	.size	halide_shutdown_thread_pool, .Ltmp48-halide_shutdown_thread_pool
	.cfi_endproc

	.section	.text.halide_set_custom_do_task,"axG",@progbits,halide_set_custom_do_task,comdat
	.weak	halide_set_custom_do_task
	.align	32, 0x90
	.type	halide_set_custom_do_task,@function
halide_set_custom_do_task:              # @halide_set_custom_do_task
	.cfi_startproc
# BB#0:                                 # %entry
	naclcall	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp49:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp49-.L4$pb), %eax
	movl	4(%esp), %ecx
	movl	halide_custom_do_task@GOT(%eax), %eax
	movl	%ecx, (%eax)
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp50:
	.size	halide_set_custom_do_task, .Ltmp50-halide_set_custom_do_task
	.cfi_endproc

	.section	.text.halide_set_custom_do_par_for,"axG",@progbits,halide_set_custom_do_par_for,comdat
	.weak	halide_set_custom_do_par_for
	.align	32, 0x90
	.type	halide_set_custom_do_par_for,@function
halide_set_custom_do_par_for:           # @halide_set_custom_do_par_for
	.cfi_startproc
# BB#0:                                 # %entry
	naclcall	.L5$pb
.L5$pb:
	popl	%eax
.Ltmp51:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp51-.L5$pb), %eax
	movl	4(%esp), %ecx
	movl	halide_custom_do_par_for@GOT(%eax), %eax
	movl	%ecx, (%eax)
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp52:
	.size	halide_set_custom_do_par_for, .Ltmp52-halide_set_custom_do_par_for
	.cfi_endproc

	.section	.text.halide_do_task,"axG",@progbits,halide_do_task,comdat
	.weak	halide_do_task
	.align	32, 0x90
	.type	halide_do_task,@function
halide_do_task:                         # @halide_do_task
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp56:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp57:
	.cfi_def_cfa_offset 12
	subl	$20, %esp
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %esi, -12
.Ltmp60:
	.cfi_offset %ebx, -8
	naclcall	.L6$pb
.L6$pb:
	popl	%ebx
.Ltmp61:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp61-.L6$pb), %ebx
	movl	halide_custom_do_task@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.LBB6_1
# BB#2:                                 # %if.then
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	nacljmp	%eax
.LBB6_1:                                # %if.else
	movl	44(%esp), %edx
	movl	40(%esp), %ecx
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	naclcall	%eax
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp62:
	.size	halide_do_task, .Ltmp62-halide_do_task
	.cfi_endproc

	.section	.text.halide_worker_thread,"axG",@progbits,halide_worker_thread,comdat
	.weak	halide_worker_thread
	.align	32, 0x90
	.type	halide_worker_thread,@function
halide_worker_thread:                   # @halide_worker_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebp
.Ltmp68:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp69:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp71:
	.cfi_def_cfa_offset 20
	subl	$44, %esp
.Ltmp72:
	.cfi_def_cfa_offset 64
.Ltmp73:
	.cfi_offset %esi, -20
.Ltmp74:
	.cfi_offset %edi, -16
.Ltmp75:
	.cfi_offset %ebx, -12
.Ltmp76:
	.cfi_offset %ebp, -8
	naclcall	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp77:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp77-.L7$pb), %ebx
	movl	halide_work_queue@GOT(%ebx), %edi
	movl	%edi, (%esp)
	naclcall	pthread_mutex_lock@PLT
	movl	64(%esp), %esi
	testl	%esi, %esi
	jne	.LBB7_15
# BB#1:                                 # %cond.false.us.preheader
	cmpb	$0, 348(%edi)
	jne	.LBB7_10
# BB#2:
	leal	44(%edi), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_3:                                # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	movl	40(%edi), %ebp
	testl	%ebp, %ebp
	jne	.LBB7_4
# BB#14:                                # %if.then.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	naclcall	pthread_cond_wait@PLT
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_4:                                # %if.else.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	20(%ebp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	4(%ebp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	12(%ebp), %esi
	leal	1(%esi), %eax
	movl	%eax, 12(%ebp)
	cmpl	16(%ebp), %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then7.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	(%ebp), %eax
	movl	%eax, 40(%edi)
.LBB7_6:                                # %if.end.us
                                        #   in Loop: Header=BB7_3 Depth=1
	incl	24(%ebp)
	movl	%edi, (%esp)
	naclcall	pthread_mutex_unlock@PLT
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	naclcall	halide_do_task@PLT
	movl	%eax, %esi
	movl	%edi, (%esp)
	naclcall	pthread_mutex_lock@PLT
	testl	%esi, %esi
	je	.LBB7_8
# BB#7:                                 # %if.then13.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%esi, 28(%ebp)
.LBB7_8:                                # %if.end14.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	24(%ebp), %eax
	decl	%eax
	movl	%eax, 24(%ebp)
	movl	12(%ebp), %ecx
	cmpl	16(%ebp), %ecx
	movl	64(%esp), %ecx
	movl	28(%esp), %esi          # 4-byte Reload
	jl	.LBB7_9
# BB#11:                                # %_ZN4work7runningEv.exit47.us
                                        #   in Loop: Header=BB7_3 Depth=1
	testl	%eax, %eax
	jg	.LBB7_9
# BB#12:                                # %_ZN4work7runningEv.exit47.us
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	%ecx, %ebp
	je	.LBB7_9
# BB#13:                                # %if.then18.us
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%esi, (%esp)
	naclcall	pthread_cond_broadcast@PLT
	.align	16, 0x90
.LBB7_9:                                # %cond.false.us.backedge
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpb	$0, 348(%edi)
	je	.LBB7_3
	jmp	.LBB7_10
	.align	16, 0x90
.LBB7_18:                               # %if.then
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	%edi, 4(%esp)
	leal	44(%edi), %eax
	movl	%eax, (%esp)
	naclcall	pthread_cond_wait@PLT
.LBB7_15:                               # %cond.true
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%esi), %eax
	cmpl	16(%esi), %eax
	jl	.LBB7_17
# BB#16:                                # %cond.end
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpl	$0, 24(%esi)
	jle	.LBB7_10
.LBB7_17:                               # %while.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	40(%edi), %ebp
	testl	%ebp, %ebp
	je	.LBB7_18
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	20(%ebp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	4(%ebp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	12(%ebp), %esi
	leal	1(%esi), %eax
	movl	%eax, 12(%ebp)
	cmpl	16(%ebp), %eax
	jne	.LBB7_21
# BB#20:                                # %if.then7
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	(%ebp), %eax
	movl	%eax, 40(%edi)
.LBB7_21:                               # %if.end
                                        #   in Loop: Header=BB7_15 Depth=1
	incl	24(%ebp)
	movl	%edi, (%esp)
	naclcall	pthread_mutex_unlock@PLT
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	naclcall	halide_do_task@PLT
	movl	%eax, %esi
	movl	%edi, (%esp)
	naclcall	pthread_mutex_lock@PLT
	testl	%esi, %esi
	je	.LBB7_23
# BB#22:                                # %if.then13
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	%esi, 28(%ebp)
.LBB7_23:                               # %if.end14
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	24(%ebp), %eax
	decl	%eax
	movl	%eax, 24(%ebp)
	movl	12(%ebp), %ecx
	cmpl	16(%ebp), %ecx
	movl	64(%esp), %esi
	jl	.LBB7_15
# BB#24:                                # %_ZN4work7runningEv.exit47
                                        #   in Loop: Header=BB7_15 Depth=1
	testl	%eax, %eax
	jg	.LBB7_15
# BB#25:                                # %_ZN4work7runningEv.exit47
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpl	%esi, %ebp
	je	.LBB7_15
# BB#26:                                # %if.then18
                                        #   in Loop: Header=BB7_15 Depth=1
	leal	44(%edi), %eax
	movl	%eax, (%esp)
	naclcall	pthread_cond_broadcast@PLT
	jmp	.LBB7_15
.LBB7_10:                               # %while.end
	movl	%edi, (%esp)
	naclcall	pthread_mutex_unlock@PLT
	xorl	%eax, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp78:
	.size	halide_worker_thread, .Ltmp78-halide_worker_thread
	.cfi_endproc

	.section	.text.halide_do_par_for,"axG",@progbits,halide_do_par_for,comdat
	.weak	halide_do_par_for
	.align	32, 0x90
	.type	halide_do_par_for,@function
halide_do_par_for:                      # @halide_do_par_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebp
.Ltmp84:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp85:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp87:
	.cfi_def_cfa_offset 20
	subl	$60, %esp
.Ltmp88:
	.cfi_def_cfa_offset 80
.Ltmp89:
	.cfi_offset %esi, -20
.Ltmp90:
	.cfi_offset %edi, -16
.Ltmp91:
	.cfi_offset %ebx, -12
.Ltmp92:
	.cfi_offset %ebp, -8
	naclcall	.L8$pb
.L8$pb:
	popl	%ebx
.Ltmp93:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp93-.L8$pb), %ebx
	movl	halide_custom_do_par_for@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	96(%esp), %ecx
	movl	92(%esp), %edx
	movl	88(%esp), %esi
	movl	84(%esp), %ebp
	movl	80(%esp), %edi
	testl	%eax, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	naclcall	%eax
	jmp	.LBB8_15
.LBB8_2:                                # %if.end
	movl	halide_thread_pool_initialized@GOT(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpb	$0, (%eax)
	jne	.LBB8_14
# BB#3:                                 # %if.then2
	movl	halide_work_queue@GOT(%ebx), %ebp
	movb	$0, 348(%ebp)
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	naclcall	pthread_mutex_init@PLT
	leal	44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	naclcall	pthread_cond_init@PLT
	movl	$0, 40(%ebp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	naclcall	getenv@PLT
	testl	%eax, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then7
	movl	%eax, (%esp)
	naclcall	atoi@PLT
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	naclcall	halide_host_cpu_count@PLT
.LBB8_6:                                # %if.end10
	movl	halide_threads@GOT(%ebx), %esi
	movl	%eax, (%esi)
	cmpl	$65, %eax
	jl	.LBB8_8
# BB#7:                                 # %for.cond.preheader.thread
	movl	$64, (%esi)
	addl	$92, %ebp
	xorl	%edi, %edi
	jmp	.LBB8_12
.LBB8_8:                                # %if.else12
	testl	%eax, %eax
	jle	.LBB8_9
# BB#10:                                # %for.cond.preheader
	decl	%eax
	testl	%eax, %eax
	jle	.LBB8_13
# BB#11:
	xorl	%edi, %edi
	addl	$92, %ebp
	.align	16, 0x90
.LBB8_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	halide_worker_thread@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	naclcall	pthread_create@PLT
	addl	$4, %ebp
	incl	%edi
	movl	(%esi), %eax
	decl	%eax
	cmpl	%eax, %edi
	jl	.LBB8_12
	jmp	.LBB8_13
.LBB8_9:                                # %for.cond.preheader.thread42
	movl	$1, (%esi)
.LBB8_13:                               # %for.end
	movl	20(%esp), %eax          # 4-byte Reload
	movb	$1, (%eax)
	movl	96(%esp), %ecx
	movl	92(%esp), %edx
	movl	88(%esp), %esi
	movl	80(%esp), %edi
	movl	84(%esp), %ebp
.LBB8_14:                               # %if.end19
	movl	%ebp, 28(%esp)
	movl	%edi, 32(%esp)
	movl	%esi, 36(%esp)
	addl	%esi, %edx
	movl	%edx, 40(%esp)
	movl	%ecx, 44(%esp)
	movl	$0, 52(%esp)
	movl	$0, 48(%esp)
	movl	halide_work_queue@GOT(%ebx), %esi
	movl	%esi, (%esp)
	naclcall	pthread_mutex_lock@PLT
	movl	40(%esi), %eax
	movl	%eax, 24(%esp)
	leal	24(%esp), %edi
	movl	%edi, 40(%esi)
	movl	%esi, (%esp)
	naclcall	pthread_mutex_unlock@PLT
	addl	$44, %esi
	movl	%esi, (%esp)
	naclcall	pthread_cond_broadcast@PLT
	movl	%edi, (%esp)
	naclcall	halide_worker_thread@PLT
	movl	52(%esp), %eax
.LBB8_15:                               # %return
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp94:
	.size	halide_do_par_for, .Ltmp94-halide_do_par_for
	.cfi_endproc

	.section	.text.halide_set_custom_trace,"axG",@progbits,halide_set_custom_trace,comdat
	.weak	halide_set_custom_trace
	.align	32, 0x90
	.type	halide_set_custom_trace,@function
halide_set_custom_trace:                # @halide_set_custom_trace
	.cfi_startproc
# BB#0:                                 # %entry
	naclcall	.L9$pb
.L9$pb:
	popl	%eax
.Ltmp95:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp95-.L9$pb), %eax
	movl	4(%esp), %ecx
	movl	halide_custom_trace@GOT(%eax), %eax
	movl	%ecx, (%eax)
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp96:
	.size	halide_set_custom_trace, .Ltmp96-halide_set_custom_trace
	.cfi_endproc

	.section	.text.halide_shutdown_trace,"axG",@progbits,halide_shutdown_trace,comdat
	.weak	halide_shutdown_trace
	.align	32, 0x90
	.type	halide_shutdown_trace,@function
halide_shutdown_trace:                  # @halide_shutdown_trace
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp100:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp101:
	.cfi_def_cfa_offset 12
	pushl	%eax
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %esi, -12
.Ltmp104:
	.cfi_offset %ebx, -8
	naclcall	.L10$pb
.L10$pb:
	popl	%ebx
.Ltmp105:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp105-.L10$pb), %ebx
	movl	halide_trace_file@GOT(%ebx), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	%eax, (%esp)
	naclcall	fclose@PLT
	movl	$0, (%esi)
	movl	halide_trace_initialized@GOT(%ebx), %ecx
	movb	$0, (%ecx)
	jmp	.LBB10_3
.LBB10_2:                               # %return
	xorl	%eax, %eax
.LBB10_3:                               # %return
	addl	$4, %esp
	popl	%esi
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp106:
	.size	halide_shutdown_trace, .Ltmp106-halide_shutdown_trace
	.cfi_endproc

	.section	.text.halide_set_custom_allocator,"axG",@progbits,halide_set_custom_allocator,comdat
	.weak	halide_set_custom_allocator
	.align	32, 0x90
	.type	halide_set_custom_allocator,@function
halide_set_custom_allocator:            # @halide_set_custom_allocator
	.cfi_startproc
# BB#0:                                 # %entry
	naclcall	.L11$pb
.L11$pb:
	popl	%eax
.Ltmp107:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp107-.L11$pb), %eax
	movl	4(%esp), %ecx
	movl	halide_custom_malloc@GOT(%eax), %edx
	movl	%ecx, (%edx)
	movl	8(%esp), %ecx
	movl	halide_custom_free@GOT(%eax), %eax
	movl	%ecx, (%eax)
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp108:
	.size	halide_set_custom_allocator, .Ltmp108-halide_set_custom_allocator
	.cfi_endproc

	.section	.text.halide_error,"axG",@progbits,halide_error,comdat
	.weak	halide_error
	.align	32, 0x90
	.type	halide_error,@function
halide_error:                           # @halide_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp111:
	.cfi_def_cfa_offset 8
	subl	$24, %esp
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %ebx, -8
	naclcall	.L12$pb
.L12$pb:
	popl	%ebx
.Ltmp114:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp114-.L12$pb), %ebx
	movl	halide_error_handler@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.LBB12_1
# BB#2:                                 # %if.then
	addl	$24, %esp
	popl	%ebx
	nacljmp	%eax
.LBB12_1:                               # %if.else
	movl	36(%esp), %ecx
	movl	32(%esp), %eax
	movl	%ecx, 8(%esp)
	leal	.L.str30@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	naclcall	halide_printf@PLT
	movl	$1, (%esp)
	naclcall	exit@PLT
	addl	$24, %esp
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp115:
	.size	halide_error, .Ltmp115-halide_error
	.cfi_endproc

	.section	.text.halide_set_error_handler,"axG",@progbits,halide_set_error_handler,comdat
	.weak	halide_set_error_handler
	.align	32, 0x90
	.type	halide_set_error_handler,@function
halide_set_error_handler:               # @halide_set_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	naclcall	.L13$pb
.L13$pb:
	popl	%eax
.Ltmp116:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp116-.L13$pb), %eax
	movl	4(%esp), %ecx
	movl	halide_error_handler@GOT(%eax), %eax
	movl	%ecx, (%eax)
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp117:
	.size	halide_set_error_handler, .Ltmp117-halide_set_error_handler
	.cfi_endproc

	.section	.text.halide_copy_to_host,"axG",@progbits,halide_copy_to_host,comdat
	.weak	halide_copy_to_host
	.align	32, 0x90
	.type	halide_copy_to_host,@function
halide_copy_to_host:                    # @halide_copy_to_host
	.cfi_startproc
# BB#0:                                 # %entry
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp118:
	.size	halide_copy_to_host, .Ltmp118-halide_copy_to_host
	.cfi_endproc

	.text
	.globl	halide_game_of_life
	.align	32, 0x90
	.type	halide_game_of_life,@function
halide_game_of_life:                    # @halide_game_of_life
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebp
.Ltmp124:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp125:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp127:
	.cfi_def_cfa_offset 20
	subl	$156, %esp
.Ltmp128:
	.cfi_def_cfa_offset 176
.Ltmp129:
	.cfi_offset %esi, -20
.Ltmp130:
	.cfi_offset %edi, -16
.Ltmp131:
	.cfi_offset %ebx, -12
.Ltmp132:
	.cfi_offset %ebp, -8
	naclcall	.L15$pb
.L15$pb:
	popl	%ebx
.Ltmp133:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp133-.L15$pb), %ebx
	movl	176(%esp), %esi
	testl	%esi, %esi
	je	.LBB15_1
# BB#3:                                 # %assert succeeded: buffer argument p0 is NULL
	movl	8(%esi), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	180(%esp), %ecx
	movl	(%esi), %eax
	orl	4(%esi), %eax
	orl	%edx, %eax
	sete	47(%esp)                # 1-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB15_4
# BB#5:                                 # %assert succeeded: buffer argument f3 is NULL
	movl	12(%esi), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	8(%ecx), %eax
	movl	%eax, 108(%esp)         # 4-byte Spill
	movl	60(%esi), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	48(%esi), %eax
	movl	%eax, 80(%esp)          # 4-byte Spill
	movl	44(%esi), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	32(%esi), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	28(%esi), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	16(%esi), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	(%ecx), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	12(%ecx), %esi
	movl	%esi, 104(%esp)         # 4-byte Spill
	movl	44(%ecx), %ebp
	movl	%ebp, 68(%esp)          # 4-byte Spill
	leal	(%ebp,%esi), %edi
	leal	-1(%esi), %eax
	andl	$-4, %eax
	leal	4(%ebp,%eax), %edx
	cmpl	%edi, %edx
	cmovlel	%edx, %edi
	movl	%edi, 88(%esp)          # 4-byte Spill
	leal	-4(%ebp,%esi), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	addl	%ebp, %eax
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	leal	3(%eax), %esi
	cmpl	%edi, %esi
	movl	%esi, %ecx
	cmovll	%edi, %ecx
	addl	$2, %eax
	cmpl	%eax, %ecx
	cmovll	%esi, %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	180(%esp), %eax
	movl	16(%eax), %edi
	movl	%edi, 100(%esp)         # 4-byte Spill
	movl	180(%esp), %eax
	movl	48(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	leal	(%ecx,%edi), %eax
	leal	-1(%edi), %esi
	andl	$-16, %esi
	leal	16(%ecx,%esi), %edx
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	movl	%eax, 92(%esp)          # 4-byte Spill
	leal	-16(%ecx,%edi), %edx
	addl	%ecx, %esi
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	addl	$15, %esi
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	movl	%edx, %eax
	movl	36(%esp), %edx          # 4-byte Reload
	cmpl	%edx, %ebp
	cmovlel	%ebp, %edx
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	180(%esp), %ecx
	movl	40(%esp), %edi          # 4-byte Reload
	orl	4(%ecx), %edi
	orl	108(%esp), %edi         # 4-byte Folded Reload
	sete	31(%esp)                # 1-byte Folded Spill
	movl	60(%ecx), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	32(%ecx), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	28(%ecx), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	jne	.LBB15_7
# BB#6:                                 # %true_bb
	movl	88(%esp), %ebp          # 4-byte Reload
	subl	%edx, %ebp
	movl	$4, 60(%ecx)
	movl	%edx, 44(%ecx)
	movl	%ebp, 12(%ecx)
	movl	$1, 28(%ecx)
	movl	%eax, 48(%ecx)
	movl	92(%esp), %edi          # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, 16(%ecx)
	movl	%ebp, 32(%ecx)
	movl	$0, 52(%ecx)
	movl	$0, 20(%ecx)
	movl	$0, 36(%ecx)
	movl	$0, 56(%ecx)
	movl	$0, 24(%ecx)
	movl	$0, 40(%ecx)
.LBB15_7:                               # %after_bb
	movl	88(%esp), %edi          # 4-byte Reload
	cmpb	$0, 47(%esp)            # 1-byte Folded Reload
	je	.LBB15_11
# BB#8:                                 # %after_bb42.thread
	movl	176(%esp), %edi
	movl	$4, 60(%edi)
	leal	-1(%edx), %ecx
	movl	%ecx, 44(%edi)
	movl	96(%esp), %ebx          # 4-byte Reload
	subl	%edx, %ebx
	addl	$2, %ebx
	movl	%ebx, 12(%edi)
	movl	$1, 28(%edi)
	leal	-1(%eax), %ecx
	movl	%ecx, 48(%edi)
	movl	$2, %ecx
	subl	%eax, %ecx
	addl	%esi, %ecx
	movl	%ecx, 16(%edi)
	movl	%ebx, 32(%edi)
	movl	$0, 52(%edi)
	movl	$0, 20(%edi)
	movl	$0, 36(%edi)
	movl	$0, 56(%edi)
	movl	$0, 24(%edi)
	movl	$0, 40(%edi)
	jmp	.LBB15_9
.LBB15_1:                               # %assert failed: buffer argument p0 is NULL
	leal	.Lstr@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_4:                               # %assert failed: buffer argument f3 is NULL
	leal	.Lstr33@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_11:                              # %after_bb42
	cmpb	$0, 31(%esp)            # 1-byte Folded Reload
	jne	.LBB15_9
# BB#12:                                # %true_bb56
	cmpl	$4, 32(%esp)            # 4-byte Folded Reload
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	104(%esp), %ebp         # 4-byte Reload
	jne	.LBB15_13
# BB#14:                                # %assert succeeded: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	cmpl	$4, 48(%esp)            # 4-byte Folded Reload
	jne	.LBB15_15
# BB#16:                                # %assert succeeded: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	cmpl	%edx, %ecx
	jle	.LBB15_18
# BB#17:                                # %assert failed: Output buffer f3 is accessed before the min in dimension 0
	leal	.Lstr36@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_13:                              # %assert failed: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	leal	.Lstr34@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_15:                              # %assert failed: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	leal	.Lstr35@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_18:                              # %assert succeeded: Output buffer f3 is accessed before the min in dimension 0
	subl	%ebp, %edi
	cmpl	%ecx, %edi
	jle	.LBB15_20
# BB#19:                                # %assert failed: Output buffer f3 is accessed beyond the extent in dimension 0
	leal	.Lstr37@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_20:                              # %assert succeeded: Output buffer f3 is accessed beyond the extent in dimension 0
	movl	52(%esp), %ebp          # 4-byte Reload
	cmpl	%eax, %ebp
	movl	%eax, 88(%esp)          # 4-byte Spill
	movl	72(%esp), %eax          # 4-byte Reload
	jle	.LBB15_22
# BB#21:                                # %assert failed: Output buffer f3 is accessed before the min in dimension 1
	leal	.Lstr38@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_22:                              # %assert succeeded: Output buffer f3 is accessed before the min in dimension 1
	movl	92(%esp), %edi          # 4-byte Reload
	subl	100(%esp), %edi         # 4-byte Folded Reload
	cmpl	%ebp, %edi
	jle	.LBB15_24
# BB#23:                                # %assert failed: Output buffer f3 is accessed beyond the extent in dimension 1
	leal	.Lstr39@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_24:                              # %assert succeeded: Output buffer f3 is accessed beyond the extent in dimension 1
	movl	%eax, %edi
	cmpl	%edx, %edi
	jge	.LBB15_25
# BB#26:                                # %assert succeeded: Input buffer p0 is accessed before the min in dimension 0
	movl	96(%esp), %edx          # 4-byte Reload
	subl	56(%esp), %edx          # 4-byte Folded Reload
	cmpl	%edi, %edx
	movl	88(%esp), %eax          # 4-byte Reload
	jge	.LBB15_27
# BB#28:                                # %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 0
	movl	%ecx, %edx
	movl	80(%esp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	movl	%ecx, %eax
	jge	.LBB15_29
# BB#30:                                # %assert succeeded: Input buffer p0 is accessed before the min in dimension 1
	subl	60(%esp), %esi          # 4-byte Folded Reload
	cmpl	%eax, %esi
	jge	.LBB15_31
# BB#32:                                # %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 1
	cmpl	$1, 36(%esp)            # 4-byte Folded Reload
	movl	%edi, %esi
	jne	.LBB15_33
# BB#34:                                # %assert succeeded: Static constraint violated: f3.stride.0 == 1
	cmpl	$1, 64(%esp)            # 4-byte Folded Reload
	jne	.LBB15_35
# BB#36:                                # %produce f3
	movl	104(%esp), %ecx         # 4-byte Reload
	movl	%ecx, 112(%esp)
	movl	100(%esp), %ecx         # 4-byte Reload
	movl	%ecx, 116(%esp)
	movl	%edx, 120(%esp)
	movl	%ebp, 124(%esp)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 128(%esp)
	movl	%esi, 132(%esp)
	movl	%eax, 136(%esp)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 140(%esp)
	movl	108(%esp), %eax         # 4-byte Reload
	movl	%eax, 144(%esp)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 148(%esp)
	leal	112(%esp), %eax
	movl	%eax, 16(%esp)
	addl	$15, %ecx
	sarl	$4, %ecx
	movl	%ecx, 12(%esp)
	leal	par_20_for_20_f3.s0.v1.v1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	naclcall	halide_do_par_for@PLT
	testl	%eax, %eax
	je	.LBB15_9
# BB#37:                                # %assert failed: Failure inside parallel for loop
	leal	.Lstr46@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_9:                               # %after_bb58
	xorl	%eax, %eax
	jmp	.LBB15_10
.LBB15_25:                              # %assert failed: Input buffer p0 is accessed before the min in dimension 0
	leal	.Lstr40@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_27:                              # %assert failed: Input buffer p0 is accessed beyond the extent in dimension 0
	leal	.Lstr41@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_29:                              # %assert failed: Input buffer p0 is accessed before the min in dimension 1
	leal	.Lstr42@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_31:                              # %assert failed: Input buffer p0 is accessed beyond the extent in dimension 1
	leal	.Lstr43@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_33:                              # %assert failed: Static constraint violated: f3.stride.0 == 1
	leal	.Lstr44@GOTOFF(%ebx), %eax
	jmp	.LBB15_2
.LBB15_35:                              # %assert failed: Static constraint violated: p0.stride.0 == 1
	leal	.Lstr45@GOTOFF(%ebx), %eax
.LBB15_2:                               # %assert failed: buffer argument p0 is NULL
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	naclcall	halide_error@PLT
	movl	$-1, %eax
.LBB15_10:                              # %after_bb58
	addl	$156, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp134:
	.size	halide_game_of_life, .Ltmp134-halide_game_of_life
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI16_1:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI16_2:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
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
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$284, %esp              # imm = 0x11C
	naclcall	.L16$pb
.L16$pb:
	popl	%edx
.Ltmp135:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp135-.L16$pb), %edx
	movl	312(%esp), %esi
	movl	12(%esi), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	(%esi), %eax
	movl	4(%esi), %ecx
	leal	-16(%ecx,%edi), %ecx
	movl	308(%esp), %ebx
	shll	$4, %ebx
	addl	%edi, %ebx
	cmpl	%ecx, %ebx
	cmovgl	%ecx, %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	leal	3(%eax), %ecx
	sarl	$2, %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB16_5
# BB#1:
	movl	8(%esi), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	leal	-4(%eax,%ecx), %edi
	movl	%edi, 140(%esp)         # 4-byte Spill
	movl	28(%esi), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	24(%esi), %ecx
	imull	%eax, %ecx
	addl	20(%esi), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%esi), %eax
	movl	32(%esi), %ebp
	movl	16(%esi), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	xorl	%ebx, %ebx
	movdqa	.LCPI16_0@GOTOFF(%edx), %xmm2
	movaps	.LCPI16_1@GOTOFF(%edx), %xmm0
	movaps	%xmm0, 256(%esp)        # 16-byte Spill
	movaps	.LCPI16_2@GOTOFF(%edx), %xmm0
	movaps	%xmm0, 240(%esp)        # 16-byte Spill
	movdqa	.LCPI16_3@GOTOFF(%edx), %xmm0
	movdqa	%xmm0, 32(%esp)         # 16-byte Spill
	movaps	.LCPI16_4@GOTOFF(%edx), %xmm1
	movaps	%xmm1, 80(%esp)         # 16-byte Spill
	movaps	.LCPI16_5@GOTOFF(%edx), %xmm1
	movaps	%xmm1, 64(%esp)         # 16-byte Spill
	movdqa	.LCPI16_6@GOTOFF(%edx), %xmm1
	movdqa	%xmm1, 48(%esp)         # 16-byte Spill
	.align	16, 0x90
.LBB16_4:                               # %for f3.s0.v0.v0.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	leal	-1(%ebx,%ecx), %ecx
	imull	24(%esp), %ecx          # 4-byte Folded Reload
	movl	4(%esp), %esi           # 4-byte Reload
	subl	%esi, %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	leal	(%ebx,%ecx), %edx
	movl	%edx, %ecx
	imull	24(%esp), %ecx          # 4-byte Folded Reload
	subl	%esi, %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	leal	1(%ebx,%ecx), %ecx
	imull	24(%esp), %ecx          # 4-byte Folded Reload
	subl	%esi, %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	subl	16(%esp), %edx          # 4-byte Folded Reload
	imull	(%esp), %edx            # 4-byte Folded Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	12(%esp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB16_2:                               # %for f3.s0.v0.v0.us
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, %esi
	movl	140(%esp), %edi         # 4-byte Reload
	cmovlel	%esi, %edi
	movl	108(%esp), %ecx         # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movdqu	(%eax,%ecx,4), %xmm0
	movdqa	%xmm0, 224(%esp)        # 16-byte Spill
	psrld	$8, %xmm0
	pand	%xmm2, %xmm0
	movdqu	-4(%eax,%ecx,4), %xmm1
	movdqa	%xmm1, 208(%esp)        # 16-byte Spill
	psrld	$8, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	4(%eax,%ecx,4), %xmm0
	movdqa	%xmm0, 192(%esp)        # 16-byte Spill
	psrld	$8, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movl	100(%esp), %ecx         # 4-byte Reload
	leal	(%ecx,%edi), %edx
	movdqu	-4(%eax,%edx,4), %xmm1
	movdqa	%xmm1, 176(%esp)        # 16-byte Spill
	psrld	$8, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	4(%eax,%edx,4), %xmm0
	movdqa	%xmm0, 160(%esp)        # 16-byte Spill
	psrld	$8, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movl	96(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movdqu	-4(%eax,%ecx,4), %xmm1
	movdqa	%xmm1, 144(%esp)        # 16-byte Spill
	psrld	$8, %xmm1
	pand	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	(%eax,%ecx,4), %xmm5
	movdqa	%xmm5, %xmm0
	psrld	$8, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	4(%eax,%ecx,4), %xmm7
	movdqa	%xmm7, %xmm3
	psrld	$8, %xmm3
	pand	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqd	256(%esp), %xmm4        # 16-byte Folded Reload
	pcmpeqd	240(%esp), %xmm3        # 16-byte Folded Reload
	movdqu	(%eax,%edx,4), %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$8, %xmm0
	pand	%xmm2, %xmm0
	pxor	%xmm6, %xmm6
	pcmpeqd	%xmm6, %xmm0
	pandn	%xmm3, %xmm0
	por	%xmm4, %xmm0
	pxor	%xmm3, %xmm3
	blendvps	32(%esp), %xmm3 # 16-byte Folded Reload
	movaps	%xmm3, 112(%esp)        # 16-byte Spill
	movdqa	224(%esp), %xmm3        # 16-byte Reload
	psrld	$16, %xmm3
	pand	%xmm2, %xmm3
	movdqa	208(%esp), %xmm0        # 16-byte Reload
	psrld	$16, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	192(%esp), %xmm3        # 16-byte Reload
	psrld	$16, %xmm3
	pand	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	movdqa	176(%esp), %xmm0        # 16-byte Reload
	psrld	$16, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	160(%esp), %xmm3        # 16-byte Reload
	psrld	$16, %xmm3
	pand	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	movdqa	144(%esp), %xmm0        # 16-byte Reload
	psrld	$16, %xmm0
	pand	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	%xmm5, %xmm4
	psrld	$16, %xmm4
	pand	%xmm2, %xmm4
	paddd	%xmm0, %xmm4
	movdqa	%xmm7, %xmm3
	psrld	$16, %xmm3
	pand	%xmm2, %xmm3
	paddd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqd	256(%esp), %xmm4        # 16-byte Folded Reload
	pcmpeqd	240(%esp), %xmm3        # 16-byte Folded Reload
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	pand	%xmm2, %xmm0
	pxor	%xmm6, %xmm6
	pcmpeqd	%xmm6, %xmm0
	movaps	80(%esp), %xmm6         # 16-byte Reload
	pandn	%xmm3, %xmm0
	por	%xmm4, %xmm0
	movdqa	256(%esp), %xmm4        # 16-byte Reload
	pxor	%xmm3, %xmm3
	blendvps	%xmm6, %xmm3
	paddd	112(%esp), %xmm3        # 16-byte Folded Reload
	movdqa	224(%esp), %xmm6        # 16-byte Reload
	pand	%xmm2, %xmm6
	movdqa	208(%esp), %xmm0        # 16-byte Reload
	pand	%xmm2, %xmm0
	paddd	%xmm6, %xmm0
	movdqa	192(%esp), %xmm6        # 16-byte Reload
	pand	%xmm2, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	176(%esp), %xmm6        # 16-byte Reload
	pand	%xmm2, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	160(%esp), %xmm6        # 16-byte Reload
	pand	%xmm2, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	movdqa	144(%esp), %xmm6        # 16-byte Reload
	pand	%xmm2, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm2, %xmm5
	paddd	%xmm0, %xmm5
	pand	%xmm2, %xmm7
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, %xmm0
	pcmpeqd	%xmm4, %xmm0
	movdqa	240(%esp), %xmm4        # 16-byte Reload
	pcmpeqd	%xmm4, %xmm7
	pxor	%xmm4, %xmm4
	pand	%xmm2, %xmm1
	pcmpeqd	%xmm4, %xmm1
	movaps	64(%esp), %xmm4         # 16-byte Reload
	pandn	%xmm7, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	blendvps	%xmm4, %xmm1
	paddd	%xmm3, %xmm1
	movdqa	48(%esp), %xmm0         # 16-byte Reload
	paddd	%xmm0, %xmm1
	addl	104(%esp), %edi         # 4-byte Folded Reload
	movdqu	%xmm1, (%ebp,%edi,4)
	movl	140(%esp), %edi         # 4-byte Reload
	addl	$4, %esi
	decl	%ebx
	jne	.LBB16_2
# BB#3:                                 # %end for f3.s0.v0.v0.us
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	20(%esp), %ebx          # 4-byte Reload
	incl	%ebx
	cmpl	$16, %ebx
	jne	.LBB16_4
.LBB16_5:                               # %end for f3.s0.v1.v10
	xorl	%eax, %eax
	addl	$284, %esp              # imm = 0x11C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp136:
	.size	par_20_for_20_f3.s0.v1.v1, .Ltmp136-par_20_for_20_f3.s0.v1.v1

	.globl	halide_game_of_life_jit_wrapper
	.align	32, 0x90
	.type	halide_game_of_life_jit_wrapper,@function
halide_game_of_life_jit_wrapper:        # @halide_game_of_life_jit_wrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%ebx
.Ltmp139:
	.cfi_def_cfa_offset 8
	subl	$8, %esp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %ebx, -8
	naclcall	.L17$pb
.L17$pb:
	popl	%ebx
.Ltmp142:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp142-.L17$pb), %ebx
	movl	16(%esp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	naclcall	halide_game_of_life@PLT
	addl	$8, %esp
	popl	%ebx
	popl	%ecx
	nacljmp	%ecx
	.align	32, 0x90
.Ltmp143:
	.size	halide_game_of_life_jit_wrapper, .Ltmp143-halide_game_of_life_jit_wrapper
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

	.syntax unified
	.eabi_attribute 6, 10
	.eabi_attribute 9, 2
	.fpu neon
	.eabi_attribute 10, 3
	.eabi_attribute 12, 1
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
 @ ========================================
@ Branch: 1
@ Stack: 1
@ Store: 1
@ Data: 1
 @ ========================================
	.macro sfi_long_based_on_pos p0 p1 p2 p3 val
	.set pos, (. - XmagicX) % 16
	.fill  (((\p3<<12)|(\p2<<8)|(\p1<<4)|\p0)>>pos) & 15, 4, \val
	.endm


	.macro sfi_illegal_if_at_bundle_begining
	sfi_long_based_on_pos 1 0 0 0 0xe125be70
	.endm


	.macro sfi_nop_if_at_bundle_end
	sfi_long_based_on_pos 0 0 0 1 0xe320f000
	.endm


	.macro sfi_nops_to_force_slot3
	sfi_long_based_on_pos 3 2 1 0 0xe320f000
	.endm


	.macro sfi_nops_to_force_slot2
	sfi_long_based_on_pos 2 1 0 3 0xe320f000
	.endm


	.macro sfi_nops_to_force_slot1
	sfi_long_based_on_pos 1 0 3 2 0xe320f000
	.endm


 @ ========================================
	.macro sfi_data_mask reg cond
	bic\cond \reg, \reg, #0xc0000000
	.endm


	.macro sfi_data_tst reg
	tst \reg, #0xc0000000
	.endm


	.macro sfi_code_mask reg cond=
	bic\cond \reg, \reg, #0xc000000f
	.endm


 @ ========================================
	.macro sfi_call_preamble cond=
	sfi_nops_to_force_slot3
	.endm


	.macro sfi_return_preamble reg cond=
	sfi_nop_if_at_bundle_end
	sfi_code_mask \reg \cond
	.endm


	.macro sfi_indirect_jump_preamble link cond=
	sfi_nop_if_at_bundle_end
	sfi_code_mask \link \cond
	.endm


	.macro sfi_indirect_call_preamble link cond=
	sfi_nops_to_force_slot2
	sfi_code_mask \link \cond
	.endm


 @ ========================================
	.macro sfi_load_store_preamble reg cond
	sfi_nop_if_at_bundle_end
	sfi_data_mask \reg, \cond
	.endm


	.macro sfi_cstore_preamble reg
	sfi_nop_if_at_bundle_end
	sfi_data_tst \reg
	.endm


 @ ========================================
	.text
	.bundle_align_mode 4
	.section	.note.NaCl.ABI.arm,"aG",%note,.note.NaCl.ABI.arm,comdat
	.long	5
	.long	4
	.long	1
	.ascii	 "NaCl"
	.byte	0
	.align	2
	.ascii	 "arm"
	.byte	0
	.align	2
	.file	"halide_module_halide_game_of_life"
	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI0_0:
	.long	halide_reference_clock(GOT)
	.section	.text.halide_current_time_ns,"axG",%progbits,halide_current_time_ns,comdat
	.weak	halide_current_time_ns
	.align	2
	.type	halide_current_time_ns,%function
	.align	4                       @ @halide_current_time_ns
	.set XmagicX, .
halide_current_time_ns:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{lr}
.Ltmp2:
	.cfi_def_cfa_offset 4
.Ltmp3:
	.cfi_offset lr, -4
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #12
	sfi_data_mask sp, 

.Ltmp4:
	.cfi_def_cfa_offset 16
	mov	r0, sp
	mov	r1, #0
	sfi_call_preamble 

	bl	gettimeofday(PLT)
	movw	r0, :lower16:(.LCPI0_0-(.LPC0_1+8))
	movw	r1, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC0_2+8))
	movt	r0, :upper16:(.LCPI0_0-(.LPC0_1+8))
	movt	r1, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC0_2+8))
.LPC0_1:
	add	r0, pc, r0
.LPC0_2:
	add	r1, pc, r1
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	ldr	r12, [sp]
	add	r0, r0, r1
	ldr	r1, [sp, #4]
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	asr	r3, r1, #31
	sfi_load_store_preamble r0, 

	ldr	r2, [r0, #4]
	sfi_load_store_preamble r0, 

	ldr	lr, [r0]
	subs	r0, r1, r2
	sbc	r1, r3, r2, asr #31
	movw	r3, #16960
	sub	r2, r12, lr
	movt	r3, #15
	smlal	r0, r1, r2, r3
	mov	r2, #1000
	umull	r0, r3, r0, r2
	mla	r1, r1, r2, r3
	sfi_nop_if_at_bundle_end

	add	sp, sp, #12
	sfi_data_mask sp, 

	pop	{lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp5:
	.size	halide_current_time_ns, .Ltmp5-halide_current_time_ns
	.cfi_endproc

	.section	.text.halide_printf,"axG",%progbits,halide_printf,comdat
	.weak	halide_printf
	.align	2
	.type	halide_printf,%function
	.align	4                       @ @halide_printf
	.set XmagicX, .
halide_printf:
	.cfi_startproc
@ BB#0:                                 @ %entry
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #16
	sfi_data_mask sp, 

	push	{r4, r5, r6, r7, r8, r10, lr}
.Ltmp8:
	.cfi_def_cfa_offset 28
.Ltmp9:
	.cfi_offset lr, -4
.Ltmp10:
	.cfi_offset r10, -8
.Ltmp11:
	.cfi_offset r8, -12
.Ltmp12:
	.cfi_offset r7, -16
.Ltmp13:
	.cfi_offset r6, -20
.Ltmp14:
	.cfi_offset r5, -24
.Ltmp15:
	.cfi_offset r4, -28
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #4
	sfi_data_mask sp, 

	sfi_nop_if_at_bundle_end

	sub	sp, sp, #1024
	sfi_data_mask sp, 

.Ltmp16:
	.cfi_def_cfa_offset 1056
	mov	r4, r1
	add	r5, sp, #4
	add	r6, sp, #1024
	str	r3, [sp, #1068]
	str	r2, [sp, #1064]
	add	r3, r6, #40
	mov	r0, r5
	mov	r1, #1024
	mov	r2, r4
	str	r3, [sp]
	sfi_call_preamble 

	bl	vsnprintf(PLT)
	mov	r4, r0
	mov	r2, #0
	movw	r0, #1022
.LBB1_2:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, r2
	sfi_load_store_preamble r1, 

	ldrb	r1, [r1]
	cmp	r1, #0
	beq	.LBB1_3
@ BB#1:                                 @ %while.cond
                                        @   in Loop: Header=BB1_2 Depth=1
	add	r2, r2, #1
	cmp	r2, r0
	bls	.LBB1_2
.LBB1_3:                                @ %while.end
	add	r1, sp, #4
	mov	r0, #2
	sfi_call_preamble 

	bl	write(PLT)
	mov	r0, r4
	sfi_nop_if_at_bundle_end

	add	sp, sp, #4
	sfi_data_mask sp, 

	sfi_nop_if_at_bundle_end

	add	sp, sp, #1024
	sfi_data_mask sp, 

	pop	{r4, r5, r6, r7, r8, r10, lr}
	sfi_nop_if_at_bundle_end

	add	sp, sp, #16
	sfi_data_mask sp, 

	sfi_return_preamble lr, 

	bx	lr
.Ltmp17:
	.size	halide_printf, .Ltmp17-halide_printf
	.cfi_endproc

	.section	.text.halide_host_cpu_count,"axG",%progbits,halide_host_cpu_count,comdat
	.weak	halide_host_cpu_count
	.align	2
	.type	halide_host_cpu_count,%function
	.align	4                       @ @halide_host_cpu_count
	.set XmagicX, .
halide_host_cpu_count:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{lr}
.Ltmp20:
	.cfi_def_cfa_offset 4
.Ltmp21:
	.cfi_offset lr, -4
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #12
	sfi_data_mask sp, 

.Ltmp22:
	.cfi_def_cfa_offset 16
	mov	r0, #84
	sfi_call_preamble 

	bl	sysconf(PLT)
	sfi_nop_if_at_bundle_end

	add	sp, sp, #12
	sfi_data_mask sp, 

	pop	{lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp23:
	.size	halide_host_cpu_count, .Ltmp23-halide_host_cpu_count
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI3_0:
	.long	halide_thread_pool_initialized(GOT)
.LCPI3_1:
	.long	halide_work_queue(GOT)
.LCPI3_2:
	.long	halide_threads(GOT)
	.section	.text.halide_shutdown_thread_pool,"axG",%progbits,halide_shutdown_thread_pool,comdat
	.weak	halide_shutdown_thread_pool
	.align	2
	.type	halide_shutdown_thread_pool,%function
	.align	4                       @ @halide_shutdown_thread_pool
	.set XmagicX, .
halide_shutdown_thread_pool:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r10, lr}
.Ltmp26:
	.cfi_def_cfa_offset 28
.Ltmp27:
	.cfi_offset lr, -4
.Ltmp28:
	.cfi_offset r10, -8
.Ltmp29:
	.cfi_offset r8, -12
.Ltmp30:
	.cfi_offset r7, -16
.Ltmp31:
	.cfi_offset r6, -20
.Ltmp32:
	.cfi_offset r5, -24
.Ltmp33:
	.cfi_offset r4, -28
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #4
	sfi_data_mask sp, 

.Ltmp34:
	.cfi_def_cfa_offset 32
	movw	r0, :lower16:(.LCPI3_0-(.LPC3_4+8))
	movw	r6, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC3_5+8))
	movt	r0, :upper16:(.LCPI3_0-(.LPC3_4+8))
	movt	r6, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC3_5+8))
.LPC3_4:
	add	r0, pc, r0
.LPC3_5:
	add	r6, pc, r6
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	add	r0, r0, r6
	sfi_load_store_preamble r0, 

	ldr	r8, [r0]
	sfi_load_store_preamble r8, 

	ldrb	r0, [r8]
	cmp	r0, #0
	beq	.LBB3_5
@ BB#1:                                 @ %if.end
	movw	r0, :lower16:(.LCPI3_1-(.LPC3_6+8))
	movt	r0, :upper16:(.LCPI3_1-(.LPC3_6+8))
.LPC3_6:
	add	r0, pc, r0
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	add	r0, r0, r6
	sfi_load_store_preamble r0, 

	ldr	r4, [r0]
	mov	r0, r4
	sfi_call_preamble 

	bl	pthread_mutex_lock(PLT)
	mov	r0, #1
	add	r10, r4, #44
	sfi_load_store_preamble r4, 

	strb	r0, [r4, #348]
	mov	r0, r10
	sfi_call_preamble 

	bl	pthread_cond_broadcast(PLT)
	mov	r0, r4
	sfi_call_preamble 

	bl	pthread_mutex_unlock(PLT)
	movw	r0, :lower16:(.LCPI3_2-(.LPC3_7+8))
	movt	r0, :upper16:(.LCPI3_2-(.LPC3_7+8))
.LPC3_7:
	add	r0, pc, r0
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	add	r0, r0, r6
	sfi_load_store_preamble r0, 

	ldr	r7, [r0]
	sfi_load_store_preamble r7, 

	ldr	r0, [r7]
	sub	r0, r0, #1
	cmp	r0, #1
	blt	.LBB3_4
@ BB#2:
	mov	r5, #0
	mov	r6, sp
.LBB3_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r4, r5, lsl #2
	mov	r1, r6
	sfi_load_store_preamble r0, 

	ldr	r0, [r0, #92]
	sfi_call_preamble 

	bl	pthread_join(PLT)
	sfi_load_store_preamble r7, 

	ldr	r0, [r7]
	add	r5, r5, #1
	sub	r0, r0, #1
	cmp	r5, r0
	blt	.LBB3_3
.LBB3_4:                                @ %for.end
	mov	r0, r4
	sfi_call_preamble 

	bl	pthread_mutex_destroy(PLT)
	mov	r0, r10
	sfi_call_preamble 

	bl	pthread_cond_destroy(PLT)
	mov	r0, #0
	sfi_load_store_preamble r8, 

	strb	r0, [r8]
.LBB3_5:                                @ %return
	sfi_nop_if_at_bundle_end

	add	sp, sp, #4
	sfi_data_mask sp, 

	pop	{r4, r5, r6, r7, r8, r10, lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp35:
	.size	halide_shutdown_thread_pool, .Ltmp35-halide_shutdown_thread_pool
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI4_0:
	.long	halide_custom_do_task(GOT)
	.section	.text.halide_set_custom_do_task,"axG",%progbits,halide_set_custom_do_task,comdat
	.weak	halide_set_custom_do_task
	.align	2
	.type	halide_set_custom_do_task,%function
	.align	4                       @ @halide_set_custom_do_task
	.set XmagicX, .
halide_set_custom_do_task:
	.cfi_startproc
@ BB#0:                                 @ %entry
	movw	r1, :lower16:(.LCPI4_0-(.LPC4_1+8))
	movw	r2, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC4_2+8))
	movt	r1, :upper16:(.LCPI4_0-(.LPC4_1+8))
	movt	r2, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC4_2+8))
.LPC4_1:
	add	r1, pc, r1
.LPC4_2:
	add	r2, pc, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	add	r1, r1, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	sfi_load_store_preamble r1, 

	str	r0, [r1]
	sfi_return_preamble lr, 

	bx	lr
.Ltmp36:
	.size	halide_set_custom_do_task, .Ltmp36-halide_set_custom_do_task
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI5_0:
	.long	halide_custom_do_par_for(GOT)
	.section	.text.halide_set_custom_do_par_for,"axG",%progbits,halide_set_custom_do_par_for,comdat
	.weak	halide_set_custom_do_par_for
	.align	2
	.type	halide_set_custom_do_par_for,%function
	.align	4                       @ @halide_set_custom_do_par_for
	.set XmagicX, .
halide_set_custom_do_par_for:
	.cfi_startproc
@ BB#0:                                 @ %entry
	movw	r1, :lower16:(.LCPI5_0-(.LPC5_1+8))
	movw	r2, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC5_2+8))
	movt	r1, :upper16:(.LCPI5_0-(.LPC5_1+8))
	movt	r2, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC5_2+8))
.LPC5_1:
	add	r1, pc, r1
.LPC5_2:
	add	r2, pc, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	add	r1, r1, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	sfi_load_store_preamble r1, 

	str	r0, [r1]
	sfi_return_preamble lr, 

	bx	lr
.Ltmp37:
	.size	halide_set_custom_do_par_for, .Ltmp37-halide_set_custom_do_par_for
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI6_0:
	.long	halide_custom_trace(GOT)
	.section	.text.halide_set_custom_trace,"axG",%progbits,halide_set_custom_trace,comdat
	.weak	halide_set_custom_trace
	.align	2
	.type	halide_set_custom_trace,%function
	.align	4                       @ @halide_set_custom_trace
	.set XmagicX, .
halide_set_custom_trace:
	.cfi_startproc
@ BB#0:                                 @ %entry
	movw	r1, :lower16:(.LCPI6_0-(.LPC6_1+8))
	movw	r2, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC6_2+8))
	movt	r1, :upper16:(.LCPI6_0-(.LPC6_1+8))
	movt	r2, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC6_2+8))
.LPC6_1:
	add	r1, pc, r1
.LPC6_2:
	add	r2, pc, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	add	r1, r1, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	sfi_load_store_preamble r1, 

	str	r0, [r1]
	sfi_return_preamble lr, 

	bx	lr
.Ltmp38:
	.size	halide_set_custom_trace, .Ltmp38-halide_set_custom_trace
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI7_0:
	.long	halide_trace_file(GOT)
.LCPI7_1:
	.long	halide_trace_initialized(GOT)
	.section	.text.halide_shutdown_trace,"axG",%progbits,halide_shutdown_trace,comdat
	.weak	halide_shutdown_trace
	.align	2
	.type	halide_shutdown_trace,%function
	.align	4                       @ @halide_shutdown_trace
	.set XmagicX, .
halide_shutdown_trace:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{r4, r5, lr}
.Ltmp41:
	.cfi_def_cfa_offset 12
.Ltmp42:
	.cfi_offset lr, -4
.Ltmp43:
	.cfi_offset r5, -8
.Ltmp44:
	.cfi_offset r4, -12
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #4
	sfi_data_mask sp, 

.Ltmp45:
	.cfi_def_cfa_offset 16
	movw	r0, :lower16:(.LCPI7_0-(.LPC7_2+8))
	movw	r2, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC7_3+8))
	movt	r0, :upper16:(.LCPI7_0-(.LPC7_2+8))
	movt	r2, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC7_3+8))
.LPC7_2:
	add	r0, pc, r0
.LPC7_3:
	add	r2, pc, r2
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	add	r0, r0, r2
	sfi_load_store_preamble r0, 

	ldr	r4, [r0]
	mov	r0, #0
	sfi_load_store_preamble r4, 

	ldr	r1, [r4]
	cmp	r1, #0
	beq	.LBB7_2
@ BB#1:                                 @ %if.then
	movw	r0, :lower16:(.LCPI7_1-(.LPC7_4+8))
	movt	r0, :upper16:(.LCPI7_1-(.LPC7_4+8))
.LPC7_4:
	add	r0, pc, r0
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	add	r0, r0, r2
	sfi_load_store_preamble r0, 

	ldr	r5, [r0]
	mov	r0, r1
	sfi_call_preamble 

	bl	fclose(PLT)
	mov	r1, #0
	sfi_load_store_preamble r4, 

	str	r1, [r4]
	sfi_load_store_preamble r5, 

	strb	r1, [r5]
.LBB7_2:                                @ %return
	sfi_nop_if_at_bundle_end

	add	sp, sp, #4
	sfi_data_mask sp, 

	pop	{r4, r5, lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp46:
	.size	halide_shutdown_trace, .Ltmp46-halide_shutdown_trace
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI8_0:
	.long	halide_custom_malloc(GOT)
.LCPI8_1:
	.long	halide_custom_free(GOT)
	.section	.text.halide_set_custom_allocator,"axG",%progbits,halide_set_custom_allocator,comdat
	.weak	halide_set_custom_allocator
	.align	2
	.type	halide_set_custom_allocator,%function
	.align	4                       @ @halide_set_custom_allocator
	.set XmagicX, .
halide_set_custom_allocator:
	.cfi_startproc
@ BB#0:                                 @ %entry
	movw	r3, :lower16:(.LCPI8_0-(.LPC8_1+8))
	movw	r2, :lower16:(.LCPI8_1-(.LPC8_2+8))
	movt	r3, :upper16:(.LCPI8_0-(.LPC8_1+8))
	movt	r2, :upper16:(.LCPI8_1-(.LPC8_2+8))
.LPC8_1:
	add	r3, pc, r3
.LPC8_2:
	add	r2, pc, r2
	movw	r12, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC8_3+8))
	sfi_load_store_preamble r2, 

	ldr	r2, [r2]
	movt	r12, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC8_3+8))
	sfi_load_store_preamble r3, 

	ldr	r3, [r3]
.LPC8_3:
	add	r12, pc, r12
	add	r3, r3, r12
	add	r2, r2, r12
	sfi_load_store_preamble r3, 

	ldr	r3, [r3]
	sfi_load_store_preamble r2, 

	ldr	r2, [r2]
	sfi_load_store_preamble r3, 

	str	r0, [r3]
	sfi_load_store_preamble r2, 

	str	r1, [r2]
	sfi_return_preamble lr, 

	bx	lr
.Ltmp47:
	.size	halide_set_custom_allocator, .Ltmp47-halide_set_custom_allocator
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI9_0:
	.long	halide_error_handler(GOT)
.LCPI9_1:
	.long	.L.str30(GOTOFF)
	.section	.text.halide_error,"axG",%progbits,halide_error,comdat
	.weak	halide_error
	.align	2
	.type	halide_error,%function
	.align	4                       @ @halide_error
	.set XmagicX, .
halide_error:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{lr}
.Ltmp50:
	.cfi_def_cfa_offset 4
.Ltmp51:
	.cfi_offset lr, -4
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #12
	sfi_data_mask sp, 

.Ltmp52:
	.cfi_def_cfa_offset 16
	mov	r2, r1
	movw	r1, :lower16:(.LCPI9_0-(.LPC9_2+8))
	movt	r1, :upper16:(.LCPI9_0-(.LPC9_2+8))
.LPC9_2:
	add	r1, pc, r1
	sfi_load_store_preamble r1, 

	ldr	r3, [r1]
	movw	r1, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC9_3+8))
	movt	r1, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC9_3+8))
.LPC9_3:
	add	r1, pc, r1
	add	r3, r3, r1
	sfi_load_store_preamble r3, 

	ldr	r3, [r3]
	sfi_load_store_preamble r3, 

	ldr	r3, [r3]
	cmp	r3, #0
	beq	.LBB9_2
@ BB#1:                                 @ %if.then
	mov	r1, r2
	sfi_indirect_call_preamble r3, 

	blx	r3
	b	.LBB9_3
.LBB9_2:                                @ %if.else
	movw	r3, :lower16:(.LCPI9_1-(.LPC9_4+8))
	movt	r3, :upper16:(.LCPI9_1-(.LPC9_4+8))
.LPC9_4:
	add	r3, pc, r3
	sfi_load_store_preamble r3, 

	ldr	r3, [r3]
	add	r1, r3, r1
	sfi_call_preamble 

	bl	halide_printf(PLT)
	mov	r0, #1
	sfi_call_preamble 

	bl	exit(PLT)
.LBB9_3:                                @ %if.end
	sfi_nop_if_at_bundle_end

	add	sp, sp, #12
	sfi_data_mask sp, 

	pop	{lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp53:
	.size	halide_error, .Ltmp53-halide_error
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI10_0:
	.long	halide_error_handler(GOT)
	.section	.text.halide_set_error_handler,"axG",%progbits,halide_set_error_handler,comdat
	.weak	halide_set_error_handler
	.align	2
	.type	halide_set_error_handler,%function
	.align	4                       @ @halide_set_error_handler
	.set XmagicX, .
halide_set_error_handler:
	.cfi_startproc
@ BB#0:                                 @ %entry
	movw	r1, :lower16:(.LCPI10_0-(.LPC10_1+8))
	movw	r2, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC10_2+8))
	movt	r1, :upper16:(.LCPI10_0-(.LPC10_1+8))
	movt	r2, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC10_2+8))
.LPC10_1:
	add	r1, pc, r1
.LPC10_2:
	add	r2, pc, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	add	r1, r1, r2
	sfi_load_store_preamble r1, 

	ldr	r1, [r1]
	sfi_load_store_preamble r1, 

	str	r0, [r1]
	sfi_return_preamble lr, 

	bx	lr
.Ltmp54:
	.size	halide_set_error_handler, .Ltmp54-halide_set_error_handler
	.cfi_endproc

	.section	.text.halide_copy_to_host,"axG",%progbits,halide_copy_to_host,comdat
	.weak	halide_copy_to_host
	.align	2
	.type	halide_copy_to_host,%function
	.align	4                       @ @halide_copy_to_host
	.set XmagicX, .
halide_copy_to_host:
	.cfi_startproc
@ BB#0:                                 @ %entry
	sfi_return_preamble lr, 

	bx	lr
.Ltmp55:
	.size	halide_copy_to_host, .Ltmp55-halide_copy_to_host
	.cfi_endproc

	.section	.data.rel.ro,"aw",%progbits
	.align	2
.LCPI12_0:
	.long	.Lstr34(GOTOFF)
.LCPI12_1:
	.long	.Lstr35(GOTOFF)
.LCPI12_2:
	.long	.Lstr38(GOTOFF)
.LCPI12_3:
	.long	.Lstr39(GOTOFF)
.LCPI12_4:
	.long	.Lstr40(GOTOFF)
.LCPI12_5:
	.long	.Lstr41(GOTOFF)
.LCPI12_6:
	.long	.Lstr42(GOTOFF)
.LCPI12_7:
	.long	.Lstr43(GOTOFF)
.LCPI12_8:
	.long	.Lstr37(GOTOFF)
.LCPI12_9:
	.long	.Lstr36(GOTOFF)
.LCPI12_10:
	.long	.Lstr33(GOTOFF)
.LCPI12_11:
	.long	.Lstr(GOTOFF)
	.text
	.globl	halide_game_of_life
	.align	2
	.type	halide_game_of_life,%function
	.align	4                       @ @halide_game_of_life
	.set XmagicX, .
halide_game_of_life:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset lr, -4
.Ltmp61:
	.cfi_offset r11, -8
.Ltmp62:
	.cfi_offset r10, -12
.Ltmp63:
	.cfi_offset r8, -16
.Ltmp64:
	.cfi_offset r7, -20
.Ltmp65:
	.cfi_offset r6, -24
.Ltmp66:
	.cfi_offset r5, -28
.Ltmp67:
	.cfi_offset r4, -32
	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
.Ltmp68:
	.cfi_def_cfa_offset 96
.Ltmp69:
	.cfi_offset d15, -40
.Ltmp70:
	.cfi_offset d14, -48
.Ltmp71:
	.cfi_offset d13, -56
.Ltmp72:
	.cfi_offset d12, -64
.Ltmp73:
	.cfi_offset d11, -72
.Ltmp74:
	.cfi_offset d10, -80
.Ltmp75:
	.cfi_offset d9, -88
.Ltmp76:
	.cfi_offset d8, -96
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #64
	sfi_data_mask sp, 

.Ltmp77:
	.cfi_def_cfa_offset 160
	cmp	r0, #0
	beq	.LBB12_1
@ BB#3:                                 @ %assert succeeded: buffer argument p0 is NULL
	sfi_load_store_preamble r0, 

	ldm	r0, {r3, r7}
	mov	r10, #0
	mov	lr, #0
	sfi_load_store_preamble r0, 

	ldr	r2, [r0, #8]
	orr	r3, r3, r7
	orrs	r3, r2, r3
	moveq	r10, #1
	cmp	r1, #0
	beq	.LBB12_4
@ BB#5:                                 @ %assert succeeded: buffer argument f3 is NULL
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #16]
	sfi_load_store_preamble r1, 

	ldr	r5, [r1, #16]
	sfi_load_store_preamble r1, 

	ldr	r4, [r1, #12]
	str	r3, [sp, #20]           @ 4-byte Spill
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #12]
	str	r5, [sp, #36]           @ 4-byte Spill
	sfi_load_store_preamble r1, 

	ldr	r5, [r1, #44]
	str	r3, [sp, #40]           @ 4-byte Spill
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #60]
	add	r6, r5, r4
	str	r4, [sp, #60]           @ 4-byte Spill
	sub	r4, r4, #1
	bfc	r4, #0, #2
	sub	r11, r6, #4
	str	r3, [sp, #16]           @ 4-byte Spill
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #44]
	add	r4, r5, r4
	add	r7, r4, #4
	sfi_load_store_preamble r1, 

	ldr	r12, [r1, #8]
	cmp	r7, r6
	str	r5, [sp, #52]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	movge	r7, r6
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #48]
	cmp	r4, r11
	movge	r4, r11
	add	r6, r4, #2
	add	r4, r4, #3
	str	r3, [sp, #28]           @ 4-byte Spill
	cmp	r4, r7
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #28]
	mov	r8, r4
	movlt	r8, r7
	cmp	r8, r6
	str	r3, [sp, #24]           @ 4-byte Spill
	movlt	r8, r4
	sfi_load_store_preamble r0, 

	ldr	r3, [r0, #32]
	str	r3, [sp, #56]           @ 4-byte Spill
	sfi_load_store_preamble r1, 

	ldr	r3, [r1]
	str	r3, [sp, #48]           @ 4-byte Spill
	sfi_load_store_preamble r1, 

	ldr	r3, [r1, #4]
	ldr	r4, [sp, #48]           @ 4-byte Reload
	orr	r6, r4, r3
	sfi_load_store_preamble r1, 

	ldr	r4, [r1, #32]
	orrs	r3, r12, r6
	sfi_load_store_preamble r1, 

	ldr	r3, [r1, #60]
	sfi_load_store_preamble r1, 

	ldr	r6, [r1, #28]
	moveq	lr, #1
	cmp	r5, r11
	str	r4, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	sfi_load_store_preamble r1, 

	ldr	r3, [r1, #48]
	str	r6, [sp, #12]           @ 4-byte Spill
	mov	r6, r11
	movlt	r6, r5
	cmp	lr, #0
	beq	.LBB12_7
@ BB#6:                                 @ %true_bb
	mov	r5, #4
	sub	r4, r7, r6
	sfi_load_store_preamble r1, 

	str	r5, [r1, #60]
	mov	r5, #1
	sfi_load_store_preamble r1, 

	str	r6, [r1, #44]
	sfi_load_store_preamble r1, 

	str	r4, [r1, #12]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #28]
	ldr	r5, [sp, #36]           @ 4-byte Reload
	sfi_load_store_preamble r1, 

	str	r3, [r1, #48]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #16]
	mov	r5, #0
	sfi_load_store_preamble r1, 

	str	r4, [r1, #32]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #52]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #20]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #36]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #56]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #24]
	sfi_load_store_preamble r1, 

	str	r5, [r1, #40]
.LBB12_7:                               @ %after_bb
	ldr	r4, [sp, #36]           @ 4-byte Reload
	cmp	r10, #1
	bne	.LBB12_11
@ BB#8:                                 @ %after_bb42.thread
	mov	r1, #4
	mov	r2, #1
	sfi_load_store_preamble r0, 

	str	r1, [r0, #60]
	sub	r1, r6, #1
	sfi_load_store_preamble r0, 

	str	r1, [r0, #44]
	sub	r1, r8, r6
	add	r1, r1, #2
	sfi_load_store_preamble r0, 

	str	r1, [r0, #12]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #28]
	sub	r2, r3, #1
	sfi_load_store_preamble r0, 

	str	r2, [r0, #48]
	add	r2, r4, #2
	sfi_load_store_preamble r0, 

	str	r2, [r0, #16]
	mov	r2, #0
	sfi_load_store_preamble r0, 

	str	r1, [r0, #32]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #52]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #20]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #36]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #56]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #24]
	sfi_load_store_preamble r0, 

	str	r2, [r0, #40]
	b	.LBB12_9
.LBB12_1:                               @ %assert failed: buffer argument p0 is NULL
	movw	r0, :lower16:(.LCPI12_11-(.LPC12_12+8))
	movt	r0, :upper16:(.LCPI12_11-(.LPC12_12+8))
.LPC12_12:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_4:                               @ %assert failed: buffer argument f3 is NULL
	movw	r0, :lower16:(.LCPI12_10-(.LPC12_14+8))
	movt	r0, :upper16:(.LCPI12_10-(.LPC12_14+8))
.LPC12_14:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_11:                              @ %after_bb42
	ldr	r0, [sp, #28]           @ 4-byte Reload
	cmp	lr, #0
	bne	.LBB12_9
@ BB#12:                                @ %true_bb56
	ldr	r1, [sp, #8]            @ 4-byte Reload
	cmp	r1, #4
	bne	.LBB12_13
@ BB#14:                                @ %assert succeeded: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	ldr	r1, [sp, #16]           @ 4-byte Reload
	cmp	r1, #4
	ldr	r1, [sp, #52]           @ 4-byte Reload
	bne	.LBB12_15
@ BB#16:                                @ %assert succeeded: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	mov	r5, r0
	cmp	r1, r6
	ble	.LBB12_18
@ BB#17:                                @ %assert failed: Output buffer f3 is accessed before the min in dimension 0
	movw	r0, :lower16:(.LCPI12_9-(.LPC12_17+8))
	movt	r0, :upper16:(.LCPI12_9-(.LPC12_17+8))
.LPC12_17:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_13:                              @ %assert failed: Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4
	movw	r0, :lower16:(.LCPI12_0-(.LPC12_15+8))
	movt	r0, :upper16:(.LCPI12_0-(.LPC12_15+8))
.LPC12_15:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_15:                              @ %assert failed: Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4
	movw	r0, :lower16:(.LCPI12_1-(.LPC12_16+8))
	movt	r0, :upper16:(.LCPI12_1-(.LPC12_16+8))
.LPC12_16:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_18:                              @ %assert succeeded: Output buffer f3 is accessed before the min in dimension 0
	ldr	r0, [sp, #60]           @ 4-byte Reload
	sub	r0, r7, r0
	mov	r7, r5
	cmp	r0, r1
	mov	r1, r3
	str	r1, [sp, #48]           @ 4-byte Spill
	ble	.LBB12_20
@ BB#19:                                @ %assert failed: Output buffer f3 is accessed beyond the extent in dimension 0
	movw	r0, :lower16:(.LCPI12_8-(.LPC12_18+8))
	movt	r0, :upper16:(.LCPI12_8-(.LPC12_18+8))
.LPC12_18:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_20:                              @ %assert succeeded: Output buffer f3 is accessed beyond the extent in dimension 0
	ldr	r3, [sp, #32]           @ 4-byte Reload
	cmp	r3, r6
	bge	.LBB12_21
@ BB#22:                                @ %assert succeeded: Input buffer p0 is accessed before the min in dimension 0
	ldr	r0, [sp, #40]           @ 4-byte Reload
	sub	r0, r8, r0
	cmp	r0, r3
	bge	.LBB12_23
@ BB#24:                                @ %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 0
	cmp	r7, r1
	bge	.LBB12_25
@ BB#26:                                @ %assert succeeded: Input buffer p0 is accessed before the min in dimension 1
	ldr	r6, [sp, #20]           @ 4-byte Reload
	add	r0, r1, r4
	str	r0, [sp, #40]           @ 4-byte Spill
	sub	r0, r0, r6
	cmp	r0, r7
	bge	.LBB12_27
@ BB#28:                                @ %assert succeeded: Input buffer p0 is accessed beyond the extent in dimension 1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB12_29
@ BB#30:                                @ %assert succeeded: Static constraint violated: f3.stride.0 == 1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB12_31
@ BB#32:                                @ %produce f3
	cmp	r4, #1
	blt	.LBB12_9
@ BB#33:                                @ %for f3.s0.v1.preheader
	ldr	r0, [sp, #60]           @ 4-byte Reload
	add	r0, r0, #3
	asr	r0, r0, #2
	str	r0, [sp, #36]           @ 4-byte Spill
	cmp	r0, #0
	ble	.LBB12_9
@ BB#34:
	ldr	r0, [sp, #56]           @ 4-byte Reload
	mov	r6, r1
	vmov.i32	q11, #0x1f
	vmov.i32	q8, #0x1
	mla	r0, r7, r0, r3
	vmov.i32	q7, #0x2
	vmov.i32	q10, #0x3
	vneg.s32	q11, q11
	vmov.i32	q12, #0xff
	str	r0, [sp, #32]           @ 4-byte Spill
.LBB12_37:                              @ %for f3.s0.v0.v0.preheader.us
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB12_35 Depth 2
	ldr	r3, [sp, #56]           @ 4-byte Reload
	sub	r1, r6, r1
	ldr	r7, [sp, #44]           @ 4-byte Reload
	ldr	r5, [sp, #32]           @ 4-byte Reload
	mul	r0, r6, r3
	mul	r1, r1, r7
	sub	r7, r6, #1
	add	r6, r6, #1
	mul	r7, r7, r3
	str	r6, [sp, #60]           @ 4-byte Spill
	mul	r4, r6, r3
	ldr	r3, [sp, #52]           @ 4-byte Reload
	sub	r6, r0, r5
	sub	r0, r1, r3
	sub	r8, r7, r5
	mov	lr, r3
	ldr	r1, [sp, #36]           @ 4-byte Reload
	sub	r10, r4, r5
	mov	r5, r12
.LBB12_35:                              @ %for f3.s0.v0.v0.us
                                        @   Parent Loop BB12_37 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	cmp	lr, r11
	mov	r4, r11
	movlt	r4, lr
	vorr	q9, q11, q11
	add	r7, r8, r4
	vorr	q11, q12, q12
	add	r7, r2, r7, lsl #2
	vorr	q12, q10, q10
	vorr	q10, q7, q7
	add	lr, lr, #4
	subs	r1, r1, #1
	sub	r3, r7, #4
	sfi_load_store_preamble r7, 

	vld1.32	{d30, d31}, [r7]
	sfi_load_store_preamble r3, 

	vld1.32	{d0, d1}, [r3]
	add	r3, r7, #4
	sfi_load_store_preamble r3, 

	vld1.32	{d28, d29}, [r3]
	add	r3, r6, r4
	vshr.u32	q13, q0, #16
	add	r12, r2, r3, lsl #2
	vshr.u32	q2, q15, #16
	vshr.u32	q5, q0, #8
	vshr.u32	q1, q15, #8
	sub	r3, r12, #4
	vand	q3, q2, q8
	vshr.u32	q6, q14, #8
	vand	q13, q13, q8
	vshr.u32	q7, q14, #16
	vand	q2, q1, q8
	vand	q5, q5, q8
	vand	q1, q6, q8
	vadd.i32	q6, q13, q3
	sfi_load_store_preamble r3, 

	vld1.32	{d6, d7}, [r3]
	add	r3, r12, #4
	vand	q4, q15, q8
	vand	q15, q7, q8
	vand	q7, q0, q8
	vadd.i32	q2, q5, q2
	sfi_load_store_preamble r3, 

	vld1.32	{d0, d1}, [r3]
	add	r3, r10, r4
	vshr.u32	q13, q3, #16
	add	r7, r2, r3, lsl #2
	vadd.i32	q7, q7, q4
	vadd.i32	q4, q2, q1
	vand	q1, q13, q8
	sub	r3, r7, #4
	vshr.u32	q13, q0, #8
	vadd.i32	q5, q6, q15
	vand	q14, q14, q8
	vshr.u32	q6, q0, #16
	vand	q2, q13, q8
	vshr.u32	q13, q3, #8
	vadd.i32	q15, q7, q14
	vand	q14, q6, q8
	vand	q6, q3, q8
	vand	q13, q13, q8
	sfi_load_store_preamble r3, 

	vld1.32	{d6, d7}, [r3]
	add	r3, r7, #4
	vadd.i32	q4, q4, q13
	vadd.i32	q6, q15, q6
	vshr.u32	q13, q3, #16
	sfi_load_store_preamble r7, 

	vld1.32	{d30, d31}, [r7]
	vadd.i32	q5, q5, q1
	vand	q1, q13, q8
	vand	q0, q0, q8
	vshr.u32	q13, q15, #8
	vadd.i32	q4, q4, q2
	vadd.i32	q2, q6, q0
	vand	q0, q13, q8
	vshr.u32	q13, q3, #8
	vand	q6, q3, q8
	vand	q13, q13, q8
	sfi_load_store_preamble r3, 

	vld1.32	{d6, d7}, [r3]
	add	r3, r0, r4
	vadd.i32	q5, q5, q14
	add	r7, r5, r3, lsl #2
	vshr.u32	q14, q15, #16
	vadd.i32	q4, q4, q13
	vshr.u32	q13, q3, #8
	vadd.i32	q1, q5, q1
	vand	q14, q14, q8
	vadd.i32	q2, q2, q6
	vand	q5, q13, q8
	vshr.u32	q6, q3, #16
	vadd.i32	q13, q4, q0
	sfi_load_store_preamble r12, 

	vld1.32	{d8, d9}, [r12]
	vand	q15, q15, q8
	vadd.i32	q1, q1, q14
	vadd.i32	q14, q13, q5
	vand	q0, q6, q8
	vshr.u32	q13, q4, #16
	vorr	q7, q10, q10
	vtst.32	q6, q13, q8
	vshr.u32	q13, q4, #8
	vand	q3, q3, q8
	vadd.i32	q15, q2, q15
	vadd.i32	q5, q1, q0
	vorr	q10, q12, q12
	vadd.i32	q15, q15, q3
	vceq.i32	q3, q14, q7
	vceq.i32	q2, q5, q7
	vtst.32	q13, q13, q8
	vceq.i32	q0, q15, q7
	vceq.i32	q1, q14, q10
	vceq.i32	q14, q5, q10
	vtst.32	q5, q4, q8
	vmovn.i32	d8, q13
	vmovn.i32	d6, q3
	vmovn.i32	d5, q2
	vmovn.i32	d7, q6
	vceq.i32	q15, q15, q10
	vmovn.i32	d27, q14
	vmovn.i32	d0, q0
	vand	d28, d5, d7
	vmovn.i32	d1, q1
	vand	d26, d6, d8
	vmovn.i32	d4, q5
	vorr	d26, d26, d1
	vorr	d27, d28, d27
	vmovn.i32	d29, q15
	vand	d30, d0, d4
	vmovl.u16	q0, d27
	vorr	d28, d30, d29
	vmovl.u16	q15, d26
	vorr	q12, q11, q11
	vmovl.u16	q13, d28
	vorr	q11, q9, q9
	vshl.i32	q15, q15, #31
	vshl.i32	q14, q0, #31
	vshl.i32	q13, q13, #31
	vshl.s32	q15, q15, q11
	vshl.s32	q0, q14, q11
	vand	q14, q12, q15
	vand	q15, q12, q0
	vshl.s32	q13, q13, q11
	vshl.i32	q14, q14, #8
	vshl.i32	q15, q15, #16
	vand	q13, q12, q13
	vadd.i32	q14, q15, q14
	vmov.i32	q9, #0xff000000
	vadd.i32	q13, q14, q13
	vadd.i32	q13, q13, q9
	sfi_load_store_preamble r7, 

	vst1.32	{d26, d27}, [r7]
	bne	.LBB12_35
@ BB#36:                                @ %end for f3.s0.v0.v0.us
                                        @   in Loop: Header=BB12_37 Depth=1
	ldr	r6, [sp, #60]           @ 4-byte Reload
	mov	r12, r5
	ldr	r1, [sp, #48]           @ 4-byte Reload
	ldr	r0, [sp, #40]           @ 4-byte Reload
	cmp	r6, r0
	bne	.LBB12_37
.LBB12_9:                               @ %after_bb58
	mov	r0, #0
	b	.LBB12_10
.LBB12_21:                              @ %assert failed: Input buffer p0 is accessed before the min in dimension 0
	movw	r0, :lower16:(.LCPI12_2-(.LPC12_19+8))
	movt	r0, :upper16:(.LCPI12_2-(.LPC12_19+8))
.LPC12_19:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_23:                              @ %assert failed: Input buffer p0 is accessed beyond the extent in dimension 0
	movw	r0, :lower16:(.LCPI12_3-(.LPC12_20+8))
	movt	r0, :upper16:(.LCPI12_3-(.LPC12_20+8))
.LPC12_20:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_25:                              @ %assert failed: Input buffer p0 is accessed before the min in dimension 1
	movw	r0, :lower16:(.LCPI12_4-(.LPC12_21+8))
	movt	r0, :upper16:(.LCPI12_4-(.LPC12_21+8))
.LPC12_21:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_27:                              @ %assert failed: Input buffer p0 is accessed beyond the extent in dimension 1
	movw	r0, :lower16:(.LCPI12_5-(.LPC12_22+8))
	movt	r0, :upper16:(.LCPI12_5-(.LPC12_22+8))
.LPC12_22:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_29:                              @ %assert failed: Static constraint violated: f3.stride.0 == 1
	movw	r0, :lower16:(.LCPI12_6-(.LPC12_23+8))
	movt	r0, :upper16:(.LCPI12_6-(.LPC12_23+8))
.LPC12_23:
	add	r0, pc, r0
	b	.LBB12_2
.LBB12_31:                              @ %assert failed: Static constraint violated: p0.stride.0 == 1
	movw	r0, :lower16:(.LCPI12_7-(.LPC12_24+8))
	movt	r0, :upper16:(.LCPI12_7-(.LPC12_24+8))
.LPC12_24:
	add	r0, pc, r0
.LBB12_2:                               @ %assert failed: buffer argument p0 is NULL
	movw	r1, :lower16:(_GLOBAL_OFFSET_TABLE_-(.LPC12_13+8))
	sfi_load_store_preamble r0, 

	ldr	r0, [r0]
	movt	r1, :upper16:(_GLOBAL_OFFSET_TABLE_-(.LPC12_13+8))
.LPC12_13:
	add	r1, pc, r1
	add	r1, r0, r1
	mov	r0, #0
	sfi_call_preamble 

	bl	halide_error(PLT)
	mvn	r0, #0
.LBB12_10:                              @ %after_bb58
	sfi_nop_if_at_bundle_end

	add	sp, sp, #64
	sfi_data_mask sp, 

	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp78:
	.size	halide_game_of_life, .Ltmp78-halide_game_of_life
	.cfi_endproc

	.globl	halide_game_of_life_jit_wrapper
	.align	2
	.type	halide_game_of_life_jit_wrapper,%function
	.align	4                       @ @halide_game_of_life_jit_wrapper
	.set XmagicX, .
halide_game_of_life_jit_wrapper:
	.cfi_startproc
@ BB#0:                                 @ %entry
	push	{lr}
.Ltmp81:
	.cfi_def_cfa_offset 4
.Ltmp82:
	.cfi_offset lr, -4
	sfi_nop_if_at_bundle_end

	sub	sp, sp, #12
	sfi_data_mask sp, 

.Ltmp83:
	.cfi_def_cfa_offset 16
	mov	r1, r0
	sfi_load_store_preamble r1, 

	ldm	r1, {r0, r1}
	sfi_call_preamble 

	bl	halide_game_of_life(PLT)
	sfi_nop_if_at_bundle_end

	add	sp, sp, #12
	sfi_data_mask sp, 

	pop	{lr}
	sfi_return_preamble lr, 

	bx	lr
.Ltmp84:
	.size	halide_game_of_life_jit_wrapper, .Ltmp84-halide_game_of_life_jit_wrapper
	.cfi_endproc

	.type	halide_reference_clock_inited,%object @ @halide_reference_clock_inited
	.section	.bss.halide_reference_clock_inited,"aGw",%nobits,halide_reference_clock_inited,comdat
	.weak	halide_reference_clock_inited
halide_reference_clock_inited:
	.byte	0                       @ 0x0
	.size	halide_reference_clock_inited, 1

	.type	halide_reference_clock,%object @ @halide_reference_clock
	.section	.bss.halide_reference_clock,"aGw",%nobits,halide_reference_clock,comdat
	.weak	halide_reference_clock
	.align	2
halide_reference_clock:
	.zero	8
	.size	halide_reference_clock, 8

	.type	halide_work_queue,%object @ @halide_work_queue
	.section	.bss.halide_work_queue,"aGw",%nobits,halide_work_queue,comdat
	.weak	halide_work_queue
	.align	2
halide_work_queue:
	.zero	352
	.size	halide_work_queue, 352

	.type	halide_threads,%object  @ @halide_threads
	.section	.bss.halide_threads,"aGw",%nobits,halide_threads,comdat
	.weak	halide_threads
	.align	2
halide_threads:
	.long	0                       @ 0x0
	.size	halide_threads, 4

	.type	halide_thread_pool_initialized,%object @ @halide_thread_pool_initialized
	.section	.bss.halide_thread_pool_initialized,"aGw",%nobits,halide_thread_pool_initialized,comdat
	.weak	halide_thread_pool_initialized
halide_thread_pool_initialized:
	.byte	0                       @ 0x0
	.size	halide_thread_pool_initialized, 1

	.type	halide_custom_do_task,%object @ @halide_custom_do_task
	.section	.bss.halide_custom_do_task,"aGw",%nobits,halide_custom_do_task,comdat
	.weak	halide_custom_do_task
	.align	2
halide_custom_do_task:
	.long	0
	.size	halide_custom_do_task, 4

	.type	halide_custom_do_par_for,%object @ @halide_custom_do_par_for
	.section	.bss.halide_custom_do_par_for,"aGw",%nobits,halide_custom_do_par_for,comdat
	.weak	halide_custom_do_par_for
	.align	2
halide_custom_do_par_for:
	.long	0
	.size	halide_custom_do_par_for, 4

	.type	halide_custom_trace,%object @ @halide_custom_trace
	.section	.bss.halide_custom_trace,"aGw",%nobits,halide_custom_trace,comdat
	.weak	halide_custom_trace
	.align	2
halide_custom_trace:
	.long	0
	.size	halide_custom_trace, 4

	.type	halide_trace_file,%object @ @halide_trace_file
	.section	.bss.halide_trace_file,"aGw",%nobits,halide_trace_file,comdat
	.weak	halide_trace_file
	.align	2
halide_trace_file:
	.long	0
	.size	halide_trace_file, 4

	.type	halide_trace_initialized,%object @ @halide_trace_initialized
	.section	.bss.halide_trace_initialized,"aGw",%nobits,halide_trace_initialized,comdat
	.weak	halide_trace_initialized
halide_trace_initialized:
	.byte	0                       @ 0x0
	.size	halide_trace_initialized, 1

	.type	_ZZ12halide_traceE3ids,%object @ @_ZZ12halide_traceE3ids
	.section	.data._ZZ12halide_traceE3ids,"aGw",%progbits,_ZZ12halide_traceE3ids,comdat
	.weak	_ZZ12halide_traceE3ids
	.align	2
_ZZ12halide_traceE3ids:
	.long	1                       @ 0x1
	.size	_ZZ12halide_traceE3ids, 4

	.type	halide_custom_malloc,%object @ @halide_custom_malloc
	.section	.bss.halide_custom_malloc,"aGw",%nobits,halide_custom_malloc,comdat
	.weak	halide_custom_malloc
	.align	2
halide_custom_malloc:
	.long	0
	.size	halide_custom_malloc, 4

	.type	halide_custom_free,%object @ @halide_custom_free
	.section	.bss.halide_custom_free,"aGw",%nobits,halide_custom_free,comdat
	.weak	halide_custom_free
	.align	2
halide_custom_free:
	.long	0
	.size	halide_custom_free, 4

	.type	halide_error_handler,%object @ @halide_error_handler
	.section	.bss.halide_error_handler,"aGw",%nobits,halide_error_handler,comdat
	.weak	halide_error_handler
	.align	2
halide_error_handler:
	.long	0
	.size	halide_error_handler, 4

	.type	.L.str30,%object        @ @.str30
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str30:
	.asciz	 "Error: %s\n"
	.size	.L.str30, 11

	.type	.Lstr,%object           @ @str
	.section	.rodata,"a",%progbits
	.align	5
.Lstr:
	.asciz	 "buffer argument p0 is NULL"
	.size	.Lstr, 27

	.type	.Lstr33,%object         @ @str33
	.align	5
.Lstr33:
	.asciz	 "buffer argument f3 is NULL"
	.size	.Lstr33, 27

	.type	.Lstr34,%object         @ @str34
	.align	5
.Lstr34:
	.asciz	 "Output buffer f3 has type int32, but elem_size of the buffer_t passed in is not 4"
	.size	.Lstr34, 82

	.type	.Lstr35,%object         @ @str35
	.align	5
.Lstr35:
	.asciz	 "Input buffer p0 has type uint32, but elem_size of the buffer_t passed in is not 4"
	.size	.Lstr35, 82

	.type	.Lstr36,%object         @ @str36
	.align	5
.Lstr36:
	.asciz	 "Output buffer f3 is accessed before the min in dimension 0"
	.size	.Lstr36, 59

	.type	.Lstr37,%object         @ @str37
	.align	5
.Lstr37:
	.asciz	 "Output buffer f3 is accessed beyond the extent in dimension 0"
	.size	.Lstr37, 62

	.type	.Lstr38,%object         @ @str38
	.align	5
.Lstr38:
	.asciz	 "Input buffer p0 is accessed before the min in dimension 0"
	.size	.Lstr38, 58

	.type	.Lstr39,%object         @ @str39
	.align	5
.Lstr39:
	.asciz	 "Input buffer p0 is accessed beyond the extent in dimension 0"
	.size	.Lstr39, 61

	.type	.Lstr40,%object         @ @str40
	.align	5
.Lstr40:
	.asciz	 "Input buffer p0 is accessed before the min in dimension 1"
	.size	.Lstr40, 58

	.type	.Lstr41,%object         @ @str41
	.align	5
.Lstr41:
	.asciz	 "Input buffer p0 is accessed beyond the extent in dimension 1"
	.size	.Lstr41, 61

	.type	.Lstr42,%object         @ @str42
	.align	5
.Lstr42:
	.asciz	 "Static constraint violated: f3.stride.0 == 1"
	.size	.Lstr42, 45

	.type	.Lstr43,%object         @ @str43
	.align	5
.Lstr43:
	.asciz	 "Static constraint violated: p0.stride.0 == 1"
	.size	.Lstr43, 45



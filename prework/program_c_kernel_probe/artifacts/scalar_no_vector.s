	.text
	.file	"kernel_probe.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function main
.LCPI0_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$20, %r15d
	movl	$1000000, %eax                  # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_15
# %bb.1:
	movq	%rsi, %r14
	movl	%edi, %r12d
	movq	8(%rsi), %rbp
	movq	$0, 16(%rsp)
	callq	__errno_location@PLT
	movq	%rax, %rbx
	movl	$0, (%rax)
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movl	$10, %edx
	callq	strtoull@PLT
	cmpl	$0, (%rbx)
	je	.LBB0_3
.LBB0_2:
	movl	$2, %r14d
	jmp	.LBB0_35
.LBB0_3:
	movq	16(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.LBB0_2
# %bb.4:
	cmpb	$0, (%rcx)
	jne	.LBB0_2
# %bb.5:
	testq	%rax, %rax
	je	.LBB0_2
# %bb.6:
	cmpq	$20000001, %rax                 # imm = 0x1312D01
	jae	.LBB0_2
# %bb.7:
	cmpl	$3, %r12d
	jb	.LBB0_15
# %bb.8:
	movq	%rax, %r13
	movq	16(%r14), %rbp
	movq	$0, 16(%rsp)
	movl	$0, (%rbx)
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movl	$10, %edx
	callq	strtoull@PLT
	cmpl	$0, (%rbx)
	jne	.LBB0_2
# %bb.10:
	movq	%rax, %r15
	movq	16(%rsp), %rax
	cmpq	%rbp, %rax
	je	.LBB0_2
# %bb.11:
	cmpb	$0, (%rax)
	jne	.LBB0_2
# %bb.12:
	testq	%r15, %r15
	je	.LBB0_2
# %bb.13:
	cmpq	$10001, %r15                    # imm = 0x2711
	jae	.LBB0_2
# %bb.14:
	movl	$2, %r14d
	cmpl	$3, %r12d
	movq	%r13, %rax
	ja	.LBB0_35
.LBB0_15:
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	(,%rax,4), %rbp
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%r15, %r15
	je	.LBB0_34
# %bb.16:
	testq	%r13, %r13
	je	.LBB0_34
# %bb.17:
	testq	%r12, %r12
	je	.LBB0_34
# %bb.18:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %r14
	movabsq	$5895351198814392785, %r9       # imm = 0x51D07EAE2F8151D1
	movabsq	$595056260442243601, %r8        # imm = 0x842108421084211
	addq	$-1, %r14
	je	.LBB0_36
# %bb.19:
	movq	%rax, %r10
	andq	$-2, %r10
	movl	$1, %ebp
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	mulq	%r9
	movq	%rbp, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$6, %rax
	imull	$97, %eax, %r11d
	movq	%rbp, %rax
	mulq	%r8
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$4, %rsi
	movl	%esi, %ebx
	shll	$5, %ebx
	movq	%rdi, %rax
	mulq	%r8
	movq	%rdi, %rcx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$4, %rcx
	movl	%ecx, %eax
	shll	$5, %eax
	subl	%eax, %ecx
	movq	%rdi, %rax
	mulq	%r9
	movq	%rdi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$6, %rax
	imull	$-97, %eax, %eax
	addl	%edi, %eax
	movl	%eax, (%r15,%rdi,4)
	addl	%edi, %ecx
	movl	%ecx, (%r13,%rdi,4)
	negl	%r11d
	leal	(%rdi,%r11), %eax
	addl	$1, %eax
	movl	%eax, 4(%r15,%rdi,4)
	subl	%ebx, %esi
	leal	(%rdi,%rsi), %eax
	addl	$1, %eax
	movl	%eax, 4(%r13,%rdi,4)
	addq	$2, %rdi
	addq	$2, %rbp
	cmpq	%rdi, %r10
	jne	.LBB0_20
# %bb.21:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	testb	$1, %cl
	je	.LBB0_23
.LBB0_22:
	movq	%rdi, %rax
	mulq	%r9
	movq	%rdi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$6, %rax
	imull	$97, %eax, %eax
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, (%r15,%rdi,4)
	movq	%rdi, %rax
	mulq	%r8
	movq	%rdi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$4, %rax
	movl	%eax, %edx
	shll	$5, %edx
	subl	%edx, %eax
	addl	%edi, %eax
	movl	%eax, (%r13,%rdi,4)
.LBB0_23:
	testq	%r14, %r14
	je	.LBB0_37
# %bb.24:
	movq	%rcx, %r8
	andq	$-2, %r8
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %edx
	movl	4(%r15,%rax,4), %esi
	movl	(%r13,%rax,4), %edi
	leal	(%rdi,%rdx,2), %ebx
	cmpl	$101, %ebx
	leal	-3(%rdi,%rdx,2), %edx
	cmovll	%ebx, %edx
	movl	4(%r13,%rax,4), %edi
	movslq	%edx, %rdx
	addq	%rbp, %rdx
	leal	(%rdi,%rsi,2), %ebp
	cmpl	$101, %ebp
	leal	-3(%rdi,%rsi,2), %esi
	cmovll	%ebp, %esi
	movslq	%esi, %rbp
	addq	%rdx, %rbp
	addq	$2, %rax
	cmpq	%rax, %r8
	jne	.LBB0_25
# %bb.26:
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	testb	$1, %cl
	je	.LBB0_28
.LBB0_27:
	movl	(%r15,%rax,4), %esi
	movl	(%r13,%rax,4), %eax
	leal	(%rax,%rsi,2), %edx
	cmpl	$101, %edx
	leal	-3(%rax,%rsi,2), %eax
	cmovll	%edx, %eax
	cltq
	addq	%rax, %rbp
.LBB0_28:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rcx, %r14
	callq	transform
	leaq	16(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	jne	.LBB0_33
# %bb.29:
	cmpq	$0, 32(%rsp)                    # 8-byte Folded Reload
	je	.LBB0_32
# %bb.30:
	movq	32(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	transform
	#APP
	#NO_APP
	addq	$-1, %rbx
	jne	.LBB0_31
.LBB0_32:
	leaq	56(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	je	.LBB0_38
.LBB0_33:
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$5, %r14d
	jmp	.LBB0_35
.LBB0_34:
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$3, %r14d
.LBB0_35:
	movl	%r14d, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_36:
	.cfi_def_cfa_offset 128
	xorl	%edi, %edi
	movq	40(%rsp), %rcx                  # 8-byte Reload
	testb	$1, %cl
	jne	.LBB0_22
	jmp	.LBB0_23
.LBB0_37:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	testb	$1, %cl
	jne	.LBB0_27
	jmp	.LBB0_28
.LBB0_38:
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, %eax
	andl	$7, %eax
	cmpq	$7, 48(%rsp)                    # 8-byte Folded Reload
	jae	.LBB0_40
# %bb.39:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB0_42
.LBB0_40:
	movq	%rsi, %rbx
	andq	$-8, %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	movslq	(%r12,%rdx,4), %rdi
	addq	%rcx, %rdi
	movslq	4(%r12,%rdx,4), %rcx
	addq	%rdi, %rcx
	movslq	8(%r12,%rdx,4), %rdi
	addq	%rcx, %rdi
	movslq	12(%r12,%rdx,4), %rcx
	addq	%rdi, %rcx
	movslq	16(%r12,%rdx,4), %rdi
	addq	%rcx, %rdi
	movslq	20(%r12,%rdx,4), %rcx
	addq	%rdi, %rcx
	movslq	24(%r12,%rdx,4), %rdi
	addq	%rcx, %rdi
	movslq	28(%r12,%rdx,4), %rcx
	addq	%rdi, %rcx
	addq	$8, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB0_41
.LBB0_42:
	testq	%rax, %rax
	je	.LBB0_45
# %bb.43:
	leaq	(%r12,%rdx,4), %rdx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rdx,%rbx,4), %rdi
	addq	%rdi, %rcx
	addq	$1, %rbx
	cmpq	%rbx, %rax
	jne	.LBB0_44
.LBB0_45:
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	cmpq	%rbp, %rcx
	setne	%r14b
	sete	%r9b
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	subq	16(%rsp), %rax
	subq	24(%rsp), %rdx
	leaq	1000000000(%rdx), %rbx
	movq	%rdx, %rdi
	sarq	$63, %rdi
	addq	%rax, %rdi
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rbx
	imulq	$1000000000, %rdi, %rax         # imm = 0x3B9ACA00
	addq	%rbx, %rax
	movq	%rax, %xmm1
	movdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rsi, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4                    # xmm4 = xmm4[1],xmm1[1]
	addsd	%xmm1, %xmm4
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm2, %xmm0
	movq	%rax, (%rsp)
	leaq	.L.str(%rip), %rdi
	movq	%rbp, %r8
	movb	$1, %al
	callq	printf@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	shll	$2, %r14d
	jmp	.LBB0_35
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function transform
	.type	transform,@function
transform:                              # @transform
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testq	%rcx, %rcx
	je	.LBB1_5
# %bb.1:
	cmpq	$1, %rcx
	jne	.LBB1_6
# %bb.2:
	xorl	%ebx, %ebx
	jmp	.LBB1_3
.LBB1_6:
	movq	%rcx, %r8
	andq	$-2, %r8
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %r9d
	movl	(%rsi,%rbx,4), %r10d
	leal	(%r10,%r9,2), %r11d
	cmpl	$101, %r11d
	leal	-3(%r10,%r9,2), %eax
	cmovll	%r11d, %eax
	movl	%eax, (%rdx,%rbx,4)
	movl	4(%rdi,%rbx,4), %r9d
	movl	4(%rsi,%rbx,4), %r10d
	leal	(%r10,%r9,2), %r11d
	cmpl	$101, %r11d
	leal	-3(%r10,%r9,2), %eax
	cmovll	%r11d, %eax
	movl	%eax, 4(%rdx,%rbx,4)
	addq	$2, %rbx
	cmpq	%rbx, %r8
	jne	.LBB1_7
.LBB1_3:
	testb	$1, %cl
	je	.LBB1_5
# %bb.4:
	movl	(%rdi,%rbx,4), %ecx
	movl	(%rsi,%rbx,4), %esi
	leal	(%rsi,%rcx,2), %edi
	cmpl	$101, %edi
	leal	-3(%rsi,%rcx,2), %ecx
	cmovll	%edi, %ecx
	movl	%ecx, (%rdx,%rbx,4)
.LBB1_5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	transform, .Lfunc_end1-transform
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mode=independent n=%zu repeats=%zu checksum=%ld reference=%ld verified=%d elapsed_ns=%lu ns_per_element=%.6f\n"
	.size	.L.str, 110

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig

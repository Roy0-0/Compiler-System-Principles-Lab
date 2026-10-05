	.text
	.file	"kernel_probe.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function main
.LCPI0_0:
	.long	100                             # 0x64
	.long	100                             # 0x64
	.zero	4
	.zero	4
.LCPI0_1:
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.zero	4
	.zero	4
.LCPI0_2:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_3:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$20, %r13d
	movl	$1000000, %r12d                 # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_15
# %bb.1:
	movq	%rsi, %r14
	movl	%edi, %r15d
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
	jmp	.LBB0_38
.LBB0_3:
	movq	%rax, %r12
	movq	16(%rsp), %rax
	cmpq	%rbp, %rax
	je	.LBB0_2
# %bb.4:
	cmpb	$0, (%rax)
	jne	.LBB0_2
# %bb.5:
	testq	%r12, %r12
	je	.LBB0_2
# %bb.6:
	cmpq	$20000001, %r12                 # imm = 0x1312D01
	jae	.LBB0_2
# %bb.7:
	cmpl	$3, %r15d
	jb	.LBB0_15
# %bb.8:
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
	movq	%rax, %r13
	movq	16(%rsp), %rax
	cmpq	%rbp, %rax
	je	.LBB0_2
# %bb.11:
	cmpb	$0, (%rax)
	jne	.LBB0_2
# %bb.12:
	testq	%r13, %r13
	je	.LBB0_2
# %bb.13:
	cmpq	$10001, %r13                    # imm = 0x2711
	jae	.LBB0_2
# %bb.14:
	movl	$2, %r14d
	cmpl	$3, %r15d
	ja	.LBB0_38
.LBB0_15:
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	leaq	(,%r12,4), %rbp
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB0_20
# %bb.16:
	testq	%r13, %r13
	je	.LBB0_20
# %bb.17:
	testq	%r14, %r14
	je	.LBB0_20
# %bb.18:
	movabsq	$5895351198814392785, %r9       # imm = 0x51D07EAE2F8151D1
	movabsq	$595056260442243601, %r8        # imm = 0x842108421084211
	cmpq	$1, %r12
	jne	.LBB0_21
# %bb.19:
	xorl	%edi, %edi
	jmp	.LBB0_23
.LBB0_20:
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movl	$3, %r14d
	jmp	.LBB0_38
.LBB0_21:
	movq	%r12, %r10
	andq	$-2, %r10
	movl	$1, %ebp
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB0_22
.LBB0_23:
	testb	$1, %r12b
	je	.LBB0_25
# %bb.24:
	movq	%rdi, %rax
	mulq	%r9
	movq	%rdi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$6, %rax
	imull	$97, %eax, %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, (%r15,%rdi,4)
	movq	%rdi, %rax
	mulq	%r8
	movq	%rdi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$4, %rax
	movl	%eax, %ecx
	shll	$5, %ecx
	subl	%ecx, %eax
	addl	%edi, %eax
	movl	%eax, (%r13,%rdi,4)
.LBB0_25:
	cmpq	$4, %r12
	jae	.LBB0_27
# %bb.26:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	jmp	.LBB0_30
.LBB0_27:
	movq	%r12, %rax
	andq	$-4, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movdqa	.LCPI0_0(%rip), %xmm8           # xmm8 = <100,100,u,u>
	movdqa	.LCPI0_1(%rip), %xmm3           # xmm3 = <4294967293,4294967293,u,u>
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,4), %xmm4            # xmm4 = mem[0],zero
	movq	8(%r15,%rcx,4), %xmm5           # xmm5 = mem[0],zero
	paddd	%xmm4, %xmm4
	paddd	%xmm5, %xmm5
	movq	(%r13,%rcx,4), %xmm6            # xmm6 = mem[0],zero
	paddd	%xmm4, %xmm6
	movq	8(%r13,%rcx,4), %xmm4           # xmm4 = mem[0],zero
	paddd	%xmm5, %xmm4
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm8, %xmm5
	movdqa	%xmm4, %xmm7
	pcmpgtd	%xmm8, %xmm7
	movdqa	%xmm5, %xmm2
	pandn	%xmm6, %xmm2
	paddd	%xmm3, %xmm6
	pand	%xmm5, %xmm6
	por	%xmm2, %xmm6
	movdqa	%xmm7, %xmm2
	pandn	%xmm4, %xmm2
	paddd	%xmm3, %xmm4
	pand	%xmm7, %xmm4
	por	%xmm2, %xmm4
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm6, %xmm2
	punpckldq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	paddq	%xmm6, %xmm0
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm4, %xmm2
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	paddq	%xmm4, %xmm1
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_28
# %bb.29:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rbp
	jmp	.LBB0_31
.LBB0_30:
	movl	(%r15,%rax,4), %ecx
	movl	(%r13,%rax,4), %edx
	leal	(%rdx,%rcx,2), %esi
	cmpl	$101, %esi
	leal	-3(%rdx,%rcx,2), %ecx
	cmovll	%esi, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rbp
	addq	$1, %rax
.LBB0_31:
	cmpq	%rax, %r12
	jne	.LBB0_30
# %bb.32:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	transform
	leaq	16(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	jne	.LBB0_37
# %bb.33:
	cmpq	$0, 32(%rsp)                    # 8-byte Folded Reload
	je	.LBB0_36
# %bb.34:
	movq	32(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	transform
	#APP
	#NO_APP
	addq	$-1, %rbx
	jne	.LBB0_35
.LBB0_36:
	leaq	40(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	je	.LBB0_39
.LBB0_37:
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movl	$5, %r14d
.LBB0_38:
	movl	%r14d, %eax
	addq	$56, %rsp
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
.LBB0_39:
	.cfi_def_cfa_offset 112
	cmpq	$4, %r12
	jae	.LBB0_41
# %bb.40:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_48
.LBB0_41:
	movq	%r12, %rax
	andq	$-4, %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	testq	%rdx, %rdx
	je	.LBB0_44
# %bb.42:
	movq	%rcx, %rsi
	andq	$-2, %rsi
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rdx,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%r14,%rdx,4), %xmm3           # xmm3 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm2, %xmm4
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	paddq	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm3, %xmm0
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	paddq	%xmm1, %xmm3
	movq	16(%r14,%rdx,4), %xmm0          # xmm0 = mem[0],zero
	movq	24(%r14,%rdx,4), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm0, %xmm4
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddq	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	addq	$8, %rdx
	addq	$-2, %rsi
	jne	.LBB0_43
	jmp	.LBB0_45
.LBB0_44:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
.LBB0_45:
	testb	$1, %cl
	je	.LBB0_47
# %bb.46:
	movq	(%r14,%rdx,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%r14,%rdx,4), %xmm3           # xmm3 = mem[0],zero
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm2, %xmm0
	pcmpgtd	%xmm3, %xmm4
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	paddq	%xmm3, %xmm1
.LBB0_47:
	paddq	%xmm1, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rcx
	jmp	.LBB0_49
.LBB0_48:
	movslq	(%r14,%rax,4), %rdx
	addq	%rdx, %rcx
	addq	$1, %rax
.LBB0_49:
	cmpq	%rax, %r12
	jne	.LBB0_48
# %bb.50:
	movq	%r14, %rbx
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	cmpq	%rbp, %rcx
	setne	%r14b
	sete	%r9b
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	subq	16(%rsp), %rax
	subq	24(%rsp), %rdx
	leaq	1000000000(%rdx), %rsi
	movq	%rdx, %rdi
	sarq	$63, %rdi
	addq	%rax, %rdi
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rsi
	imulq	$1000000000, %rdi, %rax         # imm = 0x3B9ACA00
	addq	%rsi, %rax
	movq	%rax, %xmm1
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_3(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r12, %xmm1
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
	movq	%r12, %rsi
	movq	%rbp, %r8
	movb	$1, %al
	callq	printf@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	shll	$2, %r14d
	jmp	.LBB0_38
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function transform
.LCPI1_0:
	.long	100                             # 0x64
	.long	100                             # 0x64
	.long	100                             # 0x64
	.long	100                             # 0x64
.LCPI1_1:
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.text
	.p2align	4, 0x90
	.type	transform,@function
transform:                              # @transform
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testq	%rcx, %rcx
	je	.LBB1_12
# %bb.1:
	cmpq	$8, %rcx
	jae	.LBB1_3
# %bb.2:
	xorl	%r8d, %r8d
	jmp	.LBB1_8
.LBB1_3:
	leaq	(%rdx,%rcx,4), %r8
	leaq	(%rdi,%rcx,4), %rax
	cmpq	%rdx, %rax
	seta	%r11b
	leaq	(%rsi,%rcx,4), %rax
	cmpq	%rdi, %r8
	seta	%bl
	cmpq	%rdx, %rax
	seta	%r10b
	cmpq	%rsi, %r8
	seta	%r9b
	xorl	%r8d, %r8d
	testb	%bl, %r11b
	jne	.LBB1_8
# %bb.4:
	andb	%r9b, %r10b
	jne	.LBB1_8
# %bb.5:
	movq	%rcx, %r8
	andq	$-8, %r8
	xorl	%eax, %eax
	movdqa	.LCPI1_0(%rip), %xmm0           # xmm0 = [100,100,100,100]
	movdqa	.LCPI1_1(%rip), %xmm1           # xmm1 = [4294967293,4294967293,4294967293,4294967293]
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rax,4), %xmm2
	movdqu	16(%rdi,%rax,4), %xmm3
	paddd	%xmm2, %xmm2
	paddd	%xmm3, %xmm3
	movdqu	(%rsi,%rax,4), %xmm4
	paddd	%xmm2, %xmm4
	movdqu	16(%rsi,%rax,4), %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm0, %xmm3
	movdqa	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm3, %xmm6
	pandn	%xmm4, %xmm6
	paddd	%xmm1, %xmm4
	pand	%xmm3, %xmm4
	por	%xmm6, %xmm4
	movdqa	%xmm5, %xmm3
	pandn	%xmm2, %xmm3
	paddd	%xmm1, %xmm2
	pand	%xmm5, %xmm2
	por	%xmm3, %xmm2
	movdqu	%xmm4, (%rdx,%rax,4)
	movdqu	%xmm2, 16(%rdx,%rax,4)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.LBB1_6
# %bb.7:
	cmpq	%rcx, %r8
	je	.LBB1_12
.LBB1_8:
	movq	%r8, %rax
	notq	%rax
	testb	$1, %cl
	je	.LBB1_10
# %bb.9:
	movl	(%rdi,%r8,4), %r9d
	movl	(%rsi,%r8,4), %r10d
	leal	(%r10,%r9,2), %r11d
	cmpl	$101, %r11d
	leal	-3(%r10,%r9,2), %ebx
	cmovll	%r11d, %ebx
	movl	%ebx, (%rdx,%r8,4)
	orq	$1, %r8
.LBB1_10:
	addq	%rcx, %rax
	je	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r9d
	movl	(%rsi,%r8,4), %ebx
	leal	(%rbx,%r9,2), %eax
	cmpl	$101, %eax
	leal	-3(%rbx,%r9,2), %ebx
	cmovll	%eax, %ebx
	movl	%ebx, (%rdx,%r8,4)
	movl	4(%rdi,%r8,4), %r9d
	movl	4(%rsi,%r8,4), %ebx
	leal	(%rbx,%r9,2), %eax
	cmpl	$101, %eax
	leal	-3(%rbx,%r9,2), %ebx
	cmovll	%eax, %ebx
	movl	%ebx, 4(%rdx,%r8,4)
	addq	$2, %r8
	cmpq	%r8, %rcx
	jne	.LBB1_11
.LBB1_12:
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

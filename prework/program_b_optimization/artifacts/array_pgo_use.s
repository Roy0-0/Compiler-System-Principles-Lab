	.text
	.file	"array_transform.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function main
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
.LCPI0_1:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
.LCPI0_2:
	.long	1372618415                      # 0x51d07eaf
	.long	1372618415                      # 0x51d07eaf
	.long	1372618415                      # 0x51d07eaf
	.long	1372618415                      # 0x51d07eaf
.LCPI0_3:
	.long	97                              # 0x61
	.long	97                              # 0x61
	.long	97                              # 0x61
	.long	97                              # 0x61
.LCPI0_4:
	.long	138547333                       # 0x8421085
	.long	138547333                       # 0x8421085
	.long	138547333                       # 0x8421085
	.long	138547333                       # 0x8421085
.LCPI0_5:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
.LCPI0_6:
	.long	100                             # 0x64
	.long	100                             # 0x64
	.long	100                             # 0x64
	.long	100                             # 0x64
.LCPI0_7:
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
	.long	4294967293                      # 0xfffffffd
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$2, %edi
	jl	.LBB0_1
# %bb.2:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r12
	movl	$2, %ebp
	testl	%r12d, %r12d
	jg	.LBB0_3
	jmp	.LBB0_30
.LBB0_1:
	movl	$1000000, %r12d                 # imm = 0xF4240
.LBB0_3:
	movl	%r12d, %r13d
	leaq	(,%r13,4), %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB0_31
# %bb.4:
	testq	%r15, %r15
	je	.LBB0_31
# %bb.5:
	testq	%rbx, %rbx
	jne	.LBB0_6
.LBB0_31:
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$3, %ebp
.LBB0_30:
	movl	%ebp, %eax
	addq	$8, %rsp
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
.LBB0_6:
	.cfi_def_cfa_offset 64
	cmpl	$8, %r13d
	jae	.LBB0_8
# %bb.7:
	xorl	%eax, %eax
.LBB0_11:
	movq	%r13, %rcx
	subq	%rax, %rcx
	leaq	(,%rax,4), %rdx
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	imulq	$138547333, %rsi, %rdi          # imm = 0x8421085
	shrq	$32, %rdi
	movl	%eax, %ebp
	subl	%edi, %ebp
	shrl	%ebp
	addl	%edi, %ebp
	shrl	$4, %ebp
	movl	%ebp, %edi
	shll	$5, %edi
	subl	%edi, %ebp
	addl	%eax, %ebp
	imulq	$1372618415, %rsi, %rsi         # imm = 0x51D07EAF
	shrq	$32, %rsi
	movl	%eax, %edi
	subl	%esi, %edi
	shrl	%edi
	addl	%esi, %edi
	shrl	$6, %edi
	imull	$97, %edi, %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movl	%edi, (%r14,%rdx)
	movl	%ebp, (%r15,%rdx)
	addq	$4, %rdx
	incl	%eax
	decq	%rcx
	jne	.LBB0_12
.LBB0_13:
	cmpl	$8, %r13d
	jae	.LBB0_15
# %bb.14:
	xorl	%eax, %eax
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %ecx
	movl	(%r15,%rax,4), %edx
	leal	(%rdx,%rcx,2), %esi
	cmpl	$101, %esi
	leal	-3(%rdx,%rcx,2), %ecx
	cmovll	%esi, %ecx
	movl	%ecx, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB0_18
.LBB0_19:
	cmpl	$4, %r13d
	jae	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	xorl	%esi, %esi
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rbx,%rax,4), %rcx
	addq	%rcx, %rsi
	incq	%rax
	cmpq	%rax, %r13
	jne	.LBB0_28
.LBB0_29:
	leaq	.L.str(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	jmp	.LBB0_30
.LBB0_8:
	movl	%r12d, %ecx
	andl	$7, %ecx
	movq	%r13, %rax
	subq	%rcx, %rax
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3]
	xorl	%edx, %edx
	movdqa	.LCPI0_1(%rip), %xmm8           # xmm8 = [4,4,4,4]
	movdqa	.LCPI0_2(%rip), %xmm10          # xmm10 = [1372618415,1372618415,1372618415,1372618415]
	movdqa	.LCPI0_3(%rip), %xmm11          # xmm11 = [97,97,97,97]
	movdqa	.LCPI0_4(%rip), %xmm12          # xmm12 = [138547333,138547333,138547333,138547333]
	movdqa	.LCPI0_5(%rip), %xmm9           # xmm9 = [8,8,8,8]
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm4
	paddd	%xmm8, %xmm4
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm10, %xmm1
	pshufd	$237, %xmm1, %xmm1              # xmm1 = xmm1[1,3,2,3]
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	movdqa	%xmm6, %xmm3
	pmuludq	%xmm10, %xmm3
	pshufd	$237, %xmm3, %xmm3              # xmm3 = xmm3[1,3,2,3]
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movdqa	%xmm0, %xmm3
	psubd	%xmm1, %xmm3
	psrld	$1, %xmm3
	paddd	%xmm1, %xmm3
	psrld	$6, %xmm3
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm11, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm11, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	psubd	%xmm3, %xmm1
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, %xmm3
	movdqa	%xmm4, %xmm7
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm12, %xmm2
	pshufd	$237, %xmm2, %xmm2              # xmm2 = xmm2[1,3,2,3]
	pmuludq	%xmm12, %xmm5
	pshufd	$237, %xmm5, %xmm5              # xmm5 = xmm5[1,3,2,3]
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psubd	%xmm2, %xmm5
	psrld	$1, %xmm5
	paddd	%xmm2, %xmm5
	psrld	$4, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$5, %xmm2
	psubd	%xmm2, %xmm5
	movdqa	%xmm4, %xmm2
	paddd	%xmm4, %xmm5
	pmuludq	%xmm10, %xmm4
	pshufd	$237, %xmm4, %xmm4              # xmm4 = xmm4[1,3,2,3]
	pmuludq	%xmm10, %xmm3
	pshufd	$237, %xmm3, %xmm3              # xmm3 = xmm3[1,3,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	psubd	%xmm4, %xmm7
	psrld	$1, %xmm7
	paddd	%xmm4, %xmm7
	psrld	$6, %xmm7
	pshufd	$245, %xmm7, %xmm3              # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm11, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pmuludq	%xmm11, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	psubd	%xmm4, %xmm2
	movdqu	%xmm1, (%r14,%rdx,4)
	movdqu	%xmm2, 16(%r14,%rdx,4)
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm12, %xmm1
	pshufd	$237, %xmm1, %xmm1              # xmm1 = xmm1[1,3,2,3]
	pmuludq	%xmm12, %xmm6
	pshufd	$237, %xmm6, %xmm2              # xmm2 = xmm6[1,3,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	%xmm0, %xmm2
	psubd	%xmm1, %xmm2
	psrld	$1, %xmm2
	paddd	%xmm1, %xmm2
	psrld	$4, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$5, %xmm1
	psubd	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, (%r15,%rdx,4)
	movdqu	%xmm5, 16(%r15,%rdx,4)
	addq	$8, %rdx
	paddd	%xmm9, %xmm0
	cmpq	%rdx, %rax
	jne	.LBB0_9
# %bb.10:
	testq	%rcx, %rcx
	jne	.LBB0_11
	jmp	.LBB0_13
.LBB0_15:
	movl	%r12d, %ecx
	andl	$7, %ecx
	movq	%r13, %rax
	subq	%rcx, %rax
	xorl	%edx, %edx
	movdqa	.LCPI0_6(%rip), %xmm0           # xmm0 = [100,100,100,100]
	movdqa	.LCPI0_7(%rip), %xmm1           # xmm1 = [4294967293,4294967293,4294967293,4294967293]
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%r14,%rdx,4), %xmm2
	movdqu	16(%r14,%rdx,4), %xmm3
	paddd	%xmm2, %xmm2
	paddd	%xmm3, %xmm3
	movdqu	(%r15,%rdx,4), %xmm4
	paddd	%xmm2, %xmm4
	movdqu	16(%r15,%rdx,4), %xmm2
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
	movdqu	%xmm4, (%rbx,%rdx,4)
	movdqu	%xmm2, 16(%rbx,%rdx,4)
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_16
# %bb.17:
	testq	%rcx, %rcx
	jne	.LBB0_18
	jmp	.LBB0_19
.LBB0_21:
	andl	$3, %r12d
	movq	%r13, %rax
	subq	%r12, %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$2, %rcx
	incq	%rcx
	cmpq	$4, %rdx
	jae	.LBB0_23
# %bb.22:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	jmp	.LBB0_25
.LBB0_23:
	movq	%rcx, %rsi
	andq	$-2, %rsi
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rdx,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%rbx,%rdx,4), %xmm3           # xmm3 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm2, %xmm4
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	paddq	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm3, %xmm0
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	paddq	%xmm1, %xmm3
	movq	16(%rbx,%rdx,4), %xmm0          # xmm0 = mem[0],zero
	movq	24(%rbx,%rdx,4), %xmm1          # xmm1 = mem[0],zero
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
	jne	.LBB0_24
.LBB0_25:
	testb	$1, %cl
	je	.LBB0_27
# %bb.26:
	movq	(%rbx,%rdx,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%rbx,%rdx,4), %xmm3           # xmm3 = mem[0],zero
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm2, %xmm0
	pcmpgtd	%xmm3, %xmm4
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	paddq	%xmm3, %xmm1
.LBB0_27:
	paddq	%xmm1, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddq	%xmm0, %xmm1
	movq	%xmm1, %rsi
	testq	%r12, %r12
	jne	.LBB0_28
	jmp	.LBB0_29
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lld\n"
	.size	.L.str, 6

	.cg_profile main, strtol, 1
	.cg_profile main, malloc, 3
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig

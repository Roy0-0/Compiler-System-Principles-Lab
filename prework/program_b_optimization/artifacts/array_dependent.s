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
	movl	$1000000, %eax                  # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_3
# %bb.1:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	testl	%eax, %eax
	jle	.LBB0_2
.LBB0_3:
	movl	%eax, %r13d
	leaq	(,%r13,4), %r12
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB0_32
# %bb.4:
	testq	%r15, %r15
	je	.LBB0_32
# %bb.5:
	testq	%r14, %r14
	je	.LBB0_32
# %bb.6:
	cmpl	$8, %r13d
	jae	.LBB0_8
# %bb.7:
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_32:
	movq	%rbx, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movl	$3, %ebp
	jmp	.LBB0_31
.LBB0_8:
	movl	%r13d, %eax
	andl	$-8, %eax
	andq	$-32, %r12
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3]
	xorl	%ecx, %ecx
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
	movdqu	%xmm1, (%rbx,%rcx)
	movdqu	%xmm2, 16(%rbx,%rcx)
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
	movdqu	%xmm2, (%r15,%rcx)
	movdqu	%xmm5, 16(%r15,%rcx)
	paddd	%xmm9, %xmm0
	addq	$32, %rcx
	cmpq	%rcx, %r12
	jne	.LBB0_9
# %bb.10:
	cmpq	%r13, %rax
	je	.LBB0_13
.LBB0_11:
	movq	%r13, %rcx
	subq	%rax, %rcx
	leaq	(,%rax,4), %rdx
	.p2align	4, 0x90
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
	movl	%edi, (%rbx,%rdx)
	movl	%ebp, (%r15,%rdx)
	addq	$4, %rdx
	addl	$1, %eax
	addq	$-1, %rcx
	jne	.LBB0_12
.LBB0_13:
	movl	(%rbx), %eax
	movl	(%r15), %ecx
	leal	(%rcx,%rax,2), %edx
	cmpl	$101, %edx
	leal	-3(%rcx,%rax,2), %r9d
	cmovll	%edx, %r9d
	movl	%r9d, (%r14)
	cmpl	$2, %r13d
	jl	.LBB0_19
# %bb.14:
	leaq	-1(%r13), %r8
	movl	$1, %ecx
	movl	%r9d, %esi
	cmpl	$2, %r13d
	je	.LBB0_17
# %bb.15:
	movq	%r8, %rdi
	andq	$-2, %rdi
	negq	%rdi
	movl	$1, %ecx
	movl	%r9d, %esi
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %ebp
	movl	(%r15,%rcx,4), %edx
	leal	(%rdx,%rbp,2), %eax
	cmpl	$101, %eax
	leal	-3(%rdx,%rbp,2), %edx
	cmovll	%eax, %edx
	addl	%esi, %edx
	movl	%edx, (%r14,%rcx,4)
	movl	4(%rbx,%rcx,4), %eax
	movl	4(%r15,%rcx,4), %esi
	leal	(%rsi,%rax,2), %ebp
	cmpl	$101, %ebp
	leal	-3(%rsi,%rax,2), %esi
	cmovll	%ebp, %esi
	addl	%edx, %esi
	movl	%esi, 4(%r14,%rcx,4)
	leaq	(%rdi,%rcx), %rax
	addq	$2, %rax
	addq	$2, %rcx
	cmpq	$1, %rax
	jne	.LBB0_16
.LBB0_17:
	testb	$1, %r8b
	je	.LBB0_19
# %bb.18:
	movl	(%rbx,%rcx,4), %eax
	movl	(%r15,%rcx,4), %edx
	leal	(%rdx,%rax,2), %edi
	cmpl	$101, %edi
	leal	-3(%rdx,%rax,2), %eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movl	%eax, (%r14,%rcx,4)
.LBB0_19:
	movslq	%r9d, %rsi
	cmpl	$1, %r13d
	je	.LBB0_30
# %bb.20:
	leaq	-1(%r13), %rcx
	movl	$1, %eax
	cmpq	$4, %rcx
	jb	.LBB0_29
# %bb.21:
	movq	%rcx, %rax
	andq	$-4, %rax
	movq	%rsi, %xmm0
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	addq	$1, %rdx
	testq	%rsi, %rsi
	je	.LBB0_22
# %bb.23:
	movq	%rdx, %rdi
	andq	$-2, %rdi
	pxor	%xmm1, %xmm1
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rsi,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%r14,%rsi,4), %xmm3           # xmm3 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm2, %xmm4
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	paddq	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm3, %xmm0
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	paddq	%xmm1, %xmm3
	movq	16(%r14,%rsi,4), %xmm0          # xmm0 = mem[0],zero
	movq	24(%r14,%rsi,4), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm0, %xmm4
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddq	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	addq	$8, %rsi
	addq	$-2, %rdi
	jne	.LBB0_24
# %bb.25:
	testb	$1, %dl
	je	.LBB0_27
.LBB0_26:
	movq	(%r14,%rsi,4), %xmm2            # xmm2 = mem[0],zero
	movq	8(%r14,%rsi,4), %xmm3           # xmm3 = mem[0],zero
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
	cmpq	%rax, %rcx
	je	.LBB0_30
# %bb.28:
	orq	$1, %rax
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movslq	(%r14,%rax,4), %rcx
	addq	%rcx, %rsi
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.LBB0_29
.LBB0_30:
	leaq	.L.str(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	jmp	.LBB0_31
.LBB0_2:
	movl	$2, %ebp
.LBB0_31:
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
.LBB0_22:
	.cfi_def_cfa_offset 64
	pxor	%xmm1, %xmm1
	movl	$1, %esi
	testb	$1, %dl
	jne	.LBB0_26
	jmp	.LBB0_27
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lld\n"
	.size	.L.str, 6

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig

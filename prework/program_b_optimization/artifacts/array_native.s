	.text
	.file	"array_transform.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5                               # -- Begin function main
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	8                               # 0x8
.LCPI0_2:
	.long	1372618415                      # 0x51d07eaf
.LCPI0_3:
	.long	97                              # 0x61
.LCPI0_4:
	.long	138547333                       # 0x8421085
.LCPI0_5:
	.long	31                              # 0x1f
.LCPI0_6:
	.long	16                              # 0x10
.LCPI0_7:
	.long	100                             # 0x64
.LCPI0_8:
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
	movl	$1000000, %r12d                 # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_3
# %bb.1:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r12
	testl	%r12d, %r12d
	jle	.LBB0_2
.LBB0_3:
	movl	%r12d, %ebp
	leaq	(,%rbp,4), %r14
	movq	%r14, %rdi
	callq	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, %r13
	callq	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, %r15
	callq	malloc@PLT
	movq	%rax, %r14
	testq	%r13, %r13
	je	.LBB0_28
# %bb.4:
	testq	%r15, %r15
	je	.LBB0_28
# %bb.5:
	testq	%r14, %r14
	je	.LBB0_28
# %bb.6:
	cmpl	$16, %ebp
	jae	.LBB0_8
# %bb.7:
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_28:
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movl	$3, %ebp
	jmp	.LBB0_27
.LBB0_2:
	movl	$2, %ebp
	jmp	.LBB0_27
.LBB0_8:
	vpbroadcastd	.LCPI0_1(%rip), %ymm0   # ymm0 = [8,8,8,8,8,8,8,8]
	vpbroadcastd	.LCPI0_2(%rip), %ymm1   # ymm1 = [1372618415,1372618415,1372618415,1372618415,1372618415,1372618415,1372618415,1372618415]
	vpbroadcastd	.LCPI0_3(%rip), %ymm2   # ymm2 = [97,97,97,97,97,97,97,97]
	vpbroadcastd	.LCPI0_4(%rip), %ymm3   # ymm3 = [138547333,138547333,138547333,138547333,138547333,138547333,138547333,138547333]
	vpbroadcastd	.LCPI0_5(%rip), %ymm4   # ymm4 = [31,31,31,31,31,31,31,31]
	vpbroadcastd	.LCPI0_6(%rip), %ymm5   # ymm5 = [16,16,16,16,16,16,16,16]
	movl	%r12d, %ecx
	vmovdqa	.LCPI0_0(%rip), %ymm6           # ymm6 = [0,1,2,3,4,5,6,7]
	movq	%rbp, %rax
	xorl	%edx, %edx
	andl	$15, %ecx
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	vpmuludq	%ymm1, %ymm6, %ymm8
	vpshufd	$245, %ymm6, %ymm7              # ymm7 = ymm6[1,1,3,3,5,5,7,7]
	vpaddd	%ymm0, %ymm6, %ymm11
	vpmuludq	%ymm3, %ymm6, %ymm9
	vpmuludq	%ymm1, %ymm7, %ymm10
	vpmuludq	%ymm1, %ymm11, %ymm12
	vpshufd	$245, %ymm11, %ymm13            # ymm13 = ymm11[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm3, %ymm7, %ymm7
	vpmuludq	%ymm3, %ymm11, %ymm15
	vpmuludq	%ymm1, %ymm13, %ymm14
	vpshufd	$245, %ymm8, %ymm8              # ymm8 = ymm8[1,1,3,3,5,5,7,7]
	vpshufd	$245, %ymm9, %ymm9              # ymm9 = ymm9[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm10, %ymm8, %ymm8      # ymm8 = ymm8[0],ymm10[1],ymm8[2],ymm10[3],ymm8[4],ymm10[5],ymm8[6],ymm10[7]
	vpmuludq	%ymm3, %ymm13, %ymm10
	vpshufd	$245, %ymm12, %ymm12            # ymm12 = ymm12[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm7, %ymm9, %ymm7       # ymm7 = ymm9[0],ymm7[1],ymm9[2],ymm7[3],ymm9[4],ymm7[5],ymm9[6],ymm7[7]
	vpsubd	%ymm8, %ymm6, %ymm9
	vpblendd	$170, %ymm14, %ymm12, %ymm12    # ymm12 = ymm12[0],ymm14[1],ymm12[2],ymm14[3],ymm12[4],ymm14[5],ymm12[6],ymm14[7]
	vpshufd	$245, %ymm15, %ymm14            # ymm14 = ymm15[1,1,3,3,5,5,7,7]
	vpsubd	%ymm7, %ymm6, %ymm13
	vpsrld	$1, %ymm9, %ymm9
	vpsrld	$1, %ymm13, %ymm13
	vpaddd	%ymm8, %ymm9, %ymm8
	vpaddd	%ymm7, %ymm13, %ymm7
	vpsrld	$6, %ymm8, %ymm8
	vpsrld	$4, %ymm7, %ymm7
	vpblendd	$170, %ymm10, %ymm14, %ymm9     # ymm9 = ymm14[0],ymm10[1],ymm14[2],ymm10[3],ymm14[4],ymm10[5],ymm14[6],ymm10[7]
	vpsubd	%ymm12, %ymm11, %ymm10
	vpmulld	%ymm2, %ymm8, %ymm8
	vpmulld	%ymm4, %ymm7, %ymm7
	vpsrld	$1, %ymm10, %ymm10
	vpaddd	%ymm12, %ymm10, %ymm10
	vpsubd	%ymm9, %ymm11, %ymm12
	vpsrld	$1, %ymm12, %ymm12
	vpsrld	$6, %ymm10, %ymm10
	vpaddd	%ymm9, %ymm12, %ymm9
	vpmulld	%ymm2, %ymm10, %ymm10
	vpsubd	%ymm8, %ymm6, %ymm8
	vpsubd	%ymm7, %ymm6, %ymm7
	vpaddd	%ymm5, %ymm6, %ymm6
	vpsrld	$4, %ymm9, %ymm9
	vmovdqu	%ymm8, (%r13,%rdx,4)
	vmovdqu	%ymm7, (%r15,%rdx,4)
	vpmulld	%ymm4, %ymm9, %ymm9
	vpsubd	%ymm10, %ymm11, %ymm10
	vmovdqu	%ymm10, 32(%r13,%rdx,4)
	vpsubd	%ymm9, %ymm11, %ymm8
	vmovdqu	%ymm8, 32(%r15,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_9
# %bb.10:
	testq	%rcx, %rcx
	je	.LBB0_13
.LBB0_11:
	movq	%rbp, %rcx
	leaq	(,%rax,4), %rdx
	subq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movl	%eax, %ebx
	imulq	$138547333, %rsi, %rdi          # imm = 0x8421085
	imulq	$1372618415, %rsi, %rsi         # imm = 0x51D07EAF
	shrq	$32, %rdi
	shrq	$32, %rsi
	subl	%edi, %ebx
	shrl	%ebx
	addl	%edi, %ebx
	shrl	$4, %ebx
	movl	%ebx, %edi
	shll	$5, %edi
	subl	%edi, %ebx
	movl	%eax, %edi
	subl	%esi, %edi
	addl	%eax, %ebx
	shrl	%edi
	movl	%ebx, (%r15,%rdx)
	addl	%esi, %edi
	shrl	$6, %edi
	imull	$97, %edi, %esi
	movl	%eax, %edi
	addl	$1, %eax
	subl	%esi, %edi
	movl	%edi, (%r13,%rdx)
	addq	$4, %rdx
	addq	$-1, %rcx
	jne	.LBB0_12
.LBB0_13:
	cmpl	$16, %ebp
	jae	.LBB0_15
# %bb.14:
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_15:
	vpbroadcastd	.LCPI0_7(%rip), %ymm0   # ymm0 = [100,100,100,100,100,100,100,100]
	vpbroadcastd	.LCPI0_8(%rip), %ymm1   # ymm1 = [4294967293,4294967293,4294967293,4294967293,4294967293,4294967293,4294967293,4294967293]
	movl	%r12d, %ecx
	movq	%rbp, %rax
	xorl	%edx, %edx
	andl	$15, %ecx
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	vmovdqu	(%r13,%rdx,4), %ymm2
	vmovdqu	32(%r13,%rdx,4), %ymm3
	vpaddd	%ymm2, %ymm2, %ymm2
	vpaddd	%ymm3, %ymm3, %ymm3
	vpaddd	(%r15,%rdx,4), %ymm2, %ymm2
	vpaddd	32(%r15,%rdx,4), %ymm3, %ymm3
	vpcmpgtd	%ymm0, %ymm2, %ymm4
	vpaddd	%ymm1, %ymm2, %ymm6
	vpcmpgtd	%ymm0, %ymm3, %ymm5
	vpaddd	%ymm1, %ymm3, %ymm7
	vblendvps	%ymm4, %ymm6, %ymm2, %ymm2
	vblendvps	%ymm5, %ymm7, %ymm3, %ymm3
	vmovups	%ymm2, (%r14,%rdx,4)
	vmovups	%ymm3, 32(%r14,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_16
# %bb.17:
	testq	%rcx, %rcx
	je	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	(%r13,%rax,4), %ecx
	movl	(%r15,%rax,4), %edx
	leal	(%rdx,%rcx,2), %esi
	leal	-3(%rdx,%rcx,2), %ecx
	cmpl	$101, %esi
	cmovll	%esi, %ecx
	movl	%ecx, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.LBB0_18
.LBB0_19:
	cmpl	$16, %ebp
	jae	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.LBB0_24
.LBB0_21:
	andl	$15, %r12d
	movq	%rbp, %rax
	leaq	48(%r14), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	subq	%r12, %rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	vpmovsxdq	-32(%rcx), %ymm5
	vpmovsxdq	-48(%rcx), %ymm4
	vpmovsxdq	-16(%rcx), %ymm6
	vpaddq	%ymm5, %ymm1, %ymm1
	vpmovsxdq	(%rcx), %ymm5
	addq	$64, %rcx
	vpaddq	%ymm4, %ymm0, %ymm0
	vpaddq	%ymm6, %ymm2, %ymm2
	addq	$-16, %rdx
	vpaddq	%ymm5, %ymm3, %ymm3
	jne	.LBB0_22
# %bb.23:
	vpaddq	%ymm0, %ymm1, %ymm0
	testq	%r12, %r12
	vpaddq	%ymm0, %ymm2, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	je	.LBB0_26
.LBB0_24:
	subq	%rax, %rbp
	leaq	(%r14,%rax,4), %rax
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rax), %rcx
	addq	$4, %rax
	addq	%rcx, %rsi
	addq	$-1, %rbp
	jne	.LBB0_25
.LBB0_26:
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	vzeroupper
	callq	printf@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
.LBB0_27:
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

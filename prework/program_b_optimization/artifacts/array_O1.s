	.text
	.file	"array_transform.c"
	.globl	main                            # -- Begin function main
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
	movl	$1000000, %r13d                 # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_2
# %bb.1:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r13
.LBB0_2:
	testl	%r13d, %r13d
	jle	.LBB0_15
# %bb.3:
	movslq	%r13d, %rbx
	shlq	$2, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	$3, %ebx
	testq	%r15, %r15
	je	.LBB0_20
# %bb.4:
	testq	%r14, %r14
	je	.LBB0_20
# %bb.5:
	testq	%r12, %r12
	je	.LBB0_20
# %bb.6:
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jle	.LBB0_18
# %bb.7:
	movl	%r13d, %r8d
	leaq	(,%r8,4), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %edi
	imulq	$138547333, %rdi, %rbx          # imm = 0x8421085
	shrq	$32, %rbx
	movl	%edx, %ebp
	subl	%ebx, %ebp
	shrl	%ebp
	addl	%ebx, %ebp
	shrl	$4, %ebp
	movl	%ebp, %eax
	shll	$5, %eax
	subl	%eax, %ebp
	addl	%edx, %ebp
	imulq	$1372618415, %rdi, %rax         # imm = 0x51D07EAF
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	shrl	%edi
	addl	%eax, %edi
	shrl	$6, %edi
	imull	$97, %edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, (%r15,%rsi)
	movl	%ebp, (%r14,%rsi)
	addq	$4, %rsi
	addl	$1, %edx
	cmpq	%rsi, %rcx
	jne	.LBB0_8
# %bb.9:
	testl	%r13d, %r13d
	jle	.LBB0_17
# %bb.10:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %eax
	movl	(%r14,%rcx,4), %edx
	leal	(%rdx,%rax,2), %esi
	cmpl	$101, %esi
	leal	-3(%rdx,%rax,2), %eax
	cmovll	%esi, %eax
	movl	%eax, (%r12,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_11
# %bb.12:
	testl	%r13d, %r13d
	movl	$0, %ebx
	jle	.LBB0_18
# %bb.13:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movslq	(%r12,%rcx,4), %rax
	addq	%rax, %rsi
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_14
	jmp	.LBB0_19
.LBB0_15:
	movl	$2, %ebx
	jmp	.LBB0_21
.LBB0_18:
	xorl	%esi, %esi
	jmp	.LBB0_19
.LBB0_17:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
.LBB0_19:
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_20:
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
.LBB0_21:
	movl	%ebx, %eax
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

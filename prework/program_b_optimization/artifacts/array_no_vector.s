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
	movl	$1000000, %r14d                 # imm = 0xF4240
	cmpl	$2, %edi
	jl	.LBB0_3
# %bb.1:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r14
	testl	%r14d, %r14d
	jle	.LBB0_2
.LBB0_3:
	movl	%r14d, %ebp
	leaq	(,%rbp,4), %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%r12, %r12
	je	.LBB0_8
# %bb.4:
	testq	%r15, %r15
	je	.LBB0_8
# %bb.5:
	testq	%r13, %r13
	je	.LBB0_8
# %bb.6:
	movl	%r14d, %r9d
	andl	$1, %r9d
	movq	%rbp, %r8
	addq	$-1, %r8
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB0_7
# %bb.9:
	movq	%rbp, %r10
	subq	%r9, %r10
	movl	$1, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, %ebp
	imulq	$138547333, %rbp, %rdx          # imm = 0x8421085
	shrq	$32, %rdx
	movl	%esi, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %r11d
	shll	$5, %r11d
	imulq	$1372618415, %rbp, %rbp         # imm = 0x51D07EAF
	shrq	$32, %rbp
	movl	%esi, %edi
	subl	%ebp, %edi
	shrl	%edi
	addl	%ebp, %edi
	shrl	$6, %edi
	imull	$97, %edi, %ebp
	movl	%ecx, %edi
	imulq	$138547333, %rdi, %rbx          # imm = 0x8421085
	shrq	$32, %rbx
	movl	%ecx, %edx
	subl	%ebx, %edx
	shrl	%edx
	addl	%ebx, %edx
	shrl	$4, %edx
	movl	%edx, %ebx
	shll	$5, %ebx
	subl	%ebx, %edx
	imulq	$1372618415, %rdi, %rdi         # imm = 0x51D07EAF
	shrq	$32, %rdi
	movl	%ecx, %ebx
	subl	%edi, %ebx
	shrl	%ebx
	addl	%edi, %ebx
	shrl	$6, %ebx
	imull	$-97, %ebx, %edi
	addl	%ecx, %edi
	movl	%edi, (%r12,%rcx,4)
	addl	%ecx, %edx
	movl	%edx, (%r15,%rcx,4)
	negl	%ebp
	leal	(%rcx,%rbp), %edx
	addl	$1, %edx
	movl	%edx, 4(%r12,%rcx,4)
	subl	%r11d, %eax
	addl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 4(%r15,%rcx,4)
	addq	$2, %rcx
	addl	$2, %esi
	cmpq	%rcx, %r10
	jne	.LBB0_10
# %bb.11:
	testq	%r9, %r9
	je	.LBB0_13
.LBB0_12:
	movl	%ecx, %eax
	imulq	$1372618415, %rax, %rdx         # imm = 0x51D07EAF
	shrq	$32, %rdx
	movl	%ecx, %esi
	subl	%edx, %esi
	shrl	%esi
	addl	%edx, %esi
	shrl	$6, %esi
	imull	$97, %esi, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	%esi, (%r12,%rcx,4)
	imulq	$138547333, %rax, %rax          # imm = 0x8421085
	shrq	$32, %rax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrl	%edx
	addl	%eax, %edx
	shrl	$4, %edx
	movl	%edx, %eax
	shll	$5, %eax
	subl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%r15,%rcx,4)
.LBB0_13:
	movl	%r14d, %ecx
	andl	$1, %ecx
	testq	%r8, %r8
	movq	(%rsp), %rdx                    # 8-byte Reload
	je	.LBB0_14
# %bb.15:
	subq	%rcx, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rax,4), %esi
	movl	(%r15,%rax,4), %edi
	leal	(%rdi,%rsi,2), %ebp
	cmpl	$101, %ebp
	leal	-3(%rdi,%rsi,2), %esi
	cmovll	%ebp, %esi
	movl	4(%r12,%rax,4), %edi
	movl	4(%r15,%rax,4), %ebp
	leal	(%rbp,%rdi,2), %ebx
	leal	-3(%rbp,%rdi,2), %edi
	cmpl	$101, %ebx
	cmovll	%ebx, %edi
	movl	%esi, (%r13,%rax,4)
	movl	%edi, 4(%r13,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_16
# %bb.17:
	testq	%rcx, %rcx
	je	.LBB0_19
.LBB0_18:
	movl	(%r12,%rax,4), %ecx
	movl	(%r15,%rax,4), %edx
	leal	(%rdx,%rcx,2), %esi
	cmpl	$101, %esi
	leal	-3(%rdx,%rcx,2), %ecx
	cmovll	%esi, %ecx
	movl	%ecx, (%r13,%rax,4)
.LBB0_19:
	andl	$7, %r14d
	cmpq	$7, %r8
	movq	(%rsp), %rdi                    # 8-byte Reload
	jae	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.LBB0_23
.LBB0_8:
	movq	%r12, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$3, %ebp
	jmp	.LBB0_27
.LBB0_21:
	subq	%r14, %rdi
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movslq	(%r13,%rax,4), %rcx
	addq	%rsi, %rcx
	movslq	4(%r13,%rax,4), %rdx
	addq	%rcx, %rdx
	movslq	8(%r13,%rax,4), %rcx
	addq	%rdx, %rcx
	movslq	12(%r13,%rax,4), %rdx
	addq	%rcx, %rdx
	movslq	16(%r13,%rax,4), %rcx
	addq	%rdx, %rcx
	movslq	20(%r13,%rax,4), %rdx
	addq	%rcx, %rdx
	movslq	24(%r13,%rax,4), %rcx
	addq	%rdx, %rcx
	movslq	28(%r13,%rax,4), %rsi
	addq	%rcx, %rsi
	addq	$8, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_22
.LBB0_23:
	testq	%r14, %r14
	je	.LBB0_26
# %bb.24:
	leaq	(,%rax,4), %rax
	addq	%r13, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rax,%rcx,4), %rdx
	addq	%rdx, %rsi
	addq	$1, %rcx
	cmpq	%rcx, %r14
	jne	.LBB0_25
.LBB0_26:
	leaq	.L.str(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	jmp	.LBB0_27
.LBB0_2:
	movl	$2, %ebp
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
.LBB0_7:
	.cfi_def_cfa_offset 64
	xorl	%ecx, %ecx
	testq	%r9, %r9
	jne	.LBB0_12
	jmp	.LBB0_13
.LBB0_14:
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB0_18
	jmp	.LBB0_19
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

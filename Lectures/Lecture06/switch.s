	.file	"switch.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB39:
	.cfi_startproc
	endbr64
	movq	%rdx, %rcx
	cmpq	$3, %rdi
	je	.L8
	jg	.L3
	cmpq	$1, %rdi
	je	.L4
	cmpq	$2, %rdi
	jne	.L11
	movq	%rsi, %rax
	cqto
	idivq	%rcx
.L2:
	addq	%rcx, %rax
	ret
.L11:
	movl	$2, %eax
	ret
.L3:
	subq	$5, %rdi
	cmpq	$1, %rdi
	ja	.L12
	movl	$1, %eax
	subq	%rdx, %rax
	ret
.L4:
	movq	%rdx, %rax
	imulq	%rsi, %rax
	ret
.L8:
	movl	$1, %eax
	jmp	.L2
.L12:
	movl	$2, %eax
	ret
	.cfi_endproc
.LFE39:
	.size	switch_eg, .-switch_eg
	.globl	sparse_switch_eg
	.type	sparse_switch_eg, @function
sparse_switch_eg:
.LFB40:
	.cfi_startproc
	endbr64
	movq	%rdx, %rcx
	cmpq	$300, %rdi
	je	.L20
	jg	.L15
	cmpq	$100, %rdi
	je	.L16
	cmpq	$200, %rdi
	jne	.L21
	movq	%rsi, %rax
	cqto
	idivq	%rcx
.L14:
	addq	%rcx, %rax
	ret
.L21:
	movl	$2, %eax
	ret
.L15:
	cmpq	$500, %rdi
	je	.L19
	cmpq	$600, %rdi
	jne	.L22
.L19:
	movl	$1, %eax
	subq	%rcx, %rax
	ret
.L22:
	movl	$2, %eax
	ret
.L16:
	movq	%rdx, %rax
	imulq	%rsi, %rax
	ret
.L20:
	movl	$1, %eax
	jmp	.L14
	.cfi_endproc
.LFE40:
	.size	sparse_switch_eg, .-sparse_switch_eg
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"x = %ld, y = %ld, z = %ld --> %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %rbp
	movq	16(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %r12
	movq	24(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	switch_eg
	movq	%rax, %r9
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	%rbp, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

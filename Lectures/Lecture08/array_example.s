	.file	"array_example.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	endbr64
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	$1, (%rsp)
	movl	$5, 4(%rsp)
	movl	$2, 8(%rsp)
	movl	$1, 12(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 32(%rsp)
	movl	$2, 36(%rsp)
	movl	$1, 40(%rsp)
	movl	$3, 44(%rsp)
	movl	$9, 48(%rsp)
	movl	$9, 64(%rsp)
	movl	$4, 68(%rsp)
	movl	$7, 72(%rsp)
	movl	$2, 76(%rsp)
	movl	$0, 80(%rsp)
	movq	%rsp, %rax
	movq	%rax, 96(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4
	movl	$0, %eax
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.globl	get_digit
	.type	get_digit, @function
get_digit:
.LFB17:
	.cfi_startproc
	endbr64
	movslq	%esi, %rsi
	movl	(%rdi,%rsi,4), %eax
	ret
	.cfi_endproc
.LFE17:
	.size	get_digit, .-get_digit
	.globl	zincr
	.type	zincr, @function
zincr:
.LFB18:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	jmp	.L7
.L8:
	leaq	(%rdi,%rax,4), %rcx
	movl	(%rcx), %esi
	leal	1(%rsi), %edx
	movl	%edx, (%rcx)
	addq	$1, %rax
.L7:
	cmpq	$4, %rax
	jbe	.L8
	ret
	.cfi_endproc
.LFE18:
	.size	zincr, .-zincr
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

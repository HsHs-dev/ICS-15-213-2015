	.file	"test.c"
	.text
	.globl	less
	.type	less, @function
less:
.LFB0:
	.cfi_startproc
	endbr64
	cmpl	%esi, %edi
	setle	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	less, .-less
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

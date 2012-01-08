	.file	"common.c"
	.text
	.globl	outb
	.type	outb, @function
outb:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movb	%al, -8(%rbp)
	movzwl	-4(%rbp), %edx
	movzbl	-8(%rbp), %eax
#APP
# 5 "common.c" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	outb, .-outb
	.globl	inb
	.type	inb, @function
inb:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	movl	%edi, %eax
	movw	%ax, -28(%rbp)
	movzwl	-28(%rbp), %edx
	movw	%dx, -30(%rbp)
	movzwl	-30(%rbp), %edx
#APP
# 11 "common.c" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movl	%eax, %ebx
	.cfi_offset 3, -24
	movb	%bl, -9(%rbp)
	movzbl	-9(%rbp), %eax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	inb, .-inb
	.globl	inw
	.type	inw, @function
inw:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	movl	%edi, %eax
	movw	%ax, -28(%rbp)
	movzwl	-28(%rbp), %edx
	movw	%dx, -30(%rbp)
	movzwl	-30(%rbp), %edx
#APP
# 18 "common.c" 1
	inw %dx, %ax
# 0 "" 2
#NO_APP
	movl	%eax, %ebx
	.cfi_offset 3, -24
	movw	%bx, -10(%rbp)
	movzwl	-10(%rbp), %eax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	inw, .-inw
	.ident	"GCC: (GNU) 4.6.2 20111223 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

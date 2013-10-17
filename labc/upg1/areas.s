	.file	"areas.c"
	.comm	gi,4,4
	.globl	in
	.data
	.align 4
	.type	in, @object
	.size	in, 4
in:
	.long	4711
	.section	.rodata
	.align 8
.LC0:
	.string	"AF.1: loc1 stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC1:
	.string	"AF.2: parm stored at %lx (hex); value is %d (dec), %x (hex)\n"
.LC2:
	.string	"AF.3: Executed gi = parm;"
	.text
	.globl	fun
	.type	fun, @function
fun:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$17, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %edx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movl	%eax, gi(%rip)
	movl	$.LC2, %edi
	call	puts
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fun, .-fun
	.section	.rodata
	.align 8
.LC3:
	.string	"Message AM.01 from areas.c: Hello, World!"
	.align 8
.LC4:
	.string	"AM.02: m: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC5:
	.string	"AM.03: n: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC6:
	.string	"AM.04: gi: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC7:
	.string	"AM.05: in: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC8:
	.string	"AM.06: fun: address is %lx (hex)\n"
	.align 8
.LC9:
	.string	"AM.07: main: address is %lx (hex)\n"
	.align 8
.LC10:
	.string	"AM.08: Executed p = (int *) malloc( sizeof( int ) );"
	.align 8
.LC11:
	.string	"AM.09: p: stored at %lx (hex); value is %ld (dec), %lx (hex)\n"
	.align 8
.LC12:
	.string	"AM.10: Will soon execute n = fun( m );"
	.align 8
.LC13:
	.string	"AM.11: Has now returned from n = fun( m );"
	.align 8
.LC14:
	.string	"AM.12: n: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.align 8
.LC15:
	.string	"AM.13: gi: stored at %lx (hex); value is %d (dec), %x (hex)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$12345, gi(%rip)
	movl	gi(%rip), %eax
	addl	$11111, %eax
	movl	%eax, -4(%rbp)
	movl	$17, -8(%rbp)
	movl	$.LC3, %edi
	call	puts
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %edx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %ecx
	movl	-8(%rbp), %edx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	gi(%rip), %ecx
	movl	gi(%rip), %edx
	movl	$gi, %eax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	in(%rip), %ecx
	movl	in(%rip), %edx
	movl	$in, %eax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$fun, %eax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$main, %eax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$.LC10, %edi
	call	puts
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC12, %edi
	call	puts
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fun
	movl	%eax, -8(%rbp)
	movl	$.LC13, %edi
	call	puts
	movl	-8(%rbp), %ecx
	movl	-8(%rbp), %edx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	gi(%rip), %ecx
	movl	gi(%rip), %edx
	movl	$gi, %eax
	movq	%rax, %rsi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.1 20130725 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

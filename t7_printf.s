.data
i: .int 21, 15, 34, 11, 6, 50, 32, 80, 10, 0
s: .asciz "El numero es: %d\n"
.text
.global main
main:
	movl $0, %ecx
loop:
	push %ecx
	pushl i(,%ecx,4)
	pushl $s
	call printf
	
	addl $8, %esp
	popl %ecx
	incl %ecx
	cmpl $0, i(,%ecx,4)
	jne loop

	movl $1, %eax
	movl $0, %ebx
	int $0x80

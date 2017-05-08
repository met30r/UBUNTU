
# int a=3, b=3, r;
# if (a >= b) r=1; else r=0;

.data
a: .long 1
b: .long 3

.bss
.comm r,4,4

.text
.global main

main:
	movl a, %eax
	cmpl b, %eax
	jl else
	movl $1, r
	jmp endif
else:
	movl $0, r
endif:

	movl r, %ebx
	movl $1, %eax
	int $0x80


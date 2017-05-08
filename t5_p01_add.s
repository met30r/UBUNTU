# int a=2, b=3, r;
# r = a + b;

.data
a: .long 2
b: .long 3

.bss
.comm r,4,4

.text
.global main

main:
	movl a, %eax
	addl b, %eax
	movl %eax, r

#movl $0, %ebx
movl r, %ebx
movl $1, %eax
int $0x80

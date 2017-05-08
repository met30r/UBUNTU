.data
i: .long 0
j: .long 3

.bss
.comm r,4,4

.text
.global main

main:
	incl i
	decl j
	negl j

	mov i, %eax
	subl j, %eax
	movl %eax, r

	movl r, %ebx
	movl $1, %eax
	int $0x80


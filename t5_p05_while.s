.data
f: .long 1
n: .long 3

.text
.global main

main:
	movl f, %eax
	movl $1, %ecx
while:
	cmpl n , %ecx
	jg endwhile
	imull %ecx, %eax
	incl %ecx
	jmp while
endwhile:
	movl %eax, f

movl f, %ebx 
movl $1, %eax
int $0x80

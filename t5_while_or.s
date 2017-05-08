# int n=7, m=1;
# while (n<100 || m<100) {n= n*2; i++;}
# No necesito un incrementador
# Dos multiplicaciones en imul con registros y constantes
# PRINTF => EBX


.data
n: .long 7
m: .long 1

.text
.global main

main:
	movl n, %eax
	movl m, %ebx
	
while:
	cmpl $100, %eax
	jl ok	
	cmpl $100, %ebx
	jge endwhile

ok:
	imull $2, %eax
	imull $3, %ebx
	jmp while

endwhile:
	movl %eax, n

movl n, %ebx
movl $1, %eax
int $0x80

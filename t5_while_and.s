# int n=1, i=0;
# while (n<100 && i<64) {n = n*2; i++;}
# retornar n;

# Necesito un incrementador
# Verificar n < 100 y i <64

# Saltos condicionales jl etiq == Salta si op2 < op1
# Saltos condicionales jg etiq == Salta si op2 > op1

.data 
n: .long 1
i: .long 0

.text
.global main

main:
	movl n, %eax
	movl i, %ecx

while: 
	cmpl $100, %eax
	jge endwhile
	cmpl $64, %ecx
	jge endwhile 
	imull $2 ,%eax 
	incl %ecx
	jmp while
endwhile:
	movl %eax, n

movl n, %ebx
movl $1, %eax
int $0x80
	

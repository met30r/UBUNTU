.text
.global main

main:
	movl $0, %eax
	movl $1, %esi

fori:
	cmpl $5, %esi
	jge endforj
	incl %eax
	incl %edi
	jmp forj
endforj:
	incl %esi
	jmp fori
endfori:
	movl %eax, %ebx
	movl $1, %eax
	int $0x80

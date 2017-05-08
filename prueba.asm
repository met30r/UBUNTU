global _start

_start:
    pushl %ebp
    mov %esp, %ebp
    pushl %edi
    pushl %esi
    pushl %ebx
    sub $0xc0, %esp
    mov $0x1, (%esp)
    mov $0x2, 0x4(%esp)
    mov $0x3, 0x8(%esp)
    mov $0x4, 0xc(%esp)


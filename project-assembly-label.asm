section .data
    msg db 'Showing the label', 0xA
    len equ $ - msg

section .text
global _start
_start:
    call Showing ;Use a call for show the label

Showing:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax,1
    int 0x80
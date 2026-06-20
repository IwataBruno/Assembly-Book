section .data ; Area on the have a dates
    n1 dd 50
    n2 dd 50

    msg1 db 'the same', 0xA ; Create a string The same
    len1 equ $ - msg1 ; Calculate the size

    msg2 db 'Diferents', 0xA ; Create a string Diferents
    len2 equ $ - msg2 ; Calculte the size

section .text ; The location where the program code is stored
global _start ; Initialize the program
_start: ; The program start here
    mov eax, DWORD [n1]
    mov ebx, DWORD [n2] ; Place the values ​​from memory into the registers.
    cmp eax, ebx
    je same
    jne diferents

same:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax, 1
    int 0x80

diferents:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, 1
    int 0x80
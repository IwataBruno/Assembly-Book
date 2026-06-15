section .data
    msg db 'New Project', 0xA, ;A variavel msg tem a variavel desejada
    len equ $ - msg            ;Variavel len que recebera o tamanho da string

section .text
global _start
_start:
    mov eax, 4      ;Metodo de escrita 
    mov ebx, 1      ;Metodo de saida
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 1
    int 0x80

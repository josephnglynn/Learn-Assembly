; nasm -f elf hello.asm && ld -m elf_i386  -s -o hello hello.o


section .data
    message:            db "Hello World!", 10
    lengthOfMessage:    equ $-message

section .text
    global _start

_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, message
        mov edx, lengthOfMessage

        int 80h

        mov eax, 1
        mov ebx, 0
        int 80h
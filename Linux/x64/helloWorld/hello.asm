; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------
section   .text
global    _start

          
_start:   
        mov       rax, 1
        mov       rdi, 1 
        mov       rsi, message 
        mov       rdx, 13                 ; number of bytes
        syscall
        mov       rax, 60                 ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; operating system to exit

section   .data
    message:  db        "Hello, World", 10 
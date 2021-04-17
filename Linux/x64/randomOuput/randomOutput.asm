; ----------------------------------------------------------------------------------------
; Infinite Counter Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 randomOutput.asm && ld randomOutput.o && ./a.out
; ----------------------------------------------------------------------------------------

section   .text
global    _start


_start:   
        mov         rax, 1
        mov         rdi, 1
        mov         rsi, count
        mov         rdx, 13
        syscall

        inc         word [count]
        jmp         _start


section   .data
count:  DW       0
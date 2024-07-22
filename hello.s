;<section>
;   <label>:
;       <instruction> <operand> <operand> ...

bits 64

%define len 13              ; define a macro

section .data
    message db 'Hello World!', 10
    m_len equ $-message     ; get len of message

section .text 
    global _start
    _start:
        mov rax, 1          ; write
        mov rdi, 1          ; stdout
        mov rsi, message
        mov rdx, m_len      ; sizeof message
        syscall             ; call Karnel

        mov rax, 60         ; exit
        mov rdi, 0
        syscall             ; call Karnel

; nasm -f elf64 hello.s -o hello.o
; ld hello.o -o hello
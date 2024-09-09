bits 64

section .text
    global ft_strlen          ; Rendre la fonction globale pour être accessible depuis C

; Fonction strlen
; Entrée : RDI pointe vers la chaîne de caractères
; Sortie : RAX contient la longueur de la chaîne
ft_strlen:
    xor rax, rax              ; Initialiser RAX à 0 (longueur)
    xor rcx, rcx              ; Utiliser RCX comme compteur

.loop:
    cmp byte [rdi + rcx], 0   ; Comparer chaque caractère avec 0
    je .done                  ; Si c'est 0, on a trouvé la fin de la chaîne
    inc rcx                   ; Sinon, incrémenter le compteur
    jmp .loop                 ; Recommencer la boucle

.done:
    mov rax, rcx              ; Mettre la longueur dans RAX
    ret                       ; Retourner


; ---------- COMPILATION ----------

; nasm -f elf64 -o ft_strlen.o ft_strlen.s
; gcc -c -o main.o main.c
; gcc -o my_program main.o ft_strlen.o

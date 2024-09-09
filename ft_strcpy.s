bits 64

; args      -> rdi, rsi, rdx, rcx, r8, r9, pile (droite a gauche)

; char	*ft_strcpy(char *dest, const char *src)
; {
; 	int	i;

; 	i = 0;
; 	while (src[i])
; 	{
; 		dest[i] = src[i];
; 		i++;
; 	}
; 	dest[i] = '\0';
; 	return (dest);
; }

section .text
	global ft_strcpy

ft_strcpy:
	xor rax, rax
	xor rcx, rcx

.loop:
	cmp byte [rdi + rcx], 0
	je .done
	mov 
	inc 
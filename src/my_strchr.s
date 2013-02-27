[BITS 64]

	global	my_strchr

section .text

my_strchr:			; FONCTION PRINCIPALE
	mov	rax, rdi 	; ptr de av[1] (chaine) dans rax (retour)

my_strchr_loop:			; FONCTION PRINCIPALE
	cmp	byte [rax], 0	; comparaison ptr avec '\0'
	jz	my_strchr_end	; si ptr == '\0' on va a strchr_end
	cmp	byte [rax], sil	; comparaison ptr avec av[2] (caractere a chercher)
	jz	return_pointer	; si ptr == av[2] on va a return_pointer
	inc	rax		; on avance ptr de 1
	jmp	my_strchr_loop	; on boucle

my_strchr_end:			; FONCTION DE FIN DE CHAINE
	cmp	byte [rsi], 0	; comparaison av[2] avec '\0'
	jz	return_pointer	; si av[2] == '\0' on va a return_pointer
	xor	rax, rax	; sinon on met ptr == NULL

return_pointer:
	ret

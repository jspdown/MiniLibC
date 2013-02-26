[BITS 64]

	global	strchr

section .text

	mov	rax, rdi 	; ptr de av[1] (chaine) dans rax (retour)

strchr:				; FONCTION PRINCIPALE
	cmp	byte [rax], 0	; comparaison ptr avec '\0'
	jz	strchr_end	; si ptr == '\0' on va a strchr_end
	cmp	byte [rax], rsi	; comparaison ptr avec av[2] (caractere a chercher)
	jz	return_pointer	; si ptr == av[2] on va a return_pointer
	inc	rax		; on avance ptr de 1
	jmp	strchr		; on boucle

strchr_end:			; FONCTION DE FIN DE CHAINE
	cmp	byte [rsi], 0	; comparaison av[2] avec '\0'
	jz	return_pointer	; si av[2] == '\0' on va a return_pointer
	xor	rax, rax	; sinon on met ptr == NULL
	ret

return_pointer:
	ret

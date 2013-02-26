	;; 
	;; my_strlen
	;; param:	rdi -> string
	;;
	;; ret		length
	;; 
	
	global	my_strlen
my_strlen:
	xor	rax, rax		; counter
	xor	rsi, rsi		; reference value
my_strlen_loop:
	cmp	BYTE [rdi + rax], sil	; check if the current character is '\0'
	jz	my_strlen_loop_end	; true -> end
	inc	rax
	jmp	my_strlen_loop		; false -> loop
my_strlen_loop_end:
	ret

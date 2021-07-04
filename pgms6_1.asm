.model small
.stack 100h
.code
main proc

mov dl,65
mov cx,26
mov ah,2

Capital_:
	int 21h
	inc dl
	dec cx
	jnz Capital_
;Newline
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,2
mov dl,97
mov cx,26
Lower_:
		int 21h
		inc dl
		dec cx
		jnz Lower_
;; end program
mov ah,4ch
int 21h
main endp
end main
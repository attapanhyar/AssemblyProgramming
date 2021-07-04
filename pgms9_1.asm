.model small
.stack 100h
.code
main proc
	mov al,14
	mov bl,6

	div bl

	xor dl,dl
	mov dl,al ;QOUTIENT
	mov dh,ah ;REMAINDER

	add dh,30h
	add dl,30h

	mov ah,2
	int 21h

	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h

	mov dl,dh
	int 21h

	mov ah,4ch
	int 21h
main endp
end main
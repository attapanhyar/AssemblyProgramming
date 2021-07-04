.model small
.stack 100h
.code
main proc

	mov al,2
	mov bl,3

mul bl

	add al,30h

	mov dl,al
	mov ah,2
	int 21h
mov ah,4ch
int 21h
main endp
end main
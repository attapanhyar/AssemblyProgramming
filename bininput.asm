.model small
.stack 100h
.code
main proc
xor bx,bx
mov ah,1
repea:
	cmp al,0dh
	je invalid_
	and al,0fh
	shl bx,1
	or bl,al
	int 21h
	jmp repea
add bl,30h
mov ah,2
mov dl,bl
int 21h
invalid_:

mov ah,4ch
int 21h
main endp
end main
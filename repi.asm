.model small
.stack 100h
.code
main proc


mov cx,5
mov ah,2
mov dl,'*'
rashid:
	int 21h
	loop rashid

mov ah,4ch
int 21h
main endp
end main
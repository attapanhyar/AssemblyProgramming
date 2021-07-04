.model small
.stack 100h
.code
main proc
	mov ax,4000h
	add ax,ax
	sub ax,0ffffh
	neg ax
	inc ax
mov ah,4ch
int 21h
main endp
end main
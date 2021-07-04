.model small
.stack 100h
.code
main proc
mov ax,3
mov bx,2
call multiply

add dl,30h
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp

multiply proc
	push ax
	push bx
	xor dx,dx
repi:
	test bx,1b
	jz end_if
	add dx,ax
end_if:
	shl ax,1
	shr bx,1
	jnz repi
	pop bx
	pop ax
	ret
multiply endp
end main
	
.model small
.stack 100h
.code
main proc
xor dx,dx
xor cx,cx
xor bx,bx
mov bx,101100000000110b
mov cx,16
Repit:
	shl bx,1
	jnc no_inc
	inc dl
no_inc:
	dec cx
	jnz Repit
add dl,30h
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
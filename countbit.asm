.model small
.stack 100h
.code
main proc

xor ax,ax
xor bx,bx
mov cx,16
mov ax,0000000000001111b

TOP:	
	RCL AX,1
	JNC NEXT
	inc bx
	
NEXT:
	Loop TOP
add bl,30h
mov dl,bl
mov ah,2
int 12h



mov ah,4ch
int 21h

main endp
end main
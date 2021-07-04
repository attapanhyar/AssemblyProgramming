.model small
.stack 100h
.code
main proc
call multiply
mov ah,4ch
int 21h
main endp

multiply proc
mov ax,11b
mov bx,10b
push ax
push bx
xor dx,dx

repi:
	TEST BX,1
	JZ END_IF
	ADD DX,AX
END_IF:
	SHL AX,1
	SHR BX,1
	JNZ repi
	pop bx
	pop ax
	xor cx,cx
	mov ch,al
	add ch,30h
	mov cl,dl
	add cl,30h
	add bl,30h
	mov dl,ch
	mov ah,2
	int 21h
	mov ah,2
	mov dl,bl
	int 21h
	mov ah,2
	mov dl,0dh
	int 21h
	mov ah,2
	mov dl,0ah
	int 21h
	mov ah,2
	mov dl,cl
	int 21h
RET
multiply endp




end main
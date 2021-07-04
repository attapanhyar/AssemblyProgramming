.model small
.stack 100h
.data
w dw 0,1,2,3,4,5,6,7,8,9
.code
main proc
	mov ax, @data
	mov ds,ax
	
	xor cx,cx

	lea si,w
	mov cx,10
	mov ah,2
l2:
	mov dx,[si]
	add dl,30h
	add si,2
	int 21h
	;new line
	loop l2
	
	lea si,w
	mov bx,10

	call REVERSE

	xor cx,cx

	lea si,w
	mov cx,10
	mov ah,2
l1:
	mov dx,[si]
	add dl,30h
	add si,2
	int 21h
	;new line
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h
	loop l1
	
	
	
mov ah,4ch
int 21h
main endp
REVERSE Proc
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	mov DI,SI
	mov cx,bx
	dec bx
	shl bx,1
	ADD DI,BX
	shr cx,1
XCHG_Loop:	
	mov ax,[si]
	xchg ax,[di]
	mov [si],ax
	add si,2
	sub di,2
	loop XCHG_Loop
	POP DI
	POP SI
	POP DX
	POP CX
	POP BX
	POP AX
	RET
REVERSE ENDP
end main
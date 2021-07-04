.model small
.stack 100h
.data
a db 2
d dw 3
array equ 12
unde dw ?
.code
main proc

xor dx,dx
xor cx,cx
mov cx,16
mov bx,1011011110000001b
start_:
	shl bx,1
	jc inc_dx
	jmp skip_
inc_dx:
	INC DX
skip_:
	loop start_
add dl,30h
mov ah,2
int 21h

mov ah,2
mov dl,bl
int 21h

mov ah,4ch
int 21h
main endp
end main
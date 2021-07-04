.model small
.stack 100h
.data
string1 db 'This is a message'
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax
mov bx,17
lea si,string1
CLD
Call write_proc

mov ah,4ch
int 21h

main endp

write_proc proc
	push AX
	push bx
	push cx
	push dx
	push si

	mov cx,bx
	jcxz p_exit
	CLD
	mov ah,2
TOP:
	lodsb
	mov dl,al
	int 21h
	call wait_proc
	
	loop TOP
p_exit:
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
write_proc endp
wait_proc proc
push ax
push bx
push cx
push dx
	mov     cx, 0fh
	mov     dx, 4240h
	mov     ah, 86h
	int     15h
POP DX
POP CX
POP BX
POP AX
RET
wait_proc endp	
end main


.model small
.stack 100h
.code
main proc
	mov ah,0	;set TEXT MODE
	mov al,3
	int 10h
	
	mov ah,2	;SET CURSOR
	xor dx,dx
	mov bh,0
	int 10h
	
	mov ah,0	;INPUT
	int 16h
	
while_1:
	cmp al,1BH	;ESC?
	je end_while
	
	cmp al,0
	jne else_
	
	call do_function
	jmp next_key
	
Else_:
	mov ah,2
	mov dl,al
	int 21h
	
next_key:
	mov ah,0
	int 16h
	jmp while_1
	
end_while:
	



mov ah,4ch
int 21h
main endp
do_function proc
	push bx
	push cx
	push dx
	push ax
	
	mov ah,3	;locate cursor
	mov bh,0
	int 10h
	
	pop ax
	cmp ah,72
	je cursor_up
	
	cmp ah,75
	je cursor_left
	
	cmp ah,77
	je cursor_right
	
	cmp ah,80
	je cursor_down
	jmp exit
cursor_up:
	cmp dh,0
	je scroll_down
	dec dh
	jmp execute
cursor_down:
	cmp dh,24
	je scroll_up
	inc dh
	jmp execute
cursor_left:
	cmp dl,0
	jne go_left
	cmp dh,0
	je scroll_down
	dec dh
	mov dl,79
	jmp execute
cursor_right:
	cmp dl,79
	jne go_right
	cmp dh,24
	je scroll_up
	inc dh
	mov dl,0
	jmp execute
go_left:
	dec dl
	jmp execute
go_right:
	inc dl
	jmp execute
scroll_down:
	mov al,1
	xor cx,cx
	mov dh,24
	mov dl,79
	mov bh,07
	mov ah,7
	int 10h
	jmp exit
scroll_up:
	mov al,1
	xor cx,cx
	mov dx,184fh
	mov bh,07
	mov ah,6
	int 10h
	jmp exit
execute:
	mov ah,2
	int 10h
exit:
	pop dx
	pop cx
	pop bx
	ret
do_function endp
end main
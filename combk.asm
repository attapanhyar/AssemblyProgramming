.model small
.stack 100h
.data
msg1 db 'Ctrl+A key pressed$'
msg2 db 'Ctrl+A key Not pressed$'
.code
main proc
	mov ax,@data
	mov ds,ax
	
	mov ah,0
	int 16h
	
	cmp al,1
	je ctrl
	mov ah,9
	lea dx,msg2
	int 21h
	jmp end_
ctrl:
	mov ah,9
	lea dx,msg1
	int 21h
end_:
	mov ah,4ch
	int 21h
	main endp
end main
.model small
.stack 100h
.code
main proc

mov ah,2
mov dl,'?'
int 21h


xor cx,cx
mov ah,1
int 21h
while_:
	CMP AL,0DH
	je while_end
	push AX
	inc CX
	mov ah,1
	int 21h
	jmp while_
while_end:
	mov ah,2
	mov dl,0dh
	int 21h
	mov dl,0ah
	int 21h
	
	jcxz exit
	mov ah,2
TOP:
		pop dx
		int 21h
		loop TOP
exit:	
	mov ah,4ch
	int 21h
	main endp
end main
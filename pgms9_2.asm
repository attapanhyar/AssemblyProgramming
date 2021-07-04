.model small
.stack 100h
.code
main proc
	
	mov ax,321
	call outdec
	
	mov ah,4ch
	int 21h
main endp
outdec proc
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
		OR AX,AX
		jge @end_if1
		PUSH AX
		mov dl,'-'
		mov ah,2
		int 21h
		pop AX
		neg ax
	@end_if1:
		XOR CX,CX
		MOV BX,10D
	@Repeat1:
		XOR DX,DX
		DIV BX
		PUSH DX
		INC CX
		or ax,ax ;qoutent =0?
		jne @Repeat1
	mov ah,2
	@print_loop:
		pop dx
		or dl,30h
		int 21h
		loop @print_loop
	POP DX
	pop cx
	pop bx
	pop ax
ret
outdec endp


end main
.model small
.stack 100h
.code
main proc
	MOV AX, 0B800h   ;color active display
	MOV DS,AX
	MOV CX,2000
	MOV DI,0	
fil:
	MOV [DI], 0c241h
	add di,2
	loop fil
mov ah,4ch
int 21h
main endp
end main
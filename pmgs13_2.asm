.model small
.stack 100h
.code
main proc
	MOV AX, 0B800h
	MOV DS,AX
	
	mov ah,1
	mov ch,0
	mov cl,13
	int 10h


mov ah,4ch
int 21h
main endp
end main
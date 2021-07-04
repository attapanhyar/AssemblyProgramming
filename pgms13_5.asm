.model small
.stack 100h
.code
main proc
	;mov ah,0
	;mov al,3
	;int 10h
	
	MOV AH,6
	XOR AL,9
	XOR CX,CX;(0,0)
	MOV DX,184fh ;(24,80)
	MOV BH,7 ;Normal video attributes
	INT 10H ;clear screen
EXIT:
mov ah,4ch
int 21h
main endp
end main
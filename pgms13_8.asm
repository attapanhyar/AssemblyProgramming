.model small
.stack 100h
.code
main proc
	
	
	
	MOV AH,0	;input a character AL=ASCII AH=SCAN CODE
	INT 16H
	
	OR AL,AL
	JNE EXIT
	
	CMP AH,3BH
	JE F1
	
	MOV DX,184fH
	JMP EXECUTE
F1:
	XOR DX,DX
EXECUTE:
	MOV AH,2
	XOR BH,BH
	INT 10H
EXIT:
	mov ah,2
	mov dl,'A'
	int 21h
mov ah,4ch
int 21h

main endp
end main
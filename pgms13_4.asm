.model small
.stack 100h
.DATA
new db 0ah,0dh,'$'
.code
main proc
	mov ax,@data
	mov ds,ax
	;mov ah,0
	;mov al,3
	;int 10h
	; get cusor position
	xor ax,ax
	mov ah,3
	xor bh,bh
	int 10h
	XOR DH,DH
	MOV AX,DX
	call OUTDEC
	
	mov ah,9
	lea dx,new
	int 21h
	
	
	MOV AH,3
	XOR BH,BH
	INT 10H
	XOR DL,DL
	MOV AL,DH
	XOR AH,AH
	CALL OUTDEC
	
	
	
mov ah,4ch
int 21h
main endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
OUTDEC PROC

PUSH AX
PUSH BX
PUSH CX
PUSH DX

OR AX,AX ;ax<0
JGE END_IF1
PUSH AX
MOV DL,'-'
MOV AH,2
INT 21H
POP AX
NEG AX

END_IF1:
;GET DECIMAL DIGITS
	XOR CX,CX
	MOV BX,10D

REPEA:
	XOR DX,DX
	DIV BX
	PUSH DX;remainder
	INC CX
;UNTIL
	OR AX,AX
	JNE REPEA
	
; CONVERT DIGIT TO CHARACTER AND PRINT

MOV AH,2
PRINT_LOOP:
		POP DX
		ADD DL,30H
		INT 21H
		LOOP PRINT_LOOP
	POP AX
	POP BX
	POP CX
	POP DX
RET	

OUTDEC ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

end main
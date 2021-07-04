.model small
.stack 100h
.data
in1 dw 0
in2 dw 0
result dw 0

.code
main proc
mov ax,@data
mov ds,ax

call inputDec
mov AX,result
mov in1,AX
MOV ax,0
mov result,ax
call inputDec
mov AX,result
add AX,in1
call OUTDEC
mov ah,4ch
int 21h

main endp

inputDec PROC
mov ax,@data
mov ds,ax
PUSH AX
PUSH BX
PUSH CX
PUSH DX
BEGIN:
	MOV AH,2
	MOV DL,'?'
	INT 21H
;BEGIN	
	XOR BX,BX
	
;NEGATIVE =FALSE
	XOR CX,CX
	
;READ A CHARACTER
	MOV AH,1
	INT 21H
;CASE CHARACTER OF
	CMP AL,'-'
	JE MINUS
	CMP AL,'+'
	JE PLUS
	JMP REPEAT2
MINUS:
	MOV CX,1
PLUS:
	INT 21H
REPEAT2:
	CMP AL,'0'
	JNGE NOT_DIGIT
	CMP AL,'9'
	JNLE NOT_DIGIT
;CONVERT CHARACTER TO DIGIT
	AND AX,000FH ;conversion to decimal
	PUSH AX
; TOTAL = T0TAL*10+DIGIT
	MOV AX,10
	MUL BX
	POP BX
	ADD BX,AX
; READ A CHARACTER 
	MOV AH,1
	INT 21H

	CMP AL,0DH
	JNE REPEAT2
;IF NEGATIVE
	OR CX,CX
	JE EXIT
	NEG AX
EXIT:
	mov result,BX
	POP DX
	POP CX
	POP BX
	POP AX
NOT_DIGIT:
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL,0AH
	INT 21H
RET	
inputDec ENDP

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


end main
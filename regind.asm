.model small
.stack 100h
.data
w dw 'a','t','t','a'
.code
main proc
mov ax,@data
mov ds,ax
xor ax,ax ;holds sum
lea bx,w  ; load base address of w in Source Index
mov cx,4
mov ah,2
repi:
	xor dx,dx
	mov dx,[bx]
	int 21h
	add bx,2
	loop repi

;call  outdec

	


mov ah,4ch
int 21h
main endp 

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
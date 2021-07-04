.model small
.stack 100h
.data
string db 80 dup(0)
vowels db 'AEIOU'
const db 'BCDFGHJKLMNPQRSTVWXYZ'
out1 db 0dh,0ah,'vowels = $'
out2 db 0dh,0ah,'Consonants = $'
vowct dw 0
constct dw 0
.code
main proc
	mov ax,@data
	mov ds,ax
	mov es,ax
	lea DI,string
	CLD
	CALL read_str
	lea si,string
	REPEAT1:
	LODSB
	LEA DI,vowels
	mov cx,5
	REPNE SCASB
	JNE CK_const
	inc vowct
	jmp until
CK_const:
	lea DI,const
	mov cx,21
	REPNE	scasb
	jne until
	inc const
until:
	dec bx
	jne REPEAT1
	
	mov ah,9
	lea dx,out1
	int 21h
	mov ax,vowct
	call out_dec
	
	mov ah,9
	lea dx,out2
	int 21h
	mov ax,constct
	call out_dec
	
	mov ah,4ch
	int 21h
	
	
main endp
OUT_DEC PROC
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
OUT_DEC ENDP
read_str proc near
	push ax
	push di
	cld
	xor bx,bx
	
	mov ah,1
	int 21h
while1:
	cmp al,0dh
	je end_while
	
	cmp al,8h
	jne else1
	
	DEC DI
	DEC BX
	JMP read
else1:
	stosb
	inc bx
read:
	int 21h
	jmp while1
end_while:
	pop DI
	POP AX
	RET
read_str endp
end main
	
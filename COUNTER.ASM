.model small
.stack 100h
.DATA
MSG DB 'CARRY DID NOT HAPPENED',10,13,'$'
msg1 db 'Carry did happened',10,13,'$'
.code
main proc
MOV AX,@DATA
MOV DS,AX

xor AX,AX  ; Reset Ax
xor BX,BX
mov CX,16
mov BX,0100010011000000b ; mov bx,04460h


TOP:	
	ROR BX,1
	
	JNC NEXT
	mov ah,9
	lea dx,msg1
	int 21h
	inc AX
	
NEXT:
	;MOV AH,9
	;LEA DX,MSG
	;INT 21H
	Loop TOP
add al,30h   ; conversion from number to ASCII
mov dl,AL
mov ah,2
int 21h



mov ah,4ch
int 21h

main endp
end main
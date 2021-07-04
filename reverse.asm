.model small
.stack 100h
.DATA
MSG DB 'CARRY DID NOT HAPPENED',10,13,'$'
msg1 db 'Carry did happened',10,13,'$'
.code
main proc
MOV AX,@DATA
MOV DS,AX
MOV AL, 11011100b
MOV BL, 00111011b
mov cl,8
REV:
	SHL AL,1
	RCR BL,1
	Loop REV

MOV AL,BL



add al,30h
mov dl,AL
mov ah,2
int 21h



mov ah,4ch
int 21h

main endp
end main
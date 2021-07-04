.model small
.stack 100H
.data
MSG1 DB 10,13,'HELLO PAKISTAN$'


.code
main proc
MOV AX,@DATA
MOV DS,AX
MOV CL,0
MOV BL,128
MOV AH,2

START:
	MOV DL,CL
	INT 21H
	INC CL
	CMP bl,CL
	jA START
	
	
end_loop:
	



mov ah,4ch
int 21h

main endp
end main
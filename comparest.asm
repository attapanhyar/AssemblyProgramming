.model small
.stack 100H
.data



.code
main proc

MOV CL,10
MOV AH,2

START:
	MOV DL,'*'
	INT 21H
	DEC CL
	JNZ START
	



mov ah,4ch
int 21h

main endp
end main
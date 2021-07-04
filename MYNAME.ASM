.model small
.stack 100h
.data
msg db 'Atta Muhammad '
.code
main proc
MOV AX,@DATA
MOV DS,AX
 
LEA DX,MSG
MOV AH,9
INT 21H

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN

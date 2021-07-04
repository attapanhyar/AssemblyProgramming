.model small
.stack 100h
.data
msg db 'Hello welcome to pakistan!$'
.code
MAIN PROC

mov AX,@DATA
MOV DS,AX

LEA DX,MSG
MOV AH,9
INT 21H

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN


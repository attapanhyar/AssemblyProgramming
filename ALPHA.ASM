.model small
.stack 100h
.data
msg db 'Enter the character in lower case!$'
msg2 db 0ah,0dh,'The Upper case of the letter is :$ '
char db ?
.code
MAIN PROC

mov AX,@DATA
MOV DS,AX

LEA DX,MSG
MOV AH,9
INT 21H

mov ah,1
int 21h
sub al,20h
mov char,al

lea DX,msg2
mov ah,9
int 21h

mov ah,2
mov dl,char
int 21h


MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN


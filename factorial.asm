.model small
.stack 100h
.code
main proc
MOV CX,3
call factorial
mov ah,4ch
int 21h
main endp

factorial proc

mov AX,1
TOP:	
MUL CX
loop TOP

add al,30h
mov dl,al
mov ah,2
int 21h


RET
factorial endp




end main
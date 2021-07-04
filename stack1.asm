.model small
.stack 100h
.code
main proc

MOV AX,65
MOV BX,66

push AX
push bx

pop DX
mov ah,2
int 21h

pop DX
int 21h


mov ah,4ch
int 21h
main endp
end main
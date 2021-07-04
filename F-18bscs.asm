.model small
.stack 100h
.data
input db 0ah,0dh,'Please input a character: $'
output db 0ah,0dh,'The Character entered was :$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,09
lea dx,input
int 21h

mov ah,1
int 21h
mov bl,al

mov ah,9
lea DX,output
int 21h
mov ah,2
mov dl,bl
int 21h



mov ah,4ch
int 21h
main endp
end main
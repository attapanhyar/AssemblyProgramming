.model small
.stack 100h
.data
a dw 1234h
.code
main proc
mov ax,@data
mov ds,ax


mov ax,a

neg ax
sub ax,1

mov ch,04h
mov cl,04h

mov bx,ax
rol bx,cl
mov dl,bl

mov dl,0fh

cmp dl,09

add dl,07
add dl,30h

mov ah,02
int 21h

dec ch
mov ah,4ch
int 21h
main endp
end main


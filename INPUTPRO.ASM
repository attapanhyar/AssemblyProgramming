.model small
.stack 100h

.data
a db ?
b db ?
c db ?

.code
main proc
mov ax,@data
mov ds,ax

mov al,4d
xor al,al
add al,3d
mov dl,al
mov ah,2
int 21h



mov ah,4ch
int 21h
main endp
end main






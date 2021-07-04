.model small
.stack 100h
.data
a db ?
.code
main proc
mov ax,@data
mov ds,ax
mov dl,'a'
mov ah,2
int 21h



mov dl,'z'
int 21h

mov ah,1
int 21h
mov a,al

mov ah,2
mov dl,0ah
int 21h

mov dl,0dh
int 21h


mov ah,2
mov dl,a
int 21h



mov ah,4ch
int 21h

main endp
end main




.model small
.stack 100h
.data
MSG db 'Hello$'
.code
main proc
mov ax,@data
mov ds,ax
lea dx,msg
mov ah,9
int 21h


mov dl, 'a'
mov ah,2
int 21h

mov ah,4ch
int 21h


main endp
end main

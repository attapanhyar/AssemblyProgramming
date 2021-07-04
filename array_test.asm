.model small
.stack 100h
.data
a db '2','3','4','5'
.code
main proc
mov ax,@data
mov ds,ax
mov dl,a+2
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
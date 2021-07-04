.model small
.stack 100h
.data
var1 db '2'  
var2 db 32h
var3 db 50
.code
main proc
mov ax,@data
mov ds,ax
xor ax,ax

mov ah,2
mov dl,var1
int 21h

mov dl,var2
int 21h

mov dl,var3
int 21h

mov ah,4ch
int 21h

main endp
end main

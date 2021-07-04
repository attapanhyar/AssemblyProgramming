.model small
.stack 100h
.data

var1 db 1
var2 db 2
var3 dw 512
const equ 3
B_ARRAY db 10H,20H,30H
.code
main proc
mov ax,@data
mov ds,ax

mov bl, var2
inc var1
mov al,var1
add al,bl
add var1,const
or al,30h

mov dl,al
mov ah,2 
int 21h

mov dl,B_ARRAY+1
int 21h


mov dl,10h
mov ah,2
int 21h

add al,const
mov dl,09H
int 21h

mov ah,4ch
int 21h
 main endp
 end main

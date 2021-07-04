.model small
.stack 100h
.code
main proc
call mult
mov ah,4ch
int 21h
main endp

mult proc
mov ax,2
mov Cx,4
mul cx
add al,30h
mov dl,al
mov ah,2
int 21h
;;;; division

xor ax,ax
xor bx,bx
mov al,4
mov cl,2
div cl
add al,30h
mov dl,al
mov ah,2
int 21h



RET
mult endp



end main
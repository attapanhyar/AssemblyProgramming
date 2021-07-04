.model small
.stack 100h
.code
main proc
xor ax,ax
mov al,8h;;error 1
mov cl,2
rcr ax,1 ;;; improper operand
add al,30h

mov dl,al
mov ah,2
int 21h


mov ah,4ch
int 21h
main endp
end main
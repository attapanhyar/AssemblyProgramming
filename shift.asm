.model small
.stack 100h
.code
main proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;ASSEMBLY__PRO;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ax,8
mov cl,2
shl ax,cl
add cl,'0'

mov dl,cl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
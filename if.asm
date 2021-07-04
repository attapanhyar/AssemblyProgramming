.model small
.stack 100h
.code
main proc
mov ah,2
mov dl,'?'
int 21h
;input
mov ah,1
int 21h
mov bl,al
mov ah,4ch
int 21h
main endp
end main
.model small
.stack 100h
.code
main proc
mov dl,'a'
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
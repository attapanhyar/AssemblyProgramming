.model small
.stack 100h
.code
main proc
mov dl,'*' 
mov ah,2
mov cx,5
repeat:
int 21h
loop repeat






mov ah,4ch
int 21h

main endp
end main
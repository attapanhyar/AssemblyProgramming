.model small
.stack 100h
.code
main proc

mov ah,2
mov dl,'?'
int 21h

mov ah,1
int 21h
mov bl,al
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

cmp bl,'A'
jl rashid
cmp bl,'Z'
jg rashid
mov ah,2
mov dl,bl
int 21h




rashid:

mov ah,4ch
int 21h

main endp
end main
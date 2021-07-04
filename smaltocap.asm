.model small
.stack 100h
.code
main proc
mov bl,'z'
and bl,0dfh	; conversion form small to capital
mov dl,bl
mov ah,2
int 21h		; conversion from ASCII to number
mov ah,4ch
int 21h
main endp
end main
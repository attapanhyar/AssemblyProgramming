.model small
.stack 100h
.code
main proc
;multiplication
mov bl,1
mov cl,3
sal bl,cl
add bl,30h
mov ah,2
mov dl,bl
int 21h
sub bl,30h
sar bl,cl
add bl,30h
mov ah,2
mov dl,bl
int 21h




mov ah,4ch
int 21h

main endp
end main
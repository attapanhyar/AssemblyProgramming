.model small
.stack 100h
.code
main proc
xor ax,ax
xor cx,cx
mov ax,1
mov cl,2
sal ax,cl
add ax,30h
mov dl,al
mov ah,2
int 21h

mov ax,8
mov cl,2
sar ax,cl
add ax,30h
mov dl,al
mov ah,2
int 21h





mov ah,4ch
int 21h

main endp
end main
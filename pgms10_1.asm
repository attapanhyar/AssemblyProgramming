.model small
.stack 100h
.data
w dw '2','3','4'
.code
main proc
mov ax,@data
mov ds,ax
mov ax,w; ax=2
mov bx,w+2 ;bx=3
mov w+2,ax ;w[1] = 2
mov w,bx;  w[0] = 3
mov dl,w+2
mov ah,2
int 21h
xor dl,dl
mov dl,w
int 21h
mov ah,4ch
int 21h
main endp
end main
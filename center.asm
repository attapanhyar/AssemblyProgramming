.model small
.stack 100h
.data
msg db "ZORAIN$"
.code
main proc
mov ax,@data
mov ds,ax

lea si,msg
mov cx,6
cld

mov ah,2
mov dl,39
mov dh,9
int 10h
l1:
mov dl,[si]
mov ah,2
int 21h
inc si

mov dl,39
inc dh
int 10h
loop l1

mov ah,4ch
int 21h
main endp
end main
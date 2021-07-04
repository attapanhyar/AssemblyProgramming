.model small
.stack 100h
.data
w dw '2','3','4'
newl db 10,13,'$'
.code
main proc
mov ax,@data
mov ds,ax

lea bx,w

mov ax,[bx+2]	;[register+displacement]
mov dl,al
mov ah,2
int 21h

mov ah,9
lea dx,newl
int 21h

mov ax,[bx]+2	;; [register]+displacement
mov dl,al
mov ah,2
int 21h

mov ah,9
lea dx,newl
int 21h

mov ax,[2+bx]	; [displacement + register]
mov dl,al
mov ah,2
int 21h

mov ah,9
lea dx,newl
int 21h
mov ax,2[bx]	; displacement[register]
mov dl,al
mov ah,2
int 21h

mov ah,9
lea dx,newl
int 21h


mov ah,4ch
int 21h
main endp
end main
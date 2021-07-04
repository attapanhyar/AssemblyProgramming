.model small
.stack 100h
.data
; DUP OPERATOR: 
;array db 100 DUP(0)
;array1 db 212 dup (?)
;line db 5,4 ,3 DUP (2,3 DUP (0),(1)); 5,4,2,0,0,0,1,2,0,0,0,1 
w dw 30 dup(0)

.code
main procs
mov ax,@data
mov ds,ax

mov ax,'a'
mov bx,'c'
mov w+18,ax
mov w+48,bx 

MOV ax,w+18
XCHG ax, w+48
mov w+18,ax

mov dl,w+18
mov ah,2
int 21h

mov dl,0ah
int 21h

mov dl,0ah
int 21h

mov dl,w+48
int 21h


mov ah,4ch
int 21h


main endp
end main
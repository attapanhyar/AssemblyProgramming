.model small
.stack 100h
.data
msg1 db 10,13,'enter 1st num: $'
msg2 db 10,13,'enter 2nd num: $'
msg3 db 10,13,'both are equal $'
msg4 db 10,13,'not equal $'
.code 
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg1
int 21h

mov ah,1
int 21h
mov cl,al
sub cl,48
mov ah,9
lea dx,msg2
int 21h
 mov ah,1
 int 21h
 mov ch,al
 sub ch,48
 
 cmp ch,cl
 je equal

 mov ah,9
 lea dx,msg3
 int 21h
 jmp end

 equal:
mov ah,9
lea dx,msg4
int 21h
end:

mov ah,4ch
int 21h
main endp
end main

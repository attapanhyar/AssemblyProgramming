.model small
.stack 100h
.data
msg1 db 10,13,'Please enter a character$'
msg2 db 10,13,'The equi: cap character is $'
msg3 db 10,13,'Press y to continure $'

.code
main proc
mov ax,@data
mov ds,ax
label1:
lea dx,msg1
mov ah,9
int 21h
mov ah,1
int 21h
mov bl,al ; mov input from al to bl
sub bl,32; subtract 20h
mov ah,9
lea dx,msg2
int 21h
mov dl,bl
mov ah,2
int 21h

mov ah,9
lea dx,msg3
int 21h

mov ah,1
int 21h

mov bh,al

cmp bh,'y'
je label1








mov ah,4ch
int 21h


main endp
end main
.model small
.stack 100h
.data
msg db 'Carry happened $'
.code

main proc
mov ax,@data
mov ds,ax
mov ax,8000H
mov bx,01H

cmp ax,bx
Jl carry_
jmp end_

carry_:
	mov ah,9
	lea dx,msg
	int 21h


end_:




mov ah,4ch
int 21h

main endp
end main
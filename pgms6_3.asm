.model small
.stack 100h

.data
msg db 'AX contains One $'
msg2 db 'AX does not contain one$'
.code
main proc
mov ax,@data
mov ds,ax
mov ax,3

cmp ax,1
jnz else_
mov ah,9
lea dx,msg
int 21h
jmp end_
else_:
	mov ah,9
	lea dx,msg2
	int 21h
end_:
mov ah,4ch
int 21h

main endp
end main
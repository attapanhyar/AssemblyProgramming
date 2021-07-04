.MODEL SMALL
.STACK 100H
.data
msg1 db 10,13,'Yes, indeed an even number$'
msg2 db 10,13,'No, it is an Odd Nubmer$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,1
int 21h
mov bl,al

sub bl,30h

test bl,1
jnz not_even
mov ah,9
lea dx,msg1
int 21h
jmp end_
not_even:
	mov ah,9
	lea dx,msg2
	int 21h
end_:

mov ah,4ch
int 21h

main endp
end main
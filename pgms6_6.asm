.model small
.stack 100h
.code
main proc
mov ah,2
mov dl,'?'
int 21h

mov ah,1
int 21h
mov bl,al


;second input
int 21h
mov bh,al

cmp bl,bh
jnl fgreat
mov ah,2
mov dl,bh
int 21h
jmp end_


fgreat:
	mov ah,2
	mov dl,bl
	int 21h

end_:


mov ah,4ch
int 21h
main endp
end main
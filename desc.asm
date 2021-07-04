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

mov ah,1
int 21h
mov bh,al

mov ah,2
mov dl,0ah
int 21h

mov dl,0dh
int 21h

cmp bh,bl
jg print_1
je print_2
mov ah,2
mov dl,bl
int 21h
mov dl,bh
int 21h
jmp end_
print_2:
	mov ah,2
	mov dl,'*'
	int 21h
	jmp end_

print_1:
	mov ah,2
	mov dl,bh
	int 21h
	mov dl,bl
	int 21h


end_:
mov ah,4ch
int 21h

main endp
end main
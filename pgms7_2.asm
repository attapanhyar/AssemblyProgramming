.model small
.stack 100h
.code
main proc
xor bx,bx
mov ah,1
int 21h
repea:
	cmp al,0dh
	je invalid_
	and al,01h
	shl bx,1
	or bl,al
	int 21h
	jmp repea
invalid_:
add bl,48


mov dl,bl
mov ah,2
int 21h

sub bl,48
mov dl,0dh
mov ah,2
int 21h
mov dl,0ah
int 21h

mov cx,16
repea1:
	shl bx,1
	jc print_1
	mov ah,2
	mov dl,'0'
	int 21h
	jmp no_one
print_1:
	mov ah,2
	mov dl,'1'
	int 21h
no_one:
	loop repea1
mov ah,4ch
int 21h
main endp
end main
.model small
.stack 100h
.code
main proc
xor bx,bx
mov cx,4   
mov ah,1
int 21h

start_:
	CMP al,0dh
	je end_while
	CMP al,39h
	jg letters
	and al,0Fh
	jmp shift_
letters:
	sub al,37h
shift_:
	shl bx,cl
	or bl,al
	int 21h
	jmp start_

end_while:
		mov ah,4ch
		int 21h
main endp
end main
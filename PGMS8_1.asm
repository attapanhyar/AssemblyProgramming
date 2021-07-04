.model small
.stack 100h
.code
main proc

mov ah,2
mov dl,'?'
int 21h
xor cx,cx

mov ah,1
int 21h

while_:
	cmp al,0dh
	je end_while
	push AX
	inc cx
	int 21h
	jmp while_
end_while:
mov ah,2
mov dl,0dh ;Carriage return
int 21h
mov dl,0ah ;Line feed
int 21h
jcxz exit
;print the characters in reverse order
TOP:
	POP DX
	int 21h
	loop TOP




exit:
mov ah,4ch
int 21h
main endp
end main
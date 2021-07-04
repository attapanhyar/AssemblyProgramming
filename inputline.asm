.model small
.stack 100h
.code
main proc
mov ah,1
while1:
	int 21h
	cmp al,0dh
	jne while1
	

mov ah,4ch
int 21h
main endp
end main
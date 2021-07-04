.model small
.stack 100h
.code
main proc

mov ah,1
rep_inp:
	int 21h
	cmp al,0dh
	jne rep_inp
	

mov ah,4ch
int 21h

main endp
end main
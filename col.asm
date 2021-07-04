.model small
.stack 100h
.code
main proc

	mov ah,0
	mov al,3
	int 10h
	
	xor cx,cx
	mov cl,2c4f




main endp
end main
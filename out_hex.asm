.model small
.stack 100h
.code
main proc

MOV BX,1010101100100010b
xor cx,cx
mov dh,4
mov cl,4
print_hex:
	mov dl,bh
	shr dl,cl
	cmp dl,10
	jl Number
	add dl,37h
	jmp print_letter
Number:
	or dl,30h
print_letter:
	mov ah,2
	int 21h
	rol bx,cl
	dec dh
	jnz print_hex
mov ah,4ch
int 21h

main endp
end main
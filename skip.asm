.model small
.stack 100h
.code
main proc
	mov ah,0
	int 16h
l1:
	cmp al,'z'
	je exit
	mov ah,0
	int 16h
	jmp l1
exit:
mov ah,4ch
int 21h

main endp
end main
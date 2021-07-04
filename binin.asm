.model small
.stack 100h
.code
main proc
xor bx,bx
mov ah,1
int 21h
while_:
	CMP AL,0DH
	JE END_WHILE
	AND AL,0FH
	SHL BX,1
	OR BL,AL
	int 21h
	JMP while_



END_WHILE:
add bl,30h
mov ah,2
mov dl,bl
int 21h


mov ah,4ch
int 21h

main endp
end main
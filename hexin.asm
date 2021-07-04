.model small
.stack 100h
.code
main proc
xor bl,bl
mov cl,4
mov ah,1
int 21h

while_:
	CMP AL,0dh
	je end_while
	
;convert character to binary
	CMP AL,39
	jG LETTER
;input is a digit
	AND AL,0FH
	JMP SHIFT
LETTER:
	SUB AL,37H
SHIFT:
	shl bx,cl
;insert value into BX
	OR BL,AL
	
	int 21h
	JMP while_





mov ah,4ch
int 21h

main endp
end main
.model small
.stack 100h
.data
string1 db 10 dup('?')
		db '$'
.code 
main proc
MOV AX,@DATA
MOV DS,AX
lea di,string1
CLD
CALL read_str

mov ah,4ch
int 21h
main endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
read_str proc near
	push ax
	push di
	cld
	xor bx,bx
	xor ax,ax
	int 16h
while1:
	cmp al,0dh
	je end_while
	stosb
	inc bx
read:
	xor ax,ax
	int 16h
	jmp while1
end_while:
	pop DI
	POP AX
	RET
read_str endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


end main
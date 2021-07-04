.model small
.stack 100h
.data
string1 db 10 dup('?')
		db '$'
.code
main proc
mov ax,@data
mov ds,ax
;mov es,ax
lea di,string1
CLD
call read_str

;mov ah,9
;lea dx,string1
;int 21h
	lea di,string1
	mov cx,bx
	mov ah,2
loop1:
	mov dl,[di]
	inc di
	int 21h
	loop loop1

mov ah,4ch
int 21h

main endp
read_str proc near
	push ax
	push di
	cld
	xor bx,bx
	
	mov ah,1
	int 21h
while1:
	cmp al,0dh
	je end_while
	
	cmp al,8h
	jne else1
	
	DEC DI
	DEC BX
	JMP read
else1:
	stosb
	inc bx
read:
	int 21h
	jmp while1
end_while:
	pop DI
	POP AX
	RET
read_str endp
end main


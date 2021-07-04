.model small
.stack 100h
.data
msg db 'Welcome to F-18BSCS$'
.code
main proc
;call procedure
call addNum
;after execution of ret statment in called proc

mov ah,4ch
int 21h

main endp 

addNum proc
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
		mov bl,2
		mov cl,3
		add bl,cl
		add bl,30h
		mov ah,2
		MOV dl,bl
		int 21h
	POP DX
	POP CX
	POP BX
	POP AX
ret 
addNum endp
end main
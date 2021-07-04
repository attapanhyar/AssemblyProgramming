.model small
movw MACRO word1,word2
	 push word1
	 pop word2
	 ENDM
.stack 100h
.data
A dw 1,9
B dw 3
	db '$'
.code
main proc
	mov ax,@data
	mov ds,ax
	
	movw a,DX
	movw a+2,B
	
	;conversion from dec to ASCII
	mov bx,30h
	add A,BX
	add A+2,BX
	add B,BX
	
	
	mov ah,9
	lea dx,A
	int 21h
	mov ah,4ch
	int 21h
main endp
	end main
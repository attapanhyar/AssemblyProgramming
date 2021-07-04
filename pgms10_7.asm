.model small
.stack 100h
.data
dollar db 1Ah
cent db 52h
B label byte
	DW 5678h
.code
main proc
mov ax,@data
mov ds,ax
mov ax,WORD PTR dollar

mov ah,4ch
main endp
end main
.model small
.stack 100h
.data
string1 db 'A','A'
		db '$'
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax
lea di,string1
CLD
MOV AL,'B'
STOSB
mov ah,9
lea dx,string1
int 21h

mov ah,4ch
int 21h

main endp
end main


.model small
.stack 100h
.data
msg db 'HELLO',10,13
des1 db 5 DUP ('?')
	db '$'
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax
lea si,msg+4
lea di,des1
mov cx,5
;CLD
STD
l1:
	MOVSB
	ADD DI,2
	loop l1
;rep MOVSB
mov ah,9
lea dx,des1
int 21h



mov ah,4ch
int 21h
main endp
end main
.model small
.stack 100h
.data
msg db 10,13,'The number entered is Even$'
msg2 db 10,13,'The Number entered is ODD$'
.code
main proc
mov ax,@data
mov ds,ax
;mov ah,1
;int 21h
mov bl,24

test bl,01h
jz even_
mov ah,9
lea dx,msg2
int 21h
jmp end_

even_:
	mov ah,9
	lea dx,msg
	int 21h
;or bl,00100000b
;mov ah,2
;mov dl,bl
;int 21h

end_:

mov ah,4ch
int 21h
main endp
end main
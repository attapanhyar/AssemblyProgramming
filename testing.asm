.model small
.stack 100h
.code
main proc
mov ax,0b800h
mov ds,ax
mov cx,2000
mov di,0
full_buff:
	mov [di], 1441h
	add di,2
	loop full_buff
	

mov ah,4ch
int 21h
main endp
end main
.model small
.stack 100h
.data
msg db 'this is a message'
lim db '$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h

xor si,si
mov cx,17
l1:
	cmp msg[si],' '
	je Next
	and msg[si],0dfh
	
Next:
	inc si
	loop l1
	
mov ah,9
lea dx,msg
int 21h
mov ah,4ch
int 21h
main endp
end main
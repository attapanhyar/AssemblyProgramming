.model small
.stack 100h
.data
msg db 'Welcome to TEXT MODE$'
.code
main proc
;set cursor position
	mov ax,@data
	mov ds,ax
	mov ah,2
	MOV dh,0ch
	mov dl,27h
	int 10h
	
	mov ah,9
	lea dx,msg
	int 21h


mov ah,4ch
int 21h
main endp
end main
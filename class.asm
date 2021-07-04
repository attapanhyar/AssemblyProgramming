.model small
.stack 100h
.data
msg db 'This is a message$'
.code
main proc
	mov ax,@data
	mov ds,ax
	mov ah,0
	mov al,3
	int 10h
	
	mov ah,2
	mov dh,0ch
	mov dl,31d
	int 10h
	
	mov ah,9
	lea dx,msg
	int 21h
	
	

mov ah,4ch
int 21h
main endp
end main
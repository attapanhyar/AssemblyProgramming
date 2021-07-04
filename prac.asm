.model small
.stack 100h
.data
var1 db 'Enter first integer$'
var2 db 10,13,'ENter Second Integer$'
sum db 10,13,'The sum is $'
.code
main proc
	mov ax,@data
	mov ds,ax
	
	mov ah,9
	lea dx,var1
	int 21h
	
	mov ah,1 ;first input
	int 21h
	mov bl,al
	
	mov ah,9
	lea dx,var2
	int 21h
	
	mov ah,1
	int 21h
	
	mov cl,al
	
	add bl,cl
	sub bl,30h
	
	mov ah,9
	lea dx,sum
	int 21h
	
	mov dl,bl
	mov ah,2
	int 21h
	
	
	
	
	
	
exit_:
	mov ah,4ch
	int 21h

mov ah,4ch
int 21h
main endp
end main
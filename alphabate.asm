.model small
.stack 100h
.data 
 msg db 10,13,'Alphabate from A to Z $'
.code
main proc 
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h

mov cl,26
mov dl,65
mov ah,2

@loop:
        int 21h
		INC dl
		DEC cl
		jnz loop
		
mov ah,4ch
int 21h

main endp
end main 

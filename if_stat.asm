.model small
.stack 100h
.data 
msg db 10,13,'Not Small ALphabet$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,2
mov dl,'?'
int 21h
;input
mov ah,1
int 21h
mov bl,al
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
cmp bl,'a'
JL not_small
mov ah,2
mov dl,bl
int 21h
jmp end_
not_small:
	
	mov ah,9
	lea dx,msg
	int 21h
	
	
	

end_:
mov ah,4ch
int 21h
main endp
end main
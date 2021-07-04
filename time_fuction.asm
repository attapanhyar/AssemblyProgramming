public get_time
.model small
.code
get_time proc
	mov ah,2ch
	int 21h
	
	mov al,ch
	call convert
	mov [bx],ax
	
	mov al,cl
	call convert
	mov [bx+3],ax
	mov al,dh
	call convert
	mov [bx+6],ax
	get_time endp
	;
convert proc
	mov ah,0
	mov dl,10
	div dl
	or ax,3030h
	ret
convert endp
end
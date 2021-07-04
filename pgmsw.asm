.model small
.STACK 100H
.data
time_buff db '00:00:00$' ;time buffer
.code
main proc

	mov ax,@data
	mov ds,ax
	lea bx,time_buff
	call get_time
	lea dx,time_buff
	mov ah,09
	int 21h


mov ah,4ch
int 21h
main endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
	ret
	get_time endp
	;
convert proc
	mov ah,0
	mov dl,10
	div dl
	or ax,3030h
	ret
convert endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
end main
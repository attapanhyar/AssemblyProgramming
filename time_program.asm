.MODEL SMALL
.STACK 100H
.data
time_buff db '00:00:00$' ;time buffer
.code
main proc

	mov ax,@data
	mov ds,ax
	lea dx,time_buff
	call get_time
	lea dx,time_buff
	mov ah,09
	int 21h


mov ah,4ch
int 21h

main endp
end main
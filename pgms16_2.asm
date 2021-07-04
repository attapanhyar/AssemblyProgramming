.model small
.stack 100h
.code
main proc

	mov ax,6	;select 300x200 CGA
	int 10h
	;horizontal line
	mov ah,0ch  ;write pixel
	mov al,1	;white color of pixel
	mov cx,0	;column number
	mov dx,100	;Row number
L1:
	int 10h
	inc cx		;increament column number only
	cmp cx,640	;unitl column 400
	jle l1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov cx,350	;column number
	mov dx,10	;Row number
L2:
	int 10h
	inc dx		;increament Row number only
	cmp dx,190	;unitl column 400
	jle l2
	
	




mov ah,4ch
int 21h

main endp
end main
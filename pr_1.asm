.model small
.stack 100h
.data
msg db "Cltr+S is pressed $"
.code
main proc
	mov ax,@data
	mov ds,ax
	mov ah,0
	int 16h  ;input 
		
	cmp al,013h
	jne exit
	
	mov ah,9
	lea dx,msg
	int 21h
	

exit:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
.model small
.stack 100h
.data
prompt db 'Enter the line of text',0ah,0dh,'$'
NoCap_msg db 0dh,0ah,'NO CAPITALS $'
cap_msg db 0ah,0dh,'First Capital ='
FIRST db ']'
	  db 'Last capital = '
LAST  db '@$'
.code
main proc
;initialize DS
	mov ax,@data
	mov ds,ax
	mov ah,9
	lea dx,prompt
	int 21h
	;read a line of text
	mov ah,1
	int 21h
WHILE_:
	CMP AL,0DH
	je END_WHILE
	;if character is capital
	CMP AL,'A'
	jnge END_IF
	CMP AL,'Z'
	jnle END_IF
	; if letter precedes first capital letter

	CMP AL, FIRST
	jnl check_last
	MOV first, AL
CHECK_LAST:
	CMP AL,LAST
	JNG END_IF
	MOV LAST,AL
END_IF:
	int 21h
	JMP WHILE_

END_WHILE:
	MOV AH,9
	CMP FIRST,']'
	JNE CAPS
	
	lea DX,NoCap_msg
	JMP Display
	
CAPS:
	lea dx, cap_msg
DISPLAY:
	int 21h
	
	mov ah,4ch
	int 21h
	
	main endp 
	end main
	
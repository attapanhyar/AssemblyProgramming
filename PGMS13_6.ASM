.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
	mov ah,8
	xor bh,bh
	int 10h
	
	mov ah,9
	mov cx,10   ;Number of times to print character
	mov bl,70H ; Invert Screen
	int 10h
	
;DOS EXIT
	MOV AH,4CH
	INT 21H

MAIN ENDP
END MAIN
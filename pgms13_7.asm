.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC

	MOV AH,0
	MOV AL,3	;VIDEO MODE 80X25 TEX
	INT 10H
	
	;CLEAR WINDOS
	MOV AH,6
	MOV CX,0;081AH
	MOV DX, 124fh
	MOV BH,43H ; CYAN CHARACTERS ON RED BACKGROUNG
	MOV AL,0
	INT 10H
;MOVE CURSOR
	MOV AH,2
	MOV DX,0C27H
	XOR BH,BH
	INT 10H
	
;DISPLAY CHARACTERS
	MOV AH,09
	MOV BH,0
	MOV BL, 0C3H
	MOV CX,1
	MOV AL,'A'
	INT 10H
	
	
;DOS EXIT
	MOV AH,4CH
	INT 21H

MAIN ENDP
END MAIN
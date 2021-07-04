dosseg
.model small
.stack 100h
.data
.CODE
MAIN PROC
mov ah,2
mov dl,'?'
int 21h

;input a character

mov ah,1
int 21h
mov bl,al
; go to new line

mov ah,2
mov dl,0ah
int 21h


mov ah,2
mov dl,0dh
int 21h


;display character
mov ah,2
mov dl,bl
int 21h

mov ah,4ch
int 21h
MAIN ENDP
END MAIN

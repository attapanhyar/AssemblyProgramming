.model small
.stack 100h
.code
main proc
mov ah,0
mov al,6	;300x200 CGA
int 10h

mov ah,0bh	;function
mov bh,00h	;sub function for background
mov bl,09	;for light blue in Table 16.2
int 10h

mov bh,1	; sub function to select palette
mov bl,1	;palette ONE
int 10h


mov ah,4ch
int 21h
main endp
end main
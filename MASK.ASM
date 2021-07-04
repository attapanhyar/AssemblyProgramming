.model small
.stack 100h
.code
main proc
mov bl,'2'
mov bh,'3'
and bl,0fh		; conversion from ASCII to number
and bh,0fh 		; conversion from ASCII to number
add bh,bl		; add bh and bl saving the results in bh
or bh,30h 		; conversion from number to ASCII
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov dl,bh 		; PRINT the result
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
.model small
.stack 100h
.data
txt1 db 'Enter the letter in Capital:$'
txt2 db 10,13,'Equivalent small letter is: $'
txt3 db 10,13,'Invalid Character$'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea dx,txt1
int 21h

mov ah,1
int 21h
mov bl,al
cmp bl,'A'
jb invalid_
cmp bl,'Z'
jA invalid_
mov ah,9
lea dx,txt2
int 21h
;conversion form Capital to small
add bl,32
;print character
mov ah,2
mov dl,bl
int 21h
jmp end_
invalid_:
	mov ah,9
	lea dx,txt3
	int 21h


end_:
mov ah,4ch
int 21h

main endp
end main
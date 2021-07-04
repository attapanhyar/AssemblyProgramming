;;; Defining PTR
.model small
.stack 100h
.data
msg db 'This is a message$'
.code
main proc
mov ax,@data
mov ds,ax
MOV BX,1
mov Bh,1
;mov [Bx],1	; destination can not be identified as word or byte
MOV word PTR [BX],1
lea SI,msg
;mov [si],'T'
mov BYTE PTR [SI],'T'
	mov ah,9
	lea dx,msg
	int 21h

mov ah,4ch
int 21h
main endp
end main
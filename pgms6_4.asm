.model small
.stack 100h
.data
msg1 db 'AX has One$'
msg2 db 'AX has Zero$'
msg3 db 'Ax has some other value$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,1
int 21h
cmp al,'1'
je AX_has_one
je AX_has_two

mov ah,9
lea dx,msg3
int 21h
jmp end_

AX_has_one:
	mov ah,9
	lea dx,msg1
	int 21h
	jmp end_
AX_has_two:
	mov ah,9
	lea dx,msg2
	int 21h
	jmp end_


end_:
	mov ah,4ch
	int 21h
main endp
end main
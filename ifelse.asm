.model small
.stack 100h
.data
msg1 db 'Both character are equal$'
msg2 db 'Characters are not equal$'
.code
main proc
mov ax,@data
mov ds,ax
mov al,'a'
mov bl,'a'
mov ah,9
cmp al,bl
je Both_equal
lea DX,msg2
int 21h
jmp end_prg 
Both_equal:
	lea DX,msg1
	int 21h
end_prg:


mov ah,4ch
int 21h
main endp
end main
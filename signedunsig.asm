.model small
.stack 100h
.data
msg1 db 10,13,'Couldnt Jump Jump$'
msg2 db 10,13,'This an unsigned jump$'
msg3 db 10,13,'Signed Jump is Performed$'

.code
main proc
mov ax,@data
mov ds,ax
mov cx,7fffh
mov dx,8000h

cmp cx,dx
ja unsigned_jmp
jg signed_jmp
mov ah,9
lea dx,msg1
int 21h

jmp end_prg



unsigned_jmp:
lea dx,msg2
mov ah,9
int 21h

signed_jmp:
lea dx,msg3
mov ah,9
int 21h
end_prg:

mov ah,4ch
int 21h
main endp
end main

.model small
.stack 100h
.data
welcome db 'Please, press a key: $'
yes_msg db 10,13,'User has pressed Y$'
no_msg db 10,13,'User has not pressed capital Y$'
.code 
main proc
mov ax,@data
mov ds,ax
; print the welcome message
lea dx,welcome
mov ah,9
int 21h
;input 
mov ah,1
int 21h
mov bl,al
cmp bl,'Y'
je true_lab
cmp bl,'y'
je true_lab
mov ah,9
lea dx,no_msg
int 21h
jmp end_

true_lab:
mov ah,9
lea dx,yes_msg
int 21h
end_:
mov ah,4ch
int 21h

main endp
end main

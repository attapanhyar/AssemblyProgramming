.model small
.stack 100h
.data
mes db 'Pakistan $'

.code
main proc
call message
mov ah,4ch
int 21h
main endp
message proc
mov ax,@data
mov ds,ax
lea dx, mes
mov ah,9
int 21h
RET
message endp
end main
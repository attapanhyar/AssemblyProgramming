.model small
.stack 100h
.data
msg db 'Welcome to F-18BSCS$'
.code
main proc

call print_name


mov ah,4ch
int 21h

main endp 

print_name proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
ret 
print_name endp
end main
.model small
.stack 100h
.data
input db 10,13,'Input first number: $'
input2 db 10,13,'Second Number is : $'
result db 10,13,'The sum is: $'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea DX,input
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,30h
; now second input
mov ah,9
lea DX,input2
int 21h
;take second input
mov ah,1
int 21h
sub al,30h
Add bl,al	; convert form ASCII to decimal

mov ah,9
lea dx,result
int 21h
add bl,30h ;convert from dec to ASCII
mov ah,2
mov dl,bl
int 21h



mov ah,4ch
int 21h
main endp
end main
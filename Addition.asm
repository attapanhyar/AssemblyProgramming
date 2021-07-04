.model small
.stack 100H
.data

msg1 db 'Enter the first Operand$'
msg2 db 10,13,'Entre the second Operand$'
msg3 db 0ah,0dh'The sum is $'

.code
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea DX,msg1
int 21h

mov ah,1		; for first input
int 21h
mov cl,al		; move ascii of first operand to cl
sub cl,48
mov ah,9
lea DX,msg2
int 21h

mov ah,1
int 21h

mov ch,al	; mov ascii of second operand in CH
sub ch,48	; convert ascii to decimal

lea DX,msg3
mov ah,9
int 21h

add ch,cl    ; add both operands,but result is in decimal
add ch,48

mov ah,2
mov dl,ch
int 21h



mov ah,4ch
int 21h

main endp
end main
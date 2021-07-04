.model small
.stack 100h
.code
main proc
mov cx,256
mov dl,0
mov ah,2
loopx:
        inc dl
        int 21h
        dec cx
        JNZ loopx

 mov ah,4ch
 mov ah,2
 int 21h
 
main endp
end main

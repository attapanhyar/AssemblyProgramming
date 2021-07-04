.mov sb
.data
a db 'Welcome to Assembly Programming'
b db 31 dup('?')
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax
mov cx,31
mov si,a
mov di,b
movsb
loop_:
		movsb
		inc si
		inc di
		loop loop_

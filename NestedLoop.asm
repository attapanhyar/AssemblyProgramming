.model small
.stack 100h
.code
main proc
mov cl,10
mov ah,2

begin1:
		mov ch,0
begin2:	
		mov dl,'*'
		int 21h
		inc ch
		cmp cl,ch
		jnz begin2
		jmp new_line
norm_exe:		
		dec cl
		jnz begin1
		jmp end_prg
		



new_line:
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		jmp norm_exe
end_prg:
mov ah,4ch
int 21h
main endp
end main
;(1) regrister mode, which means that an operand is a register MOV AX,BX
;(2) immediate mode, when an operand is a constant; and
; MOV AX,0
;(3) direct mode, when an operand is variable
; MOV AX,A

;1. Register InDirect Mode
	;offset address of operand is contained in a register.
	We say register act a pointer to memory location
	For example, suppose that SI contains OlOOh, and the word at O100h contains 1234h. To execute
	MOV AX,[SI] vs	MOV AX,SI





;2.  Register Base
	In these modes, the operand's offset address Is obtained by adding a number called a displacement to the contents of a register. Displacement may be any or the following:
	A (offset address of a variable)
	-2 (constant) .
	A + 4 (offset address of a variable plus a constant)
;3. indexed: 
;4.  base Indexed
.MODEL SMALL
.STACK 100H
.DATA
    INPUTMSG  DB  'ENTER A STRING OF CAPITAL LETTERS : $'
    OUTPUTMSG  DB  0DH,0AH,'THE LONGEST CONSECUTIVE INCREASING STRING IS : $'
.CODE

MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV CH,0
 
    MOV AH,9
    LEA DX,INPUTMSG
    INT 21H
 
    INPUT_1:
        MOV AH,1
        INT 21H
     
        CMP AL,0DH
        JE END_
        MOV CL,1
        MOV BL,AL
        MOV DH,AL
        INPUT_2:
            INT 21H
         
            CMP AL,0DH
            JE END_
         
            INC BL
            CMP BL,AL
            JNE INIT
            INC CL
            JMP INPUT_2
        INIT:
            CMP CH,CL
            JL UPDATE
         
            MOV CL,1
            MOV BL,AL
            MOV DH,AL
            JMP INPUT_2
         
            UPDATE:
                MOV CH,CL
                MOV BH,DH
             
                MOV CL,1
                MOV BL,AL
                MOV DH,AL
                JMP INPUT_2
        END_:
            CMP CH,CL
            JL REUPDATE
            JMP END_2
         
            REUPDATE:
                MOV CH,CL
                MOV BH,DH
                JMP END_2
        END_2:
       
        MOV AH,9
        LEA DX,OUTPUTMSG
        INT 21H
     
        MOV AH,2
        MOV DL,BH
        OUTPUT:
            CMP CH,0
            JE FINISH
         
            DEC CH
            INT 21H
            INC DL
            JMP OUTPUT
        FINISH:  
     
    MOV AH,4CH
    INT 21H
   
    MAIN ENDP
END MAIN
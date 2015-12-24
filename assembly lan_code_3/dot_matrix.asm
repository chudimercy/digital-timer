org 0h
     mov P3,#0ffh
     mov P1,#0
    ; mov 41,#0ffh
     ;mov 42,#0ffh
    ;mov 43,#0ffh
    ; mov 44,#0ffh
     ;mov 45,#0ffh
start:
     mov p1,#1Bh
     call delay 
    jmp start
      
LETW:MOV 41,#11111111B
     MOV 42,#01000000B
     MOV 43,#00010000B
     MOV 44,#01000000B
     MOV 45,#11111111B
     RET
LETE:MOV 41,#11111111B
     MOV 42,#10010001B
     MOV 43,#10010001B
     MOV 44,#10010001B
     MOV 45,#00000000B
     RET
LETL:MOV 41,#11111111B
     MOV 42,#10000000B
     MOV 43,#10000000B
     MOV 44,#10000000B
     MOV 45,#10000000B
     RET
LETC:MOV 41,#01111101B
     MOV 42,#10000011B
     MOV 43,#10000011B
     MOV 44,#10000011B
     MOV 45,#01111101B
     RET
LETO:MOV 41,#01111101B
     MOV 42,#10000011B
     MOV 43,#10000011B
     MOV 44,#10000011B
     MOV 45,#01111101B
     RET
LETM:MOV 41,#11111111B
     MOV 42,#00000111B
     MOV 43,#00011001B
     MOV 44,#00000011B
     MOV 45,#11111111B
     RET
     
     


SCROLL:MOV R6,41
      CALL SHIFT
      MOV R6,42
      CALL SHIFT
      MOV R6,43
      CALL SHIFT
      MOV R6,44
      CALL SHIFT
      MOV R6,45
      CALL SHIFT
      
SHIFT:
      MOV 58,57
      MOV 57,56
      MOV 56,55
      MOV 55,54
      MOV 54,53
      MOV 53,52
      MOV 52,51
      MOV 51,50
      MOV 50,R6
      ret      
      
play:
       mov r4,#5
chudi: call SCROLL
       DJNZ r4,chudi
       ret
      
clock:
     clr P3.0
     setb P3.0
     clr  P3.0
     ret 
delay:
      mov R1,#22
nice: mov R0,#22
Chux: NOP
      DJNZ R0,Chux
      DJNZ R1,nice
      RET 

      end
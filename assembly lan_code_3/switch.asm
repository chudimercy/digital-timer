org 0h
mov p1,#0
mov p2,#0ffh
 start:
     
     clr p1.5
     jb p2.3,start
     setb p1.5
    call DELAY
      
     jmp start
 
DELAY:
      mov R1,#255
nice: mov R0,#255
Chux: NOP
      DJNZ R0,Chux
      DJNZ R1,nice
      RET 

      end
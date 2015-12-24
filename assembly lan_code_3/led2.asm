org 00h
      mov p2,#0
start:mov r4,#10
     setb p2.0
     call delay
     setb p2.7
     call delay
     setb p2.1
     call delay
     setb p2.6
     call delay
     setb p2.2
     call delay
     setb p2.5
     call delay
     setb p2.3
     call delay
     setb p2.4
     clr p2.0
     call delay
     clr p2.7
     call delay
     clr p2.1
     call delay
     clr p2.6
     call delay
     clr p2.2
     call delay
     clr p2.5
     call delay
     
     call delay
     clr p2.3
     call delay
     clr p2.4
     call delay
     jmp start
    
     
     
     
      
  
delay:
     mov R1, #225
     Slow: mov R0, #225
     Slower: NOP
     DJNZ R0, slower  
     DJNZ R1, slow
     RET
 END    
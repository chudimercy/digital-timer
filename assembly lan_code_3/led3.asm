org 00h
      mov p2,#0
start:
     mov p2,#003h
     call delay
     mov p2,#0
     call delay
     mov p2,#00ch
     call delay
     mov p2,#0
     call delay
     mov p2,#030h
     call delay
     mov p2,#0
     call delay
     mov p2,#0c0h
     call delay
     mov p2,#0
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
org 0h
mov P2, #0
start: mov r4,#10


   stage1:
   
         mov p2,#00h
         call delay
         mov p2,#0ffh
         call delay
         ;djnz r4,stage1
         mov r4,#10
   



mov P2, #00000001b
call delay
mov P2, #00000010b
call delay
mov P2, #00000100b
call delay
mov P2, #00001000b
call delay
mov P2, #00010000b
call delay
mov P2, #0010000b
call delay
mov P2, #01000000b
call delay
mov P2, #10000000b
call delay
JMP start
call delay

delay:
     mov R1, #225
     Slow: mov R0, #255
     Slower: NOP
     DJNZ R0, slower  
     DJNZ R1, slow
     RET
 END    
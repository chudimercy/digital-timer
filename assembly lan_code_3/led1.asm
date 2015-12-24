org 00h
      mov p2,#0
start:mov r4,#10
   stage1:
         mov p2,#00h
         call delay
         mov p2,#0ffh
         call delay
         djnz r4,stage2_1
         mov r4,#10
           
  stage2_1:        
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
 djnz r4,stage2
         mov r4,#10         
   stage2:
         mov p0,#01h
         call delay
         mov p0,#02h
         call delay
         mov p0,#04h
         call delay
         mov p0,#08h
         call delay
         mov p0,#10h
         call delay
         mov p0,#20h
         call delay
         mov p0,#40h
         call delay
         mov p0,#80h
         call delay
         djnz r4,stage3
         mov r4,#10
    stage3:
         mov p0,#0fch
         call delay
         mov p0,#0ffh
         call delay
         mov p0,#0f3h
         call delay
         mov p0,#0ffh
         call delay
         mov p0,#0cfh
         call delay
         mov p0,#0ffh
         call delay
         mov p0,#03fh
         call delay
         mov p0,#0ffh
         call delay
         djnz r4,stage1
         mov r4,#10
            Ljmp start 
         
delay:
     mov R1, #225
     Slow: mov R0, #225
     Slower: NOP
     DJNZ R0, slower  
     DJNZ R1, slow
     RET
 END    
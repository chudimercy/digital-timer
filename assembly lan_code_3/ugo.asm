
org 00h
first:
clr p1.0
call delay
call delay
setb p1.0
clr p1.1
call delay
call delay
setb p1.1
clr p1.2
call delay
call delay
setb p1.2
clr p1.3
call delay
call delay
setb  p1.3
clr p1.4
call delay
call delay
setb p1.4
clr p1.5
call delay
call delay
setb p1.5
clr p1.6
call delay
call delay
setb p1.6
clr p1.7
call delay
call delay
setb p1.7
mov a,#36h
RR a
RR a
jmp first
delay:
mov r0,#255
delay1:mov r1,#255
delay2:nop
djnz r1,delay2
djnz r0,delay1
ret
end
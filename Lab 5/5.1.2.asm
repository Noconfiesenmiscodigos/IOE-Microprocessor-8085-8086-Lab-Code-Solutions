;Write a program to make a clock. Use port A, B and C to display second, minute and hour respectively. The clock should be 24 hours basis.

LXI H,0101H ;Port A = Second, Port B = Minute, Port C = Hour
MVI C,00H ;Without Timer
MVI A,00H
OUT 40H
OUT 41H
OUT 42H

L1: MOV A,C ;C stores seconds
OUT 40H
INR C
CPI 3BH ;3BH = 59D
JZ L2
JMP L1

L2: MOV A,L ;L stores minute
INR L
CPI 3BH ;3BH = 59D
JZ L3
MVI C,00H
MOV A,C 
OUT 40H
MOV A,L
OUT 41H
JMP L1
 
L3: MOV A,H ;H stores hour
INR H 
OUT 42H
CPI 23H ;3BH = 59D
JC L4
MVI C,00H
MOV A,C 
OUT 40H
MVI L,00H
OUT 41H
MVI L,00H
JMP L1

L4: MOV A,L
CPI 3BH ;3BH = 59D
JZ L5
JMP L1

L5: MOV A,C
CPI 17H ;17H = 23D
JZ L10
JMP L1

L10: HLT
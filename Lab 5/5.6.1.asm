;A table contains ten 8-bit data starting at 8050H. Write an 8085 program to store the sum of odd numbers at 8060H and store sum of even numbers at 8070H. Also display the sum of even numbers at output ports after 2-3 seconds of displaying the sum of odd numbers.

LXI B,8050H ;With Timer
MVI H,00H

L1: MOV A,H
INR H
CPI 0AH
CNC L2 

STC
CMC ;Reset C Flag

LDAX B
INR C
MOV D,A
RAR
JNC L3 ;Even
JC L4 ;Odd

L3: MOV A,E ;E stores sum of even numbers
ADD D ;A has changed after rotation so
MOV E,A
JMP L1

L4: MOV A,L ;L stores sum of odd numbers
ADD D ;A has changed after rotation so
MOV L,A
JMP L1

L2: MOV A,E
STA 8070H
MOV A,L
STA 8060H

OUT 40H
MOV C,E
CALL L5

MOV A,C
OUT 40H
JMP L10

L5: LXI D,0FFFFH ;Approx 0.5 sec delay
L6: DCX D
MOV A,D
ORA E
JNZ L6

LXI D,0FFFFH ;Approx 0.5 sec delay
L7: DCX D
MOV A,D
ORA E
JNZ L7

LXI D,0FFFFH ;Approx 0.5 sec delay
L8: DCX D
MOV A,D
ORA E
JNZ L8

LXI D,0FFFFH ;Approx 0.5 sec delay
L9: DCX D
MOV A,D
ORA E
JNZ L9

RET

L10: HLT
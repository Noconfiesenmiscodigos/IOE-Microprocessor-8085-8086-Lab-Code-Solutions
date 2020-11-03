;Write a program that will check whether the bit D6 of a number stored at 8123 is 0 and its bit D3 is 1. If the condition satisfies display the number.

MVI A,05BH ;Put your number here
MOV B,A
STA 8123H

MVI C,00H

RLC;1
RLC;2
JC L1
HLT

L1: RLC ;After 2 rotation D3 is now at D5
RLC
RLC
JC L2
HLT

L2: MOV A,B
OUT 40H
HLT


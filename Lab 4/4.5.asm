;Write a program that will count up from 00 to FF at port A. Be sure to use PCHL command.

MVI A,00H

L1: OUT 40H
CPI 0FFH
INR A
JNC L2

L2: JZ L3
JMP L1
        ;Output is at O/P port 40H 
L3: HLT

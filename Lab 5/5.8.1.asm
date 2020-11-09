;Write a program at memory location FE00H, which resets all memory starting from 8000H to FE00H. Modify the above program to set 01H to all memory location.

LXI B,8000H

L1: MVI A,00H
STAX B
INX B
MOV A,B
CPI 0FEH
JNC L2
JMP L1

L2: JZ L3
JMP L1

L3: MOV A,C
CPI 00H
JNC L4
JMP L1

L4: JNZ L5
JMP L1

L5: HLT



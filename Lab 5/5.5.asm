;A table contains ten 8-bit data starting at 9000H. Write an 8085 program to transfer the data from this table to next table starting at 9020H if the number is greater than 40H and less than C0H, else store 00H.

LXI B,9000H ;(40H<n<C0H)
LXI D,9020H ;(64D<n<192D)

L1: MOV A,C
CPI 0AH
CNC L7 

STC
CMC ;Reset C Flag
MVI A,00H
ADI 10H ;Reset Z Flag

LDAX B
CPI 40H ;(n>40H(=64D))
JNC L2

L3: MVI A,00H
STAX D
INR C
INR E
JMP L1

L2: JNZ L4
JMP L3

L4: CPI 0C0H ;(n<C0H(=192D))
JC L5
JMP L3

L5: JNZ L6
JMP L3

L6: STAX D
INR C
INR E
JMP L1

L7: JNZ L8
RET

L8: HLT

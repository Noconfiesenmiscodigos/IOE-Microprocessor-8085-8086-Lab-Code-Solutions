;Write a program to exchange the content of register pair BC and DE with the use of XCHG instruction. Assume data AABBH and CCDDH are in register pair BC and DE respectively. Examine the register contents before and after execution.

MVI B,0AAH
MVI C, 0BBH
MVI D, 0CCH
MVI E, 0DDH
MOV H,B
MOV L,C
XCHG
MOV B,H
MOV C,L
HLT 
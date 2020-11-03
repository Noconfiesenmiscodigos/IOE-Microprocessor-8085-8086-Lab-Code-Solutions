;Load 4455H and 6677H in register pair BC and DE respectively and exchange their contents. Examine the register contents before and after execution.

MVI B,44H
MVI C,55H
MVI D,66H
MVI E,77H
MOV H,B;TO USE XCHG
MOV L,C
XCHG
MOV B,H;TO COPY SWAPPED CONTENTS
MOV C,L
HLT
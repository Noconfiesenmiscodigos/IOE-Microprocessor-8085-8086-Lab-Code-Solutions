;Load 11H, 22H, 33H, 44H and 55H into accumulator and registers B, C, D and E respectively, and store these data in memory location starting at 9000H to 9004H.

MVI A,11H
STA 9000H
MVI B,22H
MOV A,B
STA 9001H
MVI C,33H
MOV A,C
STA 9002H
MVI D,44H
MOV A,D
STA 9003H
MVI E,55H
MOV A,E
STA 9004H
HLT
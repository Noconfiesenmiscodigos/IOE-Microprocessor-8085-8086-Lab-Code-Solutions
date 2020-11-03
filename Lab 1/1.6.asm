;The data 44H and 66H are stored in memory location 9000H and 9001H respectively. Write a program to transfer these data to memory location 9050H and 9051H respectively, use LHLD and SHLD instructions.

MVI A,44H
STA 9000H
MVI A,66H
STA 9001H
LHLD 9000H
SHLD 9050H
HLT
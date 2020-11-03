;Suppose the memory content is as shown in the table along side. Write a program to subtract 16-bit data at memory location 8092 (2697H) from data at memory location 8090 (7963H). Store the result at memory location 8094 in reverse order. (16-bit data is always stored in two memory locations in reverse order)

MVI A,79H
MVI B,26H
SUB B
STA 8094H ;Result is at 8094

MVI A, 63H
MVI B, 97H
SBB B
STA 8095H ;Result is at 8094

HLT


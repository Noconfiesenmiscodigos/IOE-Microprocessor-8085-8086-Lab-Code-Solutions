;Suppose reg H has 34 and reg D has 12. Write program to subtract BCD value in reg D from the BCD value in reg H. Store the BCD result in reg H.

MVI H,34
MVI D,12

MOV A,H
SUB D
DAA

MOV H,A

HLT



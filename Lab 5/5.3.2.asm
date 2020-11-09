;Write a program that takes a BCD number from memory location 8090H, and displays the multiplication table in a port at interval of two seconds (approximately). (Assume the number at address 8090H will not exceed nine). Let 8090H contains 05 then display 05 first and after 2 second display 10 and again after 2 seconds 15 and so on up to 50.

MVI A,8 ;Put your BCD number here (<=09H(09D))
STA 8090H ;Without Timer
MOV L,A
MVI A,00H
MVI H,00H

L1: MOV A,H
INR E ;E = counter
ADD L
OUT 40H
MOV H,A
MOV A,E
CPI 0AH
MOV A,H
JNC L2
JMP L1

L2: JZ L3
JMP L1

L3: HLT

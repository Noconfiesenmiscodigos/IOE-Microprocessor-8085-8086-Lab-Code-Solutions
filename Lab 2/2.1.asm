;Two 16-bit data are stored in memory as shown in table below. Write a program to add 16-bit data at memory location 9000 (4790H) and at 9010 (6283H), and display the result in output ports. Use port A for lower byte and port B for higher byte.

LXI D,9000H ;Add 
LXI H,9010H
DAD D
SHLD 0000H

MOV A, L ;displaying output
OUT 40H
MOV A,H
OUT 41H

JNC PRINT_NOTHING

MVI A, 01H ;display carry if any
OUT 42H
HLT

PRINT_NOTHING: HLT

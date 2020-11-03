;The data in the memory is as shown in the table along side. Write a program to increase the 16-bit data at memory location 80A2 and decrease the 16-bit data at memory location 80A4.

LXI H,0FA2H
INR H
INR L

SHLD 80A2H

LXI H,0026H
DCR H
DCR L

SHLD 80A4H

HLT
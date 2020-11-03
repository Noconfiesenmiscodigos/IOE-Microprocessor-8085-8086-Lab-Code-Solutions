;Suppose the memory content is as shown in the table along side. Write a program to Add the 16-bit data at memory location 8084 with the 16 bit data at 8086 and store the result at 8088. Use DAD instruction in adding 16 bit data. Verify the result with the 16-bit addition using ADC instruction.
 
LXI H, 0A279H;
LXI D, 4BC4H;
DAD D
SHLD 8088H

STC
CMC

MVI A,79H
MVI B,0C4H
ADD B
STA 0001H

MVI A, 0A2H
MVI B, 4BH
ADC B
STA 0000H ;check answer in location 8088H & 0000H

HLT


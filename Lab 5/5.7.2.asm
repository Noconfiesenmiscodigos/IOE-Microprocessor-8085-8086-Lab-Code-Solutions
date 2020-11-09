;A table contains ten 8-bit numbers from memory location 9500H; write a program to arrange in descending order.

MVI B, 09H ;Counter = N - 1  
  
L1: LXI H, 9500H 
MOV C,B 

L2: MOV A, M 
INX H 
CMP M ;Compare number with next number
JNC L3 ;If less, don't interchange
JZ L3  ;If equal, don't interchange

MOV D, M
MOV M, A
DCX H
MOV M, D
INX H ;Interchange two numbers

L3: DCR C ;Decrement counter 2
JNZ L2 ;If not zero, repeat
DCR B ;Decrement counter 1
JNZ L1
HLT
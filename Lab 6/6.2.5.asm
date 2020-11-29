;Write a program to generate and store a multiplication table of a number stored as num1

.MODEL SMALL
.STACK 64
.DATA
NUM1 DB 8, 10 DUP(0)
.CODE

MOV AX,@DATA
MOV DS,AX
LEA DI,NUM1
MOV SI,DI
MOV AX,0000H
MOV CX,000AH
MOV BL,00H

AGAIN:	MOV AL,[SI]
INC BL
MUL BL
INC DI
MOV [DI],AL
LOOP AGAIN 
MOV AH,4CH
INT 21H

END



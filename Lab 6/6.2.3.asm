;There are two tables having ten 16-bit data in each. Write an assembly language program to generate the third table which contains the sum of corresponding element of first and second table.

.MODEL SMALL
.STACK 64
.CODE

MOV AX,0000H
MOV CX,000AH
MOV DI,200H

AGAIN:	MOV AX,[DI]
ADD AX,[DI+20H]
MOV [DI+40H],AX
ADD DI,02H
LOOP AGAIN
MOV AH,4CH
INT 21H

END

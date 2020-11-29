;Two tables of data are stored having ten 16-bit data each. Write an assembly language program to generate the third table which contains 1FFFH if the corresponding data in first table is less then that of second table, else store 0000.

.MODEL SMALL
.STACK 64
.CODE

MOV CX,000AH
MOV DI,200H   

AGAIN:	MOV AX,[DI+20H]
MOV DX,[DI]
MOV [DI+40H],0000H
CMP AX,DX
JGE NEXT
MOV [DI+40H],1FFFH

NEXT:	ADD DI,02H
LOOP AGAIN
MOV AH,4CH
INT 21H

END

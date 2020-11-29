;Write an assembly language program to add ten 16-bit numbers stored in memory and store the result.

.MODEL SMALL
.STACK 64
.CODE 

MOV BX,0000H
MOV AX,0000H
MOV CX,000AH
MOV DI,400H

AGAIN:	ADD AX,[DI]
JNC NEXT
INC BX

NEXT:	ADD DI,02H
LOOP AGAIN
MOV [DI],AX
MOV [DI+2],BX
MOV AH,4CH
INT 21H

END

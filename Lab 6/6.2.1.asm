;Write an assembly language program to sum numbers from 0 to 255.

.MODEL SMALL
.STACK 64
.CODE 

MOV BX,0000H
MOV CX,00FFH
MOV AX,0000H

AGAIN:	INC BX
ADD AX,BX
LOOP AGAIN
MOV AH,4CH
INT 21H

END

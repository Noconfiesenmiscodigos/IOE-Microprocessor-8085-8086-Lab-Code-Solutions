;Write an assembly language program to sum numbers from 0 to 255.

.MODEL SMALL 
.DATA 
.CODE

MOV DX,0000H
MOV BX,0000H

L1: INC BL
ADD DX,BX ;Answer is in DX
CMP BX,00FFH
JZ L2
JMP L1

L2: MOV AH,4CH
INT 21H
END


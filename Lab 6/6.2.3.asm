;There are two tables having ten 16-bit data in each. Write an assembly language program to generate the third table which contains the sum of corresponding element of first and second table.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0400H
MOV CL,00H

SET: MOV [BX],CL
INC CL
MOV [BX+14H],CL
INC CL
INC BL
MOV [BX],CL
INC CL
MOV [BX+14H],CL
INC BX
INC CL
CMP BL,14H
JZ GO
JMP SET
       
       
GO: MOV BX,0400H 
      
L1: CLC

MOV AL,[BX]
INC BX
MOV AH,[BX]
DEC BX
ADD AL,[BX+14H]
MOV [BX+28H],AL
INC BX
ADC AH,[BX+14H]
MOV [BX+28H],AH
INC BX
CMP BL,14H
JZ L2
JMP L1

L2: MOV AH,4CH
INT 21H 
END




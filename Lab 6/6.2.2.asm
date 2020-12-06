;Write an assembly language program to add ten 16-bit numbers stored in memory and store the result.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0400H
MOV CL,00H

SET: INC CL
MOV [BX],CL
INC BX
CMP BL,14H
JZ GO
JMP SET
       
GO:MOV BX,0400H 

L1: CLC

ADD DL,[BX] ;Answer is in DX
INC BX 
ADC DH,[BX]
INC BX
CMP BL,14H
JZ L2
JMP L1

L2: MOV AH,4CH
INT 21H 
END
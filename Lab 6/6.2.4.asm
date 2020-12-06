;Two tables of data are stored having ten 16-bit data each. Write an assembly language program to generate the third table which contains 1FFFH if the corresponding data in first table is less then that of second table, else store 0000.     

.MODEL SMALL
.DATA
.CODE

MOV BX,0400H

L1: CLC

MOV AL,[BX]
INC BX
MOV AH,[BX]

DEC BX
MOV DL,[BX+14H]
INC BX
MOV DH,[BX+14H]
DEC BX

CMP AH,DH
JC L2
JZ L3
JMP L4 

L3:CMP AL,DL
JC L2
JMP L4 

L2: MOV [BX+28H],0FFH
MOV [BX+28H+01H],01FH
JMP L5

L4: MOV [BX+28H],00H
MOV [BX+28H+01H],00H

L5: INC BL
INC BL
CMP BL,14H
JZ L6 
JMP L1 

L6: MOV AH,4CH
INT 21H 
END
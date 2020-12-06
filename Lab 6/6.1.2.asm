;Write a program in DEBUG to add two 8-bit numbers stored in the memory location DS:300 and DS:302 and store the result at DS:304.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0300H
MOV CL,00H

MOV [BX],0A4H ;Put your 1st number here
MOV [BX+02H],3BH   ;Put your 2nd number here

MOV AH,00H      
MOV AL,[BX]
MOV CL,[BX+02H]
ADD AL,CL
MOV [BX+04H],AL

MOV AH,4CH
INT 21H

END
;Write a program in DEBUG to add two 8-bit numbers stored in the memory location DS:300 and DS:302 and store the result at DS:304.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0300H
MOV CL,00H

MOV [BX],0A4H      ;Put first number LSB here
MOV [BX+01H],3BH   ;Put first number MSB here
MOV [BX+02H],4BH   ;Put second number LSB here
MOV [BX+03H],74H   ;Put second number MSB here
  
MOV AL,[BX]
MOV AH,[BX+01H]
MOV CL,[BX+02H]
MOV CH,[BX+03H]

CLC
ADD AL,CL
ADC AH,CH

MOV [BX+04H],AL
MOV [BX+05H],AH

MOV AH,4CH
INT 21H

END
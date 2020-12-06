;Convert the problem no 4 for the 16-bit numbers.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0200H
MOV CL,00H

MOV [BX],08H      ;Put your 1st number LSB here
MOV [BX+01H],0DH  ;Put your 1st number MSB here
MOV [BX+02H],62H  ;Put your 2nd number LSB here
MOV [BX+03H],05H  ;Put your 2nd number MSB here
MOV [BX+04],08H   ;Put your 3rd number LSB here
MOV [BX+05H],0BH  ;Put your 3rd number MSB here
MOV [BX+06H],8DH  ;Put your 4th number LSB here
MOV [BX+07H],0E2H ;Put your 4th number MSB here
    
MOV AL,[BX]
MOV AH,[BX+01H]
MOV CL,[BX+02H]
MOV CH,[BX+03H]
ADD AL,CL
ADC AH,CH

MOV CL,[BX+04H]
MOV CH,[BX+05H]
ADD AL,CL
ADC AH,CH

MOV CL,[BX+06H]
MOV CH,[BX+07H]
ADD AL,CL
ADC AH,CH


MOV [BX+08H],AL
MOV [BX+09H],AH

MOV AH,4CH
INT 21H

END

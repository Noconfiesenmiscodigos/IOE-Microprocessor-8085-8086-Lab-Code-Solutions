;Write the program of your own and test it using DEBUG.

;Write a program that displays character 'Z' ON SCREEN.

.MODEL SMALL
.STACK
.CODE

MOV DL,'Z'
MOV AH, 02H
INT 21H
MOV AH,4CH
INT 21H

END
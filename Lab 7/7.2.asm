;Write a program to display the same string using character reading function (use current address operator $ to count the no of characters e.g. 
;STR DB "String to be displayed"
;LEN DW $-STR ;Gives the length of the string STR

TITLE DISPLAY PROGRAMMING IS FUN
.MODEL SMALL
.DATA
STR DB "STRING TO BE DISPLAYED"
LEN DW $-STR
.STACK
.CODE

MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX
MOV CX, LEN
MOV DI, 00

LO: MOV DL, STR[DI]
MOV AH, 06H
INT 21H
INC DI
LOOP LO
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN

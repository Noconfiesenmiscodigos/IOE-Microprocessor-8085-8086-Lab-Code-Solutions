;Write a program that a string from the user and display each word in new line diagonally from upper left towards bottom right in a clear screen. If the string is “Programming in Assembly Language is Fun”, it shoud be displayed as
;Programming
;           in
;             Assembly
;                     Language
;                             is
;                               Fun

.MODEL SMALL
.STACK 64
.DATA
MSG DB "ENTER A STRING: ", 0AH,0DH,"$"
STR DB 50, ? , 50 DUP(0)
.CODE
MOV AX,@DATA;
MOV DS,AX
MOV AH,09H
LEA DX,MSG
INT 21H

;MAIN PROGRAM
MOV CX,00H
MOV DX,00H
MOV AH,0AH
LEA DX,STR
INT 21H
MOV AX,0003H
INT 10H
LEA DI,STR

AGAIN: MOV AH,02H
MOV DL, [DI+2]
CMP DL, 20H
JE T2

T1: MOV DL,[DI+2]
INT 21H
INC CL
JMP T3

T2: MOV DL, 0AH
INT 21H
INC DH
MOV BH,00H
MOV DL,CL
INT 10H

T3: INC DI
CMP [DI+2],0DH
JNE AGAIN
MOV AH,4CH

INT 21H
END

;Use INR and DCR instructions for the increment and decrement operation to increase 16-bit data in the above problem? (Hint: use INR and DCR instruction for the lower byte data)

LXI H,0FA2H
INR H
INR L

SHLD 80A2H

LXI H,0026H
INR H
INR L

SHLD 80A4H

LXI H,0FA2H
DCR H
DCR L

SHLD 80A2H

LXI H,0026H
DCR H
DCR L

SHLD 80A4H

HLT

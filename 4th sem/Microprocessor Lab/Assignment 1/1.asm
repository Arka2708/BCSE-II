;Add 2 8bit numbers and stored the carry and sum
MVI C,00H
LXI H,2200H
MOV A,M
INX H
ADD M
JNC SKIP
INR C
SKIP: INX H
      MOV M,A
      INX H
      MOV M,c
      HLT
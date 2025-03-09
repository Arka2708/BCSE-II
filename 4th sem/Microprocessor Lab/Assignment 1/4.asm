;count number of 1s and 0s of a byte stored in the address 2500H
MVI D,00H
MVI B,00H
MVI C,08H
LDA 2500H
BACK: RLC
      JC CNT1
CNT0:  INR D
      JMP CONTINUE
CNT1: INR B
CONTINUE:DCR C
        JNZ BACK
        MOV A,B
        STA 2510H
        MOV A,D
        STA 2511H
        HLT
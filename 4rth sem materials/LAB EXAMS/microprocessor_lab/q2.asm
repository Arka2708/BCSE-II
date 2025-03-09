	   LDA 2500
	   MOV B,A
	   LXI H,2200
	   MVI A,00

LOOP:	   ADD M
	   INX H
	   JNC SKIP
	   INR C

SKIP:	   DCR B
	   JNZ LOOP
	   STA 2300
	   MOV A,C
	   STA 2301
	   HLT

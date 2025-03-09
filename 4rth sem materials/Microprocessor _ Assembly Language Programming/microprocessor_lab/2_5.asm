	   LDA 204F
	   MOV B,A
	   LXI H,2050
	   LDA 204E
	   MVI C,FF

LOOP:	   CMP M
	   JZ FOUND
	   INX H
	   DCR B
	   JNZ LOOP
	   JZ SKIP

FOUND:	   LDA 204F
	   SUB B
	   MOV C,A

SKIP:	   MOV A,C
	   STA 204D
	   HLT

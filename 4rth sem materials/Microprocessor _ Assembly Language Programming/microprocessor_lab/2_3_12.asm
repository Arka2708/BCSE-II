// MAX AND MIN OF ARRAY
	   LDA 204F
	   MOV B,A
	   LXI H,2050
	   MOV A,M
	   MOV C,M
	   MOV D,M
	   DCR B

LOOP_1:	   INX H
	   MOV A,M
	   CMP C
	   JC MAX_SKIP
	   MOV C,A

MAX_SKIP:	   CMP D
	   JNC MIN_SKIP
	   MOV D,A

MIN_SKIP:	   DCR B
	   JNZ LOOP_1
	   MOV A,C
	   STA 3000
	   MOV A,D
	   STA 3001
	   HLT

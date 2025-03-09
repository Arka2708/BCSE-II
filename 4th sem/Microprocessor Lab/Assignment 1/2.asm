LXI H,2500H  ; Initialize H and L registers with address 2500H
LDA 2200H    ; Load accumulator with data from memory address 2200H
MOV C,A      ; Move the value of accumulator to register C
MVI A,00H    ; Initialize accumulator with 0
MVI B,00H    ; Initialize register B with 0

BACK: ADD M        ; Add the value of memory location pointed by HL pair to accumulator
      JNC SKIP     ; If no carry is generated, skip the next instruction
      INR B        ; Increment register B
SKIP: INX H        ; Increment HL pair to point to next memory location
      DCR C        ; Decrement the value of register C
      JNZ BACK     ; If C is not zero, jump back to label BACK

; Store the final result in memory locations 2300H and 2301H
LXI H, 2300H ; Load H and L registers with address 2300H
MOV M,A      ; Store the value of accumulator in memory location pointed by HL pair
INX H        ; Increment HL pair to point to next memory location
MOV M,B      ; Store the value of register B in memory location pointed by HL pair
HLT          ; Halt the program execution
.global _start
_start:
  //ADD{5}<condition> <destinatio_register> <first_operand> <second_operand>
  //r0 to r6 are general purpose registers
    mov r0, #4
  //this adds an immediate value to a register
    add r1,r0,#3
  //this adds two registers together
    mov r2, #2
    add r1,r0,r2
  //sub works the same SUB <destination_register> <first_operand> <second_operand>
    mov r0, #8
    mov r1, #1
    sub r2, r0, r1
  //MUL only work on registers
  mov r0,#9
  mov r2,#2
  mul r1, r0,r2
  //cprs current program status register
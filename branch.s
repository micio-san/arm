.global _start
_start:
//the B mnemonic signifies an unconditional branch
//it doen not require any condition to jump to it
  mov r0,#11
  mov r1,#2
  cmp r1,r0
  beq cond1
  //without a second b the porgram will execute BOTH!
  b cond2
  
  //LESS THAN AND GREATER TH
  //blt cond1
  //bgt cond2
  //B AND BAL DO THE SAME THING, THE UNCONDITIONAL JUMP
cond1:
  mov r2,#5
cond2:
  mov r11,#56
 
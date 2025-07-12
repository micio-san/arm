.global _start
_start:
  push {lr}
  mov r0,#1
  mov r1,#2
  mov r2,#3
  mov r3,#4
  //allocating space by removing 8bytes
  sub sp, sp, #8
  //add two values reversing it (lifo)
  mov r4, #6
  str r4, [sp]
  //Thes stack grows downward in memory, subtract fom the stack pointer
  //to allocate space for new values
  mov r4, #5
  str r4, [sp, #4]
  bl add_num
  mov r2,r0
  //use the stack to reset
  add sp, sp, #8
  pop {lr}
  
 add_num:
    add r0,r0,r1
	add r0,r0,r2
    add r0,r0,r3
	ldr r4,[sp, #4]
    add r0,r0,r4
	ldr r4, [sp]
	add r0,r0,r4
	bx lr

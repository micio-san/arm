.global _start
_start:
  //FUNCTION NAMES IN C ARE LIKE LABELS IN ASM
  //int add_nums(int i, int j) {
  //    return i+j;
  //}
  //int main(void) {
  //add_nums(1,2);
  //  return 0
  //}
   //every asm lang has it's own calling convention but in 
   //arm v7 the first 4 (r0_r4) registers are dedicated to arguments
   //in functions, the remaining ones will be pushed to the 
   //stack(?)
   mov r0,#1 //arguments to pass in the function
   mov r1,#2
   //PUSH IS A FUNCTION TO INTERACT DIRECTLY WITH THE STACK MEMORY AND 
   //STORE DATA LOCAL VARIABLES IT ACCEPTS A LIST
   //sp is the register that points to top the value of the stack
   push {r0,r1}
   //BL, branch with link to set the link register, to set lr register 
   //to store the addy of the instruction to execute after the function call
   bl add_nums
   //link register specifies to address of thi instruction, 
   //because it's the one following
   mov r2, r0
   pop {r0,r1}
add_nums:
   //return values of functions inside arm is stored in r0 
   ADD r0,r0,r1 
   //bracnhing instruction to exit the function
   //BX cpnstains the register that contins the addy of the location to
   //jump to, causes the execution to jump
   bx lr
   
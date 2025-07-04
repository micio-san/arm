.global _start
_start:
    //USUALLY USED BEFORE  BRANCHING
	mov r0,#4
	mov r1, #1
	//r0-r1, 
	//if r0>r1 => res = +
	//if r0<r1 => res = -
	//if r0<r1 => res = 0
    cmp r0, r1
	//cpsr register value => 00100000000000000000000111010011
	mov r2, #4
	mov r3, #5
	cmp r2,r3
	//cpsr register value => 10000000000000000000000111010011 
	//negative register set to true, the number is negative
	mov r4, #5
	mov r5, #5
	cmp r4, r5
	//cpsr register value => 01100000000000000000000111010011
	//second last is zero condition set to true => THE RESULT IS 0
	//third to last carry bit=> no need to borrow to perform sub
	

.global _start
_start:
	//BIT MANIPULATION, shift and rotate amount can be specified by register or immediate val
	//LSL logical shift left LSL<regdestination><immediate>
	MOV r0, #40    //00000000000000000000000000101000
	LSL r0, r0, #1 //00000000000000000000000001010000
	LSL r0, r0, #1 //00000000000000000000000010100000
	//shifting left by 1 is equivalent to multiplying the number by 2!!
	//LSR logical shift right
	MOV r1,#40     //00000000000000000000000000101000
	LSR r1, r1, #1 //00000000000000000000000000010100
	//ASR the left hand sign (+||-) is ALWAYS THE SAME 
	//shifting right by 1 is equivalent to dividing the number by 2!!
	MOV r2, #0x80000028 //10000000000000000000000000101000
	ASR r2,r2, #1       //11000000000000000000000000010100
	ASR r2,r2, #1       //11100000000000000000000000001010
	ASR r2,r2, #3       //11111100000000000000000000000001
    //ROTATIONS
	//ror rotating right, every number that is shifted to the right come back to the left!
	MOV r3, #-40    //11111111111111111111111111011000
	ROR r3, r3, #1  //01111111111111111111111111101100
	//rrx rot<te right with extension same 
	
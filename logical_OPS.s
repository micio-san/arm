.global _start
_start:
	//*****AND if 1 and 1 => true
	//A|B|res
	//0|0|false
	//1|0|false
	//1|1|true
	
	//00000000000000000000000001000010
	mov r0, #0x42
	//00000000000000000000000000010110
    AND r1, r0, #0x16
	//r1=0000002 to binary 	//00000000000000000000000000000010
	//*****ORR if 1 or 1=>true
	//A|B|result
	//1|0|1
	//0|0|0
	//1|1|1
    mov r2, #0x42
	r3, r2,#0x400
    //442 =>00000000000000000000010001000010 true
	
    //*****EOR if true AND false 
	//A|B|result
	//1|0|1 true
	//0|0|0 false
	//1|1|1 false
	
	mov r4, #0x42
	eor r5, r4, #0x26
	
	//*****MOVE AND NEGATE mvn
	// flips all values !val inside a register
	
	mov r6,#0x11 
	mvn r7, r6
	//0x11 00000000000000000000000000010001
    //ffffffee 11111111111111111111111111101110
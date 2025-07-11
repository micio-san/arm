.global _start
_start:
	//loop statements
	//int i =0
	mov r0, #0
	//(i<5)
loop://while (i<)5) {
	cmp r0, #5
	bge end //end statement
	add r0, #1 //   i++
	bal loop
end://}
    mov r1, #2 
	

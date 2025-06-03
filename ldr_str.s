.global _start
//this contains the executed code
.text 
_start:
	//load-store architecture, the only instructions that can access memory
//------------LDR--------------
	//The '=' is used to get the address of the label, which is what i
	//is stored 
    ldr r0,=var1
	//extracting the value that is currently store at r0 location,
	//
	ldr r1,[r0]
 //segment name, any complex data that is not stored directly into a register
 //like arrays or strings
 //________STR_______________
 //used to store manipulare,store 
    mov r2,#3
	//load the addy of the var2 to use it as destination
	ldr r3, =var2
	//source register, value i want to get, destination register
	str r2, [r3]
.data

//2 bytes Data definition directives
var1: .word 5
var2: .word 6
# exit.s
________________________________________________________________________________________________________________
 This snippet of ARM assembly code is a simple program that demonstrates a system call to exit the program. 
 Let's break down each part of the code:
 1. `.global _start`: This directive declares `_start` as a global symbol, making it accessible to the linker.
 It is typically used to define the entry point of the program.

 2.`.section .text`: This directive indicates that the following code should be placed in the `.text`
 section of the executable, which is where the program instructions are stored.

 3. `_start:`: This is a label marking the beginning of the program's execution. The program starts running from this point.

 4. `mov r0, #42`: This instruction moves the immediate value `42` into register `r0`. In ARM assembly,
 `mov` is used to transfer data, and the `#` symbol indicates that `42` is a constant value.

 5. `mov r7, #1`: This instruction moves the immediate value `1` into register `r7`. In ARM assembly,
     when making system calls on Linux, `r7` is often used to specify the system call number.
     The value `1` corresponds to the system call for exiting a program (`sys_exit`).

 6. `swi 0`: This instruction stands for "Software Interrupt" and is used to trigger a system call.
     The `0` is an argument that can be used to specify different types of interrupts, but in this context,
     it is used to invoke the system call specified in `r7`. The system call will use the value in `r0` as the exit status code.

In summary, this program sets the exit status code to `42` and then makes a system call to exit the program. The value `42` 
is passed as the exit status, which can be checked by the operating system or a parent process to determine how the program terminated.
______________________________________________________________________________________________________________

## print hello world to the screen

## print the program arguments to the screen

## print the first <arg1> fibonacci numbers

## write an RPN calculator for single-character numbers (e.g. +45 should evaluate to 9)

## write a parser to recognize balanced parentheses

## write a simple little lisp dialect

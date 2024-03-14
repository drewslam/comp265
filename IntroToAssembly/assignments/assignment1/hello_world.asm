# Andrew Souza
# Comp 265 -- Spring 2024
# Introduction to MIPS -- Problem 1

# Please read chapter 2 of the Introduction To MIPS Assembly Language Programming.
# Follow the instructions to download the MARS IDE onto your computer.
# Run your first program using this new IDE by following the steps of Chapter 2.3.

.text                           # Define the program instruction
main:                           # Label to define main program
    li $v0, 4                   # Load 4 into $v0 to indicate a print string
    la $a0, greeting            # Load the address of the greeting into $a0
    syscall                     # Print greeting. The print is indicated by
                                # $v0 having a value of 4, and the string
                                # to print is stored at the address in $a0.
    li $v0, 10                  # Load a 10 (halt) into $v0
    syscall	                # The program ends
.data                           # Define the program data
greeting: .asciiz "Hello World" # The string to print

	

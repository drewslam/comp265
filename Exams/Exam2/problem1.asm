# Andrew Souza
# Comp-265 -- Spring 2024
# Exam 2 -- Problem 1

# Implement a program which multiplies a user input by 17 using only bit shift
#  operations and addition.
# Check to see if your program is correct by using the mult and mflo operators.
# Your program should include a proper and useful prompt for input,
#  and print the results in a meaningful manner.

.text
.globl main
main:
    # Prompt user for input and take digit input
    li $v0, 4
    la $a0, prompt
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0
    
    # Output what user entered
    li $v0, 4
    la $a0, output
    syscall
    
    li $v0, 1
    move $a0, $t0
    syscall
    
    # Operate on variable
    sll $t1, $t0, 4    # Shifts $t0 4 to the left and saves values to $t1
    add $t2, $t1, $t0  # Adds $t1 to $t0 and saves value to $t2
    li $v0, 4
    la $a0, afterShift
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    
    # Test with mult
    addi $t3, $t3, 17
    mult $t0, $t3
    
    # Exit Program
    ori $v0, $zero, 10
    syscall

.data
prompt: .asciiz "\nInput your number here: "
output: .asciiz "\nYou input the number "
afterShift: .asciiz "\nYour input * 17 =  "
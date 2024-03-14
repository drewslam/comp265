# Andrew Souza
# Comp-265 -- Spring 2024
# Exam 2 -- Problem 2

# Please compute the surface area and volume of a box with
#  a base length of a, a base width of b and a height of c.

# Have the user enter in values for each side and display the output.

.text
.globl main
main:
    # Prompt user for input and store input
    li $v0, 4
    la $a0, inputL
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0
    
    li $v0, 4
    la $a0, inputW
    syscall
    
    li $v0, 5
    syscall
    move $t1, $v0
    
    li $v0, 4
    la $a0, inputH
    syscall
    
    li $v0, 5
    syscall
    move $t2, $v0
    
    # Operate on user input
    # Find volume
    # The formula for the volume is: a * b * c
    add $s0, $s0, $t0 # Set $s0 to value of $t0
    mul $s0, $s0, $t1 # a * b
    mul $s0, $s0, $t2 # a * b * c
    
    # Find surface area
    # The surface area is: 2 * ((a * b) + (a * c) + (b * c))
    addi $s1, $s1, 2
    mul $s2, $t0, $t1 # a * b
    mul $s3, $t0, $t2 # a * c
    mul $s4, $t1, $t2 # b * c
    add $s2, $s2, $s3 # (a * b) + (a * c)
    add $s2, $s2, $s4 # (a * b) + (a * c) + (b * c)
    mul $s1, $s1, $s2 # Above * 2
    
    # Output results
    li $v0, 4
    la $a0, outputV
    syscall
    li $v0, 1
    move $a0, $s0
    syscall
    
    li $v0, 4
    la $a0, outputSA
    syscall
    li $v0, 1
    move $a0, $s1
    syscall
    
    # Exit program
    ori $v0, $zero, 10
    syscall

.data
inputL: .asciiz "\nInput the length: "
inputW:.asciiz "\nInput the width: "
inputH: .asciiz "\nInput the height: "
outputV: .asciiz "\nThe volume is: "
outputSA: .asciiz "\nThe surface area is: "

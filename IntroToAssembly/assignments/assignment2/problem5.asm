# Andrew Souza
# Comp-265 -- Spring 2024
# Building Our Skills in Assembly Assignment -- Problem 5

# I again started by finding a high level representation of the
#  problem in the javascript console. I found that (n << 3) + (n + n)
#  is equivalent to n * 10

.text
.globl main
main:
    # Get Value from input
    li $v0, 4
    la $a0, prompt
    syscall
    
    li $v0, 5
    syscall
    move $s0, $v0
    
    # Operate on input
    sll $s1, $s0, 3  # Shifts $s0 3 bits to left, stores result in $s1
    add $s2 $s0, $s0 # Adds $s0 to $s0, stores result to $s2
    add $s3 $s1, $s2 # Adds $s1 to $s2, stores result to $s3
    
    # Output results
    li $v0, 4
    la $a0, output
    syscall
    
    li $v0, 1
    move $a0, $s0
    syscall
    
    li $v0, 4
    la $a0, outputAfter
    syscall
    
    li $v0, 1
    move $a0, $s3
    syscall
    
    # Exit program
    ori $v0, $zero, 10
    syscall
    
.data
prompt: .asciiz "\nInput an integer value: "
output: .asciiz "\nYou input "
outputAfter: .asciiz "\nYour input * 10 = "
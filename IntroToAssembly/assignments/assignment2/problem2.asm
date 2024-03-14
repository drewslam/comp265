# Andrew Souza
# Comp-265 -- Spring 2024
# Building Our Skills in Assembly Assignment -- Problem 2

# My first step was to figure out how to perform this operation in a HLL
# I have some basic javascript proficiency, and the js console in a web
#  browser is a convenient place to test some simple code.
# I found that in javascript console.log(~n) == console.log(n ^ -1)

.text
.globl main
main: 
    # Prompt user for input
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Take input of integer
    li $v0, 5
    syscall
    move $s0, $v0
    
    # Perform operation on integer
    # Performs Not operation by xor-ing the user input against -1
    addi $s1, $s1, -1
    xor $s1, $s1, $s0
    
    # Output results
    li $v0, 4
    la $a0, output
    syscall
    
    li $v0, 1
    move $a0, $s0
    syscall
    
    li $v0, 4
    la $a0, outputXOR
    syscall
    
    li $v0, 1
    move $a0, $s1
    syscall
    
    # Exit program
    ori $v0, $zero, 10
    syscall

.data
prompt: .asciiz "\nPlease input your number: "
output: .asciiz "\nYou input "
outputXOR: .asciiz "\nThe result after performing XOR -1 is "

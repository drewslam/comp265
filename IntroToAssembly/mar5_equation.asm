# Solve 4x^2 + 3x - 4
# Consider i * x^2 + j * x - k
# i * x * x + j * x - k
.text
.globl main

main:
    # Get input value
    addi $v0, $zero, 4
    la $a0, prompt
    syscall
    addi $v0, $zero, 5
    syscall
    move $s0, $v0
    
    # x^2
    mul $s1, $s0, $s0
    
    # 4 * x^2
    mul $s1, $s1, 4
    
    # 3 * x
    mul $s2, $s2, 3
    
    # 4x^2 + 3x
    add $s3, $s1, $s2
    
    #4x^2+3x - 4
    subi $s3, $s3, 4
    
    # Output value
    addi $v0, $zero, 4
    la $a0, result
    syscall
    addi $v0, $zero, 1
    move $a0, $s3
    syscall
    
.data
prompt: .asciiz "Enter your value for x: "
result: .asciiz "The result is: "
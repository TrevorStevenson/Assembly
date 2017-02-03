.data
newLine: .asciiz "\n"           #store new line character in variable


.text                           #code
main:                           #begin execution
        li $t0, 1               #load the value 1 into register t0
        li $t1, 10              #load the value 10 into register t1
        li $v0, 1               #load 1 into register v0 to print int
        move $a0, $t0           #move register t0 to argument for printing

loop:
        syscall                 #print number in register
        li $v0, 4               #load 4 into register v0 to print string
        la $a0, newLine         #load address of new line character into argument
        syscall                 #print new line chatacter
        addi $t0, $t0, 1        #add 1 to register 3
        move $a0, $t0           #move value into register a0 for printing
        bgt $t0, $t1, end       #branch to end code if number is 10
        li $v0, 1               #load 1 to v0 to print int
        j loop                  #repeat the loop

end:
        li $v0, 10              #load end code into v0
        syscall                 #end the program

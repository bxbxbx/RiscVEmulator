.data
msg: .asciiz "Hello, RISC-V!"

.text
.globl main
main:
    li a0, 1          # Load syscall code for print_string
    la a1, msg        # Load address of msg
    ecall             # Make syscall

    li a0, 10         # Load syscall code for exit
    ecall             # Make syscall

.global _start //Starting address
.align 2

//Linux function parameters: x0-2
//Linux function member: x16
//Syntax: <operator> <src>, <dst>

_start:
    mov x0, #1 //immediate
    adr x1, test
    mov x2, #13
    mov x16, #4
    svc #0x80

    mov x0, #0
    mov X16, #1
    svc #0x80

test:      
    .ascii  "Hello World!\n"
    
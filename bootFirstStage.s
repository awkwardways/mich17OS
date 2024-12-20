.code16
.global init
init:
    mov $0x0e41, %ax
    int $0x10
    jmp. 
    
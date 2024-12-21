.code16
.global _start
#check if a20 line is enabled: If it is enabled, jump to second stage 
#If it is disabled, enable it and jump onto the second stage.
_start:
    mov $0x00, %si
    mov $0x0e, %ah
print:
    movb welcome_msg(%si), %al
    cmpb $0x00, %al
    je done
    int $0x10
    inc %si
    jmp check_a20

check_a20:
    
    jmp . 


welcome_msg:
    .asciz "Hello from the first stage!\n\r"
.fill 510 - (. - _start), 1, 0
.byte 0x55, 0xaa

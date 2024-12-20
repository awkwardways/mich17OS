MEMORY
{
    bootrom (rx) : ORIGIN = 0x00007c00, LENGTH = 1K
}
SECTIONS
{
    .text :
    {
        *(.text*)
        *(.rodata*)
    } > bootrom
}
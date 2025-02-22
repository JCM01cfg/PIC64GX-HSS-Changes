#Written by: Josh Muniga
MEMORY
{
    FLASH (rx) : ORIGIN = 0x20220000, LENGTH = 128K    /* Adjust to your flash start and size */
    RAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 128K    /* Adjust to your RAM start and size */
}

SECTIONS
{
    /* Text section (code) */
    .text : {
        *(.text*)
    } > FLASH

    /* Data section (initialized data) */
    .data : {
        __data_start = .;
        *(.data*)
        __data_end = .;
    } > RAM AT > FLASH

    /* BSS section (zero-initialized data) */
    .bss : {
        __bss_start = .;
        *(.bss*)
        *(COMMON)
        __bss_end = .;
    } > RAM

    /* End of RAM */
    _end = .;
    PROVIDE(end = .);

    /* Global pointer setup for RISC-V */
    . = ALIGN(4);
    __global_pointer$ = . + 0x800;
}


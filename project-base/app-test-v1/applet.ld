/* 
    applet.ld — Link applet at 0xD0200000
    Applets are loaded into SDRAM at a fixed offset, with some space
    reserved for music data (e.g., MOD files) at the beginning.
 
    Adjust `_startram` below based on the maximum expected size of your music files.
*/


/* Base and limits */
_offset            = 0xD0000000;   /* SDRAM base address */
_maxramavail       = 0x600000;     /* 6 MB usable RAM for applets + resources */

/* --- CHANGE THIS TO SUIT YOUR NEEDS ------------ */
_largest_modfile   = (0 * 1024);  /* 256 KB */
_largest_resource  = 0;             /* 240k KB approx */

/* Align resource+modfile space to 32-byte boundary */
_startram          = ((_largest_modfile + _largest_resource + 31) & ~31);

/* Precompute memory region values */
_applet_origin     = _offset + _startram;
_applet_length     = _maxramavail - _startram;

/* --- ASSERTIONS FOR SAFETY --- */
ASSERT(_startram < _maxramavail, "Reserved space exceeds SDRAM size!")
ASSERT(_applet_length > 0, "No RAM left for applet after reserving music/resource space!")


/* Memory layout */
/* if this memory becomes too small, you'll need to also update the applets.ld sizes too!! */
/* these both must match on applets.ld and this one */
_api_count = 512;

_api_size  = (8 * _api_count);
_api_location = 0x20020000 - _api_size;  /* some value that is calculated */


MEMORY {
    APPLET (rx) : ORIGIN = (_offset + _startram), LENGTH = (_maxramavail - _startram)
}

/* Define the start address for the applet */
_appstart = ORIGIN(APPLET);

_stack_size = 0x2000;   /* 8KB stack reserve (matches your old _estack idea) */
PROVIDE(__app_start = _appstart);

SECTIONS {
    PROVIDE(__sidbox_api_location = _api_location);


    /* Begin linking at applet start address */
    . = _appstart;
    /* Header = 16 bytes total: magic(8) + loadAddr(4) + memLen(4) */
    .header _appstart : {
        . = ALIGN(4);
        KEEP(*(.header))                 /* 8-byte magic */
        . = ALIGN(4);
        LONG(_appstart);                 /* loadAddr */
        LONG(__stack_end__ - _appstart); /* memLen */
    } > APPLET


    /* Main code section, starts at offset 0x10 */
    .text (_appstart + 0x10) : {
        . = ALIGN(4);
        KEEP(*(.text.applet_entry))  /* Main entry point (symbol) */
        *(.text*)
        *(.rodata*)
    } > APPLET

    /* Initialized data */
    .data : {
        *(.data*)
    } > APPLET

    /* Uninitialized data */
    .bss : {
        __bss_start__ = .;
        *(.bss*)
        *(COMMON)
        __bss_end__ = .;
    } > APPLET

    /* Reserve stack space (not stored in file) */
    .stack (NOLOAD) : {
        . = ALIGN(8);
        __stack_start__ = .;
        . = . + _stack_size;
        . = ALIGN(8);
        __stack_end__ = .;     /* stack top */
    } > APPLET

    /* Read-only data (redundant but explicit) */
    .rodata : {
        *(.rodata*)
    } > APPLET

    /* End of applet memory that must be cleared */
    PROVIDE(__app_end_clear = __stack_end__);
    /* Provide a conventional symbol too */
    PROVIDE(_estack = __stack_end__);

    /* End of applet image — useful for heap/sbrk() */
    _end = .;
    __app_end = .;
}

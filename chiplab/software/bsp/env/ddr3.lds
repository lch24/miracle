OUTPUT_ARCH(loongarch)
ENTRY(_start)

MEMORY
{
  ddr3 (rwxai) : ORIGIN = 0x00010000, LENGTH = 16M
}

SECTIONS
{
  __stack_size = DEFINED(__stack_size) ? __stack_size : 64K;
  .init :
  {
    KEEP (*(SORT_NONE(.init)))
  } >ddr3 AT>ddr3
  .ilalign :
  {
    . = ALIGN(16);
    PROVIDE( _ddr3_lma = . );
  } >ddr3 AT>ddr3
  .ialign :
  {
    PROVIDE( _ddr3 = . );
  } >ddr3 AT>ddr3
  .text :
  {
    _ftext = . ;
    *(.text.unlikely .text.unlikely.*)
    *(.text.startup .text.startup.*)
    *(.text .text.*)
    *(.gnu.linkonce.t.*)
  } >ddr3 AT>ddr3
  .fini :
  {
    KEEP (*(SORT_NONE(.fini)))
  } >ddr3 AT>ddr3
  . = ALIGN(16);
  PROVIDE (__etext = .);
  PROVIDE (_etext = .);
  PROVIDE (etext = .);

  .preinit_array :
  {
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array))
    PROVIDE_HIDDEN (__preinit_array_end = .);
  } >ddr3 AT>ddr3
  .init_array :
  {
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))
    KEEP (*(.init_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .ctors))
    PROVIDE_HIDDEN (__init_array_end = .);
  } >ddr3 AT>ddr3
  .fini_array :
  {
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*)))
    KEEP (*(.fini_array EXCLUDE_FILE (*crtbegin.o *crtend.o *crtend?.o ) .dtors))
    PROVIDE_HIDDEN (__fini_array_end = .);
  } >ddr3 AT>ddr3
  .ctors :
  {
    KEEP (*crtbegin.o(.ctors))
    KEEP (*crtbegin?.o(.ctors))
    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
  } >ddr3 AT>ddr3
  .dtors :
  {
    KEEP (*crtbegin.o(.dtors))
    KEEP (*crtbegin?.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
  } >ddr3 AT>ddr3

  . = ALIGN(16);
  .ex_table_base :
  {
      _ex_table_base_start = .;
      . = 0x500;
      _ex_table_base_end = .;
  } >ddr3 AT>ddr3

  . = ALIGN(16);
  PROVIDE( _eddr3 = . );

  .lalign :
  {
    . = ALIGN(16);
    PROVIDE( _data_lma = . );
  } >ddr3 AT>ddr3
  .dalign :
  {
    . = ALIGN(16);
    PROVIDE( _data = . );
  } >ddr3 AT>ddr3
  .data :
  {
    *(.rdata)
    *(.rodata .rodata.*)
    rodata_end = .;
    *(.gnu.linkonce.r.*)
    *(.data .data.*)
    *(.gnu.linkonce.d.*)
    . = ALIGN(16);
    PROVIDE( __global_pointer$ = . + 0x800 );
    *(.sdata .sdata.*)
    *(.gnu.linkonce.s.*)
    . = ALIGN(16);
    *(.srodata.cst16)
    *(.srodata.cst8)
    *(.srodata.cst4)
    *(.srodata.cst2)
    *(.srodata .srodata.*)
  } >ddr3 AT>ddr3
  . = ALIGN(16);
  PROVIDE( _edata = . );
  PROVIDE( edata = . );
  PROVIDE( _fbss = . );
  .bss :
  {
    PROVIDE( __bss_start = . );
    *(.sbss*)
    *(.gnu.linkonce.sb.*)
    *(.bss .bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    . = ALIGN(16);
  } >ddr3 AT>ddr3
  . = ALIGN(16);
  PROVIDE( _end = . );
  PROVIDE( end = . );
  PROVIDE (__heap_start = _end);
  .stack ORIGIN(ddr3) + LENGTH(ddr3) - __stack_size :
  {
    PROVIDE( _heap_end = . );
    PROVIDE (__heap_end = _heap_end);
    PROVIDE (__heap_size = __heap_end - __heap_start);
    . = __stack_size;
    PROVIDE( _stack = . );
  } >ddr3 AT>ddr3
}
# PIC64GX-HSS-Changes

Josh Muniga


November 11 2024


Texas State University

 
The purpose of this repository is to track the changes made 
to the pic64gx1000 HSS files to get the debugger up and running on the 
pic64gx1000 Curiosity Kit.

-----------------------------------------------------------------------

All .cfg files that were altered are included within the repository. The Board 
configuration file is also accompanied by a txt file explaining the changes that took place.

----------------------------------------------------------------------------------------------

These changes fix the issue of openocd failing to find pic64 hart ids and connecting
to the TAPS. 


---------------------------------------------------------------------------------------
UPCOMING ADDITIONS:

Linker file for .c and .elf files, with specific flash memory addresses, data bandwidth, and
memory size configurations to allow gdb to "load" C files onto the Curiosity Kit.

 


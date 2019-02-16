For the synthesys we instantiated a 32 entries windowed register file 
with the following specifications:

-64 bit width
-8 global registers
-4 windows 
-3 registers for each (in, local or out) subwindow
(total 64x32)

this was meant to allow proper confrontation with the simple RF.

On the other hand, the one in the simulation folder has the following specifications: 

-32 bit width
-4 global registers
-4 windows
-4 registers for each (in, local or out) subwindow
(total 32x36)


-- Testbench and meaningful waveforms

In the testbench we chose not to manage the top of the stack coming from the memory. In this way, by reading a 
completely different number, we clearly show the fill operation, verifying that there is a replacement of the data 
into the registers for each clock cycle until the fill is performed
(creating, in this way, a sorth of stair in the waveforms). 

Another choice that we made was to keep the wr signal high ('1') in order ot see a data writing into the registers 
related to the updated addresses, whenever it's possible (e.g. not during fill or spill operations), 
just to verify that the write operation occurs at the right address.

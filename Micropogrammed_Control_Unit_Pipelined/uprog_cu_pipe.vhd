library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use work.constants2.all;

------------------------------------------------------------------------------------------------------------------------------------

-- The following code implements a Micro programmed control unit within a microcode memory wich stores all the output for each stage of each
-- instruction. This system is pipelined. The pipelining is perfomed by means of a sorth of shift_register that stores the upc and it shifts 
-- and increments it as well for each clock cycle. The exceptions that occur when we are in the first 3 clock cycles are managed.

------------------------------------------------------------------------------------------------------------------------------------


entity uprog_cu_pipe is
	 port (
              -- 1st pipe stage
              en1    : out std_logic;               -- enables the register file and the pipeline registers
              rf1    : out std_logic;               -- enables the read port 1 of the register file
              rf2    : out std_logic;               -- enables the read port 2 of the register file
              -- 2nd pipe stage
              en2    : out std_logic;               -- enables the pipe registers
              s1     : out std_logic;               -- input selection of the first multiplexer
              s2     : out std_logic;               -- input selection of the second multiplexer
              alu1   : out std_logic;               -- alu control bit
              alu2   : out std_logic;               -- alu control bit
              -- 3rd pipe stage
              en3    : out std_logic;               -- enables the memory and the pipeline registers
              rm     : out std_logic;               -- enables the read-out of the memory
              wm     : out std_logic;               -- enables the write-in of the memory
              s3     : out std_logic;               -- input selection of the multiplexer
			  wf1    : out std_logic;               -- enables the write port of the register file
              -- inputs
              opcode : in  std_logic_vector(opcode_size - 1 downto 0);
              func   : in  std_logic_vector(funct_size - 1 downto 0);              
              clk : in std_logic;
              rst : in std_logic);                  -- active low
end uprog_cu_pipe;

architecture bhv of uprog_cu_pipe is
	signal cnt : integer range 0 to clk_cycles := 0;
	signal OUTPUT_bits : std_logic_vector(12 downto 0);
	
	type shift_reg is array (integer range 0 to 2) of std_logic_vector(16 downto 0);
	signal shift_upc : shift_reg := (others => (others => '0'));
	
	type mem is array (integer range 0 to 54) of std_logic_vector(12 downto 0);
	signal microcode_mem : mem := (
									"0000000000000",  	--rst			--0
									"1010000000000",	--i_add1_1		--1
									"0001100000000",	--i_add1_2
									"1000000010001",	--i_add1_3
									"1010000000000", 	--i_sub1_1		--4
									"0001100100000",	--i_sub1_2		
									"1000000010001",	--i_sub1_3
									"1010000000000", 	--i_and1_1		--7
									"0001101000000",	--i_and1_2
									"1000000010001",	--i_and1_3
									"1010000000000", 	--i_or1_1		--10
									"0001101100000",	--i_or1_2
									"1000000010001",	--i_or1_3
									"1100000000000", 	--i_add2_1		--13
									"0001010000000",	--i_add2_2
									"1000000010001",	--i_add2_3
									"1100000000000", 	--i_sub2_1		--16
									"0001010100000",	--i_sub2_2
									"1000000010001",	--i_sub2_3
									"1100000000000", 	--i_and2_1		--19
									"0001011000000",	--i_and2_2
									"1000000010001",	--i_and2_3
									"1100000000000", 	--i_or2_1		--22
									"0001011100000",	--i_or2_2
									"1000000010001",	--i_or2_3
									"1100000000000", 	--i_mov_1		--25
									"0001010000000",	--i_mov_2
									"1000000010001",	--i_mov_3
									"1010000000000", 	--i_sreg1_1		--28
									"0001100000000",	--i_sreg1_2
									"1000000010001",	--i_sreg1_3
									"1100000000000", 	--i_sreg2_1		--31
									"0001010000000",	--i_sreg2_2
									"1000000010001",	--i_sreg2_3
									"1110000000000", 	--i_smem2_1		--34
									"0001010000000",	--i_smem2_2
									"0000000010100",	--i_smem2_3
									"1010000000000", 	--i_lmem1_1		--37
									"0001100000000",	--i_lmem1_2
									"1000000011011",	--i_lmem1_3
									"1100000000000", 	--i_lmem2_1		--40
									"0001010000000",	--i_lmem2_2
									"1000000011011",	--i_lmem2_3
										
									
									"1110000000000",	--r_add_1		--43
									"0001000000000",	--r_add_2
									"1000000010001",	--r_add_3
									"1110000000000", 	--r_sub_1		--46
									"0001000100000",	--r_sub_2
									"1000000010001",	--r_sub_3
									"1110000000000", 	--r_and_1		--49
									"0001001000000",	--r_and_2
									"1000000010001",	--r_and_3						
									"1110000000000", 	--r_or_1		--52
									"0001001100000",	--r_or_2
									"1000000010001" 	--r_or_3							
									);
	
begin
	count_proc : process(clk, rst)
	begin
		if(rst = '0')then
			cnt <= 0;                               
			shift_upc <= (others =>(others => '0'));			
			
		elsif(rising_edge(clk))then
			
			if(cnt > 0)then							
				shift_upc(1) <= shift_upc(0) + '1';    -- to avoid the shift in the 1st clock cycle
			end if;
			
			if(cnt = 2)then
				shift_upc(2) <= shift_upc(1) + '1';	   -- to avoid the shift in the first and in the second clock cycle 
			end if;
			
			shift_upc(0) <= func & opcode;
			
			if (cnt < 2) then
				cnt <= cnt + 1;
			end if;	
			
		end if;
	end process count_proc;
	
	set_out : process(shift_upc, rst)
	begin
		if(rst = '0')then
			OUTPUT_bits <= microcode_mem(offset_rst);
		else 
		
		
			for i in 0 to 2 loop
			
				if ((i = 0) OR (i = 1 AND cnt = 1) OR (cnt = 2)) then   -- to avoid a wrong execution of an istruction in the first and in the second clock cycles
		
					-- r_add --------------------------------------------------------------------------------------------------		
					if	 (shift_upc(i) = r_type_add & r_type) then OUTPUT_bits(12 downto 10)        <= microcode_mem(offset_r_add)(12 downto 10);    
					elsif(shift_upc(i) = r_type_add & r_type + '1') then OUTPUT_bits(9 downto 5)  	<= microcode_mem(offset_r_add + 1)(9 downto 5); 
					elsif(shift_upc(i) = r_type_add & r_type + "10") then OUTPUT_bits(4 downto 0) 	<= microcode_mem(offset_r_add + 2)(4 downto 0); 
					-- r_sub --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = r_type_sub & r_type) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_r_sub)(12 downto 10);	
					elsif(shift_upc(i) = r_type_sub & r_type + '1') then OUTPUT_bits(9 downto 5)  	<= microcode_mem(offset_r_sub + 1)(9 downto 5);
					elsif(shift_upc(i) = r_type_sub & r_type + "10") then OUTPUT_bits(4 downto 0) 	<= microcode_mem(offset_r_sub + 2)(4 downto 0);
					-- r_and --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = r_type_and & r_type) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_r_and)(12 downto 10);	
					elsif(shift_upc(i) = r_type_and & r_type + '1') then OUTPUT_bits(9 downto 5)  	<= microcode_mem(offset_r_and + 1)(9 downto 5);
					elsif(shift_upc(i) = r_type_and & r_type + "10") then OUTPUT_bits(4 downto 0) 	<= microcode_mem(offset_r_and + 2)(4 downto 0);				
					-- r_or --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = r_type_or & r_type) then OUTPUT_bits(12 downto 10) 		<= microcode_mem(offset_r_or)(12 downto 10);	
					elsif(shift_upc(i) = r_type_or & r_type + '1') then OUTPUT_bits(9 downto 5)		<= microcode_mem(offset_r_or + 1)(9 downto 5);
					elsif(shift_upc(i) = r_type_or & r_type + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_r_or + 2)(4 downto 0);	
					-- i_add1 --------------------------------------------------------------------------------------------------		
					elsif(shift_upc(i) = nop & i_type_addi1) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_add1)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_addi1 + '1') then OUTPUT_bits(9 downto 5)   	<= microcode_mem(offset_i_add1 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_addi1 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_add1 + 2)(4 downto 0); 	
					-- i_sub1 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_subi1) then OUTPUT_bits(12 downto 10) 		<= microcode_mem(offset_i_sub1)(12 downto 10); 
					elsif(shift_upc(i) = nop & i_type_subi1 + '1') then OUTPUT_bits(9 downto 5) 	<= microcode_mem(offset_i_sub1 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_subi1 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_sub1 + 2)(4 downto 0); 			
					-- i_and1 --------------------------------------------------------------------------------------------------		
					elsif(shift_upc(i) = nop & i_type_andi1) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_and1)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_andi1 + '1') then OUTPUT_bits(9 downto 5)   	<= microcode_mem(offset_i_and1 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_andi1 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_and1 + 2)(4 downto 0); 	
					-- i_or1 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_ori1) then OUTPUT_bits(12 downto 10) 			<= microcode_mem(offset_i_or1)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_ori1 + '1') then OUTPUT_bits(9 downto 5) 		<= microcode_mem(offset_i_or1 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_ori1 + "10") then OUTPUT_bits(4 downto 0) 	<= microcode_mem(offset_i_or1 + 2)(4 downto 0); 				
					-- i_add2 --------------------------------------------------------------------------------------------------		
					elsif(shift_upc(i) = nop & i_type_addi2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_add2)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_addi2 + '1') then OUTPUT_bits(9 downto 5)   	<= microcode_mem(offset_i_add2 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_addi2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_add2 + 2)(4 downto 0); 
					-- i_sub2 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_subi2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_sub2)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_subi2 + '1') then OUTPUT_bits(9 downto 5) 	<= microcode_mem(offset_i_sub2 + 1)(9 downto 5); 	
					elsif(shift_upc(i) = nop & i_type_subi2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_sub2 + 2)(4 downto 0); 				
					-- i_and2 --------------------------------------------------------------------------------------------------		
					elsif(shift_upc(i) = nop & i_type_andi2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_and2)(12 downto 10); 		
					elsif(shift_upc(i) = nop & i_type_andi2 + '1') then OUTPUT_bits(9 downto 5)		<= microcode_mem(offset_i_and2 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_andi2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_and2 + 2)(4 downto 0); 	
					-- i_or2 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_ori2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_or2)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_ori2 + '1') then OUTPUT_bits(9 downto 5)    	<= microcode_mem(offset_i_or2 + 1)(9 downto 5); 	
					elsif(shift_upc(i) = nop & i_type_ori2 + "10") then OUTPUT_bits(4 downto 0)   	<= microcode_mem(offset_i_or2 + 2)(4 downto 0); 		
					-- mov --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_mov) then OUTPUT_bits(12 downto 10)  			<= microcode_mem(offset_i_mov)(12 downto 10);  		-- the immediate must be 0 
					elsif(shift_upc(i) = nop & i_type_mov + '1') then OUTPUT_bits(9 downto 5) 		<= microcode_mem(offset_i_mov + 1)(9 downto 5);
					elsif(shift_upc(i) = nop & i_type_mov + "10") then OUTPUT_bits(4 downto 0) 		<= microcode_mem(offset_i_mov + 2)(4 downto 0);	
					-- i_sreg1 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_sreg1) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_sreg1)(12 downto 10); 	-- a register R must be 0 (e.g. R0)	
					elsif(shift_upc(i) = nop & i_type_sreg1 + '1') then OUTPUT_bits(9 downto 5)		<= microcode_mem(offset_i_sreg1 + 1)(9 downto 5);
					elsif(shift_upc(i) = nop & i_type_sreg1 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_sreg1 + 2)(4 downto 0);	
					-- i_sreg2 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_sreg2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_sreg2)(12 downto 10); 	-- a register R must be 0 (e.g. R0)
					elsif(shift_upc(i) = nop & i_type_sreg2 + '1') then OUTPUT_bits(9 downto 5) 	<= microcode_mem(offset_i_sreg2 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_sreg2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_sreg2 + 2)(4 downto 0);		
					-- i_smem2 --------------------------------------------------------------------------------------------------		
					elsif(shift_upc(i) = nop & i_type_smem2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_smem2)(12 downto 10); 
					elsif(shift_upc(i) = nop & i_type_smem2 + '1') then OUTPUT_bits(9 downto 5)   	<= microcode_mem(offset_i_smem2 + 1)(9 downto 5); 
					elsif(shift_upc(i) = nop & i_type_smem2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_smem2 + 2)(4 downto 0); 
					-- i_lmem1 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_lmem1) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_lmem1)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_lmem1 + '1') then OUTPUT_bits(9 downto 5) 	<= microcode_mem(offset_i_lmem1 + 1)(9 downto 5);
					elsif(shift_upc(i) = nop & i_type_lmem1 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_lmem1 + 2)(4 downto 0);				
					-- i_lmem2 --------------------------------------------------------------------------------------------------				
					elsif(shift_upc(i) = nop & i_type_lmem2) then OUTPUT_bits(12 downto 10)  		<= microcode_mem(offset_i_lmem2)(12 downto 10); 	
					elsif(shift_upc(i) = nop & i_type_lmem2 + '1') then OUTPUT_bits(9 downto 5)   	<= microcode_mem(offset_i_lmem2 + 1)(9 downto 5); 	
					elsif(shift_upc(i) = nop & i_type_lmem2 + "10") then OUTPUT_bits(4 downto 0)  	<= microcode_mem(offset_i_lmem2 + 2)(4 downto 0); 		
		-------------------------------------------------------------------------------------------------------------			
					end if;
				end if;
			end loop;
		end if;
	end process set_out;

en1 	<= OUTPUT_bits(12);
rf1 	<= OUTPUT_bits(11);
rf2 	<= OUTPUT_bits(10);
en2 	<= OUTPUT_bits(9);
s1 		<= OUTPUT_bits(8);
s2 		<= OUTPUT_bits(7);
alu1 	<= OUTPUT_bits(6);
alu2 	<= OUTPUT_bits(5);
en3 	<= OUTPUT_bits(4);
rm 		<= OUTPUT_bits(3);
wm 		<= OUTPUT_bits(2);
s3		<= OUTPUT_bits(1);
wf1 	<= OUTPUT_bits(0);
	
end bhv;


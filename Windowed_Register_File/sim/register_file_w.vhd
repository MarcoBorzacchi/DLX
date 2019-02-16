library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
use WORK.functions.all;


--------------------------------------------------------------------------------------------------------------------

-- This component is used as register file but it is also adapted in order to permorm the right operations. In fact, it
-- is able to trasform a "virtual address" that covers just 1 window and the globals, in a "physical address" referred to 
-- the entire windowed register file. For this operation the CWP is needed and it is generated from another block: the control unit.
-- In addition, this component, can also send to memory the data contained in a window in case of spill (row per row for each clk cycle),
-- and receive and restore an old window, coming from the memory in case of fill. To perform these operations another counter
-- "count3" (come from CU) is exploited.

--------------------------------------------------------------------------------------------------------------------
	
entity register_file_w is
generic(	A : integer := log2(dimension_in_local_out * 3 + global);			--small address length
			M : integer := global;												--# of global registers 
			N : integer := dimension_in_local_out * 3;							--# of rows per window
			F : integer := win;													--# of windows
			B : integer := num_bit;						    					--# of bits per register (cell)
			L : integer := ((2 * dimension_in_local_out * win) + global);		---total # of rows);
			T : integer := log2((2 * dimension_in_local_out * win) + global);   --new address length
			Y : integer := dimension_in_local_out);
		
 port (	clk: 			IN 	std_logic;   
        reset: 			IN 	std_logic; 
		enable : 		IN 	std_logic;
		call : 			IN  std_logic;
		ret :       	IN  std_logic;
		datain :		IN	std_logic_vector (B-1 downto 0);		-- Data from the outside to perform the write op
		rd1: 			IN 	std_logic;
		rd2: 			IN 	std_logic;
		wr: 			IN 	std_logic;
		add_wr: 		IN 	std_logic_vector(A-1 downto 0);
		add_rd1: 		IN 	std_logic_vector(A-1 downto 0);
		add_rd2: 		IN 	std_logic_vector(A-1 downto 0);	
		in_from_mem : 	IN  std_logic_vector(B-1 downto 0);			-- Data from memory to perform the spill 
		cwp : 			IN std_logic_vector(log2(F)-1 downto 0);	-- CWP is received from the Control Unit
		count3 : 		IN std_logic_vector(log2(N)-1 downto 0);  	-- count3 (for counting row per row within a window) is received from the CU
		spill:			IN std_logic;								-- here, spill and fill are received from the CU and they are used as "check"
		fill: 			IN std_logic;								--
		out_to_mem :	OUT std_logic_vector(B-1 downto 0);			-- Data to memory to perform the fill
        out1: 			OUT std_logic_vector(B-1 downto 0); 		-- read data (port1)
		out2: 			OUT std_logic_vector(B-1 downto 0)			-- read data (port2)
		
		);
		
end register_file_w;

architecture bhv of register_file_w is

signal registers : matrix(L-1 downto 0) := (others => (others =>'0'));  -- for creating a L entries register, each one composed by "num_bit" Bit

begin 	
	


normal_process : process(clk)

	variable new_add_rd1 : std_logic_vector(log2(L)-1 downto 0);
	variable new_add_rd2 : std_logic_vector(log2(L)-1 downto 0); 
	variable new_add_wr : std_logic_vector(log2(L)-1 downto 0); 

	begin	
					
		if (clk'event and clk ='1') then 	
		
------------------------------Update Addresses----------------------------------		

-- We chose to keep this "sub-component" sequential because the update of the addresses strictly depends
-- on the CWP that is generated from the Control Unit on the rising edge of the clock

------------------------------------addr rd1 -----------------------------------	
		
			if (add_rd1 < N) then			-- if the address covers the window range 
				
				new_add_rd1 := add_rd1 + std_logic_vector(to_unsigned((to_integer(unsigned(cwp)))*2*Y, T));
				
				if (new_add_rd1 > 2 * Y * F - 1) then   	 -- in the case we are in the last window we need to "see" a portion of the first window
				
					new_add_rd1 := new_add_rd1 - (2 * Y * F);
				
				end if;

				
			else							 -- if the address covers the globals range	
			
				new_add_rd1 := std_logic_vector(to_unsigned(L - M - N, T)) + add_rd1;
			
			end if;
			
-----------------------------------------addr rd2 -----------------------------------				
			
			if (add_rd2 < N) then			-- if the address covers the window range 
				
				new_add_rd2 := add_rd2 + std_logic_vector(to_unsigned((to_integer(unsigned(cwp)))*2*Y, T));
				
				if (new_add_rd2 > 2 * Y * F - 1) then		-- in the case we are in the last window we need to "see" a portion of the first window
				
					new_add_rd2 := new_add_rd2 - (2 * Y * F);
				
				end if;
				
			else 							 -- if the address covers the globals range	
			
				new_add_rd2 := std_logic_vector(to_unsigned(L - M - N, T)) + add_rd2;
				
			end if;
			
-----------------------------------------addr wr -----------------------------------				
			
			if (add_wr < N) then			-- if the address covers the window range 	
				
				new_add_wr := add_wr + std_logic_vector(to_unsigned((to_integer(unsigned(cwp)))*2*Y, T));
				
				if (new_add_wr > 2 * Y * F - 1) then		-- in the case we are in the last window we need to "see" a portion of the first window
				
					new_add_wr := new_add_wr - (2 * Y * F );

				end if;

			else 							 -- if the address covers the globals range	
			
				new_add_wr := std_logic_vector(to_unsigned(L - M - N, T)) + add_wr; 
			
			end if;			
				
----------------------------------------------------
	--now the addresses are updated
----------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------	
	
-- the following "sub-component" is the real register file and it works exactly as that in the first exercise of the lab.
-- In addition, it is also able to exchange data with the memory in case of fill or spill operations

--------------------------------------------------------------------------------------------------------------------------					
		
			if(reset = '1') then
				out1 <= (others => '0');
				out2 <= (others => '0');
				registers <= (others => (others =>'0'));
				
			elsif ((spill = '0') AND (fill = '0')) then  										   					
				
				if(enable = '1') then 
				
					if(rd1 = '1') then
						out1 <= registers(to_integer(unsigned(new_add_rd1)));
					end if;
					
					if(rd2 = '1') then
						out2 <= registers(to_integer(unsigned(new_add_rd2)));
					end if;
				
					if((wr = '1') AND (NOT(((rd1 = '1' ) AND (new_add_wr = new_add_rd1)) OR ((rd2 = '1') AND (new_add_wr = new_add_rd2))))) then 
					
					registers(to_integer(unsigned(new_add_wr))) <= datain;
						
					end if;
					
				end if;

	
			elsif (fill = '1' OR spill = '1') then     -- this two checks are "merged" to use the below coparison (count3 > ...) just once
													   -- and we checked on design_vision that this method reduces the total area
		
				if ((cwp = F - 1) AND (count3 >  2 * Y - 1)) then  -- if we are in the last window we need to fill or spill 
																   -- a portion of the first window 
				
					if (fill = '1') then  
					registers((to_integer(unsigned(count3))) - 2*Y) <= in_from_mem;
					
					elsif (spill = '1') then
					out_to_mem <= registers((to_integer(unsigned(count3))) - 2*Y); 		 -- in the same clock cycle the data contained in a 
					registers((to_integer(unsigned(count3))) - 2*Y) <= (others => '0');	 -- certain register is send to the memory
																						 -- and the content of the same register is reset 
						
					end if;
				
				else     -- if we are not in the last window we can proceed normally 
				
					if (fill = '1') then
						registers((to_integer(unsigned(cwp))) * 2 * Y + (to_integer(unsigned(count3)))) <= in_from_mem;
					
			
					elsif  (spill = '1') then 
						out_to_mem <= registers((to_integer(unsigned(cwp))) * 2 * Y + (to_integer(unsigned(count3))));
						registers((to_integer(unsigned(cwp))) * 2 * Y + (to_integer(unsigned(count3)))) <= (others => '0');	
						
				
					end if;
		
				end if;
			
			end if;

		end if;	
			
	end process normal_process;


end bhv;	


configuration CFG_RF_BHV of register_file_w is
  for bhv
  end for;
end configuration;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
use WORK.functions.all;

-----------------------------------------------------------------------------------------------------------

--This component is meant to manage counters for address decoding and for a proper management of spill 
--and fill operations. In particular fill and spill are managed by receiving the "call" and "ret" signals,
--assuming that they are generated in a coherent way (e.g. #of returns <= # of calls, enough time for spill/fill
-- after a call/return...). 
-- This control unit addresses and solves all the corner cases, whose management is commented throughout the code.

-----------------------------------------------------------------------------------------------------------

	
entity register_CU is
generic(	A : integer := log2(dimension_in_local_out * 3 + global);			--small address length
			M : integer := global;												--# of global registers 
			N : integer := dimension_in_local_out * 3;							--# of rows per window
			F : integer := win;													--# of windows
			B : integer := num_bit;						    					--# of bits per register (cell)
			L : integer := ((2 * dimension_in_local_out * win) + global);		---total # of rows);
			T : integer := log2((2 * dimension_in_local_out * win) + global);   --big address length
			Y : integer := dimension_in_local_out);
		
 port (	clk: 		IN 	std_logic; 
		reset: 		IN 	std_logic; 
		call : 		IN  std_logic;
		ret :       IN  std_logic;
		spill:		OUT std_logic;
		fill: 		OUT std_logic;	
		cwp: 		OUT std_logic_vector(log2(F)-1 downto 0);		-- cwp is sent to the register file
		count3:		OUT  std_logic_vector(log2(N)-1 downto 0)		-- count3 (for counting row per row within a window) is sent to the register file
		
		);
		
end register_CU;

architecture bhv of register_CU is


signal temp_cwp : std_logic_vector(log2(F)-1 downto 0) := (others => '0');  -- Temp Current Window Pointer(cwp)
signal swp: std_logic_vector(log2(F)-1 downto 0) := (others => '0'); 		-- Save window pointer (swp)

signal temp_count3 : std_logic_vector(log2(N)-1 downto 0) := (others => '0'); -- Temp count3 

signal count_nested : std_logic_vector(log2(max_nested_calls) -1 downto 0):= (others => '0');  -- Used to count the number of nested subroutines; when it reaches the '0'
																							   -- it means that no subroutines are running. The width of the counter is parametric
																							   -- and we can modify its value according to the size of the 
																							   -- used portion of the main memory

signal must_spill, must_fill : std_logic := '0';	--internal signals, for internal conditions

signal flag_one_round : std_logic := '0';	-- flag used to recognize the first F-1 called subroutines 

begin 	

---------------------------------------------------------------------------------------------------------------------

--this process is characterized by 5 main possibilities, each one excluding the others:
--1) reset (has the outmost priority)
--2) regular "call" with no SPILL required, generating the "spill" signal
--3) management of actual SPILL operations
--4) regular "ret" with no FILL required
--5) management of FILL operations

--clearly everything is clocked

---------------------------------------------------------------------------------------------------------------------
	
counterCall_manageSpillFill_and_Counters: process(clk)

	begin 
		
		if (clk'event and clk = '1' ) then
		
--------(1)----------------------------------------------------------------------------------------------------------

			if (reset  = '1') then
				temp_cwp <= (others => '0');
				swp <= (others => '0');
				temp_count3 <= (others => '0');
				count_nested <= (others => '0');
				flag_one_round <= '0';

--------(2)----------------------------------------------------------------------------------------------------------				
		
			elsif (call = '1' AND ret = '0' AND must_fill = '0' AND must_spill = '0') then
				
				count_nested <= count_nested  + '1';
				
				if (flag_one_round = '0') then   
					
					if (temp_cwp = F - 1) then			-- since cwp is incremented for each call, when the (F-1)th call arrives
														-- the "flag_one_round" is set, to tell us that the first "lap" is completed
						flag_one_round <= '1';		  	-- and it triggers the spill signal		 
						must_spill <= '1';	
						temp_cwp <= (others => '0');
					
					else								-- otherwise it is normally incremented
						temp_cwp <= temp_cwp + '1';
					
					end if;
					
				elsif (flag_one_round = '1') then		-- if one lap has alredy been performed there are two possibilities:
						
					
					if (temp_cwp = swp ) then    		-- when cwp = swp ==> it means that it can spill again because, after the first lap,
						must_spill <= '1';				-- if there wasn't any return but only a sequence of calls, cwp and swp keep on together, 
														-- and for each new call the spill is rised

						if (temp_cwp = F-1) then 
						
							temp_cwp <= (others => '0');
							swp <= (others => '0');
						else							
							temp_cwp <= temp_cwp + '1';		-- under these conditions, swp and cwp are incremented together
							swp <= swp + '1';				
						
						end if;

					else								-- otherwise, if cwp and swp are not equal, it means that, after the first lap, there were one or more returns
						temp_cwp <= temp_cwp + '1';		-- and in that case the cwp has been decremented; if a call is rised, in this case, we don't need to spill 
														-- because we recover a window associated to a previous child ==> only cwp is incremented 
					end if;	
					
				end if;				
			
--------(3)----------------------------------------------------------------------------------------------------------
				
			elsif (must_spill = '1') then				-- in the case of spill this condition allows the counter count3 to 				
														-- keep counting (until it reaches the last row of the window) and, consequently, 
				if (temp_count3 = N - 1) then 			-- also the position of the data sent to memory  
					must_spill <= '0';					-- (picked from certain registers) is updated. 
					temp_count3 <= (others => '0');
				
				else
					temp_count3 <= temp_count3 + '1';
					
				end if;				

--------(4)----------------------------------------------------------------------------------------------------------
			
			elsif (ret = '1' AND must_fill = '0' AND must_spill = '0') then     
				
				count_nested <= count_nested  - '1';
		
				
				if ((flag_one_round = '1') AND ((temp_cwp = swp + '1') OR (temp_cwp = 0 AND swp = F-1))) then  -- the fill is necessary when a lap has alredy been performed
																											   -- (==> spill) & cwp = (swp + 1) OR (cwp = 0 & swp points the last window)
					must_fill <= '1';
					
					if (temp_cwp = 0) then					
						temp_cwp <= std_logic_vector(to_unsigned(F-1,log2(F)));
					else 
						temp_cwp <= temp_cwp - '1';										--  
					end if;																--
																						--
					if (swp = 0) then 													-- under these conditions, both swp and cwp are decremented
						swp <= std_logic_vector(to_unsigned(F-1,log2(F)));				--
					else 																--
						swp <= swp - '1';												--
					end if;
				
				else 
										
					if (temp_cwp = 0) then					
						temp_cwp <= std_logic_vector(to_unsigned(F-1,log2(F)));
					else 
						temp_cwp <= temp_cwp - '1';                            			-- otherwise only the cwp is decremented
					end if;
					
				end if;
				
--------(5)----------------------------------------------------------------------------------------------------------				

			elsif (must_fill = '1') then  
				
				if (count_nested = 0) then 				-- during a fill operation, it is checked if the return that rised the fill, was the last one
				
					flag_one_round <= '0';				-- in that case the flag and the swp are reset 
					swp <= (others => '0');				-- since swp was decremented from the previous process (4), it reaches the value F-1 and needs for a reset
					
				end if;
				
				if (temp_count3 = N - 1) then 			-- in the case of fill this condition allows the counter count3 to
					temp_count3 <= (others => '0');		-- keep counting (until it reaches the last row of the window) and, consequently, 
					must_fill <= '0';					-- also the position of the data received from memory  
														-- (stored in certain registers) is updated. 
				else				
					temp_count3 <= temp_count3 + '1';
				
				end if;
			
			end if;
			
		end if;
		
		
	end process counterCall_manageSpillFill_and_Counters;
	
	cwp <= temp_cwp;
	count3 <= temp_count3;
	fill <= must_fill;
	spill <= must_spill;

end bhv;	


configuration CFG_CU_RF_BHV of register_CU is
  for bhv
  end for;
end configuration;

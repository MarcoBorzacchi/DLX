library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
use WORK.functions.all;


--------------------------------------------------------------------------------------------------------------------------------

-- This is the top level entity. The structure is made out of two main components: 
--a register file (which embeds the address decoder and exchanges data with the memory in case of fill and spill) and 
--a control unit.

--------------------------------------------------------------------------------------------------------------------------------


entity windowed_RF is
generic(	A : integer := log2(dimension_in_local_out * 3 + global);			--small address length
			M : integer := global;												--# of global registers 
			N : integer := dimension_in_local_out * 3;							--# of rows per window
			F : integer := win;													--# of windows
			B : integer := num_bit;						    					--# of bits per register (cell)
			L : integer := ((2 * dimension_in_local_out * win) + global);		---total # of rows);
			T : integer := log2((2 * dimension_in_local_out * win) + global);   --big address length
			Y : integer := dimension_in_local_out);	--total # of rows);
		
 port (	clk: 				IN 	std_logic;   
        reset: 				IN 	std_logic;                  
		enable: 			IN 	std_logic;
		call:				IN 	std_logic;
		ret: 				IN 	std_logic;
		rd1: 				IN 	std_logic;
		rd2: 				IN 	std_logic;
		wr: 				IN 	std_logic;
		add_wr: 			IN 	std_logic_vector(A-1 downto 0);
		add_rd1: 			IN 	std_logic_vector(A-1 downto 0);
		add_rd2: 			IN 	std_logic_vector(A-1 downto 0);
		datain: 			IN 	std_logic_vector(B-1 downto 0);
		in_from_mem : 		IN  std_logic_vector(B-1 downto 0);
		spill: 				OUT std_logic;
		fill: 				OUT std_logic;
		out_to_mem 	:		OUT std_logic_vector(B-1 downto 0);
        out1: 				OUT std_logic_vector(B-1 downto 0);
		out2: 				OUT std_logic_vector(B-1 downto 0));
end windowed_RF;

architecture struct of windowed_RF is
-----------------------------------------------------------------------------------------------------------

component register_CU 
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
		
		cwp: 		OUT std_logic_vector(log2(F)-1 downto 0);
		count3:		OUT  std_logic_vector(log2(N)-1 downto 0)
		
		);
		
end component;

-----------------------------------------------------------------------------------------------------------

component register_file_w is
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
		datain :		IN	std_logic_vector (B-1 downto 0);
		rd1: 			IN 	std_logic;
		rd2: 			IN 	std_logic;
		wr: 			IN 	std_logic;
		add_wr: 		IN 	std_logic_vector(A-1 downto 0);
		add_rd1: 		IN 	std_logic_vector(A-1 downto 0);
		add_rd2: 		IN 	std_logic_vector(A-1 downto 0);	
		in_from_mem : 	IN  std_logic_vector(B-1 downto 0);		
		cwp : 			IN std_logic_vector(log2(F)-1 downto 0);
		count3 : 		IN std_logic_vector(log2(N)-1 downto 0);
		spill:			IN std_logic;
		fill: 			IN std_logic;		
		out_to_mem :	OUT std_logic_vector(B-1 downto 0);	
        out1: 			OUT std_logic_vector(B-1 downto 0); 
		out2: 			OUT std_logic_vector(B-1 downto 0)
		
		);
		
end component;

-----------------------------------------------------------------------------------------------------------

signal temp_fill : std_logic;
signal temp_spill : std_logic;
signal temp_cwp : std_logic_vector(log2(F)-1 downto 0);
signal temp_count3 : std_logic_vector(log2(N)-1 downto 0);

 
begin 

	Control_Unit : register_CU port map (clk, reset, call, ret, temp_spill, 
										temp_fill, temp_cwp, temp_count3);	
								
	Register_File_and_addresses : register_file_w port map(clk, reset, enable, call, ret, 
											datain, rd1, rd2, wr, add_wr, 
											add_rd1, add_rd2, in_from_mem, temp_cwp,
											temp_count3, temp_spill, temp_fill, 
											out_to_mem, out1, out2);
	spill <= temp_spill;
	fill <= temp_fill;
	
end struct;

configuration CFG_STRUCT_WINDOWED_RF of windowed_RF is
	for struct
		for Control_Unit : register_CU
			use configuration WORK.CFG_CU_RF_BHV;
		end for;
		
		for Register_File_and_addresses : register_file_w
			use configuration WORK.CFG_RF_BHV;
		end for;
	end for;
end CFG_STRUCT_WINDOWED_RF;
	

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
use WORK.functions.all;

entity tb_windowing is 
end tb_windowing;

architecture test of tb_windowing is

component windowed_RF 

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
		enable : 	IN 	std_logic;
		call : 		IN  std_logic;
		ret :       IN  std_logic;
		datain :	IN	std_logic_vector (B-1 downto 0);
		rd1: 		IN 	std_logic;
		rd2: 		IN 	std_logic;
		wr: 		IN 	std_logic;
		add_wr: 	IN 	std_logic_vector(A-1 downto 0);
		add_rd1: 	IN 	std_logic_vector(A-1 downto 0);
		add_rd2: 	IN 	std_logic_vector(A-1 downto 0);
		in_from_mem : IN  std_logic_vector(B-1 downto 0);
		spill:		OUT std_logic := '0';
		fill: 		OUT std_logic := '0';		
		out_to_mem :	OUT std_logic_vector(B-1 downto 0);		
        out1: 		OUT std_logic_vector(B-1 downto 0) := (others =>'0'); 
		out2: 		OUT std_logic_vector(B-1 downto 0) := (others =>'0')
		
		);
end component;

signal clk, reset, enable, call, ret, rd1, rd2, wr, spill, fill : std_logic :='0';
signal datain, in_from_mem, out_to_mem, out1, out2 : std_logic_vector(num_bit-1 downto 0) := (others => '0');
signal add_rd1, add_rd2, add_wr : std_logic_vector(log2(dimension_in_local_out * 3 + global)-1 downto 0) := (others => '0');

constant clk_period : time := 100 ns;

begin
	dut : windowed_RF port map(clk, reset, enable, call, ret, datain, rd1, rd2, wr, add_wr, add_rd1, add_rd2, in_from_mem, spill, fill, out_to_mem, out1, out2);
	
	clk_proc : process
	begin
		clk <= '1';
		wait for clk_period /2;
		clk <= '0';
		wait for clk_period /2;
	end process;
	
	stimuli : process
	begin
		reset 		<= '1';
		enable 		<= '0';
		call 		<= '0';
		ret 		<= '0';
		datain		<= "00000000000000000000000011111111";
		rd1			<= '0';
		rd2			<= '0';
		wr			<= '1';
		add_wr 		<= "0010";
		add_rd1		<= "1000";
		add_rd2		<= "1000";
		in_from_mem	<= "00000000000000000000000000110011";
		
		wait for clk_period;
		
		reset 		<= '0';
		enable 		<= '1';
		
		wait for clk_period;
		
		datain		<= "00000000000000000000000001100101";
		add_wr 		<= "1010";
		
		wait for 2 * clk_period;
		
		rd1			<= '1';
		
		wait for clk_period;
		
		add_rd1		<= "1010";
		rd2			<= '1';
		
		wait for clk_period;	
		
		enable 		<= '0';
		rd1			<= '0';
		rd2			<= '0';
		datain		<= "00000000000000000000000011111111";
		add_wr 		<= "0001";
		
		wait for clk_period;
		
		reset 		<= '1';
		
		wait for clk_period;
		
		reset 		<= '0';
		enable 		<= '1';
		
		wait for clk_period;
		
		datain		<= "00000000000000000000000011111111";
		add_wr 		<= "0011";
		
		wait for clk_period;
----------------------------------------------------------------------------------------------------

		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- first call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- second call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- third call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- fourth call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;  -- first ret
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;  -- first ret
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;  -- first ret
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;  -- first ret
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;  -- first ret
		
		wait for dimension_in_local_out * 3 * clk_period;
		
------------------------------------------------------------------------------------------------------		
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- first call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- second call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- third call
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- fourth call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- 5th call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- 6th call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- 7th call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;  -- 8th call
		
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		
		
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		wait for dimension_in_local_out * 3 * clk_period;
		
-----------------------------------------------------------------------------------------------

		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		call <= '1';  wait for clk_period;  call <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		ret <= '1';  wait for clk_period;  ret <= '0';  wait for 2*clk_period;
		
		wait for 20 us;
		
		
		
	
	end process;
	

end test;
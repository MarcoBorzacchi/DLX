--simple testbench for quickly testing the p4 adder critical values

library ieee; 
use ieee.std_logic_1164.all;
use work.functions.all;
use work.constants.all;

entity tb_p4_adder is
end tb_p4_adder;

architecture test of tb_p4_adder is 

signal A 	: std_logic_vector (31 downto 0);
signal B 	: std_logic_vector (31 downto 0);
signal Cin 	: std_logic;
signal Cout : std_logic;
signal S 	: std_logic_vector (31 downto 0);

component p4_adder is

	generic(	N : integer := numBit_block*n_blocks;
				carry_step : integer := numBit_block;
				K : integer := n_blocks
			);
	
		port(	A : in std_logic_vector(N-1 downto 0);
				B : in std_logic_vector(N-1 downto 0);
				Cin : in std_logic;
				Cout : out std_logic;
				S : out std_logic_vector(N-1 downto 0)
			);

end component;

begin 

	DUT : p4_adder port map(A, B, Cin, Cout, S);

	process
	begin
	
		A <= "11111111111111111111111111111111";
		B <= "00000000000000000000000000000000";
		Cin <= '1';
		wait for 100 ns;
		
		A <= "00000000000000000010010011110001";
		B <= "00000000000000001111000000001111";
		Cin <= '0';
		wait for 100 ns;
		
		A <= "11110000000000000010010011110001";
		B <= "00010000000000001111000000001111";
		Cin <= '1';
		wait for 100 ns;
	
		A <= "00000000000000000010010011110001";
		B <= "00000000000000001111000000001111";
		Cin <= '0';
		wait for 100 ns;
		
		A <= "00000000000000001111000011110001";
		B <= "00000000000000000001000000001111";
		Cin <= '1';
		wait for 100 ns;
	
	end process;
	
end test;
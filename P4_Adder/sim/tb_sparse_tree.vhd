--simple testbench created in order to test the sparse tree

library ieee; 
use ieee.std_logic_1164.all;
use work.functions.all;
use work.constants.all;

entity tb_sparse_tree is 
end tb_sparse_tree;

architecture test of tb_sparse_tree is

signal A 	: std_logic_vector (31 downto 0);
signal B 	: std_logic_vector (31 downto 0);
signal Cin 	: std_logic;
signal Cout : std_logic_vector (7 downto 0);  --it could be parametric

component sparse_tree 

generic(
			N : integer := numBit_block * n_blocks;
			carry_step : integer := numBit_block;
			K : integer := n_blocks);

port(
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		Cin : in std_logic;
		Cout : out std_logic_vector(K-1 downto 0));

end component;

begin
	dut : sparse_tree port map(A, B, Cin, Cout);
	
	process
	begin
	
		A <= "00000000000000000010010011110001";
		B <= "00000000000000001111000000001111";
		Cin <= '0';
		wait for 100 ns;
		
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
		
	end process;
end test;

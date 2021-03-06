--basic testbench for testing the booth encoder

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;
use WORK.functions.all;

entity tb_booth_encoder is
end tb_booth_encoder;

architecture test of tb_booth_encoder is 

component booth_encoder 
	generic(enc : integer := 3*div(NumBit,4)); --division((NumBit/2)/3) rounded by eccess;
	port(	B : in std_logic_vector(NumBit-1 downto 0);
			E : out std_logic_vector(enc-1 downto 0)	
		);
end component;

	signal B_t : std_logic_vector (7 downto 0);
	signal E_t : std_logic_vector (5 downto 0);

begin

	dut : booth_encoder port map (B_t, E_t);
	
	process
	begin
		B_t <= "00011000";
		wait for 100 ns;
		
		B_t <= "10001001";
		wait for 100 ns;
		
		B_t <= "10100010";
		wait for 100 ns;
		
	end process;	
	
end test;
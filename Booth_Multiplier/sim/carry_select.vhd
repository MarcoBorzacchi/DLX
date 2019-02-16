--sum generator of the p4 adder

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity carry_select is 
	generic (	N : 				Integer := n_blocks * numBit_block;
				carry_step :		Integer := numBit_block;
				K : 				Integer := n_blocks);

	Port (	A : in std_logic_vector (N - 1 downto 0);				 		
			B : in std_logic_vector (N - 1 downto 0);
			Ci : in std_logic_vector (K - 1 downto 0);
			Sum : out std_logic_vector (N - 1 downto 0));
end carry_select;

architecture STRUCT of carry_select is

component cs_block
	generic (carry_step : Integer := numBit_block);
	Port (
		A: in std_logic_vector (carry_step-1 downto 0);
		B: in std_logic_vector (carry_step-1 downto 0);
		ci: in std_logic;
		S: out std_logic_vector (carry_step-1 downto 0)
	);

end component;

begin
	--cs_block 
	gen_blocks : for i in 1 to K generate 

				cs_blocks : cs_block 	generic map (carry_step => carry_step)
										port map (
										A((carry_step * i - 1) downto (carry_step) * (i-1)),
										B((carry_step * i - 1) downto (carry_step) * (i-1)),
										Ci(i-1),
										Sum((carry_step * i - 1) downto (carry_step) * (i-1)));

	end generate gen_blocks; 

end STRUCT;

configuration CFG_CARRY_SELECT_STRUCT of carry_select is
  for STRUCT 
  
	for gen_blocks
		for all : cs_block
			use configuration WORK.CFG_CS_BLOCK_STRUCT;
		end for;
	end for;
	end for;
end CFG_CARRY_SELECT_STRUCT;

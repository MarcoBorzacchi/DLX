library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity pg_block is

generic(carry_step : integer := numBit_block);
port(
		Pik : in std_logic;
		Gik : in std_logic;
		Pk_1j : in std_logic;
		Gk_1j : in std_logic;
		Pij : out std_logic;
		Gij : out std_logic
);
end pg_block;

architecture bhv of pg_block is 
begin 
	Gij <= Gik OR (Pik AND Gk_1j);
	Pij <= Pik AND Pk_1j;
end architecture;

configuration CFG_PG_BLOCK_BHV of pg_block is	
  for BHV
  end for;
end CFG_PG_BLOCK_BHV;

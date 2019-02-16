library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

entity g_block is
generic(carry_step : integer := numBit_block);
port(
		Pik : in std_logic;
		Gik : in std_logic;
		Gk_1j : in std_logic;
		Gij : out std_logic
);
end g_block;

architecture bhv of g_block is 
begin 
	Gij <= Gik OR (Gk_1j AND Pik);
end architecture;

configuration CFG_G_BLOCK_BHV of g_block is	
  for BHV
  end for;
end CFG_G_BLOCK_BHV;

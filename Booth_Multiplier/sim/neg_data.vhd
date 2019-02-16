library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity neg_data is 
		
	generic(N : integer := Numbit);
	port ( A : in std_logic_vector (N-1 downto 0);
		   neg_A : out std_logic_vector (N-1 downto 0));

end neg_data;

architecture bhv of neg_data is 

signal temp : std_logic_vector(N-1 downto 0);
begin 

	two_complement : for i in 0 to N-1 generate
	
		temp(i) <= A(i) XOR '1';
		
	end generate;
	
	neg_A <= temp + '1';


end bhv;

configuration CFG_neg_data_BHV of neg_data is	
  for BHV
  end for;
end CFG_neg_data_BHV;
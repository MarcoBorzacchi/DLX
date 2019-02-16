--booth encoder, has on the output a vector derived by B, ready to be fed to the MUX selectors

library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;
use work.functions.all;

entity booth_encoder is
	generic(enc : integer := 3*div(NumBit,4));   --division rounded by eccess
	port(	B : in std_logic_vector(NumBit-1 downto 0);
			E : out std_logic_vector(enc-1 downto 0)	
		);
end booth_encoder;

architecture bhv of booth_encoder is

-- type e_matrix is array((enc/3)-1 downto 0) of std_logic_vector(2 downto 0);
-- signal e_m_1 : e_matrix;

begin 

	process(B)
	begin
		
		for i in 0 to ((enc/3)-1) loop 
		
			if (i = 0) then 
			
				E(2 downto 0) <= (B(1) & B(0) & '0');
				
			else 
				
				E((3*i+2) downto (3*i))<= (B(2*i+1) & B(2*i) & B(2*i-1));
			
			end if;
				
		end loop;
		
	end process;

end bhv;
	
configuration CFG_booth_enc_BHV of booth_encoder is	
  for BHV
  end for;
end CFG_booth_enc_BHV;
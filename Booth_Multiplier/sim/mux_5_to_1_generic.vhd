library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity mux_5_to_1_generic is 
	generic	(N : integer := NumBit);
	port	(
				A : in std_logic_vector(N-1 downto 0);
				B : in std_logic_vector(N-1 downto 0);
				C : in std_logic_vector(N-1 downto 0);
				D : in std_logic_vector(N-1 downto 0);
				E : in std_logic_vector(N-1 downto 0);
				SEL : in std_logic_vector(2 downto 0);
				U : out std_logic_vector(N-1 downto 0)
			);
end mux_5_to_1_generic;

architecture bhv of mux_5_to_1_generic is 

begin
	
	process(A,B,C,D,E,SEL)
	begin
		
		if ((SEL = "000") OR (SEL ="111")) then		-- 0
			
			U <= A;
			
		elsif ((SEL = "001")OR(SEL = "010")) then		--(A)
		
			U <= B;
			
		elsif ((SEL = "101") OR (SEL = "110")) then	--(-A)
		
			U <= C;
		
		elsif(SEL = "011") then 					--(2A)
		
			U <= D;
			
		elsif(SEL = "100") then						--(-2A) 
		
			U <= E;
			
		else 
			
			U <= (others => '0');
		
		end if;
		
	end process;
	
end bhv;	

configuration CFG_mux_5_1_BHV of mux_5_to_1_generic is	
  for BHV
  end for;
end CFG_mux_5_1_BHV;



library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX21_GENERIC is
	generic(N: integer := numBit);

	port( 	A:      in std_logic_vector(n-1 downto 0);
		B:      in std_logic_vector(n-1 downto 0);
		SEL:	in std_logic;
		Y:	out std_logic_vector(n-1 downto 0)
	    );

end MUX21_GENERIC;
-- -----------------------------------------------------------------------------------------------------
-- architecture BHV of MUX21_GENERIC is
-- begin
	-- Y <= A when (SEL = '1') else B;
-- end BHV;
-- -----------------------------------------------------------------------------------------------------
architecture STRUCT of MUX21_GENERIC is
component MUX21

	port(   A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic);
end component;

begin
	gen_mux :
	for i in 0 to n-1 generate 

		muxes : MUX21 port map 
			(A(i),B(i),SEL,Y(i));
	end generate gen_mux; 

end STRUCT;
-------------------------------------------------------------------------------------------------------
-- configuration CFG_MUX21_GENERIC_BHV of MUX21_GENERIC is
	-- for BHV
	-- end for;
-- end CFG_MUX21_GENERIC_BHV;

configuration CFG_MUX21_GENERIC_STRUCT of MUX21_GENERIC is
	for STRUCT
		for gen_mux
			for all : MUX21
				use configuration WORK.CFG_MUX21_STRUCTURAL;
			end for;
		end for;
	end for;
end CFG_MUX21_GENERIC_STRUCT;


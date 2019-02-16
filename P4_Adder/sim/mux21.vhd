library IEEE;
use IEEE.std_logic_1164.all; 
use WORK.constants.all; 

entity MUX21 is
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic);
end MUX21;

--------------------------------------------------------------------------------------------

architecture STRUCTURAL of MUX21 is

	signal Y1: std_logic;
	signal Y2: std_logic;
	signal SB: std_logic;

	component ND2
	
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Y:	Out	std_logic);
	end component;
	
	component IV
	
	Port (	A:	In	std_logic;
		Y:	Out	std_logic);
	end component;

begin

	UIV : IV
	Port Map ( S, SB);

	UND1 : ND2
	Port Map ( A, S, Y1);

	UND2 : ND2
	Port Map ( B, SB, Y2);

	UND3 : ND2
	Port Map ( Y1, Y2, Y);


end STRUCTURAL;

--------------------------------------------------------------------------------------------

configuration CFG_MUX21_STRUCTURAL of MUX21 is
	for STRUCTURAL
		for all : IV
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all : ND2
			use configuration WORK.CFG_ND2_ARCH1;
		end for;
	end for;
end CFG_MUX21_STRUCTURAL;

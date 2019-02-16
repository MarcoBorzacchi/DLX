library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity CS_BLOCK is 
	generic (carry_step : Integer := numBit_block);

	Port (
		A: in std_logic_vector (carry_step-1 downto 0);
		B: in std_logic_vector (carry_step-1 downto 0);
		ci: in std_logic;	
		S: out std_logic_vector (carry_step-1 downto 0)
	);

end CS_BLOCK; 

architecture STRUCT of CS_BLOCK is

	signal sum_0 : std_logic_vector(carry_step-1 downto 0);
	signal sum_1 : std_logic_vector(carry_step-1 downto 0);
	signal carry_dummy_0 : std_logic;
	signal carry_dummy_1 : std_logic;

	component RCA 

		generic (N : 		Integer := numBit_block);

		Port (	A:	In	std_logic_vector(N-1 downto 0);
				B:	In	std_logic_vector(N-1 downto 0);
				Ci:	In	std_logic;
				S:	Out	std_logic_vector(N-1 downto 0);
				Co:	Out	std_logic);

	end component;

	component mux21_generic 

		generic(N: integer := numBit_block);

		Port(   A:      in std_logic_vector(n-1 downto 0);
				B:      in std_logic_vector(n-1 downto 0);
				SEL:	in std_logic;
				Y:	out std_logic_vector(n-1 downto 0));
	end component;

begin
		
		rca_0: RCA 
			generic map (N => carry_step)
			port map(A, B, '0', sum_0, carry_dummy_0);
		
		rca_1: RCA 
			generic map (N => carry_step)
			port map(A, B, '1', sum_1, carry_dummy_1);	
		
		mux: mux21_generic
			generic map (N => carry_step)
			port map(sum_1, sum_0, ci, S);

end STRUCT;

configuration CFG_CS_BLOCK_STRUCT of cs_block is
	for STRUCT
		
		for mux : mux21_generic
			use configuration WORK.CFG_MUX21_GENERIC_STRUCT;
		end for;
		
		for rca_0 : RCA
			use configuration WORK.CFG_RCA_STRUCTURAL;
		end for;
		
		for rca_1 : RCA
			use configuration WORK.CFG_RCA_STRUCTURAL;
		end for;

	end for;
		
end CFG_CS_BLOCK_STRUCT;
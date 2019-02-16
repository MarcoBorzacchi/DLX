--booth multiplier top module

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use work.constants.all;
use work.functions.all;

entity booth_multiplier is
generic ( N : integer := NumBit );
Port ( A : in std_logic_vector (N/2 -1 downto 0);
	   B : in std_logic_vector (N/2 -1 downto 0);
	   P : out std_logic_vector (N - 1 downto 0));	   

end booth_multiplier;

architecture struct of booth_multiplier is 

component neg_data 
	
	generic(N : integer := Numbit);
	
	port ( A : in std_logic_vector (N-1 downto 0);
		   neg_A : out std_logic_vector (N-1 downto 0));

end component;
-------------------------------------------------------------------------------------------------
component p4_adder
	
	generic(	N : integer := numBit_block*n_blocks;
				carry_step : integer := numBit_block;
				K : integer := n_blocks
			);
	
	port(		A : in std_logic_vector(N-1 downto 0);
				B : in std_logic_vector(N-1 downto 0);
				Cin : in std_logic;
				Cout : out std_logic;
				S : out std_logic_vector(N-1 downto 0));	
end component; 
-------------------------------------------------------------------------------------------------
component mux_5_to_1_generic
	
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
end component;
-------------------------------------------------------------------------------------------------
component booth_encoder
	
	generic(enc : integer := (3*div(NumBit,4))); --division rounded by eccess;
	port(	B : in std_logic_vector(NumBit-1 downto 0);
			E : out std_logic_vector(enc-1 downto 0)	
		);

end component;
-------------------------------------------------------------------------------------------------
constant n_mux : integer := div(NumBit,4);
constant n_add : integer := n_mux - 1;
constant enc_w : integer := n_mux * 3;  --# of bits from encoder


type add_matrix is array (n_add-1 downto 0) of std_logic_vector(N-1 downto 0);
signal out_add : add_matrix;

type mux_matrix is array (n_mux-1 downto 0) of std_logic_vector(N-1 downto 0);
signal out_mux: mux_matrix;

signal enc_out : std_logic_vector (enc_w - 1 downto 0);

signal big_A_neg : std_logic_vector (N -1 downto 0);
signal big_A : std_logic_vector (N -1 downto 0);
signal big_B : std_logic_vector (N -1 downto 0);

type shifted_matrix is array (n_mux*4 -2 -1 downto 0) of std_logic_vector(N-1 downto 0); --the first two for the first mux, 4 for the others
signal out_shifted: shifted_matrix; 


begin  
	
	big_A <= std_logic_vector(resize(signed (A), N));
	big_B <= std_logic_vector(resize(signed (B), N));
	
	two_compl: neg_data generic map(N => N)
				     port map(big_A, big_A_neg);
					 
	encoder : booth_encoder generic map(enc => enc_w)
							port map(big_B, enc_out);
							
	L0 : for i in 0 to n_mux-1 generate 
	
		gen_first_mux : if (i = 0) generate
		
			out_shifted(0) <= std_logic_vector(shift_left(signed(big_A), 1 )); 
			out_shifted(1) <= std_logic_vector(shift_left(signed(big_A_neg), 1 ));
		
			mux1: mux_5_to_1_generic 	generic map(N => N)
										port map( 	A => (OTHERS => '0'),
													B => big_A,
													C => big_A_neg,
													D => out_shifted(0),
													E => out_shifted(1),
													sel => enc_out(2 downto 0),
													U => out_mux(0)			 
												);											
												
		end generate;
		
		gen_rest: if (i > 0) generate
				
			out_shifted(i*4 -2) <= std_logic_vector(shift_left(signed(big_A), 2*i )); 
			out_shifted(i*4 -1) <= std_logic_vector(shift_left(signed(big_A_neg), 2*i ));	
			out_shifted(i*4) <= std_logic_vector(shift_left(signed(big_A), 2*i + 1 )); 
			out_shifted(i*4 + 1) <= std_logic_vector(shift_left(signed(big_A_neg), 2*i + 1 ));
				
			mux : mux_5_to_1_generic 	generic map(N => N)
										port map( 	A => (OTHERS => '0'),
													B => out_shifted(i*4 -2),
													C => out_shifted(i*4 -1),
													D => out_shifted(i*4),
													E => out_shifted(i*4 + 1),
													sel => enc_out((i+1)*3 -1  downto i*3), --one is repeated
													U => out_mux(i)			 
												);
			
			first_add : if (i = 1) generate
				add : p4_adder  			generic map(N => N, carry_step => numBit_block, K => n_blocks)
											port map( 	A => out_mux(0),
														B => out_mux(1),
														Cin => '0',
														S => out_add(0),
														Cout => open		 
													);			
												
			end generate;

			other_adds : if (i > 1) generate			
			
			add : p4_adder   				generic map(N => N, carry_step => numBit_block, K => n_blocks)
										port map( 	A => out_add(i - 2),
													B => out_mux(i),
													Cin => '0',
													S => out_add(i - 1),
													Cout => open		 
												);
			end generate;									
												
		end generate;
			
	end generate;
	
	P <= out_add(n_add - 1);

				
end struct;


configuration CFG_BOOTH_MUL_STRUCT of booth_multiplier is
  for STRUCT 
  
	for two_compl : neg_data
		use configuration WORK.CFG_neg_data_BHV;
	end for;
	for encoder : booth_encoder
		use configuration WORK. CFG_booth_enc_BHV;
	end for;
	
	for L0
		for gen_first_mux
			for all : mux_5_to_1_generic
				use configuration WORK.CFG_mux_5_1_BHV;
			end for;
		end for;
		for gen_rest 
			for all: mux_5_to_1_generic
				use configuration WORK.CFG_mux_5_1_BHV;
			end for;
			for first_add
				for all: p4_adder
					use configuration WORK.CFG_P4_ADDER_STRUCT;
				end for;
			end for;
			for other_adds
				for all: p4_adder
					use configuration WORK.CFG_P4_ADDER_STRUCT;
				end for;
			end for;		
		end for;
	end for;
	
end for;
end CFG_BOOTH_MUL_STRUCT;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.constants.all;

entity p4_adder is

	generic(	N : integer := numBit_block*n_blocks;
				carry_step : integer := numBit_block;
				K : integer := n_blocks
			);
	
	port(		A : in std_logic_vector(N-1 downto 0);
				B : in std_logic_vector(N-1 downto 0);
				Cin : in std_logic;
				Cout : out std_logic;
				S : out std_logic_vector(N-1 downto 0)
		);

end p4_adder;

architecture struct of p4_adder is 
	
	component  carry_select
	
	generic (	N : 			Integer := n_blocks * numBit_block;
				carry_step : 	Integer := numBit_block;
				K : 			Integer := n_blocks  );

	Port (	A : in std_logic_vector (N - 1 downto 0);				 		
			B : in std_logic_vector (N - 1 downto 0);
			Ci : in std_logic_vector (K - 1 downto 0);
			Sum : out std_logic_vector (N - 1 downto 0));
			
	end component;
	
	component sparse_tree 
	generic(
				N : integer := numBit_block * n_blocks;
				carry_step : integer := numBit_block;
				K : integer := n_blocks);

	port(
			A : in std_logic_vector(N-1 downto 0);
			B : in std_logic_vector(N-1 downto 0);
			Cin : in std_logic;
			Cout : out std_logic_vector(K - 1 downto 0));

	end component;
	
	signal carries : std_logic_vector(K-1 downto 0); 

	begin
		carry_generator : sparse_tree 		generic map (N, carry_step, K)
											port map(	A 		=>	A, 
														B 		=>	B, 
														Cin 	=>	Cin , 
														Cout	=>	carries);
		
		
		
		
		sum_generator	: carry_select 		generic map (N, carry_step, K)
											port map( 	A 		=>	A, 
														B 		=>	B, 
														Ci(0)	=>	Cin,
														Ci(n_blocks -1 downto 1) => carries(K-2 downto 0),
														Sum 	=> 	S);
		Cout <= carries(K -1);
		
end struct;
	
configuration CFG_P4_ADDER_STRUCT of p4_adder is
  for STRUCT 
  
	for carry_generator : sparse_tree
		use configuration WORK.CFG_SPARSE_TREE_STRUCT;
	end for;
	for sum_generator : carry_select
		use configuration WORK.CFG_CARRY_SELECT_STRUCT;
	end for;
end for;
end CFG_P4_ADDER_STRUCT;

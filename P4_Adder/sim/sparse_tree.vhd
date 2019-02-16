--parametric sparse tree carry generator for the p4 adder

library ieee; 
use ieee.std_logic_1164.all;
use work.functions.all;
use work.constants.all;

entity sparse_tree is 
generic(
			N : integer := numBit_block * n_blocks;
			carry_step : integer := numBit_block;
			K : integer := n_blocks);

port(
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		Cin : in std_logic;
		Cout : out std_logic_vector(K-1 downto 0));

end sparse_tree;

architecture struct of sparse_tree is

	constant num_row : integer := log2(N) + 1;
	type signal_matrix is array (num_row-1 downto 0) of std_logic_vector(N-1 downto 0);
	signal p_matrix : signal_matrix;
	signal g_matrix : signal_matrix;
	
	component pg_network
	generic (N: integer := numBit_block * n_blocks);
		port(
			A : in std_logic_vector(N-1 downto 0);
			B : in std_logic_vector(N-1 downto 0);
			Cin : in std_logic;
			P : out std_logic_vector(N-1 downto 0);
			G : out std_logic_vector(N-1 downto 0)
			);
	end component;

	component g_block
		port(
			Pik : in std_logic;
			Gik : in std_logic;
			Gk_1j : in std_logic;
			Gij : out std_logic
	);
	end component;

	component pg_block 
	port(
			Pik : in std_logic;
			Gik : in std_logic;
			Pk_1j : in std_logic;
			Gk_1j : in std_logic;
			Pij : out std_logic;
			Gij : out std_logic
	);
	end component;
begin 
	
	--generates pg network, giving the first row
	--of g_matrix and p_matrix
	row_0 : pg_network  generic map (N => N)	
						port map(A, B, Cin, p_matrix(0), g_matrix(0));
	
	--generate statements labelled with Lx are only intended to loop 
	L0 : for i in 1 to num_row-1 generate					--i loops on rows 
	
		L1 : for j in 0 to N-1 generate						--j loops on columns
		 
			row_1_to_3 : if (i>=1 AND i<=3) generate		--first 3 rows
				
				p1_block_needed : if(((j+1) mod (2**i)) = 0) generate	--if a block is needed in the first part
				
					p1_g : if(j < (2**i)) generate						--it's a G block if j<2^i
						
						g_blocks_1 : g_block port map(
															Pik 	=>	p_matrix(i-1)(j),
															Gik 	=> 	g_matrix(i-1)(j),
															Gk_1j 	=>	g_matrix(i-1)(2**(i-1)-1),
															Gij 	=>	g_matrix(i)(j)								
														);
						
					end generate;
					
					p1_pg : if(j >= (2**i)) generate					--otherwise it's a PG block
					
						pg_blocks_1 : pg_block port map(
														Pik 	=>	p_matrix(i-1)(j),
														Gik 	=> 	g_matrix(i-1)(j),
														Pk_1j	=>	p_matrix(i-1)(j-(2**(i-1))),
														Gk_1j 	=>	g_matrix(i-1)(j-(2**(i-1))),
														Gij 	=>	g_matrix(i)(j),
														Pij		=>	p_matrix(i)(j)
													);
					
					end generate;
					
				end generate;
				
				
--				if no block is created pass p and g form upper row
				p1_pass_p_g : if(((j+1) mod (2**i)) /= 0) generate
				
					g_matrix(i)(j) <= g_matrix(i-1)(j);
					p_matrix(i)(j) <= p_matrix(i-1)(j);
				
				end generate;
				
			end generate;
			
			
			row_4_to_max : if (i > 3) generate --starts generating the second part of the tree
			
				count_n_intervals : for k in 1 to (N/(2**i)) generate --from 1 to number of "intervals"
					
					p2_block_needed : if( (j < k*(2**i)) AND (j >= ((k-1)*(2**i)+((2**(i-1))+ carry_step))-1) AND (((j+1) mod carry_step) = 0)) generate
						--block needed in the second part
						p2_g : if(j < (2**i)) generate
						
							g_blocks_2 : g_block port map(
															Pik 	=>	p_matrix(i-1)(j),
															Gik 	=> 	g_matrix(i-1)(j),
															Gk_1j 	=>	g_matrix(i-1)(2**(i-1)-1),
															Gij 	=>	g_matrix(i)(j)								
														);
													
						end generate;

						p2_pg : if(j >= (2**i)) generate
						
							pg_blocks_2 : pg_block port map(
																Pik 	=>	p_matrix(i-1)(j),
																Gik 	=> 	g_matrix(i-1)(j),
																Pk_1j	=>	p_matrix(i-1)((j/2**(i-1))*2**(i-1)-1),
																Gk_1j 	=>	g_matrix(i-1)((j/2**(i-1))*2**(i-1)-1),
																Gij 	=>	g_matrix(i)(j),
																Pij		=>	p_matrix(i)(j)
															);
						
						end generate;
					
					end generate;
					--again, if no block is created pass p and g form upper row						
					p2_pass_p_g : if(((j >= (k-1)*(2**i)) AND (j <((k-1)*(2**i)+((2**(i-1))+carry_step))-1)) OR (((j+1) mod carry_step) /= 0)) generate
						
						
						g_matrix(i)(j) <= g_matrix(i-1)(j);
						p_matrix(i)(j) <= p_matrix(i-1)(j);
					
					end generate;
					
				end generate;
				
				--if it's the last row connect the g_matrix to Cout
				
				last_row : if((i = num_row-1) AND (((j+1) mod carry_step )=0) AND(j>0)) generate
					
					Cout(j/carry_step) <= g_matrix(i)(j);
				
				end generate;
				
			end generate;
			
		end generate;
	
	end generate;
				
end struct;


configuration CFG_SPARSE_TREE_STRUCT of sparse_tree is
  for STRUCT 
    for row_0 : pg_network
		use configuration WORK.CFG_PG_NETWORK_BHV;
	end for;
	
	for L0 for L1 
------------------------------------------------------------------------------	
		for row_1_to_3 for p1_block_needed 
		
			for p1_g
				for all : g_block
					use configuration WORK.CFG_G_BLOCK_BHV;
				end for;
			end for; 
				
			for p1_pg 
				for all : pg_block
					use configuration WORK.CFG_PG_BLOCK_BHV;
				end for;
			end for; 
			
		end for; end for;
-------------------------------------------------------------------------------
		
		for row_4_to_max for count_n_intervals for p2_block_needed 
		
			for p2_g 
				for all : g_block
					use configuration WORK.CFG_G_BLOCK_BHV;
				end for;
			end for; 
				
			for p2_pg
				for all : pg_block
					use configuration WORK.CFG_PG_BLOCK_BHV;
				end for;
			end for;
			
		end for; end for; end for;
		

			
	end for; end for;
end for;
end CFG_SPARSE_TREE_STRUCT;


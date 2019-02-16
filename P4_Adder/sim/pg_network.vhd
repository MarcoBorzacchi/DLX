library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity pg_network is 
	generic (N: integer := numBit_block*n_blocks;
		 carry_step : integer := numBit_block);
	port(
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		Cin : in std_logic;
		P : out std_logic_vector(N-1 downto 0);
		G : out std_logic_vector(N-1 downto 0)
		);
end pg_network;

architecture bhv of pg_network is

begin
	-- Bin XOR Cin are needed to accomplish the 2's complement
	process(A, B, Cin)
	begin 
		for i in 0 to N-1 loop
			if(i=0) then
				P(i) <= A(i) XOR (B(i) XOR Cin);
				G(i) <= ((A(i) AND (B(i) XOR Cin)) OR (A(i) AND Cin) OR ((B(i) XOR Cin) AND Cin));
			else 
				P(i) <= A(i) XOR (B(i) XOR Cin);
				G(i) <= (A(i) AND (B(i) XOR Cin));
			end if;
		end loop;
	end process;

end bhv;

configuration CFG_PG_NETWORK_BHV of pg_network is	
  for BHV
  end for;
end CFG_PG_NETWORK_BHV;
		

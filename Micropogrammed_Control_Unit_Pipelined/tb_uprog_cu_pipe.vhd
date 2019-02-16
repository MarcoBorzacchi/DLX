library ieee;
use ieee.std_logic_1164.all;
use work.constants2.all;

entity tb_uprog_cu_pipe is
end tb_uprog_cu_pipe;

architecture test_upc_pipe of tb_uprog_cu_pipe is
	component uprog_cu_pipe
		port (
				-- 1st pipeline stage outputs
				en1    	: out std_logic;               
				rf1    	: out std_logic;              
				rf2    	: out std_logic;               
				-- 2nd pipeline stage outputs
				en2    	: out std_logic;               
				s1     	: out std_logic;               
				s2     	: out std_logic;               
				alu1   	: out std_logic;               
				alu2   	: out std_logic;               
				-- 3rd pipeline stage outputs
				en3    	: out std_logic;               
				rm     	: out std_logic;               
				wm     	: out std_logic;               
				s3     	: out std_logic;               
				wf1    	: out std_logic;               
				-- inputs
				opcode 	: in std_logic_vector(opcode_size - 1 downto 0);
				func   	: in std_logic_vector(funct_size  - 1 downto 0);              
				clk 	: in std_logic;
				rst 	: in std_logic); -- active low
	end component;
	signal opcode 	: std_logic_vector(opcode_size-1 downto 0) := (others => '0');
	signal func		: std_logic_vector(funct_size -1 downto 0) := (others => '0');
	signal en1, rf1, rf2, en2, s1, s2, alu1, alu2, en3, rm, wm, s3, wf1 : std_logic;
	signal rst : std_logic := '1';
	signal clk : std_logic := '0';
	constant cp : time := 1 ns;
begin
	dut : uprog_cu_pipe port map(en1, rf1, rf2, en2, s1, s2, alu1, alu2, en3, rm, wm, s3, wf1, opcode, func, clk, rst);
	
	clk_proc : process
	begin 
		clk <= not(clk);
		wait for cp/2;
	end process clk_proc;
	
	stimuli : process
	begin
		rst <= '0';
		wait for cp;
		rst <= '1';
		
		----------------test r-type instructions----------------
		opcode 	<= r_type;
		func 	<= r_type_add;
		wait for cp;
		
		func 	<= r_type_sub;
		wait for cp;
		
		func 	<= r_type_and;
		wait for cp;
		
		func 	<= r_type_or;
		wait for 3*cp;
		--------------------------------------------------------
		
		rst <= '0';
		wait for 3*cp;
		rst <= '1';
		
		----------------test i-type instructions----------------
		func <= nop;
		opcode <= i_type_addi1;
		wait for cp;
		
		opcode <= i_type_subi1;
		wait for cp;
		
		opcode <= i_type_andi1;
		wait for cp;
		
		opcode <= i_type_ori1;
		wait for cp;
		
		opcode <= i_type_addi2;
		wait for cp;
		
		opcode <= i_type_subi2;
		wait for cp;
		
		opcode <= i_type_andi2;
		wait for cp;
		
		opcode <= i_type_ori2;
		wait for cp;
		
		opcode <= i_type_mov;
		wait for cp;
		
		opcode <= i_type_sreg1;
		wait for cp;
		
		opcode <= i_type_sreg2;
		wait for cp;
		
		opcode <= i_type_smem2;
		wait for cp;
		
		opcode <= i_type_lmem1;
		wait for cp;
		
		opcode <= i_type_lmem2;
		wait for 3*cp;
	
		--------------------------------------------------------
		
		rst <= '0';
		wait for cp;
		rst <= '1';
		wait for 1000*cp;
		
	end process stimuli;
	
end test_upc_pipe;
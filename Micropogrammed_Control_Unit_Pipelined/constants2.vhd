library ieee;
use ieee.std_logic_1164.all;

package constants2 is
	
	constant opcode_size 	: integer := 6;
	constant funct_size 	: integer := 11;
	constant reg1_size 		: integer := 9;
	constant reg2_size		: integer := 4;
	constant clk_cycles		: integer := 3;
	constant microcode_side : integer := 55;
	
	--R type instructions:
	constant r_type_add 	: std_logic_vector(funct_size - 1 downto 0 ) := "00000000001";		-- 1X 
	constant r_type_sub 	: std_logic_vector(funct_size - 1 downto 0 ) := "00000000010";		-- 2X
	constant r_type_and		: std_logic_vector(funct_size - 1 downto 0 ) := "00000000011";		-- 3X
	constant r_type_or		: std_logic_vector(funct_size - 1 downto 0 ) := "00000000100";		-- 4X
	constant r_type 		: std_logic_vector(opcode_size-1 downto 0 )	 := "000000";         	
	--I type operations
	constant nop 			: std_logic_vector(funct_size - 1 downto 0 ):= "00000000000";
	constant i_type_addi1	: std_logic_vector(opcode_size-1 downto 0 ) := "000001";			-- 1
	constant i_type_subi1	: std_logic_vector(opcode_size-1 downto 0 ) := "000100";			-- 4
	constant i_type_andi1	: std_logic_vector(opcode_size-1 downto 0 ) := "000111";			-- 7
	constant i_type_ori1	: std_logic_vector(opcode_size-1 downto 0 ) := "001010";			-- 10
	constant i_type_addi2	: std_logic_vector(opcode_size-1 downto 0 ) := "001101";			-- 13
	constant i_type_subi2	: std_logic_vector(opcode_size-1 downto 0 ) := "010000";			-- 16
	constant i_type_andi2	: std_logic_vector(opcode_size-1 downto 0 ) := "010011";			-- 19
	constant i_type_ori2	: std_logic_vector(opcode_size-1 downto 0 ) := "010110";			-- 22
	constant i_type_mov		: std_logic_vector(opcode_size-1 downto 0 ) := "011001";			-- 25
	constant i_type_sreg1	: std_logic_vector(opcode_size-1 downto 0 ) := "011100";			-- 28
	constant i_type_sreg2	: std_logic_vector(opcode_size-1 downto 0 ) := "011111";			-- 31
	constant i_type_smem2	: std_logic_vector(opcode_size-1 downto 0 ) := "100010";			-- 34
	constant i_type_lmem1	: std_logic_vector(opcode_size-1 downto 0 ) := "100101";			-- 37
	constant i_type_lmem2	: std_logic_vector(opcode_size-1 downto 0 ) := "101000";			-- 40
	 
	
	constant offset_rst 	: integer 		:= 0;
	constant offset_i_add1 	: integer 		:= 1;
	constant offset_i_sub1 	: integer 		:= 4;
	constant offset_i_and1 	: integer 		:= 7;
	constant offset_i_or1 	: integer 		:= 10;
	constant offset_i_add2 	: integer 		:= 13;	
	constant offset_i_sub2 	: integer 		:= 16;
	constant offset_i_and2 	: integer 		:= 19;
	constant offset_i_or2 	: integer 		:= 22;	
	constant offset_i_mov 	: integer 		:= 25;	
	constant offset_i_sreg1	: integer 		:= 28;	
	constant offset_i_sreg2	: integer 		:= 31;	
	constant offset_i_smem2 : integer 		:= 34;
	constant offset_i_lmem1 : integer 		:= 37;		
	constant offset_i_lmem2 : integer 		:= 40;
	constant offset_r_add 	: integer 		:= 43;
	constant offset_r_sub 	: integer 		:= 46;
	constant offset_r_and 	: integer 		:= 49;
	constant offset_r_or 	: integer 		:= 52;
	
	
	
	
end constants2;

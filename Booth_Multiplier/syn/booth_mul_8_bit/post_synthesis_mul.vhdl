
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_booth_multiplier is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_booth_multiplier;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH1 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH1 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH1 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH1 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH1 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH1 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH1 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH1 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH1 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH1 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH1 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH1 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH1 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH1 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH1 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH1 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH1 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH1 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH1 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH1 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH1 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH1 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH1 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_7 is

   port( A : in std_logic;  Y : out std_logic);

end IV_7;

architecture SYN_BEHAVIORAL of IV_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_6 is

   port( A : in std_logic;  Y : out std_logic);

end IV_6;

architecture SYN_BEHAVIORAL of IV_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_5 is

   port( A : in std_logic;  Y : out std_logic);

end IV_5;

architecture SYN_BEHAVIORAL of IV_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_4 is

   port( A : in std_logic;  Y : out std_logic);

end IV_4;

architecture SYN_BEHAVIORAL of IV_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_3 is

   port( A : in std_logic;  Y : out std_logic);

end IV_3;

architecture SYN_BEHAVIORAL of IV_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_2 is

   port( A : in std_logic;  Y : out std_logic);

end IV_2;

architecture SYN_BEHAVIORAL of IV_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_1 is

   port( A : in std_logic;  Y : out std_logic);

end IV_1;

architecture SYN_BEHAVIORAL of IV_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_7 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_7;

architecture SYN_STRUCTURAL of MUX21_7 is

   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_7
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_7 port map( A => S, Y => SB);
   UND1 : ND2_21 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_20 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_19 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_6 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_6;

architecture SYN_STRUCTURAL of MUX21_6 is

   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_6
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_6 port map( A => S, Y => SB);
   UND1 : ND2_18 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_17 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_16 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_5 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_5;

architecture SYN_STRUCTURAL of MUX21_5 is

   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_5
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_5 port map( A => S, Y => SB);
   UND1 : ND2_15 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_14 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_13 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_4 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_4;

architecture SYN_STRUCTURAL of MUX21_4 is

   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_4 port map( A => S, Y => SB);
   UND1 : ND2_12 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_11 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_10 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_3 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_3;

architecture SYN_STRUCTURAL of MUX21_3 is

   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_3 port map( A => S, Y => SB);
   UND1 : ND2_9 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_8 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_7 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_2 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_2;

architecture SYN_STRUCTURAL of MUX21_2 is

   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_2 port map( A => S, Y => SB);
   UND1 : ND2_6 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_5 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_4 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_1 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_1;

architecture SYN_STRUCTURAL of MUX21_1 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_1 port map( A => S, Y => SB);
   UND1 : ND2_3 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_2 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_1 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_STRUCT of MUX21_GENERIC_N4_1 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_4
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   muxes_0 : MUX21_4 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   muxes_1 : MUX21_3 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   muxes_2 : MUX21_2 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   muxes_3 : MUX21_1 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_STRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity RCA_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_3;

architecture SYN_STRUCTURAL of RCA_N4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity RCA_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_2;

architecture SYN_STRUCTURAL of RCA_N4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity RCA_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_1;

architecture SYN_STRUCTURAL of RCA_N4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity CS_BLOCK_carry_step4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CS_BLOCK_carry_step4_1;

architecture SYN_STRUCT of CS_BLOCK_carry_step4_1 is

   component MUX21_GENERIC_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_0_3_port, sum_0_2_port, 
      sum_0_1_port, sum_0_0_port, sum_1_3_port, sum_1_2_port, sum_1_1_port, 
      sum_1_0_port, net45183, net45184 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   rca_0 : RCA_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => sum_0_3_port, 
                           S(2) => sum_0_2_port, S(1) => sum_0_1_port, S(0) => 
                           sum_0_0_port, Co => net45184);
   rca_1 : RCA_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => sum_1_3_port, 
                           S(2) => sum_1_2_port, S(1) => sum_1_1_port, S(0) => 
                           sum_1_0_port, Co => net45183);
   mux : MUX21_GENERIC_N4_1 port map( A(3) => sum_1_3_port, A(2) => 
                           sum_1_2_port, A(1) => sum_1_1_port, A(0) => 
                           sum_1_0_port, B(3) => sum_0_3_port, B(2) => 
                           sum_0_2_port, B(1) => sum_0_1_port, B(0) => 
                           sum_0_0_port, SEL => ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity pg_block_3 is

   port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);

end pg_block_3;

architecture SYN_bhv of pg_block_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => Pik, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity pg_block_2 is

   port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);

end pg_block_2;

architecture SYN_bhv of pg_block_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => Pik, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity pg_block_1 is

   port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);

end pg_block_1;

architecture SYN_bhv of pg_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => Pik, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity g_block_2 is

   port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);

end g_block_2;

architecture SYN_bhv of g_block_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gk_1j, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity g_block_1 is

   port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);

end g_block_1;

architecture SYN_bhv of g_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gk_1j, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity mux_5_to_1_generic_N8_1 is

   port( A, B, C, D, E : in std_logic_vector (7 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  U : out std_logic_vector (7 downto 0)
         );

end mux_5_to_1_generic_N8_1;

architecture SYN_bhv of mux_5_to_1_generic_N8_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
      n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52 : std_logic;

begin
   
   U2 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => U(7));
   U3 : AOI222_X1 port map( A1 => C(7), A2 => n29, B1 => E(7), B2 => n30, C1 =>
                           A(7), C2 => n31, ZN => n28);
   U4 : AOI22_X1 port map( A1 => D(7), A2 => n32, B1 => B(7), B2 => n33, ZN => 
                           n27);
   U5 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => U(6));
   U6 : AOI222_X1 port map( A1 => C(6), A2 => n29, B1 => E(6), B2 => n30, C1 =>
                           A(6), C2 => n31, ZN => n35);
   U7 : AOI22_X1 port map( A1 => D(6), A2 => n32, B1 => B(6), B2 => n33, ZN => 
                           n34);
   U8 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => U(5));
   U9 : AOI222_X1 port map( A1 => C(5), A2 => n29, B1 => E(5), B2 => n30, C1 =>
                           A(5), C2 => n31, ZN => n37);
   U10 : AOI22_X1 port map( A1 => D(5), A2 => n32, B1 => B(5), B2 => n33, ZN =>
                           n36);
   U11 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => U(4));
   U12 : AOI222_X1 port map( A1 => C(4), A2 => n29, B1 => E(4), B2 => n30, C1 
                           => A(4), C2 => n31, ZN => n39);
   U13 : AOI22_X1 port map( A1 => D(4), A2 => n32, B1 => B(4), B2 => n33, ZN =>
                           n38);
   U14 : NAND2_X1 port map( A1 => n40, A2 => n41, ZN => U(3));
   U15 : AOI222_X1 port map( A1 => C(3), A2 => n29, B1 => E(3), B2 => n30, C1 
                           => A(3), C2 => n31, ZN => n41);
   U16 : AOI22_X1 port map( A1 => D(3), A2 => n32, B1 => B(3), B2 => n33, ZN =>
                           n40);
   U17 : NAND2_X1 port map( A1 => n42, A2 => n43, ZN => U(2));
   U18 : AOI222_X1 port map( A1 => C(2), A2 => n29, B1 => E(2), B2 => n30, C1 
                           => A(2), C2 => n31, ZN => n43);
   U19 : AOI22_X1 port map( A1 => D(2), A2 => n32, B1 => B(2), B2 => n33, ZN =>
                           n42);
   U20 : NAND2_X1 port map( A1 => n44, A2 => n45, ZN => U(1));
   U21 : AOI222_X1 port map( A1 => C(1), A2 => n29, B1 => E(1), B2 => n30, C1 
                           => A(1), C2 => n31, ZN => n45);
   U22 : AOI22_X1 port map( A1 => D(1), A2 => n32, B1 => B(1), B2 => n33, ZN =>
                           n44);
   U23 : NAND2_X1 port map( A1 => n46, A2 => n47, ZN => U(0));
   U24 : AOI222_X1 port map( A1 => C(0), A2 => n29, B1 => E(0), B2 => n30, C1 
                           => A(0), C2 => n31, ZN => n47);
   U25 : AND2_X1 port map( A1 => n48, A2 => n49, ZN => n31);
   U26 : XOR2_X1 port map( A => n50, B => SEL(2), Z => n48);
   U27 : NOR2_X1 port map( A1 => n51, A2 => n52, ZN => n30);
   U28 : INV_X1 port map( A => n49, ZN => n52);
   U29 : NOR2_X1 port map( A1 => n51, A2 => n49, ZN => n29);
   U30 : NAND2_X1 port map( A1 => SEL(2), A2 => n50, ZN => n51);
   U31 : AOI22_X1 port map( A1 => D(0), A2 => n32, B1 => B(0), B2 => n33, ZN =>
                           n46);
   U32 : NOR2_X1 port map( A1 => n49, A2 => SEL(2), ZN => n33);
   U33 : XNOR2_X1 port map( A => SEL(0), B => SEL(1), ZN => n49);
   U34 : NOR2_X1 port map( A1 => n50, A2 => SEL(2), ZN => n32);
   U35 : NAND2_X1 port map( A1 => SEL(1), A2 => SEL(0), ZN => n50);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH1 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity IV_0 is

   port( A : in std_logic;  Y : out std_logic);

end IV_0;

architecture SYN_BEHAVIORAL of IV_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_0 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_0;

architecture SYN_STRUCTURAL of MUX21_0 is

   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_0 port map( A => S, Y => SB);
   UND1 : ND2_0 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_23 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_22 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity MUX21_GENERIC_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_0;

architecture SYN_STRUCT of MUX21_GENERIC_N4_0 is

   component MUX21_5
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_6
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_7
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   muxes_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   muxes_1 : MUX21_7 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   muxes_2 : MUX21_6 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   muxes_3 : MUX21_5 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_STRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity RCA_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_0;

architecture SYN_STRUCTURAL of RCA_N4_0 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity CS_BLOCK_carry_step4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CS_BLOCK_carry_step4_0;

architecture SYN_STRUCT of CS_BLOCK_carry_step4_0 is

   component MUX21_GENERIC_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_0_3_port, sum_0_2_port, 
      sum_0_1_port, sum_0_0_port, sum_1_3_port, sum_1_2_port, sum_1_1_port, 
      sum_1_0_port, net45183, net45184 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   rca_0 : RCA_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => sum_0_3_port, 
                           S(2) => sum_0_2_port, S(1) => sum_0_1_port, S(0) => 
                           sum_0_0_port, Co => net45184);
   rca_1 : RCA_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => sum_1_3_port, 
                           S(2) => sum_1_2_port, S(1) => sum_1_1_port, S(0) => 
                           sum_1_0_port, Co => net45183);
   mux : MUX21_GENERIC_N4_0 port map( A(3) => sum_1_3_port, A(2) => 
                           sum_1_2_port, A(1) => sum_1_1_port, A(0) => 
                           sum_1_0_port, B(3) => sum_0_3_port, B(2) => 
                           sum_0_2_port, B(1) => sum_0_1_port, B(0) => 
                           sum_0_0_port, SEL => ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity pg_block_0 is

   port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);

end pg_block_0;

architecture SYN_bhv of pg_block_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pk_1j, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gk_1j, B2 => Pik, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity g_block_0 is

   port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);

end g_block_0;

architecture SYN_bhv of g_block_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gk_1j, A => Gik, ZN => n2);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity pg_network_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  P, G : 
         out std_logic_vector (7 downto 0));

end pg_network_N8;

architecture SYN_bhv of pg_network_N8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B(7), B => A(7), Z => P(7));
   U2 : XOR2_X1 port map( A => B(6), B => A(6), Z => P(6));
   U3 : XOR2_X1 port map( A => B(5), B => A(5), Z => P(5));
   U4 : XOR2_X1 port map( A => B(4), B => A(4), Z => P(4));
   U5 : XOR2_X1 port map( A => B(3), B => A(3), Z => P(3));
   U6 : XOR2_X1 port map( A => B(2), B => A(2), Z => P(2));
   U7 : XOR2_X1 port map( A => B(1), B => A(1), Z => P(1));
   U8 : XNOR2_X1 port map( A => n4, B => A(0), ZN => P(0));
   U9 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => G(7));
   U10 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => G(6));
   U11 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => G(5));
   U12 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => G(4));
   U13 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => G(3));
   U14 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => G(2));
   U15 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => G(1));
   U16 : OAI21_X1 port map( B1 => n4, B2 => n5, A => n6, ZN => G(0));
   U17 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n6);
   U18 : INV_X1 port map( A => A(0), ZN => n5);
   U19 : INV_X1 port map( A => B(0), ZN => n4);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity carry_select_N8_carry_step4_K2 is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic_vector (1 
         downto 0);  Sum : out std_logic_vector (7 downto 0));

end carry_select_N8_carry_step4_K2;

architecture SYN_STRUCT of carry_select_N8_carry_step4_K2 is

   component CS_BLOCK_carry_step4_1
      port( A, B : in std_logic_vector (3 downto 0);  ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CS_BLOCK_carry_step4_0
      port( A, B : in std_logic_vector (3 downto 0);  ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   cs_blocks_1 : CS_BLOCK_carry_step4_0 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), ci => Ci(0), S(3) 
                           => Sum(3), S(2) => Sum(2), S(1) => Sum(1), S(0) => 
                           Sum(0));
   cs_blocks_2 : CS_BLOCK_carry_step4_1 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), ci => Ci(1), S(3) 
                           => Sum(7), S(2) => Sum(6), S(1) => Sum(5), S(0) => 
                           Sum(4));

end SYN_STRUCT;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity sparse_tree_N8_carry_step4_K2 is

   port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  Cout : 
         out std_logic_vector (1 downto 0));

end sparse_tree_N8_carry_step4_K2;

architecture SYN_struct of sparse_tree_N8_carry_step4_K2 is

   component g_block_1
      port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_1
      port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component g_block_2
      port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_2
      port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component pg_block_3
      port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component pg_block_0
      port( Pik, Gik, Pk_1j, Gk_1j : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component g_block_0
      port( Pik, Gik, Gk_1j : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_network_N8
      port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  P, G
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal g_matrix_2_7_port, g_matrix_2_3_port, g_matrix_1_7_port, 
      g_matrix_1_5_port, g_matrix_1_3_port, g_matrix_1_1_port, 
      g_matrix_1_0_port, g_matrix_0_7_port, g_matrix_0_6_port, 
      g_matrix_0_5_port, g_matrix_0_4_port, g_matrix_0_3_port, 
      g_matrix_0_2_port, g_matrix_0_1_port, p_matrix_2_7_port, 
      p_matrix_1_7_port, p_matrix_1_5_port, p_matrix_1_3_port, 
      p_matrix_0_7_port, p_matrix_0_6_port, p_matrix_0_5_port, 
      p_matrix_0_4_port, p_matrix_0_3_port, p_matrix_0_2_port, 
      p_matrix_0_1_port, net45181, net45182 : std_logic;

begin
   
   Cout(0) <= '0';
   Cout(1) <= '0';
   row_0 : pg_network_N8 port map( A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(7) => B(7), B(6) => B(6), B(5)
                           => B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), 
                           B(1) => B(1), B(0) => B(0), Cin => Cin, P(7) => 
                           p_matrix_0_7_port, P(6) => p_matrix_0_6_port, P(5) 
                           => p_matrix_0_5_port, P(4) => p_matrix_0_4_port, 
                           P(3) => p_matrix_0_3_port, P(2) => p_matrix_0_2_port
                           , P(1) => p_matrix_0_1_port, P(0) => net45182, G(7) 
                           => g_matrix_0_7_port, G(6) => g_matrix_0_6_port, 
                           G(5) => g_matrix_0_5_port, G(4) => g_matrix_0_4_port
                           , G(3) => g_matrix_0_3_port, G(2) => 
                           g_matrix_0_2_port, G(1) => g_matrix_0_1_port, G(0) 
                           => g_matrix_1_0_port);
   g_blocks_1_1_1 : g_block_0 port map( Pik => p_matrix_0_1_port, Gik => 
                           g_matrix_0_1_port, Gk_1j => g_matrix_1_0_port, Gij 
                           => g_matrix_1_1_port);
   pg_blocks_1_1_3 : pg_block_0 port map( Pik => p_matrix_0_3_port, Gik => 
                           g_matrix_0_3_port, Pk_1j => p_matrix_0_2_port, Gk_1j
                           => g_matrix_0_2_port, Pij => p_matrix_1_3_port, Gij 
                           => g_matrix_1_3_port);
   pg_blocks_1_1_5 : pg_block_3 port map( Pik => p_matrix_0_5_port, Gik => 
                           g_matrix_0_5_port, Pk_1j => p_matrix_0_4_port, Gk_1j
                           => g_matrix_0_4_port, Pij => p_matrix_1_5_port, Gij 
                           => g_matrix_1_5_port);
   pg_blocks_1_1_7 : pg_block_2 port map( Pik => p_matrix_0_7_port, Gik => 
                           g_matrix_0_7_port, Pk_1j => p_matrix_0_6_port, Gk_1j
                           => g_matrix_0_6_port, Pij => p_matrix_1_7_port, Gij 
                           => g_matrix_1_7_port);
   g_blocks_1_2_3 : g_block_2 port map( Pik => p_matrix_1_3_port, Gik => 
                           g_matrix_1_3_port, Gk_1j => g_matrix_1_1_port, Gij 
                           => g_matrix_2_3_port);
   pg_blocks_1_2_7 : pg_block_1 port map( Pik => p_matrix_1_7_port, Gik => 
                           g_matrix_1_7_port, Pk_1j => p_matrix_1_5_port, Gk_1j
                           => g_matrix_1_5_port, Pij => p_matrix_2_7_port, Gij 
                           => g_matrix_2_7_port);
   g_blocks_1_3_7 : g_block_1 port map( Pik => p_matrix_2_7_port, Gik => 
                           g_matrix_2_7_port, Gk_1j => g_matrix_2_3_port, Gij 
                           => net45181);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity p4_adder_N8_carry_step4_K2 is

   port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  Cout : 
         out std_logic;  S : out std_logic_vector (7 downto 0));

end p4_adder_N8_carry_step4_K2;

architecture SYN_struct of p4_adder_N8_carry_step4_K2 is

   component carry_select_N8_carry_step4_K2
      port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic_vector 
            (1 downto 0);  Sum : out std_logic_vector (7 downto 0));
   end component;
   
   component sparse_tree_N8_carry_step4_K2
      port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  Cout
            : out std_logic_vector (1 downto 0));
   end component;
   
   signal carries_0_port, net46759, net46760 : std_logic;

begin
   
   carry_generator : sparse_tree_N8_carry_step4_K2 port map( A(7) => A(7), A(6)
                           => A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), 
                           A(2) => A(2), A(1) => A(1), A(0) => A(0), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Cin => Cin, Cout(1) => net46759, Cout(0) => net46760
                           );
   sum_generator : carry_select_N8_carry_step4_K2 port map( A(7) => A(7), A(6) 
                           => A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), 
                           A(2) => A(2), A(1) => A(1), A(0) => A(0), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Ci(1) => carries_0_port, Ci(0) => Cin, Sum(7) => 
                           S(7), Sum(6) => S(6), Sum(5) => S(5), Sum(4) => S(4)
                           , Sum(3) => S(3), Sum(2) => S(2), Sum(1) => S(1), 
                           Sum(0) => S(0));
   carries_0_port <= '0';
   Cout <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity mux_5_to_1_generic_N8_0 is

   port( A, B, C, D, E : in std_logic_vector (7 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  U : out std_logic_vector (7 downto 0)
         );

end mux_5_to_1_generic_N8_0;

architecture SYN_bhv of mux_5_to_1_generic_N8_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
      n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52 : std_logic;

begin
   
   U2 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => U(7));
   U3 : AOI222_X1 port map( A1 => C(7), A2 => n29, B1 => E(7), B2 => n30, C1 =>
                           A(7), C2 => n31, ZN => n28);
   U4 : AOI22_X1 port map( A1 => D(7), A2 => n32, B1 => B(7), B2 => n33, ZN => 
                           n27);
   U5 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => U(6));
   U6 : AOI222_X1 port map( A1 => C(6), A2 => n29, B1 => E(6), B2 => n30, C1 =>
                           A(6), C2 => n31, ZN => n35);
   U7 : AOI22_X1 port map( A1 => D(6), A2 => n32, B1 => B(6), B2 => n33, ZN => 
                           n34);
   U8 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => U(5));
   U9 : AOI222_X1 port map( A1 => C(5), A2 => n29, B1 => E(5), B2 => n30, C1 =>
                           A(5), C2 => n31, ZN => n37);
   U10 : AOI22_X1 port map( A1 => D(5), A2 => n32, B1 => B(5), B2 => n33, ZN =>
                           n36);
   U11 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => U(4));
   U12 : AOI222_X1 port map( A1 => C(4), A2 => n29, B1 => E(4), B2 => n30, C1 
                           => A(4), C2 => n31, ZN => n39);
   U13 : AOI22_X1 port map( A1 => D(4), A2 => n32, B1 => B(4), B2 => n33, ZN =>
                           n38);
   U14 : NAND2_X1 port map( A1 => n40, A2 => n41, ZN => U(3));
   U15 : AOI222_X1 port map( A1 => C(3), A2 => n29, B1 => E(3), B2 => n30, C1 
                           => A(3), C2 => n31, ZN => n41);
   U16 : AOI22_X1 port map( A1 => D(3), A2 => n32, B1 => B(3), B2 => n33, ZN =>
                           n40);
   U17 : NAND2_X1 port map( A1 => n42, A2 => n43, ZN => U(2));
   U18 : AOI222_X1 port map( A1 => C(2), A2 => n29, B1 => E(2), B2 => n30, C1 
                           => A(2), C2 => n31, ZN => n43);
   U19 : AOI22_X1 port map( A1 => D(2), A2 => n32, B1 => B(2), B2 => n33, ZN =>
                           n42);
   U20 : NAND2_X1 port map( A1 => n44, A2 => n45, ZN => U(1));
   U21 : AOI222_X1 port map( A1 => C(1), A2 => n29, B1 => E(1), B2 => n30, C1 
                           => A(1), C2 => n31, ZN => n45);
   U22 : AOI22_X1 port map( A1 => D(1), A2 => n32, B1 => B(1), B2 => n33, ZN =>
                           n44);
   U23 : NAND2_X1 port map( A1 => n46, A2 => n47, ZN => U(0));
   U24 : AOI222_X1 port map( A1 => C(0), A2 => n29, B1 => E(0), B2 => n30, C1 
                           => A(0), C2 => n31, ZN => n47);
   U25 : AND2_X1 port map( A1 => n48, A2 => n49, ZN => n31);
   U26 : XOR2_X1 port map( A => n50, B => SEL(2), Z => n48);
   U27 : NOR2_X1 port map( A1 => n51, A2 => n52, ZN => n30);
   U28 : INV_X1 port map( A => n49, ZN => n52);
   U29 : NOR2_X1 port map( A1 => n51, A2 => n49, ZN => n29);
   U30 : NAND2_X1 port map( A1 => SEL(2), A2 => n50, ZN => n51);
   U31 : AOI22_X1 port map( A1 => D(0), A2 => n32, B1 => B(0), B2 => n33, ZN =>
                           n46);
   U32 : NOR2_X1 port map( A1 => n49, A2 => SEL(2), ZN => n33);
   U33 : XNOR2_X1 port map( A => SEL(0), B => SEL(1), ZN => n49);
   U34 : NOR2_X1 port map( A1 => n50, A2 => SEL(2), ZN => n32);
   U35 : NAND2_X1 port map( A1 => SEL(1), A2 => SEL(0), ZN => n50);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity booth_encoder_enc6 is

   port( B : in std_logic_vector (7 downto 0);  E : out std_logic_vector (5 
         downto 0));

end booth_encoder_enc6;

architecture SYN_bhv of booth_encoder_enc6 is

signal X_Logic0_port : std_logic;

begin
   E <= ( B(3), B(2), B(1), B(1), B(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity neg_data_N8 is

   port( A : in std_logic_vector (7 downto 0);  neg_A : out std_logic_vector (7
         downto 0));

end neg_data_N8;

architecture SYN_bhv of neg_data_N8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal neg_A_7_port, neg_A_6_port, neg_A_5_port, neg_A_4_port, neg_A_3_port,
      neg_A_2_port, neg_A_1_port, n8, n9, n10, n11, n12, n13, n14, n15 : 
      std_logic;

begin
   neg_A <= ( neg_A_7_port, neg_A_6_port, neg_A_5_port, neg_A_4_port, 
      neg_A_3_port, neg_A_2_port, neg_A_1_port, A(0) );
   
   U2 : XOR2_X1 port map( A => n8, B => A(7), Z => neg_A_7_port);
   U3 : OR2_X1 port map( A1 => n9, A2 => A(6), ZN => n8);
   U4 : XOR2_X1 port map( A => n9, B => A(6), Z => neg_A_6_port);
   U5 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n9);
   U6 : XOR2_X1 port map( A => n10, B => n11, Z => neg_A_5_port);
   U7 : INV_X1 port map( A => A(5), ZN => n11);
   U8 : NOR3_X1 port map( A1 => A(3), A2 => A(4), A3 => n12, ZN => n10);
   U9 : XNOR2_X1 port map( A => A(4), B => n13, ZN => neg_A_4_port);
   U10 : NOR2_X1 port map( A1 => A(3), A2 => n12, ZN => n13);
   U11 : XOR2_X1 port map( A => n12, B => A(3), Z => neg_A_3_port);
   U12 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => n12);
   U13 : XOR2_X1 port map( A => n14, B => n15, Z => neg_A_2_port);
   U14 : INV_X1 port map( A => A(2), ZN => n15);
   U15 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n14);
   U16 : XOR2_X1 port map( A => A(1), B => A(0), Z => neg_A_1_port);

end SYN_bhv;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_multiplier.all;

entity booth_multiplier is

   port( A, B : in std_logic_vector (3 downto 0);  P : out std_logic_vector (7 
         downto 0));

end booth_multiplier;

architecture SYN_struct of booth_multiplier is

   component p4_adder_N8_carry_step4_K2
      port( A, B : in std_logic_vector (7 downto 0);  Cin : in std_logic;  Cout
            : out std_logic;  S : out std_logic_vector (7 downto 0));
   end component;
   
   component mux_5_to_1_generic_N8_1
      port( A, B, C, D, E : in std_logic_vector (7 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  U : out std_logic_vector (7 downto 
            0));
   end component;
   
   component mux_5_to_1_generic_N8_0
      port( A, B, C, D, E : in std_logic_vector (7 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  U : out std_logic_vector (7 downto 
            0));
   end component;
   
   component booth_encoder_enc6
      port( B : in std_logic_vector (7 downto 0);  E : out std_logic_vector (5 
            downto 0));
   end component;
   
   component neg_data_N8
      port( A : in std_logic_vector (7 downto 0);  neg_A : out std_logic_vector
            (7 downto 0));
   end component;
   
   signal X_Logic0_port, big_A_neg_7_port, big_A_neg_6_port, big_A_neg_5_port, 
      big_A_neg_4_port, big_A_neg_3_port, big_A_neg_2_port, big_A_neg_1_port, 
      big_A_neg_0_port, enc_out_5_port, enc_out_4_port, enc_out_3_port, 
      enc_out_2_port, enc_out_1_port, enc_out_0_port, out_mux_1_7_port, 
      out_mux_1_6_port, out_mux_1_5_port, out_mux_1_4_port, out_mux_1_3_port, 
      out_mux_1_2_port, out_mux_1_1_port, out_mux_1_0_port, out_mux_0_7_port, 
      out_mux_0_6_port, out_mux_0_5_port, out_mux_0_4_port, out_mux_0_3_port, 
      out_mux_0_2_port, out_mux_0_1_port, out_mux_0_0_port, net46757, net46758 
      : std_logic;

begin
   
   X_Logic0_port <= '0';
   two_compl : neg_data_N8 port map( A(7) => A(3), A(6) => A(3), A(5) => A(3), 
                           A(4) => A(3), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), neg_A(7) => big_A_neg_7_port, 
                           neg_A(6) => big_A_neg_6_port, neg_A(5) => 
                           big_A_neg_5_port, neg_A(4) => big_A_neg_4_port, 
                           neg_A(3) => big_A_neg_3_port, neg_A(2) => 
                           big_A_neg_2_port, neg_A(1) => big_A_neg_1_port, 
                           neg_A(0) => big_A_neg_0_port);
   encoder : booth_encoder_enc6 port map( B(7) => B(3), B(6) => B(3), B(5) => 
                           B(3), B(4) => B(3), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), E(5) => enc_out_5_port, E(4) 
                           => enc_out_4_port, E(3) => enc_out_3_port, E(2) => 
                           enc_out_2_port, E(1) => enc_out_1_port, E(0) => 
                           net46758);
   mux1_0 : mux_5_to_1_generic_N8_0 port map( A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(7) => A(3), B(6) => A(3), B(5) => 
                           A(3), B(4) => A(3), B(3) => A(3), B(2) => A(2), B(1)
                           => A(1), B(0) => A(0), C(7) => big_A_neg_7_port, 
                           C(6) => big_A_neg_6_port, C(5) => big_A_neg_5_port, 
                           C(4) => big_A_neg_4_port, C(3) => big_A_neg_3_port, 
                           C(2) => big_A_neg_2_port, C(1) => big_A_neg_1_port, 
                           C(0) => big_A_neg_0_port, D(7) => A(3), D(6) => A(3)
                           , D(5) => A(3), D(4) => A(3), D(3) => A(2), D(2) => 
                           A(1), D(1) => A(0), D(0) => X_Logic0_port, E(7) => 
                           big_A_neg_6_port, E(6) => big_A_neg_5_port, E(5) => 
                           big_A_neg_4_port, E(4) => big_A_neg_3_port, E(3) => 
                           big_A_neg_2_port, E(2) => big_A_neg_1_port, E(1) => 
                           big_A_neg_0_port, E(0) => X_Logic0_port, SEL(2) => 
                           enc_out_2_port, SEL(1) => enc_out_1_port, SEL(0) => 
                           enc_out_0_port, U(7) => out_mux_0_7_port, U(6) => 
                           out_mux_0_6_port, U(5) => out_mux_0_5_port, U(4) => 
                           out_mux_0_4_port, U(3) => out_mux_0_3_port, U(2) => 
                           out_mux_0_2_port, U(1) => out_mux_0_1_port, U(0) => 
                           out_mux_0_0_port);
   mux_1 : mux_5_to_1_generic_N8_1 port map( A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(7) => A(3), B(6) => A(3), B(5) => 
                           A(3), B(4) => A(2), B(3) => A(1), B(2) => A(0), B(1)
                           => X_Logic0_port, B(0) => X_Logic0_port, C(7) => 
                           big_A_neg_5_port, C(6) => big_A_neg_4_port, C(5) => 
                           big_A_neg_3_port, C(4) => big_A_neg_2_port, C(3) => 
                           big_A_neg_1_port, C(2) => big_A_neg_0_port, C(1) => 
                           X_Logic0_port, C(0) => X_Logic0_port, D(7) => A(3), 
                           D(6) => A(3), D(5) => A(2), D(4) => A(1), D(3) => 
                           A(0), D(2) => X_Logic0_port, D(1) => X_Logic0_port, 
                           D(0) => X_Logic0_port, E(7) => big_A_neg_4_port, 
                           E(6) => big_A_neg_3_port, E(5) => big_A_neg_2_port, 
                           E(4) => big_A_neg_1_port, E(3) => big_A_neg_0_port, 
                           E(2) => X_Logic0_port, E(1) => X_Logic0_port, E(0) 
                           => X_Logic0_port, SEL(2) => enc_out_5_port, SEL(1) 
                           => enc_out_4_port, SEL(0) => enc_out_3_port, U(7) =>
                           out_mux_1_7_port, U(6) => out_mux_1_6_port, U(5) => 
                           out_mux_1_5_port, U(4) => out_mux_1_4_port, U(3) => 
                           out_mux_1_3_port, U(2) => out_mux_1_2_port, U(1) => 
                           out_mux_1_1_port, U(0) => out_mux_1_0_port);
   add_1 : p4_adder_N8_carry_step4_K2 port map( A(7) => out_mux_0_7_port, A(6) 
                           => out_mux_0_6_port, A(5) => out_mux_0_5_port, A(4) 
                           => out_mux_0_4_port, A(3) => out_mux_0_3_port, A(2) 
                           => out_mux_0_2_port, A(1) => out_mux_0_1_port, A(0) 
                           => out_mux_0_0_port, B(7) => out_mux_1_7_port, B(6) 
                           => out_mux_1_6_port, B(5) => out_mux_1_5_port, B(4) 
                           => out_mux_1_4_port, B(3) => out_mux_1_3_port, B(2) 
                           => out_mux_1_2_port, B(1) => out_mux_1_1_port, B(0) 
                           => out_mux_1_0_port, Cin => X_Logic0_port, Cout => 
                           net46757, S(7) => P(7), S(6) => P(6), S(5) => P(5), 
                           S(4) => P(4), S(3) => P(3), S(2) => P(2), S(1) => 
                           P(1), S(0) => P(0));
   enc_out_0_port <= '0';

end SYN_struct;

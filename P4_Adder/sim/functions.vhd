library IEEE;
use IEEE.STD_LOGIC_1164.all;

package functions is

	function log2 (n:integer) return integer;
	function div (n:integer; m:integer) return integer;

end functions;

package body functions is
	
	function log2 (n:integer) return integer is
	
	variable i : integer := 0;
	variable j : integer := 0;
	begin

		while (j /= 1) loop
			
			if (n > 2**(i)) then
				i := i+1;  
			else 
				j := 1;
				
			end if;
			
		end loop; 
	
	return i;
	
	end log2;


	function div (n:integer; m:integer) return integer is
	begin

		if (n mod m) = 0 then

			return n/m;
		else

			return (n/m) + 1;
		end if;
	
	end div;
	
end functions;
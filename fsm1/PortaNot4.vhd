library ieee;
use ieee.std_logic_1164.all;

entity PortaNot4 is
	port (x: in std_logic;
			f: out std_logic);
end PortaNot4;

architecture comportamento of PortaNot4 is
begin
   process (x)
		begin
		f <= not x;
   end process;
end comportamento;
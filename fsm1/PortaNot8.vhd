library ieee;
use ieee.std_logic_1164.all;

entity PortaNot8 is
	port (x: in std_logic;
			f: out std_logic);
end PortaNot8;

architecture comportamento of PortaNot8 is
begin
   process (x)
		begin
		f <= not x;
   end process;
end comportamento;
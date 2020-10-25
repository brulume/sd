library ieee;
use ieee.std_logic_1164.all;

entity PortaNot is
	port (x: in std_logic;
			f: out std_logic);
end PortaNot;

architecture comportamento of PortaNot is
begin
   process (x)
		begin
		f <= not x;
   end process;
end comportamento;
library ieee;
use ieee.std_logic_1164.all;

entity PortaNot6 is
	port (x: in std_logic;
			f: out std_logic);
end PortaNot6;

architecture comportamento of PortaNot6 is
begin
   process (x)
		begin
		f <= not x;
   end process;
end comportamento;
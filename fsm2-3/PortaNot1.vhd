library ieee;
use ieee.std_logic_1164.all;

entity PortaNot1 is
	port (x: in std_logic;
		f: out std_logic);
end PortaNot1;

architecture comportamento of PortaNot1 is
begin
	process (x)
	begin
		f <= not x;
	end process;
end comportamento;
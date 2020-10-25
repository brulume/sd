library ieee;
use ieee.std_logic_1164.all;

entity PortaOr3 is
	port (x, y: in std_logic;
		F: out std_logic
	);
end PortaOr3;

architecture comportamento of PortaOr3 is
begin
	process (x, y)
	begin
		F <= x or y;
	end process;
end comportamento;
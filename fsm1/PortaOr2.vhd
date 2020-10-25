library ieee;
use ieee.std_logic_1164.all;

entity PortaOr2 is
	port (x, y: in std_logic;
		F, G: out std_logic
	);
end PortaOr2;

architecture comportamento of PortaOr2 is
begin
	process (x, y)
	begin
		F <= x or y;
		G <= x or y;
	end process;
end comportamento;
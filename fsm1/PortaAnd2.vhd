library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd2 is
	port (x, y, z, w: in std_logic;
		F: out std_logic
	);
end PortaAnd2;

architecture comportamento of PortaAnd2 is
begin
	process (x, y, z, w)
	begin
		F <= x and y and z and w;
	end process;
end comportamento;
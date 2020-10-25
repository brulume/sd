library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd1 is
	port (x, y, z: in std_logic;
		F: out std_logic
	);
end PortaAnd1;

architecture comportamento of PortaAnd1 is
begin
	process (x, y, z)
	begin
		F <= x and y and z;
	end process;
end comportamento;
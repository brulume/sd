library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd1 is
    port (x, y: in std_logic;
		F: out std_logic
    );
end PortaAnd1;

architecture comportamento of PortaAnd1 is
	begin
   process (x, y)
		begin
		F <= x and y;
   end process;
end comportamento;
library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd2 is
    port (x, y: in std_logic;
		F: out std_logic
    );
end PortaAnd2;

architecture comportamento of PortaAnd2 is
	begin
   process (x, y)
		begin
		F <= x and y;
   end process;
end comportamento;
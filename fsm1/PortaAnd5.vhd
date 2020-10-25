library ieee;
use ieee.std_logic_1164.all;

entity PortaAnd5 is
    port (x, y: in std_logic;
		F: out std_logic
    );
end PortaAnd5;

architecture comportamento of PortaAnd5 is
	begin
   process (x, y)
		begin
		F <= x and y;
   end process;
end comportamento;
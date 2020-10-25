library ieee;
use ieee.std_logic_1164.all;

-- entidade principal
entity FSM_4 is
	port (a, b: in std_logic;
		saida_i1, saida_i0: out std_logic
	);
end FSM_4;

-- arquitetura da entidade principal
architecture Circuito of FSM_4 is
	component PortaNot
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaOr2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	signal n1, n2: std_logic;
	
	begin
		-- saida i1
		PortaNot_1: PortaNot port map (x=>a, F=>n1);
		PortaNot_2: PortaNot port map (x=>b, F=>n2);
		PortaAnd_1: PortaAnd2 port map (x=>n1, y=>n2, F=>saida_i1);

		-- saida i0
		PortaOr_1: PortaOr2 port map (x=>a, y=>b, F=>saida_i0);

end Circuito;
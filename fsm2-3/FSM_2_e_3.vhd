library ieee;
use ieee.std_logic_1164.all;

-- entidade principal
entity FSM_2_e_3 is
	port (a, b, c: in std_logic;
		saida_i3, saida_i2, saida_i1, saida_i0: out std_logic
	);
end FSM_2_e_3;

-- arquitetura da entidade principal
architecture Circuito of FSM_2_e_3 is
	component PortaNot1
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaNot2
		port (x: in std_logic;
			F: out std_logic);
	end component;
	
	component PortaNot3
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaNot4
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaNot5
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaNot6
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaNot7
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd1
		port (x, y, z: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd3
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaOr1
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaOr2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaOr3
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	signal n1, n2, n3, n4, n5, n6, n7, n8, n9: std_logic;
	
	begin
		-- saida i3
		PortOr1_1: PortaOr1 port map (x=>a, y=>b, F=>saida_i3);

		-- saida i2
		PortaNot1_1: PortaNot1 port map (x=>a, F=>n1);
		PortaNot2_1: PortaNot2 port map (x=>b, F=>n2);
		PortaNot3_1: PortaNot3 port map (x=>c, F=>n3);
		PortaAnd1_1: PortaAnd1 port map (x=>n1, y=>n2, z=>n3, F=>saida_i2);

		-- saida i1
		PortaNot4_1: PortaNot4 port map (x=>a, F=>n4);
		PortaNot5_1: PortaNot5 port map (x=>b, F=>n5);
		PortaAnd2_1: PortaAnd2 port map (x=>n4, y=>n5, F=>n6);
		PortaOr2_1: PortaOr2 port map (x=>n6, y=>c, F=>saida_i1);

		-- saida i0
		PortaNot6_1: PortaNot6 port map (x=>a, F=>n7);
		PortaNot7_1: PortaNot7 port map (x=>b, F=>n8);
		PortaAnd3_1: PortaAnd3 port map (x=>n7, y=>n8, F=>n9);
		PortaOr3_1: PortaOr3 port map (x=>n9, y=>b, F=>saida_i0);

end Circuito;
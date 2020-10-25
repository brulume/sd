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
	component PortaNot
		port (x: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	component PortaAnd3
		port (x, y, z: in std_logic;
			F: out std_logic);
	end component;

	component PortaOr2
		port (x, y: in std_logic;
			F: out std_logic);
	end component;

	signal n1, n2, n3, n4, n5, n6, n7, n8, n9: std_logic;
	
	begin
		-- saida i3
		PortOr_1: PortaOr2 port map (x=>a, y=>b, F=>saida_i3);

		-- saida i2
		PortaNot_1: PortaNot port map (x=>a, F=>n1);
		PortaNot_2: PortaNot port map (x=>b, F=>n2);
		PortaNot_3: PortaNot port map (x=>c, F=>n3);
		PortaAnd_1: PortaAnd3 port map (x=>n1, y=>n2, z=>n3, F=>saida_i2);

		-- saida i1
		PortaNot_4: PortaNot port map (x=>a, F=>n4);
		PortaNot_5: PortaNot port map (x=>b, F=>n5);
		PortaAnd_2: PortaAnd2 port map (x=>n4, y=>n5, F=>n6);
		PortaOr_2: PortaOr2 port map (x=>n6, y=>c, F=>saida_i1);

		-- saida i0
		PortaNot_6: PortaNot port map (x=>a, F=>n7);
		PortaNot_7: PortaNot port map (x=>b, F=>n8);
		PortaAnd_3: PortaAnd2 port map (x=>n7, y=>n8, F=>n9);
		PortaOr_3: PortaOr2 port map (x=>n9, y=>b, F=>saida_i0);

end Circuito;
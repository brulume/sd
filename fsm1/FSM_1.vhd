library ieee;
use ieee.std_logic_1164.all;

-- entidade principal
entity FSM_1 is
    port (a, b, c, d: in std_logic;
		L, saida_i3, saida_i2, saida_i1, saida_i0: out std_logic
    );
end FSM_1;

-- arquitetura da entidade principal
architecture Circuito of FSM_1 is
    component PortaNot
		port (x: in std_logic;
			F: out std_logic);
    end component;

	 component PortaAnd2
		port (x, y: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd4
		port (x, y, z, w: in std_logic;
			F: out std_logic);
    end component;

	 component PortaOr2
		port (x, y: in std_logic;
			F, G: out std_logic);
    end component;
	 
	 signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13: std_logic;
	 
    begin
		-- saida L (led de falha)
		PortaAnd2_1: PortaAnd2 port map (x=>c, y=>d, F=>n1);
		PortaNot_1: PortaNot port map (x=>n1, F=>L);
		
		-- saida i3 e i2
		PortaNot_2: PortaNot port map (x=>a, F=>n2);
		PortaNot_3: PortaNot port map (x=>b, F=>n3);
		PortaNot_4: PortaNot port map (x=>c, F=>n4);
		PortaAnd4_1: PortaAnd4 port map (x=>n2, y=>n3, z=>n4, w=>d, F=>n5);
		
		PortaNot_5: PortaNot port map (x=>a, F=>n6);
		PortaAnd2_2: PortaAnd2 port map (x=>n6, y=>b, F=>n7);
		
		PortaOr_1: PortaOr2 port map (x=>n5, y=>n7, F=>saida_i3, G=>saida_i2);
		
		-- saida i1 e i0
		PortaNot_6: PortaNot port map (x=>a, F=>n8);
		PortaNot_7: PortaNot port map (x=>b, F=>n9);
		PortaNot_8: PortaNot port map (x=>d, F=>n10);
		PortaAnd4_2: PortaAnd4 port map (x=>n8, y=>n9, z=>c, w=>n10, F=>n11);
		
		PortaNot_9: PortaNot port map (x=>b, F=>n12);
		PortaAnd2_3: PortaAnd2 port map (x=>a, y=>n12, F=>n13);
		
		PortaOr_2: PortaOr2 port map (x=>n11, y=>n13, F=>saida_i1, G=>saida_i0);

end Circuito;
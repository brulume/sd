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
    
	 component PortaNot8
		port (x: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaNot9
		port (x: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd1
		port (x, y: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd2
		port (x, y, z, w: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd3
		port (x, y: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd4
		port (x, y, z, w: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaAnd5
		port (x, y: in std_logic;
			F: out std_logic);
    end component;
    
	 component PortaOr1
		port (x, y: in std_logic;
			F,G: out std_logic);
    end component;
    
	 component PortaOr2
		port (x, y: in std_logic;
			F,G: out std_logic);
    end component;
	 
	 signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13: std_logic;
	 
    begin
		PortaNot1_1: PortaNot1 port map (x=>a, F=>n1);
		PortaNot2_1: PortaNot2 port map (x=>b, F=>n2);
		PortaNot3_1: PortaNot3 port map (x=>c, F=>n3);
		PortaNot4_1: PortaNot4 port map (x=>a, F=>n4);
		PortaNot5_1: PortaNot5 port map (x=>a, F=>n5);
		PortaNot6_1: PortaNot6 port map (x=>b, F=>n6);
		PortaNot7_1: PortaNot7 port map (x=>d, F=>n7);
		PortaNot8_1: PortaNot8 port map (x=>b, F=>n8);
	  
		PortaAnd1_1: PortaAnd1 port map (x=>c, y=>d, F=>n9);
		PortaNot9_1: PortaNot9 port map (x=>n9, F=>L);

		PortaAnd2_1: PortaAnd2 port map (x=>n1, y=>n2, z=>n3, w=>d, F=>n10);
		PortaAnd3_1: PortaAnd3 port map (x=>n4, y=>b, F=>n11);
		PortaAnd4_1: PortaAnd4 port map (x=>n5, y=>n6, z=>c, w=>n7, F=>n12);
		PortaAnd5_1: PortaAnd5 port map (x=>a, y=>n8, F=>n13);
	  
		PortaOr1_1: PortaOr1 port map (x=>n10, y=>n11, F=>saida_i0, G=>saida_i1);
		PortaOr2_1: PortaOr2 port map (x=>n12, y=>n13, F=>saida_i2, G=>saida_i3);
		
end Circuito;
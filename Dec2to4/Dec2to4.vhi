
-- VHDL Instantiation Created from source file Dec2to4.vhd -- 10:28:14 10/07/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Dec2to4
	PORT(
		a : IN std_logic_vector(1 downto 0);
		en : IN std_logic;          
		f : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Dec2to4: Dec2to4 PORT MAP(
		a => ,
		f => ,
		en => 
	);



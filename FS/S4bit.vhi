
-- VHDL Instantiation Created from source file S4bit.vhd -- 02:35:41 10/08/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT S4bit
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Ci : IN std_logic;          
		S : OUT std_logic_vector(3 downto 0);
		Bo : OUT std_logic
		);
	END COMPONENT;

	Inst_S4bit: S4bit PORT MAP(
		A => ,
		B => ,
		S => ,
		Bo => ,
		Ci => 
	);



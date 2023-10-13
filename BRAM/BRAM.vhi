
-- VHDL Instantiation Created from source file BRAM.vhd -- 02:35:02 12/16/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BRAM
	PORT(
		clk : IN std_logic;
		WE : IN std_logic;
		write_addr : IN std_logic_vector(5 downto 0);
		read_addr : IN std_logic_vector(5 downto 0);
		data_in : IN std_logic_vector(15 downto 0);          
		data_out : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_BRAM: BRAM PORT MAP(
		clk => ,
		WE => ,
		write_addr => ,
		read_addr => ,
		data_in => ,
		data_out => 
	);



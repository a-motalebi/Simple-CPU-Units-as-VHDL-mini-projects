library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity example_ram is
    Port ( clock : in  STD_LOGIC;
           outcome : out  unsigned (9 downto 0));
end example_ram;

architecture Behavioral of example_ram is
signal read_addr_int  :unsigned(7 downto 0):=(others=>'0');
signal write_addr_int :unsigned(7 downto 0):=(others=>'0');
signal data_in_int    :unsigned(9 downto 0):=(others=>'0');
signal data_out_int   :unsigned(9 downto 0):=(others=>'0');
signal counter        :unsigned(7 downto 0):=(others=>'0');
signal WE_int  :std_logic:='1';
begin 

	Inst_BRAM:entity work.BRAM 
	generic map(
			RAM_width      =>10,
			RAM_addr_width =>8
			)
	PORT MAP(
		clk => clock,
		WE => WE_int,
		write_addr =>write_addr_int ,
		read_addr  => read_addr_int,
		data_in    => data_in_int,
		data_out   => data_out_int 
	);
	process(clock)
	begin
			if rising_edge(clock) then
				WE_int <= '1';
				write_addr_int <= counter;
				data_in_int    <= resize(counter,10);
				read_addr_int  <= counter;
				counter        <= counter+1;
			end if;
	end process;
	outcome<=data_out_int;
	

end Behavioral;
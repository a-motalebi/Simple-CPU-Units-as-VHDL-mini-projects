library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divider_8 is
    Port ( clk : in  STD_LOGIC;
           counter : out  unsigned (5 downto 0));
end divider_8;
architecture Behavioral of divider_8 is
signal counter_int :unsigned(5 downto 0):=(others=>'0');
signal divider :unsigned(2 downto 0):=(others=>'0');
begin
counter<=counter_int;

process(clk,divider(2))
	begin
		if rising_edge(clk) then
			divider<=divider+1;
		end if;
		if rising_edge(divider(2)) then
			counter_int<=counter_int+1;
		end if;
end process;


end Behavioral;


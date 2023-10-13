library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity clock_devider is
		generic(width: integer:=4);
    Port ( 
			  counter : out unsigned (width-1 downto 0):=(others=>'0');
           clk : in  STD_LOGIC);
end clock_devider;
architecture Behavioral of clock_devider is
signal divider: unsigned(2 downto 0):=(others =>'0');
signal counter_int: unsigned(width-1 downto 0):=(others =>'0');
begin
counter<=counter_int;
		process(clk,divider(2))
		begin
				if rising_edge(clk) then
					divider <= divider+1;
				end if;
				if rising_edge(divider(2)) then
					counter_int <= counter_int+1;
				end if;	
		end process;
end Behavioral;
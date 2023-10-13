library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity led is
    Port ( a   : out  STD_LOGIC;
           clk : in   STD_LOGIC);
end led;

architecture Behavioral of led is
signal counter: unsigned (25 downto 0):=(others=>'0');
signal a_int: std_logic :='0';
begin
		a<=a_int;

		process(clk)
		begin
				if rising_edge(clk) then
					counter <= counter+1;
					if  counter = 50000-1 then 
						a_int <= not(a_int);
						counter <=(others=>'0');
					end if;
				end if;
		end process;		
						
end Behavioral;


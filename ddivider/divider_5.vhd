library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divider_5 is
    Port ( clk 	 : in   STD_LOGIC;
           divider : out  STD_LOGIC;
			  s       : out  STD_LOGIC;
			  r       : out  STD_LOGIC);
end divider_5;

architecture Behavioral of divider_5 is
signal counter_int: unsigned(2 downto 0):="000";
signal set,reset: std_logic :='0';
begin
		process(clk)
		begin
				if rising_edge(clk) then
					if counter_int(2)='1' then 
						set <= not (reset);
						counter_int<="000";
					else counter_int <= counter_int+1;
					end if;
				end if;	
		end process;
		process(clk)
		begin
				if falling_edge(clk) then
					if counter_int(1)='1' then 
						reset <= set;
					end if;
				end if;	
		end process;
divider<= set xor reset;
r<=reset;
s<=set;
end Behavioral;
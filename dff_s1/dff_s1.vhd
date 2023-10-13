library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
entity dff_s1 is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC);
end dff_s1;

architecture Behavioral of dff_s1 is

signal d_in: std_logic :='0';
signal q_in: std_logic :='0';

begin
		q <= q_in;
		d_in <= d;
		process (clk)
		begin
					
					if (rising_edge(clk)) then
				
						q_in <= d_in; 
						if(reset='1') then
							q_in <= '0';
						end if;
						
					end if;
				

		end process;


end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity seven_segment is
    Port ( clk : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end seven_segment;

architecture Behavioral of seven_segment is
signal counter : unsigned (3 downto 0):=(others=>'0');
signal delayc : integer range 0 to 50000000:=0;
signal O_int : STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
begin
process(clk)
begin
if rising_edge(clk) then
	delayc<=delayc+1;
	if (delayc = 50000000)then
		delayc<=0;
		if counter = "1001" then 
			counter<="0000";
		else
			counter<=counter+1;
		end if;	
	end if;
	case counter is
		when "0000" => O_int<="00111111";
		when "0001" => O_int<="00000110";
		when "0010" => O_int<="01011011";
		when "0011" => O_int<="01001111";
		when "0100" => O_int<="01100110";
		when "0101" => O_int<="01101101";
		when "0110" => O_int<="01111101";
		when "0111" => O_int<="00000111";
		when "1000" => O_int<="01111111";
		when "1001" => O_int<="01101111";
		when others => O_int<="00000000";
	end case;	
end if;
end process;
O<=O_int;
end Behavioral;
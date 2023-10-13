library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sort is
    Port ( clk : in  STD_LOGIC;
           in1 : in  unsigned (7 downto 0);
           in2 : in  unsigned (7 downto 0);
           in3 : in  unsigned (7 downto 0);
           in4 : in  unsigned (7 downto 0);
           o1 : out  unsigned (7 downto 0);
           o2 : out  unsigned (7 downto 0);
           o3 : out  unsigned (7 downto 0);
           o4 : out  unsigned (7 downto 0);
           flag : out  STD_LOGIC:='0');
end sort;

architecture Behavioral of sort is
signal a  :unsigned(7 downto 0):=(others=>'0');
signal b  :unsigned(7 downto 0):=(others=>'0');
signal c  :unsigned(7 downto 0):=(others=>'0');
signal d  :unsigned(7 downto 0):=(others=>'0');
signal e  :unsigned(7 downto 0):=(others=>'0');
signal f  :unsigned(7 downto 0):=(others=>'0');
type my_state is ( zero, first , second );
signal state : my_state := zero;
begin
process(clk)
begin
if(rising_edge(clk))then
case state is
	when zero =>
		if in1>in2 then
			a<=in1;
			b<=in2;
		else
			a<=in2;
			b<=in1;
		end if;
		if in3>in4 then
			c<=in3;
			d<=in4;
		else
			c<=in4;
			d<=in3;
		end if;
		state<= first;
	when first =>
		if a>c then
			o4<=a;
			e<=c;
		else
			o4<=c;
			e<=a;
		end if;
		if b<d then
			o1<=b;
			f<=d;
		else
			o1<=d;
			f<=b;
		end if;
		state <= second;
	when second =>
		if e>f then
			o3<=e;
			o2<=f;
		else
			o3<=f;
			o2<=e;
		end if;
		flag<='1';		
end case;
end if;	
end process;
end Behavioral;
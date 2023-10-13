library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_devider is
    Port ( devider : out  unsigned (2 downto 0);
           clk : in  STD_LOGIC);
end clock_devider;

architecture Behavioral of clock_devider is
signal devider_int: unsigned(2 downto 0):=(others =>'0');
begin
		process(clk)
		begin
				devider<=devider_int;
				if rising_edge(clk) then
					devider_int<=devider_int+1;
				end if;
		end process;
end Behavioral;
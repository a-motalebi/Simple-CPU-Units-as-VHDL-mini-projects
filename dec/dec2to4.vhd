----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:21 07/17/2020 
-- Design Name: 
-- Module Name:    dec2to4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec2to4 is
port(i:in std_logic_vector(1 downto 0);
	  o:out std_logic_vector(3 downto 0));
end dec2to4;

architecture Behavioral of dec2to4 is
begin
with i  select
	o <= "0001" when "00",
		  "0010" when "01",
		  "0100" when "10",
		  "1000" when "11",
		  "0000" when others;  

end Behavioral;


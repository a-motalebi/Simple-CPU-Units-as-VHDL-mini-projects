----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:00 07/17/2020 
-- Design Name: 
-- Module Name:    enaibled_dec2to4 - Behavioral 
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

entity enaibled_dec2to4 is
port(i1:in std_logic_vector(1 downto 0);
	  en:in std_logic ;
	  o1:out std_logic_vector(3 downto 0));
end enaibled_dec2to4;

architecture Behavioral of enaibled_dec2to4 is

begin
o1(0)<= en and (not i1(0) ) and (not i1(1));
o1(1)<= en and (not i1(0) ) and ( i1(1));
o1(2)<= en and ( i1(0) ) and (not i1(1));
o1(3)<= en and ( i1(0) ) and ( i1(1));

end Behavioral;


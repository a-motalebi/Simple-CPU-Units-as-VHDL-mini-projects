----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:37 07/17/2020 
-- Design Name: 
-- Module Name:    dec4to16 - Behavioral 
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

entity dec4to16 is
port(input:in std_logic_vector (3 downto 0);
	  output:out std_logic_vector(15 downto 0));
end dec4to16 ;

architecture Behavioral of dec4to16 is
component enaibled_dec2to4
port(i1:in std_logic_vector(1 downto 0);
	  en:in std_logic ;
	  o1:out std_logic_vector(3 downto 0));
end component;
component dec2to4
port(i:in std_logic_vector(1 downto 0);
	  o:out std_logic_vector(3 downto 0));
end component;	 
signal enaible:std_logic_vector (3 downto 0);
begin
d2to4: dec2to4 port map(i => input(3 downto 2),o => enaible);
de1: enaibled_dec2to4 port map(en => enaible(0),i1(0) => input(1),i1(1) => input(0),o1 => output(3 downto 0));
de2: enaibled_dec2to4 port map(en => enaible(1),i1(0) => input(1),i1(1) => input(0),o1 => output(7 downto 4));
de3: enaibled_dec2to4 port map(en => enaible(2),i1(0) => input(1),i1(1) => input(0),o1 => output(11 downto 8));
de4: enaibled_dec2to4 port map(en => enaible(3),i1(0) => input(1),i1(1) => input(0),o1 => output(15 downto 12));
end Behavioral;

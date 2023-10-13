library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity divider_IPCore is
	generic(N : integer :=16);
    Port ( dividend_top : in  signed (N-1 downto 0);
           divisor_top : in  signed (N-1 downto 0);
           quotient_top : out  signed (N-1 downto 0);
           fractional_top : out  signed (N-1 downto 0);
           clk : in  STD_LOGIC);
end divider_IPCore;

architecture Behavioral of divider_IPCore is
component My_IPdiv
	port (
	clk: in std_logic;
	rfd: out std_logic;
	dividend: in std_logic_vector(15 downto 0);
	divisor: in std_logic_vector(15 downto 0);
	quotient: out std_logic_vector(15 downto 0);
	fractional: out std_logic_vector(15 downto 0));
end component;
signal quotient_int :std_logic_vector(N-1 downto 0) :=(others=>'0');
signal fractional_int :std_logic_vector(N-1 downto 0) :=(others=>'0');
begin
IP_div1 : My_IPdiv
		port map (
			clk => clk,
			rfd => open,
			dividend => std_logic_vector(dividend_top),
			divisor => std_logic_vector(divisor_top),
			quotient => quotient_int,
			fractional => fractional_int
			);
quotient_top<=signed(quotient_int);
fractional_top<=signed(fractional_int);
end Behavioral;


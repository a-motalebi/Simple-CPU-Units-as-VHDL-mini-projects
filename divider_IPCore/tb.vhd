LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider_IPCore
    PORT(
         dividend_top : IN  signed(15 downto 0);
         divisor_top : IN  signed(15 downto 0);
         quotient_top : OUT  signed(15 downto 0);
         fractional_top : OUT  signed(15 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dividend_top : signed(15 downto 0) := (others => '0');
   signal divisor_top : signed(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal quotient_top : signed(15 downto 0);
   signal fractional_top : signed(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider_IPCore PORT MAP (
          dividend_top => dividend_top,
          divisor_top => divisor_top,
          quotient_top => quotient_top,
          fractional_top => fractional_top,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		dividend_top<=to_signed(145,16);
		divisor_top<=to_signed(14,16);
		wait for clk_period*10;
		dividend_top<=to_signed(-555,16);
		divisor_top<=to_signed(26,16);
      -- insert stimulus here 
      wait;
   end process;

END;

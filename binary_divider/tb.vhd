LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_divider
    PORT(
         Ain : IN  unsigned(5 downto 0);
         Bin : IN  unsigned(5 downto 0);
         Q : OUT  unsigned(5 downto 0);
         R : OUT  unsigned(5 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : unsigned(5 downto 0) := (others => '0');
   signal Bin : unsigned(5 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : unsigned(5 downto 0);
   signal R : unsigned(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: binary_divider PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Q => Q,
          R => R,
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
      -- hold reset state for 100 ns.
      Ain <="100000";
		Bin <="000011";
      -- insert stimulus here 

      wait;
   end process;

END;

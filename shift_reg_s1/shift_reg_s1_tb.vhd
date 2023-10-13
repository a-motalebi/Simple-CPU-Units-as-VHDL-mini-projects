LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY shift_reg_s1_tb IS
END shift_reg_s1_tb;
 
ARCHITECTURE behavior OF shift_reg_s1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_reg_s1
    PORT(
         a_input : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  unsigned(5 downto 0);
         control : IN  std_logic;
         p : IN  unsigned(5 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_input : std_logic := '0';
   signal clk : std_logic := '0';
   signal control : std_logic := '0';
   signal p : unsigned (5 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal output : unsigned(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_reg_s1 PORT MAP (
          a_input => a_input,
          clk => clk,
          output => output,
          control => control,
          p => p,
          reset => reset
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
      -- insert stimulus here 
		p <= to_unsigned(60,6);

      wait;
   end process;

END;

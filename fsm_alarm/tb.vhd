LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm_alarm
    PORT(
         input_data : IN  std_logic;
         clk : IN  std_logic;
         alarm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input_data : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal alarm : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm_alarm PORT MAP (
          input_data => input_data,
          clk => clk,
          alarm => alarm
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
		
		input_data<= '1';
		wait for 60 ns;
		input_data<='0';
      wait for clk_period*2000000;
		input_data<='1';
      wait for clk_period*3000000;
		input_data<='0';
      wait for clk_period*1000000;
		input_data<='1';
      wait for clk_period*2000000;
		input_data<='1';
		wait for 60 ns;
		input_data<='0';
      wait for clk_period*2000000;
		input_data<='1';
      wait for clk_period*3000000;
		input_data<='0';
      wait for clk_period*1000000;
		input_data<='1';
      wait for clk_period*2000000;
		input_data<='1';
      wait for 60 ns;
		input_data<='0';
      wait for clk_period*3000000;
		input_data<='1';
      wait for clk_period*2000000;
		input_data<='0';
      wait for clk_period*1000000;
		input_data<='0';
      wait for clk_period*1000000;
		input_data<='1';
      -- insert stimulus here

      wait;
   end process;

END;

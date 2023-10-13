LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sort
    PORT(
         clk : IN  std_logic;
         in1 : IN  unsigned(7 downto 0);
         in2 : IN  unsigned(7 downto 0);
         in3 : IN  unsigned(7 downto 0);
         in4 : IN  unsigned(7 downto 0);
         o1 : OUT  unsigned(7 downto 0);
         o2 : OUT  unsigned(7 downto 0);
         o3 : OUT  unsigned(7 downto 0);
         o4 : OUT  unsigned(7 downto 0);
         flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal in1 : unsigned(7 downto 0) := (others => '0');
   signal in2 : unsigned(7 downto 0) := (others => '0');
   signal in3 : unsigned(7 downto 0) := (others => '0');
   signal in4 : unsigned(7 downto 0) := (others => '0');

 	--Outputs
   signal o1 : unsigned(7 downto 0);
   signal o2 : unsigned(7 downto 0);
   signal o3 : unsigned(7 downto 0);
   signal o4 : unsigned(7 downto 0);
   signal flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sort PORT MAP (
          clk => clk,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          o1 => o1,
          o2 => o2,
          o3 => o3,
          o4 => o4,
          flag => flag
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
		in1<="00101000";
		in2<="00001001";
		in3<="00001100";
		in4<="00001010";
		

      -- insert stimulus here 

      wait;
   end process;

END;

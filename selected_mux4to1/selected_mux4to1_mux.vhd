LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY selected_mux4to1_mux IS
END selected_mux4to1_mux;
 
ARCHITECTURE behavior OF selected_mux4to1_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT selsected_mux4to1
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         S : IN  unsigned (1 downto 0);
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal S : unsigned (1 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: selsected_mux4to1 PORT MAP (
          A => A,
          S => S,
          F => F
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A<="1001";
		S<="11";
      wait for 100 ns;	
		S<="10";
      wait for 100 ns;	
		S<="01";
      wait for 100 ns;	
		S<="00";

      -- insert stimulus here 

      wait;
   end process;

END;

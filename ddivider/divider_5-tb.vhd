--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:29:07 11/11/2020
-- Design Name:   
-- Module Name:   D:/vhdl/ddivider/divider_5-tb.vhd
-- Project Name:  ddivider
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider_5
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divider_5_tb IS
END divider_5_tb;
 
ARCHITECTURE behavior OF divider_5_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider_5
    PORT(
         clk : IN  std_logic;
         divider : OUT  std_logic;
         s : OUT  std_logic;
         r : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal divider : std_logic;
   signal s : std_logic;
   signal r : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider_5 PORT MAP (
          clk => clk,
          divider => divider,
          s => s,
          r => r
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
 
      -- insert stimulus here 

      wait;
   end process;

END;

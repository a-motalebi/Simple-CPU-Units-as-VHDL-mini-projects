--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:33 10/03/2020
-- Design Name:   
-- Module Name:   D:/vhdl/Full_subtracter/S1bit_tb.vhd
-- Project Name:  Full_subtracter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: S1bit
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
 
ENTITY S1bit_tb IS
END S1bit_tb;
 
ARCHITECTURE behavior OF S1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT S1bit
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         D : OUT  std_logic;
         Bi : IN  std_logic;
         Bo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal Bi : std_logic := '0';

 	--Outputs
   signal D : std_logic;
   signal Bo : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: S1bit PORT MAP (
          a => a,
          b => b,
          D => D,
          Bi => Bi,
          Bo => Bo
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a <= '0';
		b<= '0';
		Bi<='0';
      wait for 100 ns;	
		a <= '1';
		b<= '0';
		Bi<='0';
      wait for 100 ns;
		a <= '0';
		b<= '1';
		Bi<='0';
      wait for 100 ns;		
		a <= '1';
		b<= '1';
		Bi<='0';
      wait for 100 ns;
		a <= '0';
		b<= '0';
		Bi<='1';
      wait for 100 ns;
		a <= '1';
		b<= '0';
		Bi<='1';
      wait for 100 ns;
		a <= '0';
		b<= '1';
		Bi<='1';
      wait for 100 ns;
		a <= '1';
		b<= '1';
		Bi<='1';
      wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;

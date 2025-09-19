--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:43:00 05/12/2024
-- Design Name:   
-- Module Name:   C:/Users/Nada/Desktop/NADAABOSAADA 211002838/MIPS_testbench.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MIPS
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
 
ENTITY MIPS_testbench IS
END MIPS_testbench;
 
ARCHITECTURE behavior OF MIPS_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS
    PORT(
         ClkM : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ClkM : std_logic := '0';

   -- Clock period definitions
   constant ClkM_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPS PORT MAP (
          ClkM => ClkM
        );

   -- Clock process definitions
   ClkM_process :process
   begin
		ClkM <= '0';
		wait for ClkM_period/2;
		ClkM <= '1';
		wait for ClkM_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for ClkM_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

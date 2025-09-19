--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:20:08 04/15/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/NADAABOSAADA 211002838/TestSign.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUUNITCONTROL
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
 
ENTITY TestSign IS
END TestSign;
 
ARCHITECTURE behavior OF TestSign IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUUNITCONTROL
    PORT(
         ALU_OUTPUT : OUT  std_logic_vector(3 downto 0);
         ALU_OOP : IN  std_logic_vector(1 downto 0);
         ALU_FUNC : IN  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_OOP : std_logic_vector(1 downto 0) := (others => '0');
   signal ALU_FUNC : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALU_OUTPUT : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUUNITCONTROL PORT MAP (
          ALU_OUTPUT => ALU_OUTPUT,
          ALU_OOP => ALU_OOP,
          ALU_FUNC => ALU_FUNC
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

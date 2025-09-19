--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:38:45 02/26/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Kenzy/mips211002838nadafouadfinal/ALU_TEST.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_TEST IS
END ALU_TEST;
 
ARCHITECTURE behavior OF ALU_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         ALUop : IN  std_logic_vector(3 downto 0);
         ZERO : OUT  std_logic;
         result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ZERO : std_logic;
   signal result : std_logic_vector(31 downto 0);BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          ALUop => ALUop,
          ZERO => ZERO,
          result => result
        );  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A<=x"00000001";
		B<=x"00000000";
	   ALUop<="0000";
		wait for 100 ns;
     ALUop<="0000";
		wait for 100 ns;
		ALUop<="0001";
		wait for 100 ns;
		ALUop<="0010";
		wait for 100 ns;
		ALUop<="0110";
		wait for 100 ns;
		ALUop<="1100";
		wait for 100 ns;
		ALUop<="0111";
		wait for 100 ns;
      -- insert stimulus here 
		A<=x"00000000";
		B<=x"00000001";
		ALUop<="0111";
		wait for 100 ns;
		
		A<=x"00000000";
		B<=x"00000000";
		ALUop<="0111";
		wait for 100 ns;
		
		

		

      wait;
   end process;

END;

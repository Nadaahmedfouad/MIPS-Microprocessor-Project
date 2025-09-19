--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:18:47 05/03/2024
-- Design Name:   
-- Module Name:   C:/Users/Nada/Desktop/NADAABOSAADA 211002838/Mux_5tb.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_5
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
 
ENTITY Mux_5tb IS
END Mux_5tb;
 
ARCHITECTURE behavior OF Mux_5tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_5
    PORT(
         in0 : IN  std_logic_vector(4 downto 0);
         in1 : IN  std_logic_vector(4 downto 0);
         s : IN  std_logic;
         o : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(4 downto 0) := (others => '0');
   signal in1 : std_logic_vector(4 downto 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal o : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_5 PORT MAP (
          in0 => in0,
          in1 => in1,
          s => s,
          o => o
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		in0 <="00111";
		in1 <="11110";
		s<='0';
		wait for 100 ns;
		s <='1';
		
      

      -- insert stimulus here 

      wait;
   end process;

END;

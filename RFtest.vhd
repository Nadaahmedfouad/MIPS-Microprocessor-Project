--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:01:34 05/16/2024
-- Design Name:   
-- Module Name:   C:/Users/Nada/Desktop/NADAABOSAADA 211002838/RFtest.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
ENTITY RFtest IS
END RFtest;
 
ARCHITECTURE behavior OF RFtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         ReadReg1 : IN  std_logic_vector(4 downto 0);
         ReadReg2 : IN  std_logic_vector(4 downto 0);
         WriteReg : IN  std_logic_vector(4 downto 0);
         WriteData : IN  std_logic_vector(31 downto 0);
         Readdata1 : OUT  std_logic_vector(31 downto 0);
         Readdata2 : OUT  std_logic_vector(31 downto 0);
         Regwrite : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ReadReg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal ReadReg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal WriteReg : std_logic_vector(4 downto 0) := (others => '0');
   signal WriteData : std_logic_vector(31 downto 0) := (others => '0');
   signal Regwrite : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Readdata1 : std_logic_vector(31 downto 0);
   signal Readdata2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          ReadReg1 => ReadReg1,
          ReadReg2 => ReadReg2,
          WriteReg => WriteReg,
          WriteData => WriteData,
          Readdata1 => Readdata1,
          Readdata2 => Readdata2,
          Regwrite => Regwrite,
          clk => clk
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
		
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

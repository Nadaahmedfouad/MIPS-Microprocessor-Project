--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:19 05/04/2024
-- Design Name:   
-- Module Name:   C:/Users/Nada/Desktop/NADAABOSAADA 211002838/ControlUnittb.vhd
-- Project Name:  mips211002838nadafouadfinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
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
 
ENTITY ControlUnittb IS
END ControlUnittb;
 
ARCHITECTURE behavior OF ControlUnittb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         Instruction : IN  std_logic_vector(5 downto 0);
         RegDest : OUT  std_logic;
         Branch : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         AluOp : OUT  std_logic_vector(1 downto 0);
         MemWrite : OUT  std_logic;
         AluSrc : OUT  std_logic;
         RegWrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Instruction : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDest : std_logic;
   signal Branch : std_logic;
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal AluOp : std_logic_vector(1 downto 0);
   signal MemWrite : std_logic;
   signal AluSrc : std_logic;
   signal RegWrite : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          Instruction => Instruction,
          RegDest => RegDest,
          Branch => Branch,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          AluOp => AluOp,
          MemWrite => MemWrite,
          AluSrc => AluSrc,
          RegWrite => RegWrite
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     
		Instruction <="000000";
		wait for 100 ns;
		Instruction <="000100";

      -- insert stimulus here 

      wait;
   end process;

END;

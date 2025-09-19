----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:19:39 05/10/2024 
-- Design Name: 
-- Module Name:    InstructionMemory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionMemory is
    Port ( PC : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0)
			 -- clk : in  STD_LOGIC
			 );
			  end InstructionMemory;

architecture Behavioral of InstructionMemory is
type A is array(0 to 31) of STD_LOGIC_VECTOR ( 7 downto 0);

signal mem: A:=
(	x"00", x"85", x"10", x"20",
			x"AC", x"02", x"00", x"08",
			x"8C", x"06", x"00", x"08",
			x"10", x"46", x"00", x"01",
			x"00", x"46", x"88", x"2A",
			x"00", x"A4", x"88", x"22",
		
			x"00", x"00", x"00", x"00",
			x"00", x"00", x"00", x"00"
			 );


begin
--process(clk)
--begin 
--if rising_edge (clk)
--then

--Instruction	<= mem(to_integer(unsigned(PC))+0)&mem(to_integer(unsigned(PC))+1)&mem(to_integer(unsigned(PC))+2)&mem(to_integer(unsigned(PC))+3);
--end if;
--end process;
--Instruction(31 downto 24)<= mem(to_integer((unsigned(PC))));
--Instruction(23 downto 16)<= mem(to_integer((unsigned(PC)+1)));
--Instruction(15 downto 8)<= mem(to_integer((unsigned(PC)+2)));
--Instruction(7 downto 0)<= mem(to_integer((unsigned(PC)+3)));

 Instruction <= mem(to_integer(unsigned(PC))) &  -- Concatenate 4 8-bit instructions
                   mem(to_integer(unsigned(PC)) + 1) &
                   mem(to_integer(unsigned(PC)) + 2) &
                   mem(to_integer(unsigned(PC)) + 3);

end Behavioral;


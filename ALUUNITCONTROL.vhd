----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:30:45 03/04/2024 
-- Design Name: 
-- Module Name:    ALUUNITCONTROL - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUUNITCONTROL is
    Port ( ALU_OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0);
           ALU_OOP : in  STD_LOGIC_VECTOR (1 downto 0);
           ALU_FUNC : in  STD_LOGIC_VECTOR (5 downto 0));
end ALUUNITCONTROL;

architecture Behavioral of ALUUNITCONTROL is
signal fourbitscheck :   STD_LOGIC_VECTOR (3 downto 0);
begin
process(ALU_OOP,ALU_FUNC,fourbitscheck) 
begin
fourbitscheck<=ALU_FUNC(3 downto 0);
if(ALU_OOP="00") then ALU_OUTPUT <="0010";
elsif (ALU_OOP="01") then ALU_OUTPUT <="0110";
elsif (ALU_OOP="10") then
	if(fourbitscheck="0000")
		then ALU_OUTPUT <="0010";
	elsif(fourbitscheck="0010")
		then ALU_OUTPUT <="0110";
	elsif(fourbitscheck="0100")
		then ALU_OUTPUT <="0000";
	elsif(fourbitscheck="0101")
		then ALU_OUTPUT <="0001";
	elsif(fourbitscheck="1010")
		then ALU_OUTPUT <="0111";
	end if;

elsif(ALU_OOP="11") then
	if(fourbitscheck="0010")
		then ALU_OUTPUT <="0110";
	elsif(fourbitscheck="1010")
		then ALU_OUTPUT <="0111";
   end if;
end if;
end process;

	

	






end Behavioral;


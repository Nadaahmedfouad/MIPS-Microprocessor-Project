----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:26 05/03/2024 
-- Design Name: 
-- Module Name:    PCadder - Behavioral 
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

entity PCadder is
    Port ( Instruction : in  STD_LOGIC_VECTOR (31 downto 0);
           NewInstruction : out  STD_LOGIC_VECTOR (31 downto 0));
end PCadder;

architecture Behavioral of PCadder is

begin
signal temp :  STD_LOGIC_VECTOR(31 downto 0);

begin

temp <= X"00000004";
NewInstruction <= STD_LOGIC_VECTOR(unsigned(unsigned(Instruction) + unsigned(temp)));

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:02 05/04/2024 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDest : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWrite : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
process(Instruction)
begin

if (Instruction = "000000") then --R Format--
RegDest <= '1';
Branch <= '0';
MemRead <= '0';
MemtoReg <= '0';
AluOp <= "10";
MemWrite <= '0';
AluSrc <= '0';
RegWrite <= '1';

elsif (Instruction = "100011") then --lw instruction--
RegDest <= '0';
Branch <= '0';
MemRead <= '1';
MemtoReg <= '1';
AluOp <= "00";
MemWrite <= '0';
AluSrc <= '1';
RegWrite <= '1';

elsif (Instruction = "101011") then --sw instruction--
RegDest <= 'X';
Branch <= '0';
MemRead <= '0';
MemtoReg <= 'X';
AluOp <= "00";
MemWrite <= '1';
AluSrc <= '1';
RegWrite <= '0';

elsif (Instruction = "000100") then --beq instruction--
RegDest <= 'X';
Branch <= '1';
MemRead <= '0';
MemtoReg <= 'X';
AluOp <= "01";
MemWrite <= '0';
AluSrc <= '0';
RegWrite <= '0';
end if;

end process;


end Behavioral;


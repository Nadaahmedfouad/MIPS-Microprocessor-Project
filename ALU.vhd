----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:15:58 02/26/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           ZERO : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ALU;

architecture Behavioral of ALU is

begin
process (A,B,ALUop)
begin

if ALUop="0000" then result<= A AND B;
elsif ALUop="0001" then result <= A OR B;
elsif ALUop="0010" then result <= A + B;
elsif ALUop="0110" then result <= A - B;
elsif ALUop="0111" then
	    if A < B then
        result <= x"00000001";
    else
        result <= x"00000000";
    end if;

elsif ALUop="1100" then result <= A NOR B;
end if;
if A=B then
	ZERO<='1';
else
	ZERO<='0';
end if;
end process;







end Behavioral;


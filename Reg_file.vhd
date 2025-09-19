----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:04 03/11/2024 
-- Design Name: 
-- Module Name:    reg_file - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
			  Port ( ReadReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           Readdata1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Readdata2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Regwrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end RegisterFile;

architecture Behavioral of RegisterFile is

type A is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
-- da array of registers reg1 fe 00000000 w hakaza

signal Reg: A := ( X"00000000",X"00000000",X"00000000",X"00000000",
X"00000005",X"00000007",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000"
						 );

begin
		Readdata1 <= Reg (conv_integer (ReadReg1));
	Readdata2 <= Reg (conv_integer (ReadReg2));
	
	process (clk , Regwrite)
	begin
	   if Regwrite = '1' and rising_edge (clk) then
			Reg ( conv_integer (WriteReg)) <= WriteData ;
			end if;
	end process;
	


end Behavioral;


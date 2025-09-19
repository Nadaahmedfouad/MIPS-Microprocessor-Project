----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:33:59 04/15/2024 
-- Design Name: 
-- Module Name:    DataMemory - Behavioral 
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

entity DataMemory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           readdata : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           memread : in  STD_LOGIC;
           memwrite : in  STD_LOGIC);
end DataMemory;

architecture Behavioral of DataMemory is
type memo is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);
signal mem: memo := (
X"AB", X"CD", X"EF", X"00", 
X"75", X"74", X"65", X"72", 
X"20", X"41", X"72", X"63", 
X"68", X"69", X"74", X"65", 
X"12", X"34", X"56", X"78", 
X"7F", X"7F", X"6D", X"6D", 
X"00", X"00", X"00", X"00", 
X"78", X"78", X"6A", X"6A", 
X"00", X"00", X"00", X"01");


begin
		PROCESS (clk , Address , writedata , memread , memwrite ,mem)
		begin 
			if (memread = '1' and memwrite = '0') then
				 readdata (31 downto 24) <= mem (to_integer(unsigned(Address)));
				 readdata (23 downto 16) <= mem (to_integer(unsigned(Address)+1));
				 readdata (15 downto 8) <= mem (to_integer(unsigned(Address)+2));
				 readdata (7 downto 0) <= mem (to_integer(unsigned(Address)+3));
			elsif (memread ='0' and memwrite = '1' and rising_edge(clk)) then
				 mem (to_integer(unsigned(Address))) <= writedata (31 downto 24);
				 mem (to_integer(unsigned(Address)+1)) <= writedata (23 downto 16);
				 mem (to_integer(unsigned(Address)+2)) <= writedata (15 downto 8);
				 mem (to_integer(unsigned(Address)+3)) <= writedata (7 downto 0);
			end if;
		end process;


end Behavioral;




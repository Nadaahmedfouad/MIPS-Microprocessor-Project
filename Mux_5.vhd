----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:16 05/03/2024 
-- Design Name: 
-- Module Name:    Mux_5 - Behavioral 
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

entity Mux_5 is
    Port ( in0 : in  STD_LOGIC_VECTOR (4 downto 0);
           in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (4 downto 0));
end Mux_5;

architecture Behavioral of Mux_5 is

begin
process (in0, in1, s)
begin

if s='0' then
	o <= in0;
elsif s='1' then
	o <= in1;
end if;

end process;

end Behavioral;


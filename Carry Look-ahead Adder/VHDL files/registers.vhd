----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2018 02:41:53 PM
-- Design Name: 
-- Module Name: registers - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registers is
    Port ( clk : in STD_LOGIC;
           reg_in : in STD_LOGIC_VECTOR (127 downto 0);
           reg_out : out STD_LOGIC_VECTOR (127 downto 0));
end registers;

architecture Behavioral of registers is

begin
process(clk) is
begin
if( rising_edge(clk)) then
    reg_out <= reg_in;
end if;
end process;

end Behavioral;

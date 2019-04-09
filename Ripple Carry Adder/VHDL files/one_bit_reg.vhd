----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2018 09:17:28 PM
-- Design Name: 
-- Module Name: one_bit_reg - Behavioral
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

entity one_bit_reg is
    Port ( reg_in : in STD_LOGIC;
           reg_out : out STD_LOGIC;
           clk : in STD_LOGIC);
end one_bit_reg;

architecture Behavioral of one_bit_reg is

begin
process(clk) is
begin
    if rising_edge(clk) then
        reg_out <= reg_in;
    end if;
end process;

end Behavioral;

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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY one_bit_reg IS
    PORT (
        reg_in : IN STD_LOGIC;
        reg_out : OUT STD_LOGIC;
        clk : IN STD_LOGIC);
END one_bit_reg;

ARCHITECTURE Behavioral OF one_bit_reg IS

BEGIN
    PROCESS (clk) IS
    BEGIN
        IF rising_edge(clk) THEN
            reg_out <= reg_in;
        END IF;
    END PROCESS;

END Behavioral;
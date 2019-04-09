----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2018 10:17:01 AM
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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

entity adder_simulation is
end adder_simulation;

architecture Behavioral of adder_simulation is
component carry_look_ahead is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           sum : out STD_LOGIC_VECTOR (127 downto 0);
           c_out_128 : out STD_LOGIC);
end component;

component registered_design is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           clk : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (127 downto 0);
           c_out : out STD_LOGIC);
end component;

signal x_128: std_logic_vector(127 downto 0);
signal y_128: std_logic_vector(127 downto 0);
signal sum: std_logic_vector(127 downto 0);
signal c_out_128: std_logic;
signal clk : std_logic := '0';
signal count : std_logic := '0';
constant clk_period : Time := 10 ns;


begin

    
uut2: registered_design port map (
        x_128 => x_128,
        y_128 => y_128,
        sum => sum,
        clk => clk,
        c_out => c_out_128
        );
clk_process: process
begin
    wait for clk_period;
    if (clk = '0') then
        clk <= '1';
    else
        clk <= '0';
    end if;
end process;

second_process: process(clk) is
begin
    if(rising_edge(clk)) then
        if count = '0' then
          x_128 <= x"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
          y_128 <= x"00000000000000000000000000000001";
          count <= '1';
        else
            count <= '0';
            x_128 <= x"00000000000000000000000000000000";
            y_128 <= x"00000000000000000000000000000000";
        end if;
    end if;
end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2018 01:41:14 PM
-- Design Name: 
-- Module Name: registered_design - Behavioral
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

entity registered_design is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           clk : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (127 downto 0);
           c_out : out STD_LOGIC);
end registered_design;

architecture Behavioral of registered_design is

component adder is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           sum_128 : out STD_LOGIC_VECTOR (127 downto 0);
           cout : out STD_LOGIC);
end component;

component registers is
    Port ( clk : in STD_LOGIC;
           reg_in : in STD_LOGIC_VECTOR (127 downto 0);
           reg_out : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component one_bit_reg is
    Port ( reg_in : in STD_LOGIC;
           reg_out : out STD_LOGIC;
           clk : in STD_LOGIC);
end component;
--signal x_128 : STD_LOGIC_VECTOR(127 downto 0);
--signal y_128 : STD_LOGIC_VECTOR(127 downto 0);
--signal sum : STD_LOGIC_VECTOR(127 downto 0);
--signal c_out_128 : STD_LOGIC;

signal x_128_r_1 : STD_LOGIC_VECTOR(127 downto 0);
signal y_128_r_1 : STD_LOGIC_VECTOR(127 downto 0);
signal sum_128_r_1 : STD_LOGIC_VECTOR(127 downto 0);
signal c_out_r_1 : STD_LOGIC;

    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of reg_x : label is "YES";
    attribute DONT_TOUCH of reg_y : label is "YES";
    attribute DONT_TOUCH of reg_s : label is "YES";
    attribute DONT_TOUCH of reg_c : label is "YES";
    attribute DONT_TOUCH of rca : label is "YES";
begin

reg_x: registers port map(
    clk => clk,
    reg_in => x_128,
    reg_out => x_128_r_1 
);

reg_y: registers port map(
    clk => clk,
    reg_in => y_128,
    reg_out => y_128_r_1 
);

reg_s: registers port map(
    clk => clk,
    reg_in => sum_128_r_1,
    reg_out => sum 
);

reg_c: one_bit_reg port map(
    clk => clk,
    reg_in => c_out_r_1,
    reg_out => c_out
    );
    
rca: adder port map(
    x_128 => x_128_r_1,
    y_128 => y_128_r_1,
    sum_128 => sum_128_r_1,
    cout => c_out_r_1
    );


end Behavioral;

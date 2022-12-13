----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2018 09:14:13 AM
-- Design Name: 
-- Module Name: second_half_cout_4bit - Behavioral
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

ENTITY second_half_cout_4bit IS
    PORT (
        g_32 : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        p_32 : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        g_8 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        p_8 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        g_2 : IN STD_LOGIC;
        p_2 : IN STD_LOGIC;
        c_in : IN STD_LOGIC;
        c_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END second_half_cout_4bit;
ARCHITECTURE Behavioral OF second_half_cout_4bit IS
    SIGNAL middle_carry : STD_LOGIC_VECTOR (31 DOWNTO 0);
BEGIN

    -- c3 <= g3-0 + p3-0.Cin
    c_out(0) <= g_32(0) OR (p_32(0) AND c_in);
    -- c7 <= g7-4 + p7-4.g3-0 + p7-4.p3-0.Cin
    c_out(1) <= g_32(1) OR (p_32(1) AND g_32(0)) OR (p_32(1) AND p_32(0) AND c_in);
    -- c11 <= g11-8 + p11-8.g7-4 + p11-8.p7-4.g3-0 + p11-8.p7-4.p3-0.Cin
    c_out(2) <= g_32(2) OR (p_32(2) AND g_32(1)) OR (p_32(2) AND p_32(1) AND g_32(0)) OR (p_32(2) AND p_32(1) AND p_32(0) AND c_in);
    -- c15 <= g15-0 + p15-0.Cin
    c_out(3) <= g_8(0) OR (p_8(0) AND c_in);
    middle_carry(3) <= g_8(0) OR (p_8(0) AND c_in);

    --c19 <= g19-16 + p19-16.c15
    c_out(4) <= g_32(4) OR (p_32(4) AND middle_carry(3));
    --c23 <= g23-20 + p23-20.g19-16 + p23-20.p19-16.c15
    c_out(5) <= g_32(5) OR (p_32(5) AND g_32(4)) OR (p_32(5) AND p_32(4) AND middle_carry(3));
    --c27 <= g27-24 + p27-24.g23-19 + p27-24.p23-19.g19-16 + p27-24.p23-20.p19-16.c15
    c_out(6) <= g_32(6) OR (p_32(6) AND g_32(5)) OR (p_32(6) AND p_32(5) AND g_32(4)) OR (p_32(6) AND p_32(5) AND p_32(4) AND middle_carry(3));
    --c31 <= g31-16 + p31-16.c15
    --c_out(7) <= g_8(1) + (p_8(1) AND c_out(3));
    c_out(7) <= g_8(1) OR (p_8(1) AND g_8(0)) OR (p_8(1) AND p_8(0) AND c_in);
    middle_carry(7) <= g_8(1) OR (p_8(1) AND g_8(0)) OR (p_8(1) AND p_8(0) AND c_in);

    --c35 <= g35-32 + p35-32.C31
    c_out(8) <= g_32(8) OR (p_32(8) AND middle_carry(7));
    --c39 <= g39-36 + p39-36.g35-32 + p39-36.p35-32.C31
    c_out(9) <= g_32(9) OR (p_32(9) AND g_32(8)) OR (p_32(9) AND p_32(8) AND middle_carry(7));
    --c43 <= g43-40 + p43-40.g39-36 + p43-40.p39-36.g35-32 + p43-40.p39-36.p35-32.C31
    c_out(10) <= g_32(10) OR (p_32(10) AND g_32(9)) OR (p_32(10) AND p_32(9) AND g_32(8)) OR (p_32(10) AND p_32(9) AND p_32(8) AND middle_carry(7));
    --c47 <= g47-32 + p47-32.g31-16 + p47-32.p31-16.g15-0 + p47-32.p31-16.p15-0.cin
    c_out(11) <= g_8(2) OR (p_8(2) AND g_8(1)) OR (p_8(2) AND p_8(1) AND g_8(0)) OR (p_8(2) AND p_8(1) AND p_8(0) AND c_in);
    middle_carry(11) <= g_8(2) OR (p_8(2) AND g_8(1)) OR (p_8(2) AND p_8(1) AND g_8(0)) OR (p_8(2) AND p_8(1) AND p_8(0) AND c_in);

    --c51 <= g51-48 + p51-48.c47
    c_out(12) <= g_32(12) OR (p_32(12) AND middle_carry(11));
    --C55 <= g55-52 + p55-52.g51-48 + p55-52.p51-48.c47
    c_out(13) <= g_32(13) OR (p_32(13) AND g_32(12)) OR (p_32(13) AND p_32(12) AND middle_carry(11));
    --c59 <= g59-56 + p59-56.g55-52 + p59-56.p55-52.g51-48 + p59-56.p55-52.p51-48.c47
    c_out(14) <= g_32(14) OR (p_32(14) AND g_32(13)) OR (p_32(14) AND p_32(13) AND g_32(12)) OR (p_32(14) AND p_32(13) AND p_32(12) AND middle_carry(11));
    --c63 <= g63-0 + p63-0.c_in
    c_out(15) <= g_2 OR (p_2 AND c_in);

END Behavioral;
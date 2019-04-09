----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 02:29:00 PM
-- Design Name: 
-- Module Name: second_level_generate_4bit - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity second_level_generate_4bit is
    Port ( g_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           g_8 : out STD_LOGIC_VECTOR (7 downto 0));
end second_level_generate_4bit;

architecture Behavioral of second_level_generate_4bit is
signal gen_15_0: STD_LOGIC_VECTOR(3 downto 0);
signal gen_31_16: STD_LOGIC_VECTOR(3 downto 0);
signal gen_47_32: STD_LOGIC_VECTOR(3 downto 0);
signal gen_63_48: STD_LOGIC_VECTOR(3 downto 0);
signal gen_79_64: STD_LOGIC_VECTOR(3 downto 0);
signal gen_95_80: STD_LOGIC_VECTOR(3 downto 0);
signal gen_111_96: STD_LOGIC_VECTOR(3 downto 0);
signal gen_127_112: STD_LOGIC_VECTOR(3 downto 0);



signal CO: STD_LOGIC_VECTOR(31 downto 0);
signal O: STD_LOGIC_VECTOR(31 downto 0);
begin
---- gen_15_0
--CARRY4_15_0: CARRY4 port map ( 
-- CO => CO(3 downto 0),
-- O => O(3 downto 0),
-- CI => '0',
-- CYINIT => '0',
-- DI => "1111",
-- S => gen_15_0
--  );
---- g30 p74 p11-8 p15-12 
--gen_15_0(0)<= ((g_32(0) NAND p_32(3)) NAND p_32(2)) NAND p_32(1); 
---- g74 p11-8 p15-12
--gen_15_0(1)<= (g_32(1) NAND p_32(3)) NAND p_32(2); 
---- g11-8 p15-12
--gen_15_0(2)<= g_32(2) NAND p_32(3); 
---- g15-12
--gen_15_0(3)<= g_32(3);  

---- gen_31_16
--CARRY4_31_16: CARRY4 port map ( 
-- CO => CO(7 downto 4),
-- O => O(7 downto 4),
-- CI => '0',
-- CYINIT => '0',
-- DI => "1111",
-- S => gen_31_16
--  );
--gen_31_16(0)<=((g_32(4) NAND p_32(7)) NAND p_32(6)) NAND p_32(5);
--gen_31_16(1)<=(g_32(5) NAND p_32(7)) NAND p_32(6);
--gen_31_16(2)<= g_32(6) NAND p_32(7);
--gen_31_16(3)<= g_32(7);

--g_8(0) <= CO(3);
--g_8(1) <= CO(7);

-- gen_15_0
CARRY4_15_0: CARRY4 port map (
 CO => CO(3 downto 0),
 O => O(3 downto 0),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_15_0
  );
-- g3-0 p7-4 p11-8 p15-12 
gen_15_0(0)<= NOT (g_32(0) AND p_32(3) AND p_32(2) AND p_32(1)); 
-- g7-5 p11-8 p15-12
gen_15_0(1)<= NOT (g_32(1) AND p_32(3) AND p_32(2)); 
-- g11-8 p15-12
gen_15_0(2)<= NOT (g_32(2) AND p_32(3)); 
-- g15-12
gen_15_0(3)<= NOT g_32(3);  




-- gen_31_16
CARRY4_31_16: CARRY4 port map (
 CO => CO(7 downto 4),
 O => O(7 downto 4),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_31_16
  );
-- g7-4 p15-12 p23-20 p31-28 
gen_31_16(0)<= NOT (g_32(4) AND p_32(7) AND p_32(6) AND p_32(5)); 
-- g15-13 p23-20 p31-28
gen_31_16(1)<= NOT (g_32(5) AND p_32(7) AND p_32(6)); 
-- g23-20 p31-28
gen_31_16(2)<= NOT (g_32(6) AND p_32(7)); 
-- g31-28
gen_31_16(3)<= NOT g_32(7);  




-- gen_47_32
CARRY4_47_32: CARRY4 port map (
 CO => CO(11 downto 8),
 O => O(11 downto 8),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_47_32
  );
-- g11-8 p23-20 p35-32 p47-44 
gen_47_32(0)<= NOT (g_32(8) AND p_32(11) AND p_32(10) AND p_32(9)); 
-- g23-21 p35-32 p47-44
gen_47_32(1)<= NOT (g_32(9) AND p_32(11) AND p_32(10)); 
-- g35-32 p47-44
gen_47_32(2)<= NOT (g_32(10) AND p_32(11)); 
-- g47-44
gen_47_32(3)<= NOT g_32(11);  




-- gen_63_48
CARRY4_63_48: CARRY4 port map (
 CO => CO(15 downto 12),
 O => O(15 downto 12),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_63_48
  );
-- g15-12 p31-28 p47-44 p63-60 
gen_63_48(0)<= NOT (g_32(12) AND p_32(15) AND p_32(14) AND p_32(13)); 
-- g31-29 p47-44 p63-60
gen_63_48(1)<= NOT (g_32(13) AND p_32(15) AND p_32(14)); 
-- g47-44 p63-60
gen_63_48(2)<= NOT (g_32(14) AND p_32(15)); 
-- g63-60
gen_63_48(3)<= NOT g_32(15);  




-- gen_79_64
CARRY4_79_64: CARRY4 port map (
 CO => CO(19 downto 16),
 O => O(19 downto 16),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_79_64
  );
-- g19-16 p39-36 p59-56 p79-76 
gen_79_64(0)<= NOT (g_32(16) AND p_32(19) AND p_32(18) AND p_32(17)); 
-- g39-37 p59-56 p79-76
gen_79_64(1)<= NOT (g_32(17) AND p_32(19) AND p_32(18)); 
-- g59-56 p79-76
gen_79_64(2)<= NOT (g_32(18) AND p_32(19)); 
-- g79-76
gen_79_64(3)<= NOT g_32(19);  




-- gen_95_80
CARRY4_95_80: CARRY4 port map (
 CO => CO(23 downto 20),
 O => O(23 downto 20),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_95_80
  );
-- g23-20 p47-44 p71-68 p95-92 
gen_95_80(0)<= NOT (g_32(20) AND p_32(23) AND p_32(22) AND p_32(21)); 
-- g47-45 p71-68 p95-92
gen_95_80(1)<= NOT (g_32(21) AND p_32(23) AND p_32(22)); 
-- g71-68 p95-92
gen_95_80(2)<= NOT (g_32(22) AND p_32(23)); 
-- g95-92
gen_95_80(3)<= NOT g_32(23);  




-- gen_111_96
CARRY4_111_96: CARRY4 port map (
 CO => CO(27 downto 24),
 O => O(27 downto 24),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_111_96
  );
-- g27-24 p55-52 p83-80 p111-108 
gen_111_96(0)<= NOT (g_32(24) AND p_32(27) AND p_32(26) AND p_32(25)); 
-- g55-53 p83-80 p111-108
gen_111_96(1)<= NOT (g_32(25) AND p_32(27) AND p_32(26)); 
-- g83-80 p111-108
gen_111_96(2)<= NOT (g_32(26) AND p_32(27)); 
-- g111-108
gen_111_96(3)<= NOT g_32(27);  




-- gen_127_112
CARRY4_127_112: CARRY4 port map (
 CO => CO(31 downto 28),
 O => O(31 downto 28),
 CI => '0',
 CYINIT => '0',
 DI => "1111",
 S => gen_127_112
  );
-- g31-28 p63-60 p95-92 p127-124 
gen_127_112(0)<= NOT (g_32(28) AND p_32(31) AND p_32(30) AND p_32(29)); 
-- g63-61 p95-92 p127-124
gen_127_112(1)<= NOT (g_32(29) AND p_32(31) AND p_32(30)); 
-- g95-92 p127-124
gen_127_112(2)<= NOT (g_32(30) AND p_32(31)); 
-- g127-124
gen_127_112(3)<= NOT g_32(31);  




g_8(0) <= CO(3);
g_8(1) <= CO(7);
g_8(2) <= CO(11);
g_8(3) <= CO(15);
g_8(4) <= CO(19);
g_8(5) <= CO(23);
g_8(6) <= CO(27);
g_8(7) <= CO(31);


end Behavioral;

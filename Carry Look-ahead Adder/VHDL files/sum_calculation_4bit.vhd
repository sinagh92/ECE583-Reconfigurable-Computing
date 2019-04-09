----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2018 03:01:36 PM
-- Design Name: 
-- Module Name: sum_calculation_4bit - Behavioral
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

entity sum_calculation_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           c_in : in STD_LOGIC;
           c_out : in STD_LOGIC_VECTOR (31 downto 0);
           sum : out STD_LOGIC_VECTOR(127 downto 0));
end sum_calculation_4bit;

architecture Behavioral of sum_calculation_4bit is
signal xy_xor: std_logic_vector (127 downto 0);
signal CO: std_logic_vector(127 downto 0);
begin
--sum 3-0
CARRY4_SUM_3_0: CARRY4 port map ( 
 CO => CO(3 downto 0),
 O => sum(3 downto 0),
 CI => '0',
 CYINIT => '0',
 DI => Y_128(3 DOWNTO 0),
 S => xy_xor(3 downto 0)
  );


--sum 7-4
CARRY4_SUM_7_4: CARRY4 port map ( 
 CO => CO(7 downto 4),
 O => sum(7 downto 4),
 CI => c_out(0),
 CYINIT => '0',
 DI => Y_128(7 DOWNTO 4),
 S => xy_xor(7 downto 4)
  );


--sum 11-8
CARRY4_SUM_11_8: CARRY4 port map ( 
 CO => CO(11 downto 8),
 O => sum(11 downto 8),
 CI => c_out(1),
 CYINIT => '0',
 DI => Y_128(11 DOWNTO 8),
 S => xy_xor(11 downto 8)
  );


--sum 15-12
CARRY4_SUM_15_12: CARRY4 port map ( 
 CO => CO(15 downto 12),
 O => sum(15 downto 12),
 CI => c_out(2),
 CYINIT => '0',
 DI => Y_128(15 DOWNTO 12),
 S => xy_xor(15 downto 12)
  );


--sum 19-16
CARRY4_SUM_19_16: CARRY4 port map ( 
 CO => CO(19 downto 16),
 O => sum(19 downto 16),
 CI => c_out(3),
 CYINIT => '0',
 DI => Y_128(19 DOWNTO 16),
 S => xy_xor(19 downto 16)
  );


--sum 23-20
CARRY4_SUM_23_20: CARRY4 port map ( 
 CO => CO(23 downto 20),
 O => sum(23 downto 20),
 CI => c_out(4),
 CYINIT => '0',
 DI => Y_128(23 DOWNTO 20),
 S => xy_xor(23 downto 20)
  );


--sum 27-24
CARRY4_SUM_27_24: CARRY4 port map ( 
 CO => CO(27 downto 24),
 O => sum(27 downto 24),
 CI => c_out(5),
 CYINIT => '0',
 DI => Y_128(27 DOWNTO 24),
 S => xy_xor(27 downto 24)
  );


--sum 31-28
CARRY4_SUM_31_28: CARRY4 port map ( 
 CO => CO(31 downto 28),
 O => sum(31 downto 28),
 CI => c_out(6),
 CYINIT => '0',
 DI => Y_128(31 DOWNTO 28),
 S => xy_xor(31 downto 28)
  );


--sum 35-32
CARRY4_SUM_35_32: CARRY4 port map ( 
 CO => CO(35 downto 32),
 O => sum(35 downto 32),
 CI => c_out(7),
 CYINIT => '0',
 DI => Y_128(35 DOWNTO 32),
 S => xy_xor(35 downto 32)
  );


--sum 39-36
CARRY4_SUM_39_36: CARRY4 port map ( 
 CO => CO(39 downto 36),
 O => sum(39 downto 36),
 CI => c_out(8),
 CYINIT => '0',
 DI => Y_128(39 DOWNTO 36),
 S => xy_xor(39 downto 36)
  );


--sum 43-40
CARRY4_SUM_43_40: CARRY4 port map ( 
 CO => CO(43 downto 40),
 O => sum(43 downto 40),
 CI => c_out(9),
 CYINIT => '0',
 DI => Y_128(43 DOWNTO 40),
 S => xy_xor(43 downto 40)
  );


--sum 47-44
CARRY4_SUM_47_44: CARRY4 port map ( 
 CO => CO(47 downto 44),
 O => sum(47 downto 44),
 CI => c_out(10),
 CYINIT => '0',
 DI => Y_128(47 DOWNTO 44),
 S => xy_xor(47 downto 44)
  );


--sum 51-48
CARRY4_SUM_51_48: CARRY4 port map ( 
 CO => CO(51 downto 48),
 O => sum(51 downto 48),
 CI => c_out(11),
 CYINIT => '0',
 DI => Y_128(51 DOWNTO 48),
 S => xy_xor(51 downto 48)
  );


--sum 55-52
CARRY4_SUM_55_52: CARRY4 port map ( 
 CO => CO(55 downto 52),
 O => sum(55 downto 52),
 CI => c_out(12),
 CYINIT => '0',
 DI => Y_128(55 DOWNTO 52),
 S => xy_xor(55 downto 52)
  );


--sum 59-56
CARRY4_SUM_59_56: CARRY4 port map ( 
 CO => CO(59 downto 56),
 O => sum(59 downto 56),
 CI => c_out(13),
 CYINIT => '0',
 DI => Y_128(59 DOWNTO 56),
 S => xy_xor(59 downto 56)
  );


--sum 63-60
CARRY4_SUM_63_60: CARRY4 port map ( 
 CO => CO(63 downto 60),
 O => sum(63 downto 60),
 CI => c_out(14),
 CYINIT => '0',
 DI => Y_128(63 DOWNTO 60),
 S => xy_xor(63 downto 60)
  );


--sum 67-64
CARRY4_SUM_67_64: CARRY4 port map ( 
 CO => CO(67 downto 64),
 O => sum(67 downto 64),
 CI => c_out(15),
 CYINIT => '0',
 DI => Y_128(67 DOWNTO 64),
 S => xy_xor(67 downto 64)
  );


--sum 71-68
CARRY4_SUM_71_68: CARRY4 port map ( 
 CO => CO(71 downto 68),
 O => sum(71 downto 68),
 CI => c_out(16),
 CYINIT => '0',
 DI => Y_128(71 DOWNTO 68),
 S => xy_xor(71 downto 68)
  );


--sum 75-72
CARRY4_SUM_75_72: CARRY4 port map ( 
 CO => CO(75 downto 72),
 O => sum(75 downto 72),
 CI => c_out(17),
 CYINIT => '0',
 DI => Y_128(75 DOWNTO 72),
 S => xy_xor(75 downto 72)
  );


--sum 79-76
CARRY4_SUM_79_76: CARRY4 port map ( 
 CO => CO(79 downto 76),
 O => sum(79 downto 76),
 CI => c_out(18),
 CYINIT => '0',
 DI => Y_128(79 DOWNTO 76),
 S => xy_xor(79 downto 76)
  );


--sum 83-80
CARRY4_SUM_83_80: CARRY4 port map ( 
 CO => CO(83 downto 80),
 O => sum(83 downto 80),
 CI => c_out(19),
 CYINIT => '0',
 DI => Y_128(83 DOWNTO 80),
 S => xy_xor(83 downto 80)
  );


--sum 87-84
CARRY4_SUM_87_84: CARRY4 port map ( 
 CO => CO(87 downto 84),
 O => sum(87 downto 84),
 CI => c_out(20),
 CYINIT => '0',
 DI => Y_128(87 DOWNTO 84),
 S => xy_xor(87 downto 84)
  );


--sum 91-88
CARRY4_SUM_91_88: CARRY4 port map ( 
 CO => CO(91 downto 88),
 O => sum(91 downto 88),
 CI => c_out(21),
 CYINIT => '0',
 DI => Y_128(91 DOWNTO 88),
 S => xy_xor(91 downto 88)
  );


--sum 95-92
CARRY4_SUM_95_92: CARRY4 port map ( 
 CO => CO(95 downto 92),
 O => sum(95 downto 92),
 CI => c_out(22),
 CYINIT => '0',
 DI => Y_128(95 DOWNTO 92),
 S => xy_xor(95 downto 92)
  );


--sum 99-96
CARRY4_SUM_99_96: CARRY4 port map ( 
 CO => CO(99 downto 96),
 O => sum(99 downto 96),
 CI => c_out(23),
 CYINIT => '0',
 DI => Y_128(99 DOWNTO 96),
 S => xy_xor(99 downto 96)
  );


--sum 103-100
CARRY4_SUM_103_100: CARRY4 port map ( 
 CO => CO(103 downto 100),
 O => sum(103 downto 100),
 CI => c_out(24),
 CYINIT => '0',
 DI => Y_128(103 DOWNTO 100),
 S => xy_xor(103 downto 100)
  );


--sum 107-104
CARRY4_SUM_107_104: CARRY4 port map ( 
 CO => CO(107 downto 104),
 O => sum(107 downto 104),
 CI => c_out(25),
 CYINIT => '0',
 DI => Y_128(107 DOWNTO 104),
 S => xy_xor(107 downto 104)
  );


--sum 111-108
CARRY4_SUM_111_108: CARRY4 port map ( 
 CO => CO(111 downto 108),
 O => sum(111 downto 108),
 CI => c_out(26),
 CYINIT => '0',
 DI => Y_128(111 DOWNTO 108),
 S => xy_xor(111 downto 108)
  );


--sum 115-112
CARRY4_SUM_115_112: CARRY4 port map ( 
 CO => CO(115 downto 112),
 O => sum(115 downto 112),
 CI => c_out(27),
 CYINIT => '0',
 DI => Y_128(115 DOWNTO 112),
 S => xy_xor(115 downto 112)
  );


--sum 119-116
CARRY4_SUM_119_116: CARRY4 port map ( 
 CO => CO(119 downto 116),
 O => sum(119 downto 116),
 CI => c_out(28),
 CYINIT => '0',
 DI => Y_128(119 DOWNTO 116),
 S => xy_xor(119 downto 116)
  );


--sum 123-120
CARRY4_SUM_123_120: CARRY4 port map ( 
 CO => CO(123 downto 120),
 O => sum(123 downto 120),
 CI => c_out(29),
 CYINIT => '0',
 DI => Y_128(123 DOWNTO 120),
 S => xy_xor(123 downto 120)
  );


--sum 127-124
CARRY4_SUM_127_124: CARRY4 port map ( 
 CO => CO(127 downto 124),
 O => sum(127 downto 124),
 CI => c_out(30),
 CYINIT => '0',
 DI => Y_128(127 DOWNTO 124),
 S => xy_xor(127 downto 124)
  );

               
  xy_xor(3 downto 0) <= x_128(3 downto 0) XOR y_128(3 downto 0);
  xy_xor(7 downto 4) <= x_128(7 downto 4) XOR y_128(7 downto 4);
  xy_xor(11 downto 8) <= x_128(11 downto 8) XOR y_128(11 downto 8);
  xy_xor(15 downto 12) <= x_128(15 downto 12) XOR y_128(15 downto 12);
  xy_xor(19 downto 16) <= x_128(19 downto 16) XOR y_128(19 downto 16);
  xy_xor(23 downto 20) <= x_128(23 downto 20) XOR y_128(23 downto 20);
  xy_xor(27 downto 24) <= x_128(27 downto 24) XOR y_128(27 downto 24);
  xy_xor(31 downto 28) <= x_128(31 downto 28) XOR y_128(31 downto 28);
  xy_xor(35 downto 32) <= x_128(35 downto 32) XOR y_128(35 downto 32);
  xy_xor(39 downto 36) <= x_128(39 downto 36) XOR y_128(39 downto 36);
  xy_xor(43 downto 40) <= x_128(43 downto 40) XOR y_128(43 downto 40);
  xy_xor(47 downto 44) <= x_128(47 downto 44) XOR y_128(47 downto 44);
  xy_xor(51 downto 48) <= x_128(51 downto 48) XOR y_128(51 downto 48);
  xy_xor(55 downto 52) <= x_128(55 downto 52) XOR y_128(55 downto 52);
  xy_xor(59 downto 56) <= x_128(59 downto 56) XOR y_128(59 downto 56);
  xy_xor(63 downto 60) <= x_128(63 downto 60) XOR y_128(63 downto 60);
  xy_xor(67 downto 64) <= x_128(67 downto 64) XOR y_128(67 downto 64);
  xy_xor(71 downto 68) <= x_128(71 downto 68) XOR y_128(71 downto 68);
  xy_xor(75 downto 72) <= x_128(75 downto 72) XOR y_128(75 downto 72);
  xy_xor(79 downto 76) <= x_128(79 downto 76) XOR y_128(79 downto 76);
  xy_xor(83 downto 80) <= x_128(83 downto 80) XOR y_128(83 downto 80);
  xy_xor(87 downto 84) <= x_128(87 downto 84) XOR y_128(87 downto 84);
  xy_xor(91 downto 88) <= x_128(91 downto 88) XOR y_128(91 downto 88);
  xy_xor(95 downto 92) <= x_128(95 downto 92) XOR y_128(95 downto 92);
  xy_xor(99 downto 96) <= x_128(99 downto 96) XOR y_128(99 downto 96);
  xy_xor(103 downto 100) <= x_128(103 downto 100) XOR y_128(103 downto 100);
  xy_xor(107 downto 104) <= x_128(107 downto 104) XOR y_128(107 downto 104);
  xy_xor(111 downto 108) <= x_128(111 downto 108) XOR y_128(111 downto 108);
  xy_xor(115 downto 112) <= x_128(115 downto 112) XOR y_128(115 downto 112);
  xy_xor(119 downto 116) <= x_128(119 downto 116) XOR y_128(119 downto 116);
  xy_xor(123 downto 120) <= x_128(123 downto 120) XOR y_128(123 downto 120);
  xy_xor(127 downto 124) <= x_128(127 downto 124) XOR y_128(127 downto 124);
  
end Behavioral;

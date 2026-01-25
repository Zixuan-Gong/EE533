--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : add_8b.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/add_8b.sch" add_8b.vhf
--Design Name: add_8b
--Device: virtex2p
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity add_8b is
   port ( A    : in    std_logic_vector (7 downto 0); 
          B    : in    std_logic_vector (7 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          S    : out   std_logic_vector (7 downto 0));
end add_8b;

architecture BEHAVIORAL of add_8b is
   signal XLXN_3  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   component add_1b
      port ( A    : in    std_logic; 
             S    : out   std_logic; 
             Cout : out   std_logic; 
             B    : in    std_logic; 
             C    : in    std_logic);
   end component;
   
begin
   XLXI_1 : add_1b
      port map (A=>A(0),
                B=>B(0),
                C=>Cin,
                Cout=>XLXN_8,
                S=>S(0));
   
   XLXI_2 : add_1b
      port map (A=>A(1),
                B=>B(1),
                C=>XLXN_8,
                Cout=>XLXN_3,
                S=>S(1));
   
   XLXI_3 : add_1b
      port map (A=>A(2),
                B=>B(2),
                C=>XLXN_3,
                Cout=>XLXN_47,
                S=>S(2));
   
   XLXI_4 : add_1b
      port map (A=>A(3),
                B=>B(3),
                C=>XLXN_47,
                Cout=>XLXN_18,
                S=>S(3));
   
   XLXI_7 : add_1b
      port map (A=>A(4),
                B=>B(4),
                C=>XLXN_18,
                Cout=>XLXN_15,
                S=>S(4));
   
   XLXI_8 : add_1b
      port map (A=>A(6),
                B=>B(6),
                C=>XLXN_13,
                Cout=>XLXN_48,
                S=>S(6));
   
   XLXI_9 : add_1b
      port map (A=>A(5),
                B=>B(5),
                C=>XLXN_15,
                Cout=>XLXN_13,
                S=>S(5));
   
   XLXI_10 : add_1b
      port map (A=>A(7),
                B=>B(7),
                C=>XLXN_48,
                Cout=>Cout,
                S=>S(7));
   
end BEHAVIORAL;



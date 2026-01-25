--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : add32.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/add32.sch" add32.vhf
--Design Name: add32
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

entity add32 is
   port ( A    : in    std_logic_vector (31 downto 0); 
          B    : in    std_logic_vector (31 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          S    : out   std_logic_vector (31 downto 0));
end add32;

architecture BEHAVIORAL of add32 is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component add_8b
      port ( Cin  : in    std_logic; 
             A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             S    : out   std_logic_vector (7 downto 0); 
             Cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : add_8b
      port map (A(7 downto 0)=>A(7 downto 0),
                B(7 downto 0)=>B(7 downto 0),
                Cin=>Cin,
                Cout=>XLXN_1,
                S(7 downto 0)=>S(7 downto 0));
   
   XLXI_2 : add_8b
      port map (A(7 downto 0)=>A(15 downto 8),
                B(7 downto 0)=>B(15 downto 8),
                Cin=>XLXN_1,
                Cout=>XLXN_2,
                S(7 downto 0)=>S(15 downto 8));
   
   XLXI_3 : add_8b
      port map (A(7 downto 0)=>A(23 downto 16),
                B(7 downto 0)=>B(23 downto 16),
                Cin=>XLXN_2,
                Cout=>XLXN_3,
                S(7 downto 0)=>S(23 downto 16));
   
   XLXI_4 : add_8b
      port map (A(7 downto 0)=>A(31 downto 24),
                B(7 downto 0)=>B(31 downto 24),
                Cin=>XLXN_3,
                Cout=>Cout,
                S(7 downto 0)=>S(31 downto 24));
   
end BEHAVIORAL;



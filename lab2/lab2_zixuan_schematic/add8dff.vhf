--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : add8dff.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/add8dff.sch" add8dff.vhf
--Design Name: add8dff
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

entity add8dff is
   port ( A   : in    std_logic_vector (7 downto 0); 
          B   : in    std_logic_vector (7 downto 0); 
          CLK : in    std_logic; 
          C   : out   std_logic_vector (7 downto 0));
end add8dff;

architecture BEHAVIORAL of add8dff is
   signal XLXN_1 : std_logic_vector (7 downto 0);
   signal XLXN_2 : std_logic_vector (7 downto 0);
   signal XLXN_4 : std_logic_vector (7 downto 0);
   component add_8b
      port ( Cin  : in    std_logic; 
             A    : in    std_logic_vector (7 downto 0); 
             B    : in    std_logic_vector (7 downto 0); 
             S    : out   std_logic_vector (7 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component DFF8
      port ( Din : in    std_logic_vector (7 downto 0); 
             CLK : in    std_logic; 
             Qo  : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : add_8b
      port map (A(7 downto 0)=>XLXN_1(7 downto 0),
                B(7 downto 0)=>XLXN_2(7 downto 0),
                Cin=>CLK,
                Cout=>open,
                S(7 downto 0)=>XLXN_4(7 downto 0));
   
   XLXI_2 : DFF8
      port map (CLK=>CLK,
                Din(7 downto 0)=>A(7 downto 0),
                Qo(7 downto 0)=>XLXN_1(7 downto 0));
   
   XLXI_3 : DFF8
      port map (CLK=>CLK,
                Din(7 downto 0)=>B(7 downto 0),
                Qo(7 downto 0)=>XLXN_2(7 downto 0));
   
   XLXI_4 : DFF8
      port map (CLK=>CLK,
                Din(7 downto 0)=>XLXN_4(7 downto 0),
                Qo(7 downto 0)=>C(7 downto 0));
   
end BEHAVIORAL;



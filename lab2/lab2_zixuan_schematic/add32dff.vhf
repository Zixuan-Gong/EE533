--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : add32dff.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/add32dff.sch" add32dff.vhf
--Design Name: add32dff
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

entity add32dff is
   port ( A   : in    std_logic_vector (31 downto 0); 
          B   : in    std_logic_vector (31 downto 0); 
          CLK : in    std_logic; 
          C   : out   std_logic_vector (31 downto 0));
end add32dff;

architecture BEHAVIORAL of add32dff is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_3 : std_logic_vector (31 downto 0);
   signal XLXN_4 : std_logic_vector (31 downto 0);
   signal XLXN_5 : std_logic_vector (31 downto 0);
   component add32
      port ( A    : in    std_logic_vector (31 downto 0); 
             B    : in    std_logic_vector (31 downto 0); 
             Cin  : in    std_logic; 
             S    : out   std_logic_vector (31 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component DFF32
      port ( CLK : in    std_logic; 
             Din : in    std_logic_vector (31 downto 0); 
             Do  : out   std_logic_vector (31 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : add32
      port map (A(31 downto 0)=>XLXN_4(31 downto 0),
                B(31 downto 0)=>XLXN_3(31 downto 0),
                Cin=>XLXN_1,
                Cout=>open,
                S(31 downto 0)=>XLXN_5(31 downto 0));
   
   XLXI_2 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>A(31 downto 0),
                Do(31 downto 0)=>XLXN_4(31 downto 0));
   
   XLXI_3 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>B(31 downto 0),
                Do(31 downto 0)=>XLXN_3(31 downto 0));
   
   XLXI_4 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>XLXN_5(31 downto 0),
                Do(31 downto 0)=>C(31 downto 0));
   
   XLXI_5 : GND
      port map (G=>XLXN_1);
   
end BEHAVIORAL;



--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DFF32.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/DFF32.sch" DFF32.vhf
--Design Name: DFF32
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

entity DFF32 is
   port ( CLK : in    std_logic; 
          Din : in    std_logic_vector (31 downto 0); 
          Do  : out   std_logic_vector (31 downto 0));
end DFF32;

architecture BEHAVIORAL of DFF32 is
   component DFF16
      port ( CLK : in    std_logic; 
             Din : in    std_logic_vector (15 downto 0); 
             Do  : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_1 : DFF16
      port map (CLK=>CLK,
                Din(15 downto 0)=>Din(15 downto 0),
                Do(15 downto 0)=>Do(15 downto 0));
   
   XLXI_2 : DFF16
      port map (CLK=>CLK,
                Din(15 downto 0)=>Din(31 downto 16),
                Do(15 downto 0)=>Do(31 downto 16));
   
end BEHAVIORAL;



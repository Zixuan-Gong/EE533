--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : ALU32DFF.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/ALU32DFF.sch" ALU32DFF.vhf
--Design Name: ALU32DFF
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

entity ALU32DFF is
   port ( Ai  : in    std_logic_vector (31 downto 0); 
          Bi  : in    std_logic_vector (31 downto 0); 
          CLK : in    std_logic; 
          OP  : in    std_logic_vector (2 downto 0); 
          S   : out   std_logic_vector (31 downto 0));
end ALU32DFF;

architecture BEHAVIORAL of ALU32DFF is
   signal XLXN_7  : std_logic_vector (31 downto 0);
   signal XLXN_8  : std_logic_vector (31 downto 0);
   signal XLXN_9  : std_logic_vector (2 downto 0);
   signal XLXN_10 : std_logic_vector (31 downto 0);
   component Alu32_sch
      port ( OP   : in    std_logic_vector (2 downto 0); 
             B    : in    std_logic_vector (31 downto 0); 
             A    : in    std_logic_vector (31 downto 0); 
             Rout : out   std_logic_vector (31 downto 0));
   end component;
   
   component DFF32
      port ( CLK : in    std_logic; 
             Din : in    std_logic_vector (31 downto 0); 
             Do  : out   std_logic_vector (31 downto 0));
   end component;
   
   component DFF3
      port ( CLK : in    std_logic; 
             Di  : in    std_logic_vector (2 downto 0); 
             Qo  : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_1 : Alu32_sch
      port map (A(31 downto 0)=>XLXN_7(31 downto 0),
                B(31 downto 0)=>XLXN_8(31 downto 0),
                OP(2 downto 0)=>XLXN_9(2 downto 0),
                Rout(31 downto 0)=>XLXN_10(31 downto 0));
   
   XLXI_2 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>Ai(31 downto 0),
                Do(31 downto 0)=>XLXN_7(31 downto 0));
   
   XLXI_3 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>Bi(31 downto 0),
                Do(31 downto 0)=>XLXN_8(31 downto 0));
   
   XLXI_4 : DFF32
      port map (CLK=>CLK,
                Din(31 downto 0)=>XLXN_10(31 downto 0),
                Do(31 downto 0)=>S(31 downto 0));
   
   XLXI_5 : DFF3
      port map (CLK=>CLK,
                Di(2 downto 0)=>OP(2 downto 0),
                Qo(2 downto 0)=>XLXN_9(2 downto 0));
   
end BEHAVIORAL;



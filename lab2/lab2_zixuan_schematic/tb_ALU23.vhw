--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_ALU23.vhw
-- /___/   /\     Timestamp : Fri Jan 23 21:36:02 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_ALU23
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_ALU23 IS
END tb_ALU23;

ARCHITECTURE testbench_arch OF tb_ALU23 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Alu32_sch
        PORT (
            A : In std_logic_vector (31 DownTo 0);
            B : In std_logic_vector (31 DownTo 0);
            OP : In std_logic_vector (2 DownTo 0);
            bi : Out std_logic_vector (31 DownTo 0);
            bo : Out std_logic_vector (31 DownTo 0);
            Rout : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL B : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL OP : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL bi : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL bo : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Rout : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : Alu32_sch
        PORT MAP (
            A => A,
            B => B,
            OP => OP,
            bi => bi,
            bo => bo,
            Rout => Rout
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A <= "11111111111111111111111111111111";
                OP <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 200 ns;
                OP <= "011";
                -- -------------------------------------
                WAIT FOR 700 ns;

            END PROCESS;

    END testbench_arch;


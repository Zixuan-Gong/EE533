--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_alu32dff.vhw
-- /___/   /\     Timestamp : Sat Jan 24 16:35:52 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_alu32dff
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

ENTITY tb_alu32dff IS
END tb_alu32dff;

ARCHITECTURE testbench_arch OF tb_alu32dff IS
    COMPONENT ALU32DFF
        PORT (
            Ai : In std_logic_vector (31 DownTo 0);
            Bi : In std_logic_vector (31 DownTo 0);
            CLK : In std_logic;
            OP : In std_logic_vector (2 DownTo 0);
            S : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL Ai : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Bi : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL CLK : std_logic := '0';
    SIGNAL OP : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL S : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 200 ns;

    BEGIN
        UUT : ALU32DFF
        PORT MAP (
            Ai => Ai,
            Bi => Bi,
            CLK => CLK,
            OP => OP,
            S => S
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  199ns
                WAIT FOR 199 ns;
                Bi <= "00010010001101000101011001111000";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 0 ns;
                Ai <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 285 ns;
                Ai <= "00010010001101000101011001111000";
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                Ai <= "10101011110011011110111100010010";
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 200 ns;
                Ai <= "11111111111111111111111111111111";
                OP <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 200 ns;
                Ai <= "00010010001101000101011001111000";
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                Ai <= "10000111011001010100001100100001";
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                Ai <= "00010001000100010001000100010001";
                -- -------------------------------------
                -- -------------  Current Time:  1685ns
                WAIT FOR 200 ns;
                OP <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  2085ns
                WAIT FOR 400 ns;
                OP <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  2485ns
                WAIT FOR 400 ns;
                OP <= "100";
                -- -------------------------------------
                -- -------------  Current Time:  2885ns
                WAIT FOR 400 ns;
                OP <= "101";
                -- -------------------------------------
                -- -------------  Current Time:  3285ns
                WAIT FOR 400 ns;
                Bi <= "00010001000100010001000100010001";
                OP <= "110";
                -- -------------------------------------
                -- -------------  Current Time:  3685ns
                WAIT FOR 400 ns;
                Ai <= "11111111111111111111111111111111";
                Bi <= "11111111111111111111111111111111";
                -- -------------------------------------
                WAIT FOR 1515 ns;

            END PROCESS;

    END testbench_arch;


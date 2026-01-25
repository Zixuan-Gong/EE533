VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL CLK
        SIGNAL Ai(31:0)
        SIGNAL Bi(31:0)
        SIGNAL OP(2:0)
        SIGNAL XLXN_7(31:0)
        SIGNAL XLXN_8(31:0)
        SIGNAL XLXN_9(2:0)
        SIGNAL XLXN_10(31:0)
        SIGNAL S(31:0)
        PORT Input CLK
        PORT Input Ai(31:0)
        PORT Input Bi(31:0)
        PORT Input OP(2:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF Alu32_sch
            TIMESTAMP 2026 1 24 7 2 34
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -192 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF32
            TIMESTAMP 2026 1 24 7 1 46
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF3
            TIMESTAMP 2026 1 24 7 6 42
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Alu32_sch
            PIN OP(2:0) XLXN_9(2:0)
            PIN B(31:0) XLXN_8(31:0)
            PIN A(31:0) XLXN_7(31:0)
            PIN Rout(31:0) XLXN_10(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF32
            PIN CLK CLK
            PIN Din(31:0) Ai(31:0)
            PIN Do(31:0) XLXN_7(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF32
            PIN CLK CLK
            PIN Din(31:0) Bi(31:0)
            PIN Do(31:0) XLXN_8(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 DFF32
            PIN CLK CLK
            PIN Din(31:0) XLXN_10(31:0)
            PIN Do(31:0) S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 DFF3
            PIN CLK CLK
            PIN Di(2:0) OP(2:0)
            PIN Qo(2:0) XLXN_9(2:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1264 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 672 688 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 672 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1728 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 672 1088 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 400 544 592 544
            WIRE 592 544 592 592
            WIRE 592 592 672 592
            WIRE 592 592 592 784
            WIRE 592 784 672 784
            WIRE 592 784 592 992
            WIRE 592 992 672 992
            WIRE 592 544 1712 544
            WIRE 1712 544 1712 816
            WIRE 1712 816 1728 816
        END BRANCH
        IOMARKER 400 544 CLK R180 28
        BEGIN BRANCH Ai(31:0)
            WIRE 400 656 672 656
        END BRANCH
        BEGIN BRANCH Bi(31:0)
            WIRE 416 848 672 848
        END BRANCH
        BEGIN BRANCH OP(2:0)
            WIRE 400 1056 672 1056
        END BRANCH
        BEGIN BRANCH XLXN_7(31:0)
            WIRE 1056 592 1152 592
            WIRE 1152 592 1152 688
            WIRE 1152 688 1264 688
        END BRANCH
        BEGIN BRANCH XLXN_8(31:0)
            WIRE 1056 784 1152 784
            WIRE 1152 752 1152 784
            WIRE 1152 752 1264 752
        END BRANCH
        BEGIN BRANCH XLXN_9(2:0)
            WIRE 1056 992 1152 992
            WIRE 1152 816 1152 992
            WIRE 1152 816 1264 816
        END BRANCH
        BEGIN BRANCH XLXN_10(31:0)
            WIRE 1648 880 1728 880
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 2112 816 2352 816
        END BRANCH
        IOMARKER 400 656 Ai(31:0) R180 28
        IOMARKER 416 848 Bi(31:0) R180 28
        IOMARKER 400 1056 OP(2:0) R180 28
        IOMARKER 2352 816 S(31:0) R0 28
    END SHEET
END SCHEMATIC

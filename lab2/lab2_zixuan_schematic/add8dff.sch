VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(7:0)
        SIGNAL XLXN_2(7:0)
        SIGNAL XLXN_4(7:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL CLK
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL C(7:0)
        PORT Input CLK
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output C(7:0)
        BEGIN BLOCKDEF add_8b
            TIMESTAMP 2026 1 24 1 4 30
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF8
            TIMESTAMP 2026 1 24 6 53 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add_8b
            PIN Cin CLK
            PIN A(7:0) XLXN_1(7:0)
            PIN B(7:0) XLXN_2(7:0)
            PIN S(7:0) XLXN_4(7:0)
            PIN Cout
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF8
            PIN Din(7:0) A(7:0)
            PIN CLK CLK
            PIN Qo(7:0) XLXN_1(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF8
            PIN Din(7:0) B(7:0)
            PIN CLK CLK
            PIN Qo(7:0) XLXN_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 DFF8
            PIN Din(7:0) XLXN_4(7:0)
            PIN CLK CLK
            PIN Qo(7:0) C(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1488 656 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 896 656 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 896 816 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2048 592 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(7:0)
            WIRE 1280 560 1488 560
        END BRANCH
        BEGIN BRANCH XLXN_2(7:0)
            WIRE 1280 720 1376 720
            WIRE 1376 624 1376 720
            WIRE 1376 624 1488 624
        END BRANCH
        BEGIN BRANCH XLXN_4(7:0)
            WIRE 1872 496 2048 496
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 688 496 784 496
            WIRE 784 496 1488 496
            WIRE 784 496 784 624
            WIRE 784 624 896 624
            WIRE 784 624 784 784
            WIRE 784 784 896 784
            WIRE 784 784 784 880
            WIRE 784 880 1936 880
            WIRE 1936 560 1936 880
            WIRE 1936 560 2048 560
        END BRANCH
        IOMARKER 688 496 CLK R180 28
        BEGIN BRANCH A(7:0)
            WIRE 864 560 896 560
        END BRANCH
        IOMARKER 864 560 A(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 864 720 896 720
        END BRANCH
        IOMARKER 864 720 B(7:0) R180 28
        BEGIN BRANCH C(7:0)
            WIRE 2432 496 2464 496
        END BRANCH
        IOMARKER 2464 496 C(7:0) R0 28
    END SHEET
END SCHEMATIC

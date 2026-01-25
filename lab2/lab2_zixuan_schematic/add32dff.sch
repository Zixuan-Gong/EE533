VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_3(31:0)
        SIGNAL XLXN_4(31:0)
        SIGNAL XLXN_5(31:0)
        SIGNAL CLK
        SIGNAL XLXN_7
        SIGNAL C(31:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        PORT Input CLK
        PORT Output C(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        BEGIN BLOCKDEF add32
            TIMESTAMP 2026 1 24 1 32 17
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
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
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add32
            PIN A(31:0) XLXN_4(31:0)
            PIN B(31:0) XLXN_3(31:0)
            PIN Cin XLXN_1
            PIN S(31:0) XLXN_5(31:0)
            PIN Cout
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF32
            PIN CLK CLK
            PIN Din(31:0) A(31:0)
            PIN Do(31:0) XLXN_4(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF32
            PIN CLK CLK
            PIN Din(31:0) B(31:0)
            PIN Do(31:0) XLXN_3(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 DFF32
            PIN CLK CLK
            PIN Din(31:0) XLXN_5(31:0)
            PIN Do(31:0) C(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 gnd
            PIN G XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 656 624 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 656 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1920 640 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1280 672 1280 688
            WIRE 1280 688 1280 704
        END BRANCH
        INSTANCE XLXI_5 1216 832 R0
        BEGIN BRANCH XLXN_3(31:0)
            WIRE 1040 704 1152 704
            WIRE 1152 608 1152 704
            WIRE 1152 608 1280 608
        END BRANCH
        BEGIN BRANCH XLXN_4(31:0)
            WIRE 1040 528 1152 528
            WIRE 1152 528 1152 544
            WIRE 1152 544 1280 544
        END BRANCH
        BEGIN BRANCH XLXN_5(31:0)
            WIRE 1664 544 1792 544
            WIRE 1792 544 1792 608
            WIRE 1792 608 1920 608
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 480 368 640 368
            WIRE 640 368 656 368
            WIRE 656 368 1872 368
            WIRE 1872 368 1872 544
            WIRE 1872 544 1920 544
            WIRE 640 368 640 528
            WIRE 640 528 656 528
            WIRE 640 528 640 704
            WIRE 640 704 656 704
        END BRANCH
        BEGIN BRANCH C(31:0)
            WIRE 2304 544 2528 544
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 464 592 656 592
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 464 768 656 768
        END BRANCH
        IOMARKER 464 592 A(31:0) R180 28
        IOMARKER 464 768 B(31:0) R180 28
        IOMARKER 2528 544 C(31:0) R0 28
        IOMARKER 480 368 CLK R180 28
    END SHEET
END SCHEMATIC

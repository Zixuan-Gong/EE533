VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_6
        SIGNAL XLXN_3
        SIGNAL XLXN_8
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL Cin
        SIGNAL A(7:0)
        SIGNAL S(7:0)
        SIGNAL Cout
        SIGNAL B(0)
        SIGNAL A(0)
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL A(1)
        SIGNAL A(2)
        SIGNAL B(3)
        SIGNAL A(3)
        SIGNAL S(3)
        SIGNAL B(4)
        SIGNAL A(4)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL B(5)
        SIGNAL A(5)
        SIGNAL B(6)
        SIGNAL A(6)
        SIGNAL XLXN_43
        SIGNAL B(7)
        SIGNAL S(7)
        SIGNAL A(7)
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL S(6)
        SIGNAL B(7:0)
        SIGNAL B(1)
        SIGNAL B(2)
        SIGNAL S(2)
        PORT Input Cin
        PORT Input A(7:0)
        PORT Output S(7:0)
        PORT Output Cout
        PORT Input B(7:0)
        BEGIN BLOCKDEF add_1b
            TIMESTAMP 2026 1 24 0 34 0
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add_1b
            PIN A A(0)
            PIN S S(0)
            PIN Cout XLXN_8
            PIN B B(0)
            PIN C Cin
        END BLOCK
        BEGIN BLOCK XLXI_2 add_1b
            PIN A A(1)
            PIN S S(1)
            PIN Cout XLXN_3
            PIN B B(1)
            PIN C XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_3 add_1b
            PIN A A(2)
            PIN S S(2)
            PIN Cout XLXN_47
            PIN B B(2)
            PIN C XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 add_1b
            PIN A A(3)
            PIN S S(3)
            PIN Cout XLXN_18
            PIN B B(3)
            PIN C XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_7 add_1b
            PIN A A(4)
            PIN S S(4)
            PIN Cout XLXN_15
            PIN B B(4)
            PIN C XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_8 add_1b
            PIN A A(6)
            PIN S S(6)
            PIN Cout XLXN_48
            PIN B B(6)
            PIN C XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_9 add_1b
            PIN A A(5)
            PIN S S(5)
            PIN Cout XLXN_13
            PIN B B(5)
            PIN C XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_10 add_1b
            PIN A A(7)
            PIN S S(7)
            PIN Cout Cout
            PIN B B(7)
            PIN C XLXN_48
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 688 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1296 1216 R0
        END INSTANCE
        BEGIN BRANCH XLXN_3
            WIRE 1216 976 1216 1056
            WIRE 1216 1056 1296 1056
            WIRE 1216 976 1744 976
            WIRE 1664 912 1744 912
            WIRE 1744 912 1744 976
        END BRANCH
        BEGIN INSTANCE XLXI_2 1280 944 R0
        END INSTANCE
        BEGIN BRANCH XLXN_8
            WIRE 1216 720 1728 720
            WIRE 1216 720 1216 784
            WIRE 1216 784 1280 784
            WIRE 1664 656 1728 656
            WIRE 1728 656 1728 720
        END BRANCH
        BEGIN INSTANCE XLXI_4 1280 1488 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2160 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2176 1200 R0
        END INSTANCE
        BEGIN BRANCH XLXN_13
            WIRE 2096 960 2096 1040
            WIRE 2096 1040 2176 1040
            WIRE 2096 960 2624 960
            WIRE 2544 896 2624 896
            WIRE 2624 896 2624 960
        END BRANCH
        BEGIN INSTANCE XLXI_9 2160 928 R0
        END INSTANCE
        BEGIN BRANCH XLXN_15
            WIRE 2096 704 2608 704
            WIRE 2096 704 2096 768
            WIRE 2096 768 2160 768
            WIRE 2544 640 2608 640
            WIRE 2608 640 2608 704
        END BRANCH
        BEGIN INSTANCE XLXI_10 2160 1472 R0
        END INSTANCE
        BEGIN BRANCH XLXN_18
            WIRE 1664 1456 1904 1456
            WIRE 1904 512 1904 1456
            WIRE 1904 512 2160 512
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1248 528 1280 528
        END BRANCH
        IOMARKER 1248 528 Cin R180 28
        IOMARKER 176 448 B(7:0) R180 28
        BEGIN BRANCH A(7:0)
            WIRE 176 496 384 496
        END BRANCH
        IOMARKER 176 496 A(7:0) R180 28
        BEGIN BRANCH S(7:0)
            WIRE 160 560 384 560
        END BRANCH
        IOMARKER 384 560 S(7:0) R0 28
        BEGIN BRANCH Cout
            WIRE 2544 1440 2576 1440
        END BRANCH
        IOMARKER 2576 1440 Cout R0 28
        BEGIN BRANCH A(0)
            WIRE 1184 656 1280 656
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1664 528 1744 528
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1664 784 1728 784
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1200 912 1280 912
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1200 1184 1296 1184
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1200 1392 1280 1392
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1200 1456 1280 1456
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1664 1328 1776 1328
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 2064 576 2160 576
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 2080 640 2160 640
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 2544 512 2640 512
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 2544 768 2640 768
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 2080 832 2160 832
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 2064 896 2160 896
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 2064 1104 2176 1104
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 2048 1168 2176 1168
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2064 1376 2160 1376
            WIRE 2064 1376 2064 1392
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2544 1312 2656 1312
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 2064 1440 2160 1440
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 1216 1232 1216 1328
            WIRE 1216 1328 1280 1328
            WIRE 1216 1232 1760 1232
            WIRE 1680 1184 1760 1184
            WIRE 1760 1184 1760 1232
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 2096 1248 2096 1312
            WIRE 2096 1312 2160 1312
            WIRE 2096 1248 2592 1248
            WIRE 2560 1168 2592 1168
            WIRE 2592 1168 2592 1248
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2560 1040 2624 1040
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 176 448 336 448
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 1184 592 1280 592
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1184 848 1280 848
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1200 1120 1296 1120
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1680 1056 1760 1056
        END BRANCH
    END SHEET
END SCHEMATIC

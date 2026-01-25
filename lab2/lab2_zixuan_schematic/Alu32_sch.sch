VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL OP(2:0)
        SIGNAL XLXN_4(31:0)
        SIGNAL XLXN_17(31:0)
        SIGNAL OP(0)
        BEGIN SIGNAL Ra(0)
        END SIGNAL
        BEGIN SIGNAL La(31)
        END SIGNAL
        SIGNAL B(31:0)
        BEGIN SIGNAL Ra(31:1)
        END SIGNAL
        BEGIN SIGNAL La(30:0)
        END SIGNAL
        SIGNAL A(31:0)
        SIGNAL A(30:0)
        SIGNAL A(31:1)
        SIGNAL XLXN_31(31:0)
        SIGNAL XLXN_32(31:0)
        SIGNAL XLXN_33(31:0)
        SIGNAL OP(1)
        SIGNAL XLXN_40
        SIGNAL XLXN_43
        SIGNAL gi(0)
        SIGNAL gi(31:0)
        SIGNAL XLXN_47(31:0)
        SIGNAL XLXN_48(31:0)
        SIGNAL OP(2)
        SIGNAL Rout(31:0)
        SIGNAL gi(1)
        SIGNAL gi(2)
        SIGNAL gi(3)
        SIGNAL gi(4)
        SIGNAL gi(5)
        SIGNAL gi(6)
        SIGNAL gi(7)
        SIGNAL gi(8)
        SIGNAL gi(9)
        SIGNAL gi(10)
        SIGNAL gi(11)
        SIGNAL gi(12)
        SIGNAL gi(13)
        SIGNAL gi(14)
        SIGNAL gi(15)
        SIGNAL gi(16)
        SIGNAL gi(17)
        SIGNAL gi(18)
        SIGNAL gi(19)
        SIGNAL gi(20)
        SIGNAL gi(21)
        SIGNAL gi(22)
        SIGNAL gi(23)
        SIGNAL gi(24)
        SIGNAL gi(25)
        SIGNAL gi(26)
        SIGNAL gi(27)
        SIGNAL gi(28)
        SIGNAL gi(29)
        SIGNAL gi(30)
        SIGNAL gi(31)
        SIGNAL La(31:0)
        SIGNAL Ra(31:0)
        PORT Input OP(2:0)
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output Rout(31:0)
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
        BEGIN BLOCKDEF MUX_32b
            TIMESTAMP 2026 1 24 2 34 7
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv32
            TIMESTAMP 2026 1 24 2 34 0
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 64 -64 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF buffer31
            TIMESTAMP 2026 1 24 3 34 27
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
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
        BEGIN BLOCKDEF and_32bit
            TIMESTAMP 2026 1 24 4 44 31
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 inv32
            PIN InV(31:0) B(31:0)
            PIN OutV(31:0) XLXN_4(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 add32
            PIN A(31:0) A(31:0)
            PIN B(31:0) XLXN_17(31:0)
            PIN Cin OP(0)
            PIN S(31:0) XLXN_31(31:0)
            PIN Cout
        END BLOCK
        BEGIN BLOCK XLXI_13 gnd
            PIN G La(31)
        END BLOCK
        BEGIN BLOCK XLXI_14 MUX_32b
            PIN D0(31:0) La(31:0)
            PIN D1(31:0) Ra(31:0)
            PIN S0 OP(0)
            PIN O(31:0) XLXN_32(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 MUX_32b
            PIN D0(31:0) A(31:0)
            PIN D1(31:0) B(31:0)
            PIN S0 OP(0)
            PIN O(31:0) XLXN_33(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 MUX_32b
            PIN D0(31:0) B(31:0)
            PIN D1(31:0) XLXN_4(31:0)
            PIN S0 OP(0)
            PIN O(31:0) XLXN_17(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 buffer31
            PIN Bi(30:0) A(30:0)
            PIN Bo(30:0) Ra(31:1)
        END BLOCK
        BEGIN BLOCK XLXI_16 buffer31
            PIN Bi(30:0) A(31:1)
            PIN Bo(30:0) La(30:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 and_32bit
            PIN ando(31:0) A(31:0)
            PIN and1(31:0) B(31:0)
            PIN Result XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_20 MUX_32b
            PIN D0(31:0) XLXN_31(31:0)
            PIN D1(31:0) XLXN_32(31:0)
            PIN S0 OP(1)
            PIN O(31:0) XLXN_47(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 MUX_32b
            PIN D0(31:0) XLXN_33(31:0)
            PIN D1(31:0) gi(31:0)
            PIN S0 OP(1)
            PIN O(31:0) XLXN_48(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_22 m2_1
            PIN D0 XLXN_40
            PIN D1 XLXN_43
            PIN S0 OP(0)
            PIN O gi(0)
        END BLOCK
        BEGIN BLOCK XLXI_23 gnd
            PIN G XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_24 MUX_32b
            PIN D0(31:0) XLXN_47(31:0)
            PIN D1(31:0) XLXN_48(31:0)
            PIN S0 OP(2)
            PIN O(31:0) Rout(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_43 gnd
            PIN G gi(1)
        END BLOCK
        BEGIN BLOCK XLXI_44 gnd
            PIN G gi(2)
        END BLOCK
        BEGIN BLOCK XLXI_45 gnd
            PIN G gi(3)
        END BLOCK
        BEGIN BLOCK XLXI_46 gnd
            PIN G gi(4)
        END BLOCK
        BEGIN BLOCK XLXI_47 gnd
            PIN G gi(5)
        END BLOCK
        BEGIN BLOCK XLXI_48 gnd
            PIN G gi(6)
        END BLOCK
        BEGIN BLOCK XLXI_49 gnd
            PIN G gi(7)
        END BLOCK
        BEGIN BLOCK XLXI_50 gnd
            PIN G gi(8)
        END BLOCK
        BEGIN BLOCK XLXI_51 gnd
            PIN G gi(9)
        END BLOCK
        BEGIN BLOCK XLXI_52 gnd
            PIN G gi(10)
        END BLOCK
        BEGIN BLOCK XLXI_53 gnd
            PIN G gi(11)
        END BLOCK
        BEGIN BLOCK XLXI_54 gnd
            PIN G gi(12)
        END BLOCK
        BEGIN BLOCK XLXI_55 gnd
            PIN G gi(13)
        END BLOCK
        BEGIN BLOCK XLXI_56 gnd
            PIN G gi(14)
        END BLOCK
        BEGIN BLOCK XLXI_57 gnd
            PIN G gi(15)
        END BLOCK
        BEGIN BLOCK XLXI_58 gnd
            PIN G gi(16)
        END BLOCK
        BEGIN BLOCK XLXI_59 gnd
            PIN G gi(17)
        END BLOCK
        BEGIN BLOCK XLXI_60 gnd
            PIN G gi(18)
        END BLOCK
        BEGIN BLOCK XLXI_61 gnd
            PIN G gi(19)
        END BLOCK
        BEGIN BLOCK XLXI_62 gnd
            PIN G gi(20)
        END BLOCK
        BEGIN BLOCK XLXI_63 gnd
            PIN G gi(21)
        END BLOCK
        BEGIN BLOCK XLXI_64 gnd
            PIN G gi(22)
        END BLOCK
        BEGIN BLOCK XLXI_65 gnd
            PIN G gi(23)
        END BLOCK
        BEGIN BLOCK XLXI_66 gnd
            PIN G gi(24)
        END BLOCK
        BEGIN BLOCK XLXI_67 gnd
            PIN G gi(25)
        END BLOCK
        BEGIN BLOCK XLXI_68 gnd
            PIN G gi(26)
        END BLOCK
        BEGIN BLOCK XLXI_69 gnd
            PIN G gi(27)
        END BLOCK
        BEGIN BLOCK XLXI_70 gnd
            PIN G gi(28)
        END BLOCK
        BEGIN BLOCK XLXI_71 gnd
            PIN G gi(29)
        END BLOCK
        BEGIN BLOCK XLXI_72 gnd
            PIN G gi(30)
        END BLOCK
        BEGIN BLOCK XLXI_73 gnd
            PIN G gi(31)
        END BLOCK
        BEGIN BLOCK XLXI_75 gnd
            PIN G Ra(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH OP(2:0)
            WIRE 192 784 448 784
        END BRANCH
        BEGIN BRANCH XLXN_4(31:0)
            WIRE 928 816 928 832
            WIRE 928 816 992 816
            WIRE 992 768 992 816
            WIRE 992 768 1072 768
        END BRANCH
        BEGIN INSTANCE XLXI_3 544 800 R0
        END INSTANCE
        BEGIN BRANCH XLXN_17(31:0)
            WIRE 1456 704 1584 704
        END BRANCH
        BEGIN INSTANCE XLXI_1 1584 800 R0
        END INSTANCE
        BEGIN BRANCH OP(0)
            WIRE 1056 832 1072 832
            WIRE 1056 832 1056 928
            WIRE 1056 928 1120 928
            WIRE 1120 928 1504 928
            WIRE 1120 928 1120 1232
            WIRE 1120 1232 1264 1232
            WIRE 1120 1232 1120 1520
            WIRE 1120 1520 1296 1520
            WIRE 1120 1520 1120 1872
            WIRE 1120 1872 1264 1872
            WIRE 1504 768 1504 928
            WIRE 1504 768 1584 768
        END BRANCH
        BEGIN BRANCH La(31)
            WIRE 496 1264 496 1280
            WIRE 496 1264 864 1264
            BEGIN DISPLAY 864 1264 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_14 1264 1264 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1296 1552 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1072 864 R0
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 192 704 288 704
            WIRE 288 704 464 704
            WIRE 464 704 464 832
            WIRE 464 832 544 832
            WIRE 464 704 1072 704
            WIRE 288 704 288 1456
            WIRE 288 1456 416 1456
            WIRE 416 1456 416 1808
            WIRE 416 1808 576 1808
            WIRE 416 1456 1296 1456
        END BRANCH
        BEGIN INSTANCE XLXI_10 560 1136 R0
        END INSTANCE
        BEGIN BRANCH Ra(31:1)
            WIRE 944 1104 960 1104
            WIRE 960 1104 992 1104
            BEGIN DISPLAY 992 1104 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 560 1232 R0
        END INSTANCE
        BEGIN BRANCH La(30:0)
            WIRE 944 1200 960 1200
            WIRE 960 1200 1008 1200
            BEGIN DISPLAY 1008 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 192 624 240 624
            WIRE 240 624 880 624
            WIRE 880 624 880 640
            WIRE 880 640 1584 640
            WIRE 240 624 240 1392
            WIRE 240 1392 384 1392
            WIRE 384 1392 1296 1392
            WIRE 384 1392 384 1744
            WIRE 384 1744 576 1744
        END BRANCH
        BEGIN BRANCH A(30:0)
            WIRE 416 1104 544 1104
            WIRE 544 1104 560 1104
            BEGIN DISPLAY 544 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:1)
            WIRE 416 1200 512 1200
            WIRE 512 1200 560 1200
            BEGIN DISPLAY 512 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 576 1840 R0
        END INSTANCE
        BEGIN BRANCH XLXN_31(31:0)
            WIRE 1968 640 2320 640
        END BRANCH
        BEGIN BRANCH XLXN_32(31:0)
            WIRE 1648 1104 2288 1104
            WIRE 2288 704 2320 704
            WIRE 2288 704 2288 1104
        END BRANCH
        BEGIN BRANCH XLXN_33(31:0)
            WIRE 1680 1392 2256 1392
        END BRANCH
        BEGIN INSTANCE XLXI_20 2320 800 R0
        END INSTANCE
        BEGIN BRANCH OP(1)
            WIRE 2160 768 2320 768
            WIRE 2160 768 2160 1520
            WIRE 2160 1520 2256 1520
        END BRANCH
        BEGIN INSTANCE XLXI_21 2256 1552 R0
        END INSTANCE
        BEGIN BRANCH XLXN_40
            WIRE 960 1744 1264 1744
        END BRANCH
        INSTANCE XLXI_22 1264 1904 R0
        INSTANCE XLXI_23 960 1936 R0
        BEGIN BRANCH XLXN_43
            WIRE 1024 1808 1264 1808
        END BRANCH
        BEGIN BRANCH gi(0)
            WIRE 1584 1776 1712 1776
        END BRANCH
        BEGIN BRANCH gi(31:0)
            WIRE 1952 1456 2256 1456
        END BRANCH
        BEGIN INSTANCE XLXI_24 2848 800 R0
        END INSTANCE
        BEGIN BRANCH XLXN_47(31:0)
            WIRE 2704 640 2848 640
        END BRANCH
        BEGIN BRANCH XLXN_48(31:0)
            WIRE 2640 1392 2736 1392
            WIRE 2736 704 2736 1392
            WIRE 2736 704 2848 704
        END BRANCH
        BEGIN BRANCH OP(2)
            WIRE 2784 768 2848 768
        END BRANCH
        BEGIN BRANCH Rout(31:0)
            WIRE 3232 640 3264 640
        END BRANCH
        IOMARKER 192 704 B(31:0) R180 28
        IOMARKER 192 784 OP(2:0) R180 28
        IOMARKER 192 624 A(31:0) R180 28
        IOMARKER 3264 640 Rout(31:0) R0 28
        INSTANCE XLXI_43 656 2336 R0
        BEGIN BRANCH gi(1)
            WIRE 720 2096 720 2192
            WIRE 720 2192 720 2208
            BEGIN DISPLAY 720 2192 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_44 736 2336 R0
        BEGIN BRANCH gi(2)
            WIRE 800 2096 800 2176
            WIRE 800 2176 800 2208
            BEGIN DISPLAY 800 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_45 816 2336 R0
        BEGIN BRANCH gi(3)
            WIRE 880 2096 880 2192
            WIRE 880 2192 880 2208
            BEGIN DISPLAY 880 2192 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_46 896 2336 R0
        BEGIN BRANCH gi(4)
            WIRE 960 2096 960 2176
            WIRE 960 2176 960 2208
            BEGIN DISPLAY 960 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_47 976 2336 R0
        BEGIN BRANCH gi(5)
            WIRE 1040 2096 1040 2176
            WIRE 1040 2176 1040 2208
            BEGIN DISPLAY 1040 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_48 1056 2336 R0
        BEGIN BRANCH gi(6)
            WIRE 1120 2096 1120 2176
            WIRE 1120 2176 1120 2208
            BEGIN DISPLAY 1120 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_49 1136 2336 R0
        BEGIN BRANCH gi(7)
            WIRE 1200 2096 1200 2176
            WIRE 1200 2176 1200 2208
            BEGIN DISPLAY 1200 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_50 1200 2336 R0
        BEGIN BRANCH gi(8)
            WIRE 1264 2096 1264 2176
            WIRE 1264 2176 1264 2208
            BEGIN DISPLAY 1264 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_51 1280 2336 R0
        BEGIN BRANCH gi(9)
            WIRE 1344 2096 1344 2176
            WIRE 1344 2176 1344 2208
            BEGIN DISPLAY 1344 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_52 1360 2336 R0
        BEGIN BRANCH gi(10)
            WIRE 1424 2096 1424 2176
            WIRE 1424 2176 1424 2208
            BEGIN DISPLAY 1424 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_53 1440 2336 R0
        BEGIN BRANCH gi(11)
            WIRE 1504 2096 1504 2176
            WIRE 1504 2176 1504 2208
            BEGIN DISPLAY 1504 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_54 1520 2336 R0
        BEGIN BRANCH gi(12)
            WIRE 1584 2096 1584 2176
            WIRE 1584 2176 1584 2208
            BEGIN DISPLAY 1584 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_55 1600 2336 R0
        BEGIN BRANCH gi(13)
            WIRE 1664 2096 1664 2176
            WIRE 1664 2176 1664 2208
            BEGIN DISPLAY 1664 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_56 1680 2336 R0
        BEGIN BRANCH gi(14)
            WIRE 1744 2096 1744 2176
            WIRE 1744 2176 1744 2208
            BEGIN DISPLAY 1744 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_57 1760 2336 R0
        BEGIN BRANCH gi(15)
            WIRE 1824 2096 1824 2176
            WIRE 1824 2176 1824 2208
            BEGIN DISPLAY 1824 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_58 1824 2336 R0
        BEGIN BRANCH gi(16)
            WIRE 1888 2096 1888 2176
            WIRE 1888 2176 1888 2208
            BEGIN DISPLAY 1888 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_59 1904 2336 R0
        BEGIN BRANCH gi(17)
            WIRE 1968 2096 1968 2176
            WIRE 1968 2176 1968 2208
            BEGIN DISPLAY 1968 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_60 1984 2336 R0
        BEGIN BRANCH gi(18)
            WIRE 2048 2096 2048 2176
            WIRE 2048 2176 2048 2208
            BEGIN DISPLAY 2048 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_61 2064 2336 R0
        BEGIN BRANCH gi(19)
            WIRE 2128 2096 2128 2176
            WIRE 2128 2176 2128 2208
            BEGIN DISPLAY 2128 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_62 2144 2336 R0
        BEGIN BRANCH gi(20)
            WIRE 2208 2096 2208 2176
            WIRE 2208 2176 2208 2208
            BEGIN DISPLAY 2208 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_63 2224 2336 R0
        BEGIN BRANCH gi(21)
            WIRE 2288 2096 2288 2176
            WIRE 2288 2176 2288 2208
            BEGIN DISPLAY 2288 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_64 2304 2336 R0
        BEGIN BRANCH gi(22)
            WIRE 2368 2096 2368 2176
            WIRE 2368 2176 2368 2208
            BEGIN DISPLAY 2368 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_65 2384 2336 R0
        BEGIN BRANCH gi(23)
            WIRE 2448 2096 2448 2176
            WIRE 2448 2176 2448 2208
            BEGIN DISPLAY 2448 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_66 2448 2336 R0
        BEGIN BRANCH gi(24)
            WIRE 2512 2096 2512 2176
            WIRE 2512 2176 2512 2208
            BEGIN DISPLAY 2512 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_67 2528 2336 R0
        BEGIN BRANCH gi(25)
            WIRE 2592 2096 2592 2176
            WIRE 2592 2176 2592 2208
            BEGIN DISPLAY 2592 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_68 2608 2336 R0
        BEGIN BRANCH gi(26)
            WIRE 2672 2096 2672 2176
            WIRE 2672 2176 2672 2208
            BEGIN DISPLAY 2672 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_69 2688 2336 R0
        BEGIN BRANCH gi(27)
            WIRE 2752 2096 2752 2176
            WIRE 2752 2176 2752 2208
            BEGIN DISPLAY 2752 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_70 2768 2336 R0
        BEGIN BRANCH gi(28)
            WIRE 2832 2096 2832 2176
            WIRE 2832 2176 2832 2208
            BEGIN DISPLAY 2832 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_71 2848 2336 R0
        BEGIN BRANCH gi(29)
            WIRE 2912 2096 2912 2176
            WIRE 2912 2176 2912 2208
            BEGIN DISPLAY 2912 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_72 2928 2336 R0
        BEGIN BRANCH gi(30)
            WIRE 2992 2096 2992 2176
            WIRE 2992 2176 2992 2208
            BEGIN DISPLAY 2992 2176 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_73 3008 2336 R0
        BEGIN BRANCH gi(31)
            WIRE 3072 2096 3072 2160
            WIRE 3072 2160 3072 2208
            BEGIN DISPLAY 3072 2160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 432 1408 R0
        INSTANCE XLXI_75 304 1152 R0
        BEGIN BRANCH Ra(0)
            WIRE 368 1024 880 1024
            BEGIN DISPLAY 880 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH La(31:0)
            WIRE 1168 1104 1264 1104
        END BRANCH
        BEGIN BRANCH Ra(31:0)
            WIRE 1168 1168 1264 1168
        END BRANCH
    END SHEET
END SCHEMATIC

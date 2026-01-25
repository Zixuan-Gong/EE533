VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Din(7:0)
        SIGNAL Qo(7:0)
        SIGNAL Din(7)
        SIGNAL CLK
        SIGNAL Qo(7)
        SIGNAL Din(0)
        SIGNAL Qo(0)
        SIGNAL Din(1)
        SIGNAL Qo(1)
        SIGNAL Din(2)
        SIGNAL Qo(2)
        SIGNAL Din(3)
        SIGNAL Qo(3)
        SIGNAL Din(4)
        SIGNAL XLXN_19
        SIGNAL Qo(4)
        SIGNAL Din(5)
        SIGNAL Qo(5)
        SIGNAL Din(6)
        SIGNAL Qo(6)
        PORT Input Din(7:0)
        PORT Output Qo(7:0)
        PORT Input CLK
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C CLK
            PIN D Din(7)
            PIN Q Qo(7)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd
            PIN C CLK
            PIN D Din(0)
            PIN Q Qo(0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fd
            PIN C CLK
            PIN D Din(1)
            PIN Q Qo(1)
        END BLOCK
        BEGIN BLOCK XLXI_11 fd
            PIN C CLK
            PIN D Din(2)
            PIN Q Qo(2)
        END BLOCK
        BEGIN BLOCK XLXI_12 fd
            PIN C CLK
            PIN D Din(3)
            PIN Q Qo(3)
        END BLOCK
        BEGIN BLOCK XLXI_13 fd
            PIN C CLK
            PIN D Din(4)
            PIN Q Qo(4)
        END BLOCK
        BEGIN BLOCK XLXI_14 fd
            PIN C CLK
            PIN D Din(5)
            PIN Q Qo(5)
        END BLOCK
        BEGIN BLOCK XLXI_15 fd
            PIN C CLK
            PIN D Din(6)
            PIN Q Qo(6)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Din(7:0)
            WIRE 928 96 1152 96
        END BRANCH
        BEGIN BRANCH Qo(7:0)
            WIRE 928 144 1152 144
        END BRANCH
        IOMARKER 928 96 Din(7:0) R180 28
        IOMARKER 1152 144 Qo(7:0) R0 28
        INSTANCE XLXI_1 1520 416 R0
        BEGIN BRANCH Din(7)
            WIRE 1376 160 1440 160
            WIRE 1440 160 1520 160
            BEGIN DISPLAY 1440 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1040 272 1184 272
            WIRE 1184 272 1184 288
            WIRE 1184 288 1376 288
            WIRE 1376 288 1520 288
            WIRE 1184 288 1184 608
            WIRE 1184 608 1360 608
            WIRE 1360 608 1504 608
            WIRE 1184 608 1184 976
            WIRE 1184 976 1344 976
            WIRE 1344 976 1488 976
            WIRE 1184 976 1184 1328
            WIRE 1184 1328 1344 1328
            WIRE 1344 1328 1488 1328
            WIRE 1184 1328 1184 1568
            WIRE 1184 1568 2112 1568
            WIRE 2112 288 2208 288
            WIRE 2208 288 2352 288
            WIRE 2112 288 2112 624
            WIRE 2112 624 2208 624
            WIRE 2208 624 2352 624
            WIRE 2112 624 2112 992
            WIRE 2112 992 2208 992
            WIRE 2208 992 2352 992
            WIRE 2112 992 2112 1328
            WIRE 2112 1328 2240 1328
            WIRE 2240 1328 2384 1328
            WIRE 2112 1328 2112 1568
        END BRANCH
        BEGIN BRANCH Qo(7)
            WIRE 1904 160 1984 160
            WIRE 1984 160 2064 160
            BEGIN DISPLAY 1984 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1504 736 R0
        BEGIN BRANCH Din(0)
            WIRE 1360 480 1424 480
            WIRE 1424 480 1504 480
            BEGIN DISPLAY 1424 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(0)
            WIRE 1888 480 1936 480
            WIRE 1936 480 2048 480
            BEGIN DISPLAY 1936 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1488 1104 R0
        BEGIN BRANCH Din(1)
            WIRE 1344 848 1408 848
            WIRE 1408 848 1488 848
            BEGIN DISPLAY 1408 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(1)
            WIRE 1872 848 1904 848
            WIRE 1904 848 2032 848
            BEGIN DISPLAY 1904 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1488 1456 R0
        BEGIN BRANCH Din(2)
            WIRE 1344 1200 1424 1200
            WIRE 1424 1200 1488 1200
            BEGIN DISPLAY 1424 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(2)
            WIRE 1872 1200 1920 1200
            WIRE 1920 1200 2032 1200
            BEGIN DISPLAY 1920 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 2352 416 R0
        BEGIN BRANCH Din(3)
            WIRE 2208 160 2288 160
            WIRE 2288 160 2352 160
            BEGIN DISPLAY 2288 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(3)
            WIRE 2736 160 2784 160
            WIRE 2784 160 2896 160
            BEGIN DISPLAY 2784 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 2352 752 R0
        BEGIN BRANCH Din(4)
            WIRE 2208 496 2288 496
            WIRE 2288 496 2352 496
            BEGIN DISPLAY 2288 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(4)
            WIRE 2736 496 2800 496
            WIRE 2800 496 2896 496
            BEGIN DISPLAY 2800 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 2352 1120 R0
        BEGIN BRANCH Din(5)
            WIRE 2208 864 2272 864
            WIRE 2272 864 2352 864
            BEGIN DISPLAY 2272 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(5)
            WIRE 2736 864 2816 864
            WIRE 2816 864 2896 864
            BEGIN DISPLAY 2816 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_15 2384 1456 R0
        BEGIN BRANCH Din(6)
            WIRE 2240 1200 2320 1200
            WIRE 2320 1200 2384 1200
            BEGIN DISPLAY 2320 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(6)
            WIRE 2768 1200 2864 1200
            WIRE 2864 1200 2928 1200
            BEGIN DISPLAY 2864 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1040 272 CLK R180 28
    END SHEET
END SCHEMATIC

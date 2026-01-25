VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Bi(30:0)
        SIGNAL Bo(30:0)
        SIGNAL Bi(0)
        SIGNAL Bo(1)
        SIGNAL Bi(2)
        SIGNAL Bo(2)
        SIGNAL Bi(3)
        SIGNAL Bo(3)
        SIGNAL Bi(4)
        SIGNAL Bo(4)
        SIGNAL Bi(5)
        SIGNAL Bo(5)
        SIGNAL Bi(6)
        SIGNAL Bo(6)
        SIGNAL Bi(7)
        SIGNAL Bo(7)
        SIGNAL Bi(8)
        SIGNAL Bo(8)
        SIGNAL Bi(9)
        SIGNAL Bo(9)
        SIGNAL Bi(10)
        SIGNAL Bo(10)
        SIGNAL Bi(11)
        SIGNAL Bo(11)
        SIGNAL Bi(12)
        SIGNAL Bo(12)
        SIGNAL Bi(13)
        SIGNAL Bo(13)
        SIGNAL Bi(14)
        SIGNAL Bo(14)
        SIGNAL Bi(15)
        SIGNAL Bo(15)
        SIGNAL Bi(16)
        SIGNAL Bo(16)
        SIGNAL Bi(17)
        SIGNAL Bo(17)
        SIGNAL Bi(18)
        SIGNAL Bo(18)
        SIGNAL Bi(19)
        SIGNAL Bo(19)
        SIGNAL Bi(20)
        SIGNAL Bo(20)
        SIGNAL Bi(21)
        SIGNAL Bo(21)
        SIGNAL Bi(22)
        SIGNAL Bo(22)
        SIGNAL Bi(23)
        SIGNAL Bo(23)
        SIGNAL Bi(24)
        SIGNAL Bo(24)
        SIGNAL Bi(25)
        SIGNAL Bo(25)
        SIGNAL Bi(26)
        SIGNAL Bo(26)
        SIGNAL Bi(27)
        SIGNAL Bo(27)
        SIGNAL Bi(28)
        SIGNAL Bo(28)
        SIGNAL Bi(29)
        SIGNAL Bo(29)
        SIGNAL Bi(30)
        SIGNAL Bo(30)
        SIGNAL Bi(1)
        SIGNAL Bo(0)
        PORT Input Bi(30:0)
        PORT Output Bo(30:0)
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 buf
            PIN I Bi(0)
            PIN O Bo(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 buf
            PIN I Bi(1)
            PIN O Bo(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 buf
            PIN I Bi(2)
            PIN O Bo(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 buf
            PIN I Bi(3)
            PIN O Bo(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 buf
            PIN I Bi(4)
            PIN O Bo(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 buf
            PIN I Bi(5)
            PIN O Bo(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 buf
            PIN I Bi(6)
            PIN O Bo(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 buf
            PIN I Bi(7)
            PIN O Bo(7)
        END BLOCK
        BEGIN BLOCK XLXI_9 buf
            PIN I Bi(8)
            PIN O Bo(8)
        END BLOCK
        BEGIN BLOCK XLXI_10 buf
            PIN I Bi(9)
            PIN O Bo(9)
        END BLOCK
        BEGIN BLOCK XLXI_11 buf
            PIN I Bi(10)
            PIN O Bo(10)
        END BLOCK
        BEGIN BLOCK XLXI_12 buf
            PIN I Bi(11)
            PIN O Bo(11)
        END BLOCK
        BEGIN BLOCK XLXI_13 buf
            PIN I Bi(12)
            PIN O Bo(12)
        END BLOCK
        BEGIN BLOCK XLXI_14 buf
            PIN I Bi(13)
            PIN O Bo(13)
        END BLOCK
        BEGIN BLOCK XLXI_15 buf
            PIN I Bi(14)
            PIN O Bo(14)
        END BLOCK
        BEGIN BLOCK XLXI_32 buf
            PIN I Bi(15)
            PIN O Bo(15)
        END BLOCK
        BEGIN BLOCK XLXI_33 buf
            PIN I Bi(16)
            PIN O Bo(16)
        END BLOCK
        BEGIN BLOCK XLXI_34 buf
            PIN I Bi(17)
            PIN O Bo(17)
        END BLOCK
        BEGIN BLOCK XLXI_35 buf
            PIN I Bi(18)
            PIN O Bo(18)
        END BLOCK
        BEGIN BLOCK XLXI_36 buf
            PIN I Bi(19)
            PIN O Bo(19)
        END BLOCK
        BEGIN BLOCK XLXI_37 buf
            PIN I Bi(20)
            PIN O Bo(20)
        END BLOCK
        BEGIN BLOCK XLXI_38 buf
            PIN I Bi(21)
            PIN O Bo(21)
        END BLOCK
        BEGIN BLOCK XLXI_39 buf
            PIN I Bi(22)
            PIN O Bo(22)
        END BLOCK
        BEGIN BLOCK XLXI_40 buf
            PIN I Bi(23)
            PIN O Bo(23)
        END BLOCK
        BEGIN BLOCK XLXI_41 buf
            PIN I Bi(24)
            PIN O Bo(24)
        END BLOCK
        BEGIN BLOCK XLXI_42 buf
            PIN I Bi(25)
            PIN O Bo(25)
        END BLOCK
        BEGIN BLOCK XLXI_43 buf
            PIN I Bi(26)
            PIN O Bo(26)
        END BLOCK
        BEGIN BLOCK XLXI_44 buf
            PIN I Bi(27)
            PIN O Bo(27)
        END BLOCK
        BEGIN BLOCK XLXI_45 buf
            PIN I Bi(28)
            PIN O Bo(28)
        END BLOCK
        BEGIN BLOCK XLXI_46 buf
            PIN I Bi(29)
            PIN O Bo(29)
        END BLOCK
        BEGIN BLOCK XLXI_47 buf
            PIN I Bi(30)
            PIN O Bo(30)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 880 288 R0
        INSTANCE XLXI_2 880 384 R0
        INSTANCE XLXI_3 880 464 R0
        INSTANCE XLXI_4 880 544 R0
        INSTANCE XLXI_5 880 624 R0
        INSTANCE XLXI_6 880 704 R0
        INSTANCE XLXI_7 880 784 R0
        INSTANCE XLXI_8 880 864 R0
        INSTANCE XLXI_9 880 960 R0
        INSTANCE XLXI_10 880 1056 R0
        INSTANCE XLXI_11 880 1136 R0
        INSTANCE XLXI_12 880 1232 R0
        INSTANCE XLXI_13 880 1328 R0
        INSTANCE XLXI_14 880 1424 R0
        INSTANCE XLXI_15 880 1504 R0
        BEGIN BRANCH Bi(30:0)
            WIRE 240 64 464 64
        END BRANCH
        BEGIN BRANCH Bo(30:0)
            WIRE 240 112 464 112
        END BRANCH
        IOMARKER 240 64 Bi(30:0) R180 28
        IOMARKER 464 112 Bo(30:0) R0 28
        BEGIN BRANCH Bi(0)
            WIRE 752 256 832 256
            WIRE 832 256 880 256
            BEGIN DISPLAY 832 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(1)
            WIRE 752 352 816 352
            WIRE 816 352 880 352
            BEGIN DISPLAY 816 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(1)
            WIRE 1104 352 1152 352
            WIRE 1152 352 1216 352
            BEGIN DISPLAY 1152 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(2)
            WIRE 752 432 816 432
            WIRE 816 432 880 432
            BEGIN DISPLAY 816 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(2)
            WIRE 1104 432 1168 432
            WIRE 1168 432 1216 432
            BEGIN DISPLAY 1168 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(3)
            WIRE 752 512 800 512
            WIRE 800 512 880 512
            BEGIN DISPLAY 800 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(3)
            WIRE 1104 512 1168 512
            WIRE 1168 512 1216 512
            BEGIN DISPLAY 1168 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(4)
            WIRE 752 592 800 592
            WIRE 800 592 880 592
            BEGIN DISPLAY 800 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(4)
            WIRE 1104 592 1184 592
            WIRE 1184 592 1216 592
            BEGIN DISPLAY 1184 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(5)
            WIRE 752 672 800 672
            WIRE 800 672 880 672
            BEGIN DISPLAY 800 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(5)
            WIRE 1104 672 1184 672
            WIRE 1184 672 1216 672
            BEGIN DISPLAY 1184 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(6)
            WIRE 752 752 800 752
            WIRE 800 752 880 752
            BEGIN DISPLAY 800 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(6)
            WIRE 1104 752 1184 752
            WIRE 1184 752 1216 752
            BEGIN DISPLAY 1184 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(7)
            WIRE 752 832 816 832
            WIRE 816 832 880 832
            BEGIN DISPLAY 816 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(7)
            WIRE 1104 832 1184 832
            WIRE 1184 832 1216 832
            BEGIN DISPLAY 1184 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(8)
            WIRE 752 928 816 928
            WIRE 816 928 880 928
            BEGIN DISPLAY 816 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(8)
            WIRE 1104 928 1184 928
            WIRE 1184 928 1216 928
            BEGIN DISPLAY 1184 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(9)
            WIRE 752 1024 816 1024
            WIRE 816 1024 880 1024
            BEGIN DISPLAY 816 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(9)
            WIRE 1104 1024 1184 1024
            WIRE 1184 1024 1216 1024
            BEGIN DISPLAY 1184 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(10)
            WIRE 752 1104 816 1104
            WIRE 816 1104 880 1104
            BEGIN DISPLAY 816 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(10)
            WIRE 1104 1104 1184 1104
            WIRE 1184 1104 1216 1104
            BEGIN DISPLAY 1184 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(11)
            WIRE 752 1200 816 1200
            WIRE 816 1200 880 1200
            BEGIN DISPLAY 816 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(11)
            WIRE 1104 1200 1184 1200
            WIRE 1184 1200 1216 1200
            BEGIN DISPLAY 1184 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(12)
            WIRE 752 1296 816 1296
            WIRE 816 1296 880 1296
            BEGIN DISPLAY 816 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(12)
            WIRE 1104 1296 1184 1296
            WIRE 1184 1296 1216 1296
            BEGIN DISPLAY 1184 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(13)
            WIRE 752 1392 816 1392
            WIRE 816 1392 880 1392
            BEGIN DISPLAY 816 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(13)
            WIRE 1104 1392 1184 1392
            WIRE 1184 1392 1216 1392
            BEGIN DISPLAY 1184 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(14)
            WIRE 752 1472 800 1472
            WIRE 800 1472 880 1472
            BEGIN DISPLAY 800 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(14)
            WIRE 1104 1472 1184 1472
            WIRE 1184 1472 1216 1472
            BEGIN DISPLAY 1184 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_32 1568 288 R0
        INSTANCE XLXI_33 1568 384 R0
        INSTANCE XLXI_34 1568 464 R0
        INSTANCE XLXI_35 1568 544 R0
        INSTANCE XLXI_36 1568 624 R0
        INSTANCE XLXI_37 1568 704 R0
        INSTANCE XLXI_38 1568 784 R0
        INSTANCE XLXI_39 1568 864 R0
        INSTANCE XLXI_40 1568 960 R0
        INSTANCE XLXI_41 1568 1056 R0
        INSTANCE XLXI_42 1568 1136 R0
        INSTANCE XLXI_43 1568 1232 R0
        INSTANCE XLXI_44 1568 1328 R0
        INSTANCE XLXI_45 1568 1424 R0
        INSTANCE XLXI_46 1568 1504 R0
        BEGIN BRANCH Bi(15)
            WIRE 1440 256 1504 256
            WIRE 1504 256 1568 256
            BEGIN DISPLAY 1504 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(15)
            WIRE 1792 256 1872 256
            WIRE 1872 256 1904 256
            BEGIN DISPLAY 1872 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(16)
            WIRE 1440 352 1488 352
            WIRE 1488 352 1568 352
            BEGIN DISPLAY 1488 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(16)
            WIRE 1792 352 1856 352
            WIRE 1856 352 1904 352
            BEGIN DISPLAY 1856 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(17)
            WIRE 1440 432 1504 432
            WIRE 1504 432 1568 432
            BEGIN DISPLAY 1504 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(17)
            WIRE 1792 432 1856 432
            WIRE 1856 432 1904 432
            BEGIN DISPLAY 1856 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(18)
            WIRE 1440 512 1488 512
            WIRE 1488 512 1568 512
            BEGIN DISPLAY 1488 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(18)
            WIRE 1792 512 1856 512
            WIRE 1856 512 1904 512
            BEGIN DISPLAY 1856 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(19)
            WIRE 1440 592 1488 592
            WIRE 1488 592 1568 592
            BEGIN DISPLAY 1488 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(19)
            WIRE 1792 592 1872 592
            WIRE 1872 592 1904 592
            BEGIN DISPLAY 1872 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(20)
            WIRE 1440 672 1488 672
            WIRE 1488 672 1568 672
            BEGIN DISPLAY 1488 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(20)
            WIRE 1792 672 1872 672
            WIRE 1872 672 1904 672
            BEGIN DISPLAY 1872 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(21)
            WIRE 1440 752 1488 752
            WIRE 1488 752 1568 752
            BEGIN DISPLAY 1488 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(21)
            WIRE 1792 752 1840 752
            WIRE 1840 752 1904 752
            BEGIN DISPLAY 1840 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(22)
            WIRE 1440 832 1488 832
            WIRE 1488 832 1568 832
            BEGIN DISPLAY 1488 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(22)
            WIRE 1792 832 1872 832
            WIRE 1872 832 1904 832
            BEGIN DISPLAY 1872 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(23)
            WIRE 1440 928 1472 928
            WIRE 1472 928 1568 928
            BEGIN DISPLAY 1472 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(23)
            WIRE 1792 928 1872 928
            WIRE 1872 928 1904 928
            BEGIN DISPLAY 1872 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(24)
            WIRE 1440 1024 1472 1024
            WIRE 1472 1024 1568 1024
            BEGIN DISPLAY 1472 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(24)
            WIRE 1792 1024 1856 1024
            WIRE 1856 1024 1904 1024
            BEGIN DISPLAY 1856 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(25)
            WIRE 1440 1104 1472 1104
            WIRE 1472 1104 1568 1104
            BEGIN DISPLAY 1472 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(25)
            WIRE 1792 1104 1856 1104
            WIRE 1856 1104 1904 1104
            BEGIN DISPLAY 1856 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(26)
            WIRE 1440 1200 1488 1200
            WIRE 1488 1200 1568 1200
            BEGIN DISPLAY 1488 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(26)
            WIRE 1792 1200 1856 1200
            WIRE 1856 1200 1904 1200
            BEGIN DISPLAY 1856 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(27)
            WIRE 1440 1296 1472 1296
            WIRE 1472 1296 1568 1296
            BEGIN DISPLAY 1472 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(27)
            WIRE 1792 1296 1856 1296
            WIRE 1856 1296 1904 1296
            BEGIN DISPLAY 1856 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(28)
            WIRE 1440 1392 1488 1392
            WIRE 1488 1392 1568 1392
            BEGIN DISPLAY 1488 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(28)
            WIRE 1792 1392 1856 1392
            WIRE 1856 1392 1904 1392
            BEGIN DISPLAY 1856 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bi(29)
            WIRE 1440 1472 1488 1472
            WIRE 1488 1472 1568 1472
            BEGIN DISPLAY 1488 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(29)
            WIRE 1792 1472 1856 1472
            WIRE 1856 1472 1904 1472
            BEGIN DISPLAY 1856 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_47 2176 304 R0
        BEGIN BRANCH Bi(30)
            WIRE 2048 272 2128 272
            WIRE 2128 272 2176 272
            BEGIN DISPLAY 2128 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(30)
            WIRE 2400 272 2464 272
            WIRE 2464 272 2512 272
            BEGIN DISPLAY 2464 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Bo(0)
            WIRE 1104 256 1216 256
        END BRANCH
    END SHEET
END SCHEMATIC

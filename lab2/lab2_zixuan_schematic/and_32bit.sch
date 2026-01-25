VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL andout(0)
        SIGNAL andout(1)
        SIGNAL andout(2)
        SIGNAL andout(3)
        SIGNAL andout(8)
        SIGNAL andout(9)
        SIGNAL andout(10)
        SIGNAL andout(11)
        SIGNAL andout(4)
        SIGNAL andout(5)
        SIGNAL andout(6)
        SIGNAL andout(7)
        SIGNAL andout(12)
        SIGNAL andout(13)
        SIGNAL andout(14)
        SIGNAL andout(15)
        SIGNAL ando(16)
        SIGNAL and1(16)
        SIGNAL andout(16)
        SIGNAL ando(17)
        SIGNAL and1(17)
        SIGNAL andout(17)
        SIGNAL ando(18)
        SIGNAL and1(18)
        SIGNAL andout(18)
        SIGNAL ando(19)
        SIGNAL and1(19)
        SIGNAL andout(19)
        SIGNAL ando(24)
        SIGNAL and1(24)
        SIGNAL andout(24)
        SIGNAL ando(25)
        SIGNAL and1(25)
        SIGNAL andout(25)
        SIGNAL ando(26)
        SIGNAL and1(26)
        SIGNAL andout(26)
        SIGNAL ando(27)
        SIGNAL and1(27)
        SIGNAL andout(27)
        SIGNAL ando(20)
        SIGNAL and1(20)
        SIGNAL andout(20)
        SIGNAL ando(21)
        SIGNAL and1(21)
        SIGNAL andout(21)
        SIGNAL ando(22)
        SIGNAL and1(22)
        SIGNAL andout(22)
        SIGNAL ando(23)
        SIGNAL and1(23)
        SIGNAL andout(23)
        SIGNAL ando(28)
        SIGNAL and1(28)
        SIGNAL andout(28)
        SIGNAL ando(29)
        SIGNAL and1(29)
        SIGNAL andout(29)
        SIGNAL ando(30)
        SIGNAL and1(30)
        SIGNAL andout(30)
        SIGNAL ando(31)
        SIGNAL and1(31)
        SIGNAL andout(31)
        SIGNAL ando(31:0)
        SIGNAL and1(31:0)
        BEGIN SIGNAL andout(31:0)
        END SIGNAL
        SIGNAL and1(15)
        SIGNAL ando(15)
        SIGNAL and1(14)
        SIGNAL ando(14)
        SIGNAL and1(13)
        SIGNAL ando(13)
        SIGNAL and1(12)
        SIGNAL ando(12)
        SIGNAL and1(11)
        SIGNAL ando(11)
        SIGNAL and1(10)
        SIGNAL ando(10)
        SIGNAL and1(9)
        SIGNAL ando(9)
        SIGNAL and1(8)
        SIGNAL ando(8)
        SIGNAL and1(7)
        SIGNAL ando(7)
        SIGNAL and1(6)
        SIGNAL ando(6)
        SIGNAL and1(5)
        SIGNAL ando(5)
        SIGNAL and1(4)
        SIGNAL ando(4)
        SIGNAL and1(3)
        SIGNAL ando(3)
        SIGNAL and1(2)
        SIGNAL ando(2)
        SIGNAL and1(1)
        SIGNAL ando(1)
        SIGNAL and1(0)
        SIGNAL ando(0)
        SIGNAL Result
        SIGNAL XLXN_418
        SIGNAL XLXN_419
        SIGNAL XLXN_420
        PORT Input ando(31:0)
        PORT Input and1(31:0)
        PORT Output Result
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF or16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -448 48 -448 
            LINE N 48 -592 48 -1024 
            ARC N 28 -592 204 -416 192 -544 112 -592 
            LINE N 112 -496 48 -496 
            ARC N 28 -672 204 -496 112 -496 192 -544 
            LINE N 112 -592 48 -592 
            ARC N -40 -600 72 -488 48 -496 48 -592 
            LINE N 48 -64 48 -496 
            LINE N 256 -544 192 -544 
            LINE N 0 -640 48 -640 
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            LINE N 0 -384 48 -384 
            LINE N 0 -320 48 -320 
            LINE N 0 -256 48 -256 
            LINE N 0 -192 48 -192 
            LINE N 0 -1024 48 -1024 
            LINE N 0 -960 48 -960 
            LINE N 0 -896 48 -896 
            LINE N 0 -832 48 -832 
            LINE N 0 -768 48 -768 
            LINE N 0 -704 48 -704 
            LINE N 0 -128 48 -128 
            LINE N 0 -64 48 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_68 xor2
            PIN I0 and1(0)
            PIN I1 ando(0)
            PIN O andout(0)
        END BLOCK
        BEGIN BLOCK XLXI_80 xor2
            PIN I0 and1(1)
            PIN I1 ando(1)
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_81 xor2
            PIN I0 and1(2)
            PIN I1 ando(2)
            PIN O andout(2)
        END BLOCK
        BEGIN BLOCK XLXI_82 xor2
            PIN I0 and1(3)
            PIN I1 ando(3)
            PIN O andout(3)
        END BLOCK
        BEGIN BLOCK XLXI_83 xor2
            PIN I0 and1(4)
            PIN I1 ando(4)
            PIN O andout(4)
        END BLOCK
        BEGIN BLOCK XLXI_84 xor2
            PIN I0 and1(5)
            PIN I1 ando(5)
            PIN O andout(5)
        END BLOCK
        BEGIN BLOCK XLXI_85 xor2
            PIN I0 and1(6)
            PIN I1 ando(6)
            PIN O andout(6)
        END BLOCK
        BEGIN BLOCK XLXI_86 xor2
            PIN I0 and1(7)
            PIN I1 ando(7)
            PIN O andout(7)
        END BLOCK
        BEGIN BLOCK XLXI_87 xor2
            PIN I0 and1(15)
            PIN I1 ando(15)
            PIN O andout(15)
        END BLOCK
        BEGIN BLOCK XLXI_88 xor2
            PIN I0 and1(14)
            PIN I1 ando(14)
            PIN O andout(14)
        END BLOCK
        BEGIN BLOCK XLXI_89 xor2
            PIN I0 and1(13)
            PIN I1 ando(13)
            PIN O andout(13)
        END BLOCK
        BEGIN BLOCK XLXI_90 xor2
            PIN I0 and1(12)
            PIN I1 ando(12)
            PIN O andout(12)
        END BLOCK
        BEGIN BLOCK XLXI_91 xor2
            PIN I0 and1(11)
            PIN I1 ando(11)
            PIN O andout(11)
        END BLOCK
        BEGIN BLOCK XLXI_92 xor2
            PIN I0 and1(10)
            PIN I1 ando(10)
            PIN O andout(10)
        END BLOCK
        BEGIN BLOCK XLXI_93 xor2
            PIN I0 and1(9)
            PIN I1 ando(9)
            PIN O andout(9)
        END BLOCK
        BEGIN BLOCK XLXI_94 xor2
            PIN I0 and1(8)
            PIN I1 ando(8)
            PIN O andout(8)
        END BLOCK
        BEGIN BLOCK XLXI_95 xor2
            PIN I0 and1(23)
            PIN I1 ando(23)
            PIN O andout(23)
        END BLOCK
        BEGIN BLOCK XLXI_96 xor2
            PIN I0 and1(22)
            PIN I1 ando(22)
            PIN O andout(22)
        END BLOCK
        BEGIN BLOCK XLXI_97 xor2
            PIN I0 and1(20)
            PIN I1 ando(20)
            PIN O andout(20)
        END BLOCK
        BEGIN BLOCK XLXI_98 xor2
            PIN I0 and1(19)
            PIN I1 ando(19)
            PIN O andout(19)
        END BLOCK
        BEGIN BLOCK XLXI_99 xor2
            PIN I0 and1(18)
            PIN I1 ando(18)
            PIN O andout(18)
        END BLOCK
        BEGIN BLOCK XLXI_100 xor2
            PIN I0 and1(17)
            PIN I1 ando(17)
            PIN O andout(17)
        END BLOCK
        BEGIN BLOCK XLXI_101 xor2
            PIN I0 and1(16)
            PIN I1 ando(16)
            PIN O andout(16)
        END BLOCK
        BEGIN BLOCK XLXI_102 xor2
            PIN I0 and1(24)
            PIN I1 ando(24)
            PIN O andout(24)
        END BLOCK
        BEGIN BLOCK XLXI_103 xor2
            PIN I0 and1(25)
            PIN I1 ando(25)
            PIN O andout(25)
        END BLOCK
        BEGIN BLOCK XLXI_104 xor2
            PIN I0 and1(26)
            PIN I1 ando(26)
            PIN O andout(26)
        END BLOCK
        BEGIN BLOCK XLXI_105 xor2
            PIN I0 and1(27)
            PIN I1 ando(27)
            PIN O andout(27)
        END BLOCK
        BEGIN BLOCK XLXI_106 xor2
            PIN I0 and1(28)
            PIN I1 ando(28)
            PIN O andout(28)
        END BLOCK
        BEGIN BLOCK XLXI_107 xor2
            PIN I0 and1(29)
            PIN I1 ando(29)
            PIN O andout(29)
        END BLOCK
        BEGIN BLOCK XLXI_108 xor2
            PIN I0 and1(30)
            PIN I1 ando(30)
            PIN O andout(30)
        END BLOCK
        BEGIN BLOCK XLXI_109 xor2
            PIN I0 and1(31)
            PIN I1 ando(31)
            PIN O andout(31)
        END BLOCK
        BEGIN BLOCK XLXI_110 or16
            PIN I0 andout(31)
            PIN I1 andout(30)
            PIN I10 andout(21)
            PIN I11 andout(20)
            PIN I12 andout(19)
            PIN I13 andout(18)
            PIN I14 andout(17)
            PIN I15 andout(16)
            PIN I2 andout(29)
            PIN I3 andout(28)
            PIN I4 andout(27)
            PIN I5 andout(26)
            PIN I6 andout(25)
            PIN I7 andout(24)
            PIN I8 andout(23)
            PIN I9 andout(22)
            PIN O XLXN_419
        END BLOCK
        BEGIN BLOCK XLXI_111 or16
            PIN I0 andout(15)
            PIN I1 andout(14)
            PIN I10 andout(5)
            PIN I11 andout(4)
            PIN I12 andout(3)
            PIN I13 andout(2)
            PIN I14 andout(1)
            PIN I15 andout(0)
            PIN I2 andout(13)
            PIN I3 andout(12)
            PIN I4 andout(11)
            PIN I5 andout(10)
            PIN I6 andout(9)
            PIN I7 andout(8)
            PIN I8 andout(7)
            PIN I9 andout(6)
            PIN O XLXN_420
        END BLOCK
        BEGIN BLOCK XLXI_112 or2
            PIN I0 XLXN_419
            PIN I1 XLXN_420
            PIN O XLXN_418
        END BLOCK
        BEGIN BLOCK XLXI_114 inv
            PIN I XLXN_418
            PIN O Result
        END BLOCK
        BEGIN BLOCK XLXI_115 xor2
            PIN I0 and1(21)
            PIN I1 ando(21)
            PIN O andout(21)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ando(16)
            WIRE 1568 544 1632 544
            WIRE 1632 544 1680 544
            BEGIN DISPLAY 1632 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(16)
            WIRE 1568 608 1616 608
            WIRE 1616 608 1680 608
            BEGIN DISPLAY 1616 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(16)
            WIRE 1936 576 2064 576
            WIRE 2064 576 2096 576
            BEGIN DISPLAY 2064 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(17)
            WIRE 1568 752 1616 752
            WIRE 1616 752 1680 752
            BEGIN DISPLAY 1616 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(17)
            WIRE 1568 816 1616 816
            WIRE 1616 816 1680 816
            BEGIN DISPLAY 1616 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(17)
            WIRE 1936 784 2064 784
            WIRE 2064 784 2096 784
            BEGIN DISPLAY 2064 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(18)
            WIRE 1568 928 1632 928
            WIRE 1632 928 1680 928
            BEGIN DISPLAY 1632 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(18)
            WIRE 1568 992 1616 992
            WIRE 1616 992 1680 992
            BEGIN DISPLAY 1616 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(18)
            WIRE 1936 960 2064 960
            WIRE 2064 960 2096 960
            BEGIN DISPLAY 2064 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(19)
            WIRE 1568 1088 1616 1088
            WIRE 1616 1088 1680 1088
            BEGIN DISPLAY 1616 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(19)
            WIRE 1568 1152 1616 1152
            WIRE 1616 1152 1680 1152
            BEGIN DISPLAY 1616 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(19)
            WIRE 1936 1120 2048 1120
            WIRE 2048 1120 2096 1120
            BEGIN DISPLAY 2048 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(24)
            WIRE 2256 560 2320 560
            WIRE 2320 560 2368 560
            BEGIN DISPLAY 2320 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(24)
            WIRE 2256 624 2288 624
            WIRE 2288 624 2368 624
            BEGIN DISPLAY 2288 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(24)
            WIRE 2624 592 2752 592
            WIRE 2752 592 2784 592
            BEGIN DISPLAY 2752 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(25)
            WIRE 2256 768 2304 768
            WIRE 2304 768 2368 768
            BEGIN DISPLAY 2304 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(25)
            WIRE 2256 832 2272 832
            WIRE 2272 832 2368 832
            BEGIN DISPLAY 2272 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(25)
            WIRE 2624 800 2768 800
            WIRE 2768 800 2784 800
            BEGIN DISPLAY 2768 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(26)
            WIRE 2256 944 2304 944
            WIRE 2304 944 2368 944
            BEGIN DISPLAY 2304 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(26)
            WIRE 2256 1008 2272 1008
            WIRE 2272 1008 2368 1008
            BEGIN DISPLAY 2272 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(26)
            WIRE 2624 976 2752 976
            WIRE 2752 976 2784 976
            BEGIN DISPLAY 2752 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(27)
            WIRE 2256 1104 2304 1104
            WIRE 2304 1104 2368 1104
            BEGIN DISPLAY 2304 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(27)
            WIRE 2256 1168 2288 1168
            WIRE 2288 1168 2368 1168
            BEGIN DISPLAY 2288 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(27)
            WIRE 2624 1136 2752 1136
            WIRE 2752 1136 2784 1136
            BEGIN DISPLAY 2752 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(20)
            WIRE 1568 1296 1632 1296
            WIRE 1632 1296 1680 1296
            BEGIN DISPLAY 1632 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(20)
            WIRE 1568 1360 1600 1360
            WIRE 1600 1360 1680 1360
            BEGIN DISPLAY 1600 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(20)
            WIRE 1936 1328 2064 1328
            WIRE 2064 1328 2096 1328
            BEGIN DISPLAY 2064 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(21)
            WIRE 1568 1504 1616 1504
            WIRE 1616 1504 1680 1504
            BEGIN DISPLAY 1616 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(21)
            WIRE 1568 1568 1600 1568
            WIRE 1600 1568 1680 1568
            BEGIN DISPLAY 1600 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(21)
            WIRE 1936 1536 2080 1536
            WIRE 2080 1536 2096 1536
            BEGIN DISPLAY 2080 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(22)
            WIRE 1568 1680 1632 1680
            WIRE 1632 1680 1680 1680
            BEGIN DISPLAY 1632 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(22)
            WIRE 1568 1744 1600 1744
            WIRE 1600 1744 1680 1744
            BEGIN DISPLAY 1600 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(22)
            WIRE 1936 1712 2064 1712
            WIRE 2064 1712 2096 1712
            BEGIN DISPLAY 2064 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(23)
            WIRE 1568 1840 1616 1840
            WIRE 1616 1840 1680 1840
            BEGIN DISPLAY 1616 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(23)
            WIRE 1568 1904 1600 1904
            WIRE 1600 1904 1680 1904
            BEGIN DISPLAY 1600 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(23)
            WIRE 1936 1872 2064 1872
            WIRE 2064 1872 2096 1872
            BEGIN DISPLAY 2064 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(28)
            WIRE 2224 1328 2288 1328
            WIRE 2288 1328 2336 1328
            BEGIN DISPLAY 2288 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(28)
            WIRE 2224 1392 2256 1392
            WIRE 2256 1392 2336 1392
            BEGIN DISPLAY 2256 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(28)
            WIRE 2592 1360 2736 1360
            WIRE 2736 1360 2752 1360
            BEGIN DISPLAY 2736 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(29)
            WIRE 2224 1536 2288 1536
            WIRE 2288 1536 2336 1536
            BEGIN DISPLAY 2288 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(29)
            WIRE 2224 1600 2256 1600
            WIRE 2256 1600 2336 1600
            BEGIN DISPLAY 2256 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(29)
            WIRE 2592 1568 2736 1568
            WIRE 2736 1568 2752 1568
            BEGIN DISPLAY 2736 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(30)
            WIRE 2224 1712 2288 1712
            WIRE 2288 1712 2336 1712
            BEGIN DISPLAY 2288 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(30)
            WIRE 2224 1776 2256 1776
            WIRE 2256 1776 2336 1776
            BEGIN DISPLAY 2256 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(30)
            WIRE 2592 1744 2720 1744
            WIRE 2720 1744 2752 1744
            BEGIN DISPLAY 2720 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(31)
            WIRE 2224 1872 2272 1872
            WIRE 2272 1872 2336 1872
            BEGIN DISPLAY 2272 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(31)
            WIRE 2224 1936 2256 1936
            WIRE 2256 1936 2336 1936
            BEGIN DISPLAY 2256 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(31)
            WIRE 2592 1904 2736 1904
            WIRE 2736 1904 2752 1904
            BEGIN DISPLAY 2736 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(31:0)
            WIRE 352 112 832 112
        END BRANCH
        BEGIN BRANCH and1(31:0)
            WIRE 352 192 848 192
        END BRANCH
        BEGIN BRANCH andout(0)
            WIRE 2848 80 2896 80
            WIRE 2896 80 2960 80
            BEGIN DISPLAY 2896 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(1)
            WIRE 2848 144 2880 144
            WIRE 2880 144 2960 144
            BEGIN DISPLAY 2880 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(2)
            WIRE 2832 208 2880 208
            WIRE 2880 208 2960 208
            BEGIN DISPLAY 2880 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(3)
            WIRE 2832 272 2880 272
            WIRE 2880 272 2960 272
            BEGIN DISPLAY 2880 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(4)
            WIRE 2848 336 2880 336
            WIRE 2880 336 2960 336
            BEGIN DISPLAY 2880 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(5)
            WIRE 2848 400 2896 400
            WIRE 2896 400 2960 400
            BEGIN DISPLAY 2896 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(6)
            WIRE 2864 464 2880 464
            WIRE 2880 464 2960 464
            BEGIN DISPLAY 2880 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(7)
            WIRE 2864 528 2896 528
            WIRE 2896 528 2960 528
            BEGIN DISPLAY 2896 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(8)
            WIRE 2880 592 2896 592
            WIRE 2896 592 2960 592
            BEGIN DISPLAY 2896 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(9)
            WIRE 2848 656 2864 656
            WIRE 2864 656 2960 656
            BEGIN DISPLAY 2864 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(10)
            WIRE 2864 720 2960 720
            BEGIN DISPLAY 2864 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(11)
            WIRE 2864 784 2880 784
            WIRE 2880 784 2960 784
            BEGIN DISPLAY 2880 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(12)
            WIRE 2848 848 2880 848
            WIRE 2880 848 2960 848
            BEGIN DISPLAY 2880 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(13)
            WIRE 2848 912 2864 912
            WIRE 2864 912 2960 912
            BEGIN DISPLAY 2864 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(14)
            WIRE 2848 976 2880 976
            WIRE 2880 976 2960 976
            BEGIN DISPLAY 2880 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(15)
            WIRE 2864 1040 2896 1040
            WIRE 2896 1040 2960 1040
            BEGIN DISPLAY 2896 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(16)
            WIRE 2864 1280 2880 1280
            WIRE 2880 1280 2944 1280
            BEGIN DISPLAY 2880 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(17)
            WIRE 2864 1344 2896 1344
            WIRE 2896 1344 2944 1344
            BEGIN DISPLAY 2896 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(18)
            WIRE 2864 1408 2880 1408
            WIRE 2880 1408 2944 1408
            BEGIN DISPLAY 2880 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(19)
            WIRE 2864 1472 2880 1472
            WIRE 2880 1472 2944 1472
            BEGIN DISPLAY 2880 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(20)
            WIRE 2864 1536 2896 1536
            WIRE 2896 1536 2944 1536
            BEGIN DISPLAY 2896 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(21)
            WIRE 2864 1600 2896 1600
            WIRE 2896 1600 2944 1600
            BEGIN DISPLAY 2896 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(22)
            WIRE 2864 1664 2896 1664
            WIRE 2896 1664 2944 1664
            BEGIN DISPLAY 2896 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(23)
            WIRE 2848 1728 2880 1728
            WIRE 2880 1728 2944 1728
            BEGIN DISPLAY 2880 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(24)
            WIRE 2848 1792 2896 1792
            WIRE 2896 1792 2944 1792
            BEGIN DISPLAY 2896 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(25)
            WIRE 2848 1856 2880 1856
            WIRE 2880 1856 2944 1856
            BEGIN DISPLAY 2880 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(26)
            WIRE 2864 1920 2896 1920
            WIRE 2896 1920 2944 1920
            BEGIN DISPLAY 2896 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(27)
            WIRE 2848 1984 2880 1984
            WIRE 2880 1984 2944 1984
            BEGIN DISPLAY 2880 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(28)
            WIRE 2848 2048 2880 2048
            WIRE 2880 2048 2944 2048
            BEGIN DISPLAY 2880 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(29)
            WIRE 2848 2112 2880 2112
            WIRE 2880 2112 2944 2112
            BEGIN DISPLAY 2880 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(30)
            WIRE 2848 2176 2880 2176
            WIRE 2880 2176 2944 2176
            BEGIN DISPLAY 2880 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(31)
            WIRE 2832 2240 2880 2240
            WIRE 2880 2240 2944 2240
            BEGIN DISPLAY 2880 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 352 112 ando(31:0) R180 28
        IOMARKER 352 192 and1(31:0) R180 28
        BEGIN BRANCH andout(31:0)
            WIRE 368 320 848 320
            BEGIN DISPLAY 848 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(7)
            WIRE 512 1824 640 1824
            WIRE 640 1824 672 1824
            BEGIN DISPLAY 640 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(6)
            WIRE 512 1664 624 1664
            WIRE 624 1664 672 1664
            BEGIN DISPLAY 624 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(5)
            WIRE 512 1488 528 1488
            WIRE 528 1488 672 1488
            BEGIN DISPLAY 528 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(4)
            WIRE 512 1280 672 1280
        END BRANCH
        BEGIN BRANCH andout(3)
            WIRE 512 1072 528 1072
            WIRE 528 1072 672 1072
            BEGIN DISPLAY 528 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(2)
            WIRE 512 912 672 912
        END BRANCH
        BEGIN BRANCH andout(1)
            WIRE 512 736 528 736
            WIRE 528 736 672 736
            BEGIN DISPLAY 528 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(0)
            WIRE 512 528 544 528
            WIRE 544 528 672 528
            BEGIN DISPLAY 544 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(15)
            WIRE 1168 1856 1296 1856
            WIRE 1296 1856 1328 1856
            BEGIN DISPLAY 1296 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(15)
            WIRE 800 1888 864 1888
            WIRE 864 1888 912 1888
            BEGIN DISPLAY 864 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(15)
            WIRE 800 1824 848 1824
            WIRE 848 1824 912 1824
            BEGIN DISPLAY 848 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(14)
            WIRE 1168 1696 1312 1696
            WIRE 1312 1696 1328 1696
            BEGIN DISPLAY 1312 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(14)
            WIRE 800 1728 848 1728
            WIRE 848 1728 912 1728
            BEGIN DISPLAY 848 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(14)
            WIRE 800 1664 864 1664
            WIRE 864 1664 912 1664
            BEGIN DISPLAY 864 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(13)
            WIRE 1168 1520 1296 1520
            WIRE 1296 1520 1328 1520
            BEGIN DISPLAY 1296 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(13)
            WIRE 800 1552 864 1552
            WIRE 864 1552 912 1552
            BEGIN DISPLAY 864 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(13)
            WIRE 800 1488 864 1488
            WIRE 864 1488 912 1488
            BEGIN DISPLAY 864 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(12)
            WIRE 1168 1312 1296 1312
            WIRE 1296 1312 1328 1312
            BEGIN DISPLAY 1296 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(12)
            WIRE 800 1344 848 1344
            WIRE 848 1344 912 1344
            BEGIN DISPLAY 848 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(12)
            WIRE 800 1280 864 1280
            WIRE 864 1280 912 1280
            BEGIN DISPLAY 864 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(11)
            WIRE 1200 1088 1312 1088
            WIRE 1312 1088 1360 1088
            BEGIN DISPLAY 1312 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(11)
            WIRE 832 1120 880 1120
            WIRE 880 1120 944 1120
            BEGIN DISPLAY 880 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(11)
            WIRE 832 1056 896 1056
            WIRE 896 1056 944 1056
            BEGIN DISPLAY 896 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(10)
            WIRE 1200 928 1328 928
            WIRE 1328 928 1360 928
            BEGIN DISPLAY 1328 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(10)
            WIRE 832 960 880 960
            WIRE 880 960 944 960
            BEGIN DISPLAY 880 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(10)
            WIRE 832 896 896 896
            WIRE 896 896 944 896
            BEGIN DISPLAY 896 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(9)
            WIRE 1200 752 1328 752
            WIRE 1328 752 1360 752
            BEGIN DISPLAY 1328 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(9)
            WIRE 832 784 880 784
            WIRE 880 784 944 784
            BEGIN DISPLAY 880 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(9)
            WIRE 832 720 880 720
            WIRE 880 720 944 720
            BEGIN DISPLAY 880 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH andout(8)
            WIRE 1200 544 1328 544
            WIRE 1328 544 1360 544
            BEGIN DISPLAY 1328 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(8)
            WIRE 832 576 880 576
            WIRE 880 576 944 576
            BEGIN DISPLAY 880 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(8)
            WIRE 832 512 896 512
            WIRE 896 512 944 512
            BEGIN DISPLAY 896 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(7)
            WIRE 144 1856 192 1856
            WIRE 192 1856 256 1856
            BEGIN DISPLAY 192 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(7)
            WIRE 144 1792 208 1792
            WIRE 208 1792 256 1792
            BEGIN DISPLAY 208 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(6)
            WIRE 144 1696 192 1696
            WIRE 192 1696 256 1696
            BEGIN DISPLAY 192 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(6)
            WIRE 144 1632 208 1632
            WIRE 208 1632 256 1632
            BEGIN DISPLAY 208 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(5)
            WIRE 144 1520 192 1520
            WIRE 192 1520 256 1520
            BEGIN DISPLAY 192 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(5)
            WIRE 144 1456 208 1456
            WIRE 208 1456 256 1456
            BEGIN DISPLAY 208 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(4)
            WIRE 144 1312 192 1312
            WIRE 192 1312 256 1312
            BEGIN DISPLAY 192 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(4)
            WIRE 144 1248 208 1248
            WIRE 208 1248 256 1248
            BEGIN DISPLAY 208 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(3)
            WIRE 144 1104 208 1104
            WIRE 208 1104 256 1104
            BEGIN DISPLAY 208 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(3)
            WIRE 144 1040 208 1040
            WIRE 208 1040 256 1040
            BEGIN DISPLAY 208 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(2)
            WIRE 144 944 192 944
            WIRE 192 944 256 944
            BEGIN DISPLAY 192 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(2)
            WIRE 144 880 208 880
            WIRE 208 880 256 880
            BEGIN DISPLAY 208 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(1)
            WIRE 144 768 176 768
            WIRE 176 768 240 768
            WIRE 240 768 256 768
            BEGIN DISPLAY 176 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(1)
            WIRE 144 704 208 704
            WIRE 208 704 240 704
            WIRE 240 704 256 704
            BEGIN DISPLAY 208 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and1(0)
            WIRE 144 560 192 560
            WIRE 192 560 256 560
            BEGIN DISPLAY 192 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ando(0)
            WIRE 144 496 224 496
            WIRE 224 496 256 496
            BEGIN DISPLAY 224 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_68 256 624 R0
        INSTANCE XLXI_80 240 832 R0
        INSTANCE XLXI_81 256 1008 R0
        INSTANCE XLXI_82 256 1168 R0
        INSTANCE XLXI_83 256 1376 R0
        INSTANCE XLXI_84 256 1584 R0
        INSTANCE XLXI_85 256 1760 R0
        INSTANCE XLXI_86 256 1920 R0
        INSTANCE XLXI_87 912 1952 R0
        INSTANCE XLXI_88 912 1792 R0
        INSTANCE XLXI_89 912 1616 R0
        INSTANCE XLXI_90 912 1408 R0
        INSTANCE XLXI_91 944 1184 R0
        INSTANCE XLXI_92 944 1024 R0
        INSTANCE XLXI_93 944 848 R0
        INSTANCE XLXI_94 944 640 R0
        INSTANCE XLXI_95 1680 1968 R0
        INSTANCE XLXI_96 1680 1808 R0
        INSTANCE XLXI_97 1680 1424 R0
        INSTANCE XLXI_98 1680 1216 R0
        INSTANCE XLXI_99 1680 1056 R0
        INSTANCE XLXI_100 1680 880 R0
        INSTANCE XLXI_101 1680 672 R0
        INSTANCE XLXI_102 2368 688 R0
        INSTANCE XLXI_103 2368 896 R0
        INSTANCE XLXI_104 2368 1072 R0
        INSTANCE XLXI_105 2368 1232 R0
        INSTANCE XLXI_106 2336 1456 R0
        INSTANCE XLXI_107 2336 1664 R0
        INSTANCE XLXI_108 2336 1840 R0
        INSTANCE XLXI_109 2336 2000 R0
        INSTANCE XLXI_110 2944 2304 R0
        INSTANCE XLXI_114 3264 1264 R90
        BEGIN BRANCH Result
            WIRE 3296 1488 3328 1488
        END BRANCH
        IOMARKER 3328 1488 Result R0 28
        BEGIN BRANCH XLXN_418
            WIRE 3296 1248 3296 1264
            WIRE 3296 1248 3376 1248
            WIRE 3360 1184 3376 1184
            WIRE 3376 1184 3376 1248
        END BRANCH
        INSTANCE XLXI_111 2960 1104 R0
        INSTANCE XLXI_112 3104 1280 R0
        BEGIN BRANCH XLXN_419
            WIRE 3040 1216 3104 1216
            WIRE 3040 1216 3040 1248
            WIRE 3040 1248 3248 1248
            WIRE 3248 1248 3248 1760
            WIRE 3200 1760 3248 1760
        END BRANCH
        BEGIN BRANCH XLXN_420
            WIRE 3040 1072 3040 1152
            WIRE 3040 1152 3104 1152
            WIRE 3040 1072 3296 1072
            WIRE 3216 560 3296 560
            WIRE 3296 560 3296 1072
        END BRANCH
        INSTANCE XLXI_115 1680 1632 R0
    END SHEET
END SCHEMATIC

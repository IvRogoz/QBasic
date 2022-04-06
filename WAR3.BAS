SCREEN 12
 DEF SEG = 0
 POKE 1047, KeyFlags
 DEF SEG
DIM c%(55)
DIM xreo(55), yreo(55)
DIM x%(55), y%(55)
DIM vje%(215)
COLOR 7
PRINT "Vjetar:"
GET (0, 1)-(52, 15), vje%
LOCATE 1, 1
PRINT "       "
COLOR 15
a = 1: B = 1: c = 1: d = 1
brp = 100
gran1% = 10
gran2% = 10
min1% = 99
min2% = 99
ziv1% = 5
ziv2% = 5
oruz1$ = "m"
oruz2$ = "m"
kut1 = .785
kut2 = .785
REM
LINE (100, 100)-(540, 330), , B
LINE (100, 100)-(0, 0)
LINE (540, 100)-(640, 0)
LINE (540, 330)-(640, 480)
LINE (100, 330)-(0, 480)
LINE (110, 350)-(530, 350)
LINE (530, 350)-(590, 450)
LINE (110, 350)-(50, 450)
LINE (120, 370)-(520, 370)
LINE (120, 370)-(115, 380)
LINE (115, 380)-(525, 380)
LINE (525, 380)-(520, 370)
LINE (110, 363)-(530, 363)
LINE (112, 386)-(528, 386)
LINE (112, 386)-(75, 450)
LINE (75, 450)-(515, 450)
LINE (515, 450)-(500, 420)
LINE (500, 420)-(547, 420)
LINE (547, 420)-(528, 386)
LINE (65, 95)-(85, 110)
LINE (85, 110)-(85, 330)
LINE (85, 330)-(65, 357)
LINE (65, 357)-(65, 95)
LINE (560, 120)-(610, 95)
LINE (560, 123)-(610, 102)
LINE (560, 239)-(610, 238)
LINE (560, 241)-(610, 242)
LINE (560, 320)-(610, 365)
LINE (560, 323)-(610, 372)
LINE (100, 10)-(540, 10)
LINE (100, 10)-(110, 35)
LINE (110, 35)-(250, 35)
LINE (250, 35)-(260, 20)
LINE (260, 20)-(380, 20)
LINE (380, 20)-(390, 35)
LINE (390, 35)-(530, 35)
LINE (530, 35)-(540, 10)
LOCATE 2, 19
PRINT "Program by"
LOCATE 2, 53
PRINT "Ante BrkiÜ"
LOCATE 10, 15
INPUT "Ime prvog igraüa: "; ime$(1)
LOCATE , 15
INPUT "Ime drugag igraüa: "; ime$(2)
LOCATE 28, 20
COLOR 2
PRINT "P R I T I S N I  R A Z M A K N I C U !!!"
DO: LOOP UNTIL INKEY$ = CHR$(32)
RANDOMIZE TIMER
i% = INT(RND * 2) + 1
2
CLS
COLOR 15
min% = 400
vjetar = INT(RND * 18) + 1
x1 = INT(RND * 100) + 15
x2 = INT(RND * 100) + 525
y1 = INT(RND * 250) + 150
y2 = INT(RND * 250) + 150
y3% = INT(RND * 200) + 200
y4% = INT(RND * 220) + 180
y5% = INT(RND * 250) + 150
y6% = INT(RND * 300) + 100
y7% = INT(RND * 323) + 77
y8% = INT(RND * 300) + 100
y9% = INT(RND * 250) + 150
y10% = INT(RND * 220) + 180
IF y1 < min% THEN min% = y1
IF y2 < min% THEN min% = y2
IF y3% < min% THEN min% = y3%
IF y4% < min% THEN min% = y4%
IF y5% < min% THEN min% = y5%
IF y6% < min% THEN min% = y6%
IF y7% < min% THEN min% = y7%
IF y8% < min% THEN min% = y8%
IF y9% < min% THEN min% = y9%
IF y10% < min% THEN min = y10%
IF vjetar > 10 THEN vjetar = -vjetar + 10
LINE (0, y1)-(120, y1)
LINE (520, y2)-(640, y2)
LINE (120, y1)-(164, y3%)
LINE (164, y3%)-(209, y4%)
LINE (209, y4%)-(252, y5%)
LINE (252, y5%)-(295, y6%)
LINE (295, y6%)-(327, y7%)
LINE (327, y7%)-(381, y8%)
LINE (381, y8%)-(424, y9%)
LINE (424, y9%)-(470, y10%)
LINE (470, y10%)-(520, y2)
LINE (0, y1)-(0, 460)
LINE (0, 460)-(639, 460)
LINE (639, 460)-(639, y2)
PAINT (10, 450), 1, 15
xrel1% = COS(kut1) * 10
yrel1% = SIN(kut1) * 10
xrel2% = COS(kut2) * 10
yrel2% = SIN(kut2) * 10
5
IF gran1% < 1 THEN oruz1$ = "m"
IF gran2% < 1 THEN oruz2$ = "m"
IF min1% < 1 THEN oruz1$ = "g"
IF min2% < 1 THEN oruz2$ = "g"
IF gran1% < 1 AND min1% < 1 THEN oruz1$ = ""
IF gran2% < 1 AND min2% < 1 THEN oruz2$ = ""
IF oruz1$ = "" THEN i% = 2
IF oruz2$ = "" THEN i% = 1
IF oruz1$ = "" AND oruz2$ = "" THEN
 COLOR 15
 LOCATE 10, 25
 PRINT " Igraüi su ostali bez orußija !!!"
 PRINT
 LOCATE , 25
 PRINT "             Kraj."
END
END IF
LINE (0, 460)-(640, 480), 0, BF
LINE (0, 460)-(640, 460), 15
REM                                                  TENK 1
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 7
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 7
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 7
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 7
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 7
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 14
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 14
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 IF POINT(x1, y1 + 1) = 0 AND POINT(x1 - 9, y1 + 1) = 0 AND POINT(x1 + 9, y1 + 1) = 0 THEN
 FOR br = 1 TO 5000
 NEXT br
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 y1 = y1 + 1
 GOTO 5
END IF
REM                                                  TENK 2
6
LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 7
LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 7
LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 7
LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 7
LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 7
LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 12
LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 12
LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 12
LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 12
LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 12
LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 12
LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
IF POINT(x2, y2 + 1) = 0 AND POINT(x2 - 9, y2 + 1) = 0 AND POINT(x2 + 9, y2 + 1) = 0 THEN
 FOR br = 1 TO 5000
 NEXT br
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
 y2 = y2 + 1
 GOTO 6
END IF
REM
GOSUB podaci
a = 0
FOR br = 1 TO 50
a = a + .7
LINE (310 - br - a, 10)-(310 - br - a, 0), 2
LINE (310 + br + a, 10)-(310 + br + a, 0), 2
NEXT br
PRINT "IGRA "; ime$(i%)
LINE (170, 15)-(465, 15), 15
LINE (170, 53)-(465, 53), 15
koef = (RND * 1.2) + .4
prd = INT(RND * 1) + 1
IF prd = 2 THEN prd = -1
vjetar = vjetar * koef * prd
IF vjetar > 20 THEN vjetar = 20
IF vjetar < -20 THEN vjetar = -20
PUT (180, 56), vje%, XOR
LINE (350, 60)-(350 + 4 * vjetar, 60), 3
CIRCLE (350 + 4 * vjetar, 60), 1, 3
LINE (350, 56)-(350, 64)
IF i% = 1 THEN
LOCATE 2, 28
PRINT "Orußije("; oruz1$; "):"
11
a$ = INKEY$
SELECT CASE a$
CASE "g":
 IF gran1% > 0 THEN
 oruz1$ = "g"
 GOTO 33
 END IF
CASE "m"
 IF min1% > 0 THEN
 oruz1$ = "m"
 GOTO 33
 END IF
CASE CHR$(32): GOTO 33
END SELECT
GOTO 11
33
END IF
IF i% = 2 THEN
LOCATE 2, 28
PRINT "Orußije("; oruz2$; "):"
44
a$ = INKEY$
SELECT CASE a$
CASE CHR$(103):
 IF gran2% > 0 THEN
 oruz2$ = "g"
 GOTO 55
 END IF
CASE CHR$(109):
 IF min2% > 0 THEN
 oruz2$ = "m"
 GOTO 55
 END IF
CASE CHR$(32): GOTO 55
END SELECT
GOTO 44
55
END IF
GOSUB podaci:
LOCATE 2, 28
PRINT "                "
DO
LOCATE 2, 28
IF i% = 1 THEN PRINT "Kut("; CINT(kut1 * 57.3); ")";
IF i% = 2 THEN PRINT "Kut("; CINT(kut2 * 57.3); ")";
INPUT kut
LOOP UNTIL NOT kut > 90 AND NOT kut < 5
DO
LOCATE 3, 28
IF i% = 1 THEN PRINT "Brzina("; brz1; ")";
IF i% = 2 THEN PRINT "Brzina("; brz2; ")";
INPUT brz
LOOP UNTIL NOT brz > 100 AND NOT brz < 1
kut = kut * .017453
IF i% = 1 THEN brz1 = brz
IF kut > kut1 AND i% = 1 THEN
 DO
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 kut1 = kut1 + .01
 xrel1% = COS(kut1) * 10
 yrel1% = SIN(kut1) * 10
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 FOR br = 1 TO 200
 NEXT br
 LOOP UNTIL kut1 > kut
 kut1 = kut
END IF
IF kut < kut1 AND i% = 1 THEN
 DO
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 kut1 = kut1 - .01
 xrel1% = COS(kut1) * 10
 yrel1% = SIN(kut1) * 10
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 FOR br = 1 TO 200
 NEXT br
 LOOP UNTIL kut1 < kut
 kut1 = kut
END IF
IF i% = 2 THEN brz2 = brz
IF kut > kut2 AND i% = 2 THEN
 DO
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
 kut2 = kut2 + .01
 xrel2% = COS(kut2) * 10
 yrel2% = SIN(kut2) * 10
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
 FOR br = 1 TO 200
 NEXT br
 LOOP UNTIL kut2 > kut
 kut2 = kut
END IF
IF kut < kut2 AND i% = 2 THEN
 DO
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
 kut2 = kut2 - .01
 xrel2% = COS(kut2) * 10
 yrel2% = SIN(kut2) * 10
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
 FOR br = 1 TO 200
 NEXT br
 LOOP UNTIL kut2 < kut
 kut2 = kut
END IF
FOR br% = 5 TO 1 STEP -1
 LOCATE br%, 1
 PRINT "                                                                                     "
NEXT br%
REM                            *********************************************
REM                            **********************    PRVI IGRA¨   ******
REM                            *********************************************
IF i% = 1 THEN
 i% = 2
 IF oruz1$ = "g" THEN gran1% = gran1% - 1
 IF oruz1$ = "m" THEN min1% = min1% - 1
 x = x1 + xrel1% - 5
 y = y1 - yrel1% - 7
 IF oruz1$ = "g" THEN
 xr = COS(kut1) * brz / 9
 yr = SIN(kut1) * brz / 9
 END IF
 IF oruz1$ = "m" THEN
 xr = COS(kut1) * brz / 7
 yr = SIN(kut1) * brz / 7
 END IF
DO
 xr = xr - xr / 300 + vjetar / 1000
 yr = yr - .05
 PSET (x + 1, y), 0
 PSET (x, y - 1), 0
 PSET (x - 1, y), 0
 PSET (x, y + 1), 0
 x = x + xr
 y = y - yr
 IF oruz1$ = "g" THEN
  PSET (x + 1, y), 15
  PSET (x, y - 1), 15
  PSET (x - 1, y), 15
  PSET (x, y + 1), 15
 END IF
 IF oruz1$ = "m" THEN
  PSET (x + 1, y), 7
  PSET (x, y - 1), 7
  PSET (x - 1, y), 7
  PSET (x, y + 1), 7
 END IF
 REM                                   +++++ BRZINA PADANJA 1 +++++
 FOR br = 1 TO 1000
 NEXT br
 IF x > 800 OR y > 480 THEN GOTO 5
 IF y < -10 THEN
  LINE (x - xr, 10)-(x - xr, 0), 0
  LINE (x, 10)-(x, 0), 3
 END IF
 IF y > -10 AND y < 10 THEN LINE (x - xr, 10)-(x - xr, 0), 0
IF POINT(x2, y2 + 1) = 0 AND POINT(x2 - 9, y2 + 1) = 0 AND POINT(x2 + 9, y2 + 1) = 0 THEN
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
 y2 = y2 + 1
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 7
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 7
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 7
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 7
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 7
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 12
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 12
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
END IF
a$ = INKEY$
a% = 0: B% = 0
SELECT CASE a$
 CASE CHR$(106):
 a% = 1
 CASE CHR$(108):
 B% = 1
END SELECT
IF a% = 1 AND POINT(x2 - 11, y2 - 1) = 0 THEN
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
  x2 = x2 - 1 * a%
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 7
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 7
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 7
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 7
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 7
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 12
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 12
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
 a% = 0
END IF
IF B% = 1 AND POINT(x2 + 11, y2 - 1) = 0 THEN
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
  x2 = x2 + 1 * B%
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 7
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 7
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 7
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 7
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 7
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 12
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 12
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 12
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 12
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
 B% = 0
END IF
LOOP UNTIL POINT(x, y) > 0
IF POINT(x, y) = 14 THEN
 ziv1% = ziv1% - 1
 br = INT(RND * 30) + 5
 FOR bl% = 1 TO br
  c%(bl%) = INT(RND * br / 4) + 2
 NEXT bl%
 FOR bl% = 1 TO br
  kut = (INT(RND * 120) + 40) * .01745
  yreo(bl%) = SIN(kut) * c%(bl%)
  xreo(bl%) = COS(kut) * c%(bl%)
  x%(bl%) = x1
  y%(bl%) = y1 - 3
 NEXT bl%
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 FOR bl1% = 1 TO 80
  FOR bl% = 1 TO br
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
   IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
    xreo(bl%) = 0
    yreo(bl%) = 0
   END IF
   x%(bl%) = x%(bl%) - xreo(bl%)
   y%(bl%) = y%(bl%) - yreo(bl%)
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 14
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 14
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 14
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 14
   xreo(bl%) = xreo(bl%) - xreo(bl%) / 500 - vjetar / 2000
   yreo(bl%) = yreo(bl%) - .1
  NEXT bl%
  FOR bl2 = 1 TO brp
  NEXT bl2
 NEXT bl1%
 i% = 2
 IF ziv1% = 0 THEN GOTO kraj1
 GOTO 2
END IF
IF POINT(x, y) = 15 OR POINT(x, y) = 1 THEN
 IF oruz1$ = "g" THEN
  IF x > x2 - 30 AND x < x2 + 30 AND y > y2 - 20 AND y < y2 + 20 THEN
   REM                     ********************* PORED - GRANATA  *********
    FOR br = 1 TO 100
    c = INT(RND * 30) + 5
    k = RND * 6.28 + 1
    xre = COS(k) * c
    yre = SIN(k) * c
    LINE (x, y)-(x + xre, y + yre), 0
    NEXT br
    ziv2% = ziv2% - 1
    br = INT(RND * 30) + 5
    FOR bl% = 1 TO br
    c%(bl%) = INT(RND * br / 4) + 2
    NEXT bl%
    FOR bl% = 1 TO br
     kut = (INT(RND * 120) + 40) * .01745
     yreo(bl%) = SIN(kut) * c%(bl%)
     xreo(bl%) = COS(kut) * c%(bl%)
     x%(bl%) = x2
     y%(bl%) = y2 - 3
    NEXT bl%
  LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
  LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
  LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
  LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
  LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
  LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
  LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
  LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
  LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
  LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
  LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
  LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
  FOR bl1% = 1 TO 80
   FOR bl% = 1 TO br
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
    IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
     xreo(bl%) = 0
     yreo(bl%) = 0
    END IF
    x%(bl%) = x%(bl%) - xreo(bl%)
    y%(bl%) = y%(bl%) - yreo(bl%)
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 12
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 12
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 12
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 12
    xreo(bl%) = xreo(bl%) - xreo(bl%) / 500 - vjetar / 2000
    yreo(bl%) = yreo(bl%) - .1
   NEXT bl%
   FOR bl2 = 1 TO brp
   NEXT bl2
   NEXT bl1%
   i% = 1
   IF ziv2% = 0 THEN GOTO kraj2
   GOTO 2
   ELSE :
    REM                 ****************** GRANATA - promaÁaj *************
    FOR br = 1 TO 100
    c = INT(RND * 30) + 5
    k = RND * 6.28 + 1
    xre = COS(k) * c
    yre = SIN(k) * c
    LINE (x, y)-(x + xre, y + yre), 0
    NEXT br
    FOR xp% = x - 35 TO x + 35 STEP 1
     fl1% = 0
     brp% = 0
     brd% = 0
     FOR yp% = y + 35 TO min% STEP -1
      IF POINT(xp%, yp%) = 0 THEN fl1% = 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 1 THEN brp% = brp% + 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 15 THEN brp% = brp% + 1
      IF fl1% = 0 THEN brd% = brd% + 1
     NEXT yp%
    LINE (xp%, y + 35 - brd%)-(xp%, y + 35 - brd% - brp%), 1
    LINE (xp%, y + 35 - brd% - brp%)-(xp%, min%), 0
    NEXT xp%
   END IF
  END IF
 IF oruz1$ = "m" THEN
   REM                *****************  MINA - PROMAÊAJ *****************
   FOR br% = 1 TO 100
   c = INT(RND * 10) + 5
   k = RND * 6.28 + 1
   xre = COS(k) * c
   yre = SIN(k) * c
   LINE (x, y)-(x + xre, y + yre), 0
   NEXT br%
   FOR xp% = x - 15 TO x + 15
     fl1% = 0
     brp% = 0
     brd% = 0
     FOR yp% = y + 15 TO y - 250 STEP -1
      IF POINT(xp%, yp%) = 0 THEN fl1% = 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 1 THEN brp% = brp% + 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 15 THEN brp% = brp% + 1
      IF fl1% = 0 THEN brd% = brd% + 1
     NEXT yp%
    LINE (xp%, y + 15 - brd%)-(xp%, y + 15 - brd% - brp%), 1
    LINE (xp%, y + 15 - brd% - brp%)-(xp%, y - 250), 0
    NEXT xp%
  END IF
 END IF
 IF POINT(x, y) = 12 OR POINT(x, y) = 7 AND x > x2 - 10 AND x < x2 + 10 THEN
 REM               **************************  TO¨AN POGODAK  *************
 REM               **************************  -MINA-  ********************
   IF oruz1$ = "m" THEN
    ziv2% = ziv2% - 1
    br = INT(RND * 30) + 5
    FOR bl% = 1 TO br
    c%(bl%) = INT(RND * br / 4) + 2
    NEXT bl%
    FOR bl% = 1 TO br
     kut = (INT(RND * 120) + 40) * .01745
     yreo(bl%) = SIN(kut) * c%(bl%)
     xreo(bl%) = COS(kut) * c%(bl%)
     x%(bl%) = x2
     y%(bl%) = y2 - 3
    NEXT bl%
  LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
  LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
  LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
  LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
  LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
  LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
  LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
  LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
  LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
  LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
  LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
  LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
  FOR bl1% = 1 TO 80
   FOR bl% = 1 TO br
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
    IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
     xreo(bl%) = 0
     yreo(bl%) = 0
    END IF
    x%(bl%) = x%(bl%) - xreo(bl%)
    y%(bl%) = y%(bl%) - yreo(bl%)
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 12
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 12
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 12
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 12
    xreo(bl%) = xreo(bl%) - xreo(bl%) / 500 - vjetar / 2000
    yreo(bl%) = yreo(bl%) - .1
   NEXT bl%
   FOR bl2 = 1 TO brp
   NEXT bl2
   NEXT bl1%
   i% = 1
   IF ziv2% = 0 THEN GOTO kraj2
   GOTO 2
   END IF
   REM                  ************** GRANATA - pogodak ******************
   IF oruz1$ = "g" THEN
    brzina = SQR(xr * xr + yr * yr)
    kuto = ATN(yr / xr)
    xrelo = COS(kuto) * brzina / 3
    yrelo = SIN(kuto) * brzina / 3
    FOR br% = 1 TO 50
     FOR br1 = 1 TO 1000
     NEXT br1
     LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
     LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
     LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
     LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
     LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
     LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
     LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
     LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
     LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
     LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
     LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
     LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
     x2 = x2 + xrelo
     y2 = y2 + yrelo
     xrelo = xrelo - xrelo / 500 - vjetar / 2000
     yrelo = yrelo + .05
  LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 7
  LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 7
  LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 7
  LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 7
  LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 7
  LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 12
  LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 12
  LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 12
  LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 12
  LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 12
  LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 12
  LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 12
 IF POINT(x2, y2 + 1) = 1 THEN GOTO 45
 NEXT br%
 END IF
45
 ziv2% = ziv2% - 1
 br = INT(RND * 30) + 5
 FOR bl% = 1 TO br
  c%(bl%) = INT(RND * br / 4) + 2
 NEXT bl%
 FOR bl% = 1 TO br
  kut = (INT(RND * 120) + 40) * .01745
  yreo(bl%) = SIN(kut) * c%(bl%)
  xreo(bl%) = COS(kut) * c%(bl%)
  x%(bl%) = x2
  y%(bl%) = y2 - 3
 NEXT bl%
 LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
 LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
 LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
 LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
 LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
 LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
 LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
 LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
 FOR bl1% = 1 TO 80
  FOR bl% = 1 TO br
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
   IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
    xreo(bl%) = 0
    yreo(bl%) = 0
   END IF
   x%(bl%) = x%(bl%) - xreo(bl%)
   y%(bl%) = y%(bl%) - yreo(bl%)
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 12
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 12
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 12
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 12
   xreo(bl%) = xreo(bl%) - xreo(bl%) / 500
   yreo(bl%) = yreo(bl%) - .1
  NEXT bl%
  FOR bl2 = 1 TO brp
  NEXT bl2
  NEXT bl1%
  i% = 1
 IF ziv2% = 0 THEN GOTO kraj2
 GOTO 2
END IF
GOTO 5
END IF
20
REM                            *********************************************
REM                            **********************   DRUGI IGRA¨   ******
REM                            *********************************************
IF i% = 2 THEN
 i% = 1
 IF oruz2$ = "g" THEN gran2% = gran2% - 1
 IF oruz2$ = "m" THEN min2% = min2% - 1
 x = x2 - xrel2% + 5
 y = y2 - yrel2% - 6
 IF oruz2$ = "g" THEN
 xr = COS(kut2) * brz / 9
 yr = SIN(kut2) * brz / 9
 END IF
 IF oruz2$ = "m" THEN
 xr = COS(kut2) * brz / 7
 yr = SIN(kut2) * brz / 7
 END IF
DO
 xr = xr - xr / 300 - vjetar / 1000
 yr = yr - .05
 PSET (x + 1, y), 0
 PSET (x, y - 1), 0
 PSET (x - 1, y), 0
 PSET (x, y + 1), 0
 x = x - xr
 y = y - yr
 IF oruz2$ = "g" THEN
  PSET (x + 1, y), 15
  PSET (x, y - 1), 15
  PSET (x - 1, y), 15
  PSET (x, y + 1), 15
 END IF
 IF oruz2$ = "m" THEN
  PSET (x + 1, y), 7
  PSET (x, y - 1), 7
  PSET (x - 1, y), 7
  PSET (x, y + 1), 7
 END IF
 REM                                   +++++ BRZINA PADANJA 2 +++++
 FOR br = 1 TO 1000
 NEXT br
 IF x < -160 OR y > 480 THEN GOTO 5
 IF y < -10 THEN
  LINE (x + xr, 10)-(x + xr, 0), 0
  LINE (x, 10)-(x, 0), 3
 END IF
 IF y > -10 AND y < 10 THEN LINE (x + xr, 10)-(x + xr, 0), 0
IF POINT(x1, y1 + 1) = 0 AND POINT(x1 - 9, y1 + 1) = 0 AND POINT(x1 + 9, y1 + 1) = 0 THEN
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 y1 = y1 + 1
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 7
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 7
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 7
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 7
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 7
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 14
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 14
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
END IF
a$ = INKEY$
c% = 0: d% = 0
SELECT CASE a$
 CASE CHR$(97):
 c% = 1
 CASE CHR$(100):
 d% = 1
END SELECT
IF c% = 1 AND POINT(x1 - 11, y1 - 1) = 0 THEN
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
  x1 = x1 - 1 * c%
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 7
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 7
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 7
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 7
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 7
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 14
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 14
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 c% = 0
END IF
IF d% = 1 AND POINT(x1 + 11, y1 - 1) = 0 THEN
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
  x1 = x1 + 1 * d%
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 7
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 7
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 7
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 7
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 7
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 14
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 14
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 d% = 0
END IF
LOOP UNTIL POINT(x, y) > 0
IF POINT(x, y) = 15 OR POINT(x, y) = 1 THEN
 IF oruz2$ = "g" THEN
  IF x > x1 - 30 AND x < x1 + 30 AND y > y1 - 20 AND y < y1 + 20 THEN
   REM                     ********************* PORED - GRANATA  *********
    i% = 2
    FOR br = 1 TO 100
    c = INT(RND * 30) + 5
    k = RND * 6.28 + 1
    xre = COS(k) * c
    yre = SIN(k) * c
    LINE (x, y)-(x + xre, y + yre), 0
    NEXT br
    ziv1% = ziv1% - 1
    br = INT(RND * 30) + 5
    FOR bl% = 1 TO br
    c%(bl%) = INT(RND * br / 4) + 2
    NEXT bl%
    FOR bl% = 1 TO br
     kut = (INT(RND * 120) + 40) * .01745
     yreo(bl%) = SIN(kut) * c%(bl%)
     xreo(bl%) = COS(kut) * c%(bl%)
     x%(bl%) = x1
     y%(bl%) = y1 - 3
    NEXT bl%
   LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
   LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
   LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
   LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
   LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
   LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
   LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
   LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
   LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
   LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
   LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
   LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
   FOR bl1% = 1 TO 80
   FOR bl% = 1 TO br
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
    IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
     xreo(bl%) = 0
     yreo(bl%) = 0
    END IF
    x%(bl%) = x%(bl%) - xreo(bl%)
    y%(bl%) = y%(bl%) - yreo(bl%)
    LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 14
    LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 14
    LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 14
    LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 14
    xreo(bl%) = xreo(bl%) - xreo(bl%) / 500 - vjetar / 2000
    yreo(bl%) = yreo(bl%) - .1
   NEXT bl%
   FOR bl2 = 1 TO brp
   NEXT bl2
   NEXT bl1%
   IF ziv1% = 0 THEN GOTO kraj1
   GOTO 2
  ELSE :
   REM         ******************** GRANATA - promaÁaj ******************
   FOR br = 1 TO 100
   c = INT(RND * 30) + 5
   k = RND * 6.28 + 1
   xre = COS(k) * c
   yre = SIN(k) * c
   LINE (x, y)-(x + xre, y + yre), 0
   NEXT br
    FOR xp% = x + 35 TO x - 35 STEP -1
     fl1% = 0
     brp% = 0
     brd% = 0
     FOR yp% = y + 35 TO y - 250 STEP -1
      IF POINT(xp%, yp%) = 0 THEN fl1% = 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 1 THEN brp% = brp% + 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 15 THEN brp% = brp% + 1
      IF fl1% = 0 THEN brd% = brd% + 1
     NEXT yp%
    LINE (xp%, y + 35 - brd%)-(xp%, y + 35 - brd% - brp%), 1
    LINE (xp%, y + 35 - brd% - brp%)-(xp%, y - 250), 0
    NEXT xp%
  END IF
 END IF
 IF oruz2$ = "m" THEN
  REM                *****************  MINA - PROMAÊAJ *****************
   FOR br = 1 TO 100
   c = INT(RND * 10) + 5
   k = RND * 6.28 + 1
   xre = COS(k) * c
   yre = SIN(k) * c
   LINE (x, y)-(x + xre, y + yre), 0
   NEXT br
   FOR xp% = x + 15 TO x - 15 STEP -1
     fl1% = 0
     brp% = 0
     brd% = 0
     FOR yp% = y + 15 TO min% STEP -1
      IF POINT(xp%, yp%) = 0 THEN fl1% = 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 1 THEN brp% = brp% + 1
      IF fl1% = 1 AND POINT(xp%, yp%) = 15 THEN brp% = brp% + 1
      IF fl1% = 0 THEN brd% = brd% + 1
     NEXT yp%
    LINE (xp%, y + 15 - brd%)-(xp%, y + 15 - brd% - brp%), 1
    LINE (xp%, y + 15 - brd% - brp%)-(xp%, min%), 0
    NEXT xp%
  END IF
END IF
IF POINT(x, y) = 14 OR POINT(x, y) = 7 AND x > x1 - 10 AND x < x1 + 10 THEN
REM               **************************  TO¨AN POGODAK  *************
 IF oruz2$ = "m" THEN
REM               **************************  -MINA-  ********************
 ziv1% = ziv1% - 1
 br = INT(RND * 30) + 5
 FOR bl% = 1 TO br
  c%(bl%) = INT(RND * br / 4) + 2
 NEXT bl%
 FOR bl% = 1 TO br
  kut = (INT(RND * 120) + 40) * .01745
  yreo(bl%) = SIN(kut) * c%(bl%)
  xreo(bl%) = COS(kut) * c%(bl%)
  x%(bl%) = x1
  y%(bl%) = y1 - 3
 NEXT bl%
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 FOR bl1% = 1 TO 80
  FOR bl% = 1 TO br
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
   IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
    xreo(bl%) = 0
    yreo(bl%) = 0
   END IF
   x%(bl%) = x%(bl%) - xreo(bl%)
   y%(bl%) = y%(bl%) - yreo(bl%)
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 14
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 14
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 14
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 14
   xreo(bl%) = xreo(bl%) - xreo(bl%) / 500 - vjetar / 2000
   yreo(bl%) = yreo(bl%) - .1
  NEXT bl%
  FOR bl2 = 1 TO brp
  NEXT bl2
 NEXT bl1%
 i% = 2
 IF ziv1% = 0 THEN GOTO kraj1
 GOTO 2
END IF
IF oruz2$ = "g" THEN
REM              *************** GRANATA - pogodak ******************
 brzina = SQR(xr * xr + yr * yr)
 kuto = ATN(yr / xr)
 xrelo = COS(kuto) * brzina / 3
 yrelo = SIN(kuto) * brzina / 3
 FOR br% = 1 TO 50
  FOR br1 = 1 TO 1000
  NEXT br1
  LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
  LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
  LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
  LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
  LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
  LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
  LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
  LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
  LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
  LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
  LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
  LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
  x1 = x1 - xrelo
  y1 = y1 + yrelo
 xrelo = xrelo - xrelo / 500 - vjetar / 2000
 yrelo = yrelo + .05
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 7
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 7
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 7
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 7
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 7
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 14
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 14
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 14
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 14
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 14
 IF POINT(x1, y1 + 1) = 1 THEN GOTO 56
 NEXT br%
 END IF
56
 ziv1% = ziv1% - 1
 br = INT(RND * 30) + 5
 FOR bl% = 1 TO br
  c%(bl%) = INT(RND * br / 4) + 2
 NEXT bl%
 FOR bl% = 1 TO br
  kut = (INT(RND * 120) + 40) * .01745
  yreo(bl%) = SIN(kut) * c%(bl%)
  xreo(bl%) = COS(kut) * c%(bl%)
  x%(bl%) = x1
  y%(bl%) = y1 - 3
 NEXT bl%
 LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
 LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
 LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
 LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
 LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
 LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
 LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
 LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
 FOR bl1% = 1 TO 80
  FOR bl% = 1 TO br
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
   IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
    xreo(bl%) = 0
    yreo(bl%) = 0
   END IF
   x%(bl%) = x%(bl%) - xreo(bl%)
   y%(bl%) = y%(bl%) - yreo(bl%)
   LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 14
   LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 14
   LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 14
   LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 14
   xreo(bl%) = xreo(bl%) - xreo(bl%) / 500
   yreo(bl%) = yreo(bl%) - .1
  NEXT bl%
  FOR bl2 = 1 TO brp
  NEXT bl2
  NEXT bl1%
  i% = 2
 IF ziv1% = 0 THEN GOTO kraj1
 GOTO 2
END IF
END IF
GOTO 5


podaci:
COLOR 15
LINE (10, 10)-(170, 10)
LINE (170, 10)-(170, 70)
LINE (170, 70)-(10, 70)
LINE (10, 70)-(10, 10)
LOCATE 2, 3
COLOR 7
PRINT ime$(1); "    ¶ivoti "; : COLOR 4: PRINT ziv1%
LOCATE 3, 3
COLOR 7
PRINT "G"; : COLOR 8: PRINT "ranate:"; : COLOR 3: PRINT gran1%
LOCATE 4, 3
COLOR 7
PRINT "M"; : COLOR 8: PRINT "ine:"; : COLOR 3: PRINT min1%
REM
COLOR 15
LINE (465, 10)-(630, 10)
LINE (630, 10)-(630, 70)
LINE (630, 70)-(465, 70)
LINE (465, 70)-(465, 10)
LOCATE 2, 60
COLOR 7
PRINT ime$(2); "    ¶ivoti "; : COLOR 4: PRINT ziv2%
LOCATE 3, 60
COLOR 7
PRINT "G"; : COLOR 8: PRINT "ranate:"; : COLOR 3: PRINT gran2%
LOCATE 4, 60
COLOR 7
PRINT "M"; : COLOR 8: PRINT "ine:"; : COLOR 3: PRINT min2%
IF oruz1$ = "m" OR oruz1$ = "M" THEN
 LOCATE 4, 3
 COLOR 3
 PRINT "Mine:"
END IF
IF oruz1$ = "g" OR oruz1$ = "G" THEN
 LOCATE 3, 3
 COLOR 3
 PRINT "Granate:"
END IF
IF oruz2$ = "m" OR oruz2$ = "M" THEN
 LOCATE 4, 60
 COLOR 3
 PRINT "Mine:"
END IF
IF oruz2$ = "g" OR oruz2$ = "G" THEN
 LOCATE 3, 60
 COLOR 3
 PRINT "Granate:"
 END IF
LOCATE 1, 35
COLOR 15
RETURN

kraj1:
FOR br = 1 TO 200
 c = INT(RND * 30) + 30
 k = RND * 6.28 + 1
 xre = COS(k) * c
 yre = SIN(k) * c
 LINE (x1, y1)-(x1 + xre, y1 + yre), 0
NEXT br
br = INT(RND * 20) + 30
FOR bl% = 1 TO br
 c%(bl%) = INT(RND * br / 5) + 10
NEXT bl%
FOR bl% = 1 TO br
 kut = (INT(RND * 120) + 40) * .01745
 yreo(bl%) = SIN(kut) * c%(bl%)
 xreo(bl%) = COS(kut) * c%(bl%)
 x%(bl%) = x1 + bl% - 10
 y%(bl%) = y1 - 3
NEXT bl%
LINE (x1 + 8, y1 - 1)-(x1 - 8, y1 - 1), 0
LINE (x1 - 8, y1 - 1)-(x1 - 9, y1 - 4), 0
LINE (x1 - 3, y1 - 1)-(x1 - 4, y1 - 4), 0
LINE (x1 + 3, y1 - 1)-(x1 + 4, y1 - 4), 0
LINE (x1 + 8, y1 - 1)-(x1 + 9, y1 - 4), 0
LINE (x1 - 10, y1 - 3)-(x1 - 9, y1 - 4), 0
LINE (x1 - 9, y1 - 4)-(x1 + 9, y1 - 4), 0
LINE (x1 - 9, y1 - 3)-(x1 + 9, y1 - 3), 0
LINE (x1 + 9, y1 - 4)-(x1 + 10, y1 - 3), 0
LINE (x1 - 4, y1 - 4)-(x1 - 8, y1 - 7), 0
LINE (x1 - 6, y1 - 3)-(x1 - 8, y1 - 7), 0
LINE (x1 - 5, y1 - 5)-(x1 + xrel1% - 5, y1 - yrel1% - 5), 0
FOR bl1% = 1 TO 80
 FOR bl% = 1 TO br
  LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
  LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
  LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
  LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
  IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
   xreo(bl%) = 0
   yreo(bl%) = 0
  END IF
  x%(bl%) = x%(bl%) - xreo(bl%)
  y%(bl%) = y%(bl%) - yreo(bl%)
  LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 14
  LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 14
  LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 14
  LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 14
  xreo(bl%) = xreo(bl%) - xreo(bl%) / 500
  yreo(bl%) = yreo(bl%) - .1
 NEXT bl%
 FOR bl2 = 1 TO brp
 NEXT bl2
NEXT bl1%
COLOR 12
SOUND 333, 2
SOUND 20000, 1
LOCATE 10, 30
PRINT ime$(2); " odnosi pobjedu !!!"
SOUND 333, 8
COLOR 15
END

kraj2:
FOR br = 1 TO 200
 c = INT(RND * 30) + 30
 k = RND * 6.28 + 1
 xre = COS(k) * c
 yre = SIN(k) * c
 LINE (x2, y2)-(x2 + xre, y2 + yre), 0
NEXT br
br = INT(RND * 20) + 30
FOR bl% = 1 TO br
 c%(bl%) = INT(RND * br / 5) + 10
NEXT bl%
FOR bl% = 1 TO br
 kut = (INT(RND * 120) + 40) * .01745
 yreo(bl%) = SIN(kut) * c%(bl%)
 xreo(bl%) = COS(kut) * c%(bl%)
 x%(bl%) = x2 + 10 - bl%
 y%(bl%) = y2 - 3
NEXT bl%
LINE (x2 + 8, y2 - 1)-(x2 - 8, y2 - 1), 0
LINE (x2 - 8, y2 - 1)-(x2 - 9, y2 - 4), 0
LINE (x2 - 3, y2 - 1)-(x2 - 4, y2 - 4), 0
LINE (x2 + 3, y2 - 1)-(x2 + 4, y2 - 4), 0
LINE (x2 + 8, y2 - 1)-(x2 + 9, y2 - 4), 0
LINE (x2 - 10, y2 - 3)-(x2 - 9, y2 - 4), 0
LINE (x2 - 9, y2 - 4)-(x2 + 9, y2 - 4), 0
LINE (x2 - 9, y2 - 3)-(x2 + 9, y2 - 3), 0
LINE (x2 + 9, y2 - 4)-(x2 + 10, y2 - 3), 0
LINE (x2 + 4, y2 - 4)-(x2 + 8, y2 - 7), 0
LINE (x2 + 5, y2 - 3)-(x2 + 8, y2 - 7), 0
LINE (x2 + 5, y2 - 5)-(x2 - xrel2% + 5, y2 - yrel2% - 5), 0
FOR bl1% = 1 TO 80
 FOR bl% = 1 TO br
  LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 0
  LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 0
  LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 0
  LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 0
  IF POINT(x%(bl%), y%(bl%) + 2) > 0 THEN
   xreo(bl%) = 0
   yreo(bl%) = 0
  END IF
  x%(bl%) = x%(bl%) - xreo(bl%)
  y%(bl%) = y%(bl%) - yreo(bl%)
  LINE (x%(bl%), y%(bl%))-(x%(bl%), y%(bl%) - 3), 12
  LINE (x%(bl%) + 1, y%(bl%))-(x%(bl%) + 1, y%(bl%) - 3), 12
  LINE (x%(bl%) + 2, y%(bl%))-(x%(bl%) + 2, y%(bl%) - 3), 12
  LINE (x%(bl%) + 3, y%(bl%))-(x%(bl%) + 3, y%(bl%) - 3), 12
  xreo(bl%) = xreo(bl%) - xreo(bl%) / 500
  yreo(bl%) = yreo(bl%) - .1
 NEXT bl%
 FOR bl2 = 1 TO brp
 NEXT bl2
NEXT bl1%
COLOR 14
SOUND 333, 2
SOUND 20000, 1
LOCATE 10, 30
PRINT ime$(1); " odnosi pobjedu !!!"
SOUND 333, 8
COLOR 15
END


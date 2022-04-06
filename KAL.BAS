SCREEN 12


1 CLS
2 COLOR 4
3 FOR T = 1 TO 100
4 a = 310: b = 240
5 C = 310 + 90 * COS(3.14 * T / 5)
6 D = 240 + 90 * SIN(3.14 * T / 20)
7 LINE (a, b)-(C, D)
8 NEXT T
9 PRINT : PRINT : PRINT
10 PRINT TAB(30); "SCIENCE FICTION  Co."
11 PRINT TAB(30); "    PRESENTS        "
12 PRINT : PRINT
13 PRINT TAB(30); "   CALENDAR   v.1"
14 LOCATE 23, 32
15 PRINT "COPYRIGHT(O)1994"
16 LOCATE 24, 32
17 PRINT "      BY        "
18 LOCATE 26, 32
19 PRINT "  IVAN ROGOZ"
20  DO: LOOP WHILE INKEY$ = ""
22 CLS
23 COLOR 4
24 LINE (5, 5)-(635, 50), , BF
25 LOCATE 2, 33
26 PRINT "VJE^NI KALENDAR"
27 PRINT : PRINT : PRINT
30 COLOR 2
31 PRINT : PRINT : PRINT
32 PRINT "Ima{ tri izbora:"
33 PRINT "a) vje~ni kalendar"
34 PRINT "b) pro{lo vrijeme od nekog datuma do sada /24h"
35 PRINT "c) vrijeme `ivota nekog ~ovjeka /min"
36 INPUT a$
37 IF a$ = "a" THEN 38
38 IF a$ = "b" THEN 240
39 IF a$ = "c" THEN 350
46 INPUT "DAN   "; D
47 IF D >= 32 THEN PRINT "NEMOGU^ DAN": SLEEP 4: GOTO 22
48 INPUT "MJESEC  "; M
49 IF M >= 13 THEN PRINT "NEMOGU^ MJESEC": SLEEP 4: GOTO 22
50 INPUT "GODINA  "; g
60 PRINT
70 IF g < 100 THEN g = g + 1900
80 X = g + INT((g - 1) / 4) + D + INT((M * 5) / 2) + 1
90 IF M < 3 THEN X = X + 2
100 IF M = 9 THEN X = X + 1
110 IF M = 11 THEN X = X + 1
120 IF M >= 2 AND g / 4 = INT(g / 4) THEN X = X + 1
130 X = X - 7 * INT(X / 7)
140 PRINT "DAN JE:"
150 IF X = O THEN PRINT "NEDELJA"
160 IF X = 1 THEN PRINT "PONEDELJAK"
170 IF X = 2 THEN PRINT "UTORAK"
180 IF X = 3 THEN PRINT "SRIJEDA"
190 IF X = 4 THEN PRINT "^ETVRTAK"
200 IF X = 5 THEN PRINT "PETAK"
210 IF X = 6 THEN PRINT "SUBOTA"
220 DO: LOOP WHILE INKEY$ = ""
230 GOTO 22
240 PRINT : PRINT
250 PRINT "po~etni datum:"
260 INPUT "godina "; f
265 IF f <= 1950 THEN STOP
270 PRINT "zav{na godina:"
280 INPUT "godina  "; j
285 IF j >= 2000 THEN STOP
290 j% = j - f
300 b% = j% * 365
305 PRINT "pro{lo je oko:"
310 PRINT b%; "dana"
315 DO: LOOP WHILE INKEY$ = ""
320 GOTO 22
350 PRINT "unesi broj godina:"
360 INPUT n
370 v = a * 365.6 * 24 * 24 * 60
380 PRINT v; "/min"
385 DO: LOOP WHILE INKEY$ = ""
390 GOTO 22


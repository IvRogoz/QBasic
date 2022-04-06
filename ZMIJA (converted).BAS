2
SCREEN 12
LOCATE 5
COLOR 4
PRINT TAB(10); "Program  Zmija"
PRINT: COLOR 15
PRINT TAB(10); "by"
PRINT: COLOR 1
PRINT TAB(10); "Ante  Brkic"
PRINT: PRINT: COLOR 7
PRINT TAB(10); "1995.g."
LOCATE 20: COLOR 2
PRINT "    > - skreni udesno"
PRINT: PRINT "    < - skreni ulijevo"
COLOR 15
PRINT: INPUT "    Brzina (1-100) :", brz
IF brz < 1 OR brz > 100 THEN GOTO 2
LOCATE 28
COLOR 8
PRINT "                         -   r a z m a k n i c a  -"
COLOR 15
a1 = 1: b1 = 1: A = 1: b = 1
x = 350: X1 = 415
y = 350: Y1 = 150
DO
PSET (x, y), 1
PSET (x + 1, y), 2
PSET (x, y + 1), 3
PSET (x + 2, y), 4
PSET (x, y + 2), 5
PSET (x + 3, y), 9
PSET (x, y + 3), 10
PSET (x + 2, y + 2), 8
x = x + 2 * A
y = y + 2.5 * b
IF x > 531 OR x < 300 THEN A = -A
IF y > 400 OR y < 300 THEN b = -b
LINE (X1, Y1)-(X1 + 3, Y1), 14
LINE (X1 - 1, Y1 + 1)-(X1 + 4, Y1 + 1), 14
LINE (X1 - 2, Y1 + 2)-(X1 + 5, Y1 + 2), 14
LINE (X1 - 3, Y1 + 3)-(X1 + 6, Y1 + 3), 14
LINE (X1 - 2, Y1 + 4)-(X1 + 5, Y1 + 4), 14
LINE (X1 - 2, Y1 + 5)-(X1 + 5, Y1 + 5), 14
LINE (X1 - 1, Y1 + 6)-(X1 + 4, Y1 + 6), 14
LINE (X1, Y1 + 7)-(X1 + 3, Y1 + 7), 14
FOR I = 1 TO 200
NEXT I
LINE (X1, Y1)-(X1 + 3, Y1), 0
LINE (X1 - 1, Y1 + 1)-(X1 + 4, Y1 + 1), 0
LINE (X1 - 2, Y1 + 2)-(X1 + 5, Y1 + 2), 0
LINE (X1 - 3, Y1 + 3)-(X1 + 6, Y1 + 3), 0
LINE (X1 - 2, Y1 + 4)-(X1 + 5, Y1 + 4), 0
LINE (X1 - 2, Y1 + 5)-(X1 + 5, Y1 + 5), 0
LINE (X1 - 1, Y1 + 6)-(X1 + 4, Y1 + 6), 0
LINE (X1, Y1 + 7)-(X1 + 3, Y1 + 7), 0
a1 = a1 + .08 * b1
Y1 = Y1 + a1 * b1
IF Y1 > 290 THEN b1 = -b1: IF Y1 > 290 THEN a1 = 5
IF a1 < -4.8 THEN b1 = -b1
LOOP WHILE INKEY$ = ""
FOR A = 1 TO 30000
NEXT A
REM music$ = "mbo3l10ddddl5ggaao4do3l10bggbgl5eo4co3bal2g"
REM PLAY music$
REM
ziv = 3
n = 10
1
n = 5
CLS
DIM A(100)
DIM b(100)
LINE (19, 18)-(622, 18): LINE (20, 19)-(621, 19): LINE (622, 18)-(622, 422): LINE (621, 19)-(621, 421): LINE (622, 422)-(18, 422): LINE (621, 421)-(19, 421): LINE (18, 422)-(18, 18): LINE (19, 421)-(19, 19)
IF nivo = 0 THEN LINE (313, 19)-(313, 300): LINE (312, 19)-(312, 300): LINE (314, 19)-(314, 300): LINE (315, 19)-(315, 300): LINE (316, 19)-(316, 300): LINE (317, 19)-(317, 300): LINE (318, 19)-(318, 300)
IF nivo = 1 THEN LINE (180, 19)-(180, 350): LINE (181, 19)-(181, 350): LINE (182, 19)-(182, 350): LINE (183, 19)-(183, 350): LINE (184, 19)-(184, 350): LINE (185, 19)-(185, 350): LINE (186, 19)-(186, 350)
IF nivo = 1 THEN LINE (459, 100)-(459, 422): LINE (451, 100)-(451, 422): LINE (452, 100)-(452, 422): LINE (453, 100)-(453, 422): LINE (454, 100)-(454, 422): LINE (455, 100)-(455, 422): LINE (456, 100)-(456, 422)
IF nivo = 1 THEN LINE (187, 19)-(187, 350): LINE (188, 19)-(188, 350): LINE (457, 100)-(457, 422): LINE (458, 100)-(458, 422)
IF nivo = 2 THEN LINE (20, 231)-(300, 231): LINE (20, 232)-(300, 232): LINE (20, 233)-(300, 233): LINE (20, 234)-(300, 234): LINE (20, 235)-(300, 235): LINE (20, 236)-(300, 236)
IF nivo = 2 THEN LINE (330, 231)-(621, 231): LINE (330, 232)-(621, 232): LINE (330, 233)-(621, 233): LINE (330, 234)-(621, 234): LINE (330, 235)-(621, 235): LINE (330, 236)-(621, 236)
IF nivo = 2 THEN LINE (20, 237)-(300, 237): LINE (330, 237)-(621, 237)
IF nivo = 1 THEN
 FOR A = 100 TO 700 STEP 40
 SOUND A, 1
 NEXT A
END IF
IF nivo = 2 THEN
 FOR A = 400 TO 1000 STEP 40
 SOUND A, 1
 NEXT A
END IF
y = 400
c = 1
FOR I = 1 TO n
 A(I) = 300
 b(I) = y
 y = y - 10
NEXT I
x = 100: y = 200
LOCATE 28
PRINT "        Bodovi"; bod,: PRINT "        Nivo"; nivo + 1,: PRINT "          Zivoti"; ziv
REM                               P E T LJ A
LOCATE 1
COLOR 14
PRINT "                           P R O G R A M    Z M I J A"
COLOR 15
5
IF bod < 0 THEN
 ziv = 1
 GOTO 10
END IF
FOR A = 0 TO 10000 - brz * 100
NEXT A
br = br + 1
IF br > 100 THEN GOTO 20
3
IF nivo = 0 THEN
 IF A(n) = 310 AND b(n) < 300 THEN GOTO 10
 IF x > 305 AND x < 325 AND y < 300 OR x > 180 AND x < 200 AND y < 755 OR x > 450 AND x < 465 AND y > 90 THEN GOTO 21
END IF
IF nivo = 1 THEN
 IF A(n) = 180 AND b(n) < 350 OR A(n) = 450 AND b(n) > 90 THEN GOTO 10
 IF x > 173 AND x < 193 AND y < 360 OR x > 443 AND x < 463 AND y > 80 THEN GOTO 21
END IF
IF nivo = 2 THEN
 IF b(n) > 225 AND b(n) < 235 AND A(n) < 300 OR b(n) > 225 AND b(n) < 235 AND A(n) > 325 THEN GOTO 10
 IF y > 225 AND y < 243 AND A < 310 OR y > 225 AND y < 243 AND x > 320 THEN GOTO 21
END IF
FOR A = 4 TO 0 STEP -1
CIRCLE (x, y), A + 1, 14
NEXT A
IF A(n) > 610 OR b(n) > 410 OR A(n) < 20 OR b(n) < 20 THEN GOTO 10
IF A(n) > x - 15 AND A(n) < x + 5 AND b(n) < y + 10 AND b(n) > y - 25 THEN
 SOUND 200, 2
 br = 101
 GOSUB 30
 bod = bod + 2
END IF
IF A(n) > x - 15 AND A(n) < x + 5 AND b(n) < y + 10 AND b(n) > y - 25 THEN
 IF bod > 30 AND nivo = 2 THEN GOTO 40
 IF bod = 11 AND nivo = 0 THEN GOTO 50
 IF bod = 21 AND nivo = 1 THEN GOTO 60
 GOTO 5
END IF
FOR I = 1 TO n
FOR A = 1 TO 10
LINE (A(I), b(I) + A)-(A(I) + 10, b(I) + A), 3
NEXT A
NEXT I
FOR I = 1 TO n - 1
IF A(n) = A(I - 1) AND b(n) = b(I - 1) THEN GOTO 10
NEXT I
FOR I = 1 TO n
FOR A = 1 TO 10
LINE (A(1), b(1) + A)-(A(1) + 10, b(1) + A), 0
NEXT A
NEXT I
FOR I = 1 TO n - 1
  A(I) = A(I + 1)
  b(I) = b(I + 1)
NEXT I
A$ = INKEY$
SELECT CASE A$
 CASE CHR$(46): c = c + 1
 CASE CHR$(44): c = c - 1
 CASE CHR$(113): END
 CASE CHR$(81): END
END SELECT
IF c = 0 THEN c = 4
IF c = 5 THEN c = 1
IF c = 1 THEN b(n) = b(n) - 10
IF c = 2 THEN A(n) = A(n) + 10
IF c = 3 THEN b(n) = b(n) + 10
IF c = 4 THEN A(n) = A(n) - 10
GOTO 5
10 FOR A = 1000 TO 100 STEP -100
SOUND A, .8
NEXT A
ziv = ziv - 1
IF ziv = 0 THEN
 LOCATE 15
 COLOR 10
 PRINT TAB(35); "GAME  OVER"
 COLOR 15
 LINE (18, 100)-(18, 300)
 LINE (19, 100)-(19, 300)
 END
END IF
GOTO 1
END
20
bod = bod - 1
FOR A = 4 TO 0 STEP -1
CIRCLE (x, y), A + 1, 0
NEXT A
LOCATE 28
PRINT "        Bodovi"; bod,: PRINT "        Nivo"; nivo + 1,: PRINT "          Zivoti"; ziv
21
RANDOMIZE TIMER
 x = INT((RND * 580) + 30)
 y = INT((RND * 380) + 30)
 br = 0
GOTO 3
30 A(n + 1) = A(n)
b(n + 1) = b(n)
n = n + 1
RETURN
40 CLS
SCREEN 13
COLOR 15
FOR A = 16 TO 31
LOCATE 15
PRINT TAB(15); "K R A J  ! ..."
PAINT (10, 10), A
NEXT A
END
50 nivo = 1
GOTO 1
60 nivo = 2
GOTO 1
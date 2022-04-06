SCREEN 12
CLS
d = .3
hz = 70
DO
dead = dead + 1
IF dead > 10 THEN
d = d + .08
hz = hz + 4
END IF
IF d > 1.4 THEN GOSUB deadpacijent
a = 0
CLS
LOCATE 1, 1
PRINT "Beats:"; hz
PRINT "     :"; hz / 60; " bps"
PRINT "Passes:"; dead
RAD = 3.1419527# / 180
DO
a = a + .1
b = b + d
x1 = ABS(100 * SIN(b * (RAD)))
IF (INT(x1 + 240)) = 240 THEN
down = 1
SOUND 1000, .7
END IF
IF (INT(x1 + 240)) = 339 THEN
a = a + 1
FOR i = 1 TO 1000
NEXT i
END IF

IF (down = 1) AND ((INT(x1 + 240)) = 300) THEN
a = a + 14
down = 0
CIRCLE (a - 7, 230), 7, 3, 0, 2.8
END IF

LINE (0, 240)-(640, 240), 4
PSET (a, INT(x1) + 170), 3
LOOP UNTIL a > 639
LOOP

deadpacijent:
CLS
DO
CLS
a = 0
LOCATE 1, 1
PRINT "Pacijent je MRTAV"
DO
a = a + 1
LINE (0, 240)-(640, 240), 4
PSET (a, 230), 3
SOUND 1000, .1
LOOP UNTIL a > 639
LOOP UNTIL INKEY$ = " "
STOP
RETURN




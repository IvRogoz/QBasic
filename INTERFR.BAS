SCREEN 12
pi = 3.14
COLOR 14
LINE (0, 240)-(640, 240)
LINE (0, 0)-(0, 480)

FOR x = 0 TO 640 STEP .5
y1 = 100 * SIN(x / 20) + 240
y2 = 100 * SIN(x / 40) + 240
y3 = y1 + y2
y3 = 100 * (SIN(x / 20) + SIN(x / 40)) + 240
PSET (x, y1), 1
PSET (x, y2), 2
PSET (x, y3), 4
NEXT x
COLOR 4
PRINT " CRVENA JE ZBROJ ZELENE I PLAVE"
COLOR 0




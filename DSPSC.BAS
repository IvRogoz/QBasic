SCREEN 12
FOR x = 0 TO 640 STEP .5
y = 50 * SIN(x / 20 + 3.14) + 240
PSET (x, y), 1
PSET (x * 1.5, y * 1.5), 1
LINE (x, y)-(x * 1.5, y * 1.5), 1
NEXT x


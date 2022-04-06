SCREEN 12
h = 100                         'visina
p = 15                          'pomaci
Y = 1                           'pocetni pomak
FOR a = 1 TO 14
r = 100 * TAN(Y / h)
CIRCLE (320, 300 - Y), r, 1, , , .2
Y = Y + p
p = p - 1
NEXT a
FOR a = 265 TO 1700 STEP 25
CIRCLE (320, 300 - Y), a, 1, , , .2
NEXT a
DO
LOOP UNTIL INKEY$ = CHR$(27)


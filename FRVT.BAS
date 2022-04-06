SCREEN 12
h = 100                         'visina
p = 15                          'pomaci
y = 1                           'pocetni pomak
FOR a = 1 TO 20
r = 100 * TAN(y / h)
CIRCLE (320, 240 - y), r, 1, , , .3
y = y + p
p = p - 1
NEXT a




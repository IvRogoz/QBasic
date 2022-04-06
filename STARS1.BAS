SCREEN 12
DIM x(20): DIM y(20): DIM z(20)
FOR a = 0 TO 20
x(a) = RND(1) * 640 - 320
y(a) = RND(1) * 480 - 240
z(a) = RND(1) * 1000
NEXT a
DO
FOR a = 0 TO 20
xa = x(a) / (1 + (z(a) / 1000))
ya = y(a) / (1 + (z(a) / 1000))
IF y(a) >= 400 THEN END
'PSET (320 + ox, 240 + oy), 0
PSET (320 + xa, 240 + ya)
z(a) = z(a) - 10
NEXT a
LOOP


SCREEN 12
DIM x(20): DIM y(20): DIM z(20)
FOR a = 0 TO 20
x(a) = RND(1) * 640 - 320
y(a) = RND(1) * 480 - 240
z(a) = RND(1) * 3000
NEXT a
DO
FOR a = 0 TO 20
xa = x(a) / (1 + (z(a) / 1000))
ya = y(a) / (1 + (z(a) / 1000))
IF ya + 240 < 0 OR ya + 240 > 240 OR xa + 320 < 0 OR xa + 320 > 640 THEN GOTO 1

PSET (320 + xa, 240 + ya)
z(a) = z(a) - 10
1 NEXT a
LOOP


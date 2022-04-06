SCREEN 12
DIM x(25): DIM y(25): DIM z(25): DIM Ox(25): DIM Oy(25)
VIEW (10, 10)-(630, 470)
mx = 320: my = 240
FOR a = 1 TO 25
GOSUB INIT
NEXT a
DO
FOR a = 1 TO 25
'PSET (x(a), y(a))
c = 20
GOSUB calc
IF Ox = x AND Oy = y THEN GOTO back
PSET (320 + x, 240 + y), 0
back:
NEXT a
FOR a = 1 TO 25
c = 0
GOSUB calc
PSET (320 + x, 240 + y)
z(a) = z(a) - 10
NEXT a
LOOP
calc:
x = x(a) / (1 + ((z(a) + c) / 200))
y = y(a) / (1 + ((z(a) + c) / 200))
IF x + mx < -550 OR x + mx > 1800 OR y + my < -550 OR y + my > 1800 THEN GOSUB INIT

RETURN


INIT:
 k$ = INKEY$
 SELECT CASE k$
 CASE "q": END
 CASE "Q": END
 END SELECT
 x(a) = RND(1) * 640 - 320
 y(a) = RND(1) * 480 - 240
 z(a) = RND(1) * 100
 RETURN
